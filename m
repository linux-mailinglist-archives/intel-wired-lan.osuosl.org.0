Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0500AC2E2EE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 22:48:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2913E406AC;
	Mon,  3 Nov 2025 21:48:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l9zxwGR0pkhw; Mon,  3 Nov 2025 21:48:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6948E406A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762206515;
	bh=JRbS6VI2bNTHm/o6rxRH2I/vNUA+a3DGv8cXb7Is3Tw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aApXJ+JeB0hDp2PWkhpyaTG60ewga2WToFhTxD/YLfNBfK7Ma3TKoGAe7VXwfJYxG
	 M8Dpph+/ubyd2WfXL1FLDfrgVUbqxdv+QcrhmKsZo24RFxv41M9ROl9a4Fh5gL3kO2
	 HYDugTgg0FDiuIKhcZD/FEWeox7sy46MCT+7+3XfiMlCTVd3qVXpoAts3juFJh2zx2
	 1xs213V1T6LI1t61edcEJ1+y8/fkGhZ8Th6V/qId9p6oy+OBjk1wpv5ZEBYDtrEnfl
	 hyDn3mGy7NEZXAH3SUOp2mwZC3174+diuzG1v5pvipGHKbYDTs2gdMPu9Z+v+wzHR0
	 5xHPqRzeSaB8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6948E406A4;
	Mon,  3 Nov 2025 21:48:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 97A4B222
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 19:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 94A2460896
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 19:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZGq5kUaP6rFn for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 19:46:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b12e; helo=mail-yx1-xb12e.google.com;
 envelope-from=daniel.zahka@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E1C8608A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E1C8608A8
Received: from mail-yx1-xb12e.google.com (mail-yx1-xb12e.google.com
 [IPv6:2607:f8b0:4864:20::b12e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E1C8608A8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 19:46:00 +0000 (UTC)
Received: by mail-yx1-xb12e.google.com with SMTP id
 956f58d0204a3-63e0fa0571fso5409977d50.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 03 Nov 2025 11:46:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762199159; x=1762803959;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JRbS6VI2bNTHm/o6rxRH2I/vNUA+a3DGv8cXb7Is3Tw=;
 b=UKfAOkIvOL2FSNXUwTZbHwA5NT67FA7DPyDoNek7miwrrsU9xOGnysqhVAMpMMtwP/
 LIRb88Zp6pTHx1FDtty+a9gI2HXmlNkg3nZ7Vm1VHEvUvmV96LOHEfpT6jbneeLGZ5ME
 TwKnJTMX63IIW28eQnTFriY8/3bxg7IA+NTJ5Vpim37ElrqygXb8OMd/TAWQhgkJafAn
 n8Qn74gDrQL4MaBm5Sv5cm6mLJ/g+cwALIA96A2dvkN3ug8/zjd7ToBrhYt6G4pR8XPM
 OAaWYd4xH+edaTFklkVikOTlgs3DO6v1oxoZyZPmYcZnlXbefWl8GlKBFB/pyupLwmfi
 VFNA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXxZOrWqk+gwfAHXMyWRu/ZIrRQYNZSHtTR153Q41cqYbhFfVlzUwirX9Zr+V+tQ2V9ayrLIJeNqVDjiN9lyLY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxAf+CbRntWRti/1+SF7lw1zOIhN1xXBvUdg6nQlsThd1tkG81+
 zicUYijMfCVwA8Z34zrIVWox2E4L5PuBUDWQokStjpAZ1wzMhz9+hC43
X-Gm-Gg: ASbGnctSQypxOh/Cpc4uqTJnKVkqquUqJ5ChUx9ZMwU+6yrVTskXKHkmHqBybCiS7Ap
 d7UzUrt904Zr2NXUufQVlkP4Jm9iS3LXBLkwqOoQEFpPMM0aeXP0jaQCuX1WKMv/BvLeHD9NbqH
 7kV9Vh92LBqTA8FqNBs26iYEEwIpu2D/7hh7lJFOQIi0nu6PIkWu5Fx2bFTc7QE//l86U87N91G
 ozbQCECqdBw/akeWN3EFw015nkM5s18iTk6Feunz1XJIK1MVqgKp7AYTRa905J/4t3PVL4trquK
 bQZqHrliakKAvKDiN4GcoNDrsH3/5In5KsvSnbMupMuMirHt1Ql1ARgXrI6mhGj/kiDo17QmXO9
 gECB1EkB67O92UUzl/Gp/YyiqXbOrjvF2ere1oHRvcpouRspltxF7to+45mlj5C/1cdTwyBsVm9
 xtEEXhLkAofr11at2RW6I=
X-Google-Smtp-Source: AGHT+IGQkSdUr5I1F40d+PIVys9uD/awpeh4aBGDMgV2Qs2CdQcx/6hBX0eF9XxBQl1GCsTKSKyCHQ==
X-Received: by 2002:a05:690e:4192:b0:63f:ba88:e905 with SMTP id
 956f58d0204a3-63fba88ee6emr2726979d50.30.1762199159023; 
 Mon, 03 Nov 2025 11:45:59 -0800 (PST)
Received: from localhost ([2a03:2880:25ff:8::])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-63f9675b7a7sm3295905d50.3.2025.11.03.11.45.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Nov 2025 11:45:58 -0800 (PST)
From: Daniel Zahka <daniel.zahka@gmail.com>
To: Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
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
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Manish Chopra <manishc@marvell.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>,
 Roger Quadros <rogerq@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 Vladimir Oltean <olteanv@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>,
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>
Cc: netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org
Date: Mon,  3 Nov 2025 11:45:53 -0800
Message-ID: <20251103194554.3203178-3-daniel.zahka@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251103194554.3203178-1-daniel.zahka@gmail.com>
References: <20251103194554.3203178-1-daniel.zahka@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 03 Nov 2025 21:48:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762199159; x=1762803959; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JRbS6VI2bNTHm/o6rxRH2I/vNUA+a3DGv8cXb7Is3Tw=;
 b=kIOsXfqGuyFmSFP9/mqVCxcg3NN77gRDfSDgHC4qOUYVdutSs+PWcwcpiKFrL6ZmtK
 94p44eO8lbTsT/q9mvLB3NOm8O/IDkW61xRuq2G7Z43O7qU9MfSEYrWtdt9pGVPBzkH/
 /UNkWPGD5UmkXkXOIW3+g8V61Qs9qW2etWS1NPrIIrifwfKdcWBaOaJQeSXBex6J2Hs3
 YtSbp2Zsr4K8RfCd2+HYXLC5JJa3v0nJsVw+Jx1eqjQ0pbJXbgrLxKhcW3kaDzyoOix5
 cylF7CACgl8J4fZ7U+muZKk0Ids83EFOhjTpeijRR7NJmMYV5jnerlkqn0d0aqpFjjBv
 jykA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=kIOsXfqG
Subject: [Intel-wired-lan] [PATCH net-next v2 2/2] net/mlx5: implement
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

swp_l4_csum_mode controls how L4 transmit checksums are computed when
using Software Parser (SWP) hints for header locations.

Supported values:
  1. device_default: use device default setting.
  2. full_csum: calculate L4 checksum with the pseudo-header.
  3. l4_only: calculate L4 checksum without the pseudo-header. Only
     available when swp_l4_csum_mode_l4_only is set in
     mlx5_ifc_nv_sw_offload_cap_bits.

The l4_only setting is a dependency for PSP initialization in
mlx5e_psp_init().

Signed-off-by: Daniel Zahka <daniel.zahka@gmail.com>
---

Notes:
    v2:
    - use extack in mlx5_nv_param_devlink_swp_l4_csum_mode_get()
    - fix indentation issue in mlx5.rst entry

 Documentation/networking/devlink/mlx5.rst     |   9 +
 .../net/ethernet/mellanox/mlx5/core/devlink.h |   3 +-
 .../mellanox/mlx5/core/lib/nv_param.c         | 161 ++++++++++++++++++
 3 files changed, 172 insertions(+), 1 deletion(-)

diff --git a/Documentation/networking/devlink/mlx5.rst b/Documentation/networking/devlink/mlx5.rst
index 0e5f9c76e514..675b5a1ec625 100644
--- a/Documentation/networking/devlink/mlx5.rst
+++ b/Documentation/networking/devlink/mlx5.rst
@@ -218,6 +218,15 @@ parameters.
        * ``balanced`` : Merges fewer CQEs, resulting in a moderate compression ratio but maintaining a balance between bandwidth savings and performance
        * ``aggressive`` : Merges more CQEs into a single entry, achieving a higher compression rate and maximizing performance, particularly under high traffic loads
 
+   * - ``swp_l4_csum_mode``
+     - string
+     - permanent
+     - Configure how the L4 checksum is calculated by the device when using
+       Software Parser (SWP) hints for header locations.
+       * ``device_default`` : Use the device's default checksum calculation mode
+       * ``full_csum`` : Calculate full checksum including the pseudo-header
+       * ``l4_only`` : Calculate L4-only checksum, excluding the pseudo-header
+
 The ``mlx5`` driver supports reloading via ``DEVLINK_CMD_RELOAD``
 
 Info versions
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/devlink.h b/drivers/net/ethernet/mellanox/mlx5/core/devlink.h
index c9555119a661..43b9bf8829cf 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/devlink.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/devlink.h
@@ -26,7 +26,8 @@ enum mlx5_devlink_param_id {
 	MLX5_DEVLINK_PARAM_ID_PCIE_CONG_IN_HIGH,
 	MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_LOW,
 	MLX5_DEVLINK_PARAM_ID_PCIE_CONG_OUT_HIGH,
-	MLX5_DEVLINK_PARAM_ID_CQE_COMPRESSION_TYPE
+	MLX5_DEVLINK_PARAM_ID_CQE_COMPRESSION_TYPE,
+	MLX5_DEVLINK_PARAM_ID_SWP_L4_CSUM_MODE,
 };
 
 struct mlx5_trap_ctx {
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/lib/nv_param.c b/drivers/net/ethernet/mellanox/mlx5/core/lib/nv_param.c
index 3d2195338d39..3dc5b899a5fb 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/lib/nv_param.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/lib/nv_param.c
@@ -8,6 +8,8 @@ enum {
 	MLX5_CLASS_0_CTRL_ID_NV_GLOBAL_PCI_CONF               = 0x80,
 	MLX5_CLASS_0_CTRL_ID_NV_GLOBAL_PCI_CAP                = 0x81,
 	MLX5_CLASS_0_CTRL_ID_NV_SW_OFFLOAD_CONFIG             = 0x10a,
+	MLX5_CLASS_0_CTRL_ID_NV_SW_OFFLOAD_CAP                = 0x10b,
+	MLX5_CLASS_0_CTRL_ID_NV_SW_ACCELERATE_CONF            = 0x11d,
 
 	MLX5_CLASS_3_CTRL_ID_NV_PF_PCI_CONF                   = 0x80,
 };
@@ -123,6 +125,17 @@ struct mlx5_ifc_nv_sw_offload_conf_bits {
 	u8         lro_log_timeout0[0x4];
 };
 
+struct mlx5_ifc_nv_sw_offload_cap_bits {
+	u8         reserved_at_0[0x19];
+	u8         swp_l4_csum_mode_l4_only[0x1];
+	u8         reserved_at_1a[0x6];
+};
+
+struct mlx5_ifc_nv_sw_accelerate_conf_bits {
+	u8         swp_l4_csum_mode[0x2];
+	u8         reserved_at_2[0x3e];
+};
+
 #define MNVDA_HDR_SZ \
 	(MLX5_ST_SZ_BYTES(mnvda_reg) - \
 	 MLX5_BYTE_OFF(mnvda_reg, configuration_item_data))
@@ -195,6 +208,30 @@ mlx5_nv_param_read_sw_offload_conf(struct mlx5_core_dev *dev, void *mnvda,
 	return mlx5_nv_param_read(dev, mnvda, len);
 }
 
+static int
+mlx5_nv_param_read_sw_offload_cap(struct mlx5_core_dev *dev, void *mnvda,
+				  size_t len)
+{
+	MLX5_SET_CFG_ITEM_TYPE(global, mnvda, type_class, 0);
+	MLX5_SET_CFG_ITEM_TYPE(global, mnvda, parameter_index,
+			       MLX5_CLASS_0_CTRL_ID_NV_SW_OFFLOAD_CAP);
+	MLX5_SET_CFG_HDR_LEN(mnvda, nv_sw_offload_cap);
+
+	return mlx5_nv_param_read(dev, mnvda, len);
+}
+
+static int
+mlx5_nv_param_read_sw_accelerate_conf(struct mlx5_core_dev *dev, void *mnvda,
+				      size_t len)
+{
+	MLX5_SET_CFG_ITEM_TYPE(global, mnvda, type_class, 0);
+	MLX5_SET_CFG_ITEM_TYPE(global, mnvda, parameter_index,
+			       MLX5_CLASS_0_CTRL_ID_NV_SW_ACCELERATE_CONF);
+	MLX5_SET_CFG_HDR_LEN(mnvda, nv_sw_accelerate_conf);
+
+	return mlx5_nv_param_read(dev, mnvda, len);
+}
+
 static const char *const
 	cqe_compress_str[] = { "balanced", "aggressive" };
 
@@ -269,6 +306,124 @@ mlx5_nv_param_devlink_cqe_compress_set(struct devlink *devlink, u32 id,
 	return mlx5_nv_param_write(dev, mnvda, sizeof(mnvda));
 }
 
+enum swp_l4_csum_mode {
+	SWP_L4_CSUM_MODE_DEVICE_DEFAULT = 0,
+	SWP_L4_CSUM_MODE_FULL_CSUM = 1,
+	SWP_L4_CSUM_MODE_L4_ONLY = 2,
+};
+
+static const char *const
+	swp_l4_csum_mode_str[] = { "device_default", "full_csum", "l4_only" };
+
+static int
+mlx5_nv_param_devlink_swp_l4_csum_mode_get(struct devlink *devlink, u32 id,
+					   struct devlink_param_gset_ctx *ctx,
+					   struct netlink_ext_ack *extack)
+{
+	struct mlx5_core_dev *dev = devlink_priv(devlink);
+	u32 mnvda[MLX5_ST_SZ_DW(mnvda_reg)] = {};
+	u8 value = U8_MAX;
+	void *data;
+	int err;
+
+	err = mlx5_nv_param_read_sw_accelerate_conf(dev, mnvda, sizeof(mnvda));
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Failed to read sw_accelerate_conf mnvda reg");
+		return err;
+	}
+
+	data = MLX5_ADDR_OF(mnvda_reg, mnvda, configuration_item_data);
+	value = MLX5_GET(nv_sw_accelerate_conf, data, swp_l4_csum_mode);
+
+	if (value >= ARRAY_SIZE(swp_l4_csum_mode_str)) {
+		NL_SET_ERR_MSG_FMT_MOD(extack,
+				       "Invalid swp_l4_csum_mode value %u read from device",
+				       value);
+		return -EINVAL;
+	}
+
+	strscpy(ctx->val.vstr, swp_l4_csum_mode_str[value],
+		sizeof(ctx->val.vstr));
+	return 0;
+}
+
+static int
+mlx5_nv_param_devlink_swp_l4_csum_mode_validate(struct devlink *devlink, u32 id,
+						union devlink_param_value val,
+						struct netlink_ext_ack *extack)
+{
+	struct mlx5_core_dev *dev = devlink_priv(devlink);
+	u32 cap[MLX5_ST_SZ_DW(mnvda_reg)] = {};
+	void *data;
+	int err, i;
+
+	for (i = 0; i < ARRAY_SIZE(swp_l4_csum_mode_str); i++) {
+		if (!strcmp(val.vstr, swp_l4_csum_mode_str[i]))
+			break;
+	}
+
+	if (i >= ARRAY_SIZE(swp_l4_csum_mode_str)) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Invalid value, supported values are device_default/full_csum/l4_only");
+		return -EINVAL;
+	}
+
+	if (i == SWP_L4_CSUM_MODE_L4_ONLY) {
+		err = mlx5_nv_param_read_sw_offload_cap(dev, cap, sizeof(cap));
+		if (err) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "Failed to read sw_offload_cap");
+			return err;
+		}
+
+		data = MLX5_ADDR_OF(mnvda_reg, cap, configuration_item_data);
+		if (!MLX5_GET(nv_sw_offload_cap, data, swp_l4_csum_mode_l4_only)) {
+			NL_SET_ERR_MSG_MOD(extack,
+					   "l4_only mode is not supported on this device");
+			return -EOPNOTSUPP;
+		}
+	}
+
+	return 0;
+}
+
+static int
+mlx5_nv_param_devlink_swp_l4_csum_mode_set(struct devlink *devlink, u32 id,
+					   struct devlink_param_gset_ctx *ctx,
+					   struct netlink_ext_ack *extack)
+{
+	struct mlx5_core_dev *dev = devlink_priv(devlink);
+	u32 mnvda[MLX5_ST_SZ_DW(mnvda_reg)] = {};
+	void *data;
+	u8 value;
+	int err;
+
+	if (!strcmp(ctx->val.vstr, "device_default"))
+		value = SWP_L4_CSUM_MODE_DEVICE_DEFAULT;
+	else if (!strcmp(ctx->val.vstr, "full_csum"))
+		value = SWP_L4_CSUM_MODE_FULL_CSUM;
+	else
+		value = SWP_L4_CSUM_MODE_L4_ONLY;
+
+	err = mlx5_nv_param_read_sw_accelerate_conf(dev, mnvda, sizeof(mnvda));
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Failed to read sw_accelerate_conf mnvda reg");
+		return err;
+	}
+
+	data = MLX5_ADDR_OF(mnvda_reg, mnvda, configuration_item_data);
+	MLX5_SET(nv_sw_accelerate_conf, data, swp_l4_csum_mode, value);
+
+	err = mlx5_nv_param_write(dev, mnvda, sizeof(mnvda));
+	if (err)
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Failed to write sw_accelerate_conf mnvda reg");
+
+	return err;
+}
+
 static int mlx5_nv_param_read_global_pci_conf(struct mlx5_core_dev *dev,
 					      void *mnvda, size_t len)
 {
@@ -548,6 +703,12 @@ static const struct devlink_param mlx5_nv_param_devlink_params[] = {
 			     mlx5_nv_param_devlink_cqe_compress_get,
 			     mlx5_nv_param_devlink_cqe_compress_set,
 			     mlx5_nv_param_devlink_cqe_compress_validate),
+	DEVLINK_PARAM_DRIVER(MLX5_DEVLINK_PARAM_ID_SWP_L4_CSUM_MODE,
+			     "swp_l4_csum_mode", DEVLINK_PARAM_TYPE_STRING,
+			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
+			     mlx5_nv_param_devlink_swp_l4_csum_mode_get,
+			     mlx5_nv_param_devlink_swp_l4_csum_mode_set,
+			     mlx5_nv_param_devlink_swp_l4_csum_mode_validate),
 };
 
 int mlx5_nv_param_register_dl_params(struct devlink *devlink)
-- 
2.47.3

