Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDAhKQxCDGq4bwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 12:57:16 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 683AA57CFE6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 12:57:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D46A8137A;
	Tue, 19 May 2026 10:57:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MgVlQ8NzqXdm; Tue, 19 May 2026 10:57:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C346A8137D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779188230;
	bh=on6tYByslKoSt61EqJFvpzpSGKm+agsrMmg8sYomQHE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cRWYggYIFd/lwmBb/60L9MKjM864Gr+NKfQlGkGUzStFGP+5FFx/NdJplun72dnXB
	 wC6gO40401z3V2bQp5Suh5TPlqLTQnXq2C58hL+Rr9SrEZg/bIxKczJ2Vk8khtp/8M
	 ZJiXuJa7/hTQtM96q79IFZAgdctNp8AnzAk7Dn3p+C8a3+jZlpbx94J5ZDgEOJ992b
	 kz+jrlIC2YklefA17PtA8m2wN4W87PdwsT7vHiS12J9grP2IAYH3r+4Q5q5oM7Ygby
	 8gdGSkFMawpXu9kg3ssj3RsOOScnQg7Hyi7DPldr7AJKXdFZvhfGyivrgjlLb914xE
	 s3daQxH6UHDVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C346A8137D;
	Tue, 19 May 2026 10:57:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 32E101B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 10:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1107E40B74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 10:57:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PkS8BJGxy3ME for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2026 10:57:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 00C4640B64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00C4640B64
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00C4640B64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 10:57:07 +0000 (UTC)
X-CSE-ConnectionGUID: nmbJwHUhQCiTpBxXfNqJzg==
X-CSE-MsgGUID: lBZj4eQmSPuXkIvSksd3LA==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="82626787"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="82626787"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 03:57:00 -0700
X-CSE-ConnectionGUID: BaVOWXebSbS9DesvgV6Uyg==
X-CSE-MsgGUID: KrVgaAA7SkmaoJajXSmd1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="241568910"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa004.fm.intel.com with ESMTP; 19 May 2026 03:56:58 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Sunitha Mekala <sunithax.d.mekala@intel.com>
Date: Tue, 19 May 2026 12:56:38 +0200
Message-Id: <20260519105637.839438-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779188228; x=1810724228;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lsBVMREThc1wx/FRt7E+QCeVCwR4ZbEJEAKra/cO96g=;
 b=eybWjlsl6/aLww82hQ2pcmzxzWwWX2mf7N9NGabIcEg7eSYY12cmni07
 5AHY1N7NJZoIPIsljNgXMRxCivuwENQo4yGMDSIngsV2S1Jey8jU0/abb
 AVh+LLi50bxF+5R9F8FFAmD0bFQVmIyTvvlfEvrhTrhVxU56JI5GSMLG8
 8FREXHg1aut/9mW9+FUaM6migD987ZOuNE3HUAk0nYcFtkJk/2Utzu0VG
 KDC4FPkLdaLtAoqojGwB0Hixy/XUSWINPJGtrr8O+uiWMadWcrT7nnbJZ
 zRVwBARDExj7+mRwV/SjicY7USNWG/xniHFLVMnCkN9T3Fi/r+hRzIXtE
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eybWjlsl
Subject: [Intel-wired-lan] [PATCH v3 iwl-net] i40e: keep q_vectors array in
 sync with channel count changes
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	RCPT_COUNT_SEVEN(0.00)[10];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 683AA57CFE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For the main VSI, i40e_set_num_rings_in_vsi() always derives
num_q_vectors from pf->num_lan_msix. At the same time, ethtool -L stores
the user requested channel count in vsi->req_queue_pairs and the queue
setup path uses that value for the effective number of queue pairs.

This leaves queue and vector counts out of sync after shrinking channel
count via ethtool -L. The active queue configuration is reduced, but the
VSI still keeps the full PF-sized q_vector topology.

That mismatch breaks reconfiguration flows which rely on vector/NAPI
state matching the effective channel configuration. In particular,
toggling /sys/class/net/<dev>/threaded after reducing the channel count
can hang, and later channel-count changes can fail because VSI reinit
does not rebuild q_vectors to match the new vector count.

Fix this by making the main VSI num_q_vectors follow the effective
requested channel count, capped by the available MSI-X vectors. Update
i40e_vsi_reinit_setup() to rebuild q_vectors during VSI reinit so the
vector topology is refreshed together with the ring arrays when channel
count changes.

Keep alloc_queue_pairs unchanged and based on pf->num_lan_qps so the VSI
retains its full queue capacity.

Selftest napi_threaded.py was originally used when Jakub reported hang
on /sys/class/net/<dev>/threaded toggle. In order to make it pass on
i40e, use persistent NAPI configuration for q_vector NAPIs so NAPI
identity and threaded settings survive q_vector reallocation across
channel-count changes. This is achieved by using netif_napi_add_config()
when configuring q_vectors.

$ export NETIF=ens259f1np1
$ sudo -E env PATH="$PATH" ./tools/testing/selftests/drivers/net/napi_threaded.py
TAP version 13
1..3
ok 1 napi_threaded.napi_init
ok 2 napi_threaded.change_num_queues
ok 3 napi_threaded.enable_dev_threaded_disable_napi_threaded
Totals: pass:3 fail:0 xfail:0 xpass:0 skip:0 error:0

Reported-by: Jakub Kicinski <kuba@kernel.org>
Closes: https://lore.kernel.org/intel-wired-lan/20260316133100.6054a11f@kernel.org/
Fixes: d2a69fefd756 ("i40e: Fix changing previously set num_queue_pairs for PFs")
Reviewed-by: Simon Horman <horms@kernel.org>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
v3:
- address UAF when ring arrays where freed before q_vector's ring
  containers (Sashiko, Jacob)
- remove bool params from alloc/free array routines (Simon)
v2:
- NULL vsi->tx_rings in i40e_vsi_alloc_arrays() (Sashiko)
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 73 +++++++++++++--------
 1 file changed, 44 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index a04683004a56..4e7cffb23d03 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -11406,10 +11406,14 @@ static void i40e_service_timer(struct timer_list *t)
 static int i40e_set_num_rings_in_vsi(struct i40e_vsi *vsi)
 {
 	struct i40e_pf *pf = vsi->back;
+	u16 qps;
 
 	switch (vsi->type) {
 	case I40E_VSI_MAIN:
 		vsi->alloc_queue_pairs = pf->num_lan_qps;
+		qps = vsi->req_queue_pairs ?
+		      min(vsi->req_queue_pairs, pf->num_lan_qps) :
+		      pf->num_lan_qps;
 		if (!vsi->num_tx_desc)
 			vsi->num_tx_desc = ALIGN(I40E_DEFAULT_NUM_DESCRIPTORS,
 						 I40E_REQ_DESCRIPTOR_MULTIPLE);
@@ -11417,7 +11421,7 @@ static int i40e_set_num_rings_in_vsi(struct i40e_vsi *vsi)
 			vsi->num_rx_desc = ALIGN(I40E_DEFAULT_NUM_DESCRIPTORS,
 						 I40E_REQ_DESCRIPTOR_MULTIPLE);
 		if (test_bit(I40E_FLAG_MSIX_ENA, pf->flags))
-			vsi->num_q_vectors = pf->num_lan_msix;
+			vsi->num_q_vectors = clamp(qps, 1, pf->num_lan_msix);
 		else
 			vsi->num_q_vectors = 1;
 
@@ -11469,12 +11473,11 @@ static int i40e_set_num_rings_in_vsi(struct i40e_vsi *vsi)
 /**
  * i40e_vsi_alloc_arrays - Allocate queue and vector pointer arrays for the vsi
  * @vsi: VSI pointer
- * @alloc_qvectors: a bool to specify if q_vectors need to be allocated.
  *
  * On error: returns error code (negative)
  * On success: returns 0
  **/
-static int i40e_vsi_alloc_arrays(struct i40e_vsi *vsi, bool alloc_qvectors)
+static int i40e_vsi_alloc_arrays(struct i40e_vsi *vsi)
 {
 	struct i40e_ring **next_rings;
 	int size;
@@ -11493,19 +11496,18 @@ static int i40e_vsi_alloc_arrays(struct i40e_vsi *vsi, bool alloc_qvectors)
 	}
 	vsi->rx_rings = next_rings;
 
-	if (alloc_qvectors) {
-		/* allocate memory for q_vector pointers */
-		size = sizeof(struct i40e_q_vector *) * vsi->num_q_vectors;
-		vsi->q_vectors = kzalloc(size, GFP_KERNEL);
-		if (!vsi->q_vectors) {
-			ret = -ENOMEM;
-			goto err_vectors;
-		}
+	/* allocate memory for q_vector pointers */
+	size = sizeof(struct i40e_q_vector *) * vsi->num_q_vectors;
+	vsi->q_vectors = kzalloc(size, GFP_KERNEL);
+	if (!vsi->q_vectors) {
+		ret = -ENOMEM;
+		goto err_vectors;
 	}
 	return ret;
 
 err_vectors:
 	kfree(vsi->tx_rings);
+	vsi->tx_rings = NULL;
 	return ret;
 }
 
@@ -11578,7 +11580,7 @@ static int i40e_vsi_mem_alloc(struct i40e_pf *pf, enum i40e_vsi_type type)
 	if (ret)
 		goto err_rings;
 
-	ret = i40e_vsi_alloc_arrays(vsi, true);
+	ret = i40e_vsi_alloc_arrays(vsi);
 	if (ret)
 		goto err_rings;
 
@@ -11603,18 +11605,15 @@ static int i40e_vsi_mem_alloc(struct i40e_pf *pf, enum i40e_vsi_type type)
 /**
  * i40e_vsi_free_arrays - Free queue and vector pointer arrays for the VSI
  * @vsi: VSI pointer
- * @free_qvectors: a bool to specify if q_vectors need to be freed.
  *
  * On error: returns error code (negative)
  * On success: returns 0
  **/
-static void i40e_vsi_free_arrays(struct i40e_vsi *vsi, bool free_qvectors)
+static void i40e_vsi_free_arrays(struct i40e_vsi *vsi)
 {
 	/* free the ring and vector containers */
-	if (free_qvectors) {
-		kfree(vsi->q_vectors);
-		vsi->q_vectors = NULL;
-	}
+	kfree(vsi->q_vectors);
+	vsi->q_vectors = NULL;
 	kfree(vsi->tx_rings);
 	vsi->tx_rings = NULL;
 	vsi->rx_rings = NULL;
@@ -11674,7 +11673,7 @@ static int i40e_vsi_clear(struct i40e_vsi *vsi)
 	i40e_put_lump(pf->irq_pile, vsi->base_vector, vsi->idx);
 
 	bitmap_free(vsi->af_xdp_zc_qps);
-	i40e_vsi_free_arrays(vsi, true);
+	i40e_vsi_free_arrays(vsi);
 	i40e_clear_rss_config_user(vsi);
 
 	pf->vsi[vsi->idx] = NULL;
@@ -12046,7 +12045,8 @@ static int i40e_vsi_alloc_q_vector(struct i40e_vsi *vsi, int v_idx)
 	cpumask_copy(&q_vector->affinity_mask, cpu_possible_mask);
 
 	if (vsi->netdev)
-		netif_napi_add(vsi->netdev, &q_vector->napi, i40e_napi_poll);
+		netif_napi_add_config(vsi->netdev, &q_vector->napi,
+				      i40e_napi_poll, v_idx);
 
 	/* tie q_vector and vsi together */
 	vsi->q_vectors[v_idx] = q_vector;
@@ -14267,12 +14267,26 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 
 	pf = vsi->back;
 
+	if (test_bit(I40E_FLAG_MSIX_ENA, pf->flags)) {
+		i40e_put_lump(pf->irq_pile, vsi->base_vector, vsi->idx);
+		vsi->base_vector = 0;
+	}
+
 	i40e_put_lump(pf->qp_pile, vsi->base_queue, vsi->idx);
+	i40e_vsi_free_q_vectors(vsi);
 	i40e_vsi_clear_rings(vsi);
+	i40e_vsi_free_arrays(vsi);
 
-	i40e_vsi_free_arrays(vsi, false);
 	i40e_set_num_rings_in_vsi(vsi);
-	ret = i40e_vsi_alloc_arrays(vsi, false);
+	ret = i40e_vsi_alloc_arrays(vsi);
+	if (ret)
+		goto err_vsi;
+
+	/* Rebuild q_vectors during VSI reinit because the effective channel
+	 * count may change num_q_vectors. Keep vector topology aligned with the
+	 * queue configuration after ethtool's .set_channels() callback.
+	 */
+	ret = i40e_vsi_setup_vectors(vsi);
 	if (ret)
 		goto err_vsi;
 
@@ -14284,7 +14298,7 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 		dev_info(&pf->pdev->dev,
 			 "failed to get tracking for %d queues for VSI %d err %d\n",
 			 alloc_queue_pairs, vsi->seid, ret);
-		goto err_vsi;
+		goto err_lump;
 	}
 	vsi->base_queue = ret;
 
@@ -14308,7 +14322,6 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 	return vsi;
 
 err_rings:
-	i40e_vsi_free_q_vectors(vsi);
 	if (vsi->netdev_registered) {
 		vsi->netdev_registered = false;
 		unregister_netdev(vsi->netdev);
@@ -14318,6 +14331,8 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 	if (vsi->type == I40E_VSI_MAIN)
 		i40e_devlink_destroy_port(pf);
 	i40e_aq_delete_element(&pf->hw, vsi->seid, NULL);
+err_lump:
+	i40e_vsi_free_q_vectors(vsi);
 err_vsi:
 	i40e_vsi_clear(vsi);
 	return NULL;
@@ -14459,12 +14474,12 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 #endif /* CONFIG_I40E_DCB */
 		fallthrough;
 	case I40E_VSI_FDIR:
-		/* set up vectors and rings if needed */
-		ret = i40e_vsi_setup_vectors(vsi);
+		ret = i40e_alloc_rings(vsi);
 		if (ret)
 			goto err_msix;
 
-		ret = i40e_alloc_rings(vsi);
+		/* set up vectors and rings if needed */
+		ret = i40e_vsi_setup_vectors(vsi);
 		if (ret)
 			goto err_rings;
 
@@ -14487,9 +14502,9 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 	return vsi;
 
 err_config:
-	i40e_vsi_clear_rings(vsi);
-err_rings:
 	i40e_vsi_free_q_vectors(vsi);
+err_rings:
+	i40e_vsi_clear_rings(vsi);
 err_msix:
 	if (vsi->netdev_registered) {
 		vsi->netdev_registered = false;
-- 
2.43.0

