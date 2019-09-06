Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF693AC271
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Sep 2019 00:22:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 817952206D;
	Fri,  6 Sep 2019 22:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TpkcQ8MMMkM2; Fri,  6 Sep 2019 22:22:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D9A302152A;
	Fri,  6 Sep 2019 22:22:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F0F71BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 22:22:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A05086BA9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 22:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K_Ol93oodaix for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2019 22:22:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4723A86B8D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 22:22:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 15:22:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; 
 d="p7s'?scan'208";a="174413785"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga007.jf.intel.com with ESMTP; 06 Sep 2019 15:22:19 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 6 Sep 2019 15:22:18 -0700
Received: from orsmsx116.amr.corp.intel.com ([169.254.7.63]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.78]) with mapi id 14.03.0439.000;
 Fri, 6 Sep 2019 15:22:18 -0700
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Stillwell Jr, Paul M"
 <paul.m.stillwell.jr@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH S29 1/6] ice: send driver version to
 firmware
Thread-Index: AQHVZEdbIYOb6wzw60KsJsfTLBxMl6cesLyAgADhIYCAAB4AAA==
Date: Fri, 6 Sep 2019 22:22:18 +0000
Message-ID: <6c043408f513ea05b1c4e6791c837450f0ed6477.camel@intel.com>
References: <20190905153956.53086-1-anthony.l.nguyen@intel.com>
 <b0857265-206a-c563-4b4a-d16a2c12e058@molgen.mpg.de>
 <0643563d15597e884da8d287c932abda6e27e70f.camel@intel.com>
In-Reply-To: <0643563d15597e884da8d287c932abda6e27e70f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.166.244.155]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S29 1/6] ice: send driver version to
 firmware
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: multipart/mixed; boundary="===============0350513108871849384=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============0350513108871849384==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-/EZXiSB3jTYxW4/7W0DD"

--=-/EZXiSB3jTYxW4/7W0DD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-09-06 at 13:34 -0700, Jeff Kirsher wrote:
> On Fri, 2019-09-06 at 09:09 +0200, Paul Menzel wrote:
> > Dear Tony, dear Paul,
> >=20
> >=20
> > On 05.09.19 17:39, Tony Nguyen wrote:
> > > From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> > >=20
> > > The driver is required to send a version to the firmware
> > > to indicate that the driver is up. If the driver doesn't
> > > do this the firmware doesn't behave properly.
> >=20
> > In what datasheet is that documented?
>=20
> It is documented in the datasheet, but the datasheet has not been
> made
> available yet because the device(s) have not been released yet.  Once
> the device(s) get released, a datasheet should be made available
> shortly thereafter.
>=20
> >=20
> > What does =E2=80=9Cdoesn=E2=80=99t behave properly=E2=80=9D mean exactl=
y?
>=20
> What Paul and Tony were getting at that if the DDP pacakge is not
> loaded onto the NIC, not all the features that the NIC is capable of
> will be made available.  The sending of a version to the firmware is
> just one step that needs to occur to enable the loading of a DDP
> package.
>=20
> >=20
> > > Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com
> > > >
> > > Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> > > ---
> > >   drivers/net/ethernet/intel/ice/ice.h          |  1 +
> > >   .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 13 +++++++
> > >   drivers/net/ethernet/intel/ice/ice_common.c   | 37
> > > +++++++++++++++++++
> > >   drivers/net/ethernet/intel/ice/ice_common.h   |  3 ++
> > >   drivers/net/ethernet/intel/ice/ice_main.c     | 36
> > > +++++++++++++++++-
> > >   drivers/net/ethernet/intel/ice/ice_type.h     |  8 ++++
> > >   6 files changed, 97 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/drivers/net/ethernet/intel/ice/ice.h
> > > b/drivers/net/ethernet/intel/ice/ice.h
> > > index b36e1cf0e461..4cdedcebb163 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice.h
> > > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > > @@ -29,6 +29,7 @@
> > >   #include <linux/sctp.h>
> > >   #include <linux/ipv6.h>
> > >   #include <linux/if_bridge.h>
> > > +#include <linux/ctype.h>
> >=20
> > Is the alignment correct? (Or just my mailer messing up?)
>=20
> Yep, just your mailer screwed it up.  The code is aligned correctly
> in
> my tree.
>=20
> >=20
> > >   #include <linux/avf/virtchnl.h>
> > >   #include <net/ipv6.h>
> > >   #include "ice_devids.h"
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > > b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > > index 4da0cde9695b..9c9791788610 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > > +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > > @@ -33,6 +33,17 @@ struct ice_aqc_get_ver {
> > >   	u8 api_patch;
> > >   };
> > >  =20
> > > +/* Send driver version (indirect 0x0002) */
> > > +struct ice_aqc_driver_ver {
> > > +	u8 major_ver;
> > > +	u8 minor_ver;
> > > +	u8 build_ver;
> > > +	u8 subbuild_ver;
> > > +	u8 reserved[4];
> > > +	__le32 addr_high;
> > > +	__le32 addr_low;
> > > +};
> > > +
> > >   /* Queue Shutdown (direct 0x0003) */
> > >   struct ice_aqc_q_shutdown {
> > >   	u8 driver_unloading;
> > > @@ -1547,6 +1558,7 @@ struct ice_aq_desc {
> > >   		u8 raw[16];
> > >   		struct ice_aqc_generic generic;
> > >   		struct ice_aqc_get_ver get_ver;
> > > +		struct ice_aqc_driver_ver driver_ver;
> > >   		struct ice_aqc_q_shutdown q_shutdown;
> > >   		struct ice_aqc_req_res res_owner;
> > >   		struct ice_aqc_manage_mac_read mac_read;
> > > @@ -1618,6 +1630,7 @@ enum ice_aq_err {
> > >   enum ice_adminq_opc {
> > >   	/* AQ commands */
> > >   	ice_aqc_opc_get_ver				=3D 0x0001,
> > > +	ice_aqc_opc_driver_ver				=3D 0x0002,
> > >   	ice_aqc_opc_q_shutdown				=3D
> > > 0x0003,
> > >  =20
> > >   	/* resource ownership */
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> > > b/drivers/net/ethernet/intel/ice/ice_common.c
> > > index 8b2c46615834..db62cc748544 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_common.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> > > @@ -1258,6 +1258,43 @@ enum ice_status ice_aq_get_fw_ver(struct
> > > ice_hw *hw, struct ice_sq_cd *cd)
> > >   	return status;
> > >   }
> > >  =20
> > > +/**
> > > + * ice_aq_send_driver_ver
> > > + * @hw: pointer to the HW struct
> > > + * @dv: driver's major, minor version
> > > + * @cd: pointer to command details structure or NULL
> > > + *
> > > + * Send the driver version (0x0002) to the firmware
> > > + */
> > > +enum ice_status
> > > +ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver
> > > *dv,
> > > +		       struct ice_sq_cd *cd)
> > > +{
> > > +	struct ice_aqc_driver_ver *cmd;
> > > +	struct ice_aq_desc desc;
> > > +	u16 len;
> >=20
> > Just `unsigned int` or `size_t`?
>=20
> This change will be based on the current kernel interface that can
> get
> the length of ASCII chars, so yes, Tony will fix this up as well.
>=20

The len variable is provided to ice_aq_send_cmd() which takes a u16.=20
Since I couldn't find a suitable interface, I'd like to keep it that
way to match types. driver_string is an array of 32 so we are always
within the u16.

> >=20
> > > +
> > > +	cmd =3D &desc.params.driver_ver;
> > > +
> > > +	if (!dv)
> > > +		return ICE_ERR_PARAM;
> > > +
> > > +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_driver_ver);
> > > +
> > > +	desc.flags |=3D cpu_to_le16(ICE_AQ_FLAG_RD);
> > > +	cmd->major_ver =3D dv->major_ver;
> > > +	cmd->minor_ver =3D dv->minor_ver;
> > > +	cmd->build_ver =3D dv->build_ver;
> > > +	cmd->subbuild_ver =3D dv->subbuild_ver;
> > > +
> > > +	len =3D 0;
> > > +	while (len < sizeof(dv->driver_string) &&
> > > +	       isascii(dv->driver_string[len]) && dv-
> > > > driver_string[len])
> > >=20
> > > +		len++;
> >=20
> > Is there such a function for finding the length of ASCII
> > characters=20
> > already somewhere in Linux?
>=20
> Tony will look into this and use the kernel interface if there is.
>=20

I wasn't able to find anything suitable.  If you are aware of anything,
I'm open to making the change.

> >=20
> > > +
> > > +	return ice_aq_send_cmd(hw, &desc, dv->driver_string, len, cd);
> > > +}
> > > +
> > >   /**
> > >    * ice_aq_q_shutdown
> > >    * @hw: pointer to the HW struct
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_common.h
> > > b/drivers/net/ethernet/intel/ice/ice_common.h
> > > index e376d1eadba4..e9d77370a17c 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_common.h
> > > +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> > > @@ -71,6 +71,9 @@ ice_aq_send_cmd(struct ice_hw *hw, struct
> > > ice_aq_desc *desc,
> > >   		void *buf, u16 buf_size, struct ice_sq_cd *cd);
> > >   enum ice_status ice_aq_get_fw_ver(struct ice_hw *hw, struct
> > > ice_sq_cd *cd);
> > >  =20
> > > +enum ice_status
> > > +ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver
> > > *dv,
> > > +		       struct ice_sq_cd *cd);
> > >   enum ice_status
> > >   ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods,
> > > u8
> > > report_mode,
> > >   		    struct ice_aqc_get_phy_caps_data *caps,
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > > b/drivers/net/ethernet/intel/ice/ice_main.c
> > > index f8be9ada2447..ea55ec598dac 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > > @@ -9,7 +9,13 @@
> > >   #include "ice_lib.h"
> > >   #include "ice_dcb_lib.h"
> > >  =20
> > > -#define DRV_VERSION	"0.7.5-k"
> > > +#define DRV_VERSION_MAJOR 0
> > > +#define DRV_VERSION_MINOR 7
> > > +#define DRV_VERSION_BUILD 5
> > > +
> > > +#define DRV_VERSION	__stringify(DRV_VERSION_MAJOR) "." \
> > > +			__stringify(DRV_VERSION_MINOR) "." \
> > > +			__stringify(DRV_VERSION_BUILD) "-k"
> > >   #define DRV_SUMMARY	"Intel(R) Ethernet Connection E800
> > > Series Linux Driver"
> > >   const char ice_drv_ver[] =3D DRV_VERSION;
> > >   static const char ice_driver_string[] =3D DRV_SUMMARY;
> > > @@ -2459,6 +2465,25 @@ static void
> > > ice_verify_cacheline_size(struct
> > > ice_pf *pf)
> > >   			 ICE_CACHE_LINE_BYTES);
> > >   }
> > >  =20
> > > +/**
> > > + * ice_send_version - update firmware with driver version
> > > + * @pf: PF struct
> > > + *
> > > + * Returns ICE_SUCCESS on success, else error code
> > > + */
> > > +static enum ice_status ice_send_version(struct ice_pf *pf)
> > > +{
> > > +	struct ice_driver_ver dv;
> > > +
> > > +	dv.major_ver =3D DRV_VERSION_MAJOR;
> > > +	dv.minor_ver =3D DRV_VERSION_MINOR;
> > > +	dv.build_ver =3D DRV_VERSION_BUILD;
> > > +	dv.subbuild_ver =3D 0;
> > > +	strscpy((char *)dv.driver_string, DRV_VERSION,
> > > +		sizeof(dv.driver_string));
> > > +	return ice_aq_send_driver_ver(&pf->hw, &dv, NULL);
> > > +}
> > > +
> > >   /**
> > >    * ice_probe - Device initialization routine
> > >    * @pdev: PCI device information struct
> > > @@ -2612,6 +2637,15 @@ ice_probe(struct pci_dev *pdev, const
> > > struct
> > > pci_device_id __always_unused *ent)
> > >  =20
> > >   	clear_bit(__ICE_SERVICE_DIS, pf->state);
> > >  =20
> > > +	/* tell the firmware we are up */
> > > +	err =3D ice_send_version(pf);
> > > +	if (err) {
> > > +		dev_err(dev,
> > > +			"probe failed due to error sending driver
> > > version:%d\n",
> >=20
> > Space after colon? Maybe also add the driver version in the string?
>=20
> Tony will fix this up.
>=20
> >=20
> > > +			err);
> > > +		goto err_alloc_sw_unroll;
> > > +	}
> > > +
> > >   	/* since everything is good, start the service timer */
> > >   	mod_timer(&pf->serv_tmr, round_jiffies(jiffies + pf-
> > > > serv_tmr_period));
> > >=20
> > >  =20
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
> > > b/drivers/net/ethernet/intel/ice/ice_type.h
> > > index 4501d50a7dcc..a2676003275a 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_type.h
> > > +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> > > @@ -53,6 +53,14 @@ enum ice_aq_res_access_type {
> > >   	ICE_RES_WRITE
> > >   };
> > >  =20
> > > +struct ice_driver_ver {
> > > +	u8 major_ver;
> > > +	u8 minor_ver;
> > > +	u8 build_ver;
> > > +	u8 subbuild_ver;
> > > +	u8 driver_string[32];
> > > +};
> > > +
> > >   enum ice_fc_mode {
> > >   	ICE_FC_NONE =3D 0,
> > >   	ICE_FC_RX_PAUSE,
> > >=20
> >=20
> > Kind regards,
> >=20
> > Paul
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>=20
>=20

--=-/EZXiSB3jTYxW4/7W0DD
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIKeDCCBOsw
ggPToAMCAQICEFLpAsoR6ESdlGU4L6MaMLswDQYJKoZIhvcNAQEFBQAwbzELMAkGA1UEBhMCU0Ux
FDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5hbCBUVFAgTmV0
d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9vdDAeFw0xMzAzMTkwMDAwMDBa
Fw0yMDA1MzAxMDQ4MzhaMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2Fu
dGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRl
cm5hbCBCYXNpYyBJc3N1aW5nIENBIDRBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
4LDMgJ3YSVX6A9sE+jjH3b+F3Xa86z3LLKu/6WvjIdvUbxnoz2qnvl9UKQI3sE1zURQxrfgvtP0b
Pgt1uDwAfLc6H5eqnyi+7FrPsTGCR4gwDmq1WkTQgNDNXUgb71e9/6sfq+WfCDpi8ScaglyLCRp7
ph/V60cbitBvnZFelKCDBh332S6KG3bAdnNGB/vk86bwDlY6omDs6/RsfNwzQVwo/M3oPrux6y6z
yIoRulfkVENbM0/9RrzQOlyK4W5Vk4EEsfW2jlCV4W83QKqRccAKIUxw2q/HoHVPbbETrrLmE6RR
Z/+eWlkGWl+mtx42HOgOmX0BRdTRo9vH7yeBowIDAQABo4IBdzCCAXMwHwYDVR0jBBgwFoAUrb2Y
ejS0Jvf6xCZU7wO94CTLVBowHQYDVR0OBBYEFB5pKrTcKP5HGE4hCz+8rBEv8Jj1MA4GA1UdDwEB
/wQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMDYGA1UdJQQvMC0GCCsGAQUFBwMEBgorBgEEAYI3
CgMEBgorBgEEAYI3CgMMBgkrBgEEAYI3FQUwFwYDVR0gBBAwDjAMBgoqhkiG+E0BBQFpMEkGA1Ud
HwRCMEAwPqA8oDqGOGh0dHA6Ly9jcmwudHJ1c3QtcHJvdmlkZXIuY29tL0FkZFRydXN0RXh0ZXJu
YWxDQVJvb3QuY3JsMDoGCCsGAQUFBwEBBC4wLDAqBggrBgEFBQcwAYYeaHR0cDovL29jc3AudHJ1
c3QtcHJvdmlkZXIuY29tMDUGA1UdHgQuMCygKjALgQlpbnRlbC5jb20wG6AZBgorBgEEAYI3FAID
oAsMCWludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEAKcLNo/2So1Jnoi8G7W5Q6FSPq1fmyKW3
sSDf1amvyHkjEgd25n7MKRHGEmRxxoziPKpcmbfXYU+J0g560nCo5gPF78Wd7ZmzcmCcm1UFFfIx
fw6QA19bRpTC8bMMaSSEl8y39Pgwa+HENmoPZsM63DdZ6ziDnPqcSbcfYs8qd/m5d22rpXq5IGVU
tX6LX7R/hSSw/3sfATnBLgiJtilVyY7OGGmYKCAS2I04itvSS1WtecXTt9OZDyNbl7LtObBrgMLh
ZkpJW+pOR9f3h5VG2S5uKkA7Th9NC9EoScdwQCAIw+UWKbSQ0Isj2UFL7fHKvmqWKVTL98sRzvI3
seNC4DCCBYUwggRtoAMCAQICEzMAANCeT1o0/0ixB9sAAAAA0J4wDQYJKoZIhvcNAQEFBQAweTEL
MAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMR
SW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3Vpbmcg
Q0EgNEEwHhcNMTkwMzI5MTU0NzE3WhcNMjAwMzIzMTU0NzE3WjBHMRowGAYDVQQDExFOZ3V5ZW4s
IEFudGhvbnkgTDEpMCcGCSqGSIb3DQEJARYaYW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20wggEi
MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDy81mhhcuBbByCW5RZJFytv0GAZpJ9dx6AqnRr
HScZeEx+CUPuU/ysvqKA6ltdRC44OsQwLa0uU6XbQTwCIhKXC6Bldj+iwEupskbquMlPBNQgktjl
1kn7nzokatLRUdE8M+i/QV9j7OgaK2VhLJTVCWYZQ8lLEoy9fq7AEinbU3sRd1sqVR5Z/+tzB22u
0mzEyY4XCyjsxO9bnysLGh3pVHR58NbebJBEKNEPyMT4+715be97sw2KWJgIhm8EBjKuMvfbBPZu
UDSWFPJn1IonMumCuP0DYWGYiGS8dKTJMMh2WA2XVewXVn0JQTWQDpckAOkmi+A0RwpZzYJ0Y3gT
AgMBAAGjggI2MIICMjAdBgNVHQ4EFgQUydTU8+nnPeJE0ndEkV7rlhV6p30wHwYDVR0jBBgwFoAU
HmkqtNwo/kcYTiELP7ysES/wmPUwZQYDVR0fBF4wXDBaoFigVoZUaHR0cDovL3d3dy5pbnRlbC5j
b20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENB
JTIwNEEuY3JsMIGeBggrBgEFBQcBAQSBkTCBjjBpBggrBgEFBQcwAoZdaHR0cDovL3d3dy5pbnRl
bC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIw
SXNzdWluZyUyMENBJTIwNEEuY3J0MCEGCCsGAQUFBzABhhVodHRwOi8vb2NzcC5pbnRlbC5jb20w
CwYDVR0PBAQDAgeAMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OC
kcAJZ4HevTmV8EMCAWQCAQkwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwKQYJKwYB
BAGCNxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMMMFEGA1UdEQRKMEigKgYKKwYBBAGC
NxQCA6AcDBphbnRob255Lmwubmd1eWVuQGludGVsLmNvbYEaYW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20wDQYJKoZIhvcNAQEFBQADggEBALLF5b7PLd6kEWuQRkEq6eZpohKWRkfC9DyLiwS+HaeH
9euNcIqpV4xrMXM6mPqs3AHRb9ibqUPo3wQMtHph35RRsmY7ENk9FxF/W8Ov5ZVPyW0rFiRsnr1C
QVc08YqXp1dlbQGf8nvJn8ryCwjNpw0CTQcGHXrL/YnboLu8+R9RdBue/HIlP4g0pyAC/8YOie04
PVo4flU2CGMYilm1euQ6OV8WRA2CKgvRVp/DZEzTqnmDvy12efG74bmMzXAvDv2I53TR5ltDpx5X
B8uO1XlhOrj+Z3mSi85eblWWhJlq6+TQH/hZWSiyZH2lo3J49oHClTlk86GUEIUp/sf5v5cxggIX
MIICEwIBATCBkDB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDASBgNVBAcTC1NhbnRhIENs
YXJhMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwg
QmFzaWMgSXNzdWluZyBDQSA0QQITMwAA0J5PWjT/SLEH2wAAAADQnjAJBgUrDgMCGgUAoF0wGAYJ
KoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTkwOTA2MjIyMjE2WjAjBgkq
hkiG9w0BCQQxFgQUuBI6IXqnD7KulHKWcn8O+OQxzR8wDQYJKoZIhvcNAQEBBQAEggEABHGPDLlD
Hhw2Jtcl+7YGtHaYyX5cR/4ukie7GypRF9jXnAXJvhiuwo1nJcMstSbrOzR48GvmpxOdw62AOLPH
LTJ/i41Nmi+1o8Y73HFYo4Qu7p2pj2qZdAMr9SlIIp2SAEodkFmysrNMyeyOkevwOT4qLuyWzAlI
d3jxeOyFAvKKT8Fw8rAcFfbmb0YwDBzum88LRILPTyOXUMGS0t9BZw6vVZ2RDkE8F8YzENGt6yFj
MueOl1afsS/0P7uUmVZj4pF4uyjN1+5/jhPr7L4Q6zES9+7DDK6igecQnoT65n/VdymZ0g6aWauI
RbuIQY8zpHKV8lPTkly2TGhglTcBqQAAAAAAAA==


--=-/EZXiSB3jTYxW4/7W0DD--

--===============0350513108871849384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0350513108871849384==--
