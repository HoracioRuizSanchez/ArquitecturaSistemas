import pathlib
import syside

# Path to our SysML model file
LESSON_DIR = pathlib.Path(__file__).parent.parent
MODEL_FILE_PATH = LESSON_DIR / "models" / "Sleight_Horacio.sysml"


def find_element_by_name(model: syside.Model, name: str, element_type=None) -> syside.Element | None:
    """Search the model for a specific element by name and optionally by type."""

    # Iterates through all model elements that subset Element type
    # e.g. PartUsage, ItemUsage, OccurrenceUsage, etc.
    for element in model.elements(syside.Element, include_subtypes=True):
        if element.name == name:
            # If a specific type is requested, check for it
            if element_type is None or isinstance(element, element_type):
                return element
    return None


def show_part_attributes(part: syside.Element, part_level: int = 0) -> None:
    """
    Prints a list of attributes for the input part.
    """
    indent = "  " * part_level

    # Print the part name
    print(f"{indent}Part: {part.name if part.name else 'Unnamed'}")

    # Get all attributes of the part
    attributes = [elem for elem in part.owned_elements if isinstance(elem, syside.AttributeUsage)]

    if attributes:
        print(f"{indent}Attributes:")
        for attr in attributes:
            attr_name = attr.name if attr.name else "unnamed"

            # Get the primary type (first type in the types list)
            attr_type = "Unknown"
            if hasattr(attr, 'types'):
                types_list = list(attr.types)
                if types_list and hasattr(types_list[0], 'name'):
                    attr_type = types_list[0].name

            # Try to get the default value if it exists
            default_value = ""
            if hasattr(attr, 'default_value') and attr.default_value:
                default_value = f" = {attr.default_value}"

            print(f"{indent}  - {attr_name}: {attr_type}{default_value}")
    else:
        print(f"{indent}  (No attributes found)")

    # Recursively show attributes of nested parts
    nested_parts = [elem for elem in part.owned_elements if isinstance(elem, syside.PartUsage)]
    if nested_parts:
        print(f"{indent}Nested Parts:")
        for nested_part in nested_parts:
            show_part_attributes(nested_part, part_level + 1)


def main() -> None:
    # Load SysML model and get diagnostics (errors/warnings)
    (model, diagnostics) = syside.load_model([MODEL_FILE_PATH])

    # Make sure the model contains no errors before proceeding
    assert not diagnostics.contains_errors(warnings_as_errors=True)

    root_element = find_element_by_name(model, "sleighHoracio", syside.PartDefinition)

    print("\nPrinting part attributes:\n")
    show_part_attributes(root_element)


if __name__ == "__main__":
    main()
