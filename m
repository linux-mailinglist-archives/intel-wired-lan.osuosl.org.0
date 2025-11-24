Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CD4C82257
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 19:48:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDE336109D;
	Mon, 24 Nov 2025 18:48:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CUpGmyykarqP; Mon, 24 Nov 2025 18:48:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5C7A6100F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764010096;
	bh=qoO15BtOBKZEOm4JySCtR2YqDQjUVEFwXSdnKR2UGpU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rD9ZAjG1QlE/Z9BmRIOklOpFn29K/M3coveW2iqaAKx6qEvnCTwgh8AW7u3zpJw46
	 orrjWkPHSOyXohFo3ZR65NKLGjloQwUYIsAPDbXdUgYjK9+S9o0ztc74fu5NAGXR/u
	 f6zKD/f2xOqp5QnIE98ZR9aRQxtIRk7sxMqrO7Ju5zzaR0Ja2E48yQtvw2ctyXepwm
	 w67QxaT1xj21IdVGiuKbsCR4+oTSEzXssTzJkHzt8F4iJSixJ3ORt0krrjmsLx8HJH
	 R7oiQLycUm/2P2EBSWyd0PctHLONF7TWp4hXEeY6aNBF/ldvLZphjxLpMh4A+a9LDr
	 PIFuNLlJl2kTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5C7A6100F;
	Mon, 24 Nov 2025 18:48:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E24BB359
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D39A481FD6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:48:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hbmQQeuw7GbV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 18:48:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B80A181E0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B80A181E0F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B80A181E0F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:48:13 +0000 (UTC)
X-CSE-ConnectionGUID: xtWBFGLJSQ+JLT+bcSaBPg==
X-CSE-MsgGUID: /uRuwkaMSfmUsrVAAwlTFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="76341801"
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="76341801"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 10:48:13 -0800
X-CSE-ConnectionGUID: 6MZm16W6Qm2h7E44yGB3Lw==
X-CSE-MsgGUID: OZZ7cT9ESWapLjTTh739rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="196574943"
Received: from aus-labsrv3.an.intel.com ([10.123.116.23])
 by orviesa003.jf.intel.com with ESMTP; 24 Nov 2025 10:48:13 -0800
From: Sreedevi Joshi <sreedevi.joshi@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Sreedevi Joshi <sreedevi.joshi@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Date: Mon, 24 Nov 2025 12:47:48 -0600
Message-Id: <20251124184750.3625097-2-sreedevi.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251124184750.3625097-1-sreedevi.joshi@intel.com>
References: <20251124184750.3625097-1-sreedevi.joshi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764010095; x=1795546095;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=idvAvxpnlIYaCsIGeUIVhr7R1rGMODrBGKXD/I5ynXk=;
 b=SrxXwMxsGu5WCf6Eo1AJfctf7/RUGpVpaLaQOWV2L4lLk5hykNxH1wWa
 4nXQYqClbxQ8+sbJdTFxA1L+jzRD52me2sdgpFZGHKn0K3CfnVKE019tC
 aNvdqCdd3K4QBFd/Q3Ytq0UOjLlOsB4EswKqyZnu/Pgog7Uzrmws6V6Gj
 FYNcr2yspfC+r2T8gtnXql9obszl+/0fc9lTWoTbCYet0suAre3WTDnMs
 hkpcc3VGZCmg40inhZr6KvvOeasyOnvG5ineQfnlwTDfC+GIFlB8Szg0G
 Gp52jSBKQZL6Z9AmATxrludT+MreyB34GsWI7fSFzE3g4l2jpxXnptlhG
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SrxXwMxs
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/3] idpf: Fix RSS LUT NULL
 pointer crash on early ethtool operations
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

The RSS LUT is not initialized until the interface comes up, causing
the following NULL pointer crash when ethtool operations like rxhash on/off
are performed before the interface is brought up for the first time.

Move RSS LUT initialization from ndo_open to vport creation to ensure LUT
is always available. This enables RSS configuration via ethtool before
bringing the interface up. Simplify LUT management by maintaining all
changes in the driver's soft copy and programming zeros to the indirection
table when rxhash is disabled. Defer HW programming until the interface
comes up if it is down during rxhash and LUT configuration changes.

Steps to reproduce:
** Load idpf driver; interfaces will be created
	modprobe idpf
** Before bringing the interfaces up, turn rxhash off
	ethtool -K eth2 rxhash off

[89408.371875] BUG: kernel NULL pointer dereference, address: 0000000000000000
[89408.371908] #PF: supervisor read access in kernel mode
[89408.371924] #PF: error_code(0x0000) - not-present page
[89408.371940] PGD 0 P4D 0
[89408.371953] Oops: Oops: 0000 [#1] SMP NOPTI
<snip>
[89408.372052] RIP: 0010:memcpy_orig+0x16/0x130
[89408.372310] Call Trace:
[89408.372317]  <TASK>
[89408.372326]  ? idpf_set_features+0xfc/0x180 [idpf]
[89408.372363]  __netdev_update_features+0x295/0xde0
[89408.372384]  ethnl_set_features+0x15e/0x460
[89408.372406]  genl_family_rcv_msg_doit+0x11f/0x180
[89408.372429]  genl_rcv_msg+0x1ad/0x2b0
[89408.372446]  ? __pfx_ethnl_set_features+0x10/0x10
[89408.372465]  ? __pfx_genl_rcv_msg+0x10/0x10
[89408.372482]  netlink_rcv_skb+0x58/0x100
[89408.372502]  genl_rcv+0x2c/0x50
[89408.372516]  netlink_unicast+0x289/0x3e0
[89408.372533]  netlink_sendmsg+0x215/0x440
[89408.372551]  __sys_sendto+0x234/0x240
[89408.372571]  __x64_sys_sendto+0x28/0x30
[89408.372585]  x64_sys_call+0x1909/0x1da0
[89408.372604]  do_syscall_64+0x7a/0xfa0
[89408.373140]  ? clear_bhb_loop+0x60/0xb0
[89408.373647]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[89408.378887]  </TASK>
<snip>

Fixes: a251eee62133 ("idpf: add SRIOV support and other ndo_ops")
Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  2 -
 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 89 +++++++++----------
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 34 +++----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  4 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  9 +-
 5 files changed, 62 insertions(+), 76 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index e69ce1d852f8..cdaa603ad82c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -425,14 +425,12 @@ enum idpf_user_flags {
  * @rss_key: RSS hash key
  * @rss_lut_size: Size of RSS lookup table
  * @rss_lut: RSS lookup table
- * @cached_lut: Used to restore previously init RSS lut
  */
 struct idpf_rss_data {
 	u16 rss_key_size;
 	u8 *rss_key;
 	u16 rss_lut_size;
 	u32 *rss_lut;
-	u32 *cached_lut;
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 8c3041f00cda..a2fc081fd68a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1073,7 +1073,7 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 	u16 idx = vport->idx;
 
 	vport_config = adapter->vport_config[vport->idx];
-	idpf_deinit_rss(vport);
+	idpf_deinit_rss_lut(vport);
 	rss_data = &vport_config->user_config.rss_data;
 	kfree(rss_data->rss_key);
 	rss_data->rss_key = NULL;
@@ -1226,6 +1226,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	u16 idx = adapter->next_vport;
 	struct idpf_vport *vport;
 	u16 num_max_q;
+	int err;
 
 	if (idx == IDPF_NO_FREE_SLOT)
 		return NULL;
@@ -1276,10 +1277,11 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 
 	idpf_vport_init(vport, max_q);
 
-	/* This alloc is done separate from the LUT because it's not strictly
-	 * dependent on how many queues we have. If we change number of queues
-	 * and soft reset we'll need a new LUT but the key can remain the same
-	 * for as long as the vport exists.
+	/* LUT and key are both initialized here. Key is not strictly dependent
+	 * on how many queues we have. If we change number of queues and soft
+	 * reset is initiated, LUT will be freed and a new LUT will be allocated
+	 * as per the updated number of queues during vport bringup. However,
+	 * the key remains the same for as long as the vport exists.
 	 */
 	rss_data = &adapter->vport_config[idx]->user_config.rss_data;
 	rss_data->rss_key = kzalloc(rss_data->rss_key_size, GFP_KERNEL);
@@ -1289,6 +1291,11 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 	/* Initialize default rss key */
 	netdev_rss_key_fill((void *)rss_data->rss_key, rss_data->rss_key_size);
 
+	/* Initialize default rss LUT */
+	err = idpf_init_rss_lut(vport);
+	if (err)
+		goto free_rss_key;
+
 	/* fill vport slot in the adapter struct */
 	adapter->vports[idx] = vport;
 	adapter->vport_ids[idx] = idpf_get_vport_id(vport);
@@ -1299,6 +1306,8 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
 
 	return vport;
 
+free_rss_key:
+	kfree(rss_data->rss_key);
 free_vector_idxs:
 	kfree(vport->q_vector_idxs);
 free_vport:
@@ -1476,6 +1485,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_vport_config *vport_config;
+	struct idpf_rss_data *rss_data;
 	int err;
 
 	if (np->state != __IDPF_VPORT_DOWN)
@@ -1570,12 +1580,21 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 	idpf_restore_features(vport);
 
 	vport_config = adapter->vport_config[vport->idx];
-	if (vport_config->user_config.rss_data.rss_lut)
-		err = idpf_config_rss(vport);
-	else
-		err = idpf_init_rss(vport);
+	rss_data = &vport_config->user_config.rss_data;
+
+	if (!rss_data->rss_lut) {
+		err = idpf_init_rss_lut(vport);
+		if (err) {
+			dev_err(&adapter->pdev->dev,
+				"Failed to initialize RSS LUT for vport %u: %d\n",
+				vport->vport_id, err);
+			goto disable_vport;
+		}
+	}
+
+	err = idpf_config_rss(vport);
 	if (err) {
-		dev_err(&adapter->pdev->dev, "Failed to initialize RSS for vport %u: %d\n",
+		dev_err(&adapter->pdev->dev, "Failed to configure RSS for vport %u: %d\n",
 			vport->vport_id, err);
 		goto disable_vport;
 	}
@@ -1584,7 +1603,7 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Failed to complete interface up for vport %u: %d\n",
 			vport->vport_id, err);
-		goto deinit_rss;
+		goto disable_vport;
 	}
 
 	if (rtnl)
@@ -1592,8 +1611,6 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 
 	return 0;
 
-deinit_rss:
-	idpf_deinit_rss(vport);
 disable_vport:
 	idpf_send_disable_vport_msg(vport);
 disable_queues:
@@ -2042,7 +2059,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 		idpf_vport_stop(vport, false);
 	}
 
-	idpf_deinit_rss(vport);
+	idpf_deinit_rss_lut(vport);
 	/* We're passing in vport here because we need its wait_queue
 	 * to send a message and it should be getting all the vport
 	 * config data out of the adapter but we need to be careful not
@@ -2210,40 +2227,6 @@ static void idpf_set_rx_mode(struct net_device *netdev)
 		dev_err(dev, "Failed to set promiscuous mode: %d\n", err);
 }
 
-/**
- * idpf_vport_manage_rss_lut - disable/enable RSS
- * @vport: the vport being changed
- *
- * In the event of disable request for RSS, this function will zero out RSS
- * LUT, while in the event of enable request for RSS, it will reconfigure RSS
- * LUT with the default LUT configuration.
- */
-static int idpf_vport_manage_rss_lut(struct idpf_vport *vport)
-{
-	bool ena = idpf_is_feature_ena(vport, NETIF_F_RXHASH);
-	struct idpf_rss_data *rss_data;
-	u16 idx = vport->idx;
-	int lut_size;
-
-	rss_data = &vport->adapter->vport_config[idx]->user_config.rss_data;
-	lut_size = rss_data->rss_lut_size * sizeof(u32);
-
-	if (ena) {
-		/* This will contain the default or user configured LUT */
-		memcpy(rss_data->rss_lut, rss_data->cached_lut, lut_size);
-	} else {
-		/* Save a copy of the current LUT to be restored later if
-		 * requested.
-		 */
-		memcpy(rss_data->cached_lut, rss_data->rss_lut, lut_size);
-
-		/* Zero out the current LUT to disable */
-		memset(rss_data->rss_lut, 0, lut_size);
-	}
-
-	return idpf_config_rss(vport);
-}
-
 /**
  * idpf_set_features - set the netdev feature flags
  * @netdev: ptr to the netdev being adjusted
@@ -2269,8 +2252,16 @@ static int idpf_set_features(struct net_device *netdev,
 	}
 
 	if (changed & NETIF_F_RXHASH) {
+		struct idpf_netdev_priv *np = netdev_priv(netdev);
+
 		netdev->features ^= NETIF_F_RXHASH;
-		err = idpf_vport_manage_rss_lut(vport);
+
+		/* If the interface is not up when changing the rxhash, update to the HW is
+		 * skipped. The updated LUT will be committed to the HW when the interface
+		 * is brought up.
+		 */
+		if (np->state == __IDPF_VPORT_UP)
+			err = idpf_config_rss(vport);
 		if (err)
 			goto unlock_mutex;
 	}
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index dcdd4fef1c7a..21820bd26631 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -4652,57 +4652,47 @@ static void idpf_fill_dflt_rss_lut(struct idpf_vport *vport)
 
 	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
 
-	for (i = 0; i < rss_data->rss_lut_size; i++) {
+	for (i = 0; i < rss_data->rss_lut_size; i++)
 		rss_data->rss_lut[i] = i % num_active_rxq;
-		rss_data->cached_lut[i] = rss_data->rss_lut[i];
-	}
 }
 
 /**
- * idpf_init_rss - Allocate and initialize RSS resources
+ * idpf_init_rss_lut - Allocate and initialize RSS LUT
  * @vport: virtual port
  *
  * Return 0 on success, negative on failure
  */
-int idpf_init_rss(struct idpf_vport *vport)
+int idpf_init_rss_lut(struct idpf_vport *vport)
 {
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_rss_data *rss_data;
-	u32 lut_size;
 
 	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
+	if (!rss_data->rss_lut) {
+		u32 lut_size;
 
-	lut_size = rss_data->rss_lut_size * sizeof(u32);
-	rss_data->rss_lut = kzalloc(lut_size, GFP_KERNEL);
-	if (!rss_data->rss_lut)
-		return -ENOMEM;
-
-	rss_data->cached_lut = kzalloc(lut_size, GFP_KERNEL);
-	if (!rss_data->cached_lut) {
-		kfree(rss_data->rss_lut);
-		rss_data->rss_lut = NULL;
-
-		return -ENOMEM;
+		lut_size = rss_data->rss_lut_size * sizeof(u32);
+		rss_data->rss_lut = kzalloc(lut_size, GFP_KERNEL);
+		if (!rss_data->rss_lut)
+			return -ENOMEM;
 	}
 
 	/* Fill the default RSS lut values */
 	idpf_fill_dflt_rss_lut(vport);
 
-	return idpf_config_rss(vport);
+	return 0;
 }
 
 /**
- * idpf_deinit_rss - Release RSS resources
+ * idpf_deinit_rss_lut - Release RSS LUT
  * @vport: virtual port
  */
-void idpf_deinit_rss(struct idpf_vport *vport)
+void idpf_deinit_rss_lut(struct idpf_vport *vport)
 {
 	struct idpf_adapter *adapter = vport->adapter;
 	struct idpf_rss_data *rss_data;
 
 	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
-	kfree(rss_data->cached_lut);
-	rss_data->cached_lut = NULL;
 	kfree(rss_data->rss_lut);
 	rss_data->rss_lut = NULL;
 }
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index a1255099656f..2bfb87b82a9b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -1087,8 +1087,8 @@ void idpf_vport_intr_deinit(struct idpf_vport *vport);
 int idpf_vport_intr_init(struct idpf_vport *vport);
 void idpf_vport_intr_ena(struct idpf_vport *vport);
 int idpf_config_rss(struct idpf_vport *vport);
-int idpf_init_rss(struct idpf_vport *vport);
-void idpf_deinit_rss(struct idpf_vport *vport);
+int idpf_init_rss_lut(struct idpf_vport *vport);
+void idpf_deinit_rss_lut(struct idpf_vport *vport);
 int idpf_rx_bufs_init_all(struct idpf_vport *vport);
 
 struct idpf_q_vector *idpf_find_rxq_vec(const struct idpf_vport *vport,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index ca302df9ff40..cd8a8d9260de 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2804,6 +2804,10 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport)
  * @vport: virtual port data structure
  * @get: flag to set or get rss look up table
  *
+ * When rxhash is disabled, RSS LUT will be configured with zeros.  If rxhash
+ * is enabled, the LUT values stored in driver's soft copy will be used to setup
+ * the HW.
+ *
  * Returns 0 on success, negative on failure.
  */
 int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
@@ -2814,10 +2818,12 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
 	struct idpf_rss_data *rss_data;
 	int buf_size, lut_buf_size;
 	ssize_t reply_sz;
+	bool rxhash_ena;
 	int i;
 
 	rss_data =
 		&vport->adapter->vport_config[vport->idx]->user_config.rss_data;
+	rxhash_ena = idpf_is_feature_ena(vport, NETIF_F_RXHASH);
 	buf_size = struct_size(rl, lut, rss_data->rss_lut_size);
 	rl = kzalloc(buf_size, GFP_KERNEL);
 	if (!rl)
@@ -2839,7 +2845,8 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get)
 	} else {
 		rl->lut_entries = cpu_to_le16(rss_data->rss_lut_size);
 		for (i = 0; i < rss_data->rss_lut_size; i++)
-			rl->lut[i] = cpu_to_le32(rss_data->rss_lut[i]);
+			rl->lut[i] = rxhash_ena ?
+				cpu_to_le32(rss_data->rss_lut[i]) : 0;
 
 		xn_params.vc_op = VIRTCHNL2_OP_SET_RSS_LUT;
 	}
-- 
2.43.0

