Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B45D154FC88
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jun 2022 19:54:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEAE241778;
	Fri, 17 Jun 2022 17:54:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEAE241778
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=Cs6q0swr
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zO_h-JCFsT72; Fri, 17 Jun 2022 17:54:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49A6B41770;
	Fri, 17 Jun 2022 17:54:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49A6B41770
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 884A01BF331
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 17:54:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F7D041770
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 17:54:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F7D041770
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mNvlxoDExG6G for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jun 2022 17:54:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C11941752
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C11941752
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 17:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655488457; x=1687024457;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Tl3tzRpk6aIfyvlublC9283JaOB9qrtRYY79+EPtmd0=;
 b=Cs6q0swr1dzE2tmPbbS1huPV4A7woNeEqJq79btSTlMHed+fz0ahc1uF
 nhwsaVh8S8UanllOe/gWW5AzcqQMxvaTM6F28WL4n5VXU26MQW3gRjL0a
 pR0BwSeD1FNjnruQFfPPLok+RIkKjjiP+icUzIAhhege7m6D1MgJ01zyA
 N6Ivys2hWnOrYixjuF0jS0QWJxd+2aCMvKqRV3MY6M/C67gOu+pimmNN0
 oeBR9Z6xpX9FbyAyuC2+RxKWIzoBnzpALueu0OlifOibYAUV2z7pYsVzY
 KoteoOGyp6HkqGwdnG6iKiqY97Mt8CjcN+J72+xOXiW+8WUtWv9AgrR2+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="268266141"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="268266141"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 10:50:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="688392564"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.166.28.101])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jun 2022 10:50:11 -0700
From: Jun Zhang <xuejun.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Jun 2022 13:50:00 -0400
Message-Id: <20220617175000.2168164-1-xuejun.zhang@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] iavf: validate dest MAC and VLAN
 from tc-filter code path
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
Cc: Kiran Patil <kiran.patil@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kiran Patil <kiran.patil@intel.com>

Before allowing tc-filter using dest MAC, VLAN - check to make
sure there is basic active filter using specified dest MAC and
likewise for VLAN.

This check is must to allow only legit filter via tc-filter
code path with or without ADQ.

Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
Signed-off-by: Kiran Patil <kiran.patil@intel.com>
Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 62 ++++++++++++++++++++-
 1 file changed, 61 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 57c51a15bcbc..287c3e4bf8af 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3558,6 +3558,48 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 	return ret;
 }
 
+/**
+ * iavf_is_vlan_tc_filter_allowed - allowed to add tc-filter using VLAN
+ * @adapter: board private structure
+ * @vlan: VLAN to verify
+ *
+ * Using specified "vlan" ID, there must be active VLAN filter in VF's
+ * MAC-VLAN filter list.
+ */
+static bool
+iavf_is_vlan_tc_filter_allowed(struct iavf_adapter *adapter, u16 vlan)
+{
+	struct iavf_vlan_filter *f;
+	bool allowed;
+
+	spin_lock_bh(&adapter->mac_vlan_list_lock);
+	f = iavf_find_vlan(adapter, IAVF_VLAN(vlan, ETH_P_8021Q));
+	allowed = (f && f->add && !f->remove);
+	spin_unlock_bh(&adapter->mac_vlan_list_lock);
+	return allowed;
+}
+
+/**
+ * iavf_is_mac_tc_filter_allowed - allowed to add tc-filter using MAC addr
+ * @adapter: board private structure
+ * @macaddr: MAC address
+ *
+ * Using specified MAC address, there must be active MAC filter in VF's
+ * MAC-VLAN filter list.
+ */
+static bool
+iavf_is_mac_tc_filter_allowed(struct iavf_adapter *adapter, const u8 *macaddr)
+{
+	struct iavf_mac_filter *f;
+	bool allowed;
+
+	spin_lock_bh(&adapter->mac_vlan_list_lock);
+	f = iavf_find_filter(adapter, macaddr);
+	allowed = (f && f->add && !f->is_new_mac && !f->remove);
+	spin_unlock_bh(&adapter->mac_vlan_list_lock);
+	return allowed;
+}
+
 /**
  * iavf_parse_cls_flower - Parse tc flower filters provided by kernel
  * @adapter: board private structure
@@ -3651,7 +3693,15 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 			}
 		}
 
-		if (!is_zero_ether_addr(match.key->dst))
+		if (!is_zero_ether_addr(match.key->dst)) {
+			if (!iavf_is_mac_tc_filter_allowed(adapter,
+							   match.key->dst)) {
+				dev_err(&adapter->pdev->dev,
+					"Dest MAC %pM doesn't belong to this VF\n",
+					match.mask->dst);
+				return -EINVAL;
+			}
+
 			if (is_valid_ether_addr(match.key->dst) ||
 			    is_multicast_ether_addr(match.key->dst)) {
 				/* set the mask if a valid dst_mac address */
@@ -3660,6 +3710,7 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 				ether_addr_copy(vf->data.tcp_spec.dst_mac,
 						match.key->dst);
 			}
+		}
 
 		if (!is_zero_ether_addr(match.key->src))
 			if (is_valid_ether_addr(match.key->src) ||
@@ -3677,6 +3728,8 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 
 		flow_rule_match_vlan(rule, &match);
 		if (match.mask->vlan_id) {
+			u16 vlan = match.key->vlan_id & VLAN_VID_MASK;
+
 			if (match.mask->vlan_id == VLAN_VID_MASK) {
 				field_flags |= IAVF_CLOUD_FIELD_IVLAN;
 			} else {
@@ -3684,6 +3737,13 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
 					match.mask->vlan_id);
 				return -EINVAL;
 			}
+
+			if (!iavf_is_vlan_tc_filter_allowed(adapter, vlan)) {
+				dev_err(&adapter->pdev->dev,
+					"VLAN %u doesn't belong to this VF\n",
+					vlan);
+				return -EINVAL;
+			}
 		}
 		vf->mask.tcp_spec.vlan_id |= cpu_to_be16(0xffff);
 		vf->data.tcp_spec.vlan_id = cpu_to_be16(match.key->vlan_id);
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
