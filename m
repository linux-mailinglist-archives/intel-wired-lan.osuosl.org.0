Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD7FA56A86
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 15:38:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02BD883B7D;
	Fri,  7 Mar 2025 14:38:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FMMhx6a5FTqm; Fri,  7 Mar 2025 14:38:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AAE183B92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741358310;
	bh=nl+Bq80rHshlRcfIb0jRGoC4C3HfdOI0x0kMABblyLc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TqrJMzR9jOTFjdUcIpqVrDW932Tf2FT6MFdgId43NxbrHZOdEh+b7U0ZLLZ+S2y8E
	 Z1sQw2Jv/Fy99YFaymTYZjTP5coX4hElCqvrCGPA5pn3AJoDYpjT/+LntLCKHSGZ7y
	 ZCvX8yBvLIaCggtDLOVKSfDRzOvelggCcT1hpCw1TkPVKoFEhuIatZloMHrGClZS8b
	 JjeiMWEvqGJtRq9ym+dEbGVKZ+hbtpydht+3U8ZjBV5/sZoQ9SqzS2l8TxoKVV1zHK
	 rIcsuSZ2QhnqPLr27IgoTGjY/d/4UNFv3KAhgIOPLy9rxv+mjtoI1kXZSGYQN+jdCB
	 aOgdcgjxPQp+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AAE183B92;
	Fri,  7 Mar 2025 14:38:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B90531C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2A30413E1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:38:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HPXD6h0Tknzk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 14:38:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B210E4076C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B210E4076C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B210E4076C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:38:27 +0000 (UTC)
X-CSE-ConnectionGUID: UFDDBzzYQtCqzYRgx2HdlA==
X-CSE-MsgGUID: HO/Z0JtnQVqUlDru4ryolg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42263295"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42263295"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:38:28 -0800
X-CSE-ConnectionGUID: Vud2wuvfT02AhLJVJ3CV5w==
X-CSE-MsgGUID: i9RGoAFpRmSmUdIFiat0iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="142570752"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 07 Mar 2025 06:38:25 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 jiri@nvidia.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Bharath R <bharath.r@intel.com>
Date: Fri,  7 Mar 2025 15:24:05 +0100
Message-Id: <20250307142419.314402-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
References: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741358309; x=1772894309;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZoO7cR9U0Yshb8fgBZBcB4ykUBfBmK0Dpd+DLzUpPfM=;
 b=PYoUIG8cxI7m0XLNXJr/yx5cZKUxP6DWjXgr4t5pwe6j4igGdsqLKibj
 nZBZ6+pa4yX1VJRkv24V3MDLaMB253X4v9bkwxnF7Tz9nAyO7rl8FmH1Q
 /Dd4OrZK5NFdPEfVeEzjWraJchpKUtXogKtCNr8tbEiUt0T48RYVTZ7Ns
 rIM59NpBnkTfr5OQIty7ppYjbmvL6oMsMldRe0DCiYSEMOrynRUZVCTIK
 SqxH08wwp7gYRKGB63BH1A5WH9peNSuRTM8FDD016FMDCoP9XXvC9s0H+
 +KGp/tC0mozTS4IhErYTUCrtSs6txB/Zctdep5eQvNZNJn6k+EIPETo0K
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PYoUIG8c
Subject: [Intel-wired-lan] [PATCH iwl-next v6 01/15] devlink: add value
 check to devlink_info_version_put()
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

Prevent from proceeding if there's nothing to print.

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Tested-by: Bharath R <bharath.r@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 net/devlink/dev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/devlink/dev.c b/net/devlink/dev.c
index d6e3db300acb..02602704bdea 100644
--- a/net/devlink/dev.c
+++ b/net/devlink/dev.c
@@ -775,7 +775,7 @@ static int devlink_info_version_put(struct devlink_info_req *req, int attr,
 		req->version_cb(version_name, version_type,
 				req->version_cb_priv);
 
-	if (!req->msg)
+	if (!req->msg || !*version_value)
 		return 0;
 
 	nest = nla_nest_start_noflag(req->msg, attr);
-- 
2.31.1

