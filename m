Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DE81CE1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2019 19:37:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B362587CDA;
	Tue, 14 May 2019 17:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pHDadC7DKSug; Tue, 14 May 2019 17:37:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B6C787CC4;
	Tue, 14 May 2019 17:37:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 193921BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 980632FCEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:37:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HGdDGHyzuNZF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2019 17:37:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 843C41FEF9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:37:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 10:37:31 -0700
X-ExtLoop1: 1
Received: from alicemic-2.jf.intel.com ([10.166.16.121])
 by orsmga003.jf.intel.com with ESMTP; 14 May 2019 10:37:30 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 14 May 2019 10:37:06 -0700
Message-Id: <20190514173709.62431-8-alice.michael@intel.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190514173709.62431-1-alice.michael@intel.com>
References: <20190514173709.62431-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S5 iavf 08/11] iavf: Refactor the
 watchdog state machine
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
Cc: Jakub Pawlak <jakub.pawlak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jan Sokolowski <jan.sokolowski@intel.com>

Refactor the watchdog state machine implementation.
Add the additional state __IAVF_COMM_FAILED to process
the PF communication fails. Prepare the watchdog state machine
to integrate with init state machine.

Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c | 73 ++++++++++++---------
 2 files changed, 44 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 45dfb1a3bb40..9fc635d816d2 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -171,6 +171,7 @@ enum iavf_state_t {
 	__IAVF_INIT_GET_RESOURCES,	/* aq msg sent, awaiting reply */
 	__IAVF_INIT_SW,		/* got resources, setting up structs */
 	__IAVF_RESETTING,		/* in reset */
+	__IAVF_COMM_FAILED,		/* communication with PF failed */
 	/* Below here, watchdog is running */
 	__IAVF_DOWN,			/* ready, can be opened */
 	__IAVF_DOWN_PENDING,		/* descending, waiting for watchdog */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 7d994802d82e..5c25cf3754bb 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1674,13 +1674,18 @@ static void iavf_watchdog_task(struct work_struct *work)
 	if (test_and_set_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section))
 		goto restart_watchdog;
 
-	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) {
+	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
+		adapter->state = __IAVF_COMM_FAILED;
+
+	switch (adapter->state) {
+	case __IAVF_COMM_FAILED:
 		reg_val = rd32(hw, IAVF_VFGEN_RSTAT) &
 			  IAVF_VFGEN_RSTAT_VFR_STATE_MASK;
 		if (reg_val == VIRTCHNL_VFR_VFACTIVE ||
 		    reg_val == VIRTCHNL_VFR_COMPLETED) {
 			/* A chance for redemption! */
-			dev_err(&adapter->pdev->dev, "Hardware came out of reset. Attemptingreinit.\n");
+			dev_err(&adapter->pdev->dev,
+				"Hardware came out of reset. Attempting reinit.\n");
 			adapter->state = __IAVF_STARTUP;
 			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
 			queue_delayed_work(iavf_wq, &adapter->init_task, 10);
@@ -1695,50 +1700,58 @@ static void iavf_watchdog_task(struct work_struct *work)
 		}
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
+		clear_bit(__IAVF_IN_CRITICAL_TASK,
+			  &adapter->crit_section);
+		queue_delayed_work(iavf_wq,
+				   &adapter->watchdog_task,
+				   msecs_to_jiffies(10));
 		goto watchdog_done;
+	case __IAVF_RESETTING:
+		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
+		return;
+	case __IAVF_DOWN:
+	case __IAVF_DOWN_PENDING:
+	case __IAVF_TESTING:
+	case __IAVF_RUNNING:
+		if (adapter->current_op) {
+			if (!iavf_asq_done(hw)) {
+				dev_dbg(&adapter->pdev->dev,
+					"Admin queue timeout\n");
+				iavf_send_api_ver(adapter);
+			}
+		} else {
+			if (!iavf_process_aq_command(adapter) &&
+			    adapter->state == __IAVF_RUNNING)
+				iavf_request_stats(adapter);
+		}
+		break;
+	case __IAVF_REMOVE:
+		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
+		return;
+	default:
+		goto restart_watchdog;
 	}
 
-	if (adapter->state < __IAVF_DOWN ||
-	    (adapter->flags & IAVF_FLAG_RESET_PENDING))
-		goto watchdog_done;
-
-	/* check for reset */
+		/* check for hw reset */
 	reg_val = rd32(hw, IAVF_VF_ARQLEN1) & IAVF_VF_ARQLEN1_ARQENABLE_MASK;
-	if (!(adapter->flags & IAVF_FLAG_RESET_PENDING) && !reg_val) {
+	if (!reg_val) {
 		adapter->state = __IAVF_RESETTING;
 		adapter->flags |= IAVF_FLAG_RESET_PENDING;
-		dev_err(&adapter->pdev->dev, "Hardware reset detected\n");
-		queue_work(iavf_wq, &adapter->reset_task);
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
+		dev_err(&adapter->pdev->dev, "Hardware reset detected\n");
+		queue_work(iavf_wq, &adapter->reset_task);
 		goto watchdog_done;
 	}
 
-	/* Process admin queue tasks. After init, everything gets done
-	 * here so we don't race on the admin queue.
-	 * The check is made against -EAGAIN, as it's the error code that
-	 * would be returned on no op to run. Failures of called functions
-	 * return other values.
-	 */
-	if (adapter->current_op) {
-		if (!iavf_asq_done(hw)) {
-			dev_dbg(&adapter->pdev->dev, "Admin queue timeout\n");
-			iavf_send_api_ver(adapter);
-		}
-	} else if (iavf_process_aq_command(adapter) == -EAGAIN &&
-		   adapter->state == __IAVF_RUNNING) {
-		iavf_request_stats(adapter);
-	}
-
 	schedule_delayed_work(&adapter->client_task, msecs_to_jiffies(5));
-
 watchdog_done:
-	if (adapter->state == __IAVF_RUNNING)
+	if (adapter->state == __IAVF_RUNNING ||
+	    adapter->state == __IAVF_COMM_FAILED)
 		iavf_detect_recover_hung(&adapter->vsi);
 	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
 restart_watchdog:
-	if (adapter->state == __IAVF_REMOVE)
-		return;
 	if (adapter->aq_required)
 		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
 				   msecs_to_jiffies(20));
-- 
2.19.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
