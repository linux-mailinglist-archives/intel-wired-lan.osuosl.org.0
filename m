Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A1C58FD35
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 15:16:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3C3E610F3;
	Thu, 11 Aug 2022 13:16:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3C3E610F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660223815;
	bh=AFoMxFqZK7NqeMwdZdeQJ4b8PQPA1p+MllfuAS55AG4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LKbEb0dG6Tc8vckpjBeCzqor4AdyB2ZECL1O2sg7+XialDhpWY0EGVk54cSaJFx2P
	 tMQGkafFOCBhFxP2MeLpQeOsAWsOyyf0H47L0UBIjS2KmhtS/EA0o49uETMjo1gQIb
	 y5MWYP6unXpoDafWU9LWHJWdmh2HnfmeiOg2TRXD8eJoLkIqh6lH+aOuvGRlwSUNXA
	 kqdiSUUdwj/Zxu+kJEO3iPWJQ5j0pygLOzIP9lsvmC5w05W63Q8E2H2gwFS1jXZL+O
	 0ke/OpOrKmbrYUXCM/Y+hM1UDRR1dmWvdLyB7W1trScslUtFc9CdhVSEla3L7ijRry
	 xDf2CGn83zX8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j6X1HNc-ZMjt; Thu, 11 Aug 2022 13:16:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE1B8610EC;
	Thu, 11 Aug 2022 13:16:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE1B8610EC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D9B51BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E978A402AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:16:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E978A402AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DhZ19w-MK-G3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 13:16:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14FFF41591
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14FFF41591
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:16:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="274397606"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="274397606"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 06:16:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="634219886"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga008.jf.intel.com with ESMTP; 11 Aug 2022 06:16:45 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Aug 2022 15:16:38 +0200
Message-Id: <1660223801-254272-2-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1660223801-254272-1-git-send-email-grzegorz.siwik@intel.com>
References: <1660223801-254272-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660223806; x=1691759806;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=Z0t+bkbDaow2CYB+Y4o5/j3czM3OsmfMZu8QMhjA9bk=;
 b=GuOCO93vYjhEgqJD4ifOttJu8m6o1VagGDAYFo06jkIfAHLo6+0yGLpq
 oVZ6aA5vqRqH3uan4+vGEeh51tNh5cRPA/jZqIvlT0TmGMyYH4j8pCAgq
 0rpJWxjMzXQQvcl/n/muWlp/Oh6wquEuFFX84VyXh/bP7aibi9RY3n4Xr
 77ngBcWdZWpeI9tMQVcN44oPNx/tr2cIbfWA+TGBnkMsHby5YXfHxYVQm
 GLtp+xGGgzr1W1rrAzeyjMZ28TY1nMlfY8QdRCxYfCjGNG3uqrW11G52e
 p+qJf87KsDvEbLAKMxd5oLUgwxPSG0kU/xvIaWzImAgWqKHBdzzxRyCt8
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GuOCO93v
Subject: [Intel-wired-lan] [PATCH net v4 1/4] ice: Fix double VLAN error
 when entering promisc mode
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
Cc: Grzegorz Siwik <grzegorz.siwik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Avoid enabling or disabling vlan 0 when trying to set promiscuous
vlan mode if double vlan mode is enabled. This fix is needed
because the driver tries to add the vlan 0 filter twice (once for
inner and once for outer) when double VLAN mode is enabled. The
filter program is rejected by the firmware when double vlan is
enabled, because the promiscuous filter only needs to be set once.

This issue was missed in the initial implementation of double vlan
mode.

Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
Link: https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
---
 v2: Fixed error message when setting same promiscuous mode
---
 v3: Fixed style issues, changed to return directly.
---
 v4: Fixed problem with patch applying
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 8d8f3ee..8a60052 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4414,6 +4414,13 @@ static u8 ice_determine_promisc_mask(struct ice_fltr_info *fi)
 		goto free_fltr_list;
 
 	list_for_each_entry(list_itr, &vsi_list_head, list_entry) {
+		/* Avoid enabling or disabling vlan zero twice when in double
+		 * vlan mode
+		 */
+		if (ice_is_dvm_ena(hw) &&
+		    list_itr->fltr_info.l_data.vlan.tpid == 0)
+			continue;
+
 		vlan_id = list_itr->fltr_info.l_data.vlan.vlan_id;
 		if (rm_vlan_promisc)
 			status = ice_clear_vsi_promisc(hw, vsi_handle,
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
