Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOxiDuZSz2nqvAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:40:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D517239122B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 07:40:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CC9740F5C;
	Fri,  3 Apr 2026 05:40:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CNX5W3qQz4bt; Fri,  3 Apr 2026 05:40:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA83B40E82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775194841;
	bh=oYGzwkEY4MVeK7Ae4cZsi/Ijf21nTTTdon1XeFN0CkU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CuDcU4IxxVSn7/FBEbfWEJTjC/zPvSTLmcylSV8HshCEFaq+QiF1C9lC3dI+D3aSy
	 zGHO6xFpge2WcNIy5Md5BCL2FBxNTU5E1hS7QiKl98WIesuPL1nGzGg1w/6HN8b4kM
	 cNFJuWmc2QFplqe7xidHKwYR+Xh2WdT2DBJ+lPaoRE9R9QD4r3wV10EevWJ4aHPpvb
	 zyAUoybokMyRWTPgvohF+8nhTHaLu8tlJZI4nDZfHLlpD93jNetz+UtOAhjr995ngs
	 JuqlFqtmXFWe6/NY3KCGWpyHGVe2e3QrAxKIS4mkZh/n75nbuOQeWmzO3I2nWCSUxw
	 OhG2WuIcAZYDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA83B40E82;
	Fri,  3 Apr 2026 05:40:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 42DC41F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 350E84008E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qZ3n08pJgzrQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 05:40:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9129140071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9129140071
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9129140071
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 05:40:38 +0000 (UTC)
X-CSE-ConnectionGUID: fW4DJkqgTkegl6heCNCgGA==
X-CSE-MsgGUID: 111NVP1DT6qUQSxA4Y20Vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="75981747"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="75981747"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 22:40:39 -0700
X-CSE-ConnectionGUID: aZuhjzIFRbuEa1isqLOFZg==
X-CSE-MsgGUID: 53dlZlWcTQ6WWvXzF1NT0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="223904930"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2026 22:40:37 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Voon Weifeng <weifeng.voon@intel.com>
Date: Fri,  3 Apr 2026 07:40:23 +0200
Message-ID: <20260403054029.3789616-6-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
References: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775194839; x=1806730839;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cNgq/FSRIyz8iw9SOUsHg7NMCtnTH4UFHNADfQywo0A=;
 b=MvmInz+U8t21SNF0QhpehiQQLPZFMKxONKOWZZyPtT7aH3HJAaobJdfU
 yIFd9gMSI66FPhMcqxAl3IOEFZhYgUPJpJKz2u5N/+Rnw8MkZKvM7W/p1
 cu/0bBoJd/c92dDM83TwCevJFKzUvv0hV9/Nve2o9LKG3qQp3bcu/yejW
 y5KyhUomqde2d1R7irsETlw7EC4T7T1BCBEnbRIUKsjTlCgr/dJCmTv2A
 xDYFhPQ6vnqnmbX1SPF0cWpgeeNTcXPaWg3zwzKIb8PMmbcWp1p0BelPS
 oirDrN8wG59LJzwyaCrDsqasfR8YhlOo2iGLwjGgUsbTq9d78MyxXrCcH
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MvmInz+U
Subject: [Intel-wired-lan] [PATCH iwl-net 5/10] ice: add 10000baseCR_Full to
 advertised link speed map
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
X-Rspamd-Queue-Id: D517239122B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When a user attempts to set autoneg advertised link speed to
10000baseCR/Full via ethtool, the request is silently ignored
because 10000baseCR_Full is not in ice_adv_lnk_speed_10000[].
Add the missing bit so that the mode is recognised and the
driver correctly programs the PHY.

Fixes: 982b0192db45 ("ice: Refactor finding advertised link speed")
Cc: stable@vger.kernel.org
Signed-off-by: Voon Weifeng <weifeng.voon@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 301947d..49b9376 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -367,6 +367,7 @@ static const u32 ice_adv_lnk_speed_5000[] __initconst = {
 static const u32 ice_adv_lnk_speed_10000[] __initconst = {
 	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
 	ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
+	ETHTOOL_LINK_MODE_10000baseCR_Full_BIT,
 	ETHTOOL_LINK_MODE_10000baseSR_Full_BIT,
 	ETHTOOL_LINK_MODE_10000baseLR_Full_BIT,
 };
-- 
2.52.0

