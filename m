Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA4D8D82A9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 14:46:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA3C082215;
	Mon,  3 Jun 2024 12:46:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rxhiOWy3QPnR; Mon,  3 Jun 2024 12:46:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E493982222
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717418813;
	bh=2L2U1sXFtbMxWKaSJ9TjfQd4zHQ7IAtinuynbdeF0AE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=creW34e2es/a4Mkf0hu54MYMqQSlqI2JCQRplGZqxfhgoU52foN4LDWgEYZ3BTTd7
	 sHRyyFULN5AzbhdxSzsv/JGdq8uO1w7E4iGeTgLzKu2F8YKhXSGju+JBYFt2JoN+Kc
	 2uxeYbenSA1scOfdaYPH6RTxg+9/lmrBcp/QaNuz3gykURD31fLWRUIznvWquxHXNW
	 EbORfJvpX1a08QPw9n3DZODh1RB+2u8nSkxg1zrd2tVl3DEVi0uyV25XlAKkuYsw4A
	 jyHiCv2DTZ3IG6tZIeboT07egXEJcWtuqaA8OF4uQJMCU9PolBsLT+FPTvzGCBYcWM
	 f2pq9nrBKMIsg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E493982222;
	Mon,  3 Jun 2024 12:46:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 778421BF3DD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 12:46:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 612A9405F4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 12:46:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HUSxNHUBgBr1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 12:46:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::332; helo=mail-wm1-x332.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 217F640590
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 217F640590
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 217F640590
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 12:46:47 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 5b1f17b1804b1-4210aa0154eso28129025e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 03 Jun 2024 05:46:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717418805; x=1718023605;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2L2U1sXFtbMxWKaSJ9TjfQd4zHQ7IAtinuynbdeF0AE=;
 b=NQ1ZA2LmPs3uujD3IPw+mdCPFUWRR9wMFOMon/W9739ZWUW7I6tp7kDZHEiTyY48KQ
 cHl0FbjKXUgRi+SGl2N2dx3hB1GnMRPbNyiSf4i/+nIK1qfV5TxYKi4L5W7SFEEdXIBU
 L6ewB7E69t+oqv/Sh4D4qxLwEnflNTOJNYyo8HxxhjFjZ+r5uzk9CvIY6paed9qvq2ZJ
 dpVY3RRgz8xt2TYh/mtbKHXnWr2CXSPeUhdZxhSmIaHq7wGpJCU1JQxpYQANBS8quxCK
 txJdGAKV1m5LcH4tnyMd1hdaJxuvI4zv+CGHy09hT3fkAGaqCdvzNKaVKyvWAXq0KZmq
 iT8w==
X-Forwarded-Encrypted: i=1;
 AJvYcCX2Hkv+bgghThw0NNpxV87oE3bOeGfFBSnpTa4EPZ04PL7dLEHH5lN4+7AiZctxCi4a+Bp1wIU+9V22bttBzktnwKFP57HZo3KMJhqV033Jdw==
X-Gm-Message-State: AOJu0YxCtsIZ6mKB9jmmFRK2yaTJGXuLeamqbJs82yBQg3PETo2tjKn4
 nh4Rdq49rCnI8ieR/3hrCJUc7z2KgtH2w23LnzIAcOt2dBPNagEqKWf6AMGotxiVUeaw0JTIkFX
 4LUku7g==
X-Google-Smtp-Source: AGHT+IHc3pyJ0DcnaIwnILTHU2DngxOomSEYQUj7wqhQIhyn5POSet+K7KrfKQU+hrX5OeepvSiG9g==
X-Received: by 2002:a5d:4107:0:b0:35b:a0b2:464a with SMTP id
 ffacd0b85a97d-35e0f30a885mr5958847f8f.45.1717418766670; 
 Mon, 03 Jun 2024 05:46:06 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-35dd064bba6sm8650347f8f.104.2024.06.03.05.46.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Jun 2024 05:46:06 -0700 (PDT)
Date: Mon, 3 Jun 2024 14:46:02 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <Zl27CvHVJmT-LG6C@nanopsycho.orion>
References: <20240603123146.735804-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240603123146.735804-1-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1717418805; x=1718023605;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=2L2U1sXFtbMxWKaSJ9TjfQd4zHQ7IAtinuynbdeF0AE=;
 b=R3UhQ2mQpnK0ewdatYlVMVlFnytOlGm6u0pXmBVdqXtWZzScEsi1Jc+izMBjt/sF8q
 wcaOfN8vXPhK2QsHQF0abSux1PdEiaEcrvrflfajHqHGyGiVhKHadAu+Nv9v/OEOcxXL
 A6krw3+jKI5Vd192P5LfYrX9ORherbQ6xdecH/iadPrEVyCExGi/5QgALBhjnnD5MzlP
 pL2y0kL4W1dHrtWxRcOGNdO+N9fmOf2PZil6fBUbWz8LFdD8RngXyCvIfAbeyUnnJWsg
 UTp0TSUD++dL6ZKUo8sfULIeXVIuz5jFS+tm6El3GN6b+CGjNvLMNQdSPLP73oLFfmWW
 da4Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=R3UhQ2mQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Add support for
 devlink local_forwarding param.
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
Cc: jacob.e.keller@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Jun 03, 2024 at 02:31:46PM CEST, wojciech.drewek@intel.com wrote:
>From: Pawel Kaminski <pawel.kaminski@intel.com>
>
>Add support for driver-specific devlink local_forwarding param.
>Supported values are "enabled", "disabled" and "prioritized".
>Default configuration is set to "enabled".
>
>Add documentation in networking/devlink/ice.rst.
>
>In previous generations of Intel NICs the transmit scheduler was only
>limited by PCIe bandwidth when scheduling/assigning hairpin-badwidth
>between VFs. Changes to E810 HW design introduced scheduler limitation,
>so that available hairpin-bandwidth is bound to external port speed.
>In order to address this limitation and enable NFV services such as
>"service chaining" a knob to adjust the scheduler config was created.
>Driver can send a configuration message to the FW over admin queue and
>internal FW logic will reconfigure HW to prioritize and add more BW to
>VF to VF traffic. As end result for example 10G port will no longer limit
>hairpin-badwith to 10G and much higher speeds can be achieved.
>
>Devlink local_forwarding param set to "prioritized" enables higher
>hairpin-badwitdh on related PFs. Configuration is applicable only to
>8x10G and 4x25G cards.
>
>Changing local_forwarding configuration will trigger CORER reset in
>order to take effect.
>
>Example command to change current value:
>devlink dev param set pci/0000:b2:00.3 name local_forwarding \
>        value prioritized \
>        cmode runtime
>
>Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
>Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
>v2: Extend documentation
>v3: rename loopback to local_forwarding
>---
> Documentation/networking/devlink/ice.rst      |  23 ++++
> .../net/ethernet/intel/ice/devlink/devlink.c  | 126 ++++++++++++++++++
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +-
> drivers/net/ethernet/intel/ice/ice_common.c   |   4 +
> drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> 5 files changed, 164 insertions(+), 1 deletion(-)
>
>diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
>index 830c04354222..0eb64bd4710f 100644
>--- a/Documentation/networking/devlink/ice.rst
>+++ b/Documentation/networking/devlink/ice.rst
>@@ -11,6 +11,7 @@ Parameters
> ==========
> 
> .. list-table:: Generic parameters implemented
>+   :widths: 5 5 90
> 
>    * - Name
>      - Mode
>@@ -68,6 +69,28 @@ Parameters
> 
>        To verify that value has been set:
>        $ devlink dev param show pci/0000:16:00.0 name tx_scheduling_layers
>+.. list-table:: Driver specific parameters implemented
>+    :widths: 5 5 90
>+
>+    * - Name
>+      - Mode
>+      - Description
>+    * - ``local_forwarding``
>+      - runtime
>+      - Controls loopback behavior by tuning scheduler bandwidth.
>+        Supported values are:
>+
>+        ``enabled`` - VF to VF traffic is allowed on port
>+
>+        ``disabled`` - VF to VF traffic is not allowed on this port
>+
>+        ``prioritized`` - VF to VF traffic is prioritized on this port

Does this apply on SFs too?


>+
>+        Default value of ``local_forwarding`` parameter is ``enabled``.
>+        ``prioritized`` provides ability to adjust VF to VF traffic rate to increase
>+        one port capacity at cost of the another. User needs to disable
>+        local forwarding on one of the ports in order have increased capacity
>+        on the ``prioritized`` port.
> 
> Info versions
> =============
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>index f774781ab514..810a901d7afd 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>@@ -1381,9 +1381,129 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
> 	return 0;
> }
> 
>+#define DEVLINK_LOCAL_FWD_DISABLED_STR "disabled"
>+#define DEVLINK_LOCAL_FWD_ENABLED_STR "enabled"
>+#define DEVLINK_LOCAL_FWD_PRIORITIZED_STR "prioritized"
>+
>+/**
>+ * ice_devlink_local_fwd_mode_to_str - Get string for local_fwd mode.
>+ * @mode: local forwarding for mode used in port_info struct.
>+ *
>+ * Return: Mode respective string or "Invalid".
>+ */
>+static const char *
>+ice_devlink_local_fwd_mode_to_str(enum ice_local_fwd_mode mode)
>+{
>+	switch (mode) {
>+	case ICE_LOCAL_FWD_MODE_ENABLED:
>+		return DEVLINK_LOCAL_FWD_ENABLED_STR;
>+	case ICE_LOCAL_FWD_MODE_PRIORITIZED:
>+		return DEVLINK_LOCAL_FWD_PRIORITIZED_STR;
>+	case ICE_LOCAL_FWD_MODE_DISABLED:
>+		return DEVLINK_LOCAL_FWD_DISABLED_STR;
>+	}
>+
>+	return "Invalid";
>+}
>+
>+/**
>+ * ice_devlink_local_fwd_str_to_mode - Get local_fwd mode from string name.
>+ * @mode_str: local forwarding mode string.
>+ *
>+ * Return: Mode value or negative number if invalid.
>+ */
>+static int ice_devlink_local_fwd_str_to_mode(const char *mode_str)
>+{
>+	if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_ENABLED_STR))
>+		return ICE_LOCAL_FWD_MODE_ENABLED;
>+	else if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_PRIORITIZED_STR))
>+		return ICE_LOCAL_FWD_MODE_PRIORITIZED;
>+	else if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_DISABLED_STR))
>+		return ICE_LOCAL_FWD_MODE_DISABLED;
>+
>+	return -EINVAL;
>+}
>+
>+/**
>+ * ice_devlink_local_fwd_get - Get local_fwd parameter.
>+ * @devlink: Pointer to the devlink instance.
>+ * @id: The parameter ID to set.
>+ * @ctx: Context to store the parameter value.
>+ *
>+ * Return: Zero.
>+ */
>+static int ice_devlink_local_fwd_get(struct devlink *devlink, u32 id,
>+				     struct devlink_param_gset_ctx *ctx)
>+{
>+	struct ice_pf *pf = devlink_priv(devlink);
>+	struct ice_port_info *pi;
>+	const char *mode_str;
>+
>+	pi = pf->hw.port_info;
>+	mode_str = ice_devlink_local_fwd_mode_to_str(pi->local_fwd_mode);
>+	snprintf(ctx->val.vstr, sizeof(ctx->val.vstr), "%s", mode_str);
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_local_fwd_set - Set local_fwd parameter.
>+ * @devlink: Pointer to the devlink instance.
>+ * @id: The parameter ID to set.
>+ * @ctx: Context to get the parameter value.
>+ * @extack: Netlink extended ACK structure.
>+ *
>+ * Return: Zero.
>+ */
>+static int ice_devlink_local_fwd_set(struct devlink *devlink, u32 id,
>+				     struct devlink_param_gset_ctx *ctx,
>+				     struct netlink_ext_ack *extack)
>+{
>+	int new_local_fwd_mode = ice_devlink_local_fwd_str_to_mode(ctx->val.vstr);
>+	struct ice_pf *pf = devlink_priv(devlink);
>+	struct device *dev = ice_pf_to_dev(pf);
>+	struct ice_port_info *pi;
>+
>+	pi = pf->hw.port_info;
>+	if (pi->local_fwd_mode != new_local_fwd_mode) {
>+		pi->local_fwd_mode = new_local_fwd_mode;
>+		dev_info(dev, "Setting local_fwd to %s\n", ctx->val.vstr);
>+		ice_schedule_reset(pf, ICE_RESET_CORER);
>+	}
>+
>+	return 0;
>+}
>+
>+/**
>+ * ice_devlink_local_fwd_validate - Validate passed local_fwd parameter value.
>+ * @devlink: Unused pointer to devlink instance.
>+ * @id: The parameter ID to validate.
>+ * @val: Value to validate.
>+ * @extack: Netlink extended ACK structure.
>+ *
>+ * Supported values are:
>+ * "enabled" - local_fwd is enabled, "disabled" - local_fwd is disabled
>+ * "prioritized" - local_fwd traffic is prioritized in scheduling.
>+ *
>+ * Return: Zero when passed parameter value is supported. Negative value on
>+ * error.
>+ */
>+static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 id,
>+					  union devlink_param_value val,
>+					  struct netlink_ext_ack *extack)
>+{
>+	if (ice_devlink_local_fwd_str_to_mode(val.vstr) < 0) {
>+		NL_SET_ERR_MSG_MOD(extack, "Error: Requested value is not supported.");
>+		return -EINVAL;
>+	}
>+
>+	return 0;
>+}
>+
> enum ice_param_id {
> 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> 	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
>+	ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
> };
> 
> static const struct devlink_param ice_dvl_rdma_params[] = {
>@@ -1405,6 +1525,12 @@ static const struct devlink_param ice_dvl_sched_params[] = {
> 			     ice_devlink_tx_sched_layers_get,
> 			     ice_devlink_tx_sched_layers_set,
> 			     ice_devlink_tx_sched_layers_validate),
>+	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
>+			     "local_forwarding", DEVLINK_PARAM_TYPE_STRING,
>+			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>+			     ice_devlink_local_fwd_get,
>+			     ice_devlink_local_fwd_set,
>+			     ice_devlink_local_fwd_validate),
> };
> 
> static void ice_devlink_free(void *devlink_ptr)
>diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>index 621a2ca7093e..9683842f8880 100644
>--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>@@ -232,6 +232,13 @@ struct ice_aqc_get_sw_cfg_resp_elem {
> #define ICE_AQC_GET_SW_CONF_RESP_IS_VF		BIT(15)
> };
> 
>+/* Loopback port parameter mode values. */
>+enum ice_local_fwd_mode {
>+	ICE_LOCAL_FWD_MODE_ENABLED = 0,
>+	ICE_LOCAL_FWD_MODE_DISABLED = 1,
>+	ICE_LOCAL_FWD_MODE_PRIORITIZED = 2,
>+};
>+
> /* Set Port parameters, (direct, 0x0203) */
> struct ice_aqc_set_port_params {
> 	__le16 cmd_flags;
>@@ -240,7 +247,9 @@ struct ice_aqc_set_port_params {
> 	__le16 swid;
> #define ICE_AQC_PORT_SWID_VALID			BIT(15)
> #define ICE_AQC_PORT_SWID_M			0xFF
>-	u8 reserved[10];
>+	u8 local_fwd_mode;
>+#define ICE_AQC_SET_P_PARAMS_LOCAL_FWD_MODE_VALID BIT(2)
>+	u8 reserved[9];
> };
> 
> /* These resource type defines are used for all switch resource
>diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
>index 9ae61cd8923e..60ad7774812c 100644
>--- a/drivers/net/ethernet/intel/ice/ice_common.c
>+++ b/drivers/net/ethernet/intel/ice/ice_common.c
>@@ -1086,6 +1086,7 @@ int ice_init_hw(struct ice_hw *hw)
> 		goto err_unroll_cqinit;
> 	}
> 
>+	hw->port_info->local_fwd_mode = ICE_LOCAL_FWD_MODE_ENABLED;
> 	/* set the back pointer to HW */
> 	hw->port_info->hw = hw;
> 
>@@ -3070,6 +3071,9 @@ ice_aq_set_port_params(struct ice_port_info *pi, bool double_vlan,
> 		cmd_flags |= ICE_AQC_SET_P_PARAMS_DOUBLE_VLAN_ENA;
> 	cmd->cmd_flags = cpu_to_le16(cmd_flags);
> 
>+	cmd->local_fwd_mode = pi->local_fwd_mode |
>+				ICE_AQC_SET_P_PARAMS_LOCAL_FWD_MODE_VALID;
>+
> 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
> }
> 
>diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
>index aac59c85a911..f3e4d8030f43 100644
>--- a/drivers/net/ethernet/intel/ice/ice_type.h
>+++ b/drivers/net/ethernet/intel/ice/ice_type.h
>@@ -730,6 +730,7 @@ struct ice_port_info {
> 	u16 sw_id;			/* Initial switch ID belongs to port */
> 	u16 pf_vf_num;
> 	u8 port_state;
>+	u8 local_fwd_mode;
> #define ICE_SCHED_PORT_STATE_INIT	0x0
> #define ICE_SCHED_PORT_STATE_READY	0x1
> 	u8 lport;
>-- 
>2.40.1
>
>
