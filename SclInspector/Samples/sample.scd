<SCL xmlns="http://www.iec.ch/61850/2003/SCL">
    <IED name="IED1" manufacturer="ABB">
        <AccessPoint name="AP1">
            <Server>
                <LDevice inst="PROT">
                    <LN0 lnClass="LLN0" inst="" lnType="LLN0_Type" />
                    <LN prefix="" lnClass="PTOC" inst="1" lnType="PTOC_Type" />
                    <LN prefix="Ph" lnClass="PTOC" inst="2" lnType="PTOC_Type" />
                </LDevice>
                <LDevice inst="CTRL">
                    <LN0 lnClass="LLN0" inst="" lnType="LLN0_Type" />
                    <LN lnClass="XCBR" inst="1" lnType="XCBR_Type" />
                </LDevice>
            </Server>
        </AccessPoint>
    </IED>
</SCL>