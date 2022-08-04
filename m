Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E98589D5D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 16:20:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 963C782AEF;
	Thu,  4 Aug 2022 14:20:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 963C782AEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659622849;
	bh=KBDsVcrpTfhh7iNsit8mAVpDkB2S7EAYIFtWzfiur2g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fefClb3TgE7R6lRqOymGTS+TcQCtoAHWhj4HvpLIjxISqFSye5XZWjxjfhh1Qi2Pa
	 Ritiw6tyoeVvQP6Nm4Tm+aGaEMzK9XPwb7Wpt8p71akLL+UGUOjV2yBw/lLY992GpK
	 E6jfH1kYDs0/sD80bWO7dzrlmGiqEagdzVv5pOWjl41VLU0W16VcI2o15lZhClWoC7
	 upo2J432k54oDEg6pOrK94HV+PXNDYMKaHctWJjx17Ljhdnj2U+qw5RT+E37i34McW
	 UTlEzI94zEf5DNVUzCCv6M+OAvQio3midNA0NQ4WsNFLdw9u5x8jcU94UHSiFfsR3S
	 OdG+rwyskuyuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c5BEdeDq7Bqx; Thu,  4 Aug 2022 14:20:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94AB882A95;
	Thu,  4 Aug 2022 14:20:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94AB882A95
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A2941BF32E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00019417B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00019417B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BvCf7l348M6D for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 14:20:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E47D2416E7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E47D2416E7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 14:20:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="315820529"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="315820529"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 07:20:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="579089320"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga006.jf.intel.com with ESMTP; 04 Aug 2022 07:20:41 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Aug 2022 16:20:27 +0200
Message-Id: <1659622830-13292-2-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1659622830-13292-1-git-send-email-grzegorz.siwik@intel.com>
References: <1659622830-13292-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659622842; x=1691158842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=owr+BshFzwS0oQFLRY80gsBKylpuMC67OOOTQMRfxWY=;
 b=Tm9PwJ1G8fqYUmFA7EejgZ17Ijn8X3LMUQ97t0txq9fIdXFsuI3FWOgo
 yLDLGvEwfuz6nAipcqzXgB17LsipW/GLzBpqoWwEdgK6eZZy9iU1rlPOn
 ccw2jJ6vGsQsrZh7TxziuY0D/mRfEbsHsP+JRNjLr2vWP76yaJMIz4AKb
 BrKrVj3apK7ueYyRi0UFPVpY1RFdSBuiOOAVapms44tT9N8h/Y0u6IHit
 olIopuYo7oswMYCTy5ooDQa19hPNTZXjEYPdPsg2wAhnhggnf16jkwKHM
 YH+AJUILFNMQb/30wa8qcZKISVSKw1VZJRfKMFPgJll841AHx78YceWGa
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tm9PwJ1G
Subject: [Intel-wired-lan] [PATCH net v2 1/4] ice: Fix double VLAN error
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
Link:
https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
---
 v2: Fixed error message when setting same promiscuous mode
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
