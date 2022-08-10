Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E047F58EE26
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 16:22:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 842934148B;
	Wed, 10 Aug 2022 14:22:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 842934148B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660141335;
	bh=WIvKydkZRkixMeEnRcGZIASLKVvklK2UNeBfmgrTT60=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s55u3fX/fWXDVRFHiVmwBeAeMcfb+uxO4caENRBnpUJROKgnU/4tPD5Lt7DIM/2nw
	 tbl+hDpexQbzD+NebJrlf/lHMqpsL030G0keO9ewqUx7ywoai03UMHEnnR28v24LHO
	 lz8hKKF1+Q7W3KcxN96E/PYJUfD3eGgYA85a8FblNp+10XehG39vJPFLpcZXqixu0M
	 NGXxPNi9+Kiumv5eK9b232OagfMiA6YQBwiT5dwf/PZ8XFmBScquRrgS0NF1ZMQFqO
	 mXL/fsy2T5lPXodl4DP0hrOQdRFs/FrnaNa3g3iQ+ijOB1vm9IJYwJ2s3+GzT7+wrH
	 iOSB0df6zafrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OntPpesJ6i7x; Wed, 10 Aug 2022 14:22:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EEF9404F0;
	Wed, 10 Aug 2022 14:22:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EEF9404F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88CF01BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 14:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6418740C13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 14:22:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6418740C13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mOhO24ebtQDm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 14:22:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91B6F40C0D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91B6F40C0D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 14:22:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="291882959"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="291882959"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 07:22:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="638121309"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga001.jf.intel.com with ESMTP; 10 Aug 2022 07:22:03 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Aug 2022 16:21:52 +0200
Message-Id: <1660141315-216111-2-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1660141315-216111-1-git-send-email-grzegorz.siwik@intel.com>
References: <1660141315-216111-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660141324; x=1691677324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=M1hiGQnnNcMWVtdGQJXyDu5WROqrzySjL6LMV9/AcYw=;
 b=E7fUyQKGa5VC9Y6hk+mB2XSP3hQwbEYlGPS2WotkbMUKASr1SZGf5ivr
 aLnWOywvcuxzeiLM4SnjJ45LuRl0QE2ZGwwK/7w63r2bBkdJD6Edh0a+m
 kExcoE0xE6MrEfOi3f/QB7nleYPq/n3vCMXduJOG9TAGMCHwiAs44BS8Y
 Y2gFsSsWbylQ8sB4511SDfJ+KyqUtStdKczNB1gfBFJUf/wyaVnv9oO2Y
 vb/tv01D2/UXwIt1vU2ETEMjOFS0GmQPYhz8i7YkhDtS1dt788O3NnbZA
 OsBH3ijQIbSg2q2Vh2VLKf2G1zWSBB2hIUhkTcPEVm9HXkOJfOwrL1zKO
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E7fUyQKG
Subject: [Intel-wired-lan] [PATCH net v3 1/4] ice: Fix double VLAN error
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
