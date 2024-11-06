Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CAD9BDB00
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 02:13:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 298D74061D;
	Wed,  6 Nov 2024 01:12:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0c6_6mt_dMZL; Wed,  6 Nov 2024 01:12:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E676A405D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730855575;
	bh=tzn1sPJbDxZKnmhV3BXhnQXCAiZjvWbAoIhhrqfp78g=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yg8XSVF7lxoDXChG+BBz+A/N0WGhz2aBPFU1xK7lpxcF/QQyLdDmBfr6y5xfOXsgN
	 NOKj5lUKrtnL6qKpR8jnSjk2l4+WFNZYxuiLOGzsDjpLpTx7qA6XLSS8cnNBQDLS1p
	 sIi83/UNWzDSJm9ugXJKUMvXDvyRSumSyubtvbMWAMNGLez0r5kZaBOTz6B7kZwcGT
	 VKayro4wXnC8kZK1E+gEbpFFqoLyXKzdTHNqyKNVaeN7gEDaAvJyeqGTQtt4gouFMy
	 cp8dl7+xR9V+SRSQTeHmW6p2HiwJeUhshp+CmHQgOisT9Ei8THuZzkn409GIANlJXn
	 RAoHtPcsQZ/0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E676A405D5;
	Wed,  6 Nov 2024 01:12:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B4D203B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:12:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A33B860704
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:12:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5YDArZ9-1smn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 01:12:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B763F606FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B763F606FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B763F606FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:12:46 +0000 (UTC)
X-CSE-ConnectionGUID: RNByPimLRBeuOt0ob0DKEQ==
X-CSE-MsgGUID: loGjeLK1QK68hqAjmrTl8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="18254767"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="18254767"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 17:12:46 -0800
X-CSE-ConnectionGUID: xEOV3UogSKqou3OpRiUuqg==
X-CSE-MsgGUID: 93TWSWv/Rb6U/eR9zWtyRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="84362797"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa008.fm.intel.com with ESMTP; 05 Nov 2024 17:12:43 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed,  6 Nov 2024 02:07:56 +0100
Message-Id: <20241106010756.1588973-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241106010756.1588973-1-arkadiusz.kubalewski@intel.com>
References: <20241106010756.1588973-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730855567; x=1762391567;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4HF3rwA/AvxO3Knhf+XcS3MMF6XDQAoU3kzYc67y7fw=;
 b=gOovRyxmE0qQBXomfWWopldou2NQeFXPjdKtENpjyNxC3cyOlu+t7lDD
 F4ElqBm2+jrbcSW3ZFQPtcFmtcYKwEffoxWegl6HXuIdgw587LU2cJqA1
 kAzZ1HxL2yEX7jpGMZgnw68cWDHSgK6oLD0E8J50wr4V2nfTUfI4b+q+N
 i6JqS7bMlaXp6V8SwrlPMPT9TVY0C0R3i3+OIOltmRobU8etM8iah50qm
 aPmukA35bHWdeTs/KYNmfQvQmue/slf0rsrbPEHUBszoY6GZTw451kfV7
 eVIULZfGA76WOcLjUcDq3McBLGwGqTy4uI06m+VMN6MMBHS9WvJAi6HCU
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gOovRyxm
Subject: [Intel-wired-lan] [PATCH net-next v3 2/2] ice: ptp: add control
 over HW timestamp latch point
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

Allow user to control the latch point of ptp HW timestamps in E825
devices.

Usage, examples:

** Obtain current state:
$ cat /sys/class/net/eth<N>/device/ptp/ts_point
Command returns enum/integer:
* 1 - timestamp latched by PHY at the beginning of SFD,
* 2 - timestamp latched by PHY after the SFD,
* None - callback returns error to the user.

** Configure timestamp latch point at the beginning of SFD:
$ echo 1 > /sys/class/net/eth<N>/device/ptp/ts_point

** Configure timestamp latch point after the SFD:
$ echo 2 > /sys/class/net/eth<N>/device/ptp/ts_point

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v3:
- improve readability, for "nothing to do" logic
- /s/PTP/ptp
- remove 'tx' from docs description
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 44 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 60 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 +
 3 files changed, 106 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index a999fface272..c351c9707394 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2509,6 +2509,48 @@ static int ice_ptp_parse_sdp_entries(struct ice_pf *pf, __le16 *entries,
 	return 0;
 }
 
+/**
+ * ice_get_ts_point - get the timestamp latch point
+ * @info: the driver's ptp info structure
+ * @point: returns the configured timestamp latch point
+ *
+ * Return: 0 on success, negative on failure.
+ */
+static int ice_get_ts_point(struct ptp_clock_info *info,
+			    enum ptp_ts_point *point)
+{
+	struct ice_pf *pf = ptp_info_to_pf(info);
+	struct ice_hw *hw = &pf->hw;
+	int ret;
+
+	ice_ptp_lock(hw);
+	ret = ice_ptp_hw_ts_point_get(hw, point);
+	ice_ptp_unlock(hw);
+
+	return ret;
+}
+
+/**
+ * ice_set_ts_point - set the timestamp latch point
+ * @info: the driver's ptp info structure
+ * @point: requested timestamp latch point
+ *
+ * Return: 0 on success, negative on failure.
+ */
+static int ice_set_ts_point(struct ptp_clock_info *info,
+			    enum ptp_ts_point point)
+{
+	struct ice_pf *pf = ptp_info_to_pf(info);
+	struct ice_hw *hw = &pf->hw;
+	int ret;
+
+	ice_ptp_lock(hw);
+	ret = ice_ptp_hw_ts_point_set(hw, point);
+	ice_ptp_unlock(hw);
+
+	return ret;
+}
+
 /**
  * ice_ptp_set_funcs_e82x - Set specialized functions for E82X support
  * @pf: Board private structure
@@ -2529,6 +2571,8 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
 	if (ice_is_e825c(&pf->hw)) {
 		pf->ptp.ice_pin_desc = ice_pin_desc_e825c;
 		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
+		pf->ptp.info.set_ts_point = ice_set_ts_point;
+		pf->ptp.info.get_ts_point = ice_get_ts_point;
 	} else {
 		pf->ptp.ice_pin_desc = ice_pin_desc_e82x;
 		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e82x);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index dfd49732bd5b..06c32f180932 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -6320,3 +6320,63 @@ int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 
 	return 0;
 }
+
+/**
+ * ice_ptp_hw_ts_point_get - check if timestamps are latched on/post SFD
+ * @hw: pointer to the HW struct
+ * @point: return the configured timestamp latch point
+ *
+ * Verify if HW timestamping point is configured to latch at the beginning or
+ * post of SFD (Start of Frame Delimiter)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_ptp_hw_ts_point_get(struct ice_hw *hw, enum ptp_ts_point *point)
+{
+	u8 port = hw->port_info->lport;
+	u32 val;
+	int err;
+
+	err = ice_read_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, &val);
+	if (err)
+		return err;
+	if (val & PHY_MAC_XIF_TS_SFD_ENA_M)
+		*point = PTP_TS_POINT_SFD;
+	else
+		*point = PTP_TS_POINT_POST_SFD;
+
+	return err;
+}
+
+/**
+ * ice_ptp_hw_ts_point_set - configure timestamping on/post SFD
+ * @hw: pointer to the HW struct
+ * @point: requested timestamp latch point
+ *
+ * Configure timestamping to measure at the beginning/post SFD (Start of Frame
+ * Delimiter)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_ptp_hw_ts_point_set(struct ice_hw *hw, enum ptp_ts_point point)
+{
+	u8 port = hw->port_info->lport;
+	int err, val;
+
+	err = ice_read_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, &val);
+	if (err)
+		return err;
+	if ((val & PHY_MAC_XIF_TS_SFD_ENA_M) && point == PTP_TS_POINT_SFD)
+		return -EINVAL;
+	if (!(val & PHY_MAC_XIF_TS_SFD_ENA_M) &&
+	    point == PTP_TS_POINT_POST_SFD)
+		return -EINVAL;
+	if (point == PTP_TS_POINT_SFD)
+		val |= PHY_MAC_XIF_TS_SFD_ENA_M;
+	else if (point == PTP_TS_POINT_POST_SFD)
+		val &= ~PHY_MAC_XIF_TS_SFD_ENA_M;
+	else
+		return -EINVAL;
+
+	return ice_write_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, val);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 47af7c5c79b8..5e4edaee063e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -348,6 +348,8 @@ void ice_ptp_init_hw(struct ice_hw *hw);
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
 int ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
 			 enum ice_ptp_tmr_cmd configured_cmd);
+int ice_ptp_hw_ts_point_get(struct ice_hw *hw, enum ptp_ts_point *point);
+int ice_ptp_hw_ts_point_set(struct ice_hw *hw, enum ptp_ts_point point);
 
 /* E822 family functions */
 int ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);
-- 
2.38.1

