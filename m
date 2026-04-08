Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PQRAc9i1mnIEwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 16:14:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B43F3BD7CE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 16:14:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 906F940ECD;
	Wed,  8 Apr 2026 14:14:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pPOEwJj1q1er; Wed,  8 Apr 2026 14:14:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 241C040EE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775657675;
	bh=59JzdarhuqKN+Ltdli4ZQCYPcZP8imhj4kqdn/TLBmo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lnjWIRNK5dJQLS38LSpeghX4Dj5Jt91rYQKQ3fNyM0WhR/qRyyE7rBXWwpMNZsLnt
	 vkLbHPy19f/0MroEnUNzD92/Jwq0g0Ru/ho/CkkCCBdMyH5fDF2cyEh14KxmV+gUg3
	 nWeU2KVL3utyN+a6x5U2i8FSKZeN6zS9DHZREgx628LN43uZhCOiUh/mqTcT/O4Mq6
	 ywN5vfwz/i+Jz2PXEiLRlyL/cMl2oKP7vf0wwDsLnFOsi+tS2YkG+xA6u127872JeD
	 OkpRlvOjZJ7D6P43+kHBnvuNfgrjhUmVuX2IwQrAgURRzpI+tmNrlhZJmUybBMqNan
	 ir/m+rdyMNGNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 241C040EE2;
	Wed,  8 Apr 2026 14:14:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DD2E8237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 14:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF1CC823AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 14:14:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mi77yVDotPld for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 14:14:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 343A28235C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 343A28235C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 343A28235C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 14:14:31 +0000 (UTC)
X-CSE-ConnectionGUID: mZG6noXYQmGInsCLPjNs6A==
X-CSE-MsgGUID: Z51zAp2FTr2cGMxf2DbRPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="64187417"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="64187417"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 07:14:31 -0700
X-CSE-ConnectionGUID: nQZXeFGxTmqJm5Ko0JrjIA==
X-CSE-MsgGUID: hil73vjbRmufhZPqKUfXRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="225721117"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa008.fm.intel.com with ESMTP; 08 Apr 2026 07:14:30 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Marcin Szycik <marcin.szycik@intel.com>
Date: Wed,  8 Apr 2026 16:14:29 +0200
Message-ID: <20260408141429.2798589-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775657672; x=1807193672;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sw3WqSkSk8vlNUrCc326Em40Cu7by960cERr0qqQGu4=;
 b=cqfCl5B7ggGwRrIGGHgd7sGW55IIIN5/PT4pmJYdM60XCq5RhfmcnuKl
 O9hXfKvZiInL1s5ArfyQh5GxBIy7L1yIbfHr8GHQY//eBv2xCeM3Bi2yx
 Zx0EWjs04iUkSnLTSGcgwI107vu0Z3Senh6cZlKUiAIv2uw3TOiQGqOLS
 ZyOojWmkI4w8vkmpDEFq/gSTJARHAoqd9KS5cl91hpXZMvXpjjpfjwRwA
 E0zTzon8uJvd4IlHKKwgv/8mmUxTIebZvbhna3PLVUYrGNtR2XhGgJd++
 c3x32u1t56ySkP8xe4JMCInpm/e2GahPoL4wahzDjwyVs8lakpUp+WmvI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cqfCl5B7
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: call netif_keep_dst()
 once when entering switchdev mode
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2605:bc80:3010::138:received,192.198.163.16:received,140.211.166.142:received];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2B43F3BD7CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Marcin Szycik <marcin.szycik@intel.com>

netif_keep_dst() only needs to be called once for the uplink VSI, not
once for each port representor.  Move it from ice_eswitch_setup_repr()
to ice_eswitch_enable_switchdev().

Fixes: defd52455aee ("ice: do Tx through PF netdev in slow-path")
Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2:
 - Verified Fixes: tag via bisect - defd52455aee introduced the redundant
   per-repr call to netif_keep_dst(uplink_vsi->netdev) by changing the
   target netdev to the uplink VSI inside the per-representor setup
   function. Before that commit, each call was on a distinct repr->netdev
   so no Fixes: predating it applies.

 drivers/net/ethernet/intel/ice/ice_eswitch.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 2e4f096..c30e27b 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -117,8 +117,6 @@ static int ice_eswitch_setup_repr(struct ice_pf *pf, struct ice_repr *repr)
 	if (!repr->dst)
 		return -ENOMEM;
 
-	netif_keep_dst(uplink_vsi->netdev);
-
 	dst = repr->dst;
 	dst->u.port_info.port_id = vsi->vsi_num;
 	dst->u.port_info.lower_dev = uplink_vsi->netdev;
@@ -312,6 +310,8 @@ static int ice_eswitch_enable_switchdev(struct ice_pf *pf)
 	if (ice_eswitch_br_offloads_init(pf))
 		goto err_br_offloads;
 
+	netif_keep_dst(uplink_vsi->netdev);
+
 	pf->eswitch.is_running = true;
 
 	return 0;
-- 
2.52.0

