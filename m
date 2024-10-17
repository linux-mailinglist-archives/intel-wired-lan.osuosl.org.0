Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 913309A23C6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 15:27:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86F5B4070E;
	Thu, 17 Oct 2024 13:27:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qtp45SbyQNWb; Thu, 17 Oct 2024 13:27:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63508406F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729171627;
	bh=ykiw6GJIXIWTja2qZLZfxeYOs8sruue+t9yeQLIcVJk=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mpkEe6xEFTu+2ns1KWSXuTJfxQfE2Rvu8JqTM0EW2CAF1Jsm5PM6dGYxX3Gu4ud+z
	 E8G0ipkUqGIxc6PM1lslAOFutFX1L8U6Wh595lrs+2nEHcqSAinIYYyhapLJjp8bMr
	 CarJKkgPh4JwFJSSVtvcpq9Cq51pwUeKk4I7leMOokpsXjctFlF6uZCUjFYiuI+fgm
	 iu4Q4zY9zizcfeHDCf/eO0Tms0YFgLz44R7JrtJ4r+DvRAKtlDWcajg0X1f5ZC94Aw
	 uVw4It4YiGIoTc5EeKwZpnZyOvO/ZiRZeCgjlN4S2FCSkpM1uQ82ABBo7HrtCe/CBi
	 VUhtvsA//RFDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63508406F9;
	Thu, 17 Oct 2024 13:27:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 006572316
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 13:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C306940703
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 13:27:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ovgk5-9L4mah for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 13:27:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::130; helo=mail-lf1-x130.google.com;
 envelope-from=kalesh-anakkur.purayil@broadcom.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 59C97406EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59C97406EF
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59C97406EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 13:26:58 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id
 2adb3069b0e04-539f7606199so1146643e87.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 06:26:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729171617; x=1729776417;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ykiw6GJIXIWTja2qZLZfxeYOs8sruue+t9yeQLIcVJk=;
 b=PP7F/LyyQdjc736qMgDrcCKUGmxADBJtD1tfO8hFI95lBwYGOg1sB50XS1NGYjQ86x
 PGlMK0I5WZid5oOqj5NzRMFV39kiaS48HN6UWKWOP1u9MXeKn57UAMYJ7mPqk3DFmrEu
 jWjfOV6LNm5ObYaorfpboxI0crWKf/MQYOOCQ9lVuntYvmX7USolqRDqS9YCMSL/r3CU
 /i6iGZb+aS3oj/ZFS+JsOz7gpOGjONKN5qGi4hlprAUgFoJns/mgZ5+1NuPKg1gwWhDE
 OJKT4aqrGR17XI/y5klOKXdeTo3qMHqMs4WiAedX2lYRuuiIlndaikjTUJz8K+qeZyrL
 //QQ==
X-Gm-Message-State: AOJu0YzIWo0iZxP3XofhyzbZ+Zkwl3iwF/vzyrPcS6esZpGtUQOZS1oH
 3c2llyJLnuGsbdomhH2EvmKcBNkiggwDGQhFMYQivwIwDr8TnyKdIIenagwaqbQG7e9DIi9uiqs
 0nc7iEdAYYc2UnpHhVVMKz1SDZEryzXQ2rUc6
X-Google-Smtp-Source: AGHT+IEhiJWQxIlsw0Kt9nHucYYTxZX1Ciff2uQCuymJ/26eKRHF7McpFeHjjCkb9n7W+QOCC9/iEMMDmvrvpJqvHJA=
X-Received: by 2002:a05:6512:2303:b0:539:8a9a:4e56 with SMTP id
 2adb3069b0e04-539da5ab629mr11782569e87.53.1729171615003; Thu, 17 Oct 2024
 06:26:55 -0700 (PDT)
MIME-Version: 1.0
References: <20241003141650.16524-1-piotr.kwapulinski@intel.com>
 <20241003141650.16524-4-piotr.kwapulinski@intel.com>
In-Reply-To: <20241003141650.16524-4-piotr.kwapulinski@intel.com>
From: Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>
Date: Thu, 17 Oct 2024 18:56:40 +0530
Message-ID: <CAH-L+nOy4NSkmE336rC_Vbx1kYSM97rLfy2NDXwODwg7Dapegg@mail.gmail.com>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>, 
 Jan Glaza <jan.glaza@intel.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
 micalg=sha-256; boundary="000000000000000aaa0624ac24a2"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1729171617; x=1729776417; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ykiw6GJIXIWTja2qZLZfxeYOs8sruue+t9yeQLIcVJk=;
 b=bUrb4xMoxdfwpHGNWfObUYlO8s6QEnpEPyK9rTS7MfeUQzQJ6Iq/iRvEjxS/wz0s3V
 nm/0JreiZmcmZyCSZtjeRgRtWS0kVra7IcJNFyV4V2Wo2Omms2ACh3sj6szCS+oYdpS9
 ISIwPlbHSjrtQTU/xKtDmKFJcIJB+Fcs6Y760=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=broadcom.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256
 header.s=google header.b=bUrb4xMo
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 3/7] ixgbe: Add link
 management support for E610 device
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--000000000000000aaa0624ac24a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 3, 2024 at 7:49=E2=80=AFPM Piotr Kwapulinski
<piotr.kwapulinski@intel.com> wrote:
>
> Add low level link management support for E610 device. Link management
> operations are handled via the Admin Command Interface. Add the following
> link management operations:
> - get link capabilities
> - set up link
> - get media type
> - get link status, link status events
> - link power management
>
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 1091 +++++++++++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   32 +
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |    1 +
>  3 files changed, 1124 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/=
ethernet/intel/ixgbe/ixgbe_e610.c
> index 3bc88df..c0c740f 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -1033,3 +1033,1094 @@ void ixgbe_copy_phy_caps_to_cfg(struct ixgbe_aci=
_cmd_get_phy_caps_data *caps,
>         cfg->module_compliance_enforcement =3D
>                 caps->module_compliance_enforcement;
>  }
> +
> +/**
> + * ixgbe_aci_set_phy_cfg - set PHY configuration
> + * @hw: pointer to the HW struct
> + * @cfg: structure with PHY configuration data to be set
> + *
> + * Set the various PHY configuration parameters supported on the Port
> + * using ACI command (0x0601).
> + * One or more of the Set PHY config parameters may be ignored in an MFP
> + * mode as the PF may not have the privilege to set some of the PHY Conf=
ig
> + * parameters.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_aci_set_phy_cfg(struct ixgbe_hw *hw,
> +                         struct ixgbe_aci_cmd_set_phy_cfg_data *cfg)
> +{
> +       struct ixgbe_aci_desc desc;
> +       int err;
> +
> +       if (!cfg)
> +               return -EINVAL;
> +
> +       /* Ensure that only valid bits of cfg->caps can be turned on. */
> +       cfg->caps &=3D IXGBE_ACI_PHY_ENA_VALID_MASK;
> +
> +       ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_set_phy_cfg)=
;
> +       desc.params.set_phy.lport_num =3D hw->bus.func;
> +       desc.flags |=3D IXGBE_ACI_FLAG_RD;
> +
> +       err =3D ixgbe_aci_send_cmd(hw, &desc, cfg, sizeof(*cfg));
> +
[Kalesh] There is no need of an empty line here
> +       if (!err)
> +               hw->phy.curr_user_phy_cfg =3D *cfg;
> +
> +       return err;
> +}
> +
> +/**
> + * ixgbe_aci_set_link_restart_an - set up link and restart AN
> + * @hw: pointer to the HW struct
> + * @ena_link: if true: enable link, if false: disable link
> + *
> + * Function sets up the link and restarts the Auto-Negotiation over the =
link.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_aci_set_link_restart_an(struct ixgbe_hw *hw, bool ena_link)
> +{
> +       struct ixgbe_aci_cmd_restart_an *cmd;
> +       struct ixgbe_aci_desc desc;
> +
> +       cmd =3D &desc.params.restart_an;
> +
> +       ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_restart_an);
> +
> +       cmd->cmd_flags =3D IXGBE_ACI_RESTART_AN_LINK_RESTART;
> +       cmd->lport_num =3D hw->bus.func;
> +       if (ena_link)
> +               cmd->cmd_flags |=3D IXGBE_ACI_RESTART_AN_LINK_ENABLE;
> +       else
> +               cmd->cmd_flags &=3D ~IXGBE_ACI_RESTART_AN_LINK_ENABLE;
> +
> +       return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
> +}
> +
> +/**
> + * ixgbe_is_media_cage_present - check if media cage is present
> + * @hw: pointer to the HW struct
> + *
> + * Identify presence of media cage using the ACI command (0x06E0).
> + *
> + * Return: true if media cage is present, else false. If no cage, then
> + * media type is backplane or BASE-T.
> + */
> +static bool ixgbe_is_media_cage_present(struct ixgbe_hw *hw)
> +{
> +       struct ixgbe_aci_cmd_get_link_topo *cmd;
> +       struct ixgbe_aci_desc desc;
> +
> +       cmd =3D &desc.params.get_link_topo;
> +
> +       ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_top=
o);
> +
> +       cmd->addr.topo_params.node_type_ctx =3D
> +               FIELD_PREP(IXGBE_ACI_LINK_TOPO_NODE_CTX_M,
> +                          IXGBE_ACI_LINK_TOPO_NODE_CTX_PORT);
> +
> +       /* Set node type. */
> +       cmd->addr.topo_params.node_type_ctx |=3D
> +               FIELD_PREP(IXGBE_ACI_LINK_TOPO_NODE_TYPE_M,
> +                          IXGBE_ACI_LINK_TOPO_NODE_TYPE_CAGE);
> +
> +       /* Node type cage can be used to determine if cage is present. If=
 AQC
> +        * returns error (ENOENT), then no cage present. If no cage prese=
nt then
> +        * connection type is backplane or BASE-T.
> +        */
> +       return ixgbe_aci_get_netlist_node(hw, cmd, NULL, NULL);
> +}
> +
> +/**
> + * ixgbe_get_media_type_from_phy_type - Gets media type based on phy typ=
e
> + * @hw: pointer to the HW struct
> + *
> + * Try to identify the media type based on the phy type.
> + * If more than one media type, the ixgbe_media_type_unknown is returned=
.
> + * First, phy_type_low is checked, then phy_type_high.
> + * If none are identified, the ixgbe_media_type_unknown is returned
> + *
> + * Return: type of a media based on phy type in form of enum.
> + */
> +static enum ixgbe_media_type
> +ixgbe_get_media_type_from_phy_type(struct ixgbe_hw *hw)
> +{
> +       struct ixgbe_link_status *hw_link_info;
> +
> +       if (!hw)
> +               return ixgbe_media_type_unknown;
> +
> +       hw_link_info =3D &hw->link.link_info;
> +       if (hw_link_info->phy_type_low && hw_link_info->phy_type_high)
> +               /* If more than one media type is selected, report unknow=
n */
> +               return ixgbe_media_type_unknown;
> +
> +       if (hw_link_info->phy_type_low) {
> +               /* 1G SGMII is a special case where some DA cable PHYs
> +                * may show this as an option when it really shouldn't
> +                * be since SGMII is meant to be between a MAC and a PHY
> +                * in a backplane. Try to detect this case and handle it
> +                */
> +               if (hw_link_info->phy_type_low =3D=3D IXGBE_PHY_TYPE_LOW_=
1G_SGMII &&
> +                   (hw_link_info->module_type[IXGBE_ACI_MOD_TYPE_IDENT] =
=3D=3D
> +                   IXGBE_ACI_MOD_TYPE_BYTE1_SFP_PLUS_CU_ACTIVE ||
> +                   hw_link_info->module_type[IXGBE_ACI_MOD_TYPE_IDENT] =
=3D=3D
> +                   IXGBE_ACI_MOD_TYPE_BYTE1_SFP_PLUS_CU_PASSIVE))
> +                       return ixgbe_media_type_da;
> +
> +               switch (hw_link_info->phy_type_low) {
> +               case IXGBE_PHY_TYPE_LOW_1000BASE_SX:
> +               case IXGBE_PHY_TYPE_LOW_1000BASE_LX:
> +               case IXGBE_PHY_TYPE_LOW_10GBASE_SR:
> +               case IXGBE_PHY_TYPE_LOW_10GBASE_LR:
> +               case IXGBE_PHY_TYPE_LOW_25GBASE_SR:
> +               case IXGBE_PHY_TYPE_LOW_25GBASE_LR:
> +                       return ixgbe_media_type_fiber;
> +               case IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_ACC:
> +               case IXGBE_PHY_TYPE_LOW_25G_AUI_AOC_ACC:
> +                       return ixgbe_media_type_fiber;
> +               case IXGBE_PHY_TYPE_LOW_100BASE_TX:
> +               case IXGBE_PHY_TYPE_LOW_1000BASE_T:
> +               case IXGBE_PHY_TYPE_LOW_2500BASE_T:
> +               case IXGBE_PHY_TYPE_LOW_5GBASE_T:
> +               case IXGBE_PHY_TYPE_LOW_10GBASE_T:
> +               case IXGBE_PHY_TYPE_LOW_25GBASE_T:
> +                       return ixgbe_media_type_copper;
> +               case IXGBE_PHY_TYPE_LOW_10G_SFI_DA:
> +               case IXGBE_PHY_TYPE_LOW_25GBASE_CR:
> +               case IXGBE_PHY_TYPE_LOW_25GBASE_CR_S:
> +               case IXGBE_PHY_TYPE_LOW_25GBASE_CR1:
> +                       return ixgbe_media_type_da;
> +               case IXGBE_PHY_TYPE_LOW_25G_AUI_C2C:
> +                       if (ixgbe_is_media_cage_present(hw))
> +                               return ixgbe_media_type_aui;
> +                       fallthrough;
> +               case IXGBE_PHY_TYPE_LOW_1000BASE_KX:
> +               case IXGBE_PHY_TYPE_LOW_2500BASE_KX:
> +               case IXGBE_PHY_TYPE_LOW_2500BASE_X:
> +               case IXGBE_PHY_TYPE_LOW_5GBASE_KR:
> +               case IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1:
> +               case IXGBE_PHY_TYPE_LOW_10G_SFI_C2C:
> +               case IXGBE_PHY_TYPE_LOW_25GBASE_KR:
> +               case IXGBE_PHY_TYPE_LOW_25GBASE_KR1:
> +               case IXGBE_PHY_TYPE_LOW_25GBASE_KR_S:
> +                       return ixgbe_media_type_backplane;
> +               }
> +       } else {
> +               switch (hw_link_info->phy_type_high) {
> +               case IXGBE_PHY_TYPE_HIGH_10BASE_T:
> +                       return ixgbe_media_type_copper;
> +               }
> +       }
> +       return ixgbe_media_type_unknown;
> +}
> +
> +/**
> + * ixgbe_update_link_info - update status of the HW network link
> + * @hw: pointer to the HW struct
> + *
> + * Update the status of the HW network link.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_update_link_info(struct ixgbe_hw *hw)
> +{
> +       struct ixgbe_link_status *li;
> +       int err;
> +
> +       if (!hw)
> +               return -EINVAL;
> +
> +       li =3D &hw->link.link_info;
> +
> +       err =3D ixgbe_aci_get_link_info(hw, true, NULL);
> +       if (err)
> +               return err;
> +
> +       if (li->link_info & IXGBE_ACI_MEDIA_AVAILABLE) {
[Kalesh] If you change the check as below, that would help code indentation=
:
if (!(li->link_info & IXGBE_ACI_MEDIA_AVAILABLE))
      return 0;
> +               struct ixgbe_aci_cmd_get_phy_caps_data __free(kfree) *pca=
ps;
> +
> +               pcaps =3D kzalloc(sizeof(*pcaps), GFP_KERNEL);
> +               if (!pcaps)
> +                       return -ENOMEM;
> +
> +               err =3D ixgbe_aci_get_phy_caps(hw, false,
> +                                            IXGBE_ACI_REPORT_TOPO_CAP_ME=
DIA,
> +                                            pcaps);
> +
> +               if (!err)
> +                       memcpy(li->module_type, &pcaps->module_type,
> +                              sizeof(li->module_type));
> +       }
> +
> +       return err;
> +}
> +
> +/**
> + * ixgbe_get_link_status - get status of the HW network link
> + * @hw: pointer to the HW struct
> + * @link_up: pointer to bool (true/false =3D linkup/linkdown)
> + *
> + * Variable link_up is true if link is up, false if link is down.
> + * The variable link_up is invalid if status is non zero. As a
> + * result of this call, link status reporting becomes enabled
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_get_link_status(struct ixgbe_hw *hw, bool *link_up)
> +{
> +       if (!hw || !link_up)
> +               return -EINVAL;
> +
> +       if (hw->link.get_link_info) {
> +               int err =3D ixgbe_update_link_info(hw);
> +
> +               if (err)
> +                       return err;
> +       }
> +
> +       *link_up =3D hw->link.link_info.link_info & IXGBE_ACI_LINK_UP;
> +
> +       return 0;
> +}
> +
> +/**
> + * ixgbe_aci_get_link_info - get the link status
> + * @hw: pointer to the HW struct
> + * @ena_lse: enable/disable LinkStatusEvent reporting
> + * @link: pointer to link status structure - optional
> + *
> + * Get the current Link Status using ACI command (0x607).
> + * The current link can be optionally provided to update
> + * the status.
> + *
> + * Return: the link status of the adapter.
> + */
> +int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
> +                           struct ixgbe_link_status *link)
> +{
> +       struct ixgbe_aci_cmd_get_link_status_data link_data =3D { 0 };
> +       struct ixgbe_aci_cmd_get_link_status *resp;
> +       struct ixgbe_link_status *li_old, *li;
> +       struct ixgbe_fc_info *hw_fc_info;
> +       struct ixgbe_aci_desc desc;
> +       bool tx_pause, rx_pause;
> +       u8 cmd_flags;
> +       int err;
> +
> +       if (!hw)
> +               return -EINVAL;
> +
> +       li_old =3D &hw->link.link_info_old;
> +       li =3D &hw->link.link_info;
> +       hw_fc_info =3D &hw->fc;
> +
> +       ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_sta=
tus);
> +       cmd_flags =3D (ena_lse) ? IXGBE_ACI_LSE_ENA : IXGBE_ACI_LSE_DIS;
> +       resp =3D &desc.params.get_link_status;
> +       resp->cmd_flags =3D cmd_flags;
> +       resp->lport_num =3D hw->bus.func;
> +
> +       err =3D ixgbe_aci_send_cmd(hw, &desc, &link_data, sizeof(link_dat=
a));
> +
[Kalesh] there is no need of empty line here
> +       if (err)
> +               return err;
> +
> +       /* Save off old link status information. */
> +       *li_old =3D *li;
> +
> +       /* Update current link status information. */
> +       li->link_speed =3D link_data.link_speed;
> +       li->phy_type_low =3D link_data.phy_type_low;
> +       li->phy_type_high =3D link_data.phy_type_high;
> +       li->link_info =3D link_data.link_info;
> +       li->link_cfg_err =3D link_data.link_cfg_err;
> +       li->an_info =3D link_data.an_info;
> +       li->ext_info =3D link_data.ext_info;
> +       li->max_frame_size =3D link_data.max_frame_size;
> +       li->fec_info =3D link_data.cfg & IXGBE_ACI_FEC_MASK;
> +       li->topo_media_conflict =3D link_data.topo_media_conflict;
> +       li->pacing =3D link_data.cfg & (IXGBE_ACI_CFG_PACING_M |
> +                                     IXGBE_ACI_CFG_PACING_TYPE_M);
> +
> +       /* Update fc info. */
> +       tx_pause =3D !!(link_data.an_info & IXGBE_ACI_LINK_PAUSE_TX);
> +       rx_pause =3D !!(link_data.an_info & IXGBE_ACI_LINK_PAUSE_RX);
> +       if (tx_pause && rx_pause)
> +               hw_fc_info->current_mode =3D ixgbe_fc_full;
> +       else if (tx_pause)
> +               hw_fc_info->current_mode =3D ixgbe_fc_tx_pause;
> +       else if (rx_pause)
> +               hw_fc_info->current_mode =3D ixgbe_fc_rx_pause;
> +       else
> +               hw_fc_info->current_mode =3D ixgbe_fc_none;
> +
> +       li->lse_ena =3D !!(resp->cmd_flags & IXGBE_ACI_LSE_IS_ENABLED);
> +
> +       /* Save link status information. */
> +       if (link)
> +               *link =3D *li;
> +
> +       /* Flag cleared so calling functions don't call AQ again. */
> +       hw->link.get_link_info =3D false;
> +
> +       return 0;
> +}
> +
> +/**
> + * ixgbe_aci_set_event_mask - set event mask
> + * @hw: pointer to the HW struct
> + * @port_num: port number of the physical function
> + * @mask: event mask to be set
> + *
> + * Set the event mask using ACI command (0x0613).
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_aci_set_event_mask(struct ixgbe_hw *hw, u8 port_num, u16 mask)
> +{
> +       struct ixgbe_aci_cmd_set_event_mask *cmd;
> +       struct ixgbe_aci_desc desc;
> +
> +       cmd =3D &desc.params.set_event_mask;
> +
> +       ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_set_event_ma=
sk);
> +
> +       cmd->lport_num =3D port_num;
> +
> +       cmd->event_mask =3D mask;
> +       return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
> +}
> +
> +/**
> + * ixgbe_configure_lse - enable/disable link status events
> + * @hw: pointer to the HW struct
> + * @activate: true for enable lse, false otherwise
> + * @mask: event mask to be set; a set bit means deactivation of the
> + * corresponding event
> + *
> + * Set the event mask and then enable or disable link status events
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_configure_lse(struct ixgbe_hw *hw, bool activate, u16 mask)
> +{
> +       int err;
> +
> +       err =3D ixgbe_aci_set_event_mask(hw, (u8)hw->bus.func, mask);
> +       if (err)
> +               return err;
> +
> +       /* Enabling link status events generation by fw */
> +       err =3D ixgbe_aci_get_link_info(hw, activate, NULL);
[Kalesh] You can simplify this as:
return ixgbe_aci_get_link_info(hw, activate, NULL);
> +       if (err)
> +               return err;
> +
> +       return 0;
> +}
> +
> +/**
> + * ixgbe_get_media_type_e610 - Gets media type
> + * @hw: pointer to the HW struct
> + *
> + * In order to get the media type, the function gets PHY
> + * capabilities and later on use them to identify the PHY type
> + * checking phy_type_high and phy_type_low.
> + *
> + * Return: the type of media in form of ixgbe_media_type enum
> + * or ixgbe_media_type_unknown in case of an error.
> + */
> +enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw)
> +{
> +       struct ixgbe_aci_cmd_get_phy_caps_data pcaps;
> +       int rc;
> +
> +       rc =3D ixgbe_update_link_info(hw);
> +       if (rc)
> +               return ixgbe_media_type_unknown;
> +
> +       /* If there is no link but PHY (dongle) is available SW should us=
e
> +        * Get PHY Caps admin command instead of Get Link Status, find mo=
st
> +        * significant bit that is set in PHY types reported by the comma=
nd
> +        * and use it to discover media type.
> +        */
> +       if (!(hw->link.link_info.link_info & IXGBE_ACI_LINK_UP) &&
> +           (hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE)) {
> +               int highest_bit;
> +
> +               /* Get PHY Capabilities */
> +               rc =3D ixgbe_aci_get_phy_caps(hw, false,
> +                                           IXGBE_ACI_REPORT_TOPO_CAP_MED=
IA,
> +                                           &pcaps);
> +               if (rc)
> +                       return ixgbe_media_type_unknown;
> +
> +               highest_bit =3D fls64(pcaps.phy_type_high);
> +               if (highest_bit) {
> +                       hw->link.link_info.phy_type_high =3D
> +                               BIT_ULL(highest_bit - 1);
> +                       hw->link.link_info.phy_type_low =3D 0;
> +               } else {
> +                       highest_bit =3D fls64(pcaps.phy_type_low);
> +                       if (highest_bit)
> +                               hw->link.link_info.phy_type_low =3D
> +                                       BIT_ULL(highest_bit - 1);
> +               }
> +       }
> +
> +       /* Based on link status or search above try to discover media typ=
e. */
> +       hw->phy.media_type =3D ixgbe_get_media_type_from_phy_type(hw);
> +
> +       return hw->phy.media_type;
> +}
> +
> +/**
> + * ixgbe_setup_link_e610 - Set up link
> + * @hw: pointer to hardware structure
> + * @speed: new link speed
> + * @autoneg_wait: true when waiting for completion is needed
> + *
> + * Set up the link with the specified speed.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_setup_link_e610(struct ixgbe_hw *hw, ixgbe_link_speed speed,
> +                         bool autoneg_wait)
> +{
> +       /* Simply request FW to perform proper PHY setup */
> +       return hw->phy.ops.setup_link_speed(hw, speed, autoneg_wait);
> +}
> +
> +/**
> + * ixgbe_check_link_e610 - Determine link and speed status
> + * @hw: pointer to hardware structure
> + * @speed: pointer to link speed
> + * @link_up: true when link is up
> + * @link_up_wait_to_complete: bool used to wait for link up or not
> + *
> + * Determine if the link is up and the current link speed
> + * using ACI command (0x0607).
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_check_link_e610(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
> +                         bool *link_up, bool link_up_wait_to_complete)
> +{
> +       int err;
> +       u32 i;
> +
> +       if (!speed || !link_up)
> +               return -EINVAL;
> +
> +       /* Set get_link_info flag to ensure that fresh
> +        * link information will be obtained from FW
> +        * by sending Get Link Status admin command.
> +        */
> +       hw->link.get_link_info =3D true;
> +
> +       /* Update link information in adapter context. */
> +       err =3D ixgbe_get_link_status(hw, link_up);
> +       if (err)
> +               return err;
> +
> +       /* Wait for link up if it was requested. */
> +       if (link_up_wait_to_complete && !(*link_up)) {
> +               for (i =3D 0; i < hw->mac.max_link_up_time; i++) {
> +                       msleep(100);
> +                       hw->link.get_link_info =3D true;
> +                       err =3D ixgbe_get_link_status(hw, link_up);
> +                       if (err)
> +                               return err;
> +                       if (*link_up)
> +                               break;
> +               }
> +       }
> +
> +       /* Use link information in adapter context updated by the call
> +        * to ixgbe_get_link_status() to determine current link speed.
> +        * Link speed information is valid only when link up was
> +        * reported by FW.
> +        */
> +       if (*link_up) {
> +               switch (hw->link.link_info.link_speed) {
> +               case IXGBE_ACI_LINK_SPEED_10MB:
> +                       *speed =3D IXGBE_LINK_SPEED_10_FULL;
> +                       break;
> +               case IXGBE_ACI_LINK_SPEED_100MB:
> +                       *speed =3D IXGBE_LINK_SPEED_100_FULL;
> +                       break;
> +               case IXGBE_ACI_LINK_SPEED_1000MB:
> +                       *speed =3D IXGBE_LINK_SPEED_1GB_FULL;
> +                       break;
> +               case IXGBE_ACI_LINK_SPEED_2500MB:
> +                       *speed =3D IXGBE_LINK_SPEED_2_5GB_FULL;
> +                       break;
> +               case IXGBE_ACI_LINK_SPEED_5GB:
> +                       *speed =3D IXGBE_LINK_SPEED_5GB_FULL;
> +                       break;
> +               case IXGBE_ACI_LINK_SPEED_10GB:
> +                       *speed =3D IXGBE_LINK_SPEED_10GB_FULL;
> +                       break;
> +               default:
> +                       *speed =3D IXGBE_LINK_SPEED_UNKNOWN;
> +                       break;
> +               }
> +       } else {
> +               *speed =3D IXGBE_LINK_SPEED_UNKNOWN;
> +       }
> +
> +       return 0;
> +}
> +
> +/**
> + * ixgbe_get_link_capabilities_e610 - Determine link capabilities
> + * @hw: pointer to hardware structure
> + * @speed: pointer to link speed
> + * @autoneg: true when autoneg or autotry is enabled
> + *
> + * Determine speed and AN parameters of a link.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_get_link_capabilities_e610(struct ixgbe_hw *hw,
> +                                    ixgbe_link_speed *speed,
> +                                    bool *autoneg)
> +{
> +       if (!speed || !autoneg)
> +               return -EINVAL;
> +
> +       *autoneg =3D true;
> +       *speed =3D hw->phy.speeds_supported;
> +
> +       return 0;
> +}
> +
> +/**
> + * ixgbe_cfg_phy_fc - Configure PHY Flow Control (FC) data based on FC m=
ode
> + * @hw: pointer to hardware structure
> + * @cfg: PHY configuration data to set FC mode
> + * @req_mode: FC mode to configure
> + *
> + * Configures PHY Flow Control according to the provided configuration.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_cfg_phy_fc(struct ixgbe_hw *hw,
> +                    struct ixgbe_aci_cmd_set_phy_cfg_data *cfg,
> +                    enum ixgbe_fc_mode req_mode)
> +{
> +       u8 pause_mask =3D 0x0;
> +
> +       if (!cfg)
> +               return -EINVAL;
> +
> +       switch (req_mode) {
> +       case ixgbe_fc_full:
> +               pause_mask |=3D IXGBE_ACI_PHY_EN_TX_LINK_PAUSE;
> +               pause_mask |=3D IXGBE_ACI_PHY_EN_RX_LINK_PAUSE;
> +               break;
> +       case ixgbe_fc_rx_pause:
> +               pause_mask |=3D IXGBE_ACI_PHY_EN_RX_LINK_PAUSE;
> +               break;
> +       case ixgbe_fc_tx_pause:
> +               pause_mask |=3D IXGBE_ACI_PHY_EN_TX_LINK_PAUSE;
> +               break;
> +       default:
> +               break;
> +       }
> +
> +       /* Clear the old pause settings. */
> +       cfg->caps &=3D ~(IXGBE_ACI_PHY_EN_TX_LINK_PAUSE |
> +               IXGBE_ACI_PHY_EN_RX_LINK_PAUSE);
> +
> +       /* Set the new capabilities. */
> +       cfg->caps |=3D pause_mask;
> +
> +       return 0;
> +}
> +
> +/**
> + * ixgbe_setup_fc_e610 - Set up flow control
> + * @hw: pointer to hardware structure
> + *
> + * Set up flow control. This has to be done during init time.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_setup_fc_e610(struct ixgbe_hw *hw)
> +{
> +       struct ixgbe_aci_cmd_get_phy_caps_data pcaps =3D { 0 };
> +       struct ixgbe_aci_cmd_set_phy_cfg_data cfg =3D { 0 };
> +       int err;
> +
> +       /* Get the current PHY config */
> +       err =3D ixgbe_aci_get_phy_caps(hw, false,
> +                                    IXGBE_ACI_REPORT_ACTIVE_CFG, &pcaps)=
;
> +       if (err)
> +               return err;
> +
> +       ixgbe_copy_phy_caps_to_cfg(&pcaps, &cfg);
> +
> +       /* Configure the set PHY data */
> +       err =3D ixgbe_cfg_phy_fc(hw, &cfg, hw->fc.requested_mode);
> +       if (err)
> +               return err;
> +
> +       /* If the capabilities have changed, then set the new config */
> +       if (cfg.caps !=3D pcaps.caps) {
> +               cfg.caps |=3D IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT;
> +
> +               err =3D ixgbe_aci_set_phy_cfg(hw, &cfg);
> +               if (err)
> +                       return err;
> +       }
> +
> +       return err;
> +}
> +
> +/**
> + * ixgbe_fc_autoneg_e610 - Configure flow control
> + * @hw: pointer to hardware structure
> + *
> + * Configure Flow Control.
> + */
> +void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw)
> +{
> +       int err;
> +
> +       /* Get current link err.
> +        * Current FC mode will be stored in the hw context.
> +        */
> +       err =3D ixgbe_aci_get_link_info(hw, false, NULL);
> +       if (err)
> +               goto no_autoneg;
> +
> +       /* Check if the link is up */
> +       if (!(hw->link.link_info.link_info & IXGBE_ACI_LINK_UP))
> +               goto no_autoneg;
> +
> +       /* Check if auto-negotiation has completed */
> +       if (!(hw->link.link_info.an_info & IXGBE_ACI_AN_COMPLETED))
> +               goto no_autoneg;
> +
> +       hw->fc.fc_was_autonegged =3D true;
> +       return;
> +
> +no_autoneg:
> +       hw->fc.fc_was_autonegged =3D false;
> +       hw->fc.current_mode =3D hw->fc.requested_mode;
> +}
> +
> +/**
> + * ixgbe_disable_rx_e610 - Disable RX unit
> + * @hw: pointer to hardware structure
> + *
> + * Disable RX DMA unit on E610 with use of ACI command (0x000C).
> + *
> + * Return: the exit code of the operation.
> + */
> +void ixgbe_disable_rx_e610(struct ixgbe_hw *hw)
> +{
> +       u32 rxctrl =3D IXGBE_READ_REG(hw, IXGBE_RXCTRL);
> +       u32 pfdtxgswc;
> +       int err;
> +
> +       if (!(rxctrl & IXGBE_RXCTRL_RXEN))
> +               return;
> +
> +       pfdtxgswc =3D IXGBE_READ_REG(hw, IXGBE_PFDTXGSWC);
> +       if (pfdtxgswc & IXGBE_PFDTXGSWC_VT_LBEN) {
> +               pfdtxgswc &=3D ~IXGBE_PFDTXGSWC_VT_LBEN;
> +               IXGBE_WRITE_REG(hw, IXGBE_PFDTXGSWC, pfdtxgswc);
> +               hw->mac.set_lben =3D true;
> +       } else {
> +               hw->mac.set_lben =3D false;
> +       }
> +
> +       err =3D ixgbe_aci_disable_rxen(hw);
> +
> +       /* If we fail - disable RX using register write */
> +       if (err) {
> +               rxctrl =3D IXGBE_READ_REG(hw, IXGBE_RXCTRL);
> +               if (rxctrl & IXGBE_RXCTRL_RXEN) {
> +                       rxctrl &=3D ~IXGBE_RXCTRL_RXEN;
> +                       IXGBE_WRITE_REG(hw, IXGBE_RXCTRL, rxctrl);
> +               }
> +       }
> +}
> +
> +/**
> + * ixgbe_init_phy_ops_e610 - PHY specific init
> + * @hw: pointer to hardware structure
> + *
> + * Initialize any function pointers that were not able to be
> + * set during init_shared_code because the PHY type was not known.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_init_phy_ops_e610(struct ixgbe_hw *hw)
> +{
> +       struct ixgbe_mac_info *mac =3D &hw->mac;
> +       struct ixgbe_phy_info *phy =3D &hw->phy;
> +       int ret_val;
> +
> +       if (mac->ops.get_media_type(hw) =3D=3D ixgbe_media_type_copper)
> +               phy->ops.set_phy_power =3D ixgbe_set_phy_power_e610;
> +       else
> +               phy->ops.set_phy_power =3D NULL;
> +
> +       /* Identify the PHY */
> +       ret_val =3D phy->ops.identify(hw);
[Kalesh] You can change it to:
return phy->ops.identify(hw);
> +       if (ret_val)
> +               return ret_val;
> +
> +       return ret_val;
> +}
> +
> +/**
> + * ixgbe_identify_phy_e610 - Identify PHY
> + * @hw: pointer to hardware structure
> + *
> + * Determine PHY type, supported speeds and PHY ID.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_identify_phy_e610(struct ixgbe_hw *hw)
> +{
> +       struct ixgbe_aci_cmd_get_phy_caps_data pcaps;
> +       int err;
> +
> +       /* Set PHY type */
> +       hw->phy.type =3D ixgbe_phy_fw;
> +
> +       err =3D ixgbe_aci_get_phy_caps(hw, false,
> +                                    IXGBE_ACI_REPORT_TOPO_CAP_MEDIA, &pc=
aps);
> +       if (err)
> +               return err;
> +
> +       if (!(pcaps.module_compliance_enforcement &
> +             IXGBE_ACI_MOD_ENFORCE_STRICT_MODE)) {
> +               /* Handle lenient mode */
> +               err =3D ixgbe_aci_get_phy_caps(hw, false,
> +                                            IXGBE_ACI_REPORT_TOPO_CAP_NO=
_MEDIA,
> +                                            &pcaps);
> +               if (err)
> +                       return err;
> +       }
> +
> +       /* Determine supported speeds */
> +       hw->phy.speeds_supported =3D IXGBE_LINK_SPEED_UNKNOWN;
> +
> +       if (pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_10BASE_T ||
> +           pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_10M_SGMII)
> +               hw->phy.speeds_supported |=3D IXGBE_LINK_SPEED_10_FULL;
> +       if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_100BASE_TX ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_100M_SGMII ||
> +           pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_100M_USXGMII)
> +               hw->phy.speeds_supported |=3D IXGBE_LINK_SPEED_100_FULL;
> +       if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_T  ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_SX ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_LX ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1000BASE_KX ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_1G_SGMII    ||
> +           pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_1G_USXGMII)
> +               hw->phy.speeds_supported |=3D IXGBE_LINK_SPEED_1GB_FULL;
> +       if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_T       ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_DA      ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_SR      ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_LR      ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1  ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_ACC ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_10G_SFI_C2C     ||
> +           pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_10G_USXGMII)
> +               hw->phy.speeds_supported |=3D IXGBE_LINK_SPEED_10GB_FULL;
> +
> +       /* 2.5 and 5 Gbps link speeds must be excluded from the
> +        * auto-negotiation set used during driver initialization due to
> +        * compatibility issues with certain switches. Those issues do no=
t
> +        * exist in case of E610 2.5G SKU device (0x57b1).
> +        */
> +       if (!hw->phy.autoneg_advertised &&
> +           hw->device_id !=3D IXGBE_DEV_ID_E610_2_5G_T)
> +               hw->phy.autoneg_advertised =3D hw->phy.speeds_supported;/=
/PK
> +
> +       if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_T   ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_X   ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_2500BASE_KX  ||
> +           pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_SGMII ||
> +           pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_2500M_USXGMII)
> +               hw->phy.speeds_supported |=3D IXGBE_LINK_SPEED_2_5GB_FULL=
;
> +
> +       if (!hw->phy.autoneg_advertised &&
> +           hw->device_id =3D=3D IXGBE_DEV_ID_E610_2_5G_T)
> +               hw->phy.autoneg_advertised =3D hw->phy.speeds_supported;/=
/PK
> +
> +       if (pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_T  ||
> +           pcaps.phy_type_low  & IXGBE_PHY_TYPE_LOW_5GBASE_KR ||
> +           pcaps.phy_type_high & IXGBE_PHY_TYPE_HIGH_5G_USXGMII)
> +               hw->phy.speeds_supported |=3D IXGBE_LINK_SPEED_5GB_FULL;
> +
> +       /* Set PHY ID */
> +       memcpy(&hw->phy.id, pcaps.phy_id_oui, sizeof(u32));
> +
> +       hw->phy.eee_speeds_supported =3D IXGBE_LINK_SPEED_10_FULL |
> +                                      IXGBE_LINK_SPEED_100_FULL |
> +                                      IXGBE_LINK_SPEED_1GB_FULL;
> +       hw->phy.eee_speeds_advertised =3D hw->phy.eee_speeds_supported;
> +
> +       return 0;
> +}
> +
> +/**
> + * ixgbe_identify_module_e610 - Identify SFP module type
> + * @hw: pointer to hardware structure
> + *
> + * Identify the SFP module type.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_identify_module_e610(struct ixgbe_hw *hw)
> +{
> +       bool media_available;
> +       u8 module_type;
> +       int err;
> +
> +       err =3D ixgbe_update_link_info(hw);
> +       if (err)
> +               return err;
> +
> +       media_available =3D
> +               (hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE=
);
> +
> +       if (media_available) {
> +               hw->phy.sfp_type =3D ixgbe_sfp_type_unknown;
> +
> +               /* Get module type from hw context updated by
> +                * ixgbe_update_link_info()
> +                */
> +               module_type =3D hw->link.link_info.module_type[IXGBE_ACI_=
MOD_TYPE_IDENT];
> +
> +               if ((module_type & IXGBE_ACI_MOD_TYPE_BYTE1_SFP_PLUS_CU_P=
ASSIVE) ||
> +                   (module_type & IXGBE_ACI_MOD_TYPE_BYTE1_SFP_PLUS_CU_A=
CTIVE)) {
> +                       hw->phy.sfp_type =3D ixgbe_sfp_type_da_cu;
> +               } else if (module_type & IXGBE_ACI_MOD_TYPE_BYTE1_10G_BAS=
E_SR) {
> +                       hw->phy.sfp_type =3D ixgbe_sfp_type_sr;
> +               } else if ((module_type & IXGBE_ACI_MOD_TYPE_BYTE1_10G_BA=
SE_LR) ||
> +                          (module_type & IXGBE_ACI_MOD_TYPE_BYTE1_10G_BA=
SE_LRM)) {
> +                       hw->phy.sfp_type =3D ixgbe_sfp_type_lr;
> +               }
> +       } else {
> +               hw->phy.sfp_type =3D ixgbe_sfp_type_not_present;
> +               return -ENOENT;
> +       }
> +
> +       return 0;
> +}
> +
> +/**
> + * ixgbe_setup_phy_link_e610 - Sets up firmware-controlled PHYs
> + * @hw: pointer to hardware structure
> + *
> + * Set the parameters for the firmware-controlled PHYs.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
> +{
> +       struct ixgbe_aci_cmd_get_phy_caps_data pcaps;
> +       struct ixgbe_aci_cmd_set_phy_cfg_data pcfg;
> +       u8 rmode =3D IXGBE_ACI_REPORT_TOPO_CAP_MEDIA;
> +       u64 sup_phy_type_low, sup_phy_type_high;
> +       int err;
> +
> +       err =3D ixgbe_aci_get_link_info(hw, false, NULL);
> +       if (err)
> +               return err;
> +
> +       /* If media is not available get default config. */
> +       if (!(hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE))
> +               rmode =3D IXGBE_ACI_REPORT_DFLT_CFG;
> +
> +       err =3D ixgbe_aci_get_phy_caps(hw, false, rmode, &pcaps);
> +       if (err)
> +               return err;
> +
> +       sup_phy_type_low =3D pcaps.phy_type_low;
> +       sup_phy_type_high =3D pcaps.phy_type_high;
> +
> +       /* Get Active configuration to avoid unintended changes. */
> +       err =3D ixgbe_aci_get_phy_caps(hw, false, IXGBE_ACI_REPORT_ACTIVE=
_CFG,
> +                                    &pcaps);
> +       if (err)
> +               return err;
> +
> +       ixgbe_copy_phy_caps_to_cfg(&pcaps, &pcfg);
> +
> +       /* Set default PHY types for a given speed */
> +       pcfg.phy_type_low =3D 0;
> +       pcfg.phy_type_high =3D 0;
> +
> +       if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10_FULL) {
> +               pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_10BASE_T;
> +               pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_10M_SGMII;
> +       }
> +       if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_100_FULL) {
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_100BASE_TX;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_100M_SGMII;
> +               pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_100M_USXGMII;
> +       }
> +       if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_1GB_FULL) {
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_1000BASE_T;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_1000BASE_SX;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_1000BASE_LX;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_1000BASE_KX;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_1G_SGMII;
> +               pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_1G_USXGMII;
> +       }
> +       if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_2_5GB_FULL) {
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_2500BASE_T;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_2500BASE_X;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_2500BASE_KX;
> +               pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_2500M_SGMII;
> +               pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_2500M_USXGMII=
;
> +       }
> +       if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_5GB_FULL) {
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_5GBASE_T;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_5GBASE_KR;
> +               pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_5G_USXGMII;
> +       }
> +       if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10GB_FULL) {
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10GBASE_T;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10G_SFI_DA;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10GBASE_SR;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10GBASE_LR;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1=
;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_AC=
C;
> +               pcfg.phy_type_low  |=3D IXGBE_PHY_TYPE_LOW_10G_SFI_C2C;
> +               pcfg.phy_type_high |=3D IXGBE_PHY_TYPE_HIGH_10G_USXGMII;
> +       }
> +
> +       /* Mask the set values to avoid requesting unsupported link types=
 */
> +       pcfg.phy_type_low &=3D sup_phy_type_low;
> +       pcfg.phy_type_high &=3D sup_phy_type_high;
> +
> +       if (pcfg.phy_type_high !=3D pcaps.phy_type_high ||
> +           pcfg.phy_type_low !=3D pcaps.phy_type_low ||
> +           pcfg.caps !=3D pcaps.caps) {
> +               pcfg.caps |=3D IXGBE_ACI_PHY_ENA_LINK;
> +               pcfg.caps |=3D IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT;
> +
> +               err =3D ixgbe_aci_set_phy_cfg(hw, &pcfg);
> +               if (err)
> +                       return err;
> +       }
> +
> +       return 0;
> +}
> +
> +/**
> + * ixgbe_set_phy_power_e610 - Control power for copper PHY
> + * @hw: pointer to hardware structure
> + * @on: true for on, false for off
> + *
> + * Set the power on/off of the PHY
> + * by getting its capabilities and setting the appropriate
> + * configuration parameters.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_set_phy_power_e610(struct ixgbe_hw *hw, bool on)
> +{
> +       struct ixgbe_aci_cmd_get_phy_caps_data phy_caps =3D { 0 };
> +       struct ixgbe_aci_cmd_set_phy_cfg_data phy_cfg =3D { 0 };
> +       int err;
> +
> +       err =3D ixgbe_aci_get_phy_caps(hw, false,
> +                                    IXGBE_ACI_REPORT_ACTIVE_CFG,
> +                                    &phy_caps);
> +       if (err)
> +               return err;
> +
> +       ixgbe_copy_phy_caps_to_cfg(&phy_caps, &phy_cfg);
> +
> +       if (on)
> +               phy_cfg.caps &=3D ~IXGBE_ACI_PHY_ENA_LOW_POWER;
> +       else
> +               phy_cfg.caps |=3D IXGBE_ACI_PHY_ENA_LOW_POWER;
> +
> +       /* PHY is already in requested power mode. */
> +       if (phy_caps.caps =3D=3D phy_cfg.caps)
> +               return 0;
> +
> +       phy_cfg.caps |=3D IXGBE_ACI_PHY_ENA_LINK;
> +       phy_cfg.caps |=3D IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT;
> +
> +       err =3D ixgbe_aci_set_phy_cfg(hw, &phy_cfg);
[Kalesh] Change it as:
return  ixgbe_aci_set_phy_cfg(hw, &phy_cfg);
> +
> +       return err;
> +}
> +
> +/**
> + * ixgbe_enter_lplu_e610 - Transition to low power states
> + * @hw: pointer to hardware structure
> + *
> + * Configures Low Power Link Up on transition to low power states
> + * (from D0 to non-D0). Link is required to enter LPLU so avoid resettin=
g the
> + * X557 PHY immediately prior to entering LPLU.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_enter_lplu_e610(struct ixgbe_hw *hw)
> +{
> +       struct ixgbe_aci_cmd_get_phy_caps_data phy_caps =3D { 0 };
> +       struct ixgbe_aci_cmd_set_phy_cfg_data phy_cfg =3D { 0 };
> +       int err;
> +
> +       err =3D ixgbe_aci_get_phy_caps(hw, false,
> +                                    IXGBE_ACI_REPORT_ACTIVE_CFG,
> +                                    &phy_caps);
> +       if (err)
> +               return err;
> +
> +       ixgbe_copy_phy_caps_to_cfg(&phy_caps, &phy_cfg);
> +
> +       phy_cfg.low_power_ctrl_an |=3D IXGBE_ACI_PHY_EN_D3COLD_LOW_POWER_=
AUTONEG;
> +
> +       err =3D ixgbe_aci_set_phy_cfg(hw, &phy_cfg);
[Kalesh] Same comment as above
> +
> +       return err;
> +}
> +
> +/**
> + * ixgbe_aci_get_netlist_node - get a node handle
> + * @hw: pointer to the hw struct
> + * @cmd: get_link_topo AQ structure
> + * @node_part_number: output node part number if node found
> + * @node_handle: output node handle parameter if node found
> + *
> + * Get the netlist node and assigns it to
> + * the provided handle using ACI command (0x06E0).
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_aci_get_netlist_node(struct ixgbe_hw *hw,
> +                              struct ixgbe_aci_cmd_get_link_topo *cmd,
> +                              u8 *node_part_number, u16 *node_handle)
> +{
> +       struct ixgbe_aci_desc desc;
> +
> +       ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_top=
o);
> +       desc.params.get_link_topo =3D *cmd;
> +
> +       if (ixgbe_aci_send_cmd(hw, &desc, NULL, 0))
> +               return -EOPNOTSUPP;
> +
> +       if (node_handle)
> +               *node_handle =3D desc.params.get_link_topo.addr.handle;
> +       if (node_part_number)
> +               *node_part_number =3D desc.params.get_link_topo.node_part=
_num;
> +
> +       return 0;
> +}
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/=
ethernet/intel/ixgbe/ixgbe_e610.h
> index 5c5a676..4a4f969 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> @@ -27,5 +27,37 @@ int ixgbe_aci_get_phy_caps(struct ixgbe_hw *hw, bool q=
ual_mods, u8 report_mode,
>                            struct ixgbe_aci_cmd_get_phy_caps_data *pcaps)=
;
>  void ixgbe_copy_phy_caps_to_cfg(struct ixgbe_aci_cmd_get_phy_caps_data *=
caps,
>                                 struct ixgbe_aci_cmd_set_phy_cfg_data *cf=
g);
> +int ixgbe_aci_set_phy_cfg(struct ixgbe_hw *hw,
> +                         struct ixgbe_aci_cmd_set_phy_cfg_data *cfg);
> +int ixgbe_aci_set_link_restart_an(struct ixgbe_hw *hw, bool ena_link);
> +int ixgbe_update_link_info(struct ixgbe_hw *hw);
> +int ixgbe_get_link_status(struct ixgbe_hw *hw, bool *link_up);
> +int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
> +                           struct ixgbe_link_status *link);
> +int ixgbe_aci_set_event_mask(struct ixgbe_hw *hw, u8 port_num, u16 mask)=
;
> +int ixgbe_configure_lse(struct ixgbe_hw *hw, bool activate, u16 mask);
> +enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw);
> +int ixgbe_setup_link_e610(struct ixgbe_hw *hw, ixgbe_link_speed speed,
> +                         bool autoneg_wait);
> +int ixgbe_check_link_e610(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
> +                         bool *link_up, bool link_up_wait_to_complete);
> +int ixgbe_get_link_capabilities_e610(struct ixgbe_hw *hw,
> +                                    ixgbe_link_speed *speed,
> +                                    bool *autoneg);
> +int ixgbe_cfg_phy_fc(struct ixgbe_hw *hw,
> +                    struct ixgbe_aci_cmd_set_phy_cfg_data *cfg,
> +                    enum ixgbe_fc_mode req_mode);
> +int ixgbe_setup_fc_e610(struct ixgbe_hw *hw);
> +void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw);
> +void ixgbe_disable_rx_e610(struct ixgbe_hw *hw);
> +int ixgbe_init_phy_ops_e610(struct ixgbe_hw *hw);
> +int ixgbe_identify_phy_e610(struct ixgbe_hw *hw);
> +int ixgbe_identify_module_e610(struct ixgbe_hw *hw);
> +int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw);
> +int ixgbe_set_phy_power_e610(struct ixgbe_hw *hw, bool on);
> +int ixgbe_enter_lplu_e610(struct ixgbe_hw *hw);
> +int ixgbe_aci_get_netlist_node(struct ixgbe_hw *hw,
> +                              struct ixgbe_aci_cmd_get_link_topo *cmd,
> +                              u8 *node_part_number, u16 *node_handle);
>
>  #endif /* _IXGBE_E610_H_ */
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers=
/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> index 6c6d990..1f97652 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> @@ -652,6 +652,7 @@ struct ixgbe_aci_cmd_link_topo_params {
>  #define IXGBE_ACI_LINK_TOPO_NODE_TYPE_CLK_MUX  10
>  #define IXGBE_ACI_LINK_TOPO_NODE_TYPE_GPS      11
>  #define IXGBE_ACI_LINK_TOPO_NODE_CTX_S         4
> +#define IXGBE_ACI_LINK_TOPO_NODE_CTX_M         GENMASK(7, 4)
>  #define IXGBE_ACI_LINK_TOPO_NODE_CTX_GLOBAL                    0
>  #define IXGBE_ACI_LINK_TOPO_NODE_CTX_BOARD                     1
>  #define IXGBE_ACI_LINK_TOPO_NODE_CTX_PORT                      2
> --
> 2.43.0
>
>


--=20
Regards,
Kalesh A P

--000000000000000aaa0624ac24a2
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
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
AQkEMSIEIMd2iM/QPV7zA179pSjqYEKZ6BpTvRH8Wh8Hx3EExH2oMBgGCSqGSIb3DQEJAzELBgkq
hkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MTAxNzEzMjY1N1owaQYJKoZIhvcNAQkPMVwwWjAL
BglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG
9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQB4svg9Y1jp
vV0rzLiy/4Ne8eN1xdkGbtS49cR9sEmWpr8EzMwNMLeqLcTDrLp/DdGmlw/ImMV376NoLpa3qMry
p3wBiHe9aErIptyY3uvB+QApIfSLzgA/InTfwMOzDOQuSAeHCVEbR6TporNutZdMZfsqnQ0pMbuu
JtRmf7HVq53cWtN3zeYKqcLhvnHsvfx8pLD65bFjSiJFLR6Gf4oNyNi+KcH4JR3LfTXf79FEgV/q
6VzeYTYxl8cC+ykGU3PGozg3uYDOH1eQ0bqi70l1Tth/aBMhjrjOtX0HFwI9wownCNLbG90E8N5i
ycCiSxAcwe/yDoev1n1UYa2hhpU8
--000000000000000aaa0624ac24a2--
