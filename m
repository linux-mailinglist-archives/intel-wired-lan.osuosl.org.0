Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8032AB23E7A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 04:50:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E7FC6071E;
	Wed, 13 Aug 2025 02:50:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S-wtDHah1SD8; Wed, 13 Aug 2025 02:50:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5282960708
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755053406;
	bh=HObBSWrOX/d8cmjDm28UQry8mAxevl+PmWrGHnBntFc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KaJNvVqwRwaiY5RNHvMhTAFblkCfnfpElayjJOUkBefuP4B6F/4xLAOH/sXunKCAA
	 KwYXHN0zOCUEpw1rubQ7wxuRZgUvh9BbKCYOG1DEClhbj22MN7HJRGa6k2lmzDbgxK
	 O2HUuVEvIM1I94yKrdb8cfxfrXyM0zmpz1O+zuu6LoeSLBy5WFv3nQKy//fHbqPQeM
	 jhcD3MV8DMZfujXaZgzpxV8z71hG1RhlbLf7dZ6AuMHS0d6Grt9LFIxSb/DNzdACxd
	 f3Q24S2VoTI3mPFl/JxzQldBlD7FKppbxN5WzDtwb9v90IKl0L3DMCUPchdt3j6yqf
	 grTyC6+MEAEZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5282960708;
	Wed, 13 Aug 2025 02:50:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DF79B1B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 02:50:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D126741677
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 02:50:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1gZJGAHyLJt5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 02:50:03 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 13 Aug 2025 02:50:02 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CE09D4168C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE09D4168C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE09D4168C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 02:50:02 +0000 (UTC)
X-CSE-ConnectionGUID: 8MWbSQRyQFao388G91m5ZA==
X-CSE-MsgGUID: SKIrWqIIQw+LxLfJeDz0JA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="74785355"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="74785355"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 19:42:54 -0700
X-CSE-ConnectionGUID: cKdMxiGXTgO7DxB7JnfSSQ==
X-CSE-MsgGUID: DkZ39xtTQHW0+UC4EVDSKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="170797073"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa004.jf.intel.com with ESMTP; 12 Aug 2025 19:42:54 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Aug 2025 19:42:02 -0700
Message-Id: <20250813024202.10740-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755053403; x=1786589403;
 h=from:to:cc:subject:date:message-id;
 bh=bsDqEcUEhyGBeE03BX4IqJtXgAjkY+sTyHKAFEqzH88=;
 b=XfyblTAzMkWDMUGqIbj5t9Ke7Io2SbagujO/dm1/dZbLgw4WjhgcSbEu
 AuBlAERXPgZK01Ua1ywZaGFqqBHbwWjd/4HN5N4el6cgzbIA8x7ZqC8+4
 q9sLAIogRwCeeJtaOxard+Hs5d/bAQsvirvrQCrF97pkAqajcmckF1uqz
 2HMyVsLKiv+DMGSbX9l+1wDpgsj4cHrYpi+ZDmNLrMJR9wTZX+gH6ndKM
 q/u7npKVoMgjFEBGfOTVFOiHvzguxV2Ah/4gGoWTugeG/6x5ddVxYwEmZ
 gjoalB/X44iL/r5gNENxsOol2ctXBcbqQPsv2cvsUZjDTKxcrN5gJCcib
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XfyblTAz
Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: set mac type when adding
 and removing MAC filters
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
Cc: willemb@google.com, decot@google.com, netdev@vger.kernel.org,
 joshua.a.hay@intel.com, Aleksandr.Loktionov@intel.com, andrew+netdev@lunn.ch,
 edumazet@google.com, jianliu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On control planes that allow changing the MAC address of the interface,
the driver must provide a MAC type to avoid errors such as:

idpf 0000:0a:00.0: Transaction failed (op 535)
idpf 0000:0a:00.0: Received invalid MAC filter payload (op 535) (len 0)
idpf 0000:0a:00.0: Transaction failed (op 536)

These errors occur during driver load or when changing the MAC via:
ip link set <iface> address <mac>

Add logic to set the MAC type when sending ADD/DEL (opcodes 535/536) to
the control plane. Since only one primary MAC is supported per vport, the
driver only needs to send an ADD opcode when setting it. Remove the old
address by calling __idpf_del_mac_filter(), which skips the message and
just clears the entry from the internal list.

Fixes: ce1b75d0635c ("idpf: add ptypes and MAC filter support")
Reported-by: Jian Liu <jianliu@redhat.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
Changelog:
v2:
- Make sure to clear the primary MAC from the internal list, following
  successful change.
- Update the description to include the error on 536 opcode and
  mention the removal of the old address.

v1:
https://lore.kernel.org/intel-wired-lan/20250806192130.3197-1-emil.s.tantilov@intel.com/
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c      |  9 ++++++---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 11 +++++++++++
 2 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 2c2a3e85d693..26edd2cda70b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2345,6 +2345,7 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 	struct idpf_vport_config *vport_config;
 	struct sockaddr *addr = p;
 	struct idpf_vport *vport;
+	u8 old_addr[ETH_ALEN];
 	int err = 0;
 
 	idpf_vport_ctrl_lock(netdev);
@@ -2367,17 +2368,19 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 	if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
 		goto unlock_mutex;
 
+	ether_addr_copy(old_addr, vport->default_mac_addr);
+	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
 	vport_config = vport->adapter->vport_config[vport->idx];
 	err = idpf_add_mac_filter(vport, np, addr->sa_data, false);
 	if (err) {
 		__idpf_del_mac_filter(vport_config, addr->sa_data);
+		ether_addr_copy(vport->default_mac_addr, netdev->dev_addr);
 		goto unlock_mutex;
 	}
 
-	if (is_valid_ether_addr(vport->default_mac_addr))
-		idpf_del_mac_filter(vport, np, vport->default_mac_addr, false);
+	if (is_valid_ether_addr(old_addr))
+		__idpf_del_mac_filter(vport_config, old_addr);
 
-	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
 	eth_hw_addr_set(netdev, addr->sa_data);
 
 unlock_mutex:
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index a028c69f7fdc..e60438633cc4 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3765,6 +3765,15 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
 	return le32_to_cpu(vport_msg->vport_id);
 }
 
+static void idpf_set_mac_type(struct idpf_vport *vport,
+			      struct virtchnl2_mac_addr *mac_addr)
+{
+	if (ether_addr_equal(vport->default_mac_addr, mac_addr->addr))
+		mac_addr->type = VIRTCHNL2_MAC_ADDR_PRIMARY;
+	else
+		mac_addr->type = VIRTCHNL2_MAC_ADDR_EXTRA;
+}
+
 /**
  * idpf_mac_filter_async_handler - Async callback for mac filters
  * @adapter: private data struct
@@ -3894,6 +3903,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 			    list) {
 		if (add && f->add) {
 			ether_addr_copy(mac_addr[i].addr, f->macaddr);
+			idpf_set_mac_type(vport, &mac_addr[i]);
 			i++;
 			f->add = false;
 			if (i == total_filters)
@@ -3901,6 +3911,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 		}
 		if (!add && f->remove) {
 			ether_addr_copy(mac_addr[i].addr, f->macaddr);
+			idpf_set_mac_type(vport, &mac_addr[i]);
 			i++;
 			f->remove = false;
 			if (i == total_filters)
-- 
2.37.3

