Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F43BAE9CA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 23:24:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E154C82D96;
	Tue, 30 Sep 2025 21:24:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6G4g9GYVFLvL; Tue, 30 Sep 2025 21:24:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDF6482EE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759267446;
	bh=gORbG6KomzQux1xBqrI1uF8KbCE1k2cWrDVQUMWXjnU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3aqh93zaumrWaTkCyfVDNR67B8NNrY8Lxb2CtED1xbv53g7ANcXkqqZA7/0ZQcu6a
	 TWyEo7LDJOT5z7CDC5nNCJ+XHmN1AnCdeIHiw+t4rx+whpeBizt2H60cGswdy3j4yK
	 oeZM92D/NPF1oOUtWlo4kd0H5bg1/43+w5AxjKe97vXiNaqDSEL+D7wH/G52z0muAu
	 CPYQMacZVeJYnJGAtl0yq25Yk3HCc1ZORymJ5b1OHhfCTdaYP5o89KKo34dOJdpq7R
	 jltZFAON263PZHNcyVdCgwKlvyhYolyFhVmPf+y1tB3uYT7rAgDJRDxSIhOxuY7OKw
	 v1wPMZse7LGRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDF6482EE1;
	Tue, 30 Sep 2025 21:24:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D78D81000
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 21:24:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7C8240F48
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 21:24:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4t0OObfp9lmG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Sep 2025 21:24:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B813540F5B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B813540F5B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B813540F5B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Sep 2025 21:24:04 +0000 (UTC)
X-CSE-ConnectionGUID: xdfYk7gpRWGepgQ4v50qvg==
X-CSE-MsgGUID: Orog3jIjQPy1HhyZjDEFbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65358363"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65358363"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 14:24:03 -0700
X-CSE-ConnectionGUID: L4Y0AmqyQky0FoYMrIKWgg==
X-CSE-MsgGUID: RD81Jlg6TYa9fsn/+RARhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,305,1751266800"; d="scan'208";a="209336190"
Received: from aus-labsrv3.an.intel.com ([10.123.116.23])
 by orviesa002.jf.intel.com with ESMTP; 30 Sep 2025 14:24:04 -0700
From: Sreedevi Joshi <sreedevi.joshi@intel.com>
To: sreedevi.joshi@intel.com,
	intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Erik Gabriel Carrillo <erik.g.carrillo@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 30 Sep 2025 16:23:52 -0500
Message-Id: <20250930212352.2263907-3-sreedevi.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250930212352.2263907-1-sreedevi.joshi@intel.com>
References: <20250930212352.2263907-1-sreedevi.joshi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759267443; x=1790803443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Dyr+kNx9wGj8j/U9eYGKerWK7YZZ2PEwRw3Ax6/F1gI=;
 b=At0pbGRaYuVJOTKoVgeHdxk1E7P1u1c1Xeac64YiE2aLZTjjliCAipKn
 2P1eDsaPzfmtPyKNuVVL4DmJj5rvxbpGIw14Z7R7pHxQAnWzUzev0kcgH
 lhegB6IO1L9roYJDgiC/kD0ywV4khfqbpEfG/Q83GYRcsBEVCgl9rVeue
 2AMGvFOdrYnvRvMcImShfrBS/74YHOIPW+ZWaI5aUw8At2Fg6vW7+kjUN
 4dfZ0uWU7wMZj/8/0ThpMP2Y3rH+HCQX3tn2v46JMiJno8FrSKRRNIPhL
 BOs+UNrOFWHJfEHv6AZxF0BvDxz3lN42cOIgPVAbyaoxg+b3nFCeJ4roV
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=At0pbGRa
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 2/2] idpf: fix issue with
 ethtool -n command display
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

From: Erik Gabriel Carrillo <erik.g.carrillo@intel.com>

When ethtool -n is executed on an interface to display the flow steering
rules, "rxclass: Unknown flow type" error is generated.

The flow steering list maintained in the driver currently stores only the
location and q_index but other fields of the ethtool_rx_flow_spec are not
stored. This may be enough for the virtchnl command to delete the entry.
However, when the ethtool -n command is used to query the flow steering
rules, the ethtool_rx_flow_spec returned is not complete causing the
error below.

Resolve this by storing the flow spec (fsp) when rules are added and
returning the complete flow spec when rules are queried.

Also, change the return value from EINVAL to ENOENT when flow steering
entry is not found during query by location or when deleting an entry.

Add logic to detect and reject duplicate filter entries at the same
location and change logic to perform upfront validation of all error
conditions before adding flow rules through virtchnl. This avoids the
need for additional virtchnl delete messages when subsequent operations
fail, which was missing in the original upstream code.

Example:
Before the fix:
ethtool -n eth1
2 RX rings available
Total 2 rules

rxclass: Unknown flow type
rxclass: Unknown flow type

After the fix:
ethtool -n eth1
2 RX rings available
Total 2 rules

Filter: 0
        Rule Type: TCP over IPv4
        Src IP addr: 10.0.0.1 mask: 0.0.0.0
        Dest IP addr: 0.0.0.0 mask: 255.255.255.255
        TOS: 0x0 mask: 0xff
        Src port: 0 mask: 0xffff
        Dest port: 0 mask: 0xffff
        Action: Direct to queue 0

Filter: 1
        Rule Type: UDP over IPv4
        Src IP addr: 10.0.0.1 mask: 0.0.0.0
        Dest IP addr: 0.0.0.0 mask: 255.255.255.255
        TOS: 0x0 mask: 0xff
        Src port: 0 mask: 0xffff
        Dest port: 0 mask: 0xffff
        Action: Direct to queue 0

Fixes: ada3e24b84a0 ("idpf: add flow steering support")
Signed-off-by: Erik Gabriel Carrillo <erik.g.carrillo@intel.com>
Co-developed-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  3 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 57 ++++++++++++-------
 2 files changed, 38 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 4f4cf21e3c46..ec759bc5b3ce 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -269,8 +269,7 @@ struct idpf_port_stats {
 
 struct idpf_fsteer_fltr {
 	struct list_head list;
-	u32 loc;
-	u32 q_index;
+	struct ethtool_rx_flow_spec fs;
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 1352f18b60b0..6a39cc1feeb5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -38,11 +38,13 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 		cmd->data = idpf_fsteer_max_rules(vport);
 		break;
 	case ETHTOOL_GRXCLSRULE:
-		err = -EINVAL;
+		err = -ENOENT;
 		spin_lock_bh(&vport_config->flow_steer_list_lock);
 		list_for_each_entry(f, &user_config->flow_steer_list, list)
-			if (f->loc == cmd->fs.location) {
-				cmd->fs.ring_cookie = f->q_index;
+			if (f->fs.location == cmd->fs.location) {
+				/* Avoid infoleak from padding: zero first, then assign fields */
+				memset(&cmd->fs, 0, sizeof(cmd->fs));
+				cmd->fs = f->fs;
 				err = 0;
 				break;
 			}
@@ -56,7 +58,7 @@ static int idpf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 				err = -EMSGSIZE;
 				break;
 			}
-			rule_locs[cnt] = f->loc;
+			rule_locs[cnt] = f->fs.location;
 			cnt++;
 		}
 		if (!err)
@@ -158,7 +160,7 @@ static int idpf_add_flow_steer(struct net_device *netdev,
 	struct idpf_vport *vport;
 	u32 flow_type, q_index;
 	u16 num_rxq;
-	int err;
+	int err = 0;
 
 	vport = idpf_netdev_to_vport(netdev);
 	vport_config = vport->adapter->vport_config[np->vport_idx];
@@ -184,6 +186,29 @@ static int idpf_add_flow_steer(struct net_device *netdev,
 	if (!rule)
 		return -ENOMEM;
 
+	fltr = kzalloc(sizeof(*fltr), GFP_KERNEL);
+	if (!fltr) {
+		err = -ENOMEM;
+		goto out_free_rule;
+	}
+
+	/* detect duplicate entry and reject before adding rules */
+	spin_lock_bh(&vport_config->flow_steer_list_lock);
+	list_for_each_entry(f, &user_config->flow_steer_list, list) {
+		if (f->fs.location == fsp->location) {
+			err = -EEXIST;
+			break;
+		}
+
+		if (f->fs.location > fsp->location)
+			break;
+		parent = f;
+	}
+	spin_unlock_bh(&vport_config->flow_steer_list_lock);
+
+	if (err)
+		goto out;
+
 	rule->vport_id = cpu_to_le32(vport->vport_id);
 	rule->count = cpu_to_le32(1);
 	info = &rule->rule_info[0];
@@ -222,28 +247,20 @@ static int idpf_add_flow_steer(struct net_device *netdev,
 		goto out;
 	}
 
-	fltr = kzalloc(sizeof(*fltr), GFP_KERNEL);
-	if (!fltr) {
-		err = -ENOMEM;
-		goto out;
-	}
+	/* Save a copy of the user's flow spec so ethtool can later retrieve it */
+	fltr->fs = *fsp;
 
-	fltr->loc = fsp->location;
-	fltr->q_index = q_index;
 	spin_lock_bh(&vport_config->flow_steer_list_lock);
-	list_for_each_entry(f, &user_config->flow_steer_list, list) {
-		if (f->loc >= fltr->loc)
-			break;
-		parent = f;
-	}
-
 	parent ? list_add(&fltr->list, &parent->list) :
 		 list_add(&fltr->list, &user_config->flow_steer_list);
 
 	user_config->num_fsteer_fltrs++;
 	spin_unlock_bh(&vport_config->flow_steer_list_lock);
+	goto out_free_rule;
 
 out:
+	kfree(fltr);
+out_free_rule:
 	kfree(rule);
 	return err;
 }
@@ -297,14 +314,14 @@ static int idpf_del_flow_steer(struct net_device *netdev,
 	spin_lock_bh(&vport_config->flow_steer_list_lock);
 	list_for_each_entry_safe(f, iter,
 				 &user_config->flow_steer_list, list) {
-		if (f->loc == fsp->location) {
+		if (f->fs.location == fsp->location) {
 			list_del(&f->list);
 			kfree(f);
 			user_config->num_fsteer_fltrs--;
 			goto out_unlock;
 		}
 	}
-	err = -EINVAL;
+	err = -ENOENT;
 
 out_unlock:
 	spin_unlock_bh(&vport_config->flow_steer_list_lock);
-- 
2.25.1

