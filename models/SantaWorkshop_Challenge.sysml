package SantaWorkshop_Challenge {
        private import ISQ::*;
        private import SI::*;
        private import ScalarValues::*;

        enum def SkillType {
                enum assembly;
                enum quality;
                enum packaging;
                enum logistics;
                enum warehouse;
                enum marketing;
        }

        part def WorkArea {
                doc /* A functional area within Santa's Workshop. */
        }

        part def Elf {
                doc /* An elf worker in Santa's Workshop. */
                attribute skillType : SkillType;
                attribute skillLevel : Real;
                attribute height : LengthValue;
        }

        part def SantaWorkshop {
                doc /* Santa's main workshop for toy production and distribution. */

                // Head of workshop
                part headElf : Elf;

                // Work areas with their assigned elves
                part assemblyLine : WorkArea {
                        doc /* Where toys are assembled. */

                        part supervisor :> headElf;

                        part albert : Elf {
                                :>> skillType = SkillType::assembly;
                                :>> skillLevel = 50.0;
                                :>> height = 3[m];
                        }
                        part betty : Elf {
                                :>> skillType = SkillType::assembly;
                                :>> skillLevel = 100.0;
                                :>> height = 3[m];
                        }
                        part george : Elf {
                                :>> skillType = SkillType::assembly;
                                :>> skillLevel = 150.0;
                                :>> height = 1[m];
                        }
                }

                part qualityControl : WorkArea {
                        doc /* Quality checking station. */

                        part charlie : Elf {
                                :>> skillType = SkillType::quality;
                                :>> skillLevel = 100.0;
                                :>> height = 3[m];
                        }
                        part diana : Elf {
                                :>> skillType = SkillType::quality;
                                :>> skillLevel = 100.0;
                                :>> height = 1[m];
                        }
                        part helen : Elf {
                                :>> skillType = SkillType::quality;
                                :>> skillLevel = 150.0;
                                :>> height = 3[m];
                        }
                }

                part packagingArea : WorkArea {
                        doc /* Gift wrapping and packaging. */

                        part edward : Elf {
                                :>> skillType = SkillType::packaging;
                                :>> skillLevel = 100.0;
                                :>> height = 2[m];
                        }
                        part fiona : Elf {
                                :>> skillType = SkillType::packaging;
                                :>> skillLevel = 100.0;
                                :>> height = 3[m];
                        }
                }

                part logistics : WorkArea {
                        doc /* Shipping and distribution. */

                        part ivan : Elf {
                                :>> skillType = SkillType::logistics;
                                :>> skillLevel = 120.0;
                                :>> height = 2.5[m];
                        }
                        part julia : Elf {
                                :>> skillType = SkillType::logistics;
                                :>> skillLevel = 90.0;
                                :>> height = 2[m];
                        }
                }

                part warehouse : WorkArea {
                        doc /* Storage before dispatch. */

                        part kevin : Elf {
                                :>> skillType = SkillType::warehouse;
                                :>> skillLevel = 110.0;
                                :>> height = 3[m];
                        }
                        part laura : Elf {
                                :>> skillType = SkillType::warehouse;
                                :>> skillLevel = 95.0;
                                :>> height = 2.5[m];
                        }
                        part mike : Elf {
                                :>> skillType = SkillType::warehouse;
                                :>> skillLevel = 80.0;
                                :>> height = 1.5[m];
                        }
                }

                part marketing : WorkArea {
                        doc /* Image and promotion. */

                        part nina : Elf {
                                :>> skillType = SkillType::marketing;
                                :>> skillLevel = 130.0;
                                :>> height = 2.8[m];
                        }
                        part oscar : Elf {
                                :>> skillType = SkillType::marketing;
                                :>> skillLevel = 100.0;
                                :>> height = 2.2[m];
                        }
                }
        }
}