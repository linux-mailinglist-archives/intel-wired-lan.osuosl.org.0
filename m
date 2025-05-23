Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84599AC2B2A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 22:55:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 328DA80CE0;
	Fri, 23 May 2025 20:55:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IZ8TTk8RNzj6; Fri, 23 May 2025 20:55:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D20C80D06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748033754;
	bh=6RZ6RVfPubFS06k2uNsBexJfc25JeQm9dmwS1WgQlq4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tXUMfYdEiyUfILlC0aGz1LNXvOXAs2ZKdXKzfYU8wgf/0ueLO5rvGfKLges3YEcgd
	 geTNC+bT+EQb+rfIOguGV9wxTPb33ZdWE/DCk1xV8EpUQIyQMrFoQOwdJxQ04eVsZ/
	 /DLWmWm9UnRCe7vyBLGoNvaCAGXqTktVRDnuf7PjGMeZOEVXVGNKqaC1g62hTbl8Ik
	 l+SpbTx6MJ6ls+FryKjG4odhc9BjUIczK+XwD1n9gbacQ2cbN36qzUgrhmQgaD58Zi
	 +EpDDSjRVea7SDFHexnuJcrzg+2pwOd9XP+a0cIdw+zcbGCdv+uFGU4AjdTQP7DHFZ
	 rElbnunZrK1kg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D20C80D06;
	Fri, 23 May 2025 20:55:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 20D9868
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 20:55:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FCF76066A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 20:55:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kBIT1nd-SDmC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 20:55:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2B47A60678
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B47A60678
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2B47A60678
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 20:55:50 +0000 (UTC)
X-CSE-ConnectionGUID: pvQ0+3GXS4iPP9MaR6gNNQ==
X-CSE-MsgGUID: 7uGW92k5QsOwVHyB11sPVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="75495688"
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="75495688"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 13:55:50 -0700
X-CSE-ConnectionGUID: tvYe6MPORKONzjKuBTTpmw==
X-CSE-MsgGUID: cUt+ii91SAWFfW1T5gncEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="178411628"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.244.196])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 13:55:47 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Fri, 23 May 2025 14:55:37 -0600
Message-ID: <20250523205537.161754-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748033751; x=1779569751;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xvMMV6WmxEoh23GJ+q6duoemo37i7bwcj8tiKVd+6ec=;
 b=T3PvvSX6ybd5FH2P+j/kaL1Vgb65WkBJ+8NW2+YhAkG2oUdUfeoPqxxD
 gZpqroYJnA+sTHHpZQUa7GU4e7vS2McqjhMthLu98H5F+Q4BfKfoQzj7/
 mWx0FnwgAVo9Vns6AmvYQSpw4sbDGHXi60zCtmOdZ2e3eCDZ0nQv0T+KR
 JqVmsYJ26BjdeqBdlvwml9AP89wkiUE5bnUXbr5GUAJoJNtwrMiDGqaBp
 XJeLURyY8bTuVQ/RuyIMaNCf1kGuk0YIbJnUyH0QMNEKdFog4ktCMGlg/
 c3mr2aF4b7Ny9ElCps+rkOWEZeFPaysDaF7JB+MavDv98F849/ZX8srgy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T3PvvSX6
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: convert control queue mutex
 to a spinlock
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

With VIRTCHNL2_CAP_MACFILTER enabled, the following warning is generated
on module load:

[  324.701677] BUG: sleeping function called from invalid context at kernel/locking/mutex.c:578
[  324.701684] in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 1582, name: NetworkManager
[  324.701689] preempt_count: 201, expected: 0
[  324.701693] RCU nest depth: 0, expected: 0
[  324.701697] 2 locks held by NetworkManager/1582:
[  324.701702]  #0: ffffffff9f7be770 (rtnl_mutex){....}-{3:3}, at: rtnl_newlink+0x791/0x21e0
[  324.701730]  #1: ff1100216c380368 (_xmit_ETHER){....}-{2:2}, at: __dev_open+0x3f0/0x870
[  324.701749] Preemption disabled at:
[  324.701752] [<ffffffff9cd23b9d>] __dev_open+0x3dd/0x870
[  324.701765] CPU: 30 UID: 0 PID: 1582 Comm: NetworkManager Not tainted 6.15.0-rc5+ #2 PREEMPT(voluntary)
[  324.701771] Hardware name: Intel Corporation M50FCP2SBSTD/M50FCP2SBSTD, BIOS SE5C741.86B.01.01.0001.2211140926 11/14/2022
[  324.701774] Call Trace:
[  324.701777]  <TASK>
[  324.701779]  dump_stack_lvl+0x5d/0x80
[  324.701788]  ? __dev_open+0x3dd/0x870
[  324.701793]  __might_resched.cold+0x1ef/0x23d
<..>
[  324.701818]  __mutex_lock+0x113/0x1b80
<..>
[  324.701917]  idpf_ctlq_clean_sq+0xad/0x4b0 [idpf]
[  324.701935]  ? kasan_save_track+0x14/0x30
[  324.701941]  idpf_mb_clean+0x143/0x380 [idpf]
<..>
[  324.701991]  idpf_send_mb_msg+0x111/0x720 [idpf]
[  324.702009]  idpf_vc_xn_exec+0x4cc/0x990 [idpf]
[  324.702021]  ? rcu_is_watching+0x12/0xc0
[  324.702035]  idpf_add_del_mac_filters+0x3ed/0xb50 [idpf]
<..>
[  324.702122]  __hw_addr_sync_dev+0x1cf/0x300
[  324.702126]  ? find_held_lock+0x32/0x90
[  324.702134]  idpf_set_rx_mode+0x317/0x390 [idpf]
[  324.702152]  __dev_open+0x3f8/0x870
[  324.702159]  ? __pfx___dev_open+0x10/0x10
[  324.702174]  __dev_change_flags+0x443/0x650
<..>
[  324.702208]  netif_change_flags+0x80/0x160
[  324.702218]  do_setlink.isra.0+0x16a0/0x3960
<..>
[  324.702349]  rtnl_newlink+0x12fd/0x21e0

The sequence is as follows:
	rtnl_newlink()->
	__dev_change_flags()->
	__dev_open()->
	dev_set_rx_mode() - >  # disables BH and grabs "dev->addr_list_lock"
	idpf_set_rx_mode() ->  # proceed only if VIRTCHNL2_CAP_MACFILTER is ON
	__dev_uc_sync() ->
	idpf_add_mac_filter ->
	idpf_add_del_mac_filters ->
	idpf_send_mb_msg() ->
	idpf_mb_clean() ->
	idpf_ctlq_clean_sq()   # mutex_lock(cq_lock)

Fix by converting cq_lock to a spinlock. All operations under the new
lock are safe except freeing the DMA memory, which may use vunmap(). Fix
by requesting a contiguous physical memory for the DMA mapping.

Fixes: a251eee62133 ("idpf: add SRIOV support and other ndo_ops")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 .../net/ethernet/intel/idpf/idpf_controlq.c   | 23 +++++++++----------
 .../ethernet/intel/idpf/idpf_controlq_api.h   |  2 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 12 ++++++----
 3 files changed, 20 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.c b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
index b28991dd1870..48b8e184f3db 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
@@ -96,7 +96,7 @@ static void idpf_ctlq_init_rxq_bufs(struct idpf_ctlq_info *cq)
  */
 static void idpf_ctlq_shutdown(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
 {
-	mutex_lock(&cq->cq_lock);
+	spin_lock(&cq->cq_lock);
 
 	/* free ring buffers and the ring itself */
 	idpf_ctlq_dealloc_ring_res(hw, cq);
@@ -104,8 +104,7 @@ static void idpf_ctlq_shutdown(struct idpf_hw *hw, struct idpf_ctlq_info *cq)
 	/* Set ring_size to 0 to indicate uninitialized queue */
 	cq->ring_size = 0;
 
-	mutex_unlock(&cq->cq_lock);
-	mutex_destroy(&cq->cq_lock);
+	spin_unlock(&cq->cq_lock);
 }
 
 /**
@@ -173,7 +172,7 @@ int idpf_ctlq_add(struct idpf_hw *hw,
 
 	idpf_ctlq_init_regs(hw, cq, is_rxq);
 
-	mutex_init(&cq->cq_lock);
+	spin_lock_init(&cq->cq_lock);
 
 	list_add(&cq->cq_list, &hw->cq_list_head);
 
@@ -272,7 +271,7 @@ int idpf_ctlq_send(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
 	int err = 0;
 	int i;
 
-	mutex_lock(&cq->cq_lock);
+	spin_lock(&cq->cq_lock);
 
 	/* Ensure there are enough descriptors to send all messages */
 	num_desc_avail = IDPF_CTLQ_DESC_UNUSED(cq);
@@ -332,7 +331,7 @@ int idpf_ctlq_send(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
 	wr32(hw, cq->reg.tail, cq->next_to_use);
 
 err_unlock:
-	mutex_unlock(&cq->cq_lock);
+	spin_unlock(&cq->cq_lock);
 
 	return err;
 }
@@ -364,7 +363,7 @@ int idpf_ctlq_clean_sq(struct idpf_ctlq_info *cq, u16 *clean_count,
 	if (*clean_count > cq->ring_size)
 		return -EBADR;
 
-	mutex_lock(&cq->cq_lock);
+	spin_lock(&cq->cq_lock);
 
 	ntc = cq->next_to_clean;
 
@@ -397,7 +396,7 @@ int idpf_ctlq_clean_sq(struct idpf_ctlq_info *cq, u16 *clean_count,
 
 	cq->next_to_clean = ntc;
 
-	mutex_unlock(&cq->cq_lock);
+	spin_unlock(&cq->cq_lock);
 
 	/* Return number of descriptors actually cleaned */
 	*clean_count = i;
@@ -435,7 +434,7 @@ int idpf_ctlq_post_rx_buffs(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
 	if (*buff_count > 0)
 		buffs_avail = true;
 
-	mutex_lock(&cq->cq_lock);
+	spin_lock(&cq->cq_lock);
 
 	if (tbp >= cq->ring_size)
 		tbp = 0;
@@ -524,7 +523,7 @@ int idpf_ctlq_post_rx_buffs(struct idpf_hw *hw, struct idpf_ctlq_info *cq,
 		wr32(hw, cq->reg.tail, cq->next_to_post);
 	}
 
-	mutex_unlock(&cq->cq_lock);
+	spin_unlock(&cq->cq_lock);
 
 	/* return the number of buffers that were not posted */
 	*buff_count = *buff_count - i;
@@ -552,7 +551,7 @@ int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
 	u16 i;
 
 	/* take the lock before we start messing with the ring */
-	mutex_lock(&cq->cq_lock);
+	spin_lock(&cq->cq_lock);
 
 	ntc = cq->next_to_clean;
 
@@ -614,7 +613,7 @@ int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
 
 	cq->next_to_clean = ntc;
 
-	mutex_unlock(&cq->cq_lock);
+	spin_unlock(&cq->cq_lock);
 
 	*num_q_msg = i;
 	if (*num_q_msg == 0)
diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
index e8e046ef2f0d..5890d8adca4a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
@@ -99,7 +99,7 @@ struct idpf_ctlq_info {
 
 	enum idpf_ctlq_type cq_type;
 	int q_id;
-	struct mutex cq_lock;		/* control queue lock */
+	spinlock_t cq_lock;		/* control queue lock */
 	/* used for interrupt processing */
 	u16 next_to_use;
 	u16 next_to_clean;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 2ed801398971..fe96e2057366 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2329,8 +2329,12 @@ void *idpf_alloc_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem, u64 size)
 	struct idpf_adapter *adapter = hw->back;
 	size_t sz = ALIGN(size, 4096);
 
-	mem->va = dma_alloc_coherent(&adapter->pdev->dev, sz,
-				     &mem->pa, GFP_KERNEL);
+	/* The control queue resources are freed under a spinlock, contiguous
+	 * pages will avoid IOMMU remapping and the use vmap (and vunmap in
+	 * dma_free_*() path.
+	 */
+	mem->va = dma_alloc_attrs(&adapter->pdev->dev, sz, &mem->pa,
+				  GFP_KERNEL, DMA_ATTR_FORCE_CONTIGUOUS);
 	mem->size = sz;
 
 	return mem->va;
@@ -2345,8 +2349,8 @@ void idpf_free_dma_mem(struct idpf_hw *hw, struct idpf_dma_mem *mem)
 {
 	struct idpf_adapter *adapter = hw->back;
 
-	dma_free_coherent(&adapter->pdev->dev, mem->size,
-			  mem->va, mem->pa);
+	dma_free_attrs(&adapter->pdev->dev, mem->size,
+		       mem->va, mem->pa, DMA_ATTR_FORCE_CONTIGUOUS);
 	mem->size = 0;
 	mem->va = NULL;
 	mem->pa = 0;
-- 
2.43.0

