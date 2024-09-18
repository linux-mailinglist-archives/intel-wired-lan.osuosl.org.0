Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED52197BFF7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2024 20:03:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BDE8401AF;
	Wed, 18 Sep 2024 18:03:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NYy9QMfDDJSQ; Wed, 18 Sep 2024 18:03:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91DED411D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726682609;
	bh=PwHxvuX1U90d8VcedX4xPb8iOvnVP/7uhI4b3YGJan8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ijSvuxznlDQeE6YRGPP9IIQlHAmvfB5D6y9jnIHPbxwZF9tLQ5xGTwieoR07Es1tL
	 uWtz2Laj6MmyuFBhM5NzJKAppPYFhtBlGC4SF6IrLbQbhxpk/L4olqJzfQ5shCr087
	 XM509v3yEP+I7Hg0jZtqXfbROFDMEdZD9C9DgAz3Z4YAV6SEoTKote64cbf71mVVfw
	 ow9LK8RV+AWqMH3bU908q7dR1fePLVwOpAYq+utkKtrLKNTfb7GTR4S0Fs5LeHvK5u
	 YRbCY3h3cJNDRz9qX6j49W1wlO8KQXMbRFYogxbBMjhn5qElvScuO4roiaJjYtumdT
	 ysTcMQWTL8eew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91DED411D3;
	Wed, 18 Sep 2024 18:03:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD4DC1BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 18:03:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB8F3848B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 18:03:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5EdCWx2Zw1xY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Sep 2024 18:03:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E01FB848B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E01FB848B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E01FB848B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 18:03:25 +0000 (UTC)
X-CSE-ConnectionGUID: NuDRewQXSFGkPXpNr9LX+g==
X-CSE-MsgGUID: ypEcfgMhSFivGlDjNgYJEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36185771"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="36185771"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 11:03:25 -0700
X-CSE-ConnectionGUID: 88Dmh8OATVea+axgXbhF5Q==
X-CSE-MsgGUID: Ewips44WSIitHpp4H5MkhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69954257"
Received: from dmert-vmdev.jf.intel.com ([10.165.18.186])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 11:03:24 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Sep 2024 14:02:56 -0400
Message-ID: <20240918180256.419235-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726682606; x=1758218606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kNX00Lkbwh1M2MCbd5GSbWJBYMHt077VeCR6pylzuHY=;
 b=hOmzux00nbheVQ/wIB7yYLztkHsJr0wrWhaQsG/cQUJ+bPI1ZWpq/SPL
 KRCnIB1KW5dWpammB94VKcJ9Yzy3JMBWZpW8iowZyHqntMZnFN1zijKK1
 YBOekMyqSM0b7XZuxvfTyIT3/SVNS53yoj12JeTMpudS8bVe0NnwA20bu
 AfJ0rcLBh2mq710YL08Zt9fx2AiswTaAr71CMjml8croBoSbt1lSHpFnB
 2ecBy86/FCrsUOnGT3ThD8CCpm2YQXDqN2bNKNI1xEomOEqyfxR7S6qeb
 uJTwBIoq3p1MvDVrlRFmu1jt5FhJyEUZ8OKlucpqVItvnjbmBmykWYr+4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hOmzux00
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix VLAN replay after reset
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is a bug currently when there are more than one VLAN defined
and any reset that affects the PF is initiated, after the reset rebuild
no traffic will pass on any VLAN but the last one created.

This is caused by the iteration though the VLANs during replay each
clearing the vsi_map bitmap of the VSI that is being replayed.  The
problem is that during rhe replay, the pointer to the vsi_map bitmap
is used by each successive vlan to determine if it should be replayed
on this VSI.

The logic was that the replay of the VLAN would replace the bit in the map
before the next VLAN would iterate through.  But, since the replay copies
the old bitmap pointer to filt_replay_rules and creates a new one for the
recreated VLANS, it does not do this, and leaves the old bitmap broken
to be used to replay the remaining VLANs.

Since the old bitmap will be cleaned up in post replay cleanup, there is
no need to alter it and break following VLAN replay, so don't clear the
bit.

Fixes: 334cb0626de1 ("ice: Implement VSI replay framework")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 79d91e95358c..0e740342e294 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -6322,8 +6322,6 @@ ice_replay_vsi_fltr(struct ice_hw *hw, u16 vsi_handle, u8 recp_id,
 		if (!itr->vsi_list_info ||
 		    !test_bit(vsi_handle, itr->vsi_list_info->vsi_map))
 			continue;
-		/* Clearing it so that the logic can add it back */
-		clear_bit(vsi_handle, itr->vsi_list_info->vsi_map);
 		f_entry.fltr_info.vsi_handle = vsi_handle;
 		f_entry.fltr_info.fltr_act = ICE_FWD_TO_VSI;
 		/* update the src in case it is VSI num */
-- 
2.46.0

