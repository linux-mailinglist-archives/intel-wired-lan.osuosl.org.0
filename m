Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1E1C3070E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 11:14:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3A5E81E3A;
	Tue,  4 Nov 2025 10:14:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IpCo6UB9R1Hp; Tue,  4 Nov 2025 10:14:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0140C81E3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762251256;
	bh=CgtBbLaC1qXEwG0EBrNcX2Q2+z7cTl6b5ktmRXlbEl0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OZEpCPrbyHlHHhOGmp8A8dfupbhIXsKShV981hBTWPE/UBolfADbfun2z4/4aRsvp
	 TCR4GUu+gxAiK9Aws1E1DB4w8lZ09J/psI6FEZCvm8tulZKVBm1Cnx40riP2huvY8f
	 PPIDxBhjoOEL2fyP91bwZBX3kbmWK0wawQzvKnmRgKEJ8Nha92mK76rTL5K2+iK0WK
	 VtG0fYZIH49hckcdWPi7aI1rhMjaFQBFZhk7ZPoL9LFfO0XxcgXutPwGJo9gLclcV8
	 ksqWDP0R0sXSzJn72sbaKd3larLBTbRiU6ceOMLVp4BbQcumLWMfRJ/mXO0vpp4hRa
	 +5AurJYd5IS9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0140C81E3D;
	Tue,  4 Nov 2025 10:14:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A5473462
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 10:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96D8060F3F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 10:14:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HeINSFdR7kwe for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 10:14:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32d; helo=mail-wm1-x32d.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4F53760F21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F53760F21
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F53760F21
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 10:14:10 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 5b1f17b1804b1-47114a40161so5800705e9.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Nov 2025 02:14:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762251248; x=1762856048;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CgtBbLaC1qXEwG0EBrNcX2Q2+z7cTl6b5ktmRXlbEl0=;
 b=inqamPd416H7a6y7ELGgBpzAjXSwwn3spMqxHjNqjOC1hR3hhwNE8jPSBkii22nGPY
 z3katpniAgSfAt81+5vqhxedkZm2jMhScOA18DSAWOUMfLvKXrLuDSnrXIE9vb2kOZxA
 R/xLW8AX0UDcO0nK0x/SVEY0o0UaDgSvxXz5X3+fYEIznJQJgeNcgOXyuXaumNgNbs/F
 Rp62sNcafO9MZsOwkzxA+mJiH7m7n6YMdWWFcEButE/4gQRkGFOeF4mlUL6p20R63dOx
 ZEjw960WdhvPifq9dCqDPxD17hhkmk8GfD66aXXZp49dCfSu9O4n0r43KI5qBmnPrMuj
 52Yw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXOMEWOHmlRjKEU8B0RHANrA8/DFjf+KRfJFjIrtaB20U8rbDEu4XOX1XYu/3p68F0oMDkn+x0nvRqlttOAQDg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yza6SaO6qXJhB/glvhD4pTnvI0GueH0nlvREvgBH6QCL4Buhj3x
 FqvHgOM+lRsF16RFXruIHKE0XeUCaz1u87I7ckxC3TpwBMakgFAkEEuiUQfnet4iFJg=
X-Gm-Gg: ASbGnctT8Nx5y8ASHkHUCWvWCU6LJLZVyor8KJff1jLvb2/2C8VuCxyHLOh4+l3Vhhb
 RYXN91NxZSEYWFu3I6fQY3Ss/I1iSgCqeDnI0sfI25iiTDFHrgNjJN/zjI9QVz4edVGh6Ohu993
 IEm+akJ4vw87/Kp2moMnKljjnqVuSV7z5kSwgV93y6tVofDwzHyr3bc0qUTeK52Cjp4H7JOc02n
 SmbNE5+XfGA+aWmQHRDlGpX+/nm6O3DE4LvC9W7RMohr5dyXNwtPRLrH3JA5dR2/fhO5h02CIU2
 pCMJqhZQPmydtWHvyAPljGXBCgasq+8pOkKTtOlWxDb2MUCSqQ+uJLhNCtPPgc/1w4Svzm9VdNb
 K7uzwwwHwvZKIaEhu6pwL20FyDoKLZVFh+zRqAWBjcvH1C78Go/N6wqHAe4L4SeBtOPuyCIK/SR
 imirWkqxRj
X-Google-Smtp-Source: AGHT+IFLhFW+4JqR6YGzodu6ZRf4ghsDtIxlWX1USrYQuB2vtrAyEu7aDLTWiSaN9Znd5ArYog5BpQ==
X-Received: by 2002:a05:600c:1907:b0:46e:59bd:f7d3 with SMTP id
 5b1f17b1804b1-4773089c432mr139320365e9.20.1762251248291; 
 Tue, 04 Nov 2025 02:14:08 -0800 (PST)
Received: from jiri-mlt ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4775594e311sm14408325e9.6.2025.11.04.02.14.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Nov 2025 02:14:07 -0800 (PST)
Date: Tue, 4 Nov 2025 11:14:03 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Daniel Zahka <daniel.zahka@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Srujana Challa <schalla@marvell.com>, 
 Bharat Bhushan <bbhushan2@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Brett Creeley <brett.creeley@amd.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>, 
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>, 
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>, 
 Tariq Toukan <tariqt@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>, 
 Leon Romanovsky <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, 
 Petr Machata <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>, 
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>, 
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org
Message-ID: <mhm4hkz52gmqok56iuiukdcz2kaowvppbqrfi3zxuq67p3otit@5fhpgu2axab2>
References: <20251103194554.3203178-1-daniel.zahka@gmail.com>
 <20251103194554.3203178-3-daniel.zahka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251103194554.3203178-3-daniel.zahka@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1762251248; x=1762856048;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=CgtBbLaC1qXEwG0EBrNcX2Q2+z7cTl6b5ktmRXlbEl0=;
 b=emylfPM8yiNJzaJx8+n+y8pSlsJbg/DTOP4wi9docdyDtitqBF0Y+wjnMnhe1tAkKs
 9v3OrGMsYNGY7488GW+l3vCfsx194Fmu5rlnlyfkztDVvmKjPaIE28LNzffGjEyVwk87
 ccRvmSrmkpCGL36g9WAbL45sVyRLBSmjz32cOAvBQjet2KZlPDVMnfyijTs8knFs3Pnx
 1fkQq2LSk5Nby4mIhma8LyK/Tf0q4W+rHDFi2BUa8zQ/U3lNRxIndEAkMSo8yfhAeUSX
 paAoLzOHhwTGdcoD6oZeVR5Hv0nzHgSC3Iq1MAnxxOeT1f6Fft4mROQNF4KcQZsjvZNC
 zUmg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=emylfPM8
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] net/mlx5: implement
 swp_l4_csum_mode via devlink params
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

Mon, Nov 03, 2025 at 08:45:53PM +0100, daniel.zahka@gmail.com wrote:
>swp_l4_csum_mode controls how L4 transmit checksums are computed when
>using Software Parser (SWP) hints for header locations.
>
>Supported values:
>  1. device_default: use device default setting.
>  2. full_csum: calculate L4 checksum with the pseudo-header.
>  3. l4_only: calculate L4 checksum without the pseudo-header. Only
>     available when swp_l4_csum_mode_l4_only is set in
>     mlx5_ifc_nv_sw_offload_cap_bits.
>
>The l4_only setting is a dependency for PSP initialization in
>mlx5e_psp_init().
>
>Signed-off-by: Daniel Zahka <daniel.zahka@gmail.com>
>---
>
>Notes:
>    v2:
>    - use extack in mlx5_nv_param_devlink_swp_l4_csum_mode_get()
>    - fix indentation issue in mlx5.rst entry
>
> Documentation/networking/devlink/mlx5.rst     |   9 +
> .../net/ethernet/mellanox/mlx5/core/devlink.h |   3 +-
> .../mellanox/mlx5/core/lib/nv_param.c         | 161 ++++++++++++++++++
> 3 files changed, 172 insertions(+), 1 deletion(-)
>
>diff --git a/Documentation/networking/devlink/mlx5.rst b/Documentation/networking/devlink/mlx5.rst
>index 0e5f9c76e514..675b5a1ec625 100644
>--- a/Documentation/networking/devlink/mlx5.rst
>+++ b/Documentation/networking/devlink/mlx5.rst
>@@ -218,6 +218,15 @@ parameters.
>        * ``balanced`` : Merges fewer CQEs, resulting in a moderate compression ratio but maintaining a balance between bandwidth savings and performance
>        * ``aggressive`` : Merges more CQEs into a single entry, achieving a higher compression rate and maximizing performance, particularly under high traffic loads
> 
>+   * - ``swp_l4_csum_mode``
>+     - string
>+     - permanent
>+     - Configure how the L4 checksum is calculated by the device when using
>+       Software Parser (SWP) hints for header locations.
>+       * ``device_default`` : Use the device's default checksum calculation mode
>+       * ``full_csum`` : Calculate full checksum including the pseudo-header
>+       * ``l4_only`` : Calculate L4-only checksum, excluding the pseudo-header
>+
> The ``mlx5`` driver supports reloading via ``DEVLINK_CMD_RELOAD``
> 
> Info versions
>diff --git a/drivers/net/ethernet/mellanox/mlx5/core/devlink.h b/drivers/net/ethernet/mellanox/mlx5/core/devlink.h
>index c9555119a661..43b9bf8829cf 100644
>--- a/drivers/net/ethernet/mellanox/mlx5/core/devlink.h
>+++ b/drivers/net/ethernet/mellanox/mlx5/core/devlink.h
>@@ -26,7 +26,8 @@ enum mlx5_devlink_param_id {
> 	MLX5_DEVLINK_PARAM_ID_PCIE_CONG_IN_HIGH,
> 	MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_LOW,
> 	MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_HIGH,
>-	MLX5_DEVLINK_PARAM_ID_CQE_COMPRESSION_TYPE
>+	MLX5_DEVLINK_PARAM_ID_CQE_COMPRESSION_TYPE,
>+	MLX5_DEVLINK_PARAM_ID_SWP_L4_CSUM_MODE,
> };
> 
> struct mlx5_trap_ctx {
>diff --git a/drivers/net/ethernet/mellanox/mlx5/core/lib/nv_param.c b/drivers/net/ethernet/mellanox/mlx5/core/lib/nv_param.c
>index 3d2195338d39..3dc5b899a5fb 100644
>--- a/drivers/net/ethernet/mellanox/mlx5/core/lib/nv_param.c
>+++ b/drivers/net/ethernet/mellanox/mlx5/core/lib/nv_param.c
>@@ -8,6 +8,8 @@ enum {
> 	MLX5_CLASS_0_CTRL_ID_NV_GLOBAL_PCI_CONF               = 0x80,
> 	MLX5_CLASS_0_CTRL_ID_NV_GLOBAL_PCI_CAP                = 0x81,
> 	MLX5_CLASS_0_CTRL_ID_NV_SW_OFFLOAD_CONFIG             = 0x10a,
>+	MLX5_CLASS_0_CTRL_ID_NV_SW_OFFLOAD_CAP                = 0x10b,
>+	MLX5_CLASS_0_CTRL_ID_NV_SW_ACCELERATE_CONF            = 0x11d,
> 
> 	MLX5_CLASS_3_CTRL_ID_NV_PF_PCI_CONF                   = 0x80,
> };
>@@ -123,6 +125,17 @@ struct mlx5_ifc_nv_sw_offload_conf_bits {
> 	u8         lro_log_timeout0[0x4];
> };
> 
>+struct mlx5_ifc_nv_sw_offload_cap_bits {
>+	u8         reserved_at_0[0x19];
>+	u8         swp_l4_csum_mode_l4_only[0x1];
>+	u8         reserved_at_1a[0x6];
>+};
>+
>+struct mlx5_ifc_nv_sw_accelerate_conf_bits {
>+	u8         swp_l4_csum_mode[0x2];
>+	u8         reserved_at_2[0x3e];
>+};
>+
> #define MNVDA_HDR_SZ \
> 	(MLX5_ST_SZ_BYTES(mnvda_reg) - \
> 	 MLX5_BYTE_OFF(mnvda_reg, configuration_item_data))
>@@ -195,6 +208,30 @@ mlx5_nv_param_read_sw_offload_conf(struct mlx5_core_dev *dev, void *mnvda,
> 	return mlx5_nv_param_read(dev, mnvda, len);
> }
> 
>+static int
>+mlx5_nv_param_read_sw_offload_cap(struct mlx5_core_dev *dev, void *mnvda,
>+				  size_t len)
>+{
>+	MLX5_SET_CFG_ITEM_TYPE(global, mnvda, type_class, 0);
>+	MLX5_SET_CFG_ITEM_TYPE(global, mnvda, parameter_index,
>+			       MLX5_CLASS_0_CTRL_ID_NV_SW_OFFLOAD_CAP);
>+	MLX5_SET_CFG_HDR_LEN(mnvda, nv_sw_offload_cap);
>+
>+	return mlx5_nv_param_read(dev, mnvda, len);
>+}
>+
>+static int
>+mlx5_nv_param_read_sw_accelerate_conf(struct mlx5_core_dev *dev, void *mnvda,
>+				      size_t len)
>+{
>+	MLX5_SET_CFG_ITEM_TYPE(global, mnvda, type_class, 0);
>+	MLX5_SET_CFG_ITEM_TYPE(global, mnvda, parameter_index,
>+			       MLX5_CLASS_0_CTRL_ID_NV_SW_ACCELERATE_CONF);
>+	MLX5_SET_CFG_HDR_LEN(mnvda, nv_sw_accelerate_conf);
>+
>+	return mlx5_nv_param_read(dev, mnvda, len);
>+}
>+
> static const char *const
> 	cqe_compress_str[] = { "balanced", "aggressive" };
> 
>@@ -269,6 +306,124 @@ mlx5_nv_param_devlink_cqe_compress_set(struct devlink *devlink, u32 id,
> 	return mlx5_nv_param_write(dev, mnvda, sizeof(mnvda));
> }
> 
>+enum swp_l4_csum_mode {
>+	SWP_L4_CSUM_MODE_DEVICE_DEFAULT = 0,
>+	SWP_L4_CSUM_MODE_FULL_CSUM = 1,
>+	SWP_L4_CSUM_MODE_L4_ONLY = 2,
>+};
>+
>+static const char *const
>+	swp_l4_csum_mode_str[] = { "device_default", "full_csum", "l4_only" };
>+
>+static int
>+mlx5_nv_param_devlink_swp_l4_csum_mode_get(struct devlink *devlink, u32 id,
>+					   struct devlink_param_gset_ctx *ctx,
>+					   struct netlink_ext_ack *extack)
>+{
>+	struct mlx5_core_dev *dev = devlink_priv(devlink);
>+	u32 mnvda[MLX5_ST_SZ_DW(mnvda_reg)] = {};
>+	u8 value = U8_MAX;
>+	void *data;
>+	int err;
>+
>+	err = mlx5_nv_param_read_sw_accelerate_conf(dev, mnvda, sizeof(mnvda));
>+	if (err) {
>+		NL_SET_ERR_MSG_MOD(extack,
>+				   "Failed to read sw_accelerate_conf mnvda reg");
>+		return err;
>+	}
>+
>+	data = MLX5_ADDR_OF(mnvda_reg, mnvda, configuration_item_data);
>+	value = MLX5_GET(nv_sw_accelerate_conf, data, swp_l4_csum_mode);
>+
>+	if (value >= ARRAY_SIZE(swp_l4_csum_mode_str)) {
>+		NL_SET_ERR_MSG_FMT_MOD(extack,
>+				       "Invalid swp_l4_csum_mode value %u read from device",
>+				       value);
>+		return -EINVAL;
>+	}
>+
>+	strscpy(ctx->val.vstr, swp_l4_csum_mode_str[value],
>+		sizeof(ctx->val.vstr));
>+	return 0;
>+}
>+
>+static int
>+mlx5_nv_param_devlink_swp_l4_csum_mode_validate(struct devlink *devlink, u32 id,
>+						union devlink_param_value val,
>+						struct netlink_ext_ack *extack)
>+{
>+	struct mlx5_core_dev *dev = devlink_priv(devlink);
>+	u32 cap[MLX5_ST_SZ_DW(mnvda_reg)] = {};
>+	void *data;
>+	int err, i;
>+
>+	for (i = 0; i < ARRAY_SIZE(swp_l4_csum_mode_str); i++) {
>+		if (!strcmp(val.vstr, swp_l4_csum_mode_str[i]))
>+			break;
>+	}
>+
>+	if (i >= ARRAY_SIZE(swp_l4_csum_mode_str)) {
>+		NL_SET_ERR_MSG_MOD(extack,
>+				   "Invalid value, supported values are device_default/full_csum/l4_only");
>+		return -EINVAL;
>+	}
>+
>+	if (i == SWP_L4_CSUM_MODE_L4_ONLY) {
>+		err = mlx5_nv_param_read_sw_offload_cap(dev, cap, sizeof(cap));
>+		if (err) {
>+			NL_SET_ERR_MSG_MOD(extack,
>+					   "Failed to read sw_offload_cap");
>+			return err;
>+		}
>+
>+		data = MLX5_ADDR_OF(mnvda_reg, cap, configuration_item_data);
>+		if (!MLX5_GET(nv_sw_offload_cap, data, swp_l4_csum_mode_l4_only)) {
>+			NL_SET_ERR_MSG_MOD(extack,
>+					   "l4_only mode is not supported on this device");
>+			return -EOPNOTSUPP;
>+		}
>+	}
>+
>+	return 0;
>+}
>+
>+static int
>+mlx5_nv_param_devlink_swp_l4_csum_mode_set(struct devlink *devlink, u32 id,
>+					   struct devlink_param_gset_ctx *ctx,
>+					   struct netlink_ext_ack *extack)
>+{
>+	struct mlx5_core_dev *dev = devlink_priv(devlink);
>+	u32 mnvda[MLX5_ST_SZ_DW(mnvda_reg)] = {};
>+	void *data;
>+	u8 value;
>+	int err;
>+
>+	if (!strcmp(ctx->val.vstr, "device_default"))

I did some research. 0/DEVICE_DEFAULT should not be ever reported back
from FW. It's purpose is for user to reset to default FW configuration.
What's the usecase for that? I think you could just avoid
0/DEVICE_DEFAULT entirely, for both get and set.

But ff you find a need to allow user to set FW default, it should be
most likely done differently, perhaps by a new devlink command,
rather than per-param free-form string.


>+		value = SWP_L4_CSUM_MODE_DEVICE_DEFAULT;
>+	else if (!strcmp(ctx->val.vstr, "full_csum"))
>+		value = SWP_L4_CSUM_MODE_FULL_CSUM;
>+	else
>+		value = SWP_L4_CSUM_MODE_L4_ONLY;
>+
>+	err = mlx5_nv_param_read_sw_accelerate_conf(dev, mnvda, sizeof(mnvda));
>+	if (err) {
>+		NL_SET_ERR_MSG_MOD(extack,
>+				   "Failed to read sw_accelerate_conf mnvda reg");
>+		return err;
>+	}
>+
>+	data = MLX5_ADDR_OF(mnvda_reg, mnvda, configuration_item_data);
>+	MLX5_SET(nv_sw_accelerate_conf, data, swp_l4_csum_mode, value);
>+
>+	err = mlx5_nv_param_write(dev, mnvda, sizeof(mnvda));
>+	if (err)
>+		NL_SET_ERR_MSG_MOD(extack,
>+				   "Failed to write sw_accelerate_conf mnvda reg");
>+
>+	return err;
>+}
>+
> static int mlx5_nv_param_read_global_pci_conf(struct mlx5_core_dev *dev,
> 					      void *mnvda, size_t len)
> {
>@@ -548,6 +703,12 @@ static const struct devlink_param mlx5_nv_param_devlink_params[] = {
> 			     mlx5_nv_param_devlink_cqe_compress_get,
> 			     mlx5_nv_param_devlink_cqe_compress_set,
> 			     mlx5_nv_param_devlink_cqe_compress_validate),
>+	DEVLINK_PARAM_DRIVER(MLX5_DEVLINK_PARAM_ID_SWP_L4_CSUM_MODE,
>+			     "swp_l4_csum_mode", DEVLINK_PARAM_TYPE_STRING,

I still think that even unlikely this will be implemented in other
driver, it is generic param. Could you please treat it as such?



>+			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
>+			     mlx5_nv_param_devlink_swp_l4_csum_mode_get,
>+			     mlx5_nv_param_devlink_swp_l4_csum_mode_set,
>+			     mlx5_nv_param_devlink_swp_l4_csum_mode_validate),
> };
> 
> int mlx5_nv_param_register_dl_params(struct devlink *devlink)
>-- 
>2.47.3
>
