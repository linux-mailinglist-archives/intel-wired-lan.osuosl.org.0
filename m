Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPSBIlMT1mngAwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 10:35:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C91E13B9206
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 10:35:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68E2B812BE;
	Wed,  8 Apr 2026 08:35:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m7C7cXx_LHNo; Wed,  8 Apr 2026 08:35:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0D7C812C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775637328;
	bh=vI6CA7qDBS7HLrBlMugeCDruBauOBKEW5ioKSBcGdEI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QRyhZwK1H2jMaA2qR3FCpWsBWhktcfKQSSqSdt0v6wxgi+J8PIlpeKKxwwnc66DPG
	 3CKlzV9dZi17TT2lmwflV2YJAzpNe6gDgDCns7PdtEqMy/gs3XzQFqjleveYKwgtvU
	 +qFQZjXfNgkBj3NB/35elzYQVzgPCeiNx/7eUIXttlHbsYUxzSdq9VHen9DvUVGMz5
	 SXbZPHdfKBnef3LDo8VbnDmYl1YM350sn32uQgh+zRk0ZO5ae3jN7HWdgJKR2oXeAi
	 D5L9VNss8jNApS3kUbV79pTeN1H32WCkbQnRmdhx9+22oL18WDzQBvR3yTseWS+zpD
	 5DgIC7P4QEzmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0D7C812C5;
	Wed,  8 Apr 2026 08:35:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B0423237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 08:35:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9600F4023E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 08:35:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r4_WQRL11_F4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 08:35:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DB72C4023D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB72C4023D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB72C4023D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 08:35:24 +0000 (UTC)
X-CSE-ConnectionGUID: P/0/f+fvRxaC0zt1Y0iJFg==
X-CSE-MsgGUID: GHn/FqfVSoeCf7SEuFVD4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="99239333"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="99239333"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:35:25 -0700
X-CSE-ConnectionGUID: 005DSDcsSPKRJqtYppLh1g==
X-CSE-MsgGUID: HxHaPNh/RPaU+5n2cqbusg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="233286750"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa005.fm.intel.com with ESMTP; 08 Apr 2026 01:35:23 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Wed,  8 Apr 2026 10:35:21 +0200
Message-ID: <20260408083521.1620447-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775637326; x=1807173326;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RrMvobtANsk93uCs04DRCxo131qBQlIpolPmcHmOfk4=;
 b=adoBpz8oaey9KLzsI5HmBaVA5OsC9wnjuAWj2qgWrAxbj/7TSYFXdUY2
 WYKkYVY4EuTDonmlfrmN/2Fy61sNa0fVY8CF0SjmlUSZew5dHVdwTa2OY
 t6IVOOGF0izveuOJzpAttRRRrwp2BCmhccwgz/EYQmJzUYw5q27Bif8pj
 lLiIpQ4GiW+gG3YzB06PcpfhV/DQ3weid3lpze7C2YcoQOJNJB8SllWmK
 N7YnZZHUODU11f+AQJf1egqHivA3jNFOMO/RyuUAsIwqHe/orRhoTMaJu
 f4gFZWl0WNlL+6vfQ+Gz5eCYz8eN1JJBu3H3lPL0OrQa8mtGvCRHQvJlw
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=adoBpz8o
Subject: [Intel-wired-lan] [PATCH iwl-next] igb: use ktime_get_real helpers
 in igb_ptp_reset()
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
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C91E13B9206
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace ktime_to_ns(ktime_get_real()) with the direct equivalent
ktime_get_real_ns() and ktime_to_timespec64(ktime_get_real()) with
ktime_get_real_ts64() in igb_ptp_reset().  Using the combined helpers
avoids the unnecessary intermediate ktime_t variable and makes the
intent clearer.

Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
Suggested-by: Simon Horman <horms@kernel.org>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index bd85d02..638d824 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -1500,12 +1500,13 @@ void igb_ptp_reset(struct igb_adapter *adapter)
 
 	/* Re-initialize the timer. */
 	if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211)) {
-		struct timespec64 ts = ktime_to_timespec64(ktime_get_real());
+		struct timespec64 ts;
 
+		ktime_get_real_ts64(&ts);
 		igb_ptp_write_i210(adapter, &ts);
 	} else {
 		timecounter_init(&adapter->tc, &adapter->cc,
-				 ktime_to_ns(ktime_get_real()));
+				 ktime_get_real_ns());
 	}
 out:
 	spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
-- 
2.52.0

