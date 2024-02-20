Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C86585B9AC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 11:55:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C321F41493;
	Tue, 20 Feb 2024 10:55:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NR4NJY8Fi6ND; Tue, 20 Feb 2024 10:55:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEAF640A46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708426546;
	bh=RNqkBr5EXhbmCwdWwaeHlc038ZzRJWj4C9AjW6/MlPQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IabecB8rv53A+dNrOhzv6JpdUfagWpr0QUfdwnauxHzdLltmzjMhBlDV2AVsoyrzY
	 oOfMol9a9/LTF3/4wx0QigpZnOGtcp/zL6YXincTJ+bMru2ykOeUf00BiM9aXUElP5
	 Ni5xYqlNj7zJHFvb+x7i4FWIYdoLrnQQ86RyFhvlOSvWHZLlShFTbZrVGn1jBOztrZ
	 8iDe5E6XUJbPk43gnC9yhyKdNz8C8ADJv8p459xZ2ovC3XYVRJ9iTn62xdOwyXw/Zt
	 y1+PYD5JO0n42ac0c4SxSs2ZnrMNkFLj3nrz09J1bIrFBY7PJdT7+Hh2merP5hW7eF
	 UpRtvQ7zgXDDg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEAF640A46;
	Tue, 20 Feb 2024 10:55:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E61D1BF279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 10:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 27D904155D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 10:55:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LbSN0OBfpK3t for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 10:55:42 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5E0444157C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E0444157C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E0444157C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 10:55:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="13934162"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="13934162"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 02:55:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="4734489"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa010.fm.intel.com with ESMTP; 20 Feb 2024 02:55:40 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 11:59:49 +0100
Message-ID: <20240220105950.6814-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240220105950.6814-1-michal.swiatkowski@linux.intel.com>
References: <20240220105950.6814-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708426542; x=1739962542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iXy9l0bdbeQqEXnZFJi+2J80dy5971br0gFmslEOHsE=;
 b=PyosXVBvcBG/52v/Uejj8JMEEJw/suVBJ2B1sAwDciYKMKzmzIz+Eqka
 037mg+lz12A9Ummig986oqGWe/QIH6iWUnNbfnJKsNF+Tfx4xihiF8wff
 nBNQcI2NF8YfHN2zdAyArQhuPbq6qoSvtDFdy5t+Ty/8SS3aBl9DHviqF
 3br8j2AQ3tJ8oAshvulv8NapMc9uCLRqfrbYQDXF9+FppSSibSG0JMKZm
 b92TNH1xwLmIh9OULMjh4Yv398IwQYhMZCHuduf4J18qluWZ5dSjLA/Rb
 Q5ozW624KIYt3VldiWLP9vzaltocmnImoSg8OWIueVZuC4feq+ZMq6KI+
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PyosXVBv
Subject: [Intel-wired-lan] [iwl-next v1 1/2] ice: tc: check src_vsi in case
 of traffic from VF
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>, sridhar.samudrala@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In case of traffic going from the VF (so ingress for port representor)
there should be a check for source VSI. It is needed for hardware to not
match packets from different port with filters added on other port.

It is only for "from VF" traffic, because other traffic direction
doesn't have source VSI.

Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index b890410a2bc0..49ed5fd7db10 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -28,6 +28,8 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
 	 * - ICE_TC_FLWR_FIELD_VLAN_TPID (present if specified)
 	 * - Tunnel flag (present if tunnel)
 	 */
+	if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS)
+		lkups_cnt++;
 
 	if (flags & ICE_TC_FLWR_FIELD_TENANT_ID)
 		lkups_cnt++;
@@ -363,6 +365,11 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
 	/* Always add direction metadata */
 	ice_rule_add_direction_metadata(&list[ICE_TC_METADATA_LKUP_IDX]);
 
+	if (tc_fltr->direction == ICE_ESWITCH_FLTR_EGRESS) {
+		ice_rule_add_src_vsi_metadata(&list[i]);
+		i++;
+	}
+
 	rule_info->tun_type = ice_sw_type_from_tunnel(tc_fltr->tunnel_type);
 	if (tc_fltr->tunnel_type != TNL_LAST) {
 		i = ice_tc_fill_tunnel_outer(flags, tc_fltr, list, i);
@@ -820,6 +827,7 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 
 	/* specify the cookie as filter_rule_id */
 	rule_info.fltr_rule_id = fltr->cookie;
+	rule_info.src_vsi = vsi->idx;
 
 	ret = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, &rule_added);
 	if (ret == -EEXIST) {
-- 
2.42.0

