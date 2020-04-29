Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 647201BEA1E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2020 23:43:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 15473868F3;
	Wed, 29 Apr 2020 21:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7WY9VjPf7WQn; Wed, 29 Apr 2020 21:43:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25B58869A9;
	Wed, 29 Apr 2020 21:43:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9157A1BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2020 21:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A5E184993
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2020 21:43:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wtdBZt6W2GHX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2020 21:43:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7063F8349B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2020 21:43:15 +0000 (UTC)
IronPort-SDR: +5IkhDjFwM24X528lkz5s/wri2/WFOGGTgWcBdYYKcZLELF7Hg6iaatGEkOJGVAYrxeCfSXExQ
 JnEwUIxR2kfg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 14:43:14 -0700
IronPort-SDR: jIx9luRuFYY3v32rOzdlnCpOjLWt9U0vccZgB+GwCauvUj4XwH4+phMPmGOjrdj/9dRPsLK82k
 Xcz80y96/xfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,333,1583222400"; d="scan'208";a="282636979"
Received: from dmadrizh-mobl2.amr.corp.intel.com ([10.212.71.111])
 by fmsmga004.fm.intel.com with ESMTP; 29 Apr 2020 14:43:13 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Apr 2020 14:43:06 -0700
Message-Id: <20200429214306.71046-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH] igc: Reject NFC rules with multiple
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

While we could fix 1) by not enabling queue assignment on the MAC
address filter, 2) would still happen.

In current code, multiple-match filters are accepted by the driver, even
though it doesn't support them properly. This patch adds a check for
multiple-match rules in igc_ethtool_is_nfc_rule_valid() so they are
rejected.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
Hi folks,

This patch was originally included in the series "igc: Fixes to NFC support
code", but since it changes the way the driver interacts with user space, I
decided to sent it separately as RFC to collect your opinions.

The patch description gives a detailed explanation about the issue. The bottom
line is: Current code silently accepts a configuration that is not supported.
This patch changes the driver so EOPNOTSUPP is returned instead of success.

What I'd like to get your feedback on is:

Is this considered an user-kernel break? If so, what would be the best way to
move forward. Keep accepting the configuration but warn user via log message
about not supporting it?

Thank you,

Andre
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index db42dc046403..8fd027d970ca 100644
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
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
