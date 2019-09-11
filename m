Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 789D1B0361
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2019 20:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1069685F8F;
	Wed, 11 Sep 2019 18:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1cwWVxZjAR0W; Wed, 11 Sep 2019 18:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56C6282346;
	Wed, 11 Sep 2019 18:10:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2CED91BF59B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 17:26:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 29804860D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 17:26:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mXgyjljp645g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2019 17:26:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 27608815E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 17:26:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 10:26:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="384772712"
Received: from silpixa00399839.ir.intel.com (HELO localhost.localdomain)
 ([10.237.223.65])
 by fmsmga005.fm.intel.com with ESMTP; 11 Sep 2019 10:26:41 -0700
From: Ciara Loftus <ciara.loftus@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com, jonathan.lemon@gmail.com
Date: Wed, 11 Sep 2019 17:24:34 +0000
Message-Id: <20190911172435.21042-2-ciara.loftus@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190911172435.21042-1-ciara.loftus@intel.com>
References: <20190911172435.21042-1-ciara.loftus@intel.com>
X-Mailman-Approved-At: Wed, 11 Sep 2019 18:09:15 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next 2/3] ixgbe: fix xdp handle
 calculations
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
Cc: bruce.richardson@intel.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ciara Loftus <ciara.loftus@intel.com>,
 kevin.laatz@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 7cbbf9f1fa23 ("ixgbe: fix xdp handle calculations") reintroduced
the addition of the umem headroom to the xdp handle in the ixgbe_zca_free,
ixgbe_alloc_buffer_slow_zc and ixgbe_alloc_buffer_zc functions. However,
the headroom is already added to the handle in the function
ixgbe_run_xdp_zc. This commit removes the latter addition and fixes the
case where the headroom is non-zero.

Fixes: 7cbbf9f1fa23 ("ixgbe: fix xdp handle calculations")
Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index ad802a8909e0..5ed8b5a257cf 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -145,7 +145,7 @@ static int ixgbe_run_xdp_zc(struct ixgbe_adapter *adapter,
 {
 	struct xdp_umem *umem = rx_ring->xsk_umem;
 	int err, result = IXGBE_XDP_PASS;
-	u64 offset = umem->headroom;
+	u64 offset;
 	struct bpf_prog *xdp_prog;
 	struct xdp_frame *xdpf;
 	u32 act;
@@ -153,7 +153,7 @@ static int ixgbe_run_xdp_zc(struct ixgbe_adapter *adapter,
 	rcu_read_lock();
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
-	offset += xdp->data - xdp->data_hard_start;
+	offset = xdp->data - xdp->data_hard_start;
 
 	xdp->handle = xsk_umem_adjust_offset(umem, xdp->handle, offset);
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
