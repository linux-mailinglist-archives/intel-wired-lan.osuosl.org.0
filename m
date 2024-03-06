Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AA98730F5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 09:41:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DA4B4176D;
	Wed,  6 Mar 2024 08:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rHjDIVxX0y-a; Wed,  6 Mar 2024 08:41:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C99B4176E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709714491;
	bh=B01WCz3thntTLpmI3CtxBT639kZEJYCOT7Ef9Uu57EA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y9pV3rnAN6FD+BcVb63tiDhQrxCVm/O6/MvxkD+HNvw54SeK2rfTEwlEEniweW3Bg
	 KXZAhBJkqDmK7r0mdzS/L36evnf+xZLD4Pp8q06uRjYL3Vx1gJ2dj9HCXi9Uj86Tfl
	 jjC61DBGfXXAoAX1QKMb6urjWbpzn+A4WLxZr8Jxl6n0+DinU9aw+m15roNirHUEkL
	 /D3/YhaqARi4qINDjgHHwBWZl4rdbXrNyIQfBSW5i71PMTqIp/qtYLdoYjU8IEFgdC
	 gsGZr1S11TkaxzXKmKx8758bcDHz1W5wHNdWJma+vJxFOAZJko3xjl6kZZGADO7zFa
	 F02oS+bXV3JiQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C99B4176E;
	Wed,  6 Mar 2024 08:41:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D51ED1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 08:41:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF4B740490
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 08:41:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LAQSlqZ4dRWU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 08:41:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62f; helo=mail-ej1-x62f.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E8B2340347
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8B2340347
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8B2340347
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 08:41:26 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-a4429c556efso872884366b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Mar 2024 00:41:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709714485; x=1710319285;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=B01WCz3thntTLpmI3CtxBT639kZEJYCOT7Ef9Uu57EA=;
 b=dS2Vs3LPtSsneeapKFCf0NoDuFPNYSsZmM4uxq/6czgPq1cykOsHmzvHuUL+N2oVLt
 Qj7sEUNzy1eEof4SgvAplgJdrFKFQLGxglPhPWviK7wBNqkWQ4qIlg/TMJtjrKo9E19k
 Sz2bspL0uxwVzpgTT/wpWtXprzEg0L0g3uM74+sexdbLgWyglmde9eaTQ1DcGsI0bbYX
 74neMinysUfYxfqxEuSqvAZrWQNYp+0g2LLYMYcAyIOCpWIULhPCl6XAp810HV+3l2P8
 GxmRH86Qj9vGhaXwMjOfly+w6nrmFABWDDjByY2ap/wxSwvVDHiSHIPMGx+gnxXdk0te
 +sxQ==
X-Gm-Message-State: AOJu0Yzb+wF9RYocGd9rRIBSZx43CLvz663Rs9aoDFVRyhtPdwk+ICx6
 4wi1TvhBNPJfLtefM30TpKNyBJRCKy+HOpxG4MIsryKKd0YbKwPQz10/wlB7Dz8=
X-Google-Smtp-Source: AGHT+IGsdofwQQubFlrNYIuenh+z5riBn+7TmGqHgMZEZ5E2rQRB6HoMoNxtthU0ckqy0WokLuJGew==
X-Received: by 2002:a17:906:5947:b0:a42:fb21:5066 with SMTP id
 g7-20020a170906594700b00a42fb215066mr9360953ejr.31.1709714484611; 
 Wed, 06 Mar 2024 00:41:24 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 z19-20020a170906075300b00a44cf710cc3sm4883460ejb.182.2024.03.06.00.41.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Mar 2024 00:41:24 -0800 (PST)
Date: Wed, 6 Mar 2024 09:41:21 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <ZegsMb-U8WbbT-mr@nanopsycho>
References: <20240305143942.23757-1-mateusz.polchlopek@intel.com>
 <20240305143942.23757-6-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240305143942.23757-6-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709714485; x=1710319285;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=B01WCz3thntTLpmI3CtxBT639kZEJYCOT7Ef9Uu57EA=;
 b=YebklVwUN2G0n1ecJleVcMIM2rXqPq7xeMdq530oSiGxE61TDPIJEvkrA+7H53/wwD
 8W4VDvsd2hcdol2YU0mNrZ7nnzr8JIFMtVHssfVmUZL8Ros8fJUNEqgiq/dRD2c991MJ
 zvyHXxzaaLpxVZB6YijWtM6uV8HK5eZtWaqvXmZzadTcpRmBMz7QUH3p3tR5VUO9WvRO
 gTiC78rZ3UEnO8zgB2kmdFaOGsDfwZLK4Ti2ePLQjXviT03AcC6byxFXEgln07vfmA5r
 Qi8cyzOIXMVSxt5BELO30biwop6OQyAFjy2cXH6AduXWFpdiW7UY9YgUyiKw2Bk+SF4A
 0Biw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=YebklVwU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 5/6] ice: Add
 tx_scheduling_layers devlink param
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
Cc: andrew@lunn.ch, michal.wilczynski@intel.com, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com, kuba@kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Mar 05, 2024 at 03:39:41PM CET, mateusz.polchlopek@intel.com wrote:
>From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>
>It was observed that Tx performance was inconsistent across all queues
>and/or VSIs and that it was directly connected to existing 9-layer
>topology of the Tx scheduler.
>
>Introduce new private devlink param - tx_scheduling_layers. This parameter
>gives user flexibility to choose the 5-layer transmit scheduler topology
>which helps to smooth out the transmit performance.
>
>Allowed parameter values are 5 and 9.
>
>Example usage:
>
>Show:
>devlink dev param show pci/0000:4b:00.0 name tx_scheduling_layers
>pci/0000:4b:00.0:
>  name tx_scheduling_layers type driver-specific
>    values:
>      cmode permanent value 9
>
>Set:
>devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 5
>cmode permanent
>
>devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 9
>cmode permanent
>
>Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
>Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>---
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +
> drivers/net/ethernet/intel/ice/ice_devlink.c  | 175 +++++++++++++++++-
> .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
> .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
> drivers/net/ethernet/intel/ice/ice_nvm.c      |   7 +-
> drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
> 6 files changed, 195 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>index 0487c425ae24..e76c388b9905 100644
>--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>@@ -1684,6 +1684,15 @@ struct ice_aqc_nvm {
> 
> #define ICE_AQC_NVM_START_POINT			0
> 
>+#define ICE_AQC_NVM_TX_TOPO_MOD_ID		0x14B
>+
>+struct ice_aqc_nvm_tx_topo_user_sel {
>+	__le16 length;
>+	u8 data;
>+#define ICE_AQC_NVM_TX_TOPO_USER_SEL	BIT(4)
>+	u8 reserved;
>+};
>+
> /* NVM Checksum Command (direct, 0x0706) */
> struct ice_aqc_nvm_checksum {
> 	u8 flags;
>diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>index c0a89a1b4e88..f94793db460c 100644
>--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>@@ -770,6 +770,168 @@ ice_devlink_port_unsplit(struct devlink *devlink, struct devlink_port *port,
> 	return ice_devlink_port_split(devlink, port, 1, extack);
> }
> 
>+/**
>+ * ice_get_tx_topo_user_sel - Read user's choice from flash
>+ * @pf: pointer to pf structure
>+ * @layers: value read from flash will be saved here
>+ *
>+ * Reads user's preference for Tx Scheduler Topology Tree from PFA TLV.
>+ *
>+ * Returns zero when read was successful, negative values otherwise.
>+ */
>+static int ice_get_tx_topo_user_sel(struct ice_pf *pf, uint8_t *layers)
>+{
>+	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
>+	struct ice_hw *hw = &pf->hw;
>+	int err;
>+
>+	err = ice_acquire_nvm(hw, ICE_RES_READ);
>+	if (err)
>+		return err;
>+
>+	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
>+			      sizeof(usr_sel), &usr_sel, true, true, NULL);
>+	if (err)
>+		goto exit_release_res;
>+
>+	if (usr_sel.data & ICE_AQC_NVM_TX_TOPO_USER_SEL)
>+		*layers = ICE_SCHED_5_LAYERS;
>+	else
>+		*layers = ICE_SCHED_9_LAYERS;
>+
>+exit_release_res:
>+	ice_release_nvm(hw);
>+
>+	return err;
>+}
>+
>+/**
>+ * ice_update_tx_topo_user_sel - Save user's preference in flash
>+ * @pf: pointer to pf structure
>+ * @layers: value to be saved in flash
>+ *
>+ * Variable "layers" defines user's preference about number of layers in Tx
>+ * Scheduler Topology Tree. This choice should be stored in PFA TLV field
>+ * and be picked up by driver, next time during init.
>+ *
>+ * Returns zero when save was successful, negative values otherwise.
>+ */
>+static int ice_update_tx_topo_user_sel(struct ice_pf *pf, int layers)
>+{
>+	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
>+	struct ice_hw *hw = &pf->hw;
>+	int err;
>+
>+	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
>+	if (err)
>+		return err;
>+
>+	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
>+			      sizeof(usr_sel), &usr_sel, true, true, NULL);
>+	if (err)
>+		goto exit_release_res;
>+
>+	if (layers == ICE_SCHED_5_LAYERS)
>+		usr_sel.data |= ICE_AQC_NVM_TX_TOPO_USER_SEL;
>+	else
>+		usr_sel.data &= ~ICE_AQC_NVM_TX_TOPO_USER_SEL;
>+
>+	err = ice_write_one_nvm_block(pf, ICE_AQC_NVM_TX_TOPO_MOD_ID, 2,
>+				      sizeof(usr_sel.data), &usr_sel.data,
>+				      true, NULL, NULL);
>+	if (err)
>+		err = -EIO;

Just return err. ice_write_one_nvm_block() seems to return it always
in case of an error.

pw-bot: cr


>+
>+exit_release_res:
>+	ice_release_nvm(hw);
>+
>+	return err;
>+}
>+
>+/**
>+ * ice_devlink_tx_sched_layers_get - Get tx_scheduling_layers parameter
>+ * @devlink: pointer to the devlink instance
>+ * @id: the parameter ID to set
>+ * @ctx: context to store the parameter value
>+ *
>+ * Returns zero on success and negative value on failure.
>+ */
>+static int ice_devlink_tx_sched_layers_get(struct devlink *devlink, u32 id,
>+					   struct devlink_param_gset_ctx *ctx)
>+{
>+	struct ice_pf *pf = devlink_priv(devlink);
>+	int err;
>+
>+	err = ice_get_tx_topo_user_sel(pf, &ctx->val.vu8);
>+	if (err)
>+		return -EIO;

Why you return -EIO and not just "err". ice_get_tx_topo_user_sel() seems
to return proper -EXX values.


>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_tx_sched_layers_set - Set tx_scheduling_layers parameter
>+ * @devlink: pointer to the devlink instance
>+ * @id: the parameter ID to set
>+ * @ctx: context to get the parameter value
>+ * @extack: netlink extended ACK structure
>+ *
>+ * Returns zero on success and negative value on failure.
>+ */
>+static int ice_devlink_tx_sched_layers_set(struct devlink *devlink, u32 id,
>+					   struct devlink_param_gset_ctx *ctx,
>+					   struct netlink_ext_ack *extack)
>+{
>+	struct ice_pf *pf = devlink_priv(devlink);
>+	int err;
>+
>+	err = ice_update_tx_topo_user_sel(pf, ctx->val.vu8);
>+	if (err)
>+		return -EIO;

Why you return -EIO and not just "err". ice_update_tx_topo_user_sel() seems
to return proper -EXX values.


>+
>+	NL_SET_ERR_MSG_MOD(extack,
>+			   "Tx scheduling layers have been changed on this device. You must do the PCI slot powercycle for the change to take effect.");
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_tx_sched_layers_validate - Validate passed tx_scheduling_layers
>+ *                                       parameter value
>+ * @devlink: unused pointer to devlink instance
>+ * @id: the parameter ID to validate
>+ * @val: value to validate
>+ * @extack: netlink extended ACK structure
>+ *
>+ * Supported values are:
>+ * - 5 - five layers Tx Scheduler Topology Tree
>+ * - 9 - nine layers Tx Scheduler Topology Tree
>+ *
>+ * Returns zero when passed parameter value is supported. Negative value on
>+ * error.
>+ */
>+static int ice_devlink_tx_sched_layers_validate(struct devlink *devlink, u32 id,
>+						union devlink_param_value val,
>+						struct netlink_ext_ack *extack)
>+{
>+	struct ice_pf *pf = devlink_priv(devlink);
>+	struct ice_hw *hw = &pf->hw;
>+
>+	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en) {
>+		NL_SET_ERR_MSG_MOD(extack,
>+				   "Requested feature is not supported by the FW on this device.");
>+		return -EOPNOTSUPP;

Why can't you only return this param in case hw->func_caps.common_cap.tx_sched_topo_comp_mode_en
is true? Then you don't need this check.


>+	}
>+
>+	if (val.vu8 != ICE_SCHED_5_LAYERS && val.vu8 != ICE_SCHED_9_LAYERS) {
>+		NL_SET_ERR_MSG_MOD(extack,
>+				   "Wrong number of tx scheduler layers provided.");
>+		return -EINVAL;
>+	}
>+
>+	return 0;
>+}
>+
> /**
>  * ice_tear_down_devlink_rate_tree - removes devlink-rate exported tree
>  * @pf: pf struct
>@@ -1478,6 +1640,11 @@ static int ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
> 	return 0;
> }
> 
>+enum ice_param_id {
>+	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>+	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>+};
>+
> static const struct devlink_param ice_devlink_params[] = {
> 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> 			      ice_devlink_enable_roce_get,
>@@ -1487,7 +1654,13 @@ static const struct devlink_param ice_devlink_params[] = {
> 			      ice_devlink_enable_iw_get,
> 			      ice_devlink_enable_iw_set,
> 			      ice_devlink_enable_iw_validate),
>-
>+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>+			     "tx_scheduling_layers",
>+			     DEVLINK_PARAM_TYPE_U8,
>+			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
>+			     ice_devlink_tx_sched_layers_get,
>+			     ice_devlink_tx_sched_layers_set,
>+			     ice_devlink_tx_sched_layers_validate),
> };
> 
> static void ice_devlink_free(void *devlink_ptr)
>diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
>index 319a2d6fe26c..f81db6c107c8 100644
>--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
>+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
>@@ -286,10 +286,9 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
>  *
>  * Returns: zero on success, or a negative error code on failure.
>  */
>-static int
>-ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>-			u16 block_size, u8 *block, bool last_cmd,
>-			u8 *reset_level, struct netlink_ext_ack *extack)
>+int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>+			    u16 block_size, u8 *block, bool last_cmd,
>+			    u8 *reset_level, struct netlink_ext_ack *extack)
> {
> 	u16 completion_module, completion_retval;
> 	struct device *dev = ice_pf_to_dev(pf);
>diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h b/drivers/net/ethernet/intel/ice/ice_fw_update.h
>index 750574885716..04b200462757 100644
>--- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
>+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
>@@ -9,5 +9,8 @@ int ice_devlink_flash_update(struct devlink *devlink,
> 			     struct netlink_ext_ack *extack);
> int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
> 			    struct netlink_ext_ack *extack);
>+int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>+			    u16 block_size, u8 *block, bool last_cmd,
>+			    u8 *reset_level, struct netlink_ext_ack *extack);
> 
> #endif
>diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
>index d4e05d2cb30c..84eab92dc03c 100644
>--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
>+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
>@@ -18,10 +18,9 @@
>  *
>  * Read the NVM using the admin queue commands (0x0701)
>  */
>-static int
>-ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
>-		void *data, bool last_command, bool read_shadow_ram,
>-		struct ice_sq_cd *cd)
>+int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
>+		    u16 length, void *data, bool last_command,
>+		    bool read_shadow_ram, struct ice_sq_cd *cd)
> {
> 	struct ice_aq_desc desc;
> 	struct ice_aqc_nvm *cmd;
>diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
>index 774c2317967d..63cdc6bdac58 100644
>--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
>+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
>@@ -14,6 +14,9 @@ struct ice_orom_civd_info {
> 
> int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
> void ice_release_nvm(struct ice_hw *hw);
>+int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
>+		    u16 length, void *data, bool last_command,
>+		    bool read_shadow_ram, struct ice_sq_cd *cd);
> int
> ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
> 		  bool read_shadow_ram);
>-- 
>2.38.1
>
