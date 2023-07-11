Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E971274E2A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 02:40:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A29A61074;
	Tue, 11 Jul 2023 00:40:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A29A61074
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689036007;
	bh=Y98zdQlB9LHKY3XkeXkiLWnQCwWKwch1OhyeA0wKu8Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X6pXYmOO8D6/pJoQlI4F3wDUekbzsjjTzPcSJT7AzohV8cGV/vX6HM6dx+ANMEVVc
	 HkV+9eBc0xDDi8BW4zYYhS0DOhp6bXEqHm73KmyHKP5xhJO+joTsjFCR3Gbj4YwaSI
	 nqqB0miwcDY/IVQNRbqiLQhDFFcXt0Z5jUIDGYCmujlDr3UgV0W52dS+qk/A7fheUh
	 56cw3cYjHx9iQ6K3hEwgvBB9Qz0GcX7N8mO4OltodMvuZbDOTGFEMEgSIRIr5kRCNn
	 peOYm9RoedtWhKhLusNa5ZeNOO4f922/qxwg7ZbwTEeNHdwUTm1r6WwWFSj44Mo3mi
	 OJec43fZV3ORQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P1-BTjQOVBB9; Tue, 11 Jul 2023 00:40:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62D7E61064;
	Tue, 11 Jul 2023 00:40:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62D7E61064
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65BEA1BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 00:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B8FF41742
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 00:39:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B8FF41742
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UA49sQrTt8qm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 00:39:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A315341749
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A315341749
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 00:39:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="344089524"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="344089524"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 17:39:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="790981059"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="790981059"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 17:39:41 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 10 Jul 2023 17:39:33 -0700
Message-ID: <20230711003935.98765-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230711003935.98765-1-jacob.e.keller@intel.com>
References: <20230711003935.98765-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689035982; x=1720571982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gcpSsccNeWgYCi+ycylAlTCEeKXzWFMZbeVVgD+w3NA=;
 b=bqVa8kUyLbU++QKpy+bY8HNGS1T0fLcXDfwJeeDmla3rsmr8Kmd5245e
 q6SdkSAIBYHv00f7Er5mLo6NO6r7zow/xRgcrlesF1nLH7P9r2omtWoe4
 VHlNN69Gmrsed1hkefxFw4VG8NprQOUabgiUSgEpRhaycYh9zIMS9GCMq
 xz3sqFCcZrEuvyLhRkSfxepmrtrR9FaUa5Ks1ISo/tPAdWKVhuLjkioFJ
 UNQoi7yLY1UpidHcWJtk9iDLqa/a3aKam3QbSpHtfieWBuB2/Xe0KaPpe
 aeMHXLT7HsMgMxbdtZCOvnMXGOGVppCZOuUHWmIlLxUNTW7U5eBApBs42
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bqVa8kUy
Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: Clean the main timer
 command register after use
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

When performing certain commands on the ice hardware to program the clock,
the driver must use the GLTSYN_CMD register to prepare the main timer. In
addition, each PHY that is being operated on must have its own command
register programmed. The driver then tells hardware to synchronously
execute all commands by writing to GLTSYN_CMD_EXEC. In some cases, the
driver wants to execute a command on a single port, without affecting the
main timer. In this case, the GLTSYN_CMD register must be cleared.

Introduce and use ice_ptp_clean_cmd() to ensure that we properly zero the
GLTSYN_CMD after each command execution. This ensures that we do not
accidentally perform a command on the main timer unexpectedly.

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index c82eb2869b33..87b409ce6991 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -150,6 +150,18 @@ static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
 	ice_flush(hw);
 }
 
+/**
+ * ice_ptp_clean_cmd - Clean the timer command register
+ * @hw: pointer to HW struct
+ *
+ * Zero out the GLTSYN_CMD to avoid any residual command execution.
+ */
+static void ice_ptp_clean_cmd(struct ice_hw *hw)
+{
+	wr32(hw, GLTSYN_CMD, 0);
+	ice_flush(hw);
+}
+
 /* E822 family functions
  *
  * The following functions operate on the E822 family of devices.
@@ -2182,6 +2194,7 @@ ice_read_phy_and_phc_time_e822(struct ice_hw *hw, u8 port, u64 *phy_time,
 
 	/* Issue the sync to start the ICE_PTP_READ_TIME capture */
 	ice_ptp_exec_tmr_cmd(hw);
+	ice_ptp_clean_cmd(hw);
 
 	/* Read the captured PHC time from the shadow time registers */
 	zo = rd32(hw, GLTSYN_SHTIME_0(tmr_idx));
@@ -2254,6 +2267,7 @@ static int ice_sync_phy_timer_e822(struct ice_hw *hw, u8 port)
 
 	/* Issue the sync to activate the time adjustment */
 	ice_ptp_exec_tmr_cmd(hw);
+	ice_ptp_clean_cmd(hw);
 
 	/* Re-capture the timer values to flush the command registers and
 	 * verify that the time was properly adjusted.
@@ -2344,6 +2358,7 @@ int ice_start_phy_timer_e822(struct ice_hw *hw, u8 port)
 	u8 tmr_idx;
 	int err;
 
+	ice_ptp_clean_cmd(hw);
 	tmr_idx = ice_get_ptp_src_clock_index(hw);
 
 	err = ice_stop_phy_timer_e822(hw, port, false);
@@ -2957,6 +2972,7 @@ static int ice_ptp_tmr_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 	 * commands synchronously
 	 */
 	ice_ptp_exec_tmr_cmd(hw);
+	ice_ptp_clean_cmd(hw);
 
 	return 0;
 }
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
