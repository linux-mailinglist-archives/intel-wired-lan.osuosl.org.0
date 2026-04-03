Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJ8JMO1Sz2kCvQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:41:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA4B391242
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:41:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA14A40FF6;
	Fri,  3 Apr 2026 05:40:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Md4GJ0ND0ats; Fri,  3 Apr 2026 05:40:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7E0440ED2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775194845;
	bh=jDgpG8el8G0nTpLRsdXV1Ad+hcHP/G+YI/Y+XBdaRnw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yrkcAkDhSbFgHOFcfwHpsBJY/FHc0CM+AZNBURHjGqeJXTWGoje9gFbm9MEuo2Vy9
	 3eMGPJMF9XmCMhWgf7CMqh8ctdyCFoUw8WxGiKJFvcRSyUtKc7XTuLvMlW2NzGMmeZ
	 SCr0RQoA66ur95bJA9MJRx7HCGW3TIylK1Sp2fD8mv0Dpt9MC238AhxlDIAgZAn930
	 DQX2b65PrspDJMiUP605avoI+Hd61qpYdyNMZokeZVhnMT3YpQPJjlMC8sm/32etoo
	 JbuSeZ4N1v+vM1fMkbyYiX8H8+cAUtuVpVKOCDStj99r4pzcqXPLaOzVm6+4ot8DSu
	 LcCZA1kYZsUyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7E0440ED2;
	Fri,  3 Apr 2026 05:40:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D8B361F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF0064008E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bMXrFeQM5O6u for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 05:40:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C4E4540071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4E4540071
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C4E4540071
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:42 +0000 (UTC)
X-CSE-ConnectionGUID: JYGYtNZlTM+/yo4ApY5lPg==
X-CSE-MsgGUID: Nu8LvH1sT26kM6wzCh6akw==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="75981754"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="75981754"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 22:40:43 -0700
X-CSE-ConnectionGUID: m8TgYMABSoGuenA535VSWA==
X-CSE-MsgGUID: /Bw9DaiPQIqCQO/B5QhOjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="223904945"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2026 22:40:41 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Yochai Hagvi <yochai.hagvi@intel.com>
Date: Fri,  3 Apr 2026 07:40:26 +0200
Message-ID: <20260403054029.3789616-9-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
References: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775194843; x=1806730843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=amU8gMEzIOAMu+w5jaIGX/klL3sd7yHvI6CD1BjVPis=;
 b=JHNRUxzT1njRfdNwjGrYqzeeQotaKqhTVNsNjdDtBJ3Zn7gYcOLqM9Dq
 REOCDyM7h3v34rppAAbVipayarbokE8UcND1SZNSgYaFzIvyhbqhE70Ll
 2fdgm7g5+iXkHPQMtg9TzWgy68xcctDMGAj2nFzG2PBMwMN4/hDTOY4i5
 WIicke6i1tTTizzIrnFVcKktdDGyyQ89kyG/UXXBjfXB09c2i1xc98KOK
 /twFkrkFL8Z7VYdgP72AoQkUEMc4pq7GC/d1VJMHA2P9EaKH8Dtv8QkjP
 S9Vy+EVXLSQfMFDejuwQjGhOSfDTeAR0ds5bziP4HB487ksi2ToblFYZs
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JHNRUxzT
Subject: [Intel-wired-lan] [PATCH iwl-net 8/10] ice: set ETS TLV willing bit
 in default MIB sent to firmware
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
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8FA4B391242
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When the FW LLDP agent is active the driver sends an initial
DCB configuration via set_local_mib. Currently the ETS TLV
willing bit is clear, which prevents LLDP negotiation and
renders the FW LLDP mode non-functional.

Add ICE_IEEE_ETS_IS_WILLING to document intent and use it to
set the willing bit so the FW can negotiate DCB settings with
the peer. This only affects the default configuration; SW LLDP
mode overrides it immediately afterwards.

Fixes: 7d9c9b791f9e ("ice: Implement LFC workaround")
Cc: stable@vger.kernel.org
Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb.h  | 1 +
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.h b/drivers/net/ethernet/intel/ice/ice_dcb.h
index be34650..91d6682 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.h
@@ -52,6 +52,7 @@
 #define ICE_IEEE_ETS_CBS_M		BIT(ICE_IEEE_ETS_CBS_S)
 #define ICE_IEEE_ETS_WILLING_S		7
 #define ICE_IEEE_ETS_WILLING_M		BIT(ICE_IEEE_ETS_WILLING_S)
+#define ICE_IEEE_ETS_IS_WILLING		BIT(ICE_IEEE_ETS_WILLING_S)
 #define ICE_IEEE_ETS_PRIO_0_S		0
 #define ICE_IEEE_ETS_PRIO_0_M		(0x7 << ICE_IEEE_ETS_PRIO_0_S)
 #define ICE_IEEE_ETS_PRIO_1_S		4
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e7308e3..75a48e5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -971,7 +971,7 @@ static void ice_set_dflt_mib(struct ice_pf *pf)
 	tlv->ouisubtype = htonl(ouisubtype);
 
 	buf = tlv->tlvinfo;
-	buf[0] = 0;
+	buf[0] = ICE_IEEE_ETS_IS_WILLING;
 
 	/* ETS CFG all UPs map to TC 0. Next 4 (1 - 4) Octets = 0.
 	 * Octets 5 - 12 are BW values, set octet 5 to 100% BW.
-- 
2.52.0

