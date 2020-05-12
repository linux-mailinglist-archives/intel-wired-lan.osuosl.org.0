Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DCF1CFC49
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2020 19:36:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6C7582661B;
	Tue, 12 May 2020 17:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zk63vHJBwNVX; Tue, 12 May 2020 17:36:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BCEB624D41;
	Tue, 12 May 2020 17:36:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3D041BF23F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 17:36:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9673620BF9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 17:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Er7gdN++x3qE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2020 17:36:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A4FB20417
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 17:36:03 +0000 (UTC)
IronPort-SDR: OHprHnbGF96GwTFWzU81XNzR6jb+iYxGilhJbKvOuTeP5TDZYXbElW9nyz70K3rFqOJxrLx15O
 xEvZ0aLr+ieQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 10:36:03 -0700
IronPort-SDR: wlo8OeF/fYYVpCqp57OAMQcLjXfIKGovxfJg4jHE5PpAOVQHOphq8w8GRvXhpPyYnqj8yLC7Bc
 u6D2Q8fJwiVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="298094585"
Received: from ksengupt-mobl1.amr.corp.intel.com ([10.254.97.57])
 by orsmga008.jf.intel.com with ESMTP; 12 May 2020 10:36:02 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 May 2020 10:35:52 -0700
Message-Id: <20200512173553.39460-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/2] igc: Reject NFC rules with multiple
 matches
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

The way rx queue assignment based on mac address, ethetype and vlan
priority filtering operates in I225 doesn't allow us to properly support
NFC rules with multiple matches.

Consider the following example which assigns to queue 2 frames matching
the address MACADDR *and* ethertype ETYPE.

$ ethtool -N eth0 flow-type ether dst <MACADDR> proto <ETYPE> queue 2

When such rule is applied, we have 2 unwanted behaviors:

    1) Any frame matching MACADDR will be assigned to queue 2. It
       doesn't matter the ETYPE value.

    2) Any accepted frame that has ethertype equals to ETYPE, no matter
       the mac address, will be assigned to queue 2 as well.

In current code, multiple-match filters are accepted by the driver, even
though it doesn't support them properly. This patch adds a check for
multiple-match rules in igc_ethtool_is_nfc_rule_valid() so they are
rejected.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 247d0f5c4eb8..2214a5d3a259 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1222,8 +1222,8 @@ static void igc_ethtool_init_nfc_rule(struct igc_nfc_rule *rule,
  * @adapter: Pointer to adapter.
  * @rule: Rule under evaluation.
  *
- * Rules with both destination and source MAC addresses are considered invalid
- * since the driver doesn't support them.
+ * The driver doesn't support rules with multiple matches so if more than
+ * one bit in filter flags is set, @rule is considered invalid.
  *
  * Also, if there is already another rule with the same filter in a different
  * location, @rule is considered invalid.
@@ -1244,9 +1244,8 @@ static int igc_ethtool_check_nfc_rule(struct igc_adapter *adapter,
 		return -EINVAL;
 	}
 
-	if (flags & IGC_FILTER_FLAG_DST_MAC_ADDR &&
-	    flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
-		netdev_dbg(dev, "Filters with both dst and src are not supported");
+	if (flags & (flags - 1)) {
+		netdev_dbg(dev, "Rule with multiple matches not supported");
 		return -EOPNOTSUPP;
 	}
 
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
