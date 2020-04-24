Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7AC1B8061
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BDC6920BF8;
	Fri, 24 Apr 2020 20:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kZx21dDoTrF1; Fri, 24 Apr 2020 20:17:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7292A204BD;
	Fri, 24 Apr 2020 20:17:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 474E61BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4468C86B89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0948LTtFIDAv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 981E386B59
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
IronPort-SDR: Jz8+mX6z1qKhtV8hQ7RdqwAFmFqNhiO2kpRLhJTEZsNCT97jm3ZZtwPkWeq3qPeKEQabFFOYlk
 ofbdxtIAzAnA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:26 -0700
IronPort-SDR: NY/Bwas+hU8RxitxSlSz9+PSU5PGhekae3k250NT95KYbiaCGYsTMUpEutOzducVcbUYsGPDwt
 OmePds16K12g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474508"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:26 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:11 -0700
Message-Id: <20200424201623.10971-8-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 07/19] igc: Change byte order in struct
 igc_nfc_filter
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Every time we access the 'etype' and 'vlan_tci' fields from struct
igc_nfc_filter to enable or disable filters in hardware we have to
convert them from big endian to host order so it makes more sense to
simply have these fields in host order.

The byte order conversion should take place in igc_ethtool_get_nfc_
rule() and igc_ethtool_add_nfc_rule(), which are called by .get_rxnfc
and .set_rxnfc ethtool ops, since ethtool subsystem is the one who deals
with them in big endian order.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         | 10 ++------
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 25 +++++++++-----------
 2 files changed, 13 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 7124ba254b89..fcc6261d7f67 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -452,16 +452,10 @@ enum igc_filter_match_flags {
 	IGC_FILTER_FLAG_DST_MAC_ADDR =	0x8,
 };
 
-/* RX network flow classification data structure */
 struct igc_nfc_filter {
-	/* Byte layout in order, all values with MSB first:
-	 * match_flags - 1 byte
-	 * etype - 2 bytes
-	 * vlan_tci - 2 bytes
-	 */
 	u8 match_flags;
-	__be16 etype;
-	__be16 vlan_tci;
+	u16 etype;
+	u16 vlan_tci;
 	u8 src_addr[ETH_ALEN];
 	u8 dst_addr[ETH_ALEN];
 };
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 46599ee7f0b9..f9518aa1375b 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -954,13 +954,13 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 	fsp->ring_cookie = rule->action;
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
-		fsp->h_u.ether_spec.h_proto = rule->filter.etype;
+		fsp->h_u.ether_spec.h_proto = htons(rule->filter.etype);
 		fsp->m_u.ether_spec.h_proto = ETHER_TYPE_FULL_MASK;
 	}
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
 		fsp->flow_type |= FLOW_EXT;
-		fsp->h_ext.vlan_tci = rule->filter.vlan_tci;
+		fsp->h_ext.vlan_tci = htons(rule->filter.vlan_tci);
 		fsp->m_ext.vlan_tci = htons(VLAN_PRIO_MASK);
 	}
 
@@ -1183,9 +1183,8 @@ int igc_enable_nfc_rule(struct igc_adapter *adapter,
 	int err = -EINVAL;
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
-		u16 etype = ntohs(rule->filter.etype);
-
-		err = igc_add_etype_filter(adapter, etype, rule->action);
+		err = igc_add_etype_filter(adapter, rule->filter.etype,
+					   rule->action);
 		if (err)
 			return err;
 	}
@@ -1205,8 +1204,9 @@ int igc_enable_nfc_rule(struct igc_adapter *adapter,
 	}
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
-		int prio = (ntohs(rule->filter.vlan_tci) & VLAN_PRIO_MASK)
+		int prio = (rule->filter.vlan_tci & VLAN_PRIO_MASK)
 				>> VLAN_PRIO_SHIFT;
+
 		err = igc_add_vlan_prio_filter(adapter, prio, rule->action);
 		if (err)
 			return err;
@@ -1218,14 +1218,11 @@ int igc_enable_nfc_rule(struct igc_adapter *adapter,
 int igc_disable_nfc_rule(struct igc_adapter *adapter,
 			 const struct igc_nfc_rule *rule)
 {
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
-		u16 etype = ntohs(rule->filter.etype);
-
-		igc_del_etype_filter(adapter, etype);
-	}
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE)
+		igc_del_etype_filter(adapter, rule->filter.etype);
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
-		int prio = (ntohs(rule->filter.vlan_tci) & VLAN_PRIO_MASK)
+		int prio = (rule->filter.vlan_tci & VLAN_PRIO_MASK)
 				>> VLAN_PRIO_SHIFT;
 		igc_del_vlan_prio_filter(adapter, prio);
 	}
@@ -1325,7 +1322,7 @@ static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
 		return -ENOMEM;
 
 	if (fsp->m_u.ether_spec.h_proto == ETHER_TYPE_FULL_MASK) {
-		rule->filter.etype = fsp->h_u.ether_spec.h_proto;
+		rule->filter.etype = ntohs(fsp->h_u.ether_spec.h_proto);
 		rule->filter.match_flags = IGC_FILTER_FLAG_ETHER_TYPE;
 	}
 
@@ -1357,7 +1354,7 @@ static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
 			err = -EOPNOTSUPP;
 			goto err_out;
 		}
-		rule->filter.vlan_tci = fsp->h_ext.vlan_tci;
+		rule->filter.vlan_tci = ntohs(fsp->h_ext.vlan_tci);
 		rule->filter.match_flags |= IGC_FILTER_FLAG_VLAN_TCI;
 	}
 
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
