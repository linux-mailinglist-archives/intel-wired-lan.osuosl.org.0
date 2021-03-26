Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E83A34AEC8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 19:52:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81F4084C95;
	Fri, 26 Mar 2021 18:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xa-U5euk05nX; Fri, 26 Mar 2021 18:52:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8471684C80;
	Fri, 26 Mar 2021 18:52:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 93D961BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 18:52:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D07B405FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 18:52:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MrYnaJ-kyK9g for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 18:52:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A3AD04026E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 18:52:12 +0000 (UTC)
IronPort-SDR: jxiGPYH3Fgqb/0S66VBlCwIYAZgw65PcRHWAIqnEvvO4/JB7As8SWLEEz3W0vvaVxVq2EgsT3i
 EwdgI297O/qg==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="255196415"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="255196415"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 11:52:10 -0700
IronPort-SDR: i7wqBS9pxem5ngDzyZ9wTxM/91ouDKxYi8EFS/dgmXXAhv7ivlN1aRWEJzmZa0ktGcaPXfhERM
 25+ayaH/mnDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="436979816"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga004.fm.intel.com with ESMTP; 26 Mar 2021 11:52:09 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Mar 2021 19:43:40 +0100
Message-Id: <20210326184343.133396-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix sparse errors in i40e_txrx.c
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

Remove error handling through pointers. Instead use plain int
to return value from i40e_run_xdp(...).

Previously:
- sparse errors were produced during compilation:
i40e_txrx.c:2338 i40e_run_xdp() error: (-2147483647) too low for ERR_PTR
i40e_txrx.c:2558 i40e_clean_rx_irq() error: 'skb' dereferencing possible ERR_PTR()

- sk_buff* was used to return value, but it has never had valid
pointer to sk_buff. Returned value was always int handeled as
a pointer.

Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
Fixes: 2e6893123830 ("i40e: split XDP_TX tail and XDP_REDIRECT map flushing")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 5747a99..4345e45 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2295,7 +2295,7 @@ int i40e_xmit_xdp_tx_ring(struct xdp_buff *xdp, struct i40e_ring *xdp_ring)
  * @rx_ring: Rx ring being processed
  * @xdp: XDP buffer containing the frame
  **/
-static struct sk_buff *i40e_run_xdp(struct i40e_ring *rx_ring,
+static int i40e_run_xdp(struct i40e_ring *rx_ring,
 				    struct xdp_buff *xdp)
 {
 	int err, result = I40E_XDP_PASS;
@@ -2335,7 +2335,7 @@ static struct sk_buff *i40e_run_xdp(struct i40e_ring *rx_ring,
 	}
 xdp_out:
 	rcu_read_unlock();
-	return ERR_PTR(-result);
+	return result;
 }
 
 /**
@@ -2448,6 +2448,7 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 	unsigned int xdp_xmit = 0;
 	bool failure = false;
 	struct xdp_buff xdp;
+	int xdp_res = 0;
 
 #if (PAGE_SIZE < 8192)
 	frame_sz = i40e_rx_frame_truesize(rx_ring, 0);
@@ -2513,12 +2514,10 @@ static int i40e_clean_rx_irq(struct i40e_ring *rx_ring, int budget)
 			/* At larger PAGE_SIZE, frame_sz depend on len size */
 			xdp.frame_sz = i40e_rx_frame_truesize(rx_ring, size);
 #endif
-			skb = i40e_run_xdp(rx_ring, &xdp);
+			xdp_res = i40e_run_xdp(rx_ring, &xdp);
 		}
 
-		if (IS_ERR(skb)) {
-			unsigned int xdp_res = -PTR_ERR(skb);
-
+		if (xdp_res) {
 			if (xdp_res & (I40E_XDP_TX | I40E_XDP_REDIR)) {
 				xdp_xmit |= xdp_res;
 				i40e_rx_buffer_flip(rx_ring, rx_buffer, size);

base-commit: ca4303103f33952646218db4e0869e6f6aa1c840
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
