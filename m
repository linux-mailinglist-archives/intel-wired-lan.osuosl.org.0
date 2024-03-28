Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBE48903A9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 16:44:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64B3860E60;
	Thu, 28 Mar 2024 15:44:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uOHuVYwvqZjC; Thu, 28 Mar 2024 15:44:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B52260E61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711640671;
	bh=lfCJkz0NV4LNlg16H4z9u4Tyaak9D9MaxCwxDTUgm50=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3a4oLFOd2ODZGXflz/4AcgqEf8NwSv5hxUPtwed4ls80dNDicQ/XDOm/xXBEKE9YB
	 oAU0j5JMeoc84Cv1/Pw0WutQule9ASoYzKKIBYDpm6yImAAtfbxXpRXeeFmLLAN1+t
	 dQ4b7labS4ea88aOmsWusRp5T7MsikgzKVLXIm80lOArLhQPIJoUwAwV/+lDkxVJ4C
	 +70nNrSeCCpwglPVhlB3QDV7pfHVpQxODzZe23H9DSAc4SCspbeqQO3Df1YP92FWdL
	 jYw3R7O3tElflwL5US9O9XPhg9mG8Euyd8WdkFssJIKuZkXRsfEIradK7j4Yb70Usp
	 15CQzBoKOy7Pg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B52260E61;
	Thu, 28 Mar 2024 15:44:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7BA121BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:53:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 66D85403AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:53:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DQAPh2KkgRLk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 10:53:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102f; helo=mail-pj1-x102f.google.com;
 envelope-from=geethasowjanya.kornu@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0ADD3401D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ADD3401D5
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0ADD3401D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:53:09 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 98e67ed59e1d1-29dedcd244dso635238a91.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 03:53:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711623189; x=1712227989;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lfCJkz0NV4LNlg16H4z9u4Tyaak9D9MaxCwxDTUgm50=;
 b=NfSghTi5VZWEOilm5uPa42gs48pwlXQuo2vmEW/UWvjXIw8fIecuKP2cuR5jGADQvL
 80dy6vxDJwvACKjWkuz0XV2aB9nFPROY4/qy/LufiDNKM/nA+6tGasWhccL+Siuf796E
 /p9V4Tmw0KNxj0g++lbV33a2AGK/qjoXNe9CBvwodOPg4ELvduFDW5wQpUJnIb93c9v/
 T87P2IzuWq9feLLRERQTiKW6JaRKz09L588AjOg/fkjOcz+WgAakeCDlm8qmXuJA49fX
 qkFIt0xgEeWOwDcBR/AzmXHmKkQKOQqg9N1+LBLElIn1cpTlnNX6WXS+3/pa2vVwl23n
 X4Gg==
X-Gm-Message-State: AOJu0YwGgvxkZvTGXoMRsSm6oAq9pprMHKn85yRvZhMTDaEhZHif2Gg9
 5ytOX9oZ6QRjPBDA//HhGMG7Pg34L9HtE5o7wDsBiOJiYpkVhD98FBhFDCLMjiBbnQH9IC+uIZ1
 5cewTGNQX5+CwczNI4TqVWegpdS4=
X-Google-Smtp-Source: AGHT+IFwWldsBeFdr8zFcP7EfGeTcGYDRszNZfDGOHJg+M5jsArJUn7O5UUnsjadRgVeOth6d3KqOOFBQ3KRxhqIfek=
X-Received: by 2002:a17:90a:6985:b0:29d:fe34:fa16 with SMTP id
 s5-20020a17090a698500b0029dfe34fa16mr2366601pjj.21.1711623188963; Thu, 28 Mar
 2024 03:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <20240328093405.336378-14-karol.kolacinski@intel.com>
 <20240328093405.336378-17-karol.kolacinski@intel.com>
In-Reply-To: <20240328093405.336378-17-karol.kolacinski@intel.com>
From: geethasowjanya <geethasowjanya.kornu@gmail.com>
Date: Thu, 28 Mar 2024 16:22:57 +0530
Message-ID: <CAJFAVwokuo-x51LzEZQKCd-MQAQFeV-Gctqq97LPYnM9SKgGKQ@mail.gmail.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 28 Mar 2024 15:44:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711623189; x=1712227989; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lfCJkz0NV4LNlg16H4z9u4Tyaak9D9MaxCwxDTUgm50=;
 b=XGhxTfkBhal05cBr20VFkbriVzYsQlFXLoELkfjutsY1S9HXI7o3Huj/FVF8lw2TQu
 /OvPeskM/ZkSUbaFMkZXKCC0m09PNs98Ytj7fli5OnNeNDDrPGbQpGeYMSw7iFg0UVG/
 bzlpUBZREfUTVDPC+FuNNMaQdiHg6WZVPjrXTVB0chUw9onaMW5NOvtQuxYUs40B1T/9
 bp5cef2T0W+s54mEVglnjyDwehX8d7CXALWXPOXgcwiw8xEOOm6JjDQbgHDDQaQdzaAH
 g57J/uipKNVqd/5+/esi+vQDQfNWGq0bKBSHCtqdclUbxnbTFS+8ZjUm3E4maON/hG5h
 rvFw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=XGhxTfkB
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 03/12] ice: Implement Tx
 interrupt enablement functions
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 28, 2024 at 3:04=E2=80=AFPM Karol Kolacinski
<karol.kolacinski@intel.com> wrote:
>
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>
> Introduce functions enabling/disabling Tx TS interrupts
> for the E822 and ETH56G PHYs
>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 63 ++++++++++-----------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 31 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  4 +-
>  3 files changed, 63 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ether=
net/intel/ice/ice_ptp.c
> index 8150f949dfd3..3019988a43c8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1457,42 +1457,43 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 po=
rt, bool linkup)
>   * @ena: bool value to enable or disable interrupt
>   * @threshold: Minimum number of packets at which intr is triggered
>   *
> - * Utility function to enable or disable Tx timestamp interrupt and thre=
shold
> + * Utility function to configure all the PHY interrupt settings, includi=
ng
> + * whether the PHY interrupt is enabled, and what threshold to use. Also
> + * configures The E82X timestamp owner to react to interrupts from all P=
HYs.
>   */
>  static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 th=
reshold)
>  {
> +       struct device *dev =3D ice_pf_to_dev(pf);
>         struct ice_hw *hw =3D &pf->hw;
> -       int err =3D 0;
> -       int quad;
> -       u32 val;
>
>         ice_ptp_reset_ts_memory(hw);
>
> -       for (quad =3D 0; quad < ICE_GET_QUAD_NUM(hw->ptp.num_lports); qua=
d++) {
> -               err =3D ice_read_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL=
_CFG,
> -                                            &val);
> -               if (err)
> -                       break;
> -
> -               if (ena) {
> -                       val |=3D Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
> -                       val &=3D ~Q_REG_TX_MEM_GBL_CFG_INTR_THR_M;
> -                       val |=3D FIELD_PREP(Q_REG_TX_MEM_GBL_CFG_INTR_THR=
_M,
> -                                         threshold);
> -               } else {
> -                       val &=3D ~Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
> +       switch (hw->ptp.phy_model) {
> +       case ICE_PHY_E82X: {
> +               int quad;
> +
> +               for (quad =3D 0; quad < ICE_GET_QUAD_NUM(hw->ptp.num_lpor=
ts);
> +                    quad++) {
> +                       int err;
> +
> +                       err =3D ice_phy_cfg_intr_e82x(hw, quad, ena, thre=
shold);
> +                       if (err) {
> +                               dev_err(dev, "Failed to configure PHY int=
errupt for quad %d, err %d\n",
> +                                       quad, err);
> +                               return err;
> +                       }
>                 }
>
> -               err =3D ice_write_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GB=
L_CFG,
> -                                             val);
> -               if (err)
> -                       break;
> +               return 0;
> +       }
> +       case ICE_PHY_E810:
> +               return 0;
> +       case ICE_PHY_UNSUP:
> +       default:
> +               dev_warn(dev, "%s: Unexpected PHY model %d\n", __func__,
> +                        hw->ptp.phy_model);
> +               return -EOPNOTSUPP;
>         }
> -
> -       if (err)
> -               dev_err(ice_pf_to_dev(pf), "PTP failed in intr ena, err %=
d\n",
> -                       err);
> -       return err;
>  }
>
>  /**
> @@ -3010,12 +3011,10 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
>         /* Release the global hardware lock */
>         ice_ptp_unlock(hw);
>
> -       if (!ice_is_e810(hw)) {
> -               /* Enable quad interrupts */
> -               err =3D ice_ptp_cfg_phy_interrupt(pf, true, 1);
> -               if (err)
> -                       goto err_exit;
> -       }
> +       /* Configure PHY interrupt settings */
> +       err =3D ice_ptp_cfg_phy_interrupt(pf, true, 1);
> +       if (err)
> +               goto err_exit;
>
>         /* Ensure we have a clock device */
>         err =3D ice_ptp_create_clock(pf);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/et=
hernet/intel/ice/ice_ptp_hw.c
> index c892b966c3b8..12f04ad263c5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -2715,6 +2715,37 @@ ice_get_phy_tx_tstamp_ready_e82x(struct ice_hw *hw=
, u8 quad, u64 *tstamp_ready)
>         return 0;
>  }
>
> +/**
> + * ice_phy_cfg_intr_e82x - Configure TX timestamp interrupt
> + * @hw: pointer to the HW struct
> + * @quad: the timestamp quad
> + * @ena: enable or disable interrupt
> + * @threshold: interrupt threshold
> + *
> + * Configure TX timestamp interrupt for the specified quad
> + */
> +
> +int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool ena, u8 thres=
hold)
> +{
> +       int err;
> +       u32 val;

Reverse Christmas trees.
> +
> +       err =3D ice_read_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG, &v=
al);
> +       if (err)
> +               return err;
> +
> +       val &=3D ~Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
> +       if (ena) {
> +               val |=3D Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
> +               val &=3D ~Q_REG_TX_MEM_GBL_CFG_INTR_THR_M;
> +               val |=3D FIELD_PREP(Q_REG_TX_MEM_GBL_CFG_INTR_THR_M, thre=
shold);
> +       }
> +
> +       err =3D ice_write_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG, v=
al);
> +
> +       return err;
> +}
> +
>  /**
>   * ice_ptp_init_phy_e82x - initialize PHY parameters
>   * @ptp: pointer to the PTP HW struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/et=
hernet/intel/ice/ice_ptp_hw.h
> index 6246de3bacf3..5645b20a9f87 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -265,6 +265,7 @@ int ice_stop_phy_timer_e82x(struct ice_hw *hw, u8 por=
t, bool soft_reset);
>  int ice_start_phy_timer_e82x(struct ice_hw *hw, u8 port);
>  int ice_phy_cfg_tx_offset_e82x(struct ice_hw *hw, u8 port);
>  int ice_phy_cfg_rx_offset_e82x(struct ice_hw *hw, u8 port);
> +int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool ena, u8 thres=
hold);
>
>  /* E810 family functions */
>  int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
> @@ -342,11 +343,8 @@ int ice_cgu_get_output_pin_state_caps(struct ice_hw =
*hw, u8 pin_id,
>  #define Q_REG_TX_MEM_GBL_CFG           0xC08
>  #define Q_REG_TX_MEM_GBL_CFG_LANE_TYPE_S       0
>  #define Q_REG_TX_MEM_GBL_CFG_LANE_TYPE_M       BIT(0)
> -#define Q_REG_TX_MEM_GBL_CFG_TX_TYPE_S 1
>  #define Q_REG_TX_MEM_GBL_CFG_TX_TYPE_M ICE_M(0xFF, 1)
> -#define Q_REG_TX_MEM_GBL_CFG_INTR_THR_S        9
>  #define Q_REG_TX_MEM_GBL_CFG_INTR_THR_M ICE_M(0x3F, 9)
> -#define Q_REG_TX_MEM_GBL_CFG_INTR_ENA_S        15
>  #define Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M        BIT(15)
>
>  /* Tx Timestamp data registers */
> --
> 2.43.0
>
>
