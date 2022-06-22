Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 260AA5544CD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jun 2022 11:15:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73D5B612F6;
	Wed, 22 Jun 2022 09:15:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73D5B612F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655889322;
	bh=1OgbqXq1WhjVKFBqRf1q3Fqd5pwlKMSea3iTj2k77uM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6PnD2Le+AjOJdMS/pBQqT3VAV5mAoS6twew98IljoC4FJH/dh8YKycGM8q9g4fep2
	 yXXrCSfZrEa3ZKGePOqJzuVY0bZjTvY9eqWujoY/lYGA4R2jSdlnUdq6cXOJjCzh3l
	 /KzI3f5U3Zwy/2A22pUG+GNkmx5ycc20YyiiwInVLE1n7WVx7VQurJOdv6j3OyLSgR
	 YHRVyPyuRVEHGAQIyRUUUGUfgPIZsowwoVtB2ExO5sXrK8MOBbMBelYiA2ZlMrUwM+
	 PLzeTXcgDEnzBkOzUgYWNb1aGeHlSQeuVvHxHyMPsVC+OqcMSuX/D6TX2A5HIS+ZNW
	 U9JIPKEQN8XkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JepFhbMViYbv; Wed, 22 Jun 2022 09:15:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FABD61273;
	Wed, 22 Jun 2022 09:15:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FABD61273
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B63D61BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 09:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D7E661273
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 09:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D7E661273
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OUSAS-ixuMBo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jun 2022 09:15:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7F8D606E6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7F8D606E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 09:15:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="277912085"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="277912085"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 02:15:14 -0700
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="562883193"
Received: from silpixa00401086.ir.intel.com ([10.55.128.124])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 02:15:12 -0700
From: Ciara Loftus <ciara.loftus@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 kuba@kernel.org
Date: Wed, 22 Jun 2022 09:14:47 +0000
Message-Id: <20220622091447.243101-1-ciara.loftus@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655889315; x=1687425315;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qkIbc9bgxwlz5t1sR0ht0Cvk/IpQWMrSNCWK6J6W2/A=;
 b=X4cIlpYb4Ne449deqTVWfktSJ5+mVOUkdKIYUISZbjn57Kf1RT8tWF95
 iu5Jwc6Fk4BrYShfSI4glkudRpekP8nRNEp8+fQGoM7RwM5vBlyMZWKiw
 WmOl1/0DNJ2MkH7bpKzTyUyf1j5cPICrqnRHIMdq4TlwUYfAyYHgJ0V5l
 JHS711pqwT4l98oLWyzbXK6FakAmYnlB84iKZ4sZa6mIEAOuO9WzN7fSW
 vWMBbO5Ggr0JyTMnM/6F86zkmk6f0Jg8Ub0fGKxEjxaUYAhTwRlI32jde
 GiCQq/97Rn8vKJVeJzzXyOAVr8V6NMBSyKMDIICvV8ssuVyrFaKkpEYLa
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X4cIlpYb
Subject: [Intel-wired-lan] [PATCH net-next] i40e: xsk: read the XDP program
 once per NAPI
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Similar to how it's done in the ice driver since 'eb087cd82864 ("ice:
propagate xdp_ring onto rx_ring")', read the XDP program once per NAPI
instead of once per descriptor cleaned. I measured an improvement in
throughput of 2% for the AF_XDP xdpsock l2fwd benchmark in busy polling
mode on my platform.

Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index af3e7e6afc85..2f422c61ac11 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -146,17 +146,13 @@ int i40e_xsk_pool_setup(struct i40e_vsi *vsi, struct xsk_buff_pool *pool,
  *
  * Returns any of I40E_XDP_{PASS, CONSUMED, TX, REDIR}
  **/
-static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
+static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp,
+			   struct bpf_prog *xdp_prog)
 {
 	int err, result = I40E_XDP_PASS;
 	struct i40e_ring *xdp_ring;
-	struct bpf_prog *xdp_prog;
 	u32 act;
 
-	/* NB! xdp_prog will always be !NULL, due to the fact that
-	 * this path is enabled by setting an XDP program.
-	 */
-	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
 
 	if (likely(act == XDP_REDIRECT)) {
@@ -339,9 +335,15 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 	u16 next_to_clean = rx_ring->next_to_clean;
 	u16 count_mask = rx_ring->count - 1;
 	unsigned int xdp_res, xdp_xmit = 0;
+	struct bpf_prog *xdp_prog;
 	bool failure = false;
 	u16 cleaned_count;
 
+	/* NB! xdp_prog will always be !NULL, due to the fact that
+	 * this path is enabled by setting an XDP program.
+	 */
+	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
+
 	while (likely(total_rx_packets < (unsigned int)budget)) {
 		union i40e_rx_desc *rx_desc;
 		unsigned int rx_packets;
@@ -378,7 +380,7 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 		xsk_buff_set_size(bi, size);
 		xsk_buff_dma_sync_for_cpu(bi, rx_ring->xsk_pool);
 
-		xdp_res = i40e_run_xdp_zc(rx_ring, bi);
+		xdp_res = i40e_run_xdp_zc(rx_ring, bi, xdp_prog);
 		i40e_handle_xdp_result_zc(rx_ring, bi, rx_desc, &rx_packets,
 					  &rx_bytes, size, xdp_res, &failure);
 		if (failure)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
