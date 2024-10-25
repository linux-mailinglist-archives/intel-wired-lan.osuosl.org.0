Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9609B0D7D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 20:39:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E18EC81F78;
	Fri, 25 Oct 2024 18:39:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5U6W7APxypSC; Fri, 25 Oct 2024 18:39:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7FC981F73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729881545;
	bh=ZI0188asB681DXTOIxO4NUBG7FbwmTwdpfTo7AK1Lko=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BVPZd9A65rm1Bjdna2IoSEfnpBMdrnOuUaPhzhSqXa3Gl/m8+nO15Wl0bExG1hOt9
	 m+h+TOutOTV5YFzE4/PECxrQXCoqbA6AiP4FIzluP2vEz6NrZz2prCZcRGjU++DgDY
	 Ip2W8/MN184EDmfyjCa6qVhdwzBARv81QoWDypVPmQoQG25ZMn3Uf2CME367AKN4Uz
	 52AEgrNNx4l6q/CFnU5sDHeFWGre0EFlPlhVg6KtJ3reen2nnkhehfqV1cfyTNrKea
	 Fn3kKboR0Jkx0C6G1Mwfrg4kudCErhBCMu1I77nkUyn3inFwkAIxNx2Y4lsCTYuqxE
	 WprXIeFR1JwTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7FC981F73;
	Fri, 25 Oct 2024 18:39:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F71E2318
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 18:39:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7988240C2F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 18:39:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YRqZz-qu5TFy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2024 18:39:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 32C4340C53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32C4340C53
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 32C4340C53
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 18:39:01 +0000 (UTC)
X-CSE-ConnectionGUID: Qblcn5BMQnmc28NLbLV90g==
X-CSE-MsgGUID: EiYKnxe4TLKmOmDt4irfhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="47043916"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="47043916"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 11:39:01 -0700
X-CSE-ConnectionGUID: 5xjyYdX9SHmtX9LIFV9biw==
X-CSE-MsgGUID: YxweRXZPQlSL3+/YCY6WhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="111801066"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.24])
 by fmviesa001.fm.intel.com with ESMTP; 25 Oct 2024 11:39:01 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, horms@kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>, stable@vger.kernel.org,
 Tarun K Singh <tarun.k.singh@intel.com>
Date: Fri, 25 Oct 2024 11:38:42 -0700
Message-ID: <20241025183843.34678-2-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241025183843.34678-1-pavan.kumar.linga@intel.com>
References: <20241025183843.34678-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729881542; x=1761417542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fnA0+V9d6R0QH4pHuCxe4JCw3zsvVsBfrNKGuSh+9/Y=;
 b=FP+g2WMVIWA5RF/TUaHkAut811LqE9ZZ9SQfs6NRKpM/XcXUWL1XgfFu
 Y0SplZDn/xUX0rn99gRfTFBl+ZRo2+eLnNIcDyAxyiVkOicD0GZS2/J/M
 LNObVlcDzCodFvCRJqmCVAB5lSrFpdEIRJSyNm0qxK/0hgpARLdqiJl0H
 otQlYp6A2xyE9by+AR7Bm3NC0ScB3Vt8rdsrYqNHK2MXNbcSqxFKTjnhZ
 6GkGPscAbcn2ZtX7BvGERMoCAYdTlBkEpzfyEmWUq/bpVDJ9fjZmydRrz
 WSuBBGbT2S0uMMsOL2YmmMH22MMOiUbrnB8Ebyu5OoQd6iFEVF47bps19
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FP+g2WMV
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/2] idpf: avoid vport access
 in idpf_get_link_ksettings
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

