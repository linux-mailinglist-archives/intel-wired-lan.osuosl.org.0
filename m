Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4456AC17C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2019 22:34:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C99F8829F;
	Fri,  6 Sep 2019 20:34:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ay1dQadwxR6Q; Fri,  6 Sep 2019 20:34:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 34ADB88146;
	Fri,  6 Sep 2019 20:34:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 147A41BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 20:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0F1D085085
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 20:34:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZNk9nBQgaRlG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2019 20:34:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BAD0C84A0D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 20:34:54 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 13:34:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; 
 d="asc'?scan'208";a="358891624"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga005.jf.intel.com with ESMTP; 06 Sep 2019 13:34:53 -0700
Message-ID: <0643563d15597e884da8d287c932abda6e27e70f.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Paul M Stillwell Jr
 <paul.m.stillwell.jr@intel.com>
Date: Fri, 06 Sep 2019 13:34:53 -0700
In-Reply-To: <b0857265-206a-c563-4b4a-d16a2c12e058@molgen.mpg.de>
References: <20190905153956.53086-1-anthony.l.nguyen@intel.com>
 <b0857265-206a-c563-4b4a-d16a2c12e058@molgen.mpg.de>
Organization: Intel
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
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
Reply-To: jeffrey.t.kirsher@intel.com
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="===============2184496932536688670=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============2184496932536688670==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-t58ExMXrzpYJwBOurLxX"


--=-t58ExMXrzpYJwBOurLxX
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-09-06 at 09:09 +0200, Paul Menzel wrote:
> Dear Tony, dear Paul,
>=20
>=20
> On 05.09.19 17:39, Tony Nguyen wrote:
> > From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> >=20
> > The driver is required to send a version to the firmware
> > to indicate that the driver is up. If the driver doesn't
> > do this the firmware doesn't behave properly.
>=20
> In what datasheet is that documented?

It is documented in the datasheet, but the datasheet has not been made
available yet because the device(s) have not been released yet.  Once
the device(s) get released, a datasheet should be made available
shortly thereafter.

>=20
> What does =E2=80=9Cdoesn=E2=80=99t behave properly=E2=80=9D mean exactly?

What Paul and Tony were getting at that if the DDP pacakge is not
loaded onto the NIC, not all the features that the NIC is capable of
will be made available.  The sending of a version to the firmware is
just one step that needs to occur to enable the loading of a DDP
package.

>=20
> > Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> > Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice.h          |  1 +
> >   .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 13 +++++++
> >   drivers/net/ethernet/intel/ice/ice_common.c   | 37
> > +++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_common.h   |  3 ++
> >   drivers/net/ethernet/intel/ice/ice_main.c     | 36
> > +++++++++++++++++-
> >   drivers/net/ethernet/intel/ice/ice_type.h     |  8 ++++
> >   6 files changed, 97 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h
> > b/drivers/net/ethernet/intel/ice/ice.h
> > index b36e1cf0e461..4cdedcebb163 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -29,6 +29,7 @@
> >   #include <linux/sctp.h>
> >   #include <linux/ipv6.h>
> >   #include <linux/if_bridge.h>
> > +#include <linux/ctype.h>
>=20
> Is the alignment correct? (Or just my mailer messing up?)

Yep, just your mailer screwed it up.  The code is aligned correctly in
my tree.

>=20
> >   #include <linux/avf/virtchnl.h>
> >   #include <net/ipv6.h>
> >   #include "ice_devids.h"
> > diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > index 4da0cde9695b..9c9791788610 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> > @@ -33,6 +33,17 @@ struct ice_aqc_get_ver {
> >   	u8 api_patch;
> >   };
> >  =20
> > +/* Send driver version (indirect 0x0002) */
> > +struct ice_aqc_driver_ver {
> > +	u8 major_ver;
> > +	u8 minor_ver;
> > +	u8 build_ver;
> > +	u8 subbuild_ver;
> > +	u8 reserved[4];
> > +	__le32 addr_high;
> > +	__le32 addr_low;
> > +};
> > +
> >   /* Queue Shutdown (direct 0x0003) */
> >   struct ice_aqc_q_shutdown {
> >   	u8 driver_unloading;
> > @@ -1547,6 +1558,7 @@ struct ice_aq_desc {
> >   		u8 raw[16];
> >   		struct ice_aqc_generic generic;
> >   		struct ice_aqc_get_ver get_ver;
> > +		struct ice_aqc_driver_ver driver_ver;
> >   		struct ice_aqc_q_shutdown q_shutdown;
> >   		struct ice_aqc_req_res res_owner;
> >   		struct ice_aqc_manage_mac_read mac_read;
> > @@ -1618,6 +1630,7 @@ enum ice_aq_err {
> >   enum ice_adminq_opc {
> >   	/* AQ commands */
> >   	ice_aqc_opc_get_ver				=3D 0x0001,
> > +	ice_aqc_opc_driver_ver				=3D 0x0002,
> >   	ice_aqc_opc_q_shutdown				=3D 0x0003,
> >  =20
> >   	/* resource ownership */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> > b/drivers/net/ethernet/intel/ice/ice_common.c
> > index 8b2c46615834..db62cc748544 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_common.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> > @@ -1258,6 +1258,43 @@ enum ice_status ice_aq_get_fw_ver(struct
> > ice_hw *hw, struct ice_sq_cd *cd)
> >   	return status;
> >   }
> >  =20
> > +/**
> > + * ice_aq_send_driver_ver
> > + * @hw: pointer to the HW struct
> > + * @dv: driver's major, minor version
> > + * @cd: pointer to command details structure or NULL
> > + *
> > + * Send the driver version (0x0002) to the firmware
> > + */
> > +enum ice_status
> > +ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver
> > *dv,
> > +		       struct ice_sq_cd *cd)
> > +{
> > +	struct ice_aqc_driver_ver *cmd;
> > +	struct ice_aq_desc desc;
> > +	u16 len;
>=20
> Just `unsigned int` or `size_t`?

This change will be based on the current kernel interface that can get
the length of ASCII chars, so yes, Tony will fix this up as well.

>=20
> > +
> > +	cmd =3D &desc.params.driver_ver;
> > +
> > +	if (!dv)
> > +		return ICE_ERR_PARAM;
> > +
> > +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_driver_ver);
> > +
> > +	desc.flags |=3D cpu_to_le16(ICE_AQ_FLAG_RD);
> > +	cmd->major_ver =3D dv->major_ver;
> > +	cmd->minor_ver =3D dv->minor_ver;
> > +	cmd->build_ver =3D dv->build_ver;
> > +	cmd->subbuild_ver =3D dv->subbuild_ver;
> > +
> > +	len =3D 0;
> > +	while (len < sizeof(dv->driver_string) &&
> > +	       isascii(dv->driver_string[len]) && dv-
> > >driver_string[len])
> > +		len++;
>=20
> Is there such a function for finding the length of ASCII characters=20
> already somewhere in Linux?

Tony will look into this and use the kernel interface if there is.

>=20
> > +
> > +	return ice_aq_send_cmd(hw, &desc, dv->driver_string, len, cd);
> > +}
> > +
> >   /**
> >    * ice_aq_q_shutdown
> >    * @hw: pointer to the HW struct
> > diff --git a/drivers/net/ethernet/intel/ice/ice_common.h
> > b/drivers/net/ethernet/intel/ice/ice_common.h
> > index e376d1eadba4..e9d77370a17c 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_common.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> > @@ -71,6 +71,9 @@ ice_aq_send_cmd(struct ice_hw *hw, struct
> > ice_aq_desc *desc,
> >   		void *buf, u16 buf_size, struct ice_sq_cd *cd);
> >   enum ice_status ice_aq_get_fw_ver(struct ice_hw *hw, struct
> > ice_sq_cd *cd);
> >  =20
> > +enum ice_status
> > +ice_aq_send_driver_ver(struct ice_hw *hw, struct ice_driver_ver
> > *dv,
> > +		       struct ice_sq_cd *cd);
> >   enum ice_status
> >   ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8
> > report_mode,
> >   		    struct ice_aqc_get_phy_caps_data *caps,
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > b/drivers/net/ethernet/intel/ice/ice_main.c
> > index f8be9ada2447..ea55ec598dac 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -9,7 +9,13 @@
> >   #include "ice_lib.h"
> >   #include "ice_dcb_lib.h"
> >  =20
> > -#define DRV_VERSION	"0.7.5-k"
> > +#define DRV_VERSION_MAJOR 0
> > +#define DRV_VERSION_MINOR 7
> > +#define DRV_VERSION_BUILD 5
> > +
> > +#define DRV_VERSION	__stringify(DRV_VERSION_MAJOR) "." \
> > +			__stringify(DRV_VERSION_MINOR) "." \
> > +			__stringify(DRV_VERSION_BUILD) "-k"
> >   #define DRV_SUMMARY	"Intel(R) Ethernet Connection E800
> > Series Linux Driver"
> >   const char ice_drv_ver[] =3D DRV_VERSION;
> >   static const char ice_driver_string[] =3D DRV_SUMMARY;
> > @@ -2459,6 +2465,25 @@ static void ice_verify_cacheline_size(struct
> > ice_pf *pf)
> >   			 ICE_CACHE_LINE_BYTES);
> >   }
> >  =20
> > +/**
> > + * ice_send_version - update firmware with driver version
> > + * @pf: PF struct
> > + *
> > + * Returns ICE_SUCCESS on success, else error code
> > + */
> > +static enum ice_status ice_send_version(struct ice_pf *pf)
> > +{
> > +	struct ice_driver_ver dv;
> > +
> > +	dv.major_ver =3D DRV_VERSION_MAJOR;
> > +	dv.minor_ver =3D DRV_VERSION_MINOR;
> > +	dv.build_ver =3D DRV_VERSION_BUILD;
> > +	dv.subbuild_ver =3D 0;
> > +	strscpy((char *)dv.driver_string, DRV_VERSION,
> > +		sizeof(dv.driver_string));
> > +	return ice_aq_send_driver_ver(&pf->hw, &dv, NULL);
> > +}
> > +
> >   /**
> >    * ice_probe - Device initialization routine
> >    * @pdev: PCI device information struct
> > @@ -2612,6 +2637,15 @@ ice_probe(struct pci_dev *pdev, const struct
> > pci_device_id __always_unused *ent)
> >  =20
> >   	clear_bit(__ICE_SERVICE_DIS, pf->state);
> >  =20
> > +	/* tell the firmware we are up */
> > +	err =3D ice_send_version(pf);
> > +	if (err) {
> > +		dev_err(dev,
> > +			"probe failed due to error sending driver
> > version:%d\n",
>=20
> Space after colon? Maybe also add the driver version in the string?

Tony will fix this up.

>=20
> > +			err);
> > +		goto err_alloc_sw_unroll;
> > +	}
> > +
> >   	/* since everything is good, start the service timer */
> >   	mod_timer(&pf->serv_tmr, round_jiffies(jiffies + pf-
> > >serv_tmr_period));
> >  =20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
> > b/drivers/net/ethernet/intel/ice/ice_type.h
> > index 4501d50a7dcc..a2676003275a 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_type.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> > @@ -53,6 +53,14 @@ enum ice_aq_res_access_type {
> >   	ICE_RES_WRITE
> >   };
> >  =20
> > +struct ice_driver_ver {
> > +	u8 major_ver;
> > +	u8 minor_ver;
> > +	u8 build_ver;
> > +	u8 subbuild_ver;
> > +	u8 driver_string[32];
> > +};
> > +
> >   enum ice_fc_mode {
> >   	ICE_FC_NONE =3D 0,
> >   	ICE_FC_RX_PAUSE,
> >=20
>=20
> Kind regards,
>=20
> Paul
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


--=-t58ExMXrzpYJwBOurLxX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl1ywu0ACgkQ5W/vlVpL
7c5oTw/+NIRDsSOl4V/KHpkiUqvWF3PBvwnfmX7GygZimtadYRPG28pNwn8QwbIv
rbxQofoml2MF9lAGKetwMf+pFkfxEdSVmGZkaeY6v8XNePHb3CwHo3jL62Dqj5FI
XDXiNlKCCA8UqWNXXcmHbxeDy8rE5Eahv6Is/fcaQLOy69kgzIlBj4lJ+KSEw9Bz
WUTwJrlZ/suEdYA2LvWxHtNFmyRDkS7LYBHFnhUx76LTr8A+PW2jGR/B259OHYZr
fS8+Sx8XVb+yxrGWXo2Sj2vfAzbqW7LdrkeQe0nGXWNyniwYbldYLULMweDca2BT
6sHvcPZWQNHMX1l1625YNEOJ0x0qhej3NBV6iDVW2/FBD7Qwcg7TSk4HJwc0/s8A
vZKJQ6zq6I2M5J2EZ9iYJszUeetDbND7FyU2jS5TlQzY8bhcRA3DgqIOY6PFqgp4
EPxso2IAJnBhzOukEsIS87x98q+rMupWDMZdDqhoS1LBahbfUyMtLXNmXH8Gi6Lb
u4nePfHCQyvY/lqxg/rbQS7qrLVk3qvZIUR/BcsvZhh92alCS/vCGBZRnw2brVEq
8zFPWFUqV9PlcT2jDWTwqlWuV9mok4X3bxbt69QZa45zRxkK2Db/qKjN+zn34/af
Z1tqKXG+AwXDTF4pzyKGgFPi3AdYva7E2W4HRxYI64uR2KIR0jw=
=cbG+
-----END PGP SIGNATURE-----

--=-t58ExMXrzpYJwBOurLxX--


--===============2184496932536688670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2184496932536688670==--

