Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A18F8E0C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D406022660;
	Wed, 14 Aug 2019 22:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W100OnobTWqz; Wed, 14 Aug 2019 22:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E0AE922730;
	Wed, 14 Aug 2019 22:31:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B27511BF96B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 07:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A67AE87FCF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 07:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dgphm2aqYaHN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 07:28:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C9C0B87FB2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 07:28:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 00:28:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,384,1559545200"; d="scan'208";a="327923120"
Received: from mkarlsso-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.52.109])
 by orsmga004.jf.intel.com with ESMTP; 14 Aug 2019 00:28:38 -0700
From: Magnus Karlsson <magnus.karlsson@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, brouer@redhat.com,
 maximmi@mellanox.com
Date: Wed, 14 Aug 2019 09:27:22 +0200
Message-Id: <1565767643-4908-8-git-send-email-magnus.karlsson@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
References: <1565767643-4908-1-git-send-email-magnus.karlsson@intel.com>
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v4 7/8] net/mlx5e: Move the SW
 XSK code from NAPI poll to a separate function
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
Cc: axboe@kernel.dk, maciejromanfijalkowski@gmail.com, kevin.laatz@intel.com,
 jakub.kicinski@netronome.com, bruce.richardson@intel.com,
 ciara.loftus@intel.com, ilias.apalodimas@linaro.org, xiaolong.ye@intel.com,
 jonathan.lemon@gmail.com, qi.z.zhang@intel.com, maciej.fijalkowski@intel.com,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maxim Mikityanskiy <maximmi@mellanox.com>

Two XSK tasks are performed during NAPI polling, that are not bound to
hardware interrupts: TXing packets and polling for frames in the Fill
Ring. They are special in a way that the hardware doesn't know about
these tasks, so it doesn't trigger interrupts if there is still some
work to be done, it's our driver's responsibility to ensure NAPI will be
rescheduled if needed.

Create a new function to handle these tasks and move the corresponding
code from mlx5e_napi_poll to the new function to improve modularity and
prepare for the changes in the following patch.

Signed-off-by: Maxim Mikityanskiy <maximmi@mellanox.com>
Reviewed-by: Tariq Toukan <tariqt@mellanox.com>
Reviewed-by: Saeed Mahameed <saeedm@mellanox.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c b/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
index 49b06b2..6d16dee 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
@@ -81,6 +81,16 @@ void mlx5e_trigger_irq(struct mlx5e_icosq *sq)
 	mlx5e_notify_hw(wq, sq->pc, sq->uar_map, &nopwqe->ctrl);
 }
 
+static bool mlx5e_napi_xsk_post(struct mlx5e_xdpsq *xsksq, struct mlx5e_rq *xskrq)
+{
+	bool busy_xsk = false;
+
+	busy_xsk |= mlx5e_xsk_tx(xsksq, MLX5E_TX_XSK_POLL_BUDGET);
+	busy_xsk |= xskrq->post_wqes(xskrq);
+
+	return busy_xsk;
+}
+
 int mlx5e_napi_poll(struct napi_struct *napi, int budget)
 {
 	struct mlx5e_channel *c = container_of(napi, struct mlx5e_channel,
@@ -122,8 +132,7 @@ int mlx5e_napi_poll(struct napi_struct *napi, int budget)
 	if (xsk_open) {
 		mlx5e_poll_ico_cq(&c->xskicosq.cq);
 		busy |= mlx5e_poll_xdpsq_cq(&xsksq->cq);
-		busy_xsk |= mlx5e_xsk_tx(xsksq, MLX5E_TX_XSK_POLL_BUDGET);
-		busy_xsk |= xskrq->post_wqes(xskrq);
+		busy_xsk |= mlx5e_napi_xsk_post(xsksq, xskrq);
 	}
 
 	busy |= busy_xsk;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
