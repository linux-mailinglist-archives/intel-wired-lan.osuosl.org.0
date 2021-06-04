Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3068539BE01
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:05:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41737415E0;
	Fri,  4 Jun 2021 17:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gx9MQCG32vfL; Fri,  4 Jun 2021 17:05:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AE14415B7;
	Fri,  4 Jun 2021 17:05:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B58841BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A297D415B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OeKc8Ci3eXV9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 90BB2415E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:04 +0000 (UTC)
IronPort-SDR: 4gRuAbkfZ69zw+LP726nXT7dIxYueiEm+yIHW9R26MbNJn3ZXHhMhe/FZnzwMDiT4GagntpzSX
 HG/6W1Gb9Nlg==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="191666469"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="191666469"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:02 -0700
IronPort-SDR: 2n0+XwIWMtKdkhfmMg0wOKP106HsT75Ve8mGD5yAC7GG6d+WCD811UEyN2M9jHLSTCv5deFqlq
 bQQL4Pj67INA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086361"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:02 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:21 -0700
Message-Id: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 01/15] iavf: correctly track
 whether the interface is running during resets
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

From: Nicholas Nunley <nicholas.d.nunley@intel.com>

During a hardware reset the driver needs to know if the interface is
running so it can appropriately shut down and restore itself to the
previous state. However, as described in commit 44b034b40621 ("i40evf:
don't rely on netif_running() outside rtnl_lock()") the driver can't simply
grab rtnl_lock() in the reset path when it needs to check netif_running().

The previous fix for this was to have the driver use the __IAVF_RUNNING
state to stand in for netif_running(). This turns out to be incorrect,
since although __IAVF_RUNNING does tell is if the interface is running,
there are other states the driver could be in, and they don't accurately
indicate whether the interface is actually running or not.

Although adapter->state can't be used to reliably determine if the
interface is running, adapter->vsi.state can, so use this instead.

This patch also replaces the use of netif_running() in
iavf_reinit_interrupt_scheme() which was presumably overlooked earlier.

Signed-off-by: Nicholas Nunley <nicholas.d.nunley@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 1323778f461d..bf96a9dab962 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1486,7 +1486,7 @@ static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter)
 	struct net_device *netdev = adapter->netdev;
 	int err;
 
-	if (netif_running(netdev))
+	if (!test_bit(__IAVF_VSI_DOWN, adapter->vsi.state))
 		iavf_free_traffic_irqs(adapter);
 	iavf_free_misc_irq(adapter);
 	iavf_reset_interrupt_capability(adapter);
@@ -2029,7 +2029,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 	 * ndo_open() returning, so we can't assume it means all our open
 	 * tasks have finished, since we're not holding the rtnl_lock here.
 	 */
-	if (adapter->state == __IAVF_RUNNING) {
+	if (!test_bit(__IAVF_VSI_DOWN, adapter->vsi.state)) {
 		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 		netif_carrier_off(adapter->netdev);
 		netif_tx_disable(adapter->netdev);
@@ -2169,9 +2169,7 @@ static void iavf_reset_task(struct work_struct *work)
 	 * ndo_open() returning, so we can't assume it means all our open
 	 * tasks have finished, since we're not holding the rtnl_lock here.
 	 */
-	running = ((adapter->state == __IAVF_RUNNING) ||
-		   (adapter->state == __IAVF_RESETTING));
-
+	running = !test_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 	if (running) {
 		netif_carrier_off(netdev);
 		netif_tx_stop_all_queues(netdev);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
