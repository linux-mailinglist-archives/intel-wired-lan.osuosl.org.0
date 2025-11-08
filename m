Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A56BAC42823
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 07:14:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E01060741;
	Sat,  8 Nov 2025 06:14:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Js5Iejiy_iWU; Sat,  8 Nov 2025 06:14:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FEF660744
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762582490;
	bh=mMNU0SKF7oCrvsz2dXE4B/S9VF9VSpdFRTRw/hHj1EE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n1UZzjct63xkLX45LdXmJBiUkZY05tyqnoBIxTmQHJk6mrWfJI9Dv3Bt4ZyygDygp
	 LAfhw5E3Lkah4xNdlfTF6PUTTAul+HEs23+jL5v6HcJnEOhDisWnt/JLgvul8yoWhQ
	 VpbVSjKJOCC1EhXIMX82dMikO9LHCUWFi2+eCid8BIlmkBtX+RmWLBArWjW2i4zMJF
	 f1Pv64S9Xun0Bke9aFAdG3yrAQnLkUcTGuaymBZq5pbkFad7qHceU6E6rjW1Sufkhy
	 cFR+jrwO01zLbfA4qL+XQCGORY9pUMWbLldGBcUVxM6fPACV+9gVyB2B9/MzoiYO78
	 x02UxewfT6zpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FEF660744;
	Sat,  8 Nov 2025 06:14:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F18992B8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 06:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0F4F4023E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 06:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4PX3qqEohQb4 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Nov 2025 06:14:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=saeed@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0228940151
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0228940151
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0228940151
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 06:14:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 29C4643974;
 Sat,  8 Nov 2025 06:14:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3D8AC116C6;
 Sat,  8 Nov 2025 06:14:46 +0000 (UTC)
Date: Fri, 7 Nov 2025 22:14:45 -0800
From: Saeed Mahameed <saeed@kernel.org>
To: Daniel Zahka <daniel.zahka@gmail.com>
Cc: Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Srujana Challa <schalla@marvell.com>,
 Bharat Bhushan <bbhushan2@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Brett Creeley <brett.creeley@amd.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>,
 Geetha sowjanya <gakula@marvell.com>,
 Jerin Jacob <jerinj@marvell.com>, hariprasad <hkelam@marvell.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
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
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org
Message-ID: <aQ7f1T1ZFUKRLQRh@x130>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20251107204347.4060542-3-daniel.zahka@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762582487;
 bh=RfmnN8SkT/NA8/nAPHXA3/wK857y4g74VnEoG/OzvnA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IS7muG4UIYCkWGEFfaHsvzK6TXa7DRpURdW21lRUyN937YvxASXc5BGNxgfJggXRx
 cWtpSjrQ4UDfyg1+tD6fKxOLf0UoNsz+OYFUpNbYtwH4xlL5QhbvEBwA39Jc3Q8zln
 P+9c+9n92HkGzngidqsgDOuRSskvpxhkUh0OgxxPH8PkkCAsSkWYgvkhC8Qpcl+29O
 /UzBwaos/CnZSzI6J0l7u/NkGz9nJm1zawX8Gn6RtUF/QdoNCDOb2/8LcRsf8J6NPf
 T6ZmIoOAS5YpcAkd+8SxP7rgnaHLXpl6k0PEdrlrPrcvEfGEsyfv5/WWuCEBT/0S+F
 UzjSArVdaA6ug==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IS7muG4U
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net/mlx5: implement
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

On 07 Nov 12:43, Daniel Zahka wrote:
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

Let's omit the device, just "default". 

So, I checked a couple of flows internally, and it seems this allows
some flexibility in the FW to decide later on which mode to pick,
based on other parameters, which practically means
"user has no preference on this param". Driver can only find out
after boot, when it reads the runtime capabilities, but still
this is a bug, by the time the driver reads this (in devlink), the
default value should've already been determined by FW, so FW must
return the actual runtime value. Which can only be one of the following

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

Plug in the err, NL_SET_ERR_MSG_FMT_MOD(.., .., err);
other locations as well.

LGTM over all. extack usage is fine, just add the err where applicable.

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
>
