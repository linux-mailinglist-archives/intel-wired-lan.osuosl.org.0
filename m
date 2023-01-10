Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E39E6638BA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jan 2023 06:48:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5518F8137B;
	Tue, 10 Jan 2023 05:48:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5518F8137B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673329735;
	bh=mUp0QT0iwH8KBfS0LDFavoLNc8aSJgGAU7DZrFkHWvk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=014LFxECQa/SromXoWeHkmUmUH6RrkndRHnFuLvwzv+XchUpVDY3g5Zl5D3SclG6s
	 2P6jAiSSEOKMPgzjKTh+l9Met/BqGEtIduA8UfTqOc5/bl2KVqNmKwLooSlAbx5mnk
	 LCzS6fw+bGNw65TSkCYTOxHNaDuqd2+E9fvhwWv9vn5k96opzrIhLZieZla887S2ij
	 kp3TBkIDAvzJi/eJBqPJN9UhUhKZ/1ntLsvU3kL7Vh3KkRKgmVA6qKNeknKnQyZWEK
	 rIvJV7Q10NqnBYjGyHSh61n+ZwGRIrvucTgSV8Mr1W+u4gvrivLTPy++2wPMuuCf3u
	 c12i7YyxcLPpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uXzdBujFVRmW; Tue, 10 Jan 2023 05:48:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6172A81314;
	Tue, 10 Jan 2023 05:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6172A81314
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 470CF1BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 05:48:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C980408EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 05:48:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C980408EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GD1dGF5RiHUq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jan 2023 05:48:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7092408E3
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A7092408E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jan 2023 05:48:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="409312098"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="409312098"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 21:48:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="650249735"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="650249735"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.129])
 by orsmga007.jf.intel.com with ESMTP; 09 Jan 2023 21:48:45 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Jan 2023 07:48:41 +0200
Message-Id: <20230110054841.1857688-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673329727; x=1704865727;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nBsNfEq+9i8QmMbZVYQRYicz4T/QADeH6lpv3JneleI=;
 b=QXOnbKAaJbBU3Wz4GGbfutNSGX+yPDakwdDOrKna8Wceuwg6Dpbjy610
 9tUFFSJXc6JSgYqH4QjrzPCoafYQG2p2aG+nrNta+3P1THi/wTz6Pml5D
 TVNCRsDBolwqIvLnU9zHBMHRMOKGIKLXez/PTYouUOBolSdM9iAh5PWQx
 NIbz8jqBvcVePk7Sqh01oV9ZPBWw6ta4APuglnWBPEjF+T12xbbTQw2GY
 b7p/dMTJnbZ51/ZCcX8OItDx3D5pGKjl/wtSH/MAcZXsTjLJa2a0+F4jH
 asYpwocC/Mfwqtq/NtOURdGaOuTgv+iJi2SvJoXX7IdOnRdA6kqViW69f
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QXOnbKAa
Subject: [Intel-wired-lan] [PATCH net v1 1/1] igc: Add ndo_tx_timeout support
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

On some platforms, 100/1000/2500 speeds seem to have sometimes problems
reporting false positive tx unit hang during stressful UDP traffic. Likely
other Intel drivers introduce responses to a tx hang. Update the 'tx hang'
comparator with the comparison of the head and tail of ring pointers and
restore the tx_timeout_factor to the previous value (one).

This can be test by using netperf or iperf3 applications.
Example:
iperf3 -s -p 5001
iperf3 -c 192.168.0.2 --udp -p 5001 --time 600 -b 0

netserver -p 16604
netperf -H 192.168.0.2 -l 600 -p 16604 -t UDP_STREAM -- -m 64000

Fixes: b27b8dc77b5e ("igc: Increase timeout value for Speed 100/1000/2500")
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 25 +++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 13088b5bcf5b..b1031d5b32bc 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2957,7 +2957,9 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
 		if (tx_buffer->next_to_watch &&
 		    time_after(jiffies, tx_buffer->time_stamp +
 		    (adapter->tx_timeout_factor * HZ)) &&
-		    !(rd32(IGC_STATUS) & IGC_STATUS_TXOFF)) {
+		    !(rd32(IGC_STATUS) & IGC_STATUS_TXOFF) &&
+		    (rd32(IGC_TDH(tx_ring->reg_idx)) !=
+		    readl(tx_ring->tail))) {
 			/* detected Tx unit hang */
 			netdev_err(tx_ring->netdev,
 				   "Detected Tx Unit Hang\n"
@@ -5083,6 +5085,24 @@ static int igc_change_mtu(struct net_device *netdev, int new_mtu)
 	return 0;
 }
 
+/**
+ * igc_tx_timeout - Respond to a Tx Hang
+ * @netdev: network interface device structure
+ * @txqueue: queue number that timed out
+ **/
+static void igc_tx_timeout(struct net_device *netdev,
+			   unsigned int __always_unused txqueue)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct igc_hw *hw = &adapter->hw;
+
+	/* Do the reset outside of interrupt context */
+	adapter->tx_timeout_count++;
+	schedule_work(&adapter->reset_task);
+	wr32(IGC_EICS,
+	     (adapter->eims_enable_mask & ~adapter->eims_other));
+}
+
 /**
  * igc_get_stats64 - Get System Network Statistics
  * @netdev: network interface device structure
@@ -5510,7 +5530,7 @@ static void igc_watchdog_task(struct work_struct *work)
 			case SPEED_100:
 			case SPEED_1000:
 			case SPEED_2500:
-				adapter->tx_timeout_factor = 7;
+				adapter->tx_timeout_factor = 1;
 				break;
 			}
 
@@ -6352,6 +6372,7 @@ static const struct net_device_ops igc_netdev_ops = {
 	.ndo_set_rx_mode	= igc_set_rx_mode,
 	.ndo_set_mac_address	= igc_set_mac,
 	.ndo_change_mtu		= igc_change_mtu,
+	.ndo_tx_timeout		= igc_tx_timeout,
 	.ndo_get_stats64	= igc_get_stats64,
 	.ndo_fix_features	= igc_fix_features,
 	.ndo_set_features	= igc_set_features,
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
