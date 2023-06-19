Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2D1734D2E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 10:09:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 435F281AC1;
	Mon, 19 Jun 2023 08:09:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 435F281AC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687162161;
	bh=wq+4/BoUi8WIuoI0cSziFkRz6QpNx845l711WBr5oo8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=07iwe6bEMf+FlyQ6/ErNXqlG87elN/5Y/fHqQV+7nY2VL/SLSLPaH+/f8A9mmle1L
	 ntzugikKTk6ySSMnsYI1Gyiru5v46hB/TvH6PS1ves2Wc5EJf+sF9ZFriUps6aXPHs
	 6gOJzQnU205DAQnU4WLTe1Yb/4pbE310nvpqSxebLY31gHpmdgqe+Aisv9R1UHAjMX
	 0zkyjxCISnw90kKHIkJZRt05shLDSE/jCGMTwOnfiA6cfjn2GYFntnvh/Js9FgCZfY
	 dhHJsDp0X/YJc+48V5YNMjRSFY+myIqrXCb/Aoc7x81Mx7mN8T2DM8VGxNDjF+MV51
	 2H7TgEaBR03kA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7jOvXpQcIRli; Mon, 19 Jun 2023 08:09:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21B2381A39;
	Mon, 19 Jun 2023 08:09:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21B2381A39
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 94B8D1BF591
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 08:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C9454091C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 08:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C9454091C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rUuS4DwIM9k5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 08:09:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91E27408C9
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91E27408C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 08:09:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="388586651"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="388586651"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 01:09:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="743354362"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="743354362"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga008.jf.intel.com with ESMTP; 19 Jun 2023 01:09:11 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 251E934938;
 Mon, 19 Jun 2023 09:09:10 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Jun 2023 04:06:35 -0400
Message-Id: <20230619080635.49412-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687162154; x=1718698154;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yrhsCL2Psn2KRhnUKTJOC4dVgxcppWvghrzBZeDv5QA=;
 b=HwfPyBZaDx7ug5yWfeYANIhAzx4Bj6gfoM9AHX2urzq0XfXPF8zS1a6z
 on66hzEBQahg/9MMaYL+C8/5uxslJaRyzM8qw70mInkeDtZ0bh2pTPEuT
 /e1ulNTW25BsCg9Np1yVzBBU1bjsTldzKVYjo0zcI7h7repkCNsNBFzKB
 tbQO8wWpCLB5Q9vwbmW0S/SCpp+uzRvRXb48JN8QvDdFQ0gAYNjTuf46e
 wiD6T8GEbtedjGAVFKQGuKwi92PIo5fpg3JI2XoUqV4rskPqGeWYlhbB4
 bC6n9LE/KZxse/VJALt2SuXY5fii/Ucw8eTJsMV1fCAGmoW7PzoknwqkN
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HwfPyBZa
Subject: [Intel-wired-lan] [PATCH iwl-next v5] iavf: fix err handling for
 MAC replace
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Defer removal of current primary MAC until a replacement is successfully
added. Previous implementation would left filter list with no primary MAC.
This was found while reading the code.

The patch takes advantage of the fact that there can only be a single primary
MAC filter at any time ([1] by Piotr)

Piotr has also applied some review suggestions during our internal patch
submittal process.

[1] https://lore.kernel.org/netdev/20230614145302.902301-2-piotrx.gardocki@intel.com/

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v5: v4 re-sent after dependencies ([1] above) has been applied to net-next
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 42 ++++++++++-----------
 1 file changed, 19 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f262487109f6..44304f16cdfa 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1040,40 +1040,36 @@ static int iavf_replace_primary_mac(struct iavf_adapter *adapter,
 				    const u8 *new_mac)
 {
 	struct iavf_hw *hw = &adapter->hw;
-	struct iavf_mac_filter *f;
+	struct iavf_mac_filter *new_f;
+	struct iavf_mac_filter *old_f;
 
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 
-	list_for_each_entry(f, &adapter->mac_filter_list, list) {
-		f->is_primary = false;
+	new_f = iavf_add_filter(adapter, new_mac);
+	if (!new_f) {
+		spin_unlock_bh(&adapter->mac_vlan_list_lock);
+		return -ENOMEM;
 	}
 
-	f = iavf_find_filter(adapter, hw->mac.addr);
-	if (f) {
-		f->remove = true;
+	old_f = iavf_find_filter(adapter, hw->mac.addr);
+	if (old_f) {
+		old_f->is_primary = false;
+		old_f->remove = true;
 		adapter->aq_required |= IAVF_FLAG_AQ_DEL_MAC_FILTER;
 	}
-
-	f = iavf_add_filter(adapter, new_mac);
-
-	if (f) {
-		/* Always send the request to add if changing primary MAC
-		 * even if filter is already present on the list
-		 */
-		f->is_primary = true;
-		f->add = true;
-		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
-		ether_addr_copy(hw->mac.addr, new_mac);
-	}
+	/* Always send the request to add if changing primary MAC,
+	 * even if filter is already present on the list
+	 */
+	new_f->is_primary = true;
+	new_f->add = true;
+	adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
+	ether_addr_copy(hw->mac.addr, new_mac);
 
 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
 
 	/* schedule the watchdog task to immediately process the request */
-	if (f) {
-		mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
-		return 0;
-	}
-	return -ENOMEM;
+	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
+	return 0;
 }
 
 /**
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
