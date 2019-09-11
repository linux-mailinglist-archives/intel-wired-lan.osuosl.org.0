Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D692B0362
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2019 20:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB5CA85F98;
	Wed, 11 Sep 2019 18:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eXNVmTFo5S3x; Wed, 11 Sep 2019 18:10:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BCDB84471;
	Wed, 11 Sep 2019 18:10:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C7951BF59B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 17:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 98A8383616
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 17:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t2yC2LHuiedb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2019 17:26:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E5A7C83604
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2019 17:26:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 10:26:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="384772689"
Received: from silpixa00399839.ir.intel.com (HELO localhost.localdomain)
 ([10.237.223.65])
 by fmsmga005.fm.intel.com with ESMTP; 11 Sep 2019 10:26:31 -0700
From: Ciara Loftus <ciara.loftus@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com, jonathan.lemon@gmail.com
Date: Wed, 11 Sep 2019 17:24:33 +0000
Message-Id: <20190911172435.21042-1-ciara.loftus@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Wed, 11 Sep 2019 18:09:15 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next 1/3] i40e: fix xdp handle
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

Commit 4c5d9a7fa149 ("i40e: fix xdp handle calculations") reintroduced
the addition of the umem headroom to the xdp handle in the i40e_zca_free,
i40e_alloc_buffer_slow_zc and i40e_alloc_buffer_zc functions. However,
the headroom is already added to the handle in the function i40_run_xdp_zc.
This commit removes the latter addition and fixes the case where the
headroom is non-zero.

Fixes: 4c5d9a7fa149 ("i40e: fix xdp handle calculations")
Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 0373bc6c7e61..5f285ba1f1f9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -192,7 +192,7 @@ static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
 {
 	struct xdp_umem *umem = rx_ring->xsk_umem;
 	int err, result = I40E_XDP_PASS;
-	u64 offset = umem->headroom;
+	u64 offset;
 	struct i40e_ring *xdp_ring;
 	struct bpf_prog *xdp_prog;
 	u32 act;
@@ -203,7 +203,7 @@ static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
 	 */
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
