Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C1498F917
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 23:42:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1CAF40F69;
	Thu,  3 Oct 2024 21:42:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qSjymleUofnc; Thu,  3 Oct 2024 21:42:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C55A440F66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727991770;
	bh=jq3iepToviwnygixkY1bADbX1WJaF3gZ/ZdeTJ8AQAM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Sr5bcLWg6D6RFGU/bM7SmtSIGWmzn+Cqcp/3zYYt4dsdYU1E1xUR/NMGFo6MrnH8Z
	 dD0rT1QS9xVgymm6QIjKH0DUxRAYi0CK1gWN7fj2jSafTFl2HtihTcYJrMjdmj7DgU
	 2wyyAg7POgDNeXBrVa2RcQJfUe8M0EJPouSQ4wdID00af4WIjsVlafpuutJTTtVRV0
	 xmUT0XkUowbnxsCNAlwaOVhOCdoo6rMvsajMsX3n+8pWRzL35fcfJGp8gd8ts243nr
	 cKvbP6oXKdOH1PPfIuUF7l68N0kuK1WnWqhi1vO0OQdJW1h6U1uK+eeWiAXnu4ntIE
	 apUned7ahkm2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C55A440F66;
	Thu,  3 Oct 2024 21:42:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5FA091BF34E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 21:42:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D68640302
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 21:42:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XQ7oWP-pTlxS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 21:42:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 274E5401ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 274E5401ED
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 274E5401ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 21:42:44 +0000 (UTC)
X-CSE-ConnectionGUID: 2bCXM/BjSaCZWXalzwSiTA==
X-CSE-MsgGUID: JqjK33x2Q8SCNv1o5vEx0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27379841"
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="27379841"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 14:42:44 -0700
X-CSE-ConnectionGUID: wFn8wlcUQD6Z7LqOJmOnyw==
X-CSE-MsgGUID: xTVehHqwShqSf+bp38GKRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="111952998"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa001.jf.intel.com with ESMTP; 03 Oct 2024 14:42:41 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Oct 2024 23:37:54 +0200
Message-Id: <20241003213754.926691-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241003213754.926691-1-arkadiusz.kubalewski@intel.com>
References: <20241003213754.926691-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727991764; x=1759527764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Lbp7yzL8xfWt8fCeDqPeZd+44YzF/aSgFZHHQtkLWLU=;
 b=JgZb4LvOxtO+V5ab9Br/RDQuUsb4jO1ds0qdkf2m47dSt3RAjdX7RPo5
 mSdaRxL11KHzf7/BDn4gksIEREFt+AF87K9seJglqi6dcnNtAoL29agKU
 LcNCFXvSNRHzMDZg1fdClU2RzD8aTsZJgszTANq6E+XSZ08sJ9E6rJnbu
 Q2+sfVnd/NiANOrDlo/dDP2e1dYkwLhk1bv68t1MwrwoOeGH6jbHmJ/HT
 F7F0RpXwgMop4QWfSa7LZgnpNmWcxkKKqEdujewO01LseoRjf8/VX87hV
 hVG4La5o0lOEqiJxxxBXjnDSTomXX8K7xE5ItN42FW1Dm8dDNyx5+Wgsl
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JgZb4LvO
Subject: [Intel-wired-lan] [RFC PATCH 2/2] ice: ptp: add control over HW
 timestamp latch point
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
Cc: przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement ptp HW timestamp latch points callbacks, allow user to control
the latch point of ptp timestamps in E825 devices.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 48 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 52 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  3 +-
 3 files changed, 102 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ef2e858f49bb..b37374dc7daf 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2494,6 +2494,50 @@ ice_ptp_setup_pins_e823(struct ice_pf *pf, struct ptp_clock_info *info)
 	info->n_ext_ts = 1;
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
  * ice_ptp_set_funcs_e82x - Set specialized functions for E82x support
  * @pf: Board private structure
@@ -2512,6 +2556,10 @@ ice_ptp_set_funcs_e82x(struct ice_pf *pf, struct ptp_clock_info *info)
 	    boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))
 		info->getcrosststamp = ice_ptp_getcrosststamp_e82x;
 #endif /* CONFIG_ICE_HWTS */
+	if (ice_is_e825c(&pf->hw)) {
+		info->set_ts_point = ice_set_ts_point;
+		info->get_ts_point = ice_get_ts_point;
+	}
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 3a33e6b9b313..65a31c1bc335 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -6220,3 +6220,55 @@ int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 
 	return 0;
 }
+
+/**
+ * ice_ptp_hw_ts_point_get - check if tx timestamping is latched on/post SFD
+ * @hw: pointer to the HW struct
+ * @sfd_ena: on success true if tx timestamping latched at beginning of SFD,
+ *	false if post sfd
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
+ * ice_ptp_hw_tx_ts_point_set - configure timestamping on/post SFD
+ * @hw: pointer to the HW struct
+ * @sfd_ena: true to enable timestamping at beginning of SFD, false post sfd
+ *
+ * Configure timestamping to measure at the beginning/post SFD
+ * (start frame delimiter).
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
index 0852a34ade91..3cfe7431c1b0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -346,7 +346,8 @@ void ice_ptp_init_hw(struct ice_hw *hw);
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
 int ice_ptp_one_port_cmd(struct ice_hw *hw, u8 configured_port,
 			 enum ice_ptp_tmr_cmd configured_cmd);
-
+int ice_ptp_hw_ts_point_get(struct ice_hw *hw, bool *sfd_ena);
+int ice_ptp_hw_ts_point_set(struct ice_hw *hw, bool sfd_ena);
 /* E822 family functions */
 int ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);
 int ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val);
-- 
2.38.1

