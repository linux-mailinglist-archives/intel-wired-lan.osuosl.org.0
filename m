Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMHkNG3T4WnQyQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 08:30:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C2B4176AD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 08:30:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 188FB60651;
	Fri, 17 Apr 2026 06:30:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id orkbtjUFSHWI; Fri, 17 Apr 2026 06:30:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F0AE60BDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776407402;
	bh=t5nGa4RIb/4T3Kha6mskKhZqMMTdqNUDUWtdHUuDgWM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5OeqjPmmeR2/ZhSlsYnlI8xi9asTesLRIIkacQI2+VjTJO9MTnGBdNupRA5daxbuN
	 y91qsAQ+WuSb0+ARL1mxe3VX0swbHvYpxaRBvYphjIN1H34uEzR6w70NOMftiyY9qS
	 qJuqMLJ3RizUdp7C/OcMkIsqP6lTcx7h37404oP/wDy/+tJZzm2vthQCx/3bkv5F2c
	 T++jwCUNHJ+XJOJvT8MbAPzaY2V6IllrfB3U4tHaQiNtlz5Uy9QFrODQ0smyx39iOk
	 Ma2RXocs2tseylw0Q0jn5FmlJDd7KnwJ9qwqOY19oXzV8QsZOdags3QYkavlgkZMBq
	 Wfj9gCDMj//xA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F0AE60BDE;
	Fri, 17 Apr 2026 06:30:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BC352259
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 06:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B63E740544
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 06:29:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9F8gkiZMV48r for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 06:29:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D5A7840549
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5A7840549
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5A7840549
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 06:29:58 +0000 (UTC)
X-CSE-ConnectionGUID: X/KlItGgRdWbHx7EMSRibg==
X-CSE-MsgGUID: yppb9PzrQtiITdBFhcpRLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="94987401"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="94987401"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 23:29:58 -0700
X-CSE-ConnectionGUID: hjiE5TySS0mSobvm8mwu2w==
X-CSE-MsgGUID: nSUJVnO1Qt2511GUbNuZcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="235329565"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa004.jf.intel.com with ESMTP; 16 Apr 2026 23:29:57 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Tomasz Lichwala <tomasz.lichwala@intel.com>
Date: Fri, 17 Apr 2026 08:29:51 +0200
Message-ID: <20260417062954.1241900-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260417062954.1241900-1-aleksandr.loktionov@intel.com>
References: <20260417062954.1241900-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776407398; x=1807943398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ft/kcfML2Lvq20vgPFkL9YTpdxCIU+mdWRUQIMyuaGs=;
 b=NCalqbGTYeXbAWgNn3tPrubRb+6NwPF0xWbj4Wi04YLzqkauFlbh9m8C
 Y5aojDTikNtT4Ydl9J5VQtdCAJoKSJgAyMnQlurnALEw9AooV68fulIrT
 iV0c9mfNkxeoXgcaBgyataljgNjnM8N9aSppdbRRifTiG/chgyXG6+gdz
 up7HJnrE+6S1BFZTadDniHf7QxeJNQGeX0XzMY9KVrmmr4oNyxPGEZBzJ
 gT4/nB/pHA8ZmpWrO6Ajca3e1jrpIUQQGd/IQBEwabDuNHFMKo+LwF8KR
 yNVuGeU1R6Q3aJrohc+eFDKlYdemn0itGAvxjvGeM/bn5r9sQf0vQK3f6
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NCalqbGT
Subject: [Intel-wired-lan] [PATCH iwl-net 1/4] ice: fix asymmetric pause
 negotiation reporting in ethtool
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 84C2B4176AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Tomasz Lichwala <tomasz.lichwala@intel.com>

Add Asym_Pause to the supported link modes so that asymmetric pause
negotiation is properly reported via ethtool. Without Asym_Pause in
the supported modes, 'ethtool -a' incorrectly shows 'RX/TX negotiated: off'
for asymmetric pause configurations, even when pause is properly
negotiated and functional at the hardware level.

Fixes: 5a056cd7ead2 ("ice: add lp_advertising flow control support")
Signed-off-by: Tomasz Lichwala <tomasz.lichwala@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index e6a20af..30d2550 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2373,8 +2373,9 @@ ice_get_link_ksettings(struct net_device *netdev,
 		break;
 	}

-	/* flow control is symmetric and always supported */
+	/* flow control is symmetric or asymmetric and always supported */
 	ethtool_link_ksettings_add_link_mode(ks, supported, Pause);
+	ethtool_link_ksettings_add_link_mode(ks, supported, Asym_Pause);

 	caps = kzalloc_obj(*caps);
 	if (!caps)
--
2.52.0

