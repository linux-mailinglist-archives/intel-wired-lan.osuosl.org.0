Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UP3RIcDVvGkk3gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:06:08 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 551DE2D5E5B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:06:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF95C6179E;
	Fri, 20 Mar 2026 05:06:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iSDcL4GjwPOI; Fri, 20 Mar 2026 05:06:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F882617A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773983161;
	bh=mbaf63ZzqfY4I8B7uPgoLGLIHL6DFbD38yudVPaB9hA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hZgpcuWhbXDsDf8ofUnLWUUJAwVwBpXB2KQYni80ZgILemNkskEkLvhsJX12BrSQ9
	 /ZeDFcf+rMLWRC+22WS+sPHddZ6yWeaVH/v1Z7cc1iof7X490NZXKZ+xNE9j3wEIPX
	 OWN2lEiR3jwiEbcWY/PY8AdNkpowmz5gYwHJs2nT9KVFRgbK1zjsEvNaiVIF5jMSs1
	 2iJKZK88rTOqmjSAEY9+TkrF8N21Q5JtYs/vhHSPqonui5yFEupfTwoBbLvm153slO
	 DtFIxCnDetHxEdI9rebvC5tvje5iDdw64LDBHPpBfkj6WoLaX0LRt1sm6ml9Ak4Koy
	 cr7G2XkTwzVYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F882617A3;
	Fri, 20 Mar 2026 05:06:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D791625C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BDB1E41398
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1gGeHSLMZAdZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 05:05:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B6CA740176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6CA740176
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B6CA740176
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:58 +0000 (UTC)
X-CSE-ConnectionGUID: 6m9JdcdJTYGZWH7u4qe9Qw==
X-CSE-MsgGUID: h39RwX9lR9S77BUusoMa4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="75251823"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="75251823"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 22:05:59 -0700
X-CSE-ConnectionGUID: RJ3+qZZdRzeIErmzfNHdcQ==
X-CSE-MsgGUID: YbQQwoUQRu+C4tpP1NTBhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="222399193"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa010.jf.intel.com with ESMTP; 19 Mar 2026 22:05:57 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
Date: Fri, 20 Mar 2026 06:05:56 +0100
Message-ID: <20260320050556.422762-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773983159; x=1805519159;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LxEywRrRZkpe4jxH/2u4lRCW8+puW7+zbqXpiIYZ+7k=;
 b=FSpctJReDHQGlGgG/Svkm0Uq3o+GiPG7G4/Hkp0k4PlmqrDMuHn1HbT1
 eamUCwJugI19Y2h7M4c7Yr3intSzOBOCoahHUpvVmSgRfjtvIWPEOP/L2
 qkYfwqgjKB7q0gFK22oCDNJXQK+1abpyXdP2C1sMpop/r5kjnKiT12zSO
 Ge9WPHYcnttbP+IwFDNuwZLNrYL/N+E3x9WpUSnHSYoE2hu2qwm02vd3q
 YP6GrSLfuCzubGIKv50YTX90lBbTHwEwSUWdLqTPXN0ECfYMo9Q13MHnx
 BmAHppklNBzHeyhLLfT4b4CnDQQVbTMrjuRxGUdB03YqpF/fqr+MynUK8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FSpctJRe
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: use ice_fill_eth_hdr() in
 ice_fill_sw_rule()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 551DE2D5E5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Marcin Szycik <marcin.szycik@intel.com>

Use the already existing helper function to fill Ethernet header. Also
replace sizeof with a (also existing) macro to reduce the number of
variables.

Suggested-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index bb0f990..6496534 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2612,7 +2612,6 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
 	u16 vlan_id = ICE_MAX_VLAN_ID + 1;
 	u16 vlan_tpid = ETH_P_8021Q;
 	void *daddr = NULL;
-	u16 eth_hdr_sz;
 	u8 *eth_hdr;
 	u32 act = 0;
 	__be16 *off;
@@ -2625,11 +2624,10 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
 		return;
 	}
 
-	eth_hdr_sz = sizeof(dummy_eth_header);
 	eth_hdr = s_rule->hdr_data;
 
 	/* initialize the ether header with a dummy header */
-	memcpy(eth_hdr, dummy_eth_header, eth_hdr_sz);
+	ice_fill_eth_hdr(eth_hdr);
 	ice_fill_sw_info(hw, f_info);
 
 	switch (f_info->fltr_act) {
@@ -2730,7 +2728,7 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
 
 	/* Create the switch rule with the final dummy Ethernet header */
 	if (opc != ice_aqc_opc_update_sw_rules)
-		s_rule->hdr_len = cpu_to_le16(eth_hdr_sz);
+		s_rule->hdr_len = cpu_to_le16(DUMMY_ETH_HDR_LEN);
 }
 
 /**
-- 
2.52.0

