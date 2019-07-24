Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 478117327F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 17:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A54085ED2;
	Wed, 24 Jul 2019 15:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sJWCReVNHcnQ; Wed, 24 Jul 2019 15:11:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F1A0285EC6;
	Wed, 24 Jul 2019 15:11:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DDBD1BF357
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 13:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3A7A486841
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 13:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KSUXW+pjFwsQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 13:26:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AC59A8683C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 13:26:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 06:26:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="369295154"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.140])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jul 2019 06:26:28 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com,
 jakub.kicinski@netronome.com, jonathan.lemon@gmail.com,
 saeedm@mellanox.com, maximmi@mellanox.com, stephen@networkplumber.org
Date: Wed, 24 Jul 2019 05:10:38 +0000
Message-Id: <20190724051043.14348-7-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190724051043.14348-1-kevin.laatz@intel.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Wed, 24 Jul 2019 15:10:50 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v3 06/11] mlx5e: modify driver
 for handling offsets
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
Cc: bruce.richardson@intel.com, ciara.loftus@intel.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Kevin Laatz <kevin.laatz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

With the addition of the unaligned chunks option, we need to make sure we
handle the offsets accordingly based on the mode we are currently running
in. This patch modifies the driver to appropriately mask the address for
each case.

Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>

---
v3:
  - Use new helper function to handle offset
---
 drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c    | 8 ++++++--
 drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c | 9 +++++++--
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
index b0b982cf69bb..d5245893d2c8 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
@@ -122,6 +122,7 @@ bool mlx5e_xdp_handle(struct mlx5e_rq *rq, struct mlx5e_dma_info *di,
 		      void *va, u16 *rx_headroom, u32 *len, bool xsk)
 {
 	struct bpf_prog *prog = READ_ONCE(rq->xdp_prog);
+	struct xdp_umem *umem = rq->umem;
 	struct xdp_buff xdp;
 	u32 act;
 	int err;
@@ -138,8 +139,11 @@ bool mlx5e_xdp_handle(struct mlx5e_rq *rq, struct mlx5e_dma_info *di,
 	xdp.rxq = &rq->xdp_rxq;
 
 	act = bpf_prog_run_xdp(prog, &xdp);
-	if (xsk)
-		xdp.handle += xdp.data - xdp.data_hard_start;
+	if (xsk) {
+		u64 off = xdp.data - xdp.data_hard_start;
+
+		xdp.handle = xsk_umem_handle_offset(umem, xdp.handle, off);
+	}
 	switch (act) {
 	case XDP_PASS:
 		*rx_headroom = xdp.data - xdp.data_hard_start;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
index 35e188cf4ea4..f596e63cba00 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
@@ -61,6 +61,7 @@ bool mlx5e_xsk_tx(struct mlx5e_xdpsq *sq, unsigned int budget)
 	struct mlx5e_xdp_xmit_data xdptxd;
 	bool work_done = true;
 	bool flush = false;
+	u64 addr, offset;
 
 	xdpi.mode = MLX5E_XDP_XMIT_MODE_XSK;
 
@@ -82,8 +83,12 @@ bool mlx5e_xsk_tx(struct mlx5e_xdpsq *sq, unsigned int budget)
 			break;
 		}
 
-		xdptxd.dma_addr = xdp_umem_get_dma(umem, desc.addr);
-		xdptxd.data = xdp_umem_get_data(umem, desc.addr);
+		/* for unaligned chunks need to take offset from upper bits */
+		offset = (desc.addr >> XSK_UNALIGNED_BUF_OFFSET_SHIFT);
+		addr = (desc.addr & XSK_UNALIGNED_BUF_ADDR_MASK);
+
+		xdptxd.dma_addr = xdp_umem_get_dma(umem, addr + offset);
+		xdptxd.data = xdp_umem_get_data(umem, addr + offset);
 		xdptxd.len = desc.len;
 
 		dma_sync_single_for_device(sq->pdev, xdptxd.dma_addr,
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
