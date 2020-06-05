Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F4D1EFE92
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jun 2020 19:12:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B0CB85E8C;
	Fri,  5 Jun 2020 17:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BcIyJdJ4nuoY; Fri,  5 Jun 2020 17:12:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8147787199;
	Fri,  5 Jun 2020 17:12:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D13C61BF30B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 17:12:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BC79B20371
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 17:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mntGxE75LoZy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2020 17:12:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 16633228B0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 17:12:16 +0000 (UTC)
IronPort-SDR: 4MSQdDhgvwX3DGEhFONFUA59MgHED6uND272CDi7qMegcgr2P3My+G0xs+RHzeSNLAq7qQnkYO
 gOj6W1LnknjQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 10:12:15 -0700
IronPort-SDR: SC5kS4EgB/rVaKsX0jt9OCwxGFwLuBRmvFB6wn9f4t9h98vaDUyBDZIrHLF2Pty1HIX7cbsVSw
 lc1HvRw7+Wgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,477,1583222400"; d="scan'208";a="273530624"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 05 Jun 2020 10:12:14 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  5 Jun 2020 10:09:46 -0700
Message-Id: <20200605170946.23494-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200605170946.23494-1-anthony.l.nguyen@intel.com>
References: <20200605170946.23494-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 4/4] iavf: increase reset complete wait
 time
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>

With an increased number of VFs, it's possible to encounter the following
issue during reset.

    iavf b8d4:00:02.0: Hardware reset detected
    iavf b8d4:00:02.0: Reset never finished (0)
    iavf b8d4:00:02.0: Reset task did not complete, VF disabled

Increase the reset complete wait count to allow for 128 VFs to complete
reset.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  4 ++++
 drivers/net/ethernet/intel/iavf/iavf_main.c | 12 +++++-------
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 56cd1a39a4b5..8a65525a7c0d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -219,6 +219,10 @@ struct iavf_cloud_filter {
 	bool add;		/* filter needs to be added */
 };
 
+#define IAVF_RESET_WAIT_MS 10
+#define IAVF_RESET_WAIT_DETECTED_COUNT 500
+#define IAVF_RESET_WAIT_COMPLETE_COUNT 2000
+
 /* board specific private data structure */
 struct iavf_adapter {
 	struct work_struct reset_task;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 3f3c6260c5df..78bd9e3df3ac 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2035,8 +2035,6 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	dev_info(&adapter->pdev->dev, "Reset task did not complete, VF disabled\n");
 }
 
-#define IAVF_RESET_WAIT_MS 10
-#define IAVF_RESET_WAIT_COUNT 500
 /**
  * iavf_reset_task - Call-back task to handle hardware reset
  * @work: pointer to work_struct
@@ -2090,20 +2088,20 @@ static void iavf_reset_task(struct work_struct *work)
 	adapter->flags |= IAVF_FLAG_RESET_PENDING;
 
 	/* poll until we see the reset actually happen */
-	for (i = 0; i < IAVF_RESET_WAIT_COUNT; i++) {
+	for (i = 0; i < IAVF_RESET_WAIT_DETECTED_COUNT; i++) {
 		reg_val = rd32(hw, IAVF_VF_ARQLEN1) &
 			  IAVF_VF_ARQLEN1_ARQENABLE_MASK;
 		if (!reg_val)
 			break;
 		usleep_range(5000, 10000);
 	}
-	if (i == IAVF_RESET_WAIT_COUNT) {
+	if (i == IAVF_RESET_WAIT_DETECTED_COUNT) {
 		dev_info(&adapter->pdev->dev, "Never saw reset\n");
 		goto continue_reset; /* act like the reset happened */
 	}
 
 	/* wait until the reset is complete and the PF is responding to us */
-	for (i = 0; i < IAVF_RESET_WAIT_COUNT; i++) {
+	for (i = 0; i < IAVF_RESET_WAIT_COMPLETE_COUNT; i++) {
 		/* sleep first to make sure a minimum wait time is met */
 		msleep(IAVF_RESET_WAIT_MS);
 
@@ -2115,7 +2113,7 @@ static void iavf_reset_task(struct work_struct *work)
 
 	pci_set_master(adapter->pdev);
 
-	if (i == IAVF_RESET_WAIT_COUNT) {
+	if (i == IAVF_RESET_WAIT_COMPLETE_COUNT) {
 		dev_err(&adapter->pdev->dev, "Reset never finished (%x)\n",
 			reg_val);
 		iavf_disable_vf(adapter);
@@ -3418,7 +3416,7 @@ static int iavf_check_reset_complete(struct iavf_hw *hw)
 	u32 rstat;
 	int i;
 
-	for (i = 0; i < 100; i++) {
+	for (i = 0; i < IAVF_RESET_WAIT_COMPLETE_COUNT; i++) {
 		rstat = rd32(hw, IAVF_VFGEN_RSTAT) &
 			     IAVF_VFGEN_RSTAT_VFR_STATE_MASK;
 		if ((rstat == VIRTCHNL_VFR_VFACTIVE) ||
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
