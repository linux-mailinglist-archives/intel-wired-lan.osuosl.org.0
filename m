Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E77A26C7F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 08:13:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8DC6820D6;
	Tue,  4 Feb 2025 07:13:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k_dr2VITtzrY; Tue,  4 Feb 2025 07:13:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15050820DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738653188;
	bh=K6l0ggsEAtB8QWOnT9axccvYWPWK63iiO0lsVejmkec=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=W7qLeAjKM638DSqOGpP9vvGB8IiYgWsTHmDa5sBSeXiF0iXqDXwjLRPK3ndnte8CT
	 IEcFY5pwftOuq+oYRtoEoN/+kV5YjMtKvM+G4/lVE+OTtgDeQ6o+LEjJUKfRwbAkJX
	 6oLpeCvem7J6qFb8AZVXoJ9fqdFdTU4W3USmXOAokpC0ADTVA3t9UTkux8ni4Y097V
	 k2E87HsKLrQzPo+/egM0PUI5WBbgAsSNmagledNLN3Yj6jN0bIPBU/Z9IzgFrCLBa+
	 IFldxXvBs9LhKSN0wjLyW2oah7wPo3HJVUzW30QP3SD6aq3vWd7M68JMehjg5HrVKo
	 GL4c5MoBhRJ6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15050820DB;
	Tue,  4 Feb 2025 07:13:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3EC8C185
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 07:13:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38E6341235
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 07:13:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6EoZbGknVtDy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 07:13:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2072041231
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2072041231
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2072041231
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 07:13:04 +0000 (UTC)
X-CSE-ConnectionGUID: XmHY+NbtQJWLICrahc0bng==
X-CSE-MsgGUID: msTmXzHKQe6iINAPaWj3uA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="43089171"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="43089171"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 23:13:04 -0800
X-CSE-ConnectionGUID: yz4bl+uSRUG5EnW0awHZLQ==
X-CSE-MsgGUID: nzNvQnPtRRm1JI70EINpKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="141361157"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.245.87.141])
 by fmviesa001.fm.intel.com with ESMTP; 03 Feb 2025 23:13:02 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, richardcochran@gmail.com,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue,  4 Feb 2025 08:12:59 +0100
Message-ID: <20250204071259.15510-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738653185; x=1770189185;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QfFPqspbaf7ExJBkf27J8R5NIKhkrUJF1PxNFpOI15o=;
 b=N9FAZ8onwCA6DZWfmuUauXf9dQjiAEM9IM/0qFMJKFtshktrZWoSMONY
 LkNGWLeHtwRdBkcXMv5554LtiJEWh+Cz1v6ECalWghbExPX596CeM8lGS
 6o+d9DT5wicqhU529b1X7eD/VG8Y2MJoqS2W9+8PGP1eHidj97wc3ZAKU
 OUjt5hRSpyzad1HqHIivVo1j7F/8xXsZvOoFxYlja3D/wkEAX3lgIPlsn
 uYUrB8gp09WSQp4iVbvx12hrASSnCAYckL4vEgAYOxKtras/KkKpMVIEv
 Z9XLO2uzlBgNwZOx6os4x983u6CeZf1X93OcdlqYboJmCDlxAcU9sQF2P
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N9FAZ8on
Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: add PTP support for E610
 device
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

Add PTP support for E610 adapter. The E610 is based on X550 and adds
firmware managed link, enhanced security capabilities and support for
updated server manageability. It does not introduce any new PTP features
compared to X550.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c     | 13 +++++++++++--
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index da91c58..f03925c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3185,6 +3185,7 @@ static int ixgbe_get_ts_info(struct net_device *dev,
 	case ixgbe_mac_X550:
 	case ixgbe_mac_X550EM_x:
 	case ixgbe_mac_x550em_a:
+	case ixgbe_mac_e610:
 		info->rx_filters |= BIT(HWTSTAMP_FILTER_ALL);
 		break;
 	case ixgbe_mac_X540:
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
index 9339edb..eef25e1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
@@ -140,6 +140,7 @@
  * proper mult and shift to convert the cycles into nanoseconds of time.
  */
 #define IXGBE_X550_BASE_PERIOD 0xC80000000ULL
+#define IXGBE_E610_BASE_PERIOD 0x333333333ULL
 #define INCVALUE_MASK	0x7FFFFFFF
 #define ISGN		0x80000000
 
@@ -415,6 +416,7 @@ static void ixgbe_ptp_convert_to_hwtstamp(struct ixgbe_adapter *adapter,
 	case ixgbe_mac_X550:
 	case ixgbe_mac_X550EM_x:
 	case ixgbe_mac_x550em_a:
+	case ixgbe_mac_e610:
 		/* Upper 32 bits represent billions of cycles, lower 32 bits
 		 * represent cycles. However, we use timespec64_to_ns for the
 		 * correct math even though the units haven't been corrected
@@ -492,11 +494,13 @@ static int ixgbe_ptp_adjfine_X550(struct ptp_clock_info *ptp, long scaled_ppm)
 	struct ixgbe_adapter *adapter =
 			container_of(ptp, struct ixgbe_adapter, ptp_caps);
 	struct ixgbe_hw *hw = &adapter->hw;
+	u64 rate, base;
 	bool neg_adj;
-	u64 rate;
 	u32 inca;
 
-	neg_adj = diff_by_scaled_ppm(IXGBE_X550_BASE_PERIOD, scaled_ppm, &rate);
+	base = hw->mac.type == ixgbe_mac_e610 ? IXGBE_E610_BASE_PERIOD :
+						IXGBE_X550_BASE_PERIOD;
+	neg_adj = diff_by_scaled_ppm(base, scaled_ppm, &rate);
 
 	/* warn if rate is too large */
 	if (rate >= INCVALUE_MASK)
@@ -559,6 +563,7 @@ static int ixgbe_ptp_gettimex(struct ptp_clock_info *ptp,
 	case ixgbe_mac_X550:
 	case ixgbe_mac_X550EM_x:
 	case ixgbe_mac_x550em_a:
+	case ixgbe_mac_e610:
 		/* Upper 32 bits represent billions of cycles, lower 32 bits
 		 * represent cycles. However, we use timespec64_to_ns for the
 		 * correct math even though the units haven't been corrected
@@ -1067,6 +1072,7 @@ static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
 	case ixgbe_mac_X550:
 	case ixgbe_mac_X550EM_x:
 	case ixgbe_mac_x550em_a:
+	case ixgbe_mac_e610:
 		/* enable timestamping all packets only if at least some
 		 * packets were requested. Otherwise, play nice and disable
 		 * timestamping
@@ -1233,6 +1239,7 @@ void ixgbe_ptp_start_cyclecounter(struct ixgbe_adapter *adapter)
 		fallthrough;
 	case ixgbe_mac_x550em_a:
 	case ixgbe_mac_X550:
+	case ixgbe_mac_e610:
 		cc.read = ixgbe_ptp_read_X550;
 		break;
 	case ixgbe_mac_X540:
@@ -1280,6 +1287,7 @@ static void ixgbe_ptp_init_systime(struct ixgbe_adapter *adapter)
 	case ixgbe_mac_X550EM_x:
 	case ixgbe_mac_x550em_a:
 	case ixgbe_mac_X550:
+	case ixgbe_mac_e610:
 		tsauxc = IXGBE_READ_REG(hw, IXGBE_TSAUXC);
 
 		/* Reset SYSTIME registers to 0 */
@@ -1407,6 +1415,7 @@ static long ixgbe_ptp_create_clock(struct ixgbe_adapter *adapter)
 	case ixgbe_mac_X550:
 	case ixgbe_mac_X550EM_x:
 	case ixgbe_mac_x550em_a:
+	case ixgbe_mac_e610:
 		snprintf(adapter->ptp_caps.name, 16, "%s", netdev->name);
 		adapter->ptp_caps.owner = THIS_MODULE;
 		adapter->ptp_caps.max_adj = 30000000;
-- 
2.43.0

