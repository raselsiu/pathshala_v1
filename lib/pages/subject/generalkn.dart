import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/components/general_knowledge_card.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/animal_env.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/bangladesher_porichoy.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/big_small_in_bd.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/birsrestho.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/bisistho_bektitto.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/border_area.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/botany.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/continental_ocean.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/country_capital_currency.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/crops.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/education.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/first_in_bd.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/freedom_freedom_fighter.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/geographical_name.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/international_org.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/khetab.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/mujib.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/national_day.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/national_subject.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/nationnal_anthem.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/planet_solar_universe.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/poder_porichoy.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/potaka.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/relegion_intro.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/river_hill_.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/rono_songit.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/saarc.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/sea_sea_port_.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/seven_wonders.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/tributes.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/vasa_andolon.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/zila_and_bivag.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class GeneralKnowledgePage extends StatefulWidget {
  const GeneralKnowledgePage({super.key});

  @override
  State<GeneralKnowledgePage> createState() => _GeneralKnowledgePageState();
}

class _GeneralKnowledgePageState extends State<GeneralKnowledgePage> {
  @override
  Widget build(BuildContext context) {
    var isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
        backgroundColor: const Color(0xffFFEFE8),
        // const Color(0xffFBF5F2)
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff077568),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'সাধারন জ্ঞান',
            style: TextStyle(
              fontFamily: StringConstants.skBishal,
              color: Color(0xffffffff),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: StaggeredGrid.count(
                  crossAxisCount: isLandscape ? 4 : 2,
                  mainAxisSpacing: isLandscape ? 20 : 15,
                  crossAxisSpacing: isLandscape ? 20 : 15,
                  children: [
                    const GeneralKnowledgeCard(
                      pageLocation: GKNationAnthem(),
                      imagePath: ImageConstant.gkSongit,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: GKRonoSongit(),
                      imagePath: ImageConstant.gkRonSong,
                    ),
                    GeneralKnowledgeCard(
                      pageLocation: Potaka(),
                      imagePath: ImageConstant.gkFlag,
                    ),
                    GeneralKnowledgeCard(
                      pageLocation: BangladesherPorichoy(),
                      imagePath: ImageConstant.gkIntroBD,
                    ),
                    GeneralKnowledgeCard(
                      pageLocation: VasaAndulon(),
                      imagePath: ImageConstant.gkVasaAndulon,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: FreedomAndFreedomFighter(),
                      imagePath: ImageConstant.gkFreedom,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: Mujib(),
                      imagePath: ImageConstant.gkBongobondu,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: BirSrestho(),
                      imagePath: ImageConstant.gkBirsestro,
                    ),
                    GeneralKnowledgeCard(
                      pageLocation: Khetab(),
                      imagePath: ImageConstant.gkFighterKhetab,
                    ),
                    GeneralKnowledgeCard(
                      pageLocation: PoderPorichoy(),
                      imagePath: ImageConstant.gkRankIntro,
                    ),
                    GeneralKnowledgeCard(
                      pageLocation: BisisthoBektittoData(),
                      imagePath: ImageConstant.gkSpecialPerson,
                    ),
                    GeneralKnowledgeCard(
                      pageLocation: zilaAndBivag(),
                      imagePath: ImageConstant.gkZillaDiv,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: BorderArea(),
                      imagePath: ImageConstant.gkBorder,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: NationalDay(),
                      imagePath: ImageConstant.gkNatDay,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: NationalSubject(),
                      imagePath: ImageConstant.gkNatSub,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: GKEducation(),
                      imagePath: ImageConstant.gkEdu,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: Tributes(),
                      imagePath: ImageConstant.gkTribal,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: FirstInBD(),
                      imagePath: ImageConstant.gkFirstInBD,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: BigSmallInBD(),
                      imagePath: ImageConstant.gkBigSmall,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: RiverHill(),
                      imagePath: ImageConstant.gkRiverHill,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: SeaSeaPort(),
                      imagePath: ImageConstant.gkSeaRiverBondor,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: AnimalEnvironment(),
                      imagePath: ImageConstant.gkAnimalWorld,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: Botany(),
                      imagePath: ImageConstant.gkBotany,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: Crops(),
                      imagePath: ImageConstant.gkCrops,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: CountryCapitalCurrency(),
                      imagePath: ImageConstant.gkCapitalCurrency,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: Science(),
                      imagePath: ImageConstant.gkScience,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: PlanetSolarUniverse(),
                      imagePath: ImageConstant.gkEarthSolar,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: SevenWonders(),
                      imagePath: ImageConstant.gkSevenWonder,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: GeographicalName(),
                      imagePath: ImageConstant.gkGeographicalName,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: ReligionIntroduce(),
                      imagePath: ImageConstant.gkReligionIntro,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: SAARC(),
                      imagePath: ImageConstant.gkSAARC,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: InternationalOrg(),
                      imagePath: ImageConstant.gkIntlOrg,
                    ),
                    const GeneralKnowledgeCard(
                      pageLocation: ContinentalOcean(),
                      imagePath: ImageConstant.gkContinentOcean,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
