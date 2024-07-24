Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A03DA93B1C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 15:40:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83D13608D3;
	Wed, 24 Jul 2024 13:40:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PvdzQ0MbaoAC; Wed, 24 Jul 2024 13:40:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFAA76086B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721828449;
	bh=47uhQb0iT4BDybi3B41QZRnDKlGhGXUTpcRCMswyymA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ef8yWTBRlA5A4w5Bgg44cuQ8E1ozVdxmCPPElXKYwVq8NATDymUIZSl1ekwr5wlq3
	 e7+4X0GkwAJSVrUuVdynA8c5zKdA6jQ6KGjAC9c4A6CUoItiKculScKaLGaUjV48Rd
	 8fg4saIpc5psRD95vSRSXXvSbQPsku/dz25ZXXkhQfwKYnfX+s0mRuyoygCh4Zk420
	 Kl95UwfXBZPGU9vB+P8pFLci8KyG1hKOnwlOjvSkY7YYyZ73fVeJrFVrdyNR3hc4+B
	 bYP4cXYgDybhWFR+Fyjv9E1hMxjFsyrZQF9uc60r72dcIzu8gyVxzMYHzX2Kxk/y3Z
	 AKMvUmSGcg/KQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFAA76086B;
	Wed, 24 Jul 2024 13:40:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53DFB1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 13:40:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B63581319
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 13:40:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bT-atqjyOkqv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 13:40:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4573481312
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4573481312
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4573481312
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 13:40:46 +0000 (UTC)
X-CSE-ConnectionGUID: n/o+lp8oSQS3NZ++6phgiA==
X-CSE-MsgGUID: jSAILQ+8ROO9BMqdWsZ4vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19469374"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19469374"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 06:40:46 -0700
X-CSE-ConnectionGUID: E8S61nS+R7+WgnY26O6sDA==
X-CSE-MsgGUID: KILUOf/wQ6yWlDbiWCS/iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52615648"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa009.jf.intel.com with ESMTP; 24 Jul 2024 06:40:43 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 15:40:22 +0200
Message-ID: <20240724134024.2182959-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
References: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721828446; x=1753364446;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QqPw9lZkqki/+Jsew9g6qEdJrYcGgAYT2cbcz7OrDZs=;
 b=km1Wb3RisRtp7VHyExPFnAURTQc6KAvirsJsNRv+MS2HJv80bYQg5gQF
 QtyJaP7J/kix+XcdolfjD3ZsDcurexnb3+EQzF6ZGtcyRnLhfti/0gapk
 VtunGP1rXnC1TYY9iDWlqo+faV1BkDgjJ8ohJwm2LCxshxyJ4FTvjfIr1
 cmMHzbGUsZL8IQwiqt65d44tqLE1YBK//yQimA4F3gOVt0kQKM26YqAjW
 x8WTZzVXPq1N3uBxzy161Y9mTuPjHD5DuseixqB1l23DrJESfdl+eWQSs
 kpjEaphTTmU2TPobY5npBCUHwQEsu0kvsPPXOkreU5Th2JtSKj7iEG29m
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=km1Wb3Ri
Subject: [Intel-wired-lan] [PATCH iwl-net 1/3] idpf: fix memory leaks and
 crashes while performing a soft reset
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The second tagged commit introduced a UAF, as it removed restoring
q_vector->vport pointers after reinitializating the structures.
This is due to that all queue allocation functions are performed here
with the new temporary vport structure and those functions rewrite
the backpointers to the vport. Then, this new struct is freed and
the pointers start leading to nowhere.

But generally speaking, the current logic is very fragile. It claims
to be more reliable when the system is low on memory, but in fact, it
consumes two times more memory as at the moment of running this
function, there are two vports allocated with their queues and vectors.
Moreover, it claims to prevent the driver from running into "bad state",
but in fact, any error during the rebuild leaves the old vport in the
partially allocated state.
Finally, if the interface is down when the function is called, it always
allocates a new queue set, but when the user decides to enable the
interface later on, vport_open() allocates them once again, IOW there's
a clear memory leak here.

Just don't allocate a new queue set when performing a reset, that solves
crashes and memory leaks. Readd the old queue number and reopen the
interface on rollback - that solves limbo states when the device is left
disabled and/or without HW queues enabled.

Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
Fixes: e4891e4687c8 ("idpf: split &idpf_queue into 4 strictly-typed queue structures")
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 30 +++++++++++-----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 5dbf2b4ba1b0..10b884dd3475 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1335,9 +1335,8 @@ static void idpf_rx_init_buf_tail(struct idpf_vport *vport)
 /**
  * idpf_vport_open - Bring up a vport
  * @vport: vport to bring up
- * @alloc_res: allocate queue resources
  */
-static int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
+static int idpf_vport_open(struct idpf_vport *vport)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct idpf_adapter *adapter = vport->adapter;
@@ -1350,11 +1349,9 @@ static int idpf_vport_open(struct idpf_vport *vport, bool alloc_res)
 	/* we do not allow interface up just yet */
 	netif_carrier_off(vport->netdev);
 
-	if (alloc_res) {
-		err = idpf_vport_queues_alloc(vport);
-		if (err)
-			return err;
-	}
+	err = idpf_vport_queues_alloc(vport);
+	if (err)
+		return err;
 
 	err = idpf_vport_intr_alloc(vport);
 	if (err) {
@@ -1539,7 +1536,7 @@ void idpf_init_task(struct work_struct *work)
 	np = netdev_priv(vport->netdev);
 	np->state = __IDPF_VPORT_DOWN;
 	if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED, vport_config->flags))
-		idpf_vport_open(vport, true);
+		idpf_vport_open(vport);
 
 	/* Spawn and return 'idpf_init_task' work queue until all the
 	 * default vports are created
@@ -1898,9 +1895,6 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		goto free_vport;
 	}
 
-	err = idpf_vport_queues_alloc(new_vport);
-	if (err)
-		goto free_vport;
 	if (current_state <= __IDPF_VPORT_DOWN) {
 		idpf_send_delete_queues_msg(vport);
 	} else {
@@ -1932,17 +1926,23 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 
 	err = idpf_set_real_num_queues(vport);
 	if (err)
-		goto err_reset;
+		goto err_open;
 
 	if (current_state == __IDPF_VPORT_UP)
-		err = idpf_vport_open(vport, false);
+		err = idpf_vport_open(vport);
 
 	kfree(new_vport);
 
 	return err;
 
 err_reset:
-	idpf_vport_queues_rel(new_vport);
+	idpf_send_add_queues_msg(vport, vport->num_txq, vport->num_complq,
+				 vport->num_rxq, vport->num_bufq);
+
+err_open:
+	if (current_state == __IDPF_VPORT_UP)
+		idpf_vport_open(vport);
+
 free_vport:
 	kfree(new_vport);
 
@@ -2171,7 +2171,7 @@ static int idpf_open(struct net_device *netdev)
 	idpf_vport_ctrl_lock(netdev);
 	vport = idpf_netdev_to_vport(netdev);
 
-	err = idpf_vport_open(vport, true);
+	err = idpf_vport_open(vport);
 
 	idpf_vport_ctrl_unlock(netdev);
 
-- 
2.45.2

