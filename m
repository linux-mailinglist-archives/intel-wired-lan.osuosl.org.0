Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 653319A6C08
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 16:24:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C673980DCD;
	Mon, 21 Oct 2024 14:24:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id No1SQcdgvfJo; Mon, 21 Oct 2024 14:24:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBA8D80DB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729520690;
	bh=Vx5cgcGbCzHdd/aZM3rIVElFlFVRN/jMiiaPOY/MGQA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6zvEFJq2mY+aKCEfO0YflMOdbLpOTJkTcSKy7yfIQPw8fNWl8gMuukkRezF60sBFt
	 omp7q8gfNKZ1JWKJgqTSjFFItsuXdcuOqvFtJeltWMFa8xMVsKAFMba0Xb1jtZzaVl
	 CX2VW3DmAJeLHoNGNvb5choPVqCPxagrnpv+PHcEdRtwNzKGGj8ZCZkxKKlJyIXv9D
	 y32xB0h57M3pH7A4PP7TowLPG576DwSqZc4LNkuNHUiFHBx+ta0ffEB86d/q0yllnt
	 gSfgvAH4mTPdez2nF2uPtPT6zOkfHxtVzDbDuzFvgocJGDbVpCbZV/weSqO5Q9tRNB
	 RkvHGbVRtpV3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBA8D80DB1;
	Mon, 21 Oct 2024 14:24:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AA0A471F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:24:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A618E40504
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:24:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q-skBvrWB9yf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 14:24:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 72447404F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72447404F4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72447404F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 14:24:46 +0000 (UTC)
X-CSE-ConnectionGUID: UAfST7XCQf+uIJTj0BU7dg==
X-CSE-MsgGUID: /aWLR2BWRfytbRADmgyggQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28781500"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28781500"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 07:24:46 -0700
X-CSE-ConnectionGUID: yt24rj3ZQumqjdvCb+ZENQ==
X-CSE-MsgGUID: UufQ8RWnQGKIEJ3mQrHtpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="102857345"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa002.fm.intel.com with ESMTP; 21 Oct 2024 07:24:43 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 21 Oct 2024 16:19:55 +0200
Message-Id: <20241021141955.1466979-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
References: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729520686; x=1761056686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J909dl2X+WM6p84dhJEZhnAALeM6t0I3u1+vHBG9F9k=;
 b=CNljoHx8c3ROJLbRp9UpXpoF69GEoOfpZ9/H4dZeWoC3LUEB4wwGOf0f
 3ZXhYYpsoO8qccTNVUG76nzHonx9B5qUtyVaj+uwK/QHWIIHVVDNEuW3a
 Du8hQI79yGIlGx53mauYbtjY4Z/t958VkBmmBwiWC6Jz7SoOKWNtggdZL
 CGSvQuxacBN4okwnrgP4sLBygHp3JFhJaGb5eR434qKYK40JXzXKMZc5L
 DGCZGFWjRnsoeQbI/PHFeoxq34SuCOuArZNxPsRpFvyOwIAzoaXF+Tk7v
 uq63VknGZBV1o2HeL1QeoC8LoNw2QHMfpgEjL+12w/OQXFo7+6TCv8o5Z
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CNljoHx8
Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: ptp: add control over
 HW timestamp latch point
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

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 46 +++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 57 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 +
 3 files changed, 105 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index a999fface272..47444412ed9a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2509,6 +2509,50 @@ static int ice_ptp_parse_sdp_entries(struct ice_pf *pf, __le16 *entries,
 	return 0;
 }
 
+/**
+ * ice_get_ts_point - get the tx timestamp latch point
+ * @info: the driver's PTP info structure
+ * @point: return the configured tx timestamp latch point
+ *
+ * Return: 0 on success, negative on failure.
+ */
+static int
+ice_get_ts_point(struct ptp_clock_info *info, enum ptp_ts_point *point)
+{
+	struct ice_pf *pf = ptp_info_to_pf(info);
+	struct ice_hw *hw = &pf->hw;
+	bool sfd_ena;
+	int ret;
+
+	ice_ptp_lock(hw);
+	ret = ice_ptp_hw_ts_point_get(hw, &sfd_ena);
+	ice_ptp_unlock(hw);
+	if (!ret)
+		*point = sfd_ena ? PTP_TS_POINT_SFD : PTP_TS_POINT_POST_SFD;
+
+	return ret;
+}
+
+/**
+ * ice_set_ts_point - set the tx timestamp latch point
+ * @info: the driver's PTP info structure
+ * @point: requested tx timestamp latch point
+ */
+static int
+ice_set_ts_point(struct ptp_clock_info *info, enum ptp_ts_point point)
+{
+	bool sfd_ena = point == PTP_TS_POINT_SFD ? true : false;
+	struct ice_pf *pf = ptp_info_to_pf(info);
+	struct ice_hw *hw = &pf->hw;
+	int ret;
+
+	ice_ptp_lock(hw);
+	ret = ice_ptp_hw_ts_point_set(hw, sfd_ena);
+	ice_ptp_unlock(hw);
+
+	return ret;
+}
+
 /**
  * ice_ptp_set_funcs_e82x - Set specialized functions for E82X support
  * @pf: Board private structure
@@ -2529,6 +2573,8 @@ static void ice_ptp_set_funcs_e82x(struct ice_pf *pf)
 	if (ice_is_e825c(&pf->hw)) {
 		pf->ptp.ice_pin_desc = ice_pin_desc_e825c;
 		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e825c);
+		pf->ptp.info.set_ts_point = ice_set_ts_point;
+		pf->ptp.info.get_ts_point = ice_get_ts_point;
 	} else {
 		pf->ptp.ice_pin_desc = ice_pin_desc_e82x;
 		pf->ptp.info.n_pins = ICE_PIN_DESC_ARR_LEN(ice_pin_desc_e82x);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index da88c6ccfaeb..d81525bc8a16 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -6303,3 +6303,60 @@ int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 
 	return 0;
 }
+
+/**
+ * ice_ptp_hw_ts_point_get - check if tx timestamping is latched on/post SFD
+ * @hw: pointer to the HW struct
+ * @sfd_ena: on success true if tx timestamping latched at beginning of SFD,
+ *	false if post sfd
+ *
+ * Verify if HW timestamping point is configured to measure at the beginning or
+ * post of SFD (Start of Frame Delimiter)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_ptp_hw_ts_point_get(struct ice_hw *hw, bool *sfd_ena)
+{
+	u8 port = hw->port_info->lport;
+	u32 val;
+	int err;
+
+	err = ice_read_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, &val);
+	if (err)
+		return err;
+	if (val | PHY_MAC_XIF_TS_SFD_ENA_M)
+		*sfd_ena = true;
+	else
+		*sfd_ena = false;
+
+	return err;
+}
+
+/**
+ * ice_ptp_hw_ts_point_set - configure timestamping on/post SFD
+ * @hw: pointer to the HW struct
+ * @sfd_ena: true to enable timestamping at beginning of SFD, false post sfd
+ *
+ * Configure timestamping to measure at the beginning/post SFD (Start of Frame
+ * Delimiter)
+ *
+ * Return: 0 on success, negative on error
+ */
+int ice_ptp_hw_ts_point_set(struct ice_hw *hw, bool sfd_ena)
+{
+	u8 port = hw->port_info->lport;
+	int err, val;
+
+	err = ice_read_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, &val);
+	if (err)
+		return err;
+	if ((val | PHY_MAC_XIF_TS_SFD_ENA_M && sfd_ena) ||
+	    (!(val | PHY_MAC_XIF_TS_SFD_ENA_M) && !sfd_ena))
+		return -EINVAL;
+	if (sfd_ena)
+		val |= PHY_MAC_XIF_TS_SFD_ENA_M;
+	else
+		val &= ~PHY_MAC_XIF_TS_SFD_ENA_M;
+
+	return ice_write_mac_reg_eth56g(hw, port, PHY_MAC_XIF_MODE, val);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 656daff3447e..cefedd01479a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -348,6 +348,8 @@ void ice_ptp_init_hw(struct ice_hw *hw);
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
 int ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
 			 enum ice_ptp_tmr_cmd configured_cmd);
+int ice_ptp_hw_ts_point_get(struct ice_hw *hw, bool *sfd_ena);
+int ice_ptp_hw_ts_point_set(struct ice_hw *hw, bool sfd_ena);
 
 /* E822 family functions */
 int ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);
-- 
2.38.1

