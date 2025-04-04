Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BACA7BAC3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Apr 2025 12:29:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2185E6FC2B;
	Fri,  4 Apr 2025 10:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QCvDCgnzGdNB; Fri,  4 Apr 2025 10:29:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CFF36FC18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743762588;
	bh=58dLjfaM+oV6B2YX0RyqqUnOGq3Ss9jqCGtnsVW7hus=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PQz9DH/mWagWuoPN8GJw+nWsPhGzM+oxf5qIipm51WVIOXSsl/Sc2LKfKrhywr1en
	 B4IP/fFzpAJ5MwYsLnO4x8kxkWqynEe17v90RZ8kUkkFHK0FSXH5lKJY4i3tUyNl3H
	 rGJpCT/gV3J06RwZyUfcUsJJ+jCbZFQvr1vFZsw8gtRU82E8zJUhsi8D+J6Vw8jzft
	 t6hY8hJfO6LhHpw3s2GrzPSyXbZmZHa1EGjeaRyr2H/e76Squ0xueVHbRTaT4Mz4pU
	 IEOg4nJeoG54PlNczjLqcuwv0jjforK1BUeVlGXb7BfJ/L7UWEBWYMMiwes2TUypkV
	 JshGIX/di1bsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CFF36FC18;
	Fri,  4 Apr 2025 10:29:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 14A58117
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB9598215D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rrk85oF3hgBv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Apr 2025 10:29:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0950681ECC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0950681ECC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0950681ECC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:44 +0000 (UTC)
X-CSE-ConnectionGUID: ivYPrXnXRXefKagUR5M12g==
X-CSE-MsgGUID: l0plbPRIQXCHUd+rRtVrsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="48992443"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="48992443"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 03:29:45 -0700
X-CSE-ConnectionGUID: LHuVmylZRaqpKE1LKfGZqg==
X-CSE-MsgGUID: HPuqOXThR+CrqbzNU0UaeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="164485305"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 04 Apr 2025 03:29:43 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D367F33EA7;
 Fri,  4 Apr 2025 11:29:41 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Stanislav Fomichev <sdf@fomichev.me>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri,  4 Apr 2025 12:23:19 +0200
Message-Id: <20250404102321.25846-5-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
References: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743762585; x=1775298585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HOhC5WYvKkujcXUSuHQdfZVzRjpS/bRRl4PLGlFXK7g=;
 b=LkU3Y5LSt0pvyOe4+2ixFUwxJPdDXt8QFHeiMr5uOsD2vsAFS6uZEGOp
 9OYdRfLvvJZtrMrslHwMMtpuObu3sVucQgn24NQrOPGBXFafEC7dNuHki
 sLxpzv4rWOmt40WyV78hcwK2QSNRbp6Um3HatQOerIUCVpLBiYyuVMBlU
 sCSCNh2ZZEL2q+/gxqNYc4aSB3M7eoP/W4o71TIzJgMBwNSuWPOfktn03
 hkbRDRFJ7Lkqb7l7W3LDHnWkQ7Ijesd+ye0YQVHtWCs/ivYyVYrPjZiHw
 diTrlHEzUOHRnLNgBSvGINHFKw/1crnMCU6TypYwBtMGNAjPobryw/eSF
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LkU3Y5LS
Subject: [Intel-wired-lan] [PATCH iwl-net 4/6] iavf: extract
 iavf_watchdog_step() out of iavf_watchdog_task()
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

Finish up easy refactor of watchdog_task, total for this + prev two
commits is:
 1 file changed, 47 insertions(+), 82 deletions(-)

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 87 +++++++++------------
 1 file changed, 39 insertions(+), 48 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 5efe44724d11..4b6963ffaba5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2913,88 +2913,63 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 
 static const int IAVF_NO_RESCHED = -1;
 
-/**
- * iavf_watchdog_task - Periodic call-back task
- * @work: pointer to work_struct
- **/
-static void iavf_watchdog_task(struct work_struct *work)
+/* return: msec delay for requeueing itself */
+static int iavf_watchdog_step(struct iavf_adapter *adapter)
 {
-	struct iavf_adapter *adapter = container_of(work,
-						    struct iavf_adapter,
-						    watchdog_task.work);
-	struct net_device *netdev = adapter->netdev;
 	struct iavf_hw *hw = &adapter->hw;
-	int msec_delay;
 	u32 reg_val;
 
-	netdev_lock(netdev);
-	if (!mutex_trylock(&adapter->crit_lock)) {
-		if (adapter->state == __IAVF_REMOVE) {
-			netdev_unlock(netdev);
-			return;
-		}
-
-		msec_delay = 20;
-		goto restart_watchdog;
-	}
+	netdev_assert_locked(adapter->netdev);
+	lockdep_assert_held(&adapter->crit_lock);
 
 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
 		iavf_change_state(adapter, __IAVF_COMM_FAILED);
 
 	switch (adapter->state) {
 	case __IAVF_STARTUP:
 		iavf_startup(adapter);
-		msec_delay = 30;
-		goto watchdog_done;
+		return 30;
 	case __IAVF_INIT_VERSION_CHECK:
 		iavf_init_version_check(adapter);
-		msec_delay = 30;
-		goto watchdog_done;
+		return 30;
 	case __IAVF_INIT_GET_RESOURCES:
 		iavf_init_get_resources(adapter);
-		msec_delay = 1;
-		goto watchdog_done;
+		return 1;
 	case __IAVF_INIT_EXTENDED_CAPS:
 		iavf_init_process_extended_caps(adapter);
-		msec_delay = 1;
-		goto watchdog_done;
+		return 1;
 	case __IAVF_INIT_CONFIG_ADAPTER:
 		iavf_init_config_adapter(adapter);
-		msec_delay = 1;
-		goto watchdog_done;
+		return 1;
 	case __IAVF_INIT_FAILED:
 		if (test_bit(__IAVF_IN_REMOVE_TASK,
 			     &adapter->crit_section)) {
 			/* Do not update the state and do not reschedule
 			 * watchdog task, iavf_remove should handle this state
 			 * as it can loop forever
 			 */
-			msec_delay = IAVF_NO_RESCHED;
-			goto watchdog_done;
+			return IAVF_NO_RESCHED;
 		}
 		if (++adapter->aq_wait_count > IAVF_AQ_MAX_ERR) {
 			dev_err(&adapter->pdev->dev,
 				"Failed to communicate with PF; waiting before retry\n");
 			adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
 			iavf_shutdown_adminq(hw);
-			msec_delay = 5000;
-			goto watchdog_done;
+			return 5000;
 		}
 		/* Try again from failed step*/
 		iavf_change_state(adapter, adapter->last_state);
-		msec_delay = 1000;
-		goto watchdog_done;
+		return 1000;
 	case __IAVF_COMM_FAILED:
 		if (test_bit(__IAVF_IN_REMOVE_TASK,
 			     &adapter->crit_section)) {
 			/* Set state to __IAVF_INIT_FAILED and perform remove
 			 * steps. Remove IAVF_FLAG_PF_COMMS_FAILED so the task
 			 * doesn't bring the state back to __IAVF_COMM_FAILED.
 			 */
 			iavf_change_state(adapter, __IAVF_INIT_FAILED);
 			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
-			msec_delay = IAVF_NO_RESCHED;
-			goto watchdog_done;
+			return IAVF_NO_RESCHED;
 		}
 		reg_val = rd32(hw, IAVF_VFGEN_RSTAT) &
 			  IAVF_VFGEN_RSTAT_VFR_STATE_MASK;
@@ -3012,11 +2987,9 @@ static void iavf_watchdog_task(struct work_struct *work)
 		}
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
-		msec_delay = 10;
-		goto watchdog_done;
+		return 10;
 	case __IAVF_RESETTING:
-		msec_delay = 2000;
-		goto watchdog_done;
+		return 2000;
 	case __IAVF_DOWN:
 	case __IAVF_DOWN_PENDING:
 	case __IAVF_TESTING:
@@ -3043,8 +3016,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 		break;
 	case __IAVF_REMOVE:
 	default:
-		msec_delay = IAVF_NO_RESCHED;
-		goto watchdog_done;
+		return IAVF_NO_RESCHED;
 	}
 
 	/* check for hw reset */
@@ -3055,12 +3027,31 @@ static void iavf_watchdog_task(struct work_struct *work)
 		dev_err(&adapter->pdev->dev, "Hardware reset detected\n");
 		iavf_schedule_reset(adapter, IAVF_FLAG_RESET_PENDING);
 	}
-	if (adapter->aq_required)
+
+	return adapter->aq_required ? 20 : 2000;
+}
+
+static void iavf_watchdog_task(struct work_struct *work)
+{
+	struct iavf_adapter *adapter = container_of(work,
+						    struct iavf_adapter,
+						    watchdog_task.work);
+	struct net_device *netdev = adapter->netdev;
+	int msec_delay;
+
+	netdev_lock(netdev);
+	if (!mutex_trylock(&adapter->crit_lock)) {
+		if (adapter->state == __IAVF_REMOVE) {
+			netdev_unlock(netdev);
+			return;
+		}
+
 		msec_delay = 20;
-	else
-		msec_delay = 2000;
+		goto restart_watchdog;
+	}
+
+	msec_delay = iavf_watchdog_step(adapter);
 
-watchdog_done:
 	mutex_unlock(&adapter->crit_lock);
 restart_watchdog:
 	netdev_unlock(netdev);
-- 
2.39.3

