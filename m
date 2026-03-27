Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJVhBEowxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:22:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8322B3404F2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:22:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15FC361288;
	Fri, 27 Mar 2026 07:22:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EXLXyQ2HUyzt; Fri, 27 Mar 2026 07:22:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DA8661284
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596167;
	bh=rfSMIgNzsMKkSw24gsXyKUyMXPBpqOHj7UaspXlYckk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9yDQI37il8BZETfkhZvWbHo4U8id7HG89DThBcK1fmmVPw45iwTBUUnsTj8mpN1s/
	 FG8OCvQXO0vvN89+FcldoZbW/hMNCrbEkSu1mPEp4thl1+LRfmeuDksMXKRUqvglAK
	 t4y9bUYgQgh3jJtcZEYE8NQQ/2BKQ0B0ciuOy72QUsFceAg5oyQEiSW1lPLquNyo2R
	 p3UXkyPzdypjTjFNJ/qXJKbP6Lmh+nd+H1HeZ4amcbqg9qhg88tCqFch8PY7tLUgfP
	 DQljLmyLA+rieQRAx3OPFd06Rob4tlHdxdH2+msEQm5NY5+DwNTJE/4nJc0XjXBBb2
	 gttMs3I3RDI8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8DA8661284;
	Fri, 27 Mar 2026 07:22:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 698A72D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:22:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57B056127C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:22:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3z047a1H2sRk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:22:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 48AAE61282
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48AAE61282
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 48AAE61282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:22:44 +0000 (UTC)
X-CSE-ConnectionGUID: Kk2cXHLVQVqK11Tcno2qKQ==
X-CSE-MsgGUID: yrLEmP3AQGa8y9bl25y4rA==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="74848623"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="74848623"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:22:44 -0700
X-CSE-ConnectionGUID: fRdz4TeRRHCLC1x9Iuc8AQ==
X-CSE-MsgGUID: +3mJ6Il0QLyrFUxb1tDM7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="222359644"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa008.fm.intel.com with ESMTP; 27 Mar 2026 00:22:43 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Marcin Szycik <marcin.szycik@intel.com>
Date: Fri, 27 Mar 2026 08:22:36 +0100
Message-ID: <20260327072236.129802-5-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
References: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596164; x=1806132164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w2upXb+/H60kPmK6DnYQqP0hkeIBg/73pYuChVl8Uno=;
 b=lWbu+1LzBgT4jBaT6CU9ldKKjIz/OeWaOYnFoSuwdnJJYwUW3grJJk8/
 iqOtFkLXukyyPmjLjlnWd6ixE9qNGAjyWgH1A3w1yVId2+1Pn4e3gA3KD
 qrOY6OcRVsMkj6ax22GDEhhUBLgXQTlonGG012In06CZGoH3ijxPk1cxb
 ZseL/KMT9ohv1ahFuDKFFtds4e4ToZjFNs8nMS0IehMO1kTDoqU1eAihn
 d2v6Bsbdv+rWPq2Gz+1aA+8YobUaPD9FbtXZXnr9EIYEKOwxT9UE45zdT
 waj4Nt7kMQ4xX2h+n6uVd4VfISWuoaEYRsmPuL25b6LE+M1t05YetOpt1
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lWbu+1Lz
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: call netif_keep_dst() once
 when entering switchdev mode
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8322B3404F2
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

