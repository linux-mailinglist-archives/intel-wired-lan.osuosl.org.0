Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4825F56A344
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jul 2022 15:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCBFE40FC4;
	Thu,  7 Jul 2022 13:16:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCBFE40FC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657199799;
	bh=ceeMbzzo1lS8jnn7HFdp0ObYqJy7JqNy07umYXHrmMg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jVivj9U02l5IACux0LkXW4FzB5uOu4r0f39d3EAi4sE/2UN4qQI3I/Ef9lrIZEjVo
	 j2gT9xbaA2vifSzV4AuyKwOazz2E+VxGhSAoliRsfGRSNTeUh0NB9mg/+L8F3fbluE
	 tlEdA0xhZgjLZ73CNfvSeHcSSeDVbrN3XYr/TreUI68Lh8GkohuuNQO5APsjeccYi6
	 lmn0xv21Aze1iX8gcB33RZqpfzpGYqIVVqCfeE5Ve0WVLTmfkkyBB2VcIYNxTv89r/
	 pu3FYuCi2Hwy0llQAurwh4IWAipPniTwG+uSkX6mHGOukm6CT1ixDgErYk9EywwVS7
	 4heSJB7TlPUKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IbOyq22iMBB3; Thu,  7 Jul 2022 13:16:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE30440185;
	Thu,  7 Jul 2022 13:16:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE30440185
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B6981BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 13:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 645AA41A5F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 13:16:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 645AA41A5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CGcuIu5WNTkt for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jul 2022 13:16:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80FAA41A66
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 80FAA41A66
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 13:16:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="285147986"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="285147986"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 06:16:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="651131619"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by fmsmga008.fm.intel.com with ESMTP; 07 Jul 2022 06:16:06 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Jul 2022 15:15:49 +0200
Message-Id: <1657199751-256188-2-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
References: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657199767; x=1688735767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=LZbAfmvZOL9Accy3+5N+djs7nrxxVsP8oHNTG4dhcZU=;
 b=jgLAxFygTfHArA1lg6mY7a2XrW2yEWIC8CEQppKG/5yHzfUFRzCSbmLe
 w6LQYKCEU3jtQ8MlwuxwZ4FrgQ/3HcA/99b6BtmTdAVAfkLR2qjYgCqXL
 g7Hfi/fFu4jcN/D+Kd0jTu4/5Ke5N0zYujBSgdwRFTn5ARYZD3gq/DzdQ
 0zIdSQ7Te74P20uoyLyZ24qApuBE3vg2g2d+JHHhlMUyBU4DyMFaDoeZv
 YSH3sO2OdFBArn4zOFxQWmgrZECTfDScantidWcBRfGhsIlwMcnvuVDdM
 aH3d9iJTBxf2m8RpWEwyDAEn3mfHSq2Cj/PYsMUYIt1m7AMSIR6PaIear
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jgLAxFyg
Subject: [Intel-wired-lan] [PATCH net v1 1/3] ice: Fix double VLAN error
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
Tested-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Tested-by: Igor Raits <igor@gooddata.com>
Link:
https://lore.kernel.org/all/CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
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
