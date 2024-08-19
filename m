Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FB39567EC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 12:14:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AD14404E1;
	Mon, 19 Aug 2024 10:14:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MQF7A3uUd8CC; Mon, 19 Aug 2024 10:14:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C51A2404F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724062449;
	bh=6Wiq6/i5O96/kKbRN+H0lZGyU0CjIMjzWgWKnXCkHRo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AfNbRcAEPzztaJRjuT5l38016URqBviYgpT99uGrQhbbDwlXv6SHg1cR2Ksrw+B8k
	 i5Xesp8JUmKAxqZcOH19TilRqAbUNj/9k1Thfdt7rtHpdkcVH68JUyZfZEdXSIo0wH
	 3pHpcX/tczIIG3myNRZJ9i2y7yIR426JWICKW6bLIXAC00A7+JAqG5gMUyfccdk1jD
	 S5zipmOtgcgfVU7HdAtr211Oy7aC7NefjUtAfAYUr5CIyh+TSPo/jxlb+z/+eoJKqC
	 5RlYFYSxCeZXGecXmizKtCTzLzleciFrteiAdIrJ79iDo9JpDL32gFdQ57DwWikAHX
	 qMXUTmtPoHNGQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C51A2404F8;
	Mon, 19 Aug 2024 10:14:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C0DCF1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF50D60763
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a5aT7F-yN59W for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 10:14:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B0FC66072A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0FC66072A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0FC66072A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:05 +0000 (UTC)
X-CSE-ConnectionGUID: 9ABfhNpsRoSdiU6goxEipw==
X-CSE-MsgGUID: VUspdMLxSOmbHhJqHLn53Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="13090089"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="13090089"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 03:14:03 -0700
X-CSE-ConnectionGUID: XDeJ29GoTMe+FR6D17qeLA==
X-CSE-MsgGUID: +90gsaXuSDO8fi4+jvastw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="91097032"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 19 Aug 2024 03:14:02 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Aug 2024 12:14:01 +0200
Message-ID: <20240819101401.67924-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724062445; x=1755598445;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OdCIEHfgvFJ64xVjrEiuwnfedCAXa+QyPQoNYh8AiRI=;
 b=T7vC5d44hhl9323a/+FFmj8Pvcbjwk5rkfUiHyaigoiO/vS946xmUrhv
 g4ak4aJVds9v/4lmQaIzz4QzEFCA34KFxfuWZCg6ao7TRsVul2U8Gkss9
 RscadtQyhBSBaYXP4Y5iH+k3h06HSxrg9JICBFE0gBkV6qfoCCS7+IPW5
 b0mMnJJnW5jPOuDcKNB7PwUaeseMVVhIyZIYLrg6ZmuN/6SfgPGUMRNk5
 ycKi64rg3mNn5hhneuGbA/V1s750UUc84Aq1Ku6jrQuol8InblHZfgiCn
 RWQgIRuiMN5CnBsw2htlYyM/SVo9xojNtvb8+1Raw79YFQjnipXhE5ZN3
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T7vC5d44
Subject: [Intel-wired-lan] [iwl-next v1] ice: set correct dst VSI in only
 LAN filters
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
Cc: netdev@vger.kernel.org, wojciech.drewek@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The filters set that will reproduce the problem:
$ tc filter add dev $VF0_PR ingress protocol arp prio 0 flower \
	skip_sw dst_mac ff:ff:ff:ff:ff:ff action mirred egress \
	redirect dev $PF0
$ tc filter add dev $VF0_PR ingress protocol arp prio 0 flower \
	skip_sw dst_mac ff:ff:ff:ff:ff:ff src_mac 52:54:00:00:00:10 \
	action mirred egress mirror dev $VF1_PR

Expected behaviour is to set all broadcast from VF0 to the LAN. If the
src_mac match the value from filters, send packet to LAN and to VF1.

In this case both LAN_EN and LB_EN flags in switch is set in case of
packet matching both filters. As dst VSI for the only LAN enable bit is
PF VSI, the packet is being seen on PF. To fix this change dst VSI to
the source VSI. It will block receiving any packet even when LB_EN is
set by switch, because local loopback is clear on VF VSI during normal
operation.

Side note: if the second filters action is redirect instead of mirror
LAN_EN is clear, because switch is AND-ing LAN_EN from each matched
filters and OR-ing LB_EN.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Fixes: 73b483b79029 ("ice: Manage act flags for switchdev offloads")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index e6923f8121a9..ea39b999a0d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -819,6 +819,17 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 		rule_info.sw_act.flag |= ICE_FLTR_TX;
 		rule_info.sw_act.src = vsi->idx;
 		rule_info.flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
+		/* This is a specific case. The destination VSI index is
+		 * overwritten by the source VSI index. This type of filter
+		 * should allow the packet to go to the LAN, not to the
+		 * VSI passed here. It should set LAN_EN bit only. However,
+		 * the VSI must be a valid one. Setting source VSI index
+		 * here is safe. Even if the result from switch is set LAN_EN
+		 * and LB_EN (which normally will pass the packet to this VSI)
+		 * packet won't be seen on the VSI, because local loopback is
+		 * turned off.
+		 */
+		rule_info.sw_act.vsi_handle = vsi->idx;
 	} else {
 		/* VF to VF */
 		rule_info.sw_act.flag |= ICE_FLTR_TX;
-- 
2.42.0

