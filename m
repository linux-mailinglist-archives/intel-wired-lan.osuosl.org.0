Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D523B7B06A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2019 19:43:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0CA48664C;
	Tue, 30 Jul 2019 17:43:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N26mT2zvRUMH; Tue, 30 Jul 2019 17:43:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2E6C86256;
	Tue, 30 Jul 2019 17:43:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8FE21BF980
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2019 17:09:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A5B1A844A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2019 17:09:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CQdFqj-iS0s6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2019 17:09:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 205158449A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2019 17:09:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 10:09:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="183192584"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.140])
 by orsmga002.jf.intel.com with ESMTP; 30 Jul 2019 10:09:48 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com,
 jakub.kicinski@netronome.com, jonathan.lemon@gmail.com,
 saeedm@mellanox.com, maximmi@mellanox.com, stephen@networkplumber.org
Date: Tue, 30 Jul 2019 08:53:54 +0000
Message-Id: <20190730085400.10376-6-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190730085400.10376-1-kevin.laatz@intel.com>
References: <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190730085400.10376-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Tue, 30 Jul 2019 17:43:31 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v4 05/11] i40e: modify driver for
 handling offsets
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

Signed-off-by: Bruce Richardson <bruce.richardson@intel.com>
Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>

---
v3:
  - Use new helper function for handling the offset
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index dfa096db2244..09dd8fe28c35 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -190,7 +190,9 @@ int i40e_xsk_umem_setup(struct i40e_vsi *vsi, struct xdp_umem *umem,
  **/
 static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
 {
+	struct xdp_umem *umem = rx_ring->xsk_umem;
 	int err, result = I40E_XDP_PASS;
+	u64 offset = umem->headroom;
 	struct i40e_ring *xdp_ring;
 	struct bpf_prog *xdp_prog;
 	u32 act;
@@ -201,7 +203,10 @@ static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
 	 */
 	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
 	act = bpf_prog_run_xdp(xdp_prog, xdp);
-	xdp->handle += xdp->data - xdp->data_hard_start;
+	offset += xdp->data - xdp->data_hard_start;
+
+	xdp->handle = xsk_umem_adjust_offset(umem, xdp->handle, offset);
+
 	switch (act) {
 	case XDP_PASS:
 		break;
@@ -262,7 +267,7 @@ static bool i40e_alloc_buffer_zc(struct i40e_ring *rx_ring,
 	bi->addr = xdp_umem_get_data(umem, handle);
 	bi->addr += hr;
 
-	bi->handle = handle + umem->headroom;
+	bi->handle = handle;
 
 	xsk_umem_discard_addr(umem);
 	return true;
@@ -299,7 +304,7 @@ static bool i40e_alloc_buffer_slow_zc(struct i40e_ring *rx_ring,
 	bi->addr = xdp_umem_get_data(umem, handle);
 	bi->addr += hr;
 
-	bi->handle = handle + umem->headroom;
+	bi->handle = handle;
 
 	xsk_umem_discard_addr_rq(umem);
 	return true;
@@ -464,7 +469,7 @@ void i40e_zca_free(struct zero_copy_allocator *alloc, unsigned long handle)
 	bi->addr = xdp_umem_get_data(rx_ring->xsk_umem, handle);
 	bi->addr += hr;
 
-	bi->handle = (u64)handle + rx_ring->xsk_umem->headroom;
+	bi->handle = (u64)handle;
 }
 
 /**
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
