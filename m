Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLC9DH6Bw2n9rAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 07:32:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4243202C5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 07:32:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8078821DF;
	Wed, 25 Mar 2026 06:32:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bds4ky1cKhwT; Wed, 25 Mar 2026 06:32:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 600FE81E9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774420347;
	bh=W8dpHCL+/TZKWmEy+xLtd1NCT/ztYWQvJiOIJ6UW1y0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K3JABj/2PQioescwQFapptKKqrSOBmuIVMJUBFF1bFLASzBG0bzOcYw5iD6mYU3Ft
	 ZxTbMFH0L8tOkfcyMUFleCxsCZuOX+bXcL78EmF2FHKYPqKpokU6Vglw4PtLzr5Wx9
	 dYRCI9XK+6p8NQJhakxfLFd6/AFPADcQX9V/kJXd7qPi+0T1gKG+FEhzRTB4KMMo6t
	 LIBvkqy24dXWYgLMoGGm6EtqBKg1tL7t5mLzT1PLx0VzrVwwqqrIS9Pm0zr4B8Q6NW
	 BxYAWghVUkcX2QuXoQ4CbcQ/XAKfhX3bWCXx+1EPRo0vm19KssRerjoK1CeEXmtLYH
	 wsM8ZhWEGuwxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 600FE81E9E;
	Wed, 25 Mar 2026 06:32:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C952353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 06:32:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 12A1281E98
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 06:32:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1l4YeWxpgCPR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 06:32:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4EF5C81E95
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EF5C81E95
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4EF5C81E95
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 06:32:24 +0000 (UTC)
X-CSE-ConnectionGUID: KkVVapDhTRa2aFwQkH4RLg==
X-CSE-MsgGUID: AidbugTiTniy1KQtXGjSfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="79308072"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="79308072"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 23:32:03 -0700
X-CSE-ConnectionGUID: PJGG7ggXR1eJGOyTslFP1w==
X-CSE-MsgGUID: Ws/d7Gt3TA6RpYxTaD8ssQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="221693633"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 24 Mar 2026 23:31:57 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.245.24])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 691D32FC8;
 Wed, 25 Mar 2026 06:31:55 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Wed, 25 Mar 2026 07:26:53 +0100
Message-ID: <20260325063143.261806-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260325063143.261806-1-przemyslaw.kitszel@intel.com>
References: <20260325063143.261806-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774420344; x=1805956344;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=371lIzolESrhOMrQZ+kRiBnks0CP6to8wN6H9X/ogJ4=;
 b=KyP35YIM0njuK1DQDjJzbZjDqoI+Mi8A08kZsTk2CRdAoZHx5MgqprjB
 uH5BZaqRSX/fw91gKt1FmSVv3lp7gyjFQIH7bxa6wrtdyGq8+gtOlssh4
 wsT6jcbP9bYDn5LKCe93RW4XBjxfDG9e9kfKxE+iWpJgi62jQY8x08qL4
 NmTQ2OkZfbeEpPQf81GGu0KMCwqLpegH7l/HILy19VL1L2Elevh67yMn4
 jaR1Kbn7z+l/1dZlpfpuwpUPCaen34i4zX6cmrTXCUr+VpEHMJbdOb4GU
 FX/WgAFgLDwa16ZCo1vNBSN+z2wBmGAzLK0y3nGavvLaXYi5kLs4pJKNI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KyP35YIM
Subject: [Intel-wired-lan] [PATCH net-next 2/2] devlink: unregister shared
 devlink resources on destroy
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, pabeni@redhat.com,
 davem@davemloft.net
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
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:edumazet@google.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 9D4243202C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since shared devlink acts as a normal devlink instance, capable of all
usual devlink operations, it must unregister its resources.

I plan to make use of devlink resources on a shared instance for ice
driver by separate series, coming soon.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 net/devlink/sh_dev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/devlink/sh_dev.c b/net/devlink/sh_dev.c
index b85e5cb1edbe..5de138bf3630 100644
--- a/net/devlink/sh_dev.c
+++ b/net/devlink/sh_dev.c
@@ -71,6 +71,7 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
 
 	list_del(&shd->list);
 	devl_lock(devlink);
+	devl_resources_unregister(devlink);
 	devl_unregister(devlink);
 	devl_unlock(devlink);
 	kfree(shd->id);
-- 
2.51.1

