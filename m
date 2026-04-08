Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MM1uB6QT1mngAwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 10:36:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 940DB3B927F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 10:36:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D9C181BFA;
	Wed,  8 Apr 2026 08:36:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DpesVA6c6FHI; Wed,  8 Apr 2026 08:36:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B798681B17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775637409;
	bh=45zcSr1vWU/8d8wCtaRM4nzLIWzeytEgJRyRWsY688I=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Q9pbgiwFwrOH1HhOMDaxWgFladpI7kChk/eWhm3MJixpvP31YsHjTyklqJ3a7wdYl
	 5dHLP0Zd0Xai4OQNUJkcohU2ZPOmoRTv3o5WLyINL0m9kpsEV5zN2eqDr8B7qUUVDj
	 EliViAzOWrqP9VrvcCZL1BvW0rduYWuIV/L3EetBshP2mM+EkqG/hBPTx2gcUq27Zp
	 Tq5MAgkXyQ9TpEUVRNoylL1QOSKOnNy7bQPHKd1+y0II9NsfJ1uhs6sHlBqMWgKQuV
	 kGef1XN274QJFzTxMsoepYyN5htDXkZBMXyZUw0+N1QcjNOFNN0Kk76wpNNUdpvH7A
	 U0TYUAAkXQLjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B798681B17;
	Wed,  8 Apr 2026 08:36:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AB051F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 08:36:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2CEEF40F3A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 08:36:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B8UGK44vyeRO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 08:36:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7A27D40EE5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A27D40EE5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7A27D40EE5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 08:36:47 +0000 (UTC)
X-CSE-ConnectionGUID: zZg/DOABTTWllCvxeqxQtw==
X-CSE-MsgGUID: pIfatiHyQBeLNFJUvsyogA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80208260"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80208260"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:36:47 -0700
X-CSE-ConnectionGUID: rPOyspMFTTWNYo+dVU66Pw==
X-CSE-MsgGUID: +wHkq7bcTv2LvQTKevC5iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228308647"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa009.jf.intel.com with ESMTP; 08 Apr 2026 01:36:45 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Wed,  8 Apr 2026 10:36:44 +0200
Message-ID: <20260408083644.1621317-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775637408; x=1807173408;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d9Ajbx6LsBUa9X4iAjGw1/xij99LWKnrBr224q3C75M=;
 b=mZPbwKbI09kfRAfYWTQFAVLMuR2pvDQ5e7pXh3TvJ4/5k4jQ1qNZizHt
 Cr350H+xw7rfU4Gsk+OTpPUPy8Yoya7hpv+aCr5qG5Ezwb9MgxP494obf
 vqJ0v8NioITSLZgSR+Cp45LjNORBBdV3ptyFeUn0RKvoJRJq+J3BTsMnQ
 YMsTUS6YVefOSU+RaNvaJ0vt/WhXmXN1HMItc6/zpAVrevunZ0Zj2sOX7
 AAgYBdQMm8QUxfG+Rz3H8SdhT+J1onDrGuY2jmKrqfjKzSzsWZVKmgrJf
 V3KMRbIi3HTZZ7bZFrfM3uiSbffeaN3qk3dvR6GO/1zEWe85ZjNjzGJJq
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mZPbwKbI
Subject: [Intel-wired-lan] [PATCH iwl-next] e1000e: use ktime_get_real_ns()
 in e1000e_systim_reset()
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,intel.com:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 940DB3B927F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace ktime_to_ns(ktime_get_real()) with the direct equivalent
ktime_get_real_ns() in e1000e_systim_reset().  Using the combined helper
avoids the unnecessary intermediate ktime_t variable and makes the
intent clearer.

Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
Suggested-by: Simon Horman <horms@kernel.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 9befdac..6278ce9 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3943,7 +3943,7 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
 	/* reset the systim ns time counter */
 	spin_lock_irqsave(&adapter->systim_lock, flags);
 	timecounter_init(&adapter->tc, &adapter->cc,
-			 ktime_to_ns(ktime_get_real()));
+			 ktime_get_real_ns());
 	spin_unlock_irqrestore(&adapter->systim_lock, flags);
 
 	/* restore the previous hwtstamp configuration settings */
-- 
2.52.0

