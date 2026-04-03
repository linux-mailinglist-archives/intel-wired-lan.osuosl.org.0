Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SC/NM+9Sz2kCvQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:41:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EEB391249
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:41:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2FB440FF2;
	Fri,  3 Apr 2026 05:40:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rAKyREYI6JA6; Fri,  3 Apr 2026 05:40:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2CF640FF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775194846;
	bh=TdeNy7N9W6WBC8wkNMMCO8o38qXpLli/GBi4Mfjwm9A=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t4NFyoKShZiKkol/0uHbSoxwhP4P3e8b84hS14D9dlyZlNjHfh9cEZwY5x1itcCdU
	 sYVSGCIyWEEWjbwLj400sB0b5wwjhrohiCUZb5HhCBcr8Q4P2UwgGWPZruBIWdRA8Z
	 cnA4qDmlbhAw1BJXvcieTKfCWtK8M18t/YdzkP/74fD+VSHxGZS0Wym22yX7w8W7kA
	 SBIL/nDxdacroGnd5jd+HwSbs9SaFf5cCZE9Qi4kN67oISDLKKVuV1IYf6XwvIrbUA
	 1CFJep6i/vH7f14cQT3QXAy0NrKDyKDRmGrjV8apt94g23/0OwF0AJvF8Se/lUH2e+
	 rtWqvkXIKvIVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2CF640FF4;
	Fri,  3 Apr 2026 05:40:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 48BD22CC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F3764008E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ky0EpA3RolgA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 05:40:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 32F3B40071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32F3B40071
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32F3B40071
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:44 +0000 (UTC)
X-CSE-ConnectionGUID: oNb3kHqXQaSv0PrHzOJbYw==
X-CSE-MsgGUID: dkZ8FkSATwCIIATKeve+7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="75981756"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="75981756"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 22:40:44 -0700
X-CSE-ConnectionGUID: qzKWIIJ5RJmmQg5Xc7kKVg==
X-CSE-MsgGUID: sioIDpPGTyOwgpU8b/YsFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="223904948"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2026 22:40:42 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Michal Swiatkowski <michal.swiatkowski@intel.com>
Date: Fri,  3 Apr 2026 07:40:27 +0200
Message-ID: <20260403054029.3789616-10-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
References: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775194845; x=1806730845;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F7RgWTesnS6mroPwa/SCLsP5F6li6P4/GknCZnn6Uf4=;
 b=U/ORBjVTtOEUt5qw3K8v8KkfPkuf9wqw2F4+oAaLeKT5bB7r7p7Tdy0/
 xaICskDlCj5WEkKFiUrKWlrbpji3c49gmoQ/cAM1XUCp2ctkZxJE17P9L
 0HXUWuChIcAuWPR2XKKDmRo8ayMnO4eSX6FCCin68PTueWFPtMiuQ+x1q
 qmPCuvR7gvlaF3v7HSuhrTBpHVPHF1AoMNBTrz74Ym86o/MS220YugXxG
 uf/QgZUsMd2DzQRxZVhBD5sVBk+BovhLM4yTQI61FuHjV62aHQIUrDYeT
 L5jwFoegjOxoYhnWDl34/BQD6s+sV/xSA3SG+zQlqTNVd6Vvvm6Dl8HeV
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U/ORBjVT
Subject: [Intel-wired-lan] [PATCH iwl-net 9/10] ice: select inner TCP dummy
 packet when matching on ip_proto TCP without explicit L4 field
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
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 93EEB391249
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When building an advanced switch rule, ice_find_dummy_packet()
selects the template packet type based on the lookup element
list. It currently checks for ICE_TCP_IL to select the inner
TCP template, but ignores the case where the user matches on
ICE_IPV4_IL with protocol == IPPROTO_TCP without specifying a
TCP L4 field. In that case the default UDP template is chosen,
causing the rule to fail.

Extend the check to also match ICE_IPV4_IL with TCP protocol
field fully masked, fixing tc-flower rules such as:
  tc filter add dev vxlan100 ingress protocol ip prio 0 \\
    flower ip_proto tcp action mirred egress redirect dev eth0

Fixes: e33163a40d1a ("ice: switch: convert packet template match code to rodata")
Cc: stable@vger.kernel.org
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index bb0f990..c2ac870 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -5587,7 +5587,10 @@ ice_find_dummy_packet(struct ice_adv_lkup_elem *lkups, u16 lkups_cnt,
 	for (i = 0; i < lkups_cnt; i++) {
 		if (lkups[i].type == ICE_UDP_ILOS)
 			match |= ICE_PKT_INNER_UDP;
-		else if (lkups[i].type == ICE_TCP_IL)
+		else if (lkups[i].type == ICE_TCP_IL ||
+			 (lkups[i].type == ICE_IPV4_IL &&
+			  lkups[i].h_u.ipv4_hdr.protocol == IPPROTO_TCP &&
+			  lkups[i].m_u.ipv4_hdr.protocol == 0xFF))
 			match |= ICE_PKT_INNER_TCP;
 		else if (lkups[i].type == ICE_IPV6_OFOS)
 			match |= ICE_PKT_OUTER_IPV6;
-- 
2.52.0

