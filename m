Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6B2624725
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 17:37:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3555360F67;
	Thu, 10 Nov 2022 16:37:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3555360F67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668098254;
	bh=Ld/Vg8BObXHOn0SFqRpZmdEoy+fVY01+Vov4iKB1p8w=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lH4GtFzCUCm7zMba+/qux2zADjNLJb9g37dCdAly3fpYZD1SPydxpwk2s2gXrcLDi
	 GT1Zz0YSZomAVNpsbmxRZX1Ih/PUg0CyKIK+E69n8hnPP3GTSDHQRa+B7tpUijAhSZ
	 ejB4seIqGRaDHCQLHB8pucOI55I2yfMlXzH+56+hcAyeljmIV/7JJeeyKBFML9twx6
	 689zQLDnjb0EqHU7gRY/rK7uZ9DmcaZBWbf24R7gam2oCoswKw0FCkhQVwFFVRBQva
	 C9EA6vRIjS3IL4waikXvng0xtAi2cTKgWYD8Lv5YFUQavNHF7O067LdpXriS9YNdFx
	 vQffz6ucVjVUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKXiCNNkleYV; Thu, 10 Nov 2022 16:37:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD90460F45;
	Thu, 10 Nov 2022 16:37:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD90460F45
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D3C8C1BF393
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 13:46:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB42D80D7E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 13:46:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB42D80D7E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B-RX4R4oN4Oa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 13:46:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0E3580C42
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com
 [IPv6:2607:f8b0:4864:20::e35])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0E3580C42
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 13:46:23 +0000 (UTC)
Received: by mail-vs1-xe35.google.com with SMTP id 1so2113148vsx.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 05:46:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=v+pFJMLDp1qggiAS6ImPdezMOPhUD1SEVsCR0E7TWYQ=;
 b=6SrfKvovlumK2X8P51x9afpfETmF3nPtldpQktmvYd6HIW/F0IWvg+wppn4xNV51A+
 BhI87s7KZQGDy7PtZqzV7k3EKZkbBT4nAhkdeTO2IgDGqekuPq4r73UwbkkzLC5j1/8y
 qvnAmLy6sizBd5ZN0MAPeR8vjnxOkelIfSJhVq7Cim6y00HKEkwAUlVBKg+Yv9b6fqFq
 jPdK0qYdqYFKeXyOP6+jpBU9Nf5cbtwQSGgxaJzQJpO2nqkXcQpXnDPDVs8iJwBg9NqL
 R/HPScZVpRCGv4FZCqHYxka3uSPhcB9p88kEQj3nemzIJiUG5ge44FrThpstv7tPe2q/
 k2Lw==
X-Gm-Message-State: ACrzQf1L4awQMPleEgru4pib2R664HFexrycKPaL3RTZkWPw3asj1Mkr
 ObFL++Qm7bWF3vopC48X+SysnIDnP+c61qq9kpk=
X-Google-Smtp-Source: AMsMyM7G6IP2cRfd2rPAW+EDeHfuSurvTC/5Cxgd+mRiztpcMRPK4NKj1pmLjd18Pcyyz7T2Pl1029InDqx/uNQTtTE=
X-Received: by 2002:a05:6102:ec5:b0:3ac:c9c8:221d with SMTP id
 m5-20020a0561020ec500b003acc9c8221dmr32561414vst.82.1668087982335; Thu, 10
 Nov 2022 05:46:22 -0800 (PST)
MIME-Version: 1.0
References: <20221110074038.94804-1-tirthendu.sarkar@intel.com>
In-Reply-To: <20221110074038.94804-1-tirthendu.sarkar@intel.com>
From: Tirthendu Sarkar <tirtha@gmail.com>
Date: Thu, 10 Nov 2022 19:16:11 +0530
Message-ID: <CANWO4h0n-ZgFtPtuYuRohhi=cpRc93Mawz125fNg3BqJd1x0bQ@mail.gmail.com>
To: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
X-Mailman-Approved-At: Thu, 10 Nov 2022 16:37:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=v+pFJMLDp1qggiAS6ImPdezMOPhUD1SEVsCR0E7TWYQ=;
 b=N/onm1Cp03poVRt7MPtVYD5jLvDTWGVN5kLlpvtsoeDcr0XTRLGOXsnAEhTMRDajpY
 GXGas8rNsC4kQBgTXt8J8/bz9Qf3h1FT+MrHvNL1qZRoUahSyc4NP3Wf/XlwODY3PVgg
 Ig9qtBtu2raVxyafix+ObIYQ1tRTB3PVjoeULNuJS/sCaSKeuYoCDapfp+L4mkYD2+ok
 lMuYq6DrStWHoNmJCBkZGPqEuQeZEym3ghGvK3PTO0eRRMTLnC5M4YGs9bOexmmKqL3a
 N5qUXYH2393OSd12jXbzYxAKCJE1rvNrxTCEvwLVMOr0Im1OsbjeRRzycvUK/hKPk9uq
 z2eA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=N/onm1Cp
Subject: Re: [Intel-wired-lan] [PATCH intel-next v2] i40e: allow toggling
 loopback mode via ndo_set_features callback
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
Cc: intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com,
 netdev@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8729717914475251829=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8729717914475251829==
Content-Type: multipart/alternative; boundary="000000000000a42a0305ed1dffc3"

--000000000000a42a0305ed1dffc3
Content-Type: text/plain; charset="UTF-8"

I may have to make some more changes. Please ignore this patch. Will send
v3 patch with the changes.

On Thu, Nov 10, 2022 at 1:23 PM Tirthendu Sarkar <tirthendu.sarkar@intel.com>
wrote:

> Add support for NETIF_F_LOOPBACK. This feature can be set via:
> $ ethtool -K eth0 loopback <on|off>
>
> This sets the MAC Tx->Rx loopback.
>
> Feature can be useful for local data path tests.
>
> Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 22 +++++++++++++++
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 28 ++++++++++++++++++-
>  .../net/ethernet/intel/i40e/i40e_prototype.h  |  3 ++
>  3 files changed, 52 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c
> b/drivers/net/ethernet/intel/i40e/i40e_common.c
> index 4f01e2a6b6bb..73d2c700dc35 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
> @@ -1830,6 +1830,28 @@ i40e_status i40e_aq_set_phy_int_mask(struct i40e_hw
> *hw,
>         return status;
>  }
>
> +/**
> + * i40e_aq_set_mac_loopback
> + * @hw: pointer to the HW struct
> + * @ena_lpbk: Enable or Disable loopback
> + * @cmd_details: pointer to command details structure or NULL
> + *
> + * Enable/disable loopback on a given port
> + */
> +i40e_status i40e_aq_set_mac_loopback(struct i40e_hw *hw, bool ena_lpbk,
> +                                    struct i40e_asq_cmd_details
> *cmd_details)
> +{
> +       struct i40e_aq_desc desc;
> +       struct i40e_aqc_set_lb_mode *cmd =
> +               (struct i40e_aqc_set_lb_mode *)&desc.params.raw;
> +
> +       i40e_fill_default_direct_cmd_desc(&desc,
> i40e_aqc_opc_set_lb_modes);
> +       if (ena_lpbk)
> +               cmd->lb_mode = cpu_to_le16(I40E_AQ_LB_MAC_LOCAL);
> +
> +       return i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
> +}
> +
>  /**
>   * i40e_aq_set_phy_debug
>   * @hw: pointer to the hw struct
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 1a1fab94205d..f134ae9169d7 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -12919,6 +12919,28 @@ static void i40e_clear_rss_lut(struct i40e_vsi
> *vsi)
>         }
>  }
>
> +/**
> + * i40e_set_loopback - turn on/off loopback mode on underlying PF
> + * @vsi: ptr to VSI
> + * @ena: flag to indicate the on/off setting
> + */
> +static int i40e_set_loopback(struct i40e_vsi *vsi, bool ena)
> +{
> +       bool if_running = netif_running(vsi->netdev);
> +       int ret;
> +
> +       if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
> +               i40e_down(vsi);
> +
> +       ret = i40e_aq_set_mac_loopback(&vsi->back->hw, ena, NULL);
> +       if (ret)
> +               netdev_err(vsi->netdev, "Failed to toggle loopback
> state\n");
> +       if (if_running)
> +               i40e_up(vsi);
> +
> +       return ret;
> +}
> +
>  /**
>   * i40e_set_features - set the netdev feature flags
>   * @netdev: ptr to the netdev being adjusted
> @@ -12959,6 +12981,10 @@ static int i40e_set_features(struct net_device
> *netdev,
>         if (need_reset)
>                 i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
>
> +       if (features & NETIF_F_LOOPBACK)
> +               if (i40e_set_loopback(vsi, !!(features &
> NETIF_F_LOOPBACK)))
> +                       return -EINVAL;
> +
>         return 0;
>  }
>
> @@ -13721,7 +13747,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
>         if (!(pf->flags & I40E_FLAG_MFP_ENABLED))
>                 hw_features |= NETIF_F_NTUPLE | NETIF_F_HW_TC;
>
> -       netdev->hw_features |= hw_features;
> +       netdev->hw_features |= hw_features | NETIF_F_LOOPBACK;
>
>         netdev->features |= hw_features | NETIF_F_HW_VLAN_CTAG_FILTER;
>         netdev->hw_enc_features |= NETIF_F_TSO_MANGLEID;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> index ebdcde6f1aeb..9a71121420c3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> @@ -105,6 +105,9 @@ enum i40e_status_code i40e_aq_set_phy_config(struct
> i40e_hw *hw,
>                                 struct i40e_asq_cmd_details *cmd_details);
>  enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
>                                   bool atomic_reset);
> +i40e_status i40e_aq_set_mac_loopback(struct i40e_hw *hw,
> +                                    bool ena_lpbk,
> +                                    struct i40e_asq_cmd_details
> *cmd_details);
>  i40e_status i40e_aq_set_phy_int_mask(struct i40e_hw *hw, u16 mask,
>                                      struct i40e_asq_cmd_details
> *cmd_details);
>  i40e_status i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
> --
> 2.34.1
>
>

--000000000000a42a0305ed1dffc3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">I m=
ay have to make some more changes. Please ignore this patch. Will send v3 p=
atch with the changes.</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Nov 10, 2022 at 1:23 PM Tirthendu Sar=
kar &lt;<a href=3D"mailto:tirthendu.sarkar@intel.com">tirthendu.sarkar@inte=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Add support for NETIF_F_LOOPBACK. This feature can be set via:<br>
$ ethtool -K eth0 loopback &lt;on|off&gt;<br>
<br>
This sets the MAC Tx-&gt;Rx loopback.<br>
<br>
Feature can be useful for local data path tests.<br>
<br>
Signed-off-by: Tirthendu Sarkar &lt;<a href=3D"mailto:tirthendu.sarkar@inte=
l.com" target=3D"_blank">tirthendu.sarkar@intel.com</a>&gt;<br>
---<br>
=C2=A0drivers/net/ethernet/intel/i40e/i40e_common.c | 22 +++++++++++++++<br=
>
=C2=A0drivers/net/ethernet/intel/i40e/i40e_main.c=C2=A0 =C2=A0| 28 ++++++++=
++++++++++-<br>
=C2=A0.../net/ethernet/intel/i40e/i40e_prototype.h=C2=A0 |=C2=A0 3 ++<br>
=C2=A03 files changed, 52 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/et=
hernet/intel/i40e/i40e_common.c<br>
index 4f01e2a6b6bb..73d2c700dc35 100644<br>
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c<br>
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c<br>
@@ -1830,6 +1830,28 @@ i40e_status i40e_aq_set_phy_int_mask(struct i40e_hw =
*hw,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return status;<br>
=C2=A0}<br>
<br>
+/**<br>
+ * i40e_aq_set_mac_loopback<br>
+ * @hw: pointer to the HW struct<br>
+ * @ena_lpbk: Enable or Disable loopback<br>
+ * @cmd_details: pointer to command details structure or NULL<br>
+ *<br>
+ * Enable/disable loopback on a given port<br>
+ */<br>
+i40e_status i40e_aq_set_mac_loopback(struct i40e_hw *hw, bool ena_lpbk,<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct i40e_asq_cmd_de=
tails *cmd_details)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct i40e_aq_desc desc;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct i40e_aqc_set_lb_mode *cmd =3D<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(struct i40e_aqc_se=
t_lb_mode *)&amp;desc.params.raw;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0i40e_fill_default_direct_cmd_desc(&amp;desc, i4=
0e_aqc_opc_set_lb_modes);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ena_lpbk)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cmd-&gt;lb_mode =3D=
 cpu_to_le16(I40E_AQ_LB_MAC_LOCAL);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return i40e_asq_send_command(hw, &amp;desc, NUL=
L, 0, cmd_details);<br>
+}<br>
+<br>
=C2=A0/**<br>
=C2=A0 * i40e_aq_set_phy_debug<br>
=C2=A0 * @hw: pointer to the hw struct<br>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethe=
rnet/intel/i40e/i40e_main.c<br>
index 1a1fab94205d..f134ae9169d7 100644<br>
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c<br>
@@ -12919,6 +12919,28 @@ static void i40e_clear_rss_lut(struct i40e_vsi *vs=
i)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0}<br>
<br>
+/**<br>
+ * i40e_set_loopback - turn on/off loopback mode on underlying PF<br>
+ * @vsi: ptr to VSI<br>
+ * @ena: flag to indicate the on/off setting<br>
+ */<br>
+static int i40e_set_loopback(struct i40e_vsi *vsi, bool ena)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0bool if_running =3D netif_running(vsi-&gt;netde=
v);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (if_running &amp;&amp; !test_and_set_bit(__I=
40E_VSI_DOWN, vsi-&gt;state))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i40e_down(vsi);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D i40e_aq_set_mac_loopback(&amp;vsi-&gt;b=
ack-&gt;hw, ena, NULL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(vsi-&gt;=
netdev, &quot;Failed to toggle loopback state\n&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (if_running)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i40e_up(vsi);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
+}<br>
+<br>
=C2=A0/**<br>
=C2=A0 * i40e_set_features - set the netdev feature flags<br>
=C2=A0 * @netdev: ptr to the netdev being adjusted<br>
@@ -12959,6 +12981,10 @@ static int i40e_set_features(struct net_device *ne=
tdev,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (need_reset)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i40e_do_reset(pf, I=
40E_PF_RESET_FLAG, true);<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (features &amp; NETIF_F_LOOPBACK)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (i40e_set_loopba=
ck(vsi, !!(features &amp; NETIF_F_LOOPBACK)))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return -EINVAL;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
=C2=A0}<br>
<br>
@@ -13721,7 +13747,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!(pf-&gt;flags &amp; I40E_FLAG_MFP_ENABLED)=
)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_features |=3D NE=
TIF_F_NTUPLE | NETIF_F_HW_TC;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0netdev-&gt;hw_features |=3D hw_features;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0netdev-&gt;hw_features |=3D hw_features | NETIF=
_F_LOOPBACK;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;features |=3D hw_features | NETIF_F_=
HW_VLAN_CTAG_FILTER;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 netdev-&gt;hw_enc_features |=3D NETIF_F_TSO_MAN=
GLEID;<br>
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net=
/ethernet/intel/i40e/i40e_prototype.h<br>
index ebdcde6f1aeb..9a71121420c3 100644<br>
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h<br>
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h<br>
@@ -105,6 +105,9 @@ enum i40e_status_code i40e_aq_set_phy_config(struct i40=
e_hw *hw,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct i40e_asq_cmd_details *cmd_det=
ails);<br>
=C2=A0enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures=
,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool atomic_reset);<br>
+i40e_status i40e_aq_set_mac_loopback(struct i40e_hw *hw,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool ena_lpbk,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct i40e_asq_cmd_de=
tails *cmd_details);<br>
=C2=A0i40e_status i40e_aq_set_phy_int_mask(struct i40e_hw *hw, u16 mask,<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct i40e_asq_=
cmd_details *cmd_details);<br>
=C2=A0i40e_status i40e_aq_clear_pxe_mode(struct i40e_hw *hw,<br>
-- <br>
2.34.1<br>
<br>
</blockquote></div>

--000000000000a42a0305ed1dffc3--

--===============8729717914475251829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8729717914475251829==--
