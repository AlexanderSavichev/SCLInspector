<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<SCL version="2007" revision="B" release="4" xmlns="http://www.iec.ch/61850/2003/SCL">
    <Header id="PPG-707" version="1" revision="1" toolID="PowerplantGenerator" nameStructure="IEDName">
        <Text>SCD export of generation result #707 (GA-VL_35KV)</Text>
    </Header>
    <Substation name="SS307" desc="Generated substation 35 kV/10 kV">
        <Private type="IDU-Generator">generator=PowerplantGenerator; variant=GA-VL_35KV; generatedAt=2026-08-21 13:14:08</Private>
        <PowerTransformer name="T1" type="PTR" desc="ТРДНС-25000/35">
            <Private type="IDU-SLD-WGS84">30.313041 59.922107</Private>
            <LNode iedName="IED_T1" lnClass="PTRC" lnInst="1" ldInst="PROT" lnType="LT_PTRC" desc="Transformer protection trip conditioning"/>
            <LNode iedName="IED_T1" lnClass="PTOC" lnInst="1" ldInst="PROT" lnType="LT_PTOC" desc="ANSI 51 МТЗ (ВН) Ipickup=955A t=1.5s"/>
            <LNode iedName="IED_T1" lnClass="PIOC" lnInst="1" ldInst="PROT" lnType="LT_PIOC" desc="ANSI 50 Токовая отсечка (ВН) Ipickup=4044A t=0.0s"/>
            <LNode iedName="IED_T1" lnClass="PDIF" lnInst="1" ldInst="PROT" lnType="LT_PDIF" desc="ANSI 87T Дифзащита (ВН/НН) Ipickup=124A t=0.0s"/>
            <LNode iedName="IED_T1" lnClass="PTTR" lnInst="1" ldInst="PROT" lnType="LT_PTTR" desc="ANSI 49 Защита от перегрузки (ВН) Ipickup=412A"/>
            <LNode iedName="IED_T1" lnClass="PTOC" lnInst="2" ldInst="PROT" lnType="LT_PTOC" desc="ANSI 51 МТЗ ввода/секц. НН (НН) Ipickup=1671A t=1.0s"/>
            <TransformerWinding name="W1" type="PTW" desc="HV winding">
                <Terminal connectivityNode="SS307/HV/QT1/T1_HV" substationName="SS307" voltageLevelName="HV" bayName="QT1" cNodeName="T1_HV"/>
            </TransformerWinding>
            <TransformerWinding name="W2" type="PTW" desc="LV winding">
                <Terminal connectivityNode="SS307/LV/QT1/T1_LV" substationName="SS307" voltageLevelName="LV" bayName="QT1" cNodeName="T1_LV"/>
            </TransformerWinding>
        </PowerTransformer>
        <PowerTransformer name="T2" type="PTR" desc="ТРДНС-25000/35">
            <Private type="IDU-SLD-WGS84">30.312941 59.922195</Private>
            <LNode iedName="IED_T2" lnClass="PTRC" lnInst="1" ldInst="PROT" lnType="LT_PTRC" desc="Transformer protection trip conditioning"/>
            <LNode iedName="IED_T2" lnClass="PTOC" lnInst="1" ldInst="PROT" lnType="LT_PTOC" desc="ANSI 51 МТЗ (ВН) Ipickup=955A t=1.5s"/>
            <LNode iedName="IED_T2" lnClass="PIOC" lnInst="1" ldInst="PROT" lnType="LT_PIOC" desc="ANSI 50 Токовая отсечка (ВН) Ipickup=4044A t=0.0s"/>
            <LNode iedName="IED_T2" lnClass="PDIF" lnInst="1" ldInst="PROT" lnType="LT_PDIF" desc="ANSI 87T Дифзащита (ВН/НН) Ipickup=124A t=0.0s"/>
            <LNode iedName="IED_T2" lnClass="PTTR" lnInst="1" ldInst="PROT" lnType="LT_PTTR" desc="ANSI 49 Защита от перегрузки (ВН) Ipickup=412A"/>
            <LNode iedName="IED_T2" lnClass="PTOC" lnInst="2" ldInst="PROT" lnType="LT_PTOC" desc="ANSI 51 МТЗ ввода/секц. НН (НН) Ipickup=1671A t=1.0s"/>
            <TransformerWinding name="W1" type="PTW" desc="HV winding">
                <Terminal connectivityNode="SS307/HV/QT2/T2_HV" substationName="SS307" voltageLevelName="HV" bayName="QT2" cNodeName="T2_HV"/>
            </TransformerWinding>
            <TransformerWinding name="W2" type="PTW" desc="LV winding">
                <Terminal connectivityNode="SS307/LV/QT2/T2_LV" substationName="SS307" voltageLevelName="LV" bayName="QT2" cNodeName="T2_LV"/>
            </TransformerWinding>
        </PowerTransformer>
        <VoltageLevel name="HV" desc="35 kV" nomFreq="50" numPhases="3">
            <Voltage unit="V" multiplier="k">35</Voltage>
            <Bay name="W1" desc="Busbar section 1,35 kV">
                <ConnectivityNode name="BB" pathName="SS307/HV/W1/BB" desc="Busbar section 1,35 kV"/>
            </Bay>
            <Bay name="W2" desc="Busbar section 2,35 kV">
                <ConnectivityNode name="BB" pathName="SS307/HV/W2/BB" desc="Busbar section 2,35 kV"/>
            </Bay>
            <Bay name="Q1" desc="Line feeder PEP-1">
                <LNode iedName="MU_HV_Q1" lnClass="MMXU" lnInst="1" ldInst="MEAS" lnType="LT_MMXU"/>
                <ConductingEquipment name="QL" type="IFL" desc="Incoming line PEP-1">
                    <Private type="IDU-SLD-WGS84">30.313370 59.922315</Private>
                    <Terminal connectivityNode="SS307/HV/Q1/n_line" substationName="SS307" voltageLevelName="HV" bayName="Q1" cNodeName="n_line"/>
                </ConductingEquipment>
                <ConductingEquipment name="QSL" type="DIS" desc="РДЗ-35/1000_W1G">
                    <Private type="IDU-SLD-WGS84">30.313339 59.922306</Private>
                    <LNode iedName="IED_HV_Q1" lnClass="XSWI" lnInst="1" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_HV_Q1" lnClass="CILO" lnInst="1" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/HV/Q1/n_line" substationName="SS307" voltageLevelName="HV" bayName="Q1" cNodeName="n_line"/>
                    <Terminal connectivityNode="SS307/HV/Q1/n1" substationName="SS307" voltageLevelName="HV" bayName="Q1" cNodeName="n1"/>
                </ConductingEquipment>
                <ConductingEquipment name="QA" type="CBR" desc="Вакуумный 35кВ 31.5кА_W1G">
                    <Private type="IDU-SLD-WGS84">30.313276 59.922289</Private>
                    <LNode iedName="IED_HV_Q1" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_HV_Q1" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <Terminal connectivityNode="SS307/HV/Q1/n1" substationName="SS307" voltageLevelName="HV" bayName="Q1" cNodeName="n1"/>
                    <Terminal connectivityNode="SS307/HV/Q1/n2" substationName="SS307" voltageLevelName="HV" bayName="Q1" cNodeName="n2"/>
                </ConductingEquipment>
                <ConductingEquipment name="TA" type="CTR" desc="Feeder CT">
                    <Private type="IDU-SLD-WGS84">30.313276 59.922289</Private>
                    <LNode iedName="MU_HV_Q1" lnClass="TCTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_HV_Q1" lnClass="TCTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_HV_Q1" lnClass="TCTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TCTR"/>
                    <Terminal connectivityNode="SS307/HV/Q1/n2" substationName="SS307" voltageLevelName="HV" bayName="Q1" cNodeName="n2"/>
                    <Terminal connectivityNode="SS307/HV/Q1/n3" substationName="SS307" voltageLevelName="HV" bayName="Q1" cNodeName="n3"/>
                </ConductingEquipment>
                <ConductingEquipment name="QSB" type="DIS" desc="РДЗ-35/1000_W1G">
                    <Private type="IDU-SLD-WGS84">30.313232 59.922276</Private>
                    <LNode iedName="IED_HV_Q1" lnClass="XSWI" lnInst="2" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_HV_Q1" lnClass="CILO" lnInst="2" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/HV/Q1/n3" substationName="SS307" voltageLevelName="HV" bayName="Q1" cNodeName="n3"/>
                    <Terminal connectivityNode="SS307/HV/W1/BB" substationName="SS307" voltageLevelName="HV" bayName="W1" cNodeName="BB"/>
                </ConductingEquipment>
                <ConnectivityNode name="n_line" pathName="SS307/HV/Q1/n_line" desc="Line connection node"/>
                <ConnectivityNode name="n1" pathName="SS307/HV/Q1/n1" desc="Between line disconnector and breaker"/>
                <ConnectivityNode name="n2" pathName="SS307/HV/Q1/n2" desc="Between breaker and CT"/>
                <ConnectivityNode name="n3" pathName="SS307/HV/Q1/n3" desc="Between CT and busbar disconnector"/>
            </Bay>
            <Bay name="Q2" desc="Line feeder PEP-2">
                <LNode iedName="MU_HV_Q2" lnClass="MMXU" lnInst="1" ldInst="MEAS" lnType="LT_MMXU"/>
                <ConductingEquipment name="QL" type="IFL" desc="Incoming line PEP-2">
                    <Private type="IDU-SLD-WGS84">30.313468 59.922227</Private>
                    <Terminal connectivityNode="SS307/HV/Q2/n_line" substationName="SS307" voltageLevelName="HV" bayName="Q2" cNodeName="n_line"/>
                </ConductingEquipment>
                <ConductingEquipment name="QSL" type="DIS" desc="РДЗ-35/1000_W2G">
                    <Private type="IDU-SLD-WGS84">30.313437 59.922218</Private>
                    <LNode iedName="IED_HV_Q2" lnClass="XSWI" lnInst="1" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_HV_Q2" lnClass="CILO" lnInst="1" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/HV/Q2/n_line" substationName="SS307" voltageLevelName="HV" bayName="Q2" cNodeName="n_line"/>
                    <Terminal connectivityNode="SS307/HV/Q2/n1" substationName="SS307" voltageLevelName="HV" bayName="Q2" cNodeName="n1"/>
                </ConductingEquipment>
                <ConductingEquipment name="QA" type="CBR" desc="Вакуумный 35кВ 31.5кА_W2G">
                    <Private type="IDU-SLD-WGS84">30.313374 59.922200</Private>
                    <LNode iedName="IED_HV_Q2" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_HV_Q2" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <Terminal connectivityNode="SS307/HV/Q2/n1" substationName="SS307" voltageLevelName="HV" bayName="Q2" cNodeName="n1"/>
                    <Terminal connectivityNode="SS307/HV/Q2/n2" substationName="SS307" voltageLevelName="HV" bayName="Q2" cNodeName="n2"/>
                </ConductingEquipment>
                <ConductingEquipment name="TA" type="CTR" desc="Feeder CT">
                    <Private type="IDU-SLD-WGS84">30.313374 59.922200</Private>
                    <LNode iedName="MU_HV_Q2" lnClass="TCTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_HV_Q2" lnClass="TCTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_HV_Q2" lnClass="TCTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TCTR"/>
                    <Terminal connectivityNode="SS307/HV/Q2/n2" substationName="SS307" voltageLevelName="HV" bayName="Q2" cNodeName="n2"/>
                    <Terminal connectivityNode="SS307/HV/Q2/n3" substationName="SS307" voltageLevelName="HV" bayName="Q2" cNodeName="n3"/>
                </ConductingEquipment>
                <ConductingEquipment name="QSB" type="DIS" desc="РДЗ-35/1000_W2G">
                    <Private type="IDU-SLD-WGS84">30.313330 59.922188</Private>
                    <LNode iedName="IED_HV_Q2" lnClass="XSWI" lnInst="2" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_HV_Q2" lnClass="CILO" lnInst="2" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/HV/Q2/n3" substationName="SS307" voltageLevelName="HV" bayName="Q2" cNodeName="n3"/>
                    <Terminal connectivityNode="SS307/HV/W2/BB" substationName="SS307" voltageLevelName="HV" bayName="W2" cNodeName="BB"/>
                </ConductingEquipment>
                <ConnectivityNode name="n_line" pathName="SS307/HV/Q2/n_line" desc="Line connection node"/>
                <ConnectivityNode name="n1" pathName="SS307/HV/Q2/n1" desc="Between line disconnector and breaker"/>
                <ConnectivityNode name="n2" pathName="SS307/HV/Q2/n2" desc="Between breaker and CT"/>
                <ConnectivityNode name="n3" pathName="SS307/HV/Q2/n3" desc="Between CT and busbar disconnector"/>
            </Bay>
            <Bay name="QT1" desc="Transformer T1 bay (HV)">
                <LNode iedName="MU_HV_QT1" lnClass="MMXU" lnInst="1" ldInst="MEAS" lnType="LT_MMXU"/>
                <ConductingEquipment name="QSB" type="DIS" desc="РДЗ-35/1000_T-1">
                    <Private type="IDU-SLD-WGS84">30.313223 59.922158</Private>
                    <LNode iedName="IED_HV_QT1" lnClass="XSWI" lnInst="1" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_HV_QT1" lnClass="CILO" lnInst="1" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/HV/W1/BB" substationName="SS307" voltageLevelName="HV" bayName="W1" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/HV/QT1/n1" substationName="SS307" voltageLevelName="HV" bayName="QT1" cNodeName="n1"/>
                </ConductingEquipment>
                <ConductingEquipment name="QA" type="CBR" desc="Вакуумный 35кВ 31.5кА_T-1">
                    <Private type="IDU-SLD-WGS84">30.313191 59.922149</Private>
                    <LNode iedName="IED_HV_QT1" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_HV_QT1" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <Terminal connectivityNode="SS307/HV/QT1/n1" substationName="SS307" voltageLevelName="HV" bayName="QT1" cNodeName="n1"/>
                    <Terminal connectivityNode="SS307/HV/QT1/n2" substationName="SS307" voltageLevelName="HV" bayName="QT1" cNodeName="n2"/>
                </ConductingEquipment>
                <ConductingEquipment name="TA" type="CTR" desc="Transformer T1 CT">
                    <Private type="IDU-SLD-WGS84">30.313191 59.922149</Private>
                    <LNode iedName="MU_HV_QT1" lnClass="TCTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_HV_QT1" lnClass="TCTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_HV_QT1" lnClass="TCTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TCTR"/>
                    <Terminal connectivityNode="SS307/HV/QT1/n2" substationName="SS307" voltageLevelName="HV" bayName="QT1" cNodeName="n2"/>
                    <Terminal connectivityNode="SS307/HV/QT1/n3" substationName="SS307" voltageLevelName="HV" bayName="QT1" cNodeName="n3"/>
                </ConductingEquipment>
                <ConductingEquipment name="QST" type="DIS" desc="РДЗ-35/1000_T-1">
                    <Private type="IDU-SLD-WGS84">30.313159 59.922140</Private>
                    <LNode iedName="IED_HV_QT1" lnClass="XSWI" lnInst="2" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_HV_QT1" lnClass="CILO" lnInst="2" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/HV/QT1/n3" substationName="SS307" voltageLevelName="HV" bayName="QT1" cNodeName="n3"/>
                    <Terminal connectivityNode="SS307/HV/QT1/T1_HV" substationName="SS307" voltageLevelName="HV" bayName="QT1" cNodeName="T1_HV"/>
                </ConductingEquipment>
                <ConductingEquipment name="FV" type="SAR" desc="ОПН-П-35/40.5 УХЛ1_T-1">
                    <Private type="IDU-SLD-WGS84">30.313113 59.922127</Private>
                    <Terminal connectivityNode="SS307/HV/QT1/T1_HV" substationName="SS307" voltageLevelName="HV" bayName="QT1" cNodeName="T1_HV"/>
                </ConductingEquipment>
                <ConnectivityNode name="n1" pathName="SS307/HV/QT1/n1" desc="Between busbar disconnector and breaker"/>
                <ConnectivityNode name="n2" pathName="SS307/HV/QT1/n2" desc="Between breaker and CT"/>
                <ConnectivityNode name="n3" pathName="SS307/HV/QT1/n3" desc="Between CT and transformer disconnector"/>
                <ConnectivityNode name="T1_HV" pathName="SS307/HV/QT1/T1_HV" desc="Transformer T1 HV terminal"/>
            </Bay>
            <Bay name="QT2" desc="Transformer T2 bay (HV)">
                <LNode iedName="MU_HV_QT2" lnClass="MMXU" lnInst="1" ldInst="MEAS" lnType="LT_MMXU"/>
                <ConductingEquipment name="QSB" type="DIS" desc="РДЗ-35/1000_T-2">
                    <Private type="IDU-SLD-WGS84">30.313123 59.922246</Private>
                    <LNode iedName="IED_HV_QT2" lnClass="XSWI" lnInst="1" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_HV_QT2" lnClass="CILO" lnInst="1" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/HV/W2/BB" substationName="SS307" voltageLevelName="HV" bayName="W2" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/HV/QT2/n1" substationName="SS307" voltageLevelName="HV" bayName="QT2" cNodeName="n1"/>
                </ConductingEquipment>
                <ConductingEquipment name="QA" type="CBR" desc="Вакуумный 35кВ 31.5кА_T-2">
                    <Private type="IDU-SLD-WGS84">30.313091 59.922237</Private>
                    <LNode iedName="IED_HV_QT2" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_HV_QT2" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <Terminal connectivityNode="SS307/HV/QT2/n1" substationName="SS307" voltageLevelName="HV" bayName="QT2" cNodeName="n1"/>
                    <Terminal connectivityNode="SS307/HV/QT2/n2" substationName="SS307" voltageLevelName="HV" bayName="QT2" cNodeName="n2"/>
                </ConductingEquipment>
                <ConductingEquipment name="TA" type="CTR" desc="Transformer T2 CT">
                    <Private type="IDU-SLD-WGS84">30.313091 59.922237</Private>
                    <LNode iedName="MU_HV_QT2" lnClass="TCTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_HV_QT2" lnClass="TCTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_HV_QT2" lnClass="TCTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TCTR"/>
                    <Terminal connectivityNode="SS307/HV/QT2/n2" substationName="SS307" voltageLevelName="HV" bayName="QT2" cNodeName="n2"/>
                    <Terminal connectivityNode="SS307/HV/QT2/n3" substationName="SS307" voltageLevelName="HV" bayName="QT2" cNodeName="n3"/>
                </ConductingEquipment>
                <ConductingEquipment name="QST" type="DIS" desc="РДЗ-35/1000_T-2">
                    <Private type="IDU-SLD-WGS84">30.313059 59.922228</Private>
                    <LNode iedName="IED_HV_QT2" lnClass="XSWI" lnInst="2" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_HV_QT2" lnClass="CILO" lnInst="2" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/HV/QT2/n3" substationName="SS307" voltageLevelName="HV" bayName="QT2" cNodeName="n3"/>
                    <Terminal connectivityNode="SS307/HV/QT2/T2_HV" substationName="SS307" voltageLevelName="HV" bayName="QT2" cNodeName="T2_HV"/>
                </ConductingEquipment>
                <ConductingEquipment name="FV" type="SAR" desc="ОПН-П-35/40.5 УХЛ1_T-2">
                    <Private type="IDU-SLD-WGS84">30.313013 59.922215</Private>
                    <Terminal connectivityNode="SS307/HV/QT2/T2_HV" substationName="SS307" voltageLevelName="HV" bayName="QT2" cNodeName="T2_HV"/>
                </ConductingEquipment>
                <ConnectivityNode name="n1" pathName="SS307/HV/QT2/n1" desc="Between busbar disconnector and breaker"/>
                <ConnectivityNode name="n2" pathName="SS307/HV/QT2/n2" desc="Between breaker and CT"/>
                <ConnectivityNode name="n3" pathName="SS307/HV/QT2/n3" desc="Between CT and transformer disconnector"/>
                <ConnectivityNode name="T2_HV" pathName="SS307/HV/QT2/T2_HV" desc="Transformer T2 HV terminal"/>
            </Bay>
            <Bay name="QC" desc="HV bus coupler">
                <LNode iedName="MU_HV_QC" lnClass="MMXU" lnInst="1" ldInst="MEAS" lnType="LT_MMXU"/>
                <LNode iedName="IED_HV_QC" lnClass="PTOC" lnInst="1" ldInst="PROT" lnType="LT_PTOC" desc="Bus coupler overcurrent"/>
                <ConductingEquipment name="QSA" type="DIS" desc="РДЗ-35/1000_SEC_1">
                    <Private type="IDU-SLD-WGS84">30.313248 59.922198</Private>
                    <LNode iedName="IED_HV_QC" lnClass="XSWI" lnInst="1" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_HV_QC" lnClass="CILO" lnInst="1" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/HV/W1/BB" substationName="SS307" voltageLevelName="HV" bayName="W1" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/HV/QC/n1" substationName="SS307" voltageLevelName="HV" bayName="QC" cNodeName="n1"/>
                </ConductingEquipment>
                <ConductingEquipment name="QA" type="CBR" desc="Вакуумный 35кВ 31.5кА_SEC">
                    <Private type="IDU-SLD-WGS84">30.313227 59.922217</Private>
                    <LNode iedName="IED_HV_QC" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_HV_QC" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <Terminal connectivityNode="SS307/HV/QC/n1" substationName="SS307" voltageLevelName="HV" bayName="QC" cNodeName="n1"/>
                    <Terminal connectivityNode="SS307/HV/QC/n2" substationName="SS307" voltageLevelName="HV" bayName="QC" cNodeName="n2"/>
                </ConductingEquipment>
                <ConductingEquipment name="TA" type="CTR" desc="Bus coupler CT">
                    <Private type="IDU-SLD-WGS84">30.313227 59.922217</Private>
                    <LNode iedName="MU_HV_QC" lnClass="TCTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_HV_QC" lnClass="TCTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_HV_QC" lnClass="TCTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TCTR"/>
                    <Terminal connectivityNode="SS307/HV/QC/n2" substationName="SS307" voltageLevelName="HV" bayName="QC" cNodeName="n2"/>
                    <Terminal connectivityNode="SS307/HV/QC/n3" substationName="SS307" voltageLevelName="HV" bayName="QC" cNodeName="n3"/>
                </ConductingEquipment>
                <ConductingEquipment name="QSB" type="DIS" desc="РДЗ-35/1000_SEC_2">
                    <Private type="IDU-SLD-WGS84">30.313205 59.922236</Private>
                    <LNode iedName="IED_HV_QC" lnClass="XSWI" lnInst="2" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_HV_QC" lnClass="CILO" lnInst="2" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/HV/QC/n3" substationName="SS307" voltageLevelName="HV" bayName="QC" cNodeName="n3"/>
                    <Terminal connectivityNode="SS307/HV/W2/BB" substationName="SS307" voltageLevelName="HV" bayName="W2" cNodeName="BB"/>
                </ConductingEquipment>
                <ConnectivityNode name="n1" pathName="SS307/HV/QC/n1" desc="Between section-1 disconnector and breaker"/>
                <ConnectivityNode name="n2" pathName="SS307/HV/QC/n2" desc="Between breaker and CT"/>
                <ConnectivityNode name="n3" pathName="SS307/HV/QC/n3" desc="Between CT and section-2 disconnector"/>
            </Bay>
            <Bay name="QV1" desc="Voltage transformer bay, section 1">
                <ConductingEquipment name="QS" type="DIS" desc="РДЗ-35/1000_VT_1">
                    <Private type="IDU-SLD-WGS84">30.313301 59.922151</Private>
                    <LNode iedName="IED_HV_QV1" lnClass="XSWI" lnInst="1" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_HV_QV1" lnClass="CILO" lnInst="1" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/HV/W1/BB" substationName="SS307" voltageLevelName="HV" bayName="W1" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/HV/QV1/n1" substationName="SS307" voltageLevelName="HV" bayName="QV1" cNodeName="n1"/>
                </ConductingEquipment>
                <ConductingEquipment name="TV" type="VTR" desc="ЗНОЛ-35_1">
                    <Private type="IDU-SLD-WGS84">30.313315 59.922138</Private>
                    <LNode iedName="MU_HV_QV1" lnClass="TVTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TVTR"/>
                    <LNode iedName="MU_HV_QV1" lnClass="TVTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TVTR"/>
                    <LNode iedName="MU_HV_QV1" lnClass="TVTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TVTR"/>
                    <Terminal connectivityNode="SS307/HV/QV1/n1" substationName="SS307" voltageLevelName="HV" bayName="QV1" cNodeName="n1"/>
                </ConductingEquipment>
                <ConnectivityNode name="n1" pathName="SS307/HV/QV1/n1" desc="VT connection node"/>
            </Bay>
            <Bay name="QV2" desc="Voltage transformer bay, section 2">
                <ConductingEquipment name="QS" type="DIS" desc="РДЗ-35/1000_VT_2">
                    <Private type="IDU-SLD-WGS84">30.313153 59.922283</Private>
                    <LNode iedName="IED_HV_QV2" lnClass="XSWI" lnInst="1" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_HV_QV2" lnClass="CILO" lnInst="1" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/HV/W2/BB" substationName="SS307" voltageLevelName="HV" bayName="W2" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/HV/QV2/n1" substationName="SS307" voltageLevelName="HV" bayName="QV2" cNodeName="n1"/>
                </ConductingEquipment>
                <ConductingEquipment name="TV" type="VTR" desc="ЗНОЛ-35_2">
                    <Private type="IDU-SLD-WGS84">30.313139 59.922296</Private>
                    <LNode iedName="MU_HV_QV2" lnClass="TVTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TVTR"/>
                    <LNode iedName="MU_HV_QV2" lnClass="TVTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TVTR"/>
                    <LNode iedName="MU_HV_QV2" lnClass="TVTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TVTR"/>
                    <Terminal connectivityNode="SS307/HV/QV2/n1" substationName="SS307" voltageLevelName="HV" bayName="QV2" cNodeName="n1"/>
                </ConductingEquipment>
                <ConnectivityNode name="n1" pathName="SS307/HV/QV2/n1" desc="VT connection node"/>
            </Bay>
        </VoltageLevel>
        <VoltageLevel name="LV" desc="10 kV" nomFreq="50" numPhases="3">
            <Voltage unit="V" multiplier="k">10</Voltage>
            <Bay name="W1" desc="Busbar section 1,10 kV">
                <ConnectivityNode name="BB" pathName="SS307/LV/W1/BB" desc="Busbar section 1,10 kV"/>
            </Bay>
            <Bay name="W2" desc="Busbar section 2,10 kV">
                <ConnectivityNode name="BB" pathName="SS307/LV/W2/BB" desc="Busbar section 2,10 kV"/>
            </Bay>
            <Bay name="QT1" desc="Transformer T1 bay (LV)">
                <LNode iedName="MU_LV_QT1" lnClass="MMXU" lnInst="1" ldInst="MEAS" lnType="LT_MMXU"/>
                <ConductingEquipment name="TA" type="CTR" desc="LV incomer CT, T1">
                    <LNode iedName="MU_LV_QT1" lnClass="TCTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_QT1" lnClass="TCTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_QT1" lnClass="TCTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TCTR"/>
                    <Terminal connectivityNode="SS307/LV/QT1/T1_LV" substationName="SS307" voltageLevelName="LV" bayName="QT1" cNodeName="T1_LV"/>
                    <Terminal connectivityNode="SS307/LV/QT1/n_ct" substationName="SS307" voltageLevelName="LV" bayName="QT1" cNodeName="n_ct"/>
                </ConductingEquipment>
                <ConductingEquipment name="QA" type="CBR" desc="LV incomer breaker, T1">
                    <LNode iedName="IED_LV_QT1" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_LV_QT1" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <LNode iedName="IED_LV_QT1" lnClass="PTOC" lnInst="1" ldInst="PROT" lnType="LT_PTOC" desc="LV incomer overcurrent"/>
                    <Terminal connectivityNode="SS307/LV/QT1/n_ct" substationName="SS307" voltageLevelName="LV" bayName="QT1" cNodeName="n_ct"/>
                    <Terminal connectivityNode="SS307/LV/W1/BB" substationName="SS307" voltageLevelName="LV" bayName="W1" cNodeName="BB"/>
                </ConductingEquipment>
                <ConnectivityNode name="T1_LV" pathName="SS307/LV/QT1/T1_LV" desc="Transformer T1 LV terminal"/>
                <ConnectivityNode name="n_ct" pathName="SS307/LV/QT1/n_ct" desc="Between LV terminal and incomer breaker"/>
            </Bay>
            <Bay name="QT2" desc="Transformer T2 bay (LV)">
                <LNode iedName="MU_LV_QT2" lnClass="MMXU" lnInst="1" ldInst="MEAS" lnType="LT_MMXU"/>
                <ConductingEquipment name="TA" type="CTR" desc="LV incomer CT, T2">
                    <LNode iedName="MU_LV_QT2" lnClass="TCTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_QT2" lnClass="TCTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_QT2" lnClass="TCTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TCTR"/>
                    <Terminal connectivityNode="SS307/LV/QT2/T2_LV" substationName="SS307" voltageLevelName="LV" bayName="QT2" cNodeName="T2_LV"/>
                    <Terminal connectivityNode="SS307/LV/QT2/n_ct" substationName="SS307" voltageLevelName="LV" bayName="QT2" cNodeName="n_ct"/>
                </ConductingEquipment>
                <ConductingEquipment name="QA" type="CBR" desc="LV incomer breaker, T2">
                    <LNode iedName="IED_LV_QT2" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_LV_QT2" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <LNode iedName="IED_LV_QT2" lnClass="PTOC" lnInst="1" ldInst="PROT" lnType="LT_PTOC" desc="LV incomer overcurrent"/>
                    <Terminal connectivityNode="SS307/LV/QT2/n_ct" substationName="SS307" voltageLevelName="LV" bayName="QT2" cNodeName="n_ct"/>
                    <Terminal connectivityNode="SS307/LV/W2/BB" substationName="SS307" voltageLevelName="LV" bayName="W2" cNodeName="BB"/>
                </ConductingEquipment>
                <ConnectivityNode name="T2_LV" pathName="SS307/LV/QT2/T2_LV" desc="Transformer T2 LV terminal"/>
                <ConnectivityNode name="n_ct" pathName="SS307/LV/QT2/n_ct" desc="Between LV terminal and incomer breaker"/>
            </Bay>
            <Bay name="K1_SV1" desc="LV bus section breaker">
                <LNode iedName="MU_LV_K1_SV1" lnClass="MMXU" lnInst="1" ldInst="MEAS" lnType="LT_MMXU"/>
                <LNode iedName="IED_LV_K1_SV1" lnClass="PTOC" lnInst="1" ldInst="PROT" lnType="LT_PTOC" desc="Bus coupler overcurrent"/>
                <ConductingEquipment name="QA" type="CBR" desc="LV bus section breaker">
                    <Private type="IDU-SLD-WGS84">30.312683 59.922052</Private>
                    <LNode iedName="IED_LV_K1_SV1" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_LV_K1_SV1" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <Terminal connectivityNode="SS307/LV/W1/BB" substationName="SS307" voltageLevelName="LV" bayName="W1" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/LV/K1_SV1/n1" substationName="SS307" voltageLevelName="LV" bayName="K1_SV1" cNodeName="n1"/>
                </ConductingEquipment>
                <ConductingEquipment name="TA" type="CTR" desc="Bus coupler CT">
                    <Private type="IDU-SLD-WGS84">30.312683 59.922052</Private>
                    <LNode iedName="MU_LV_K1_SV1" lnClass="TCTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_K1_SV1" lnClass="TCTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_K1_SV1" lnClass="TCTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TCTR"/>
                    <Terminal connectivityNode="SS307/LV/K1_SV1/n1" substationName="SS307" voltageLevelName="LV" bayName="K1_SV1" cNodeName="n1"/>
                    <Terminal connectivityNode="SS307/LV/W2/BB" substationName="SS307" voltageLevelName="LV" bayName="W2" cNodeName="BB"/>
                </ConductingEquipment>
                <ConnectivityNode name="n1" pathName="SS307/LV/K1_SV1/n1" desc="Between breaker and CT"/>
            </Bay>
            <Bay name="K1_F1" desc="Outgoing feeder outgoing_8368c64d-e34c-40c6-8fa6-74816ee4ac8b">
                <LNode iedName="MU_LV_K1_F1" lnClass="MMXU" lnInst="1" ldInst="MEAS" lnType="LT_MMXU"/>
                <ConductingEquipment name="QA" type="CBR" desc="Feeder breaker outgoing_8368c64d-e34c-40c6-8fa6-74816ee4ac8b">
                    <Private type="IDU-SLD-WGS84">30.312693 59.922046</Private>
                    <LNode iedName="IED_LV_K1_F1" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_LV_K1_F1" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <LNode iedName="IED_LV_K1_F1" lnClass="PTOC" lnInst="1" ldInst="PROT" lnType="LT_PTOC" desc="Feeder overcurrent"/>
                    <Terminal connectivityNode="SS307/LV/W1/BB" substationName="SS307" voltageLevelName="LV" bayName="W1" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/LV/K1_F1/n_ct" substationName="SS307" voltageLevelName="LV" bayName="K1_F1" cNodeName="n_ct"/>
                </ConductingEquipment>
                <ConductingEquipment name="TA" type="CTR" desc="Feeder CT outgoing_8368c64d-e34c-40c6-8fa6-74816ee4ac8b">
                    <Private type="IDU-SLD-WGS84">30.312693 59.922046</Private>
                    <LNode iedName="MU_LV_K1_F1" lnClass="TCTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_K1_F1" lnClass="TCTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_K1_F1" lnClass="TCTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TCTR"/>
                    <Terminal connectivityNode="SS307/LV/K1_F1/n_ct" substationName="SS307" voltageLevelName="LV" bayName="K1_F1" cNodeName="n_ct"/>
                    <Terminal connectivityNode="SS307/LV/K1_F1/n_out" substationName="SS307" voltageLevelName="LV" bayName="K1_F1" cNodeName="n_out"/>
                </ConductingEquipment>
                <ConductingEquipment name="QL" type="IFL" desc="Outgoing line outgoing_8368c64d-e34c-40c6-8fa6-74816ee4ac8b">
                    <Private type="IDU-SLD-WGS84">30.312693 59.922046</Private>
                    <Terminal connectivityNode="SS307/LV/K1_F1/n_out" substationName="SS307" voltageLevelName="LV" bayName="K1_F1" cNodeName="n_out"/>
                </ConductingEquipment>
                <ConnectivityNode name="n_ct" pathName="SS307/LV/K1_F1/n_ct" desc="Between breaker and feeder CT"/>
                <ConnectivityNode name="n_out" pathName="SS307/LV/K1_F1/n_out" desc="Feeder connection node"/>
            </Bay>
            <Bay name="K1_IN1" desc="Switchgear incomer bay, section 1">
                <ConductingEquipment name="QA" type="CBR" desc="Switchgear incomer incomer_04958688-b3e2-4ab7-82ab-3745e3730615">
                    <Private type="IDU-SLD-WGS84">30.312703 59.922040</Private>
                    <LNode iedName="IED_LV_K1_IN1" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_LV_K1_IN1" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <Terminal connectivityNode="SS307/LV/W1/BB" substationName="SS307" voltageLevelName="LV" bayName="W1" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/LV/K1_IN1/n_load" substationName="SS307" voltageLevelName="LV" bayName="K1_IN1" cNodeName="n_load"/>
                </ConductingEquipment>
                <ConnectivityNode name="n_load" pathName="SS307/LV/K1_IN1/n_load" desc="Incomer connection node"/>
            </Bay>
            <Bay name="K1_TN1" desc="LV VT bay, section 1">
                <ConductingEquipment name="TV" type="VTR" desc="LV VT vt_fb602510-f428-4627-83d1-aadb0d14bbdb">
                    <Private type="IDU-SLD-WGS84">30.312714 59.922033</Private>
                    <LNode iedName="MU_LV_K1_TN1" lnClass="TVTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TVTR"/>
                    <LNode iedName="MU_LV_K1_TN1" lnClass="TVTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TVTR"/>
                    <LNode iedName="MU_LV_K1_TN1" lnClass="TVTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TVTR"/>
                    <Terminal connectivityNode="SS307/LV/W1/BB" substationName="SS307" voltageLevelName="LV" bayName="W1" cNodeName="BB"/>
                </ConductingEquipment>
            </Bay>
            <Bay name="K1_F2" desc="Outgoing feeder outgoing_7181fe54-ec67-4631-a786-141bffb03542">
                <LNode iedName="MU_LV_K1_F2" lnClass="MMXU" lnInst="1" ldInst="MEAS" lnType="LT_MMXU"/>
                <ConductingEquipment name="QA" type="CBR" desc="Feeder breaker outgoing_7181fe54-ec67-4631-a786-141bffb03542">
                    <Private type="IDU-SLD-WGS84">30.312723 59.922028</Private>
                    <LNode iedName="IED_LV_K1_F2" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_LV_K1_F2" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <LNode iedName="IED_LV_K1_F2" lnClass="PTOC" lnInst="1" ldInst="PROT" lnType="LT_PTOC" desc="Feeder overcurrent"/>
                    <Terminal connectivityNode="SS307/LV/W1/BB" substationName="SS307" voltageLevelName="LV" bayName="W1" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/LV/K1_F2/n_ct" substationName="SS307" voltageLevelName="LV" bayName="K1_F2" cNodeName="n_ct"/>
                </ConductingEquipment>
                <ConductingEquipment name="TA" type="CTR" desc="Feeder CT outgoing_7181fe54-ec67-4631-a786-141bffb03542">
                    <Private type="IDU-SLD-WGS84">30.312723 59.922028</Private>
                    <LNode iedName="MU_LV_K1_F2" lnClass="TCTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_K1_F2" lnClass="TCTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_K1_F2" lnClass="TCTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TCTR"/>
                    <Terminal connectivityNode="SS307/LV/K1_F2/n_ct" substationName="SS307" voltageLevelName="LV" bayName="K1_F2" cNodeName="n_ct"/>
                    <Terminal connectivityNode="SS307/LV/K1_F2/n_out" substationName="SS307" voltageLevelName="LV" bayName="K1_F2" cNodeName="n_out"/>
                </ConductingEquipment>
                <ConductingEquipment name="QL" type="IFL" desc="Outgoing line outgoing_7181fe54-ec67-4631-a786-141bffb03542">
                    <Private type="IDU-SLD-WGS84">30.312723 59.922028</Private>
                    <Terminal connectivityNode="SS307/LV/K1_F2/n_out" substationName="SS307" voltageLevelName="LV" bayName="K1_F2" cNodeName="n_out"/>
                </ConductingEquipment>
                <ConnectivityNode name="n_ct" pathName="SS307/LV/K1_F2/n_ct" desc="Between breaker and feeder CT"/>
                <ConnectivityNode name="n_out" pathName="SS307/LV/K1_F2/n_out" desc="Feeder connection node"/>
            </Bay>
            <Bay name="K1_R1" desc="Spare bay spare_e2e49f92-a8df-4886-9ffb-67f2f7ea425e">
                <ConductingEquipment name="QA" type="CBR" desc="Spare breaker spare_e2e49f92-a8df-4886-9ffb-67f2f7ea425e">
                    <Private type="IDU-SLD-WGS84">30.312732 59.922022</Private>
                    <LNode iedName="IED_LV_K1_R1" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_LV_K1_R1" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <Terminal connectivityNode="SS307/LV/W1/BB" substationName="SS307" voltageLevelName="LV" bayName="W1" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/LV/K1_R1/n_res" substationName="SS307" voltageLevelName="LV" bayName="K1_R1" cNodeName="n_res"/>
                </ConductingEquipment>
                <ConnectivityNode name="n_res" pathName="SS307/LV/K1_R1/n_res" desc="Spare connection node"/>
            </Bay>
            <Bay name="K2_SD1" desc="LV bus section disconnector">
                <ConductingEquipment name="QS" type="DIS" desc="LV bus section disconnector">
                    <Private type="IDU-SLD-WGS84">30.312625 59.922086</Private>
                    <LNode iedName="IED_LV_K2_SD1" lnClass="XSWI" lnInst="1" ldInst="CTRL" lnType="LT_XSWI"/>
                    <LNode iedName="IED_LV_K2_SD1" lnClass="CILO" lnInst="1" ldInst="CTRL" lnType="LT_CILO"/>
                    <Terminal connectivityNode="SS307/LV/W1/BB" substationName="SS307" voltageLevelName="LV" bayName="W1" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/LV/W2/BB" substationName="SS307" voltageLevelName="LV" bayName="W2" cNodeName="BB"/>
                </ConductingEquipment>
            </Bay>
            <Bay name="K2_F1" desc="Outgoing feeder outgoing_18e01396-4f76-4016-adc8-9f04ccdf4efc">
                <LNode iedName="MU_LV_K2_F1" lnClass="MMXU" lnInst="1" ldInst="MEAS" lnType="LT_MMXU"/>
                <ConductingEquipment name="QA" type="CBR" desc="Feeder breaker outgoing_18e01396-4f76-4016-adc8-9f04ccdf4efc">
                    <Private type="IDU-SLD-WGS84">30.312614 59.922092</Private>
                    <LNode iedName="IED_LV_K2_F1" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_LV_K2_F1" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <LNode iedName="IED_LV_K2_F1" lnClass="PTOC" lnInst="1" ldInst="PROT" lnType="LT_PTOC" desc="Feeder overcurrent"/>
                    <Terminal connectivityNode="SS307/LV/W2/BB" substationName="SS307" voltageLevelName="LV" bayName="W2" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/LV/K2_F1/n_ct" substationName="SS307" voltageLevelName="LV" bayName="K2_F1" cNodeName="n_ct"/>
                </ConductingEquipment>
                <ConductingEquipment name="TA" type="CTR" desc="Feeder CT outgoing_18e01396-4f76-4016-adc8-9f04ccdf4efc">
                    <Private type="IDU-SLD-WGS84">30.312614 59.922092</Private>
                    <LNode iedName="MU_LV_K2_F1" lnClass="TCTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_K2_F1" lnClass="TCTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_K2_F1" lnClass="TCTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TCTR"/>
                    <Terminal connectivityNode="SS307/LV/K2_F1/n_ct" substationName="SS307" voltageLevelName="LV" bayName="K2_F1" cNodeName="n_ct"/>
                    <Terminal connectivityNode="SS307/LV/K2_F1/n_out" substationName="SS307" voltageLevelName="LV" bayName="K2_F1" cNodeName="n_out"/>
                </ConductingEquipment>
                <ConductingEquipment name="QL" type="IFL" desc="Outgoing line outgoing_18e01396-4f76-4016-adc8-9f04ccdf4efc">
                    <Private type="IDU-SLD-WGS84">30.312614 59.922092</Private>
                    <Terminal connectivityNode="SS307/LV/K2_F1/n_out" substationName="SS307" voltageLevelName="LV" bayName="K2_F1" cNodeName="n_out"/>
                </ConductingEquipment>
                <ConnectivityNode name="n_ct" pathName="SS307/LV/K2_F1/n_ct" desc="Between breaker and feeder CT"/>
                <ConnectivityNode name="n_out" pathName="SS307/LV/K2_F1/n_out" desc="Feeder connection node"/>
            </Bay>
            <Bay name="K2_IN1" desc="Switchgear incomer bay, section 2">
                <ConductingEquipment name="QA" type="CBR" desc="Switchgear incomer incomer_ff69a6b2-5452-4f25-88af-2c9dd661008c">
                    <Private type="IDU-SLD-WGS84">30.312604 59.922098</Private>
                    <LNode iedName="IED_LV_K2_IN1" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_LV_K2_IN1" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <Terminal connectivityNode="SS307/LV/W2/BB" substationName="SS307" voltageLevelName="LV" bayName="W2" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/LV/K2_IN1/n_load" substationName="SS307" voltageLevelName="LV" bayName="K2_IN1" cNodeName="n_load"/>
                </ConductingEquipment>
                <ConnectivityNode name="n_load" pathName="SS307/LV/K2_IN1/n_load" desc="Incomer connection node"/>
            </Bay>
            <Bay name="K2_TN1" desc="LV VT bay, section 2">
                <ConductingEquipment name="TV" type="VTR" desc="LV VT vt_e9158d77-62e4-4d28-8202-8f30df98e766">
                    <Private type="IDU-SLD-WGS84">30.312594 59.922105</Private>
                    <LNode iedName="MU_LV_K2_TN1" lnClass="TVTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TVTR"/>
                    <LNode iedName="MU_LV_K2_TN1" lnClass="TVTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TVTR"/>
                    <LNode iedName="MU_LV_K2_TN1" lnClass="TVTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TVTR"/>
                    <Terminal connectivityNode="SS307/LV/W2/BB" substationName="SS307" voltageLevelName="LV" bayName="W2" cNodeName="BB"/>
                </ConductingEquipment>
            </Bay>
            <Bay name="K2_F2" desc="Outgoing feeder outgoing_517ec640-cb0c-43b2-8e01-802f014dd8c4">
                <LNode iedName="MU_LV_K2_F2" lnClass="MMXU" lnInst="1" ldInst="MEAS" lnType="LT_MMXU"/>
                <ConductingEquipment name="QA" type="CBR" desc="Feeder breaker outgoing_517ec640-cb0c-43b2-8e01-802f014dd8c4">
                    <Private type="IDU-SLD-WGS84">30.312584 59.922110</Private>
                    <LNode iedName="IED_LV_K2_F2" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_LV_K2_F2" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <LNode iedName="IED_LV_K2_F2" lnClass="PTOC" lnInst="1" ldInst="PROT" lnType="LT_PTOC" desc="Feeder overcurrent"/>
                    <Terminal connectivityNode="SS307/LV/W2/BB" substationName="SS307" voltageLevelName="LV" bayName="W2" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/LV/K2_F2/n_ct" substationName="SS307" voltageLevelName="LV" bayName="K2_F2" cNodeName="n_ct"/>
                </ConductingEquipment>
                <ConductingEquipment name="TA" type="CTR" desc="Feeder CT outgoing_517ec640-cb0c-43b2-8e01-802f014dd8c4">
                    <Private type="IDU-SLD-WGS84">30.312584 59.922110</Private>
                    <LNode iedName="MU_LV_K2_F2" lnClass="TCTR" lnInst="1" prefix="A" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_K2_F2" lnClass="TCTR" lnInst="1" prefix="B" ldInst="MEAS" lnType="LT_TCTR"/>
                    <LNode iedName="MU_LV_K2_F2" lnClass="TCTR" lnInst="1" prefix="C" ldInst="MEAS" lnType="LT_TCTR"/>
                    <Terminal connectivityNode="SS307/LV/K2_F2/n_ct" substationName="SS307" voltageLevelName="LV" bayName="K2_F2" cNodeName="n_ct"/>
                    <Terminal connectivityNode="SS307/LV/K2_F2/n_out" substationName="SS307" voltageLevelName="LV" bayName="K2_F2" cNodeName="n_out"/>
                </ConductingEquipment>
                <ConductingEquipment name="QL" type="IFL" desc="Outgoing line outgoing_517ec640-cb0c-43b2-8e01-802f014dd8c4">
                    <Private type="IDU-SLD-WGS84">30.312584 59.922110</Private>
                    <Terminal connectivityNode="SS307/LV/K2_F2/n_out" substationName="SS307" voltageLevelName="LV" bayName="K2_F2" cNodeName="n_out"/>
                </ConductingEquipment>
                <ConnectivityNode name="n_ct" pathName="SS307/LV/K2_F2/n_ct" desc="Between breaker and feeder CT"/>
                <ConnectivityNode name="n_out" pathName="SS307/LV/K2_F2/n_out" desc="Feeder connection node"/>
            </Bay>
            <Bay name="K2_R1" desc="Spare bay spare_dff00795-db84-49e0-8cd1-165fe040b7e1">
                <ConductingEquipment name="QA" type="CBR" desc="Spare breaker spare_dff00795-db84-49e0-8cd1-165fe040b7e1">
                    <Private type="IDU-SLD-WGS84">30.312575 59.922116</Private>
                    <LNode iedName="IED_LV_K2_R1" lnClass="XCBR" lnInst="1" ldInst="CTRL" lnType="LT_XCBR"/>
                    <LNode iedName="IED_LV_K2_R1" lnClass="CSWI" lnInst="1" ldInst="CTRL" lnType="LT_CSWI"/>
                    <Terminal connectivityNode="SS307/LV/W2/BB" substationName="SS307" voltageLevelName="LV" bayName="W2" cNodeName="BB"/>
                    <Terminal connectivityNode="SS307/LV/K2_R1/n_res" substationName="SS307" voltageLevelName="LV" bayName="K2_R1" cNodeName="n_res"/>
                </ConductingEquipment>
                <ConnectivityNode name="n_res" pathName="SS307/LV/K2_R1/n_res" desc="Spare connection node"/>
            </Bay>
        </VoltageLevel>
    </Substation>
    <Communication>
        <SubNetwork name="StationBus" type="8-MMS">
            <ConnectedAP iedName="IED_HV_Q1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.11</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-01</P>
                        <P type="APPID">1001</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_Q1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.12</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_HV_Q2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.13</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-02</P>
                        <P type="APPID">1002</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_Q2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.14</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_HV_QT1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.15</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-03</P>
                        <P type="APPID">1003</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_QT1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.16</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_HV_QT2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.17</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-04</P>
                        <P type="APPID">1004</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_QT2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.18</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_HV_QC" apName="S1">
                <Address>
                    <P type="IP">192.168.1.19</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-05</P>
                        <P type="APPID">1005</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
                <GSE ldInst="PROT" cbName="GoTrip">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-06</P>
                        <P type="APPID">1006</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_QC" apName="S1">
                <Address>
                    <P type="IP">192.168.1.20</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_HV_QV1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.21</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-07</P>
                        <P type="APPID">1007</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_QV1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.22</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_HV_QV2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.23</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-08</P>
                        <P type="APPID">1008</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_QV2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.24</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_LV_QT1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.25</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-09</P>
                        <P type="APPID">1009</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
                <GSE ldInst="PROT" cbName="GoTrip">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-0A</P>
                        <P type="APPID">100A</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_QT1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.26</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_LV_QT2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.27</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-0B</P>
                        <P type="APPID">100B</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
                <GSE ldInst="PROT" cbName="GoTrip">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-0C</P>
                        <P type="APPID">100C</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_QT2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.28</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_LV_K1_SV1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.29</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-0D</P>
                        <P type="APPID">100D</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
                <GSE ldInst="PROT" cbName="GoTrip">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-0E</P>
                        <P type="APPID">100E</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K1_SV1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.30</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_LV_K1_F1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.31</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-0F</P>
                        <P type="APPID">100F</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
                <GSE ldInst="PROT" cbName="GoTrip">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-10</P>
                        <P type="APPID">1010</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K1_F1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.32</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_LV_K1_IN1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.33</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-11</P>
                        <P type="APPID">1011</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K1_TN1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.34</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_LV_K1_F2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.35</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-12</P>
                        <P type="APPID">1012</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
                <GSE ldInst="PROT" cbName="GoTrip">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-13</P>
                        <P type="APPID">1013</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K1_F2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.36</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_LV_K1_R1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.37</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-14</P>
                        <P type="APPID">1014</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="IED_LV_K2_SD1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.38</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-15</P>
                        <P type="APPID">1015</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="IED_LV_K2_F1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.39</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-16</P>
                        <P type="APPID">1016</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
                <GSE ldInst="PROT" cbName="GoTrip">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-17</P>
                        <P type="APPID">1017</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K2_F1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.40</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_LV_K2_IN1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.41</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-18</P>
                        <P type="APPID">1018</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K2_TN1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.42</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_LV_K2_F2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.43</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-19</P>
                        <P type="APPID">1019</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
                <GSE ldInst="PROT" cbName="GoTrip">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-1A</P>
                        <P type="APPID">101A</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K2_F2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.44</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
            </ConnectedAP>
            <ConnectedAP iedName="IED_LV_K2_R1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.45</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="CTRL" cbName="GoStatus">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-1B</P>
                        <P type="APPID">101B</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="IED_T1" apName="S1">
                <Address>
                    <P type="IP">192.168.1.46</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="PROT" cbName="GoTrip">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-1C</P>
                        <P type="APPID">101C</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
            <ConnectedAP iedName="IED_T2" apName="S1">
                <Address>
                    <P type="IP">192.168.1.47</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.1.1</P>
                </Address>
                <GSE ldInst="PROT" cbName="GoTrip">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-01-10-1D</P>
                        <P type="APPID">101D</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                    <MinTime unit="s" multiplier="m">4</MinTime>
                    <MaxTime unit="s" multiplier="m">1000</MaxTime>
                </GSE>
            </ConnectedAP>
        </SubNetwork>
        <SubNetwork name="ProcessBus" type="IEC-61850-9-2">
            <ConnectedAP iedName="MU_HV_Q1" apName="P1">
                <Address>
                    <P type="IP">192.168.2.11</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-01</P>
                        <P type="APPID">4001</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_Q2" apName="P1">
                <Address>
                    <P type="IP">192.168.2.12</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-02</P>
                        <P type="APPID">4002</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_QT1" apName="P1">
                <Address>
                    <P type="IP">192.168.2.13</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-03</P>
                        <P type="APPID">4003</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_QT2" apName="P1">
                <Address>
                    <P type="IP">192.168.2.14</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-04</P>
                        <P type="APPID">4004</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_QC" apName="P1">
                <Address>
                    <P type="IP">192.168.2.15</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-05</P>
                        <P type="APPID">4005</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_QV1" apName="P1">
                <Address>
                    <P type="IP">192.168.2.16</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-06</P>
                        <P type="APPID">4006</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_HV_QV2" apName="P1">
                <Address>
                    <P type="IP">192.168.2.17</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-07</P>
                        <P type="APPID">4007</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_QT1" apName="P1">
                <Address>
                    <P type="IP">192.168.2.18</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-08</P>
                        <P type="APPID">4008</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_QT2" apName="P1">
                <Address>
                    <P type="IP">192.168.2.19</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-09</P>
                        <P type="APPID">4009</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K1_SV1" apName="P1">
                <Address>
                    <P type="IP">192.168.2.20</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-0A</P>
                        <P type="APPID">400A</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K1_F1" apName="P1">
                <Address>
                    <P type="IP">192.168.2.21</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-0B</P>
                        <P type="APPID">400B</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K1_TN1" apName="P1">
                <Address>
                    <P type="IP">192.168.2.22</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-0C</P>
                        <P type="APPID">400C</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K1_F2" apName="P1">
                <Address>
                    <P type="IP">192.168.2.23</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-0D</P>
                        <P type="APPID">400D</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K2_F1" apName="P1">
                <Address>
                    <P type="IP">192.168.2.24</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-0E</P>
                        <P type="APPID">400E</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K2_TN1" apName="P1">
                <Address>
                    <P type="IP">192.168.2.25</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-0F</P>
                        <P type="APPID">400F</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
            <ConnectedAP iedName="MU_LV_K2_F2" apName="P1">
                <Address>
                    <P type="IP">192.168.2.26</P>
                    <P type="IP-SUBNET">255.255.255.0</P>
                    <P type="IP-GATEWAY">192.168.2.1</P>
                </Address>
                <SMV ldInst="MEAS" cbName="MSVCB01">
                    <Address>
                        <P type="MAC-Address">01-0C-CD-04-40-10</P>
                        <P type="APPID">4010</P>
                        <P type="VLAN-ID">000</P>
                        <P type="VLAN-PRIORITY">4</P>
                    </Address>
                </SMV>
            </ConnectedAP>
        </SubNetwork>
    </Communication>
    <IED name="IED_HV_Q1" desc="Bay controller Q1 (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaCls" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="IED_HV_QC" ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" serviceType="GOOSE" desc="HV bus coupler position for interlocking"/>
                        </Inputs>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_HV_Q1/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XSWI" inst="1" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="1" lnType="LT_CILO"/>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                    <LN prefix="" lnClass="XSWI" inst="2" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="2" lnType="LT_CILO"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_HV_Q1" desc="Merging Unit Q1 (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="MeasurementReportDS">
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
                        </DataSet>
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                        </DataSet>
                        <ReportControl name="MeasRpt" datSet="MeasurementReportDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_HV_Q1/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="" lnClass="MMXU" inst="1" lnType="LT_MMXU"/>
                    <LN prefix="A" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="B" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="C" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_HV_Q2" desc="Bay controller Q2 (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaCls" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="IED_HV_QC" ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" serviceType="GOOSE" desc="HV bus coupler position for interlocking"/>
                        </Inputs>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_HV_Q2/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XSWI" inst="1" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="1" lnType="LT_CILO"/>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                    <LN prefix="" lnClass="XSWI" inst="2" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="2" lnType="LT_CILO"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_HV_Q2" desc="Merging Unit Q2 (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="MeasurementReportDS">
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
                        </DataSet>
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                        </DataSet>
                        <ReportControl name="MeasRpt" datSet="MeasurementReportDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_HV_Q2/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="" lnClass="MMXU" inst="1" lnType="LT_MMXU"/>
                    <LN prefix="A" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="B" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="C" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_HV_QT1" desc="Bay controller QT1 (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaCls" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="IED_T1" ldInst="PROT" lnClass="PTRC" lnInst="1" doName="Tr" daName="general" serviceType="GOOSE" desc="HV circuit breaker trip from T1 protection"/>
                            <ExtRef iedName="IED_HV_QC" ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" serviceType="GOOSE" desc="HV bus coupler position for interlocking"/>
                        </Inputs>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_HV_QT1/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XSWI" inst="1" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="1" lnType="LT_CILO"/>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                    <LN prefix="" lnClass="XSWI" inst="2" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="2" lnType="LT_CILO"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_HV_QT1" desc="Merging Unit QT1 (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="MeasurementReportDS">
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
                        </DataSet>
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                        </DataSet>
                        <ReportControl name="MeasRpt" datSet="MeasurementReportDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_HV_QT1/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="" lnClass="MMXU" inst="1" lnType="LT_MMXU"/>
                    <LN prefix="A" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="B" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="C" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_HV_QT2" desc="Bay controller QT2 (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaCls" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="IED_T2" ldInst="PROT" lnClass="PTRC" lnInst="1" doName="Tr" daName="general" serviceType="GOOSE" desc="HV circuit breaker trip from T2 protection"/>
                            <ExtRef iedName="IED_HV_QC" ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" serviceType="GOOSE" desc="HV bus coupler position for interlocking"/>
                        </Inputs>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_HV_QT2/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XSWI" inst="1" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="1" lnType="LT_CILO"/>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                    <LN prefix="" lnClass="XSWI" inst="2" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="2" lnType="LT_CILO"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_HV_QT2" desc="Merging Unit QT2 (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="MeasurementReportDS">
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
                        </DataSet>
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                        </DataSet>
                        <ReportControl name="MeasRpt" datSet="MeasurementReportDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_HV_QT2/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="" lnClass="MMXU" inst="1" lnType="LT_MMXU"/>
                    <LN prefix="A" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="B" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="C" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_HV_QC" desc="Bay controller QC (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="2" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="2" doName="EnaCls" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_HV_QC/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XSWI" inst="1" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="1" lnType="LT_CILO"/>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                    <LN prefix="" lnClass="XSWI" inst="2" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="2" lnType="LT_CILO"/>
                </LDevice>
                <LDevice inst="PROT">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="ProtDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <DataSet name="TripDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <ReportControl name="ProtRpt" datSet="ProtDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="MU_HV_QC" ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase A current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_HV_QC" ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase B current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_HV_QC" ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase C current from CT (Sampled Values)"/>
                        </Inputs>
                        <GSEControl name="GoTrip" datSet="TripDS" confRev="1" type="GOOSE" appID="IED_HV_QC/GoTrip"/>
                    </LN0>
                    <LN prefix="" lnClass="PTOC" inst="1" lnType="LT_PTOC" desc="Bus coupler overcurrent"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_HV_QC" desc="Merging Unit QC (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="MeasurementReportDS">
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
                        </DataSet>
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                        </DataSet>
                        <ReportControl name="MeasRpt" datSet="MeasurementReportDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_HV_QC/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="" lnClass="MMXU" inst="1" lnType="LT_MMXU"/>
                    <LN prefix="A" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="B" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="C" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_HV_QV1" desc="Bay controller QV1 (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="IED_HV_QC" ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" serviceType="GOOSE" desc="HV bus coupler position for interlocking"/>
                        </Inputs>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_HV_QV1/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XSWI" inst="1" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="1" lnType="LT_CILO"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_HV_QV1" desc="Merging Unit QV1 (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX"/>
                        </DataSet>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_HV_QV1/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="A" lnClass="TVTR" inst="1" lnType="LT_TVTR"/>
                    <LN prefix="B" lnClass="TVTR" inst="1" lnType="LT_TVTR"/>
                    <LN prefix="C" lnClass="TVTR" inst="1" lnType="LT_TVTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_HV_QV2" desc="Bay controller QV2 (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="IED_HV_QC" ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" serviceType="GOOSE" desc="HV bus coupler position for interlocking"/>
                        </Inputs>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_HV_QV2/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XSWI" inst="1" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="1" lnType="LT_CILO"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_HV_QV2" desc="Merging Unit QV2 (HV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX"/>
                        </DataSet>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_HV_QV2/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="A" lnClass="TVTR" inst="1" lnType="LT_TVTR"/>
                    <LN prefix="B" lnClass="TVTR" inst="1" lnType="LT_TVTR"/>
                    <LN prefix="C" lnClass="TVTR" inst="1" lnType="LT_TVTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_LV_QT1" desc="Bay controller QT1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="IED_T1" ldInst="PROT" lnClass="PTRC" lnInst="1" doName="Tr" daName="general" serviceType="GOOSE" desc="LV incomer trip from T1 protection"/>
                        </Inputs>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_LV_QT1/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                </LDevice>
                <LDevice inst="PROT">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="ProtDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <DataSet name="TripDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <ReportControl name="ProtRpt" datSet="ProtDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="MU_LV_QT1" ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase A current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_QT1" ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase B current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_QT1" ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase C current from CT (Sampled Values)"/>
                        </Inputs>
                        <GSEControl name="GoTrip" datSet="TripDS" confRev="1" type="GOOSE" appID="IED_LV_QT1/GoTrip"/>
                    </LN0>
                    <LN prefix="" lnClass="PTOC" inst="1" lnType="LT_PTOC" desc="LV incomer overcurrent"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_LV_QT1" desc="Merging Unit QT1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="MeasurementReportDS">
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
                        </DataSet>
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                        </DataSet>
                        <ReportControl name="MeasRpt" datSet="MeasurementReportDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_LV_QT1/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="" lnClass="MMXU" inst="1" lnType="LT_MMXU"/>
                    <LN prefix="A" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="B" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="C" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_LV_QT2" desc="Bay controller QT2 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="IED_T2" ldInst="PROT" lnClass="PTRC" lnInst="1" doName="Tr" daName="general" serviceType="GOOSE" desc="LV incomer trip from T2 protection"/>
                        </Inputs>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_LV_QT2/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                </LDevice>
                <LDevice inst="PROT">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="ProtDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <DataSet name="TripDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <ReportControl name="ProtRpt" datSet="ProtDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="MU_LV_QT2" ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase A current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_QT2" ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase B current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_QT2" ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase C current from CT (Sampled Values)"/>
                        </Inputs>
                        <GSEControl name="GoTrip" datSet="TripDS" confRev="1" type="GOOSE" appID="IED_LV_QT2/GoTrip"/>
                    </LN0>
                    <LN prefix="" lnClass="PTOC" inst="1" lnType="LT_PTOC" desc="LV incomer overcurrent"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_LV_QT2" desc="Merging Unit QT2 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="MeasurementReportDS">
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
                        </DataSet>
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                        </DataSet>
                        <ReportControl name="MeasRpt" datSet="MeasurementReportDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_LV_QT2/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="" lnClass="MMXU" inst="1" lnType="LT_MMXU"/>
                    <LN prefix="A" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="B" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="C" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_LV_K1_SV1" desc="Bay controller K1_SV1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_LV_K1_SV1/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                </LDevice>
                <LDevice inst="PROT">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="ProtDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <DataSet name="TripDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <ReportControl name="ProtRpt" datSet="ProtDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="MU_LV_K1_SV1" ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase A current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_K1_SV1" ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase B current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_K1_SV1" ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase C current from CT (Sampled Values)"/>
                        </Inputs>
                        <GSEControl name="GoTrip" datSet="TripDS" confRev="1" type="GOOSE" appID="IED_LV_K1_SV1/GoTrip"/>
                    </LN0>
                    <LN prefix="" lnClass="PTOC" inst="1" lnType="LT_PTOC" desc="Bus coupler overcurrent"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_LV_K1_SV1" desc="Merging Unit K1_SV1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="MeasurementReportDS">
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
                        </DataSet>
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                        </DataSet>
                        <ReportControl name="MeasRpt" datSet="MeasurementReportDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_LV_K1_SV1/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="" lnClass="MMXU" inst="1" lnType="LT_MMXU"/>
                    <LN prefix="A" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="B" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="C" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_LV_K1_F1" desc="Bay controller K1_F1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_LV_K1_F1/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                </LDevice>
                <LDevice inst="PROT">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="ProtDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <DataSet name="TripDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <ReportControl name="ProtRpt" datSet="ProtDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="MU_LV_K1_F1" ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase A current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_K1_F1" ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase B current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_K1_F1" ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase C current from CT (Sampled Values)"/>
                        </Inputs>
                        <GSEControl name="GoTrip" datSet="TripDS" confRev="1" type="GOOSE" appID="IED_LV_K1_F1/GoTrip"/>
                    </LN0>
                    <LN prefix="" lnClass="PTOC" inst="1" lnType="LT_PTOC" desc="Feeder overcurrent"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_LV_K1_F1" desc="Merging Unit K1_F1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="MeasurementReportDS">
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
                        </DataSet>
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                        </DataSet>
                        <ReportControl name="MeasRpt" datSet="MeasurementReportDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_LV_K1_F1/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="" lnClass="MMXU" inst="1" lnType="LT_MMXU"/>
                    <LN prefix="A" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="B" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="C" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_LV_K1_IN1" desc="Bay controller K1_IN1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_LV_K1_IN1/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_LV_K1_TN1" desc="Merging Unit K1_TN1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX"/>
                        </DataSet>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_LV_K1_TN1/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="A" lnClass="TVTR" inst="1" lnType="LT_TVTR"/>
                    <LN prefix="B" lnClass="TVTR" inst="1" lnType="LT_TVTR"/>
                    <LN prefix="C" lnClass="TVTR" inst="1" lnType="LT_TVTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_LV_K1_F2" desc="Bay controller K1_F2 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_LV_K1_F2/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                </LDevice>
                <LDevice inst="PROT">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="ProtDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <DataSet name="TripDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <ReportControl name="ProtRpt" datSet="ProtDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="MU_LV_K1_F2" ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase A current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_K1_F2" ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase B current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_K1_F2" ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase C current from CT (Sampled Values)"/>
                        </Inputs>
                        <GSEControl name="GoTrip" datSet="TripDS" confRev="1" type="GOOSE" appID="IED_LV_K1_F2/GoTrip"/>
                    </LN0>
                    <LN prefix="" lnClass="PTOC" inst="1" lnType="LT_PTOC" desc="Feeder overcurrent"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_LV_K1_F2" desc="Merging Unit K1_F2 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="MeasurementReportDS">
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
                        </DataSet>
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                        </DataSet>
                        <ReportControl name="MeasRpt" datSet="MeasurementReportDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_LV_K1_F2/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="" lnClass="MMXU" inst="1" lnType="LT_MMXU"/>
                    <LN prefix="A" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="B" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="C" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_LV_K1_R1" desc="Bay controller K1_R1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_LV_K1_R1/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="IED_LV_K2_SD1" desc="Bay controller K2_SD1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XSWI" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaOpn" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CILO" lnInst="1" doName="EnaCls" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_LV_K2_SD1/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XSWI" inst="1" lnType="LT_XSWI"/>
                    <LN prefix="" lnClass="CILO" inst="1" lnType="LT_CILO"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="IED_LV_K2_F1" desc="Bay controller K2_F1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_LV_K2_F1/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                </LDevice>
                <LDevice inst="PROT">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="ProtDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <DataSet name="TripDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <ReportControl name="ProtRpt" datSet="ProtDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="MU_LV_K2_F1" ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase A current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_K2_F1" ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase B current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_K2_F1" ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase C current from CT (Sampled Values)"/>
                        </Inputs>
                        <GSEControl name="GoTrip" datSet="TripDS" confRev="1" type="GOOSE" appID="IED_LV_K2_F1/GoTrip"/>
                    </LN0>
                    <LN prefix="" lnClass="PTOC" inst="1" lnType="LT_PTOC" desc="Feeder overcurrent"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_LV_K2_F1" desc="Merging Unit K2_F1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="MeasurementReportDS">
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
                        </DataSet>
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                        </DataSet>
                        <ReportControl name="MeasRpt" datSet="MeasurementReportDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_LV_K2_F1/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="" lnClass="MMXU" inst="1" lnType="LT_MMXU"/>
                    <LN prefix="A" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="B" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="C" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_LV_K2_IN1" desc="Bay controller K2_IN1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_LV_K2_IN1/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_LV_K2_TN1" desc="Merging Unit K2_TN1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TVTR" lnInst="1" doName="Vol" fc="MX"/>
                        </DataSet>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_LV_K2_TN1/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="A" lnClass="TVTR" inst="1" lnType="LT_TVTR"/>
                    <LN prefix="B" lnClass="TVTR" inst="1" lnType="LT_TVTR"/>
                    <LN prefix="C" lnClass="TVTR" inst="1" lnType="LT_TVTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_LV_K2_F2" desc="Bay controller K2_F2 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_LV_K2_F2/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                </LDevice>
                <LDevice inst="PROT">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="ProtDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <DataSet name="TripDS">
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                        </DataSet>
                        <ReportControl name="ProtRpt" datSet="ProtDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="MU_LV_K2_F2" ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase A current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_K2_F2" ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase B current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_K2_F2" ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase C current from CT (Sampled Values)"/>
                        </Inputs>
                        <GSEControl name="GoTrip" datSet="TripDS" confRev="1" type="GOOSE" appID="IED_LV_K2_F2/GoTrip"/>
                    </LN0>
                    <LN prefix="" lnClass="PTOC" inst="1" lnType="LT_PTOC" desc="Feeder overcurrent"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="MU_LV_K2_F2" desc="Merging Unit K2_F2 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="MEAS">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="MeasurementReportDS">
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="A" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="PhV" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="W" fc="MX"/>
                            <FCDA ldInst="MEAS" lnClass="MMXU" lnInst="1" doName="Hz" fc="MX"/>
                        </DataSet>
                        <DataSet name="SampledValueDS">
                            <FCDA ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                            <FCDA ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" fc="MX"/>
                        </DataSet>
                        <ReportControl name="MeasRpt" datSet="MeasurementReportDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <SampledValueControl name="MSVCB01" datSet="SampledValueDS" confRev="1" smvID="MU_LV_K2_F2/MSVCB01" smpRate="4000" nofASDU="1">
                            <SmvOpts/>
                        </SampledValueControl>
                    </LN0>
                    <LN prefix="" lnClass="MMXU" inst="1" lnType="LT_MMXU"/>
                    <LN prefix="A" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="B" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                    <LN prefix="C" lnClass="TCTR" inst="1" lnType="LT_TCTR"/>
                </LDevice>
            </Server>
        </AccessPoint>
        <AccessPoint name="P1">
            <ServerAt apName="S1"/>
        </AccessPoint>
    </IED>
    <IED name="IED_LV_K2_R1" desc="Bay controller K2_R1 (LV)" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="StatusDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <DataSet name="IntlkDS">
                            <FCDA ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" fc="ST"/>
                            <FCDA ldInst="CTRL" lnClass="CSWI" lnInst="1" doName="Pos" fc="ST"/>
                        </DataSet>
                        <ReportControl name="StatusRpt" datSet="StatusDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <GSEControl name="GoStatus" datSet="IntlkDS" confRev="1" type="GOOSE" appID="IED_LV_K2_R1/GoStatus"/>
                    </LN0>
                    <LN prefix="" lnClass="XCBR" inst="1" lnType="LT_XCBR"/>
                    <LN prefix="" lnClass="CSWI" inst="1" lnType="LT_CSWI"/>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="IED_T1" desc="Transformer protection IED T1" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="PROT">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="ProtDS">
                            <FCDA ldInst="PROT" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PIOC" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PDIF" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PTTR" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="2" doName="Op" fc="ST"/>
                        </DataSet>
                        <DataSet name="TripDS">
                            <FCDA ldInst="PROT" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PIOC" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PDIF" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="2" doName="Op" fc="ST"/>
                        </DataSet>
                        <ReportControl name="ProtRpt" datSet="ProtDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="IED_HV_QT1" ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" serviceType="GOOSE" desc="HV circuit breaker position, T1"/>
                            <ExtRef iedName="IED_LV_QT1" ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" serviceType="GOOSE" desc="LV incomer position, T1"/>
                            <ExtRef iedName="MU_HV_QT1" ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase A current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_HV_QT1" ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase B current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_HV_QT1" ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase C current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_QT1" ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase A current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_QT1" ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase B current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_QT1" ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase C current from CT (Sampled Values)"/>
                        </Inputs>
                        <GSEControl name="GoTrip" datSet="TripDS" confRev="1" type="GOOSE" appID="IED_T1/GoTrip"/>
                    </LN0>
                    <LN prefix="" lnClass="PTRC" inst="1" lnType="LT_PTRC" desc="Transformer protection trip conditioning"/>
                    <LN prefix="" lnClass="PTOC" inst="1" lnType="LT_PTOC" desc="ANSI 51 МТЗ (ВН) Ipickup=955A t=1.5s">
                        <DOI name="StrVal">
                            <SDI name="setMag">
                                <DAI name="f">
                                    <Val>955</Val>
                                </DAI>
                            </SDI>
                            <SDI name="units">
                                <DAI name="SIUnit"><Val>A</Val></DAI>
                            </SDI>
                            <SDI name="minVal">
                                <DAI name="f"><Val>50</Val></DAI>
                            </SDI>
                            <SDI name="maxVal">
                                <DAI name="f"><Val>5000</Val></DAI>
                            </SDI>
                            <SDI name="stepSize">
                                <DAI name="f"><Val>1</Val></DAI>
                            </SDI>
                        </DOI>
                        <DOI name="OpDlTmms">
                            <DAI name="setVal">
                                <Val>1500</Val>
                            </DAI>
                        </DOI>
                    </LN>
                    <LN prefix="" lnClass="PIOC" inst="1" lnType="LT_PIOC" desc="ANSI 50 Токовая отсечка (ВН) Ipickup=4044A t=0.0s">
                        <DOI name="StrVal">
                            <SDI name="setMag">
                                <DAI name="f">
                                    <Val>4044</Val>
                                </DAI>
                            </SDI>
                        </DOI>
                        <DOI name="OpDlTmms">
                            <DAI name="setVal">
                                <Val>0</Val>
                            </DAI>
                        </DOI>
                    </LN>
                    <LN prefix="" lnClass="PDIF" inst="1" lnType="LT_PDIF" desc="ANSI 87T Дифзащита (ВН/НН) Ipickup=124A t=0.0s">
                        <DOI name="StrVal">
                            <SDI name="setMag">
                                <DAI name="f">
                                    <Val>124</Val>
                                </DAI>
                            </SDI>
                        </DOI>
                        <DOI name="OpDlTmms">
                            <DAI name="setVal">
                                <Val>0</Val>
                            </DAI>
                        </DOI>
                    </LN>
                    <LN prefix="" lnClass="PTTR" inst="1" lnType="LT_PTTR" desc="ANSI 49 Защита от перегрузки (ВН) Ipickup=412A">
                        <DOI name="StrVal">
                            <SDI name="setMag">
                                <DAI name="f">
                                    <Val>412</Val>
                                </DAI>
                            </SDI>
                        </DOI>
                    </LN>
                    <LN prefix="" lnClass="PTOC" inst="2" lnType="LT_PTOC" desc="ANSI 51 МТЗ ввода/секц. НН (НН) Ipickup=1671A t=1.0s">
                        <DOI name="StrVal">
                            <SDI name="setMag">
                                <DAI name="f">
                                    <Val>1671</Val>
                                </DAI>
                            </SDI>
                            <SDI name="units">
                                <DAI name="SIUnit"><Val>A</Val></DAI>
                            </SDI>
                            <SDI name="minVal">
                                <DAI name="f"><Val>50</Val></DAI>
                            </SDI>
                            <SDI name="maxVal">
                                <DAI name="f"><Val>5000</Val></DAI>
                            </SDI>
                            <SDI name="stepSize">
                                <DAI name="f"><Val>1</Val></DAI>
                            </SDI>
                        </DOI>
                        <DOI name="OpDlTmms">
                            <DAI name="setVal">
                                <Val>1000</Val>
                            </DAI>
                        </DOI>
                    </LN>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <IED name="IED_T2" desc="Transformer protection IED T2" manufacturer="PowerplantGenerator" configVersion="1">
        <Services>
            <GetDirectory/>
            <GetDataObjectDefinition/>
            <DataObjectDirectory/>
            <GetDataSetValue/>
            <DataSetDirectory/>
            <ConfDataSet max="8"/>
            <ReadWrite/>
            <ConfReportControl max="8"/>
            <GetCBValues/>
            <ReportSettings/>
            <GSESettings/>
            <GOOSE max="8"/>
        </Services>
        <AccessPoint name="S1">
            <Server>
                <Authentication/>
                <LDevice inst="PROT">
                    <LN0 lnClass="LLN0" inst="" lnType="LT_LLN0">
                        <DataSet name="ProtDS">
                            <FCDA ldInst="PROT" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PIOC" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PDIF" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PTTR" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="2" doName="Op" fc="ST"/>
                        </DataSet>
                        <DataSet name="TripDS">
                            <FCDA ldInst="PROT" lnClass="PTRC" lnInst="1" doName="Tr" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PIOC" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PDIF" lnInst="1" doName="Op" fc="ST"/>
                            <FCDA ldInst="PROT" lnClass="PTOC" lnInst="2" doName="Op" fc="ST"/>
                        </DataSet>
                        <ReportControl name="ProtRpt" datSet="ProtDS" confRev="1" buffered="true">
                            <TrgOps dchg="true" qchg="true"/>
                            <OptFields seqNum="true" timeStamp="true" dataSet="true" reasonCode="true" dataRef="true"/>
                            <RptEnabled max="8"/>
                        </ReportControl>
                        <DOI name="NamPlt">
                            <DAI name="vendor">
                                <Val>PowerplantGenerator</Val>
                            </DAI>
                            <DAI name="swRev">
                                <Val>1</Val>
                            </DAI>
                            <DAI name="configRev">
                                <Val>1</Val>
                            </DAI>
                        </DOI>
                        <Inputs>
                            <ExtRef iedName="IED_HV_QT2" ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" serviceType="GOOSE" desc="HV circuit breaker position, T2"/>
                            <ExtRef iedName="IED_LV_QT2" ldInst="CTRL" lnClass="XCBR" lnInst="1" doName="Pos" daName="stVal" serviceType="GOOSE" desc="LV incomer position, T2"/>
                            <ExtRef iedName="MU_HV_QT2" ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase A current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_HV_QT2" ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase B current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_HV_QT2" ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase C current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_QT2" ldInst="MEAS" prefix="A" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase A current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_QT2" ldInst="MEAS" prefix="B" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase B current from CT (Sampled Values)"/>
                            <ExtRef iedName="MU_LV_QT2" ldInst="MEAS" prefix="C" lnClass="TCTR" lnInst="1" doName="Amp" serviceType="SMV" desc="Phase C current from CT (Sampled Values)"/>
                        </Inputs>
                        <GSEControl name="GoTrip" datSet="TripDS" confRev="1" type="GOOSE" appID="IED_T2/GoTrip"/>
                    </LN0>
                    <LN prefix="" lnClass="PTRC" inst="1" lnType="LT_PTRC" desc="Transformer protection trip conditioning"/>
                    <LN prefix="" lnClass="PTOC" inst="1" lnType="LT_PTOC" desc="ANSI 51 МТЗ (ВН) Ipickup=955A t=1.5s">
                        <DOI name="StrVal">
                            <SDI name="setMag">
                                <DAI name="f">
                                    <Val>955</Val>
                                </DAI>
                            </SDI>
                        </DOI>
                        <DOI name="OpDlTmms">
                            <DAI name="setVal">
                                <Val>1500</Val>
                            </DAI>
                        </DOI>
                    </LN>
                    <LN prefix="" lnClass="PIOC" inst="1" lnType="LT_PIOC" desc="ANSI 50 Токовая отсечка (ВН) Ipickup=4044A t=0.0s">
                        <DOI name="StrVal">
                            <SDI name="setMag">
                                <DAI name="f">
                                    <Val>4044</Val>
                                </DAI>
                            </SDI>
                        </DOI>
                        <DOI name="OpDlTmms">
                            <DAI name="setVal">
                                <Val>0</Val>
                            </DAI>
                        </DOI>
                    </LN>
                    <LN prefix="" lnClass="PDIF" inst="1" lnType="LT_PDIF" desc="ANSI 87T Дифзащита (ВН/НН) Ipickup=124A t=0.0s">
                        <DOI name="StrVal">
                            <SDI name="setMag">
                                <DAI name="f">
                                    <Val>124</Val>
                                </DAI>
                            </SDI>
                        </DOI>
                        <DOI name="OpDlTmms">
                            <DAI name="setVal">
                                <Val>0</Val>
                            </DAI>
                        </DOI>
                    </LN>
                    <LN prefix="" lnClass="PTTR" inst="1" lnType="LT_PTTR" desc="ANSI 49 Защита от перегрузки (ВН) Ipickup=412A">
                        <DOI name="StrVal">
                            <SDI name="setMag">
                                <DAI name="f">
                                    <Val>412</Val>
                                </DAI>
                            </SDI>
                        </DOI>
                    </LN>
                    <LN prefix="" lnClass="PTOC" inst="2" lnType="LT_PTOC" desc="ANSI 51 МТЗ ввода/секц. НН (НН) Ipickup=1671A t=1.0s">
                        <DOI name="StrVal">
                            <SDI name="setMag">
                                <DAI name="f">
                                    <Val>1671</Val>
                                </DAI>
                            </SDI>
                        </DOI>
                        <DOI name="OpDlTmms">
                            <DAI name="setVal">
                                <Val>1000</Val>
                            </DAI>
                        </DOI>
                    </LN>
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
    <DataTypeTemplates>
        <LNodeType id="LT_CILO" lnClass="CILO">
            <DO name="Beh" type="ENS"/>
            <DO name="EnaOpn" type="SPS"/>
            <DO name="EnaCls" type="SPS"/>
        </LNodeType>
        <LNodeType id="LT_CSWI" lnClass="CSWI">
            <DO name="Beh" type="ENS"/>
            <DO name="Health" type="ENS"/>
            <DO name="Mod" type="INC"/>
            <DO name="Pos" type="DPC"/>
        </LNodeType>
        <LNodeType id="LT_LLN0" lnClass="LLN0">
            <DO name="Mod" type="INC"/>
            <DO name="Beh" type="ENS"/>
            <DO name="Health" type="ENS"/>
            <DO name="NamPlt" type="LPL"/>
        </LNodeType>
        <LNodeType id="LT_MMXU" lnClass="MMXU">
            <DO name="Beh" type="ENS"/>
            <DO name="Health" type="ENS"/>
            <DO name="A" type="WYE"/>
            <DO name="PhV" type="WYE"/>
            <DO name="W" type="MV"/>
            <DO name="VAr" type="MV"/>
            <DO name="Hz" type="MV"/>
        </LNodeType>
        <LNodeType id="LT_PDIF" lnClass="PDIF">
            <DO name="Beh" type="ENS"/>
            <DO name="Health" type="ENS"/>
            <DO name="Str" type="ACD"/>
            <DO name="Op" type="ACT"/>
            <DO name="StrVal" type="ASG"/>
            <DO name="OpDlTmms" type="ING"/>
        </LNodeType>
        <LNodeType id="LT_PIOC" lnClass="PIOC">
            <DO name="Beh" type="ENS"/>
            <DO name="Health" type="ENS"/>
            <DO name="Str" type="ACD"/>
            <DO name="Op" type="ACT"/>
            <DO name="StrVal" type="ASG"/>
            <DO name="OpDlTmms" type="ING"/>
        </LNodeType>
        <LNodeType id="LT_PTOC" lnClass="PTOC">
            <DO name="Beh" type="ENS"/>
            <DO name="Health" type="ENS"/>
            <DO name="Str" type="ACD"/>
            <DO name="Op" type="ACT"/>
            <DO name="StrVal" type="ASG"/>
            <DO name="OpDlTmms" type="ING"/>
        </LNodeType>
        <LNodeType id="LT_PTRC" lnClass="PTRC">
            <DO name="Beh" type="ENS"/>
            <DO name="Health" type="ENS"/>
            <DO name="Tr" type="ACT"/>
            <DO name="Op" type="ACT"/>
        </LNodeType>
        <LNodeType id="LT_PTTR" lnClass="PTTR">
            <DO name="Beh" type="ENS"/>
            <DO name="Health" type="ENS"/>
            <DO name="Str" type="ACD"/>
            <DO name="Op" type="ACT"/>
            <DO name="StrVal" type="ASG"/>
            <DO name="OpDlTmms" type="ING"/>
        </LNodeType>
        <LNodeType id="LT_TCTR" lnClass="TCTR">
            <DO name="Beh" type="ENS"/>
            <DO name="Health" type="ENS"/>
            <DO name="Amp" type="MV"/>
        </LNodeType>
        <LNodeType id="LT_TVTR" lnClass="TVTR">
            <DO name="Beh" type="ENS"/>
            <DO name="Health" type="ENS"/>
            <DO name="Vol" type="MV"/>
        </LNodeType>
        <LNodeType id="LT_XCBR" lnClass="XCBR">
            <DO name="Beh" type="ENS"/>
            <DO name="Health" type="ENS"/>
            <DO name="Mod" type="INC"/>
            <DO name="Pos" type="DPC"/>
            <DO name="OpCnt" type="INS"/>
            <DO name="BlkOpn" type="SPS"/>
            <DO name="BlkCls" type="SPS"/>
        </LNodeType>
        <LNodeType id="LT_XSWI" lnClass="XSWI">
            <DO name="Beh" type="ENS"/>
            <DO name="Health" type="ENS"/>
            <DO name="Mod" type="INC"/>
            <DO name="Pos" type="DPC"/>
        </LNodeType>
        <DOType id="ENS" cdc="ENS">
            <DA name="stVal" bType="Enum" type="Beh" fc="ST"/>
            <DA name="q" bType="Quality" fc="ST"/>
            <DA name="t" bType="Timestamp" fc="ST"/>
        </DOType>
        <DOType id="INC" cdc="INC">
            <DA name="stVal" bType="Enum" type="Beh" fc="ST"/>
            <DA name="q" bType="Quality" fc="ST"/>
            <DA name="t" bType="Timestamp" fc="ST"/>
            <DA name="ctlVal" bType="Enum" type="Beh" fc="CO"/>
        </DOType>
        <DOType id="LPL" cdc="LPL">
            <DA name="d" bType="VisString255" fc="DC"/>
            <DA name="vendor" bType="VisString255" fc="DC"/>
            <DA name="swRev" bType="VisString255" fc="DC"/>
            <DA name="configRev" bType="VisString255" fc="DC"/>
        </DOType>
        <DOType id="DPC" cdc="DPC">
            <DA name="stVal" bType="Dbpos" fc="ST"/>
            <DA name="q" bType="Quality" fc="ST"/>
            <DA name="t" bType="Timestamp" fc="ST"/>
            <DA name="ctlVal" bType="BOOLEAN" fc="CO"/>
        </DOType>
        <DOType id="INS" cdc="INS">
            <DA name="stVal" bType="INT32" fc="ST"/>
            <DA name="q" bType="Quality" fc="ST"/>
            <DA name="t" bType="Timestamp" fc="ST"/>
        </DOType>
        <DOType id="SPS" cdc="SPS">
            <DA name="stVal" bType="BOOLEAN" fc="ST"/>
            <DA name="q" bType="Quality" fc="ST"/>
            <DA name="t" bType="Timestamp" fc="ST"/>
        </DOType>
        <DOType id="MV" cdc="MV">
            <DA name="mag" bType="Struct" type="AnalogueValue" fc="MX"/>
            <DA name="q" bType="Quality" fc="MX"/>
            <DA name="t" bType="Timestamp" fc="MX"/>
        </DOType>
        <DOType id="ACD" cdc="ACD">
            <DA name="general" bType="BOOLEAN" fc="ST"/>
            <DA name="q" bType="Quality" fc="ST"/>
            <DA name="t" bType="Timestamp" fc="ST"/>
        </DOType>
        <DOType id="ACT" cdc="ACT">
            <DA name="general" bType="BOOLEAN" fc="ST"/>
            <DA name="q" bType="Quality" fc="ST"/>
            <DA name="t" bType="Timestamp" fc="ST"/>
        </DOType>
        <DOType id="ASG" cdc="ASG">
            <DA name="setMag" bType="Struct" type="AnalogueValue" fc="SP"/>
             <DA name="units" bType="Struct" type="Unit" fc="CF"/>
             <DA name="minVal" bType="Struct" type="AnalogueValue" fc="CF"/>
             <DA name="maxVal" bType="Struct" type="AnalogueValue" fc="CF"/>
             <DA name="stepSize" bType="Struct" type="AnalogueValue" fc="CF"/>
        </DOType>
        <DOType id="ING" cdc="ING">
            <DA name="setVal" bType="INT32" fc="SP"/>
        </DOType>
        <DOType id="WYE" cdc="WYE">
            <SDO name="phsA" type="CMV"/>
            <SDO name="phsB" type="CMV"/>
            <SDO name="phsC" type="CMV"/>
        </DOType>
        <DOType id="CMV" cdc="CMV">
            <DA name="cVal" bType="Struct" type="Vector" fc="MX"/>
            <DA name="q" bType="Quality" fc="MX"/>
            <DA name="t" bType="Timestamp" fc="MX"/>
        </DOType>
        <DAType id="Vector">
            <BDA name="mag" bType="Struct" type="AnalogueValue"/>
            <BDA name="ang" bType="Struct" type="AnalogueValue"/>
        </DAType>
        <DAType id="AnalogueValue">
            <BDA name="f" bType="FLOAT32"/>
        </DAType>
        <DAType id="Unit">
            <BDA name="SIUnit" bType="Enum" type="SIUnit"/>
            <BDA name="multiplier" bType="Enum" type="multiplier"/>
        </DAType>
        <EnumType id="SIUnit">
            <EnumVal ord="1">none</EnumVal>
            <EnumVal ord="4">s</EnumVal>
            <EnumVal ord="5">A</EnumVal>
            <EnumVal ord="29">V</EnumVal>
            <EnumVal ord="33">Hz</EnumVal>
        </EnumType>
        <EnumType id="multiplier">
            <EnumVal ord="-3">m</EnumVal>
            <EnumVal ord="0"></EnumVal>
            <EnumVal ord="3">k</EnumVal>
        </EnumType>
        <EnumType id="Beh">
            <EnumVal ord="1">on</EnumVal>
            <EnumVal ord="2">blocked</EnumVal>
            <EnumVal ord="3">test</EnumVal>
            <EnumVal ord="4">test/blocked</EnumVal>
            <EnumVal ord="5">off</EnumVal>
        </EnumType>
    </DataTypeTemplates>
</SCL>
