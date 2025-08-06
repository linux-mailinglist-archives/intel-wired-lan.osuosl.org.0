Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 581A0B1CC76
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Aug 2025 21:22:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 860018470F;
	Wed,  6 Aug 2025 19:22:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a5S4NI0U4zuj; Wed,  6 Aug 2025 19:22:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1FCF846EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754508145;
	bh=IxXbI2/jSotBg9JdfibYRFKmVZwPkOII2gCIt2D5qWQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uiGojzW/9WyNSJLpcV/2UVuE7E9jKRL0MY1m0xQB0Ec+JfT537oxAvqET1LkiInBw
	 JpiAdyX50j0w0elVdnxE1BZ3qz5B9WKXYAXohk75zn4Ln+kJNKGFBKKZLSCNAt2K/F
	 YyJysIK0C87IzJOw1nnMsOswA0mJrVCvXrjFnKX4ZswFTq/LuvuPVsXxoev5khy+vb
	 yO2+mLT9rUzyQV+ZGJ48HMmzWQ4xtRBYBXsETSyxjOPaK0EY86w+cmHSHNjVe52WWv
	 pkIyQUBDmDBJYvE5A+kyqu7tNTX+xdVKQtWjlMbKKmcJqA+0jOxxe8nq3yPoKHgXFq
	 D/IXdxLV4WxcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1FCF846EA;
	Wed,  6 Aug 2025 19:22:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 80B2C233
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 19:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 713C38470B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 19:22:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1yjLYnu1PXLL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Aug 2025 19:22:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AB06A846FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB06A846FB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AB06A846FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 19:22:22 +0000 (UTC)
X-CSE-ConnectionGUID: SwEgEXkhTJu4ldmlEyApKw==
X-CSE-MsgGUID: rqxGg3ifRvKg5w/uM5hL8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56050242"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="56050242"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 12:22:21 -0700
X-CSE-ConnectionGUID: azGAOUoMSdSZS8fTXhCKdA==
X-CSE-MsgGUID: 4MemTOF5RUqEYpqi51pEhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="170123379"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa004.fm.intel.com with ESMTP; 06 Aug 2025 12:22:21 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Aug 2025 12:21:30 -0700
Message-Id: <20250806192130.3197-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754508142; x=1786044142;
 h=from:to:cc:subject:date:message-id;
 bh=PBgzgXlnFwuVjfkiimgPrmli4Kh0Vf3fNYbs219ZXz4=;
 b=DMZcAcx01ueRNUu4mxQOvKdHJJzzlV8mMi2JdgLf8ssnwdFadWMIakVb
 7t297jbXGnwgbioawBKUb+w1jPHy7IRNGv7KxXi3MFXllZDm1SnZ5Jx8/
 W+gfWq5XGYdkJH3t5yixxzNYCgtX/7syCy/j7v0i5zaZlvPpFgWdcc5zC
 WVFbX5eld5xHBpHNmjZQHg4vjyKwIPlRt5RYH2VMZF8BwP/epQkiz725Z
 Wf+wi8aKtSrWNxkTFt9nOwPE7mG+vt61QVnq4dFbNjiKLFCpsQv0rfDkN
 gorXEDUCnAL8ITZ2I28PwCXYzGsiedK5BH4WanNo67ox8B4CUiXwqvStj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DMZcAcx0
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: set mac type when adding
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
 Aleksandr.Loktionov@intel.com, andrew+netdev@lunn.ch, edumazet@google.com,
 jianliu@redhat.com, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On control planes that allow changing the MAC address of the interface,
the driver must provide a MAC type to avoid errors such as:

idpf 0000:0a:00.0: Transaction failed (op 535)
idpf 0000:0a:00.0: Received invalid MAC filter payload (op 535) (len 0)

These errors occur during driver load or when changing the MAC via:
ip link set <iface> address <mac>

Add logic to set the MAC type before performing ADD/DEL operations.
Since only one primary MAC is supported per vport, the driver only needs
to perform ADD in idpf_set_mac().

Fixes: ce1b75d0635c ("idpf: add ptypes and MAC filter support")
Reported-by: Jian Liu <jianliu@redhat.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c      |  6 ++----
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 11 +++++++++++
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 80382ff4a5fa..77d554b0944b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -2284,17 +2284,15 @@ static int idpf_set_mac(struct net_device *netdev, void *p)
 	if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
 		goto unlock_mutex;
 
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
-
-	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
 	eth_hw_addr_set(netdev, addr->sa_data);
 
 unlock_mutex:
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 24febaaa8fbb..7563289dc1e3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3507,6 +3507,15 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
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
@@ -3636,6 +3645,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 			    list) {
 		if (add && f->add) {
 			ether_addr_copy(mac_addr[i].addr, f->macaddr);
+			idpf_set_mac_type(vport, &mac_addr[i]);
 			i++;
 			f->add = false;
 			if (i == total_filters)
@@ -3643,6 +3653,7 @@ int idpf_add_del_mac_filters(struct idpf_vport *vport,
 		}
 		if (!add && f->remove) {
 			ether_addr_copy(mac_addr[i].addr, f->macaddr);
+			idpf_set_mac_type(vport, &mac_addr[i]);
 			i++;
 			f->remove = false;
 			if (i == total_filters)
-- 
2.37.3

