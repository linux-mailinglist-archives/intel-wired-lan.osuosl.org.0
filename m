Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C09BA4DD82
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 00:52:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E57985FEB;
	Thu, 20 Jun 2019 22:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eR-jkg68vMJU; Thu, 20 Jun 2019 22:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A30C786144;
	Thu, 20 Jun 2019 22:52:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 575A71BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 17:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 53EA587E19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 17:24:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hsXIssZfU-qr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 17:24:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 51FC887E2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 17:24:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 10:24:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="359020335"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.110])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jun 2019 10:24:39 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Date: Thu, 20 Jun 2019 09:09:50 +0000
Message-Id: <20190620090958.2135-4-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620090958.2135-1-kevin.laatz@intel.com>
References: <20190620090958.2135-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Thu, 20 Jun 2019 22:52:28 +0000
Subject: [Intel-wired-lan] [PATCH 03/11] xdp: add offset param to
 zero_copy_allocator
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
 intel-wired-lan@lists.osuosl.org, ciara.loftus@intel.com,
 Kevin Laatz <kevin.laatz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds an offset parameter for zero_copy_allocator.

This change is required for the unaligned chunk mode which will come later
in this patch set. The offset parameter is required for calculating the
original handle in unaligned mode since we can't easily mask back to it
like in the aligned case.

Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
---
 include/net/xdp.h |  3 ++-
 net/core/xdp.c    | 11 ++++++-----
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/include/net/xdp.h b/include/net/xdp.h
index 0f25b3675c5c..ea801fd2bf98 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -53,7 +53,8 @@ struct xdp_mem_info {
 struct page_pool;
 
 struct zero_copy_allocator {
-	void (*free)(struct zero_copy_allocator *zca, unsigned long handle);
+	void (*free)(struct zero_copy_allocator *zca, unsigned long handle,
+			off_t off);
 };
 
 struct xdp_rxq_info {
diff --git a/net/core/xdp.c b/net/core/xdp.c
index 4b2b194f4f1f..a77a7162d213 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -322,7 +322,7 @@ EXPORT_SYMBOL_GPL(xdp_rxq_info_reg_mem_model);
  * of xdp_frames/pages in those cases.
  */
 static void __xdp_return(void *data, struct xdp_mem_info *mem, bool napi_direct,
-			 unsigned long handle)
+			 unsigned long handle, off_t off)
 {
 	struct xdp_mem_allocator *xa;
 	struct page *page;
@@ -353,7 +353,7 @@ static void __xdp_return(void *data, struct xdp_mem_info *mem, bool napi_direct,
 		rcu_read_lock();
 		/* mem->id is valid, checked in xdp_rxq_info_reg_mem_model() */
 		xa = rhashtable_lookup(mem_id_ht, &mem->id, mem_id_rht_params);
-		xa->zc_alloc->free(xa->zc_alloc, handle);
+		xa->zc_alloc->free(xa->zc_alloc, handle, off);
 		rcu_read_unlock();
 	default:
 		/* Not possible, checked in xdp_rxq_info_reg_mem_model() */
@@ -363,19 +363,20 @@ static void __xdp_return(void *data, struct xdp_mem_info *mem, bool napi_direct,
 
 void xdp_return_frame(struct xdp_frame *xdpf)
 {
-	__xdp_return(xdpf->data, &xdpf->mem, false, 0);
+	__xdp_return(xdpf->data, &xdpf->mem, false, 0, 0);
 }
 EXPORT_SYMBOL_GPL(xdp_return_frame);
 
 void xdp_return_frame_rx_napi(struct xdp_frame *xdpf)
 {
-	__xdp_return(xdpf->data, &xdpf->mem, true, 0);
+	__xdp_return(xdpf->data, &xdpf->mem, true, 0, 0);
 }
 EXPORT_SYMBOL_GPL(xdp_return_frame_rx_napi);
 
 void xdp_return_buff(struct xdp_buff *xdp)
 {
-	__xdp_return(xdp->data, &xdp->rxq->mem, true, xdp->handle);
+	__xdp_return(xdp->data, &xdp->rxq->mem, true, xdp->handle,
+			xdp->data - xdp->data_hard_start);
 }
 EXPORT_SYMBOL_GPL(xdp_return_buff);
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
