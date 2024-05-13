Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 449728C3E17
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 11:26:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF9BC608B4;
	Mon, 13 May 2024 09:26:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y_BvPZUPvN-t; Mon, 13 May 2024 09:26:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68876608AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715592370;
	bh=nzMfrs4mIIh5BdL1XD7I3hnf4sPJ6J05Lz/hdslMHCA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EIj5nVJmOMo2X3GisKe5+fa0XXC++644b05xmoNjZ+Pm7CTixzez3YhSkVIfrZOcO
	 5+92fVZjQxX9J4qMMQMkYJqkVstZMjvdoLxPnRPt1iJLQBa/d2C3fuiFfe43rhQQkP
	 XddHlE5cJrgWP9sftFYoaomWEbVXT8imepXfC8kONNmEHQu+D1jibrcHDE+zRo9WNd
	 9/II1arHMTFzAo+vRxq1H+3Df/PK+oCuJkeNDcx0az198UCEUkObxhKX3HZ2D1IYIT
	 kx/c9w9T1YbpuvFYzXvIdJcOtp41RkylPRdFSGTucfoBaQ1YEeUjGoudffDr8EXpok
	 YR0XyWtcWPvJw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68876608AE;
	Mon, 13 May 2024 09:26:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 182421BF239
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 09:26:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 023234066B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 09:26:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id udsLXe0Ntvuy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 09:26:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::234; helo=mail-lj1-x234.google.com;
 envelope-from=kalesh-anakkur.purayil@broadcom.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 07B0040632
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07B0040632
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07B0040632
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 09:26:02 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id
 38308e7fff4ca-2e0933d3b5fso59815461fa.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 02:26:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715592360; x=1716197160;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nzMfrs4mIIh5BdL1XD7I3hnf4sPJ6J05Lz/hdslMHCA=;
 b=g8TSOAhsB4tWeITzYDrv61PQcjlZW+nfpV+B/MuLQ23YL5OtaYcEcXhdZgUqCh2NWS
 e2leQp0a757ue1BkZrEbVY9+bmrrJn1/Rno4Ur68jcF1/FgOLiGgUV8IM0YtR9Y/zNKB
 CZJg53B5djvpb9Mttz16fguipEC9Nl1FnB9uE2a0rY0Vu7WYPHM0HrA4qbjrmJrpMlsG
 ISXI6x3QDlgUzfpzcQwkodZtYcaLzb/UD/UCAJOX4H3hRvzZ2HHyd9B537g4UGnMWxrL
 /dc17eLww3rFC4PXgLpt+D2X/mFnuPlV+Uv9q33jNZMFcImV74mb+3VX94Zf9hvfgt/t
 5M8A==
X-Gm-Message-State: AOJu0Yws5r3XamPWZjgS/edMgdrbZHt0i6fulcse7HmG9Xin72Pvk/u4
 pVXqtzNUGXp3JZuZmZp8bMMXaIe5gdsbA9rIPsnc6hmSf9syjt6OI+lMRn2BfcXsEMPDJIuAVPY
 c5w3CpPpNshSEvxTqbmzuaOt2L3kuY1A8l4xd
X-Google-Smtp-Source: AGHT+IHaUA3ly42htZ6fDuZDhNulj8t1VDxuYl0Gs24UPndJ+1jzyFRk0DrJB8JeNaH9LIg674b8LkPmsVvcJxjvV9k=
X-Received: by 2002:a2e:a71f:0:b0:2dd:987f:f9d7 with SMTP id
 38308e7fff4ca-2e51ff5e559mr50145591fa.25.1715592360262; Mon, 13 May 2024
 02:26:00 -0700 (PDT)
MIME-Version: 1.0
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
 <20240513083735.54791-6-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240513083735.54791-6-michal.swiatkowski@linux.intel.com>
From: Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>
Date: Mon, 13 May 2024 14:55:48 +0530
Message-ID: <CAH-L+nPnpxJKscC74YoDUr6pirHNuiBBFN8U+o9zRsW8gw2C8w@mail.gmail.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
 micalg=sha-256; boundary="0000000000003fd0bb061852795b"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1715592360; x=1716197160; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=nzMfrs4mIIh5BdL1XD7I3hnf4sPJ6J05Lz/hdslMHCA=;
 b=frujZ7I0oMbaVC5cinJKqIFDWAWSBppeQIaZlt+aTymQM+EwKqIlpBlP9QJYeY7U5c
 SQKSksGzUH25B8D6zT6fPaO9yQT70mYBD3yQu5biSDxQ3Ng9ymVzdLOZ/yfrrhM/QPae
 imNaNkJeekRcpjuKrCxuzKNNhoTRNcAyb2Qkk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=broadcom.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256
 header.s=google header.b=frujZ7I0
Subject: Re: [Intel-wired-lan] [iwl-next v2 05/15] ice: allocate devlink for
 subfunction
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--0000000000003fd0bb061852795b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 13, 2024 at 2:03=E2=80=AFPM Michal Swiatkowski
<michal.swiatkowski@linux.intel.com> wrote:
>
> From: Piotr Raczynski <piotr.raczynski@intel.com>
>
> Make devlink allocation function generic to use it for PF and for SF.
>
> Add function for SF devlink port creation. It will be used in next
> patch.
>
> Create header file for subfunction device. Define subfunction device
> structure there as it is needed for devlink allocation and port
> creation.
>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 33 ++++++++++++
>  .../net/ethernet/intel/ice/devlink/devlink.h  |  1 +
>  .../ethernet/intel/ice/devlink/devlink_port.c | 50 +++++++++++++++++++
>  .../ethernet/intel/ice/devlink/devlink_port.h |  3 ++
>  drivers/net/ethernet/intel/ice/ice_sf_eth.h   | 21 ++++++++
>  5 files changed, 108 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.h
>
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/n=
et/ethernet/intel/ice/devlink/devlink.c
> index 3fb3a7e828a4..c1fe3726f6c0 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -10,6 +10,7 @@
>  #include "ice_eswitch.h"
>  #include "ice_fw_update.h"
>  #include "ice_dcb_lib.h"
> +#include "ice_sf_eth.h"
>
>  /* context for devlink info version reporting */
>  struct ice_info_ctx {
> @@ -1282,6 +1283,8 @@ static const struct devlink_ops ice_devlink_ops =3D=
 {
>         .port_new =3D ice_devlink_port_new,
>  };
>
> +static const struct devlink_ops ice_sf_devlink_ops;
> +
>  static int
>  ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
>                             struct devlink_param_gset_ctx *ctx)
> @@ -1419,6 +1422,7 @@ static void ice_devlink_free(void *devlink_ptr)
>   * Allocate a devlink instance for this device and return the private ar=
ea as
>   * the PF structure. The devlink memory is kept track of through devres =
by
>   * adding an action to remove it when unwinding.
> + *
>   */
>  struct ice_pf *ice_allocate_pf(struct device *dev)
>  {
> @@ -1435,6 +1439,35 @@ struct ice_pf *ice_allocate_pf(struct device *dev)
>         return devlink_priv(devlink);
>  }
>
> +/**
> + * ice_allocate_sf - Allocate devlink and return SF structure pointer
> + * @dev: the device to allocate for
> + * @pf: pointer to the PF structure
> + *
> + * Allocate a devlink instance for SF.
> + *
> + * Return: void pointer to allocated memory
> + */
> +struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *p=
f)
> +{
> +       struct devlink *devlink;
> +       int err;
> +
> +       devlink =3D devlink_alloc_ns(&ice_sf_devlink_ops,
> +                                  sizeof(struct ice_sf_priv),
> +                                  devlink_net(priv_to_devlink(pf)), dev)=
;
> +       if (!devlink)
> +               return NULL;
> +
> +       err =3D devl_nested_devlink_set(priv_to_devlink(pf), devlink);
> +       if (err) {
> +               devlink_free(devlink);
> +               return ERR_PTR(err);
> +       }
> +
> +       return devlink_priv(devlink);
> +}
> +
>  /**
>   * ice_devlink_register - Register devlink interface for this PF
>   * @pf: the PF to register the devlink for.
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.h b/drivers/n=
et/ethernet/intel/ice/devlink/devlink.h
> index d291c0e2e17b..1af3b0763fbb 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.h
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.h
> @@ -5,6 +5,7 @@
>  #define _ICE_DEVLINK_H_
>
>  struct ice_pf *ice_allocate_pf(struct device *dev);
> +struct ice_sf_priv *ice_allocate_sf(struct device *dev, struct ice_pf *p=
f);
>
>  void ice_devlink_register(struct ice_pf *pf);
>  void ice_devlink_unregister(struct ice_pf *pf);
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/driv=
ers/net/ethernet/intel/ice/devlink/devlink_port.c
> index 812b306e9048..1355ea042f1d 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> @@ -432,6 +432,56 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
>         devl_port_unregister(&vf->devlink_port);
>  }
>
> +/**
> + * ice_devlink_create_sf_dev_port - Register virtual port for a subfunct=
ion
> + * @sf_dev: the subfunction device to create a devlink port for
> + *
> + * Register virtual flavour devlink port for the subfunction auxiliary d=
evice
> + * created after activating a dynamically added devlink port.
> + *
> + * Return: zero on success or an error code on failure.
> + */
> +int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev)
> +{
> +       struct devlink_port_attrs attrs =3D {};
> +       struct devlink_port *devlink_port;
> +       struct ice_dynamic_port *dyn_port;
[Kalesh] Try to maintain RCT order for variable declaration.
> +       struct devlink *devlink;
> +       struct ice_vsi *vsi;
> +       struct device *dev;
> +       struct ice_pf *pf;
> +       int err;
> +
> +       dyn_port =3D sf_dev->dyn_port;
> +       vsi =3D dyn_port->vsi;
> +       pf =3D dyn_port->pf;
> +       dev =3D ice_pf_to_dev(pf);
> +
> +       devlink_port =3D &sf_dev->priv->devlink_port;
> +
> +       attrs.flavour =3D DEVLINK_PORT_FLAVOUR_VIRTUAL;
> +
> +       devlink_port_attrs_set(devlink_port, &attrs);
> +       devlink =3D priv_to_devlink(sf_dev->priv);
> +
> +       err =3D devl_port_register(devlink, devlink_port, vsi->idx);
> +       if (err)
> +               dev_err(dev, "Failed to create virtual devlink port for a=
uxiliary subfunction device");
> +
> +       return err;
> +}
> +
> +/**
> + * ice_devlink_destroy_sf_dev_port - Destroy virtual port for a subfunct=
ion
> + * @sf_dev: the subfunction device to create a devlink port for
> + *
> + * Unregisters the virtual port associated with this subfunction.
> + */
> +void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev)
> +{
> +       devl_port_unregister(&sf_dev->priv->devlink_port);
> +}
> +
>  /**
>   * ice_dealloc_dynamic_port - Deallocate and remove a dynamic port
>   * @dyn_port: dynamic port instance to deallocate
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/driv=
ers/net/ethernet/intel/ice/devlink/devlink_port.h
> index f20d7cc522a6..e4acd855d9f9 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> @@ -5,6 +5,7 @@
>  #define _DEVLINK_PORT_H_
>
>  #include "../ice.h"
> +#include "../ice_sf_eth.h"
>
>  /**
>   * struct ice_dynamic_port - Track dynamically added devlink port instan=
ce
> @@ -33,6 +34,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf);
>  void ice_devlink_destroy_vf_port(struct ice_vf *vf);
>  int ice_devlink_create_sf_port(struct ice_dynamic_port *dyn_port);
>  void ice_devlink_destroy_sf_port(struct ice_dynamic_port *dyn_port);
> +int ice_devlink_create_sf_dev_port(struct ice_sf_dev *sf_dev);
> +void ice_devlink_destroy_sf_dev_port(struct ice_sf_dev *sf_dev);
>
>  #define ice_devlink_port_to_dyn(p) \
>         container_of(port, struct ice_dynamic_port, devlink_port)
> diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/et=
hernet/intel/ice/ice_sf_eth.h
> new file mode 100644
> index 000000000000..a08f8b2bceef
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (c) 2024, Intel Corporation. */
> +
> +#ifndef _ICE_SF_ETH_H_
> +#define _ICE_SF_ETH_H_
> +
> +#include <linux/auxiliary_bus.h>
> +#include "ice.h"
> +
> +struct ice_sf_dev {
> +       struct auxiliary_device adev;
> +       struct ice_dynamic_port *dyn_port;
> +       struct ice_sf_priv *priv;
> +};
> +
> +struct ice_sf_priv {
> +       struct ice_sf_dev *dev;
> +       struct devlink_port devlink_port;
> +};
> +
> +#endif /* _ICE_SF_ETH_H_ */
> --
> 2.42.0
>
>


--=20
Regards,
Kalesh A P

--0000000000003fd0bb061852795b
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIQiwYJKoZIhvcNAQcCoIIQfDCCEHgCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg3iMIIFDTCCA/WgAwIBAgIQeEqpED+lv77edQixNJMdADANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA5MTYwMDAwMDBaFw0yODA5MTYwMDAwMDBaMFsxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBS
MyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
vbCmXCcsbZ/a0fRIQMBxp4gJnnyeneFYpEtNydrZZ+GeKSMdHiDgXD1UnRSIudKo+moQ6YlCOu4t
rVWO/EiXfYnK7zeop26ry1RpKtogB7/O115zultAz64ydQYLe+a1e/czkALg3sgTcOOcFZTXk38e
aqsXsipoX1vsNurqPtnC27TWsA7pk4uKXscFjkeUE8JZu9BDKaswZygxBOPBQBwrA5+20Wxlk6k1
e6EKaaNaNZUy30q3ArEf30ZDpXyfCtiXnupjSK8WU2cK4qsEtj09JS4+mhi0CTCrCnXAzum3tgcH
cHRg0prcSzzEUDQWoFxyuqwiwhHu3sPQNmFOMwIDAQABo4IB2jCCAdYwDgYDVR0PAQH/BAQDAgGG
MGAGA1UdJQRZMFcGCCsGAQUFBwMCBggrBgEFBQcDBAYKKwYBBAGCNxQCAgYKKwYBBAGCNwoDBAYJ
KwYBBAGCNxUGBgorBgEEAYI3CgMMBggrBgEFBQcDBwYIKwYBBQUHAxEwEgYDVR0TAQH/BAgwBgEB
/wIBADAdBgNVHQ4EFgQUljPR5lgXWzR1ioFWZNW+SN6hj88wHwYDVR0jBBgwFoAUj/BLf6guRSSu
TVD6Y5qL3uLdG7wwegYIKwYBBQUHAQEEbjBsMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9i
YWxzaWduLmNvbS9yb290cjMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjMuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yMy5jcmwwWgYDVR0gBFMwUTALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgEo
CjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAN
BgkqhkiG9w0BAQsFAAOCAQEAdAXk/XCnDeAOd9nNEUvWPxblOQ/5o/q6OIeTYvoEvUUi2qHUOtbf
jBGdTptFsXXe4RgjVF9b6DuizgYfy+cILmvi5hfk3Iq8MAZsgtW+A/otQsJvK2wRatLE61RbzkX8
9/OXEZ1zT7t/q2RiJqzpvV8NChxIj+P7WTtepPm9AIj0Keue+gS2qvzAZAY34ZZeRHgA7g5O4TPJ
/oTd+4rgiU++wLDlcZYd/slFkaT3xg4qWDepEMjT4T1qFOQIL+ijUArYS4owpPg9NISTKa1qqKWJ
jFoyms0d0GwOniIIbBvhI2MJ7BSY9MYtWVT5jJO3tsVHwj4cp92CSFuGwunFMzCCA18wggJHoAMC
AQICCwQAAAAAASFYUwiiMA0GCSqGSIb3DQEBCwUAMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24gUm9v
dCBDQSAtIFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9iYWxTaWduMB4XDTA5
MDMxODEwMDAwMFoXDTI5MDMxODEwMDAwMFowTDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENB
IC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2JhbFNpZ24wggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDMJXaQeQZ4Ihb1wIO2hMoonv0FdhHFrYhy/EYCQ8eyip0E
XyTLLkvhYIJG4VKrDIFHcGzdZNHr9SyjD4I9DCuul9e2FIYQebs7E4B3jAjhSdJqYi8fXvqWaN+J
J5U4nwbXPsnLJlkNc96wyOkmDoMVxu9bi9IEYMpJpij2aTv2y8gokeWdimFXN6x0FNx04Druci8u
nPvQu7/1PQDhBjPogiuuU6Y6FnOM3UEOIDrAtKeh6bJPkC4yYOlXy7kEkmho5TgmYHWyn3f/kRTv
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBWowggRSoAMCAQICDDfBRQmwNSI92mit0zANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMjA5MTAwODI5NTZaFw0yNTA5MTAwODI5NTZaMIGi
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xHzAdBgNVBAMTFkthbGVzaCBBbmFra3VyIFB1cmF5aWwxMjAw
BgkqhkiG9w0BCQEWI2thbGVzaC1hbmFra3VyLnB1cmF5aWxAYnJvYWRjb20uY29tMIIBIjANBgkq
hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxnv1Reaeezfr6NEmg3xZlh4cz9m7QCN13+j4z1scrX+b
JfnV8xITT5yvwdQv3R3p7nzD/t29lTRWK3wjodUd2nImo6vBaH3JbDwleIjIWhDXLNZ4u7WIXYwx
aQ8lYCdKXRsHXgGPY0+zSx9ddpqHZJlHwcvas3oKnQN9WgzZtsM7A8SJefWkNvkcOtef6bL8Ew+3
FBfXmtsPL9I2vita8gkYzunj9Nu2IM+MnsP7V/+Coy/yZDtFJHp30hDnYGzuOhJchDF9/eASvE8T
T1xqJODKM9xn5xXB1qezadfdgUs8k8QAYyP/oVBafF9uqDudL6otcBnziyDBQdFCuAQN7wIDAQAB
o4IB5DCCAeAwDgYDVR0PAQH/BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZC
aHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJj
YTIwMjAuY3J0MEEGCCsGAQUFBzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3Iz
cGVyc29uYWxzaWduMmNhMjAyMDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcC
ARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNV
HR8EQjBAMD6gPKA6hjhodHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNp
Z24yY2EyMDIwLmNybDAuBgNVHREEJzAlgSNrYWxlc2gtYW5ha2t1ci5wdXJheWlsQGJyb2FkY29t
LmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGP
zzAdBgNVHQ4EFgQUI3+tdStI+ABRGSqksMsiCmO9uDAwDQYJKoZIhvcNAQELBQADggEBAGfe1o9b
4wUud0FMjb/FNdc433meL15npjdYWUeioHdlCGB5UvEaMGu71QysfoDOfUNeyO9YKp0h0fm7clvo
cBqeWe4CPv9TQbmLEtXKdEpj5kFZBGmav69mGTlu1A9KDQW3y0CDzCPG2Fdm4s73PnkwvemRk9E2
u9/kcZ8KWVeS+xq+XZ78kGTKQ6Wii3dMK/EHQhnDfidadoN/n+x2ySC8yyDNvy81BocnblQzvbuB
a30CvRuhokNO6Jzh7ZFtjKVMzYas3oo6HXgA+slRszMu4pc+fRPO41FHjeDM76e6P5OnthhnD+NY
x6xokUN65DN1bn2MkeNs0nQpizDqd0QxggJtMIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYD
VQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25h
bFNpZ24gMiBDQSAyMDIwAgw3wUUJsDUiPdpordMwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcN
AQkEMSIEINAvDUVYjhE3fKJWkuScbu0hyVCqO6lBBaUwZB6tqUEiMBgGCSqGSIb3DQEJAzELBgkq
hkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDUxMzA5MjYwMFowaQYJKoZIhvcNAQkPMVwwWjAL
BglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG
9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQBbsMx+3YZE
M8k616QbzCTy5CTEW9xWq4rJRuY76/YzWVazoHEVyj23nWCjNx4UQmft1JVBFqAKnHlL0aaald+c
DJQEAIAYRQ4jVvt0Evln70OkSMNnyOuz3D3+ICzyc3+tYTPhkekW8pc/HyCiUTu0zosLRGAEq6lW
yL7caHov7NO00xYSxn4Y0m8Vzpw1YPtFhopjBH818kSyBh7THji4yfaVnf8VOQPBXIgKR6EWNYIK
RUzA+r3g07JO/yRP1JXVUUiDl+VQeGqrgFmdhGV9zeqTc6cSAWxkiENSbqB7s0dLvZ0kBDwwvRhH
Q+nFoz00AZZGxWueKvKi6K1QmqCZ
--0000000000003fd0bb061852795b--
