Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C377236EF3C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Apr 2021 19:58:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 258BD41A17;
	Thu, 29 Apr 2021 17:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YPHuEmevCLk7; Thu, 29 Apr 2021 17:58:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93D9141A0F;
	Thu, 29 Apr 2021 17:58:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52B801BF271
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 17:58:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 416E9419A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 17:58:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F7DyTeYi09Mt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Apr 2021 17:58:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 64BBD40100
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 17:58:33 +0000 (UTC)
IronPort-SDR: dlewzeaVFCm8d2i8MYmiJz30n++/p47NQq0XoPzaE1Ir6xpcp9l/NjBvlTDpni6+ehh1+Q/yXo
 eCVmW+Ist94Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="196632826"
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; d="scan'208";a="196632826"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 10:58:31 -0700
IronPort-SDR: clNEyk62EW1W57y9WZq125PkxvfmEOuRbgb/FTSnHU9NdwQISGhmtfdMTnNS2LQ+Mh/qRoaBqs
 PrNfHaXlI/6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; d="scan'208";a="404239436"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga002.jf.intel.com with ESMTP; 29 Apr 2021 10:58:28 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 29 Apr 2021 19:49:47 +0200
Message-Id: <20210429174947.10691-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix logic of disabling queues
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Correct the message flow between driver and firmware when disabling
queues.

Previously in case of PF reset (due to required reinit after reconfig),
the error like: "VSI seid 397 Tx ring 60 disable timeout" could show up
occasionally. The error was not a real issue of hardware or firmware,
it was caused by wrong sequence of messages invoked by the driver.

Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 58 ++++++++++++---------
 1 file changed, 34 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index c34a4b3..9a2c56b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -4458,11 +4458,10 @@ int i40e_control_wait_tx_q(int seid, struct i40e_pf *pf, int pf_q,
 }
 
 /**
- * i40e_vsi_control_tx - Start or stop a VSI's rings
+ * i40e_vsi_enable_tx - Start a VSI's rings
  * @vsi: the VSI being configured
- * @enable: start or stop the rings
  **/
-static int i40e_vsi_control_tx(struct i40e_vsi *vsi, bool enable)
+static int i40e_vsi_enable_tx(struct i40e_vsi *vsi)
 {
 	struct i40e_pf *pf = vsi->back;
 	int i, pf_q, ret = 0;
@@ -4471,7 +4470,7 @@ static int i40e_vsi_control_tx(struct i40e_vsi *vsi, bool enable)
 	for (i = 0; i < vsi->num_queue_pairs; i++, pf_q++) {
 		ret = i40e_control_wait_tx_q(vsi->seid, pf,
 					     pf_q,
-					     false /*is xdp*/, enable);
+					     false /*is xdp*/, true);
 		if (ret)
 			break;
 
@@ -4480,7 +4479,7 @@ static int i40e_vsi_control_tx(struct i40e_vsi *vsi, bool enable)
 
 		ret = i40e_control_wait_tx_q(vsi->seid, pf,
 					     pf_q + vsi->alloc_queue_pairs,
-					     true /*is xdp*/, enable);
+					     true /*is xdp*/, true);
 		if (ret)
 			break;
 	}
@@ -4578,32 +4577,25 @@ int i40e_control_wait_rx_q(struct i40e_pf *pf, int pf_q, bool enable)
 }
 
 /**
- * i40e_vsi_control_rx - Start or stop a VSI's rings
+ * i40e_vsi_enable_rx - Start a VSI's rings
  * @vsi: the VSI being configured
- * @enable: start or stop the rings
  **/
-static int i40e_vsi_control_rx(struct i40e_vsi *vsi, bool enable)
+static int i40e_vsi_enable_rx(struct i40e_vsi *vsi)
 {
 	struct i40e_pf *pf = vsi->back;
 	int i, pf_q, ret = 0;
 
 	pf_q = vsi->base_queue;
 	for (i = 0; i < vsi->num_queue_pairs; i++, pf_q++) {
-		ret = i40e_control_wait_rx_q(pf, pf_q, enable);
+		ret = i40e_control_wait_rx_q(pf, pf_q, true);
 		if (ret) {
 			dev_info(&pf->pdev->dev,
-				 "VSI seid %d Rx ring %d %sable timeout\n",
-				 vsi->seid, pf_q, (enable ? "en" : "dis"));
+				 "VSI seid %d Rx ring %d enable timeout\n",
+				 vsi->seid, pf_q);
 			break;
 		}
 	}
 
-	/* Due to HW errata, on Rx disable only, the register can indicate done
-	 * before it really is. Needs 50ms to be sure
-	 */
-	if (!enable)
-		mdelay(50);
-
 	return ret;
 }
 
@@ -4616,29 +4608,47 @@ int i40e_vsi_start_rings(struct i40e_vsi *vsi)
 	int ret = 0;
 
 	/* do rx first for enable and last for disable */
-	ret = i40e_vsi_control_rx(vsi, true);
+	ret = i40e_vsi_enable_rx(vsi);
 	if (ret)
 		return ret;
-	ret = i40e_vsi_control_tx(vsi, true);
+	ret = i40e_vsi_enable_tx(vsi);
 
 	return ret;
 }
 
+#define I40E_DISABLE_TX_GAP_MSEC	50
+
 /**
  * i40e_vsi_stop_rings - Stop a VSI's rings
  * @vsi: the VSI being configured
  **/
 void i40e_vsi_stop_rings(struct i40e_vsi *vsi)
 {
+	struct i40e_pf *pf = vsi->back;
+	int pf_q, err, q_end;
+
 	/* When port TX is suspended, don't wait */
 	if (test_bit(__I40E_PORT_SUSPENDED, vsi->back->state))
 		return i40e_vsi_stop_rings_no_wait(vsi);
 
-	/* do rx first for enable and last for disable
-	 * Ignore return value, we need to shutdown whatever we can
-	 */
-	i40e_vsi_control_tx(vsi, false);
-	i40e_vsi_control_rx(vsi, false);
+	q_end = vsi->base_queue + vsi->num_queue_pairs;
+	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
+		i40e_pre_tx_queue_cfg(&pf->hw, (u32)pf_q, false);
+
+	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++) {
+		err = i40e_control_wait_rx_q(pf, pf_q, false);
+		if (err)
+			dev_info(&pf->pdev->dev,
+				 "VSI seid %d Rx ring %d dissable timeout\n",
+				 vsi->seid, pf_q);
+	}
+
+	msleep(I40E_DISABLE_TX_GAP_MSEC);
+	pf_q = vsi->base_queue;
+	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
+		wr32(&pf->hw, I40E_QTX_ENA(pf_q), 0);
+
+	i40e_vsi_wait_queues_disabled(vsi);
 }
 
 /**

base-commit: 776a417daec6a28fdf89426ea98126f8a03c79a1
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
