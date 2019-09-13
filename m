Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F05D7B1BB0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2019 12:42:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1FA38410C;
	Fri, 13 Sep 2019 10:42:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K61+xfGkcvoK; Fri, 13 Sep 2019 10:42:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D97AE87678;
	Fri, 13 Sep 2019 10:42:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 135B31BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 10:42:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0BA0820115
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 10:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EnGd-VGz-6Wh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Sep 2019 10:42:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id D2BEF20463
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 10:42:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 03:42:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="187784065"
Received: from silpixa00399839.ir.intel.com (HELO localhost.localdomain)
 ([10.237.223.65])
 by orsmga003.jf.intel.com with ESMTP; 13 Sep 2019 03:42:25 -0700
From: Ciara Loftus <ciara.loftus@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com, jonathan.lemon@gmail.com
Date: Fri, 13 Sep 2019 10:39:47 +0000
Message-Id: <20190913103948.32053-3-ciara.loftus@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190913103948.32053-1-ciara.loftus@intel.com>
References: <20190913103948.32053-1-ciara.loftus@intel.com>
Subject: [Intel-wired-lan] [PATCH bpf-next v2 2/3] ixgbe: fix xdp handle
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
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index ad802a8909e0..fd45d12b5a98 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -145,15 +145,15 @@ static int ixgbe_run_xdp_zc(struct ixgbe_adapter *adapter,
 {
 	struct xdp_umem *umem = rx_ring->xsk_umem;
 	int err, result = IXGBE_XDP_PASS;
-	u64 offset = umem->headroom;
 	struct bpf_prog *xdp_prog;
 	struct xdp_frame *xdpf;
+	u64 offset;
 	u32 act;
 
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
