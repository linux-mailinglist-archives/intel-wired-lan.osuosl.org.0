Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 047BEA862A3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 18:00:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A939A60C21;
	Fri, 11 Apr 2025 16:00:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jc2kes4ROsft; Fri, 11 Apr 2025 16:00:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE77C60D79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744387254;
	bh=RrM0V02wRaSQ1nQgYVwMvYtdBwmP3uZGpxv624b6Lz0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6q7oCk3t2J5pLdoKDd+HLliWhJcDl2XjX6Uh5VQ9P0g9wTZgfgJtFaTwuoHUOK18o
	 YYp9uutUfLZoxqzJb9dKSTGmbzpXtPCLQQGh1E5GJkboVJF/fpixEeC0WAqrj76lLs
	 5P4XtCGIH/A6Vts3AWljTnKN3FOmm9dLKZQL4VdQNKH01C7MNdDZ+UZesBraR9PmoH
	 EGeRkjzOWR4CVt9Eh7zkzgxfs0LuZuYheJFttjHAW7WHcub8iM8f4HcSghH/aFx6iA
	 IWGbGE6lX1rBe9S03NlxuySVtNr6VAoCbOrUodQ83tnasQzAY1mKvH2uERfn5UQeeA
	 mur9tJDJHD7Rg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE77C60D79;
	Fri, 11 Apr 2025 16:00:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B022108
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 16:00:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A27B847DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 16:00:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2naY6rRtX20B for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 16:00:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 37468847C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37468847C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37468847C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 16:00:51 +0000 (UTC)
X-CSE-ConnectionGUID: 4VZzDAv/Rw6qYlr0MiyUsA==
X-CSE-MsgGUID: 7hlXX5UUTyi88x73+GtPHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="68433890"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="68433890"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 09:00:52 -0700
X-CSE-ConnectionGUID: RbxF6juvRCeoQIe9XmKSvw==
X-CSE-MsgGUID: SSFDzFIdTiy2Z5Kk0j7Lvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="133985238"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa005.fm.intel.com with ESMTP; 11 Apr 2025 09:00:51 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Madhu Chititm <madhu.chittim@intel.com>
Date: Fri, 11 Apr 2025 09:00:35 -0700
Message-ID: <20250411160035.9155-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744387253; x=1775923253;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xHYLkNlHzOqq5UAUq/s/3DQyt8oyTH2qJbIOoZ1A7Y0=;
 b=RwXGj7v1mTBepgYkiAYQUvWNt7wHrfu6xuxph+m5eruDMOro28cWmDX0
 km+9Pv2R/ezeIf4SRdr+JJ+PJNIzAjgPXMuN9nYq5jJ5YyiVKGYMaUCSS
 8lUgNNToVx/clFZ5svlyVjDFJKMvXb1EInYggjs62CjuuhX4P6Nl9MBjf
 6mKjmzw4WDDbjOVFblhtgBAY+F2m2CyqdnO5lprkCh9c5CdB+bmQ4+6ta
 XLUmk1ImuBcYfvAni3otNqTIELTMhcOcEwXkAxm6z+nqbYvONTXEXtYS5
 WBSDOqujZ57BbOLFrmXUhqquqFvBvzNtCs475N/eF/5PVSnSJQdPbBXwS
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RwXGj7v1
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix null-ptr-deref in
 idpf_features_check
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

idpf_features_check is used to validate the TX packet. skb header
length is compared with the hardware supported value received from
the device control plane. The value is stored in the adapter structure
and to access it, vport pointer is used. During reset all the vports
are released and the vport pointer that the netdev private structure
points to is NULL.

To avoid null-ptr-deref, store the max header length value in netdev
private structure. This also helps to cache the value and avoid
accessing adapter pointer in hot path.

BUG: kernel NULL pointer dereference, address: 0000000000000068
...
RIP: 0010:idpf_features_check+0x6d/0xe0 [idpf]
Call Trace:
 <TASK>
 ? __die+0x23/0x70
 ? page_fault_oops+0x154/0x520
 ? exc_page_fault+0x76/0x190
 ? asm_exc_page_fault+0x26/0x30
 ? idpf_features_check+0x6d/0xe0 [idpf]
 netif_skb_features+0x88/0x310
 validate_xmit_skb+0x2a/0x2b0
 validate_xmit_skb_list+0x4c/0x70
 sch_direct_xmit+0x19d/0x3a0
 __dev_queue_xmit+0xb74/0xe70
 ...

Fixes: a251eee62133 ("idpf: add SRIOV support and other ndo_ops")
Reviewed-by: Madhu Chititm <madhu.chittim@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h     |  2 ++
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 10 ++++++----
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 66544faab710..dc37ac0accd5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -143,6 +143,7 @@ enum idpf_vport_state {
  * @vport_id: Vport identifier
  * @link_speed_mbps: Link speed in mbps
  * @vport_idx: Relative vport index
+ * @max_tx_hdr_size: Max header length hardware can support
  * @state: See enum idpf_vport_state
  * @netstats: Packet and byte stats
  * @stats_lock: Lock to protect stats update
@@ -153,6 +154,7 @@ struct idpf_netdev_priv {
 	u32 vport_id;
 	u32 link_speed_mbps;
 	u16 vport_idx;
+	u16 max_tx_hdr_size;
 	enum idpf_vport_state state;
 	struct rtnl_link_stats64 netstats;
 	spinlock_t stats_lock;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index f3aea7bcdaa3..b926305562ab 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -721,6 +721,7 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 		np->vport = vport;
 		np->vport_idx = vport->idx;
 		np->vport_id = vport->vport_id;
+		np->max_tx_hdr_size = idpf_get_max_tx_hdr_size(adapter);
 		vport->netdev = netdev;
 
 		return idpf_init_mac_addr(vport, netdev);
@@ -738,6 +739,7 @@ static int idpf_cfg_netdev(struct idpf_vport *vport)
 	np->adapter = adapter;
 	np->vport_idx = vport->idx;
 	np->vport_id = vport->vport_id;
+	np->max_tx_hdr_size = idpf_get_max_tx_hdr_size(adapter);
 
 	spin_lock_init(&np->stats_lock);
 
@@ -2206,8 +2208,8 @@ static netdev_features_t idpf_features_check(struct sk_buff *skb,
 					     struct net_device *netdev,
 					     netdev_features_t features)
 {
-	struct idpf_vport *vport = idpf_netdev_to_vport(netdev);
-	struct idpf_adapter *adapter = vport->adapter;
+	struct idpf_netdev_priv *np = netdev_priv(netdev);
+	u16 max_tx_hdr_size = np->max_tx_hdr_size;
 	size_t len;
 
 	/* No point in doing any of this if neither checksum nor GSO are
@@ -2230,7 +2232,7 @@ static netdev_features_t idpf_features_check(struct sk_buff *skb,
 		goto unsupported;
 
 	len = skb_network_header_len(skb);
-	if (unlikely(len > idpf_get_max_tx_hdr_size(adapter)))
+	if (unlikely(len > max_tx_hdr_size))
 		goto unsupported;
 
 	if (!skb->encapsulation)
@@ -2243,7 +2245,7 @@ static netdev_features_t idpf_features_check(struct sk_buff *skb,
 
 	/* IPLEN can support at most 127 dwords */
 	len = skb_inner_network_header_len(skb);
-	if (unlikely(len > idpf_get_max_tx_hdr_size(adapter)))
+	if (unlikely(len > max_tx_hdr_size))
 		goto unsupported;
 
 	/* No need to validate L4LEN as TCP is the only protocol with a
-- 
2.43.0

