Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B8F752717
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 17:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF2A283D40;
	Thu, 13 Jul 2023 15:31:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF2A283D40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689262276;
	bh=myuqOidhID8FxiMkmU+I44nHyFNUBaySPWGLrMtbgn4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ad9/NaI4ofxMEHDGBbu92B9L3CNhBaq0+WW+Dv79oniuHKbTxA2+TsD1TM+atnxYc
	 uOEYxC6Zwv+kwhYhj9IsrDmBPe+ZnkYvip03RIumiFXSUbZrhQjYibLPWoGls8cfUc
	 us7WARsOTrye8dJw+Y/TbRXvCkt9GKHxSeJBD1qYmlFCtYXoVhluibjmDxclxC3u//
	 MSyF1S7ozMMax7YETjcBk9UtDdbU1bZGRLQhozsJrZZIZf2bOXR+EEPsWlIFbIpEYU
	 +kdUKES5yI2B7wwerZUj8A9pLd6wKz7b+uBqc0v/jV3cOB+dT8/QUCU2DQ5SbrTqtB
	 xL32qSpDxg5uw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p3lyjpkD7duo; Thu, 13 Jul 2023 15:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B089B83D16;
	Thu, 13 Jul 2023 15:31:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B089B83D16
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D998F1BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 15:31:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B16D460BDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 15:31:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B16D460BDE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GN3AjNR8KOQj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 15:31:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D25860B4E
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D25860B4E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 15:31:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="365260594"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="365260594"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 08:31:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="715979547"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="715979547"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga007.jf.intel.com with ESMTP; 13 Jul 2023 08:31:05 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C58543580B;
 Thu, 13 Jul 2023 16:31:04 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Jul 2023 17:29:48 +0200
Message-Id: <20230713152948.31289-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689262268; x=1720798268;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/Fv4rK9G7IiR3Z1tzAG0nP1ZM0M+bsTL1qQMTfSfZN4=;
 b=juAxh/vBPWJDY8Cusiui98f6/tCicH9TXRU+rrBzUt8FohPZ+ZNNDaVZ
 ePd9EMDM81ien+O3+LthFGyZnfN404Ask8s6RzqR1J2jJNANQvRmtbX+r
 IeFxeKz/wwnQpxjdJt5fH8iYuk2zkCUG/xeNOyZ+SG8rd2PtK7Zf5x/cc
 YJLCLwHxXzLVWGOlBAv+F5sUIftrJtg6fpCBKNCXLXuhYOicdmEELObnP
 RuA5XI0iosgVkTfUdf+Ft0Kb3GqYm0YgIP36vn4piWP2gBSO+PtYbelXz
 A81S0sgO7IN+6SOXEYs6XsF7SU5WBKLsBavCdVhQ/Uy4ujfj2vL7eaTnO
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=juAxh/vB
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Fix bridge port vlan setup
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
Cc: anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

vlan_ops->del_vlan call in ice_eswitch_br_clear_pvid needs a
pointer to the ice_vlan struct but right now we are calling it with
u16 vlan id as the second arg.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
Note for Tony: Please, squash it with the
"[PATCH iwl-next v6 10/12] ice: implement bridge port vlan"[1].

[1]https://lore.kernel.org/netdev/20230712110337.8030-11-wojciech.drewek@intel.com/
---
 drivers/net/ethernet/intel/ice/ice_eswitch_br.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 673ba3125166..cc7357ed6e5f 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -580,11 +580,12 @@ ice_eswitch_br_vlan_filtering_set(struct ice_esw_br *bridge, bool enable)
 static void
 ice_eswitch_br_clear_pvid(struct ice_esw_br_port *port)
 {
+	struct ice_vlan port_vlan = ICE_VLAN(ETH_P_8021Q, port->pvid, 0);
 	struct ice_vsi_vlan_ops *vlan_ops;
 
 	vlan_ops = ice_get_compat_vsi_vlan_ops(port->vsi);
 
-	vlan_ops->del_vlan(port->vsi, port->pvid);
+	vlan_ops->del_vlan(port->vsi, &port_vlan);
 	vlan_ops->clear_port_vlan(port->vsi);
 
 	ice_vf_vsi_disable_port_vlan(port->vsi);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
