Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8419AB536
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 19:37:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D2D28101A;
	Tue, 22 Oct 2024 17:37:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q9rtzBoTuvRz; Tue, 22 Oct 2024 17:37:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A768980F5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729618658;
	bh=ZI0188asB681DXTOIxO4NUBG7FbwmTwdpfTo7AK1Lko=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7/coqc64qXzcK7g6C8o36NYuz5fwaHcS9s9AilLDM/Jg0sFfdHjA5+Zyz7sYg5A30
	 CIX44w4oZjOhg4p7UHW93+OEGyHWfs17gOOIvJ2aUS9DtHn1kDD6DwbsvFdJYhD4Od
	 JW8Wks0rQ9phiZxLQXsNRKGBX9O9NPKbRPsVmbZvQYTisK8ZslCkG3mlq1M4AGgioG
	 Nh8tHzEDP7703e3nZgaS9T5F9C1GvE7Qm0e8pgKVG2hIYmRvwG8NovZlIK0dSotG+S
	 WjtpDHcTENx61EHlrLdZAbG32xTmU4cvCEP/KTjI2bkU//DhsXD8wy58srCPk7IFkY
	 7SctKi4X21XiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A768980F5A;
	Tue, 22 Oct 2024 17:37:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A2B745126
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4AF2840990
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:37:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G2X791oKgQEz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 17:37:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0F2A94099B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F2A94099B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F2A94099B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:37:33 +0000 (UTC)
X-CSE-ConnectionGUID: FpvzoBDbQvONuLoHlZmrgg==
X-CSE-MsgGUID: Urm8545LRU2sobHOrKYTfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39721921"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39721921"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:37:27 -0700
X-CSE-ConnectionGUID: EjMAnx/CTxencw981mV+xg==
X-CSE-MsgGUID: XmWVteK0SJ2dGP+9idCsgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79862537"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.24])
 by orviesa009.jf.intel.com with ESMTP; 22 Oct 2024 10:37:27 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 stable@vger.kernel.org, Tarun K Singh <tarun.k.singh@intel.com>
Date: Tue, 22 Oct 2024 10:35:26 -0700
Message-ID: <20241022173527.87972-2-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241022173527.87972-1-pavan.kumar.linga@intel.com>
References: <20241022173527.87972-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729618655; x=1761154655;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fnA0+V9d6R0QH4pHuCxe4JCw3zsvVsBfrNKGuSh+9/Y=;
 b=YsHnOUCjqbNhkDSQhslKR/j5GOIXMUovbZKKZ0d6he3XHOwVUa4VUCYx
 535rB8TlIBHKUJczY0LD/OCxIx/VnFTWC19psB1WdRmeOPquo7lnTnlLI
 Mgjp3zojH9uQ/fuvDmApvNEyOvRAhbKKRzZ/Cq9bRWfeLBjRezPj0jrlz
 t0sWGGhNiHdCGK6wKjooYbMdug43KWeQm11qhVQ9yGo3IpZb26N0NHwOL
 AAZNotAa8gEdZIMUAvVW6aPg0KLvfUOk3/oP0xPlGnL1KJSoWxBiIwX46
 PjRaxf8kjk3k7m0eZshhwf2z5+vRWRT8fjRA3EV1YgfXqPJi90DsQJR2u
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YsHnOUCj
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: avoid vport access in
 idpf_get_link_ksettings
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

When the device control plane is removed or the platform
running device control plane is rebooted, a reset is detected
on the driver. On driver reset, it releases the resources and
waits for the reset to complete. If the reset fails, it takes
the error path and releases the vport lock. At this time if the
monitoring tools tries to access link settings, it call traces
for accessing released vport pointer.

To avoid it, move link_speed_mbps to netdev_priv structure
which removes the dependency on vport pointer and the vport lock
in idpf_get_link_ksettings. Also use netif_carrier_ok()
to check the link status and adjust the offsetof to use link_up
instead of link_speed_mbps.

Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
Cc: stable@vger.kernel.org # 6.7+
Reviewed-by: Tarun K Singh <tarun.k.singh@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h          |  4 ++--
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c  | 11 +++--------
 drivers/net/ethernet/intel/idpf/idpf_lib.c      |  4 ++--
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c |  2 +-
 4 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 2c31ad87587a..66544faab710 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -141,6 +141,7 @@ enum idpf_vport_state {
  * @adapter: Adapter back pointer
  * @vport: Vport back pointer
  * @vport_id: Vport identifier
+ * @link_speed_mbps: Link speed in mbps
  * @vport_idx: Relative vport index
  * @state: See enum idpf_vport_state
  * @netstats: Packet and byte stats
@@ -150,6 +151,7 @@ struct idpf_netdev_priv {
 	struct idpf_adapter *adapter;
 	struct idpf_vport *vport;
 	u32 vport_id;
+	u32 link_speed_mbps;
 	u16 vport_idx;
 	enum idpf_vport_state state;
 	struct rtnl_link_stats64 netstats;
@@ -287,7 +289,6 @@ struct idpf_port_stats {
  * @tx_itr_profile: TX profiles for Dynamic Interrupt Moderation
  * @port_stats: per port csum, header split, and other offload stats
  * @link_up: True if link is up
- * @link_speed_mbps: Link speed in mbps
  * @sw_marker_wq: workqueue for marker packets
  */
 struct idpf_vport {
@@ -331,7 +332,6 @@ struct idpf_vport {
 	struct idpf_port_stats port_stats;
 
 	bool link_up;
-	u32 link_speed_mbps;
 
 	wait_queue_head_t sw_marker_wq;
 };
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 3806ddd3ce4a..59b1a1a09996 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -1296,24 +1296,19 @@ static void idpf_set_msglevel(struct net_device *netdev, u32 data)
 static int idpf_get_link_ksettings(struct net_device *netdev,
 				   struct ethtool_link_ksettings *cmd)
 {
-	struct idpf_vport *vport;
-
-	idpf_vport_ctrl_lock(netdev);
-	vport = idpf_netdev_to_vport(netdev);
+	struct idpf_netdev_priv *np = netdev_priv(netdev);
 
 	ethtool_link_ksettings_zero_link_mode(cmd, supported);
 	cmd->base.autoneg = AUTONEG_DISABLE;
 	cmd->base.port = PORT_NONE;
-	if (vport->link_up) {
+	if (netif_carrier_ok(netdev)) {
 		cmd->base.duplex = DUPLEX_FULL;
-		cmd->base.speed = vport->link_speed_mbps;
+		cmd->base.speed = np->link_speed_mbps;
 	} else {
 		cmd->base.duplex = DUPLEX_UNKNOWN;
 		cmd->base.speed = SPEED_UNKNOWN;
 	}
 
-	idpf_vport_ctrl_unlock(netdev);
-
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 4f20343e49a9..c3848e10e7db 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1860,7 +1860,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	 * mess with. Nothing below should use those variables from new_vport
 	 * and should instead always refer to them in vport if they need to.
 	 */
-	memcpy(new_vport, vport, offsetof(struct idpf_vport, link_speed_mbps));
+	memcpy(new_vport, vport, offsetof(struct idpf_vport, link_up));
 
 	/* Adjust resource parameters prior to reallocating resources */
 	switch (reset_cause) {
@@ -1906,7 +1906,7 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
 	/* Same comment as above regarding avoiding copying the wait_queues and
 	 * mutexes applies here. We do not want to mess with those if possible.
 	 */
-	memcpy(vport, new_vport, offsetof(struct idpf_vport, link_speed_mbps));
+	memcpy(vport, new_vport, offsetof(struct idpf_vport, link_up));
 
 	if (reset_cause == IDPF_SR_Q_CHANGE)
 		idpf_vport_alloc_vec_indexes(vport);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 70986e12da28..3be883726b87 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -141,7 +141,7 @@ static void idpf_handle_event_link(struct idpf_adapter *adapter,
 	}
 	np = netdev_priv(vport->netdev);
 
-	vport->link_speed_mbps = le32_to_cpu(v2e->link_speed);
+	np->link_speed_mbps = le32_to_cpu(v2e->link_speed);
 
 	if (vport->link_up == v2e->link_status)
 		return;
-- 
2.43.0

