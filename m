Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BE5B2731B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 01:43:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D07BD80F6D;
	Thu, 14 Aug 2025 23:43:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j_btZKD_-zIP; Thu, 14 Aug 2025 23:43:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8307480F6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755215035;
	bh=zWCqXUT+Xyv0j96+WNpcf8OVuszpGgFqnDcZsR0Z1TQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VW/Vhi8gAFE9Dg3pBKiAhEIt+c80XN7i6MLt9Uo4K4UlRJ6u0ZHS14EAiJIGK4tHr
	 gAuNp0le7PJENz2vRDZouQDKGo/CKdFUs0Skpw9cGgTbPMx6maUSeuO9C9ZESBh65u
	 DfL4q3nfx70sVoJ4hdf3uxxWgrARYLVraX82XG6G/xFc311qn/NIluLk2VceEOuldk
	 OZkoY5OOi3kWjrnSZRS97FYqiBGCM4AtYxvbfq1FNeBTP5GzcJgrUqDuzSvBxwL4ZE
	 5OhttKSeCVx/DFqIqqK1B/bhWip1ybrwqe3HiHNIvASSjWe/quN4m7ocycfvJcU6/x
	 qH6s4ZJ5uu4vQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8307480F6E;
	Thu, 14 Aug 2025 23:43:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E68B1BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 23:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64BFE407FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 23:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ICv6VTnLZ5k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Aug 2025 23:43:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 570C14078B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 570C14078B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 570C14078B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Aug 2025 23:43:51 +0000 (UTC)
X-CSE-ConnectionGUID: hdHi5Bl8Qx61gbg64P9hhw==
X-CSE-MsgGUID: MmkmbtJnTU6TRtOIoAlWiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11522"; a="74994580"
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="74994580"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 16:43:51 -0700
X-CSE-ConnectionGUID: /ALntabWRxyYZvNXNHNh2A==
X-CSE-MsgGUID: nRfHu1FOTZCEBJBXHCW7AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="166099831"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa010.jf.intel.com with ESMTP; 14 Aug 2025 16:43:51 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Aug 2025 16:43:00 -0700
Message-Id: <20250814234300.2926-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755215033; x=1786751033;
 h=from:to:cc:subject:date:message-id;
 bh=6OdWZb19OX2HpH2y0378xB1uyIm7WipJ1iU4Gtu0iGc=;
 b=IG+9Ekm+yKZ3CVkpIxeC/jbV6YveUx0LpIjFieZpONFG7lM9YA/AV5pr
 380cgFe7HmGmtXkhI5pOFJVuFKNWNZdfbNwKof5xhtiYkjQvOY327O4oW
 aCiMGkQzmAqJgAoPTIMKjRNvdtGK0r5QpYSaE2uE4hZXUqyCcDsRu3sGY
 1K3S7dUUY/y+G3PQbFSC38z0CFAI5hQurseNbrIkrV9LnVddCiHhcfB82
 khvmyPZzhUxVpDvoIauLkwMpTc7OXNTd/Wg/aYf/AIFewToxLKM9JYtlL
 YllmN0tM7Ciy6Y3LHUB5Iqv0Y3XC8qt89kMl7Eq3GEhmnmeqTIP/13MI3
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IG+9Ekm+
Subject: [Intel-wired-lan] [PATCH iwl-net v3] idpf: set mac type when adding
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
Cc: pmenzel@molgen.mpg.de, willemb@google.com, decot@google.com,
 netdev@vger.kernel.org, joshua.a.hay@intel.com, Aleksandr.Loktionov@intel.com,
 andrew+netdev@lunn.ch, edumazet@google.com, jianliu@redhat.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
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
just clears the entry from the internal list. This avoids an error on DEL
as it attempts to remove an address already cleared by the preceding ADD
opcode.

Fixes: ce1b75d0635c ("idpf: add ptypes and MAC filter support")
Reported-by: Jian Liu <jianliu@redhat.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
Changelog:
v3:
- Update the commit message to clarify the change in logic from ADD/DEL 
  to just ADD in idpf_set_mac() is to avoid another case where the control plane will 
  return an error.
- s/old_address/old_mac_address/g
- Refactored idpf_set_mac_type() to use ternary operator for setting
  the MAC type based on whether the address is primary or not.

v2:
- Make sure to clear the primary MAC from the internal list, following
  successful change.
- Update the description to include the error on 536 opcode and
  mention the removal of the old address.

v1:
https://lore.kernel.org/intel-wired-lan/20250806192130.3197-1-emil.s.tantilov@intel.com/
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c      |  9 ++++++---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 12 ++++++++++++
 2 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 2c2a3e85d693..513032cb5f08 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2344,6 +2344,7 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_vport_config *vport_config;
 	struct sockaddr *addr = p;
+	u8 old_mac_addr[ETH_ALEN];
 	struct idpf_vport *vport;
 	int err = 0;
 
@@ -2367,17 +2368,19 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 	if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
 		goto unlock_mutex;
 
+	ether_addr_copy(old_mac_addr, vport->default_mac_addr);
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
+	if (is_valid_ether_addr(old_mac_addr))
+		__idpf_del_mac_filter(vport_config, old_mac_addr);
 
-	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
 	eth_hw_addr_set(netdev, addr->sa_data);
 
 unlock_mutex:
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index a028c69f7fdc..6330d4a0ae07 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3765,6 +3765,16 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
 	return le32_to_cpu(vport_msg->vport_id);
 }
 
+static void idpf_set_mac_type(struct idpf_vport *vport,
+			      struct virtchnl2_mac_addr *mac_addr)
+{
+	bool is_primary;
+
+	is_primary = ether_addr_equal(vport->default_mac_addr, mac_addr->addr);
+	mac_addr->type = is_primary ? VIRTCHNL2_MAC_ADDR_PRIMARY :
+				      VIRTCHNL2_MAC_ADDR_EXTRA;
+}
+
 /**
  * idpf_mac_filter_async_handler - Async callback for mac filters
  * @adapter: private data struct
@@ -3894,6 +3904,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 			    list) {
 		if (add && f->add) {
 			ether_addr_copy(mac_addr[i].addr, f->macaddr);
+			idpf_set_mac_type(vport, &mac_addr[i]);
 			i++;
 			f->add = false;
 			if (i == total_filters)
@@ -3901,6 +3912,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 		}
 		if (!add && f->remove) {
 			ether_addr_copy(mac_addr[i].addr, f->macaddr);
+			idpf_set_mac_type(vport, &mac_addr[i]);
 			i++;
 			f->remove = false;
 			if (i == total_filters)
-- 
2.37.3

