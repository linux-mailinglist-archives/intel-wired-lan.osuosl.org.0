Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FC4C0950B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 18:20:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB90D80FC6;
	Sat, 25 Oct 2025 16:19:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7vqd7aaa-PKI; Sat, 25 Oct 2025 16:19:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C34F980FDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761409197;
	bh=Vv3mXrHTbD+DYs6fluiD+e9wXE9fGmNV+Hj70yYZk4o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q0I1ttNJAd6arcJZYBQ41NmufGzIhg1ig55uotP6PQ1jVXueWwiEevqrfCcgune9K
	 L541YU583SPWikV5IXbPIopEWLKq3TmrPA1lgYj4d08fo4mjvTKbZhp7UOELQqx/jq
	 w9WBV60aNMcFdojdKDLZmWVBozzOg3Bu2wesDwQIDkeY6HRBj+UHIah8CFD+iJZ+1g
	 VevvRdiLflPqBpTgQHDF4wyxXVV7kSXuj1Rh1dFDKkWA3yLdv6NmN+WYEvRKQuwo7H
	 C+KcKuuPE0lmUz/9OMyL/dyX37CrpTY2aKrGFM2nAVuwvSW2VQuqsCcPfEuloagqFE
	 nPkk1wRNIIFVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C34F980FDD;
	Sat, 25 Oct 2025 16:19:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F3C9E976
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 16:19:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5578405F7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 16:19:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MOu3Sl4wRJpS for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 16:19:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 10EAB405F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10EAB405F2
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10EAB405F2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 16:19:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 8D9CD450E8;
 Sat, 25 Oct 2025 16:19:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E69FC4CEFB;
 Sat, 25 Oct 2025 16:19:53 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Ramu R <ramu.r@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Sasha Levin <sashal@kernel.org>, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Date: Sat, 25 Oct 2025 11:57:49 -0400
Message-ID: <20251025160905.3857885-238-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251025160905.3857885-1-sashal@kernel.org>
References: <20251025160905.3857885-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.17.5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761409194;
 bh=s3GKYIJHrlJpj1mV4IUVk/qjjyOc0d/+RjSIR7hOTmQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=X/GAyk1MfsIuQrbTJDhATYRlmn9GuD0diKaQE/RtgmUqGb0F6N9RigkGzy+8fsvIQ
 05yX5/sM4SbsGMXeZ6CJby3GU+fofBTgqRdIHVBh5fhsZ4vfV/8NYe7Xf7s30e4G3J
 a3mG8SBYHtQIdyw0OUZR/COdWaP64EELaPuShEyrQ16iEyiy7tVg91PaIDk9EDHY+Y
 dUFxn5IULZ+960iNMFckzFGfQ1I91zGk1mqcZ7ecapgCnR2CmIhhUYrZf8zpn7speg
 dRsPyOQ1eI8d80bqqBvFE0OsA03EiNqrDMzNL0i9IKDHwf3/rfzGECtXAYPrbyAU8t
 2X/misGQtw2AA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=X/GAyk1M
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.17] idpf: link NAPIs to queues
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

From: Alexander Lobakin <aleksander.lobakin@intel.com>

[ Upstream commit bd74a86bc75d35adefbebcec7c3a743d02c06230 ]

Add the missing linking of NAPIs to netdev queues when enabling
interrupt vectors in order to support NAPI configuration and
interfaces requiring get_rx_queue()->napi to be set (like XSk
busy polling).

As currently, idpf_vport_{start,stop}() is called from several flows
with inconsistent RTNL locking, we need to synchronize them to avoid
runtime assertions. Notably:

* idpf_{open,stop}() -- regular NDOs, RTNL is always taken;
* idpf_initiate_soft_reset() -- usually called under RTNL;
* idpf_init_task -- called from the init work, needs RTNL;
* idpf_vport_dealloc -- called without RTNL taken, needs it.

Expand common idpf_vport_{start,stop}() to take an additional bool
telling whether we need to manually take the RTNL lock.

Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com> # helper
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Tested-by: Ramu R <ramu.r@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

YES

Why this is a bug-fix
- The driver was missing the association between netdev queues and their
  NAPI instances. This breaks NAPI-aware configuration and features that
  require queue->napi to be set, e.g., AF_XDP busy polling. The patch
  adds the missing linkage and corresponding unlinkage, which is clearly
  a functional fix rather than a feature.

What changed
- Link/unlink netdev queues to the NAPI of each q_vector:
  - Adds `idpf_q_vector_set_napi()` and uses it to associate both RX and
    TX queues with the q_vector’s `napi`:
    - Link on IRQ request:
      drivers/net/ethernet/intel/idpf/idpf_txrx.c:4043
    - Unlink on IRQ free:
      drivers/net/ethernet/intel/idpf/idpf_txrx.c:3852
  - Helper implementation:
    drivers/net/ethernet/intel/idpf/idpf_txrx.c:3818

- Ensure correct locking for netif_queue_set_napi:
  - `netif_queue_set_napi()` asserts RTNL or invisibility
    (net/core/dev.c:7167), so the patch adds an `rtnl` parameter to the
    vport bring-up/tear-down paths and acquires RTNL where it previously
    wasn’t guaranteed:
    - `idpf_vport_open(struct idpf_vport *vport, bool rtnl)` acquires
      RTNL when `rtnl=true`
      (drivers/net/ethernet/intel/idpf/idpf_lib.c:1397–1400), and
      releases on both success and error paths (1528–1531).
    - `idpf_vport_stop(struct idpf_vport *vport, bool rtnl)` does the
      same for teardown (900–927).
  - Callers updated according to their RTNL context, avoiding double-
    lock or missing-lock situations:
    - NDO stop: passes `false` (called under RTNL):
      drivers/net/ethernet/intel/idpf/idpf_lib.c:951
    - NDO open: passes `false` (called under RTNL):
      drivers/net/ethernet/intel/idpf/idpf_lib.c:2275
    - init work (not under RTNL): `idpf_init_task()` passes `true`:
      drivers/net/ethernet/intel/idpf/idpf_lib.c:1607
    - vport dealloc (not under RTNL): passes `true`:
      drivers/net/ethernet/intel/idpf/idpf_lib.c:1044
    - soft reset (usually under RTNL via ndo contexts): passes `false`:
      drivers/net/ethernet/intel/idpf/idpf_lib.c:1997 and reopen at
      2027, 2037

- Order of operations remains sane:
  - Add NAPI and map vectors, then request IRQs, then link queues to
    NAPI, then enable NAPI/IRQs
    (drivers/net/ethernet/intel/idpf/idpf_txrx.c:4598–4607, 4043,
    4619–4621).
  - On teardown disable interrupts/NAPI, delete NAPI, unlink queues,
    free IRQs (drivers/net/ethernet/intel/idpf/idpf_txrx.c:4119–4125,
    3852).

Impact and risk
- User-visible bug fixed: AF_XDP busy-polling and other NAPI-aware paths
  can now retrieve the correct NAPI via get_rx_queue()->napi.
- Change is tightly scoped to the idpf driver; no UAPI or architectural
  changes.
- Locking adjustments are minimal and consistent with net core
  expectations for `netif_queue_set_napi()`.
- Similar pattern exists in other drivers (e.g., ice, igb, igc) that use
  `netif_queue_set_napi`, which supports the approach’s correctness.
- Note: In the rare request_irq failure unwind, the code frees any
  requested IRQs but doesn’t explicitly clear queue->napi for
  previously-linked vectors; however, `napi_del()` runs and the
  q_vector/napi storage remains valid, and normal teardown does clear
  associations. This is a minor edge and does not outweigh the benefit
  of the fix.

Stable backport suitability
- Meets stable criteria: fixes a real functional bug, small and self-
  contained, limited to a single driver, low regression risk, and
  conforms to net core locking rules.
- Dependency: requires `netif_queue_set_napi()` (present in this branch,
  net/core/dev.c:7159). For older stable series lacking this API, a
  backport would need equivalent infrastructure or adaptation.

Conclusion
- This is a clear, necessary bug fix enabling expected NAPI-aware
  behavior in idpf. It is safe and appropriate to backport.

 drivers/net/ethernet/intel/idpf/idpf_lib.c  | 38 +++++++++++++++------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 17 +++++++++
 2 files changed, 45 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index e327950c93d8e..f4b89d222610f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -884,14 +884,18 @@ static void idpf_remove_features(struct idpf_vport *vport)
 /**
  * idpf_vport_stop - Disable a vport
  * @vport: vport to disable
+ * @rtnl: whether to take RTNL lock
  */
-static void idpf_vport_stop(struct idpf_vport *vport)
+static void idpf_vport_stop(struct idpf_vport *vport, bool rtnl)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 
 	if (np->state <= __IDPF_VPORT_DOWN)
 		return;
 
+	if (rtnl)
+		rtnl_lock();
+
 	netif_carrier_off(vport->netdev);
 	netif_tx_disable(vport->netdev);
 
@@ -913,6 +917,9 @@ static void idpf_vport_stop(struct idpf_vport *vport)
 	idpf_vport_queues_rel(vport);
 	idpf_vport_intr_rel(vport);
 	np->state = __IDPF_VPORT_DOWN;
+
+	if (rtnl)
+		rtnl_unlock();
 }
 
 /**
@@ -936,7 +943,7 @@ static int idpf_stop(struct net_device *netdev)
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
 
-	idpf_vport_stop(vport);
+	idpf_vport_stop(vport, false);
 
 	idpf_vport_ctrl_unlock(netdev);
 
@@ -1029,7 +1036,7 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
 	idpf_idc_deinit_vport_aux_device(vport->vdev_info);
 
 	idpf_deinit_mac_addr(vport);
-	idpf_vport_stop(vport);
+	idpf_vport_stop(vport, true);
 
 	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
 		idpf_decfg_netdev(vport);
@@ -1370,8 +1377,9 @@ static void idpf_rx_init_buf_tail(struct idpf_vport *vport)
 /**
  * idpf_vport_open - Bring up a vport
  * @vport: vport to bring up
+ * @rtnl: whether to take RTNL lock
  */
-static int idpf_vport_open(struct idpf_vport *vport)
+static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct idpf_adapter *adapter = vport->adapter;
@@ -1381,6 +1389,9 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	if (np->state != __IDPF_VPORT_DOWN)
 		return -EBUSY;
 
+	if (rtnl)
+		rtnl_lock();
+
 	/* we do not allow interface up just yet */
 	netif_carrier_off(vport->netdev);
 
@@ -1388,7 +1399,7 @@ static int idpf_vport_open(struct idpf_vport *vport)
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to allocate interrupts for vport %u: %d\n",
 			vport->vport_id, err);
-		return err;
+		goto err_rtnl_unlock;
 	}
 
 	err = idpf_vport_queues_alloc(vport);
@@ -1475,6 +1486,9 @@ static int idpf_vport_open(struct idpf_vport *vport)
 		goto deinit_rss;
 	}
 
+	if (rtnl)
+		rtnl_unlock();
+
 	return 0;
 
 deinit_rss:
@@ -1492,6 +1506,10 @@ static int idpf_vport_open(struct idpf_vport *vport)
 intr_rel:
 	idpf_vport_intr_rel(vport);
 
+err_rtnl_unlock:
+	if (rtnl)
+		rtnl_unlock();
+
 	return err;
 }
 
@@ -1572,7 +1590,7 @@ void idpf_init_task(struct work_struct *work)
 	np = netdev_priv(vport->netdev);
 	np->state = __IDPF_VPORT_DOWN;
 	if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED, vport_config->flags))
-		idpf_vport_open(vport);
+		idpf_vport_open(vport, true);
 
 	/* Spawn and return 'idpf_init_task' work queue until all the
 	 * default vports are created
@@ -1962,7 +1980,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		idpf_send_delete_queues_msg(vport);
 	} else {
 		set_bit(IDPF_VPORT_DEL_QUEUES, vport->flags);
-		idpf_vport_stop(vport);
+		idpf_vport_stop(vport, false);
 	}
 
 	idpf_deinit_rss(vport);
@@ -1992,7 +2010,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		goto err_open;
 
 	if (current_state == __IDPF_VPORT_UP)
-		err = idpf_vport_open(vport);
+		err = idpf_vport_open(vport, false);
 
 	goto free_vport;
 
@@ -2002,7 +2020,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 
 err_open:
 	if (current_state == __IDPF_VPORT_UP)
-		idpf_vport_open(vport);
+		idpf_vport_open(vport, false);
 
 free_vport:
 	kfree(new_vport);
@@ -2240,7 +2258,7 @@ static int idpf_open(struct net_device *netdev)
 	if (err)
 		goto unlock;
 
-	err = idpf_vport_open(vport);
+	err = idpf_vport_open(vport, false);
 
 unlock:
 	idpf_vport_ctrl_unlock(netdev);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index e75a94d7ac2ac..92634c4bb369a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3430,6 +3430,20 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 	vport->q_vectors = NULL;
 }
 
+static void idpf_q_vector_set_napi(struct idpf_q_vector *q_vector, bool link)
+{
+	struct napi_struct *napi = link ? &q_vector->napi : NULL;
+	struct net_device *dev = q_vector->vport->netdev;
+
+	for (u32 i = 0; i < q_vector->num_rxq; i++)
+		netif_queue_set_napi(dev, q_vector->rx[i]->idx,
+				     NETDEV_QUEUE_TYPE_RX, napi);
+
+	for (u32 i = 0; i < q_vector->num_txq; i++)
+		netif_queue_set_napi(dev, q_vector->tx[i]->idx,
+				     NETDEV_QUEUE_TYPE_TX, napi);
+}
+
 /**
  * idpf_vport_intr_rel_irq - Free the IRQ association with the OS
  * @vport: main vport structure
@@ -3450,6 +3464,7 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 		vidx = vport->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
 
+		idpf_q_vector_set_napi(q_vector, false);
 		kfree(free_irq(irq_num, q_vector));
 	}
 }
@@ -3637,6 +3652,8 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 				   "Request_irq failed, error: %d\n", err);
 			goto free_q_irqs;
 		}
+
+		idpf_q_vector_set_napi(q_vector, true);
 	}
 
 	return 0;
-- 
2.51.0

