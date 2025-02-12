Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E510CA326FB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 14:27:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F7974258E;
	Wed, 12 Feb 2025 13:27:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R5zXlPlR92ZY; Wed, 12 Feb 2025 13:27:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7F9E426A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739366877;
	bh=6rUry6yoHck1gS+FSGdZXNI0SlHMTg0ccGr2CDCMYiY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xR1Ot38dOLMWte1iaKwdToVIhzHqBCx71i2t0k6bmZrx6eP+QGee1YLqge5SGJ+jH
	 ne9+0F4n3jHhmelPE2F3AfWtxOMlhUoqTIxAAuZFBeXw3vI6Gm6mLxQpFFU9rR3KoE
	 pLZ9Itj2AY8JCet4ihRTHoS4fWbpSNTbBtSM15i+8lDg3mBJT+YLkAWvFHm+yf/CBe
	 e0/605rWtD4JmmtWvOQtExFYcstSo2tD1lNp/pRt6pPFTFUXO+DWt0WLw9KvH+i8lV
	 dgHnydRmLbaRi5lycrbwcZ/0YyR/6JKcD8pDbNakZ+AzM6dezo+pNQxC5eug1tQERr
	 H7y1qFbxRI4vA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7F9E426A1;
	Wed, 12 Feb 2025 13:27:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 45E92194
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A00561083
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:27:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id znlgzJOHTq_k for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 13:27:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 84582608D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84582608D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84582608D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:27:54 +0000 (UTC)
X-CSE-ConnectionGUID: Aab0SGZPQzCnZv+Cgihpwg==
X-CSE-MsgGUID: cZUYZctiRhWSbANOzvqmCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50665517"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="50665517"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:27:54 -0800
X-CSE-ConnectionGUID: CJQDOvjJSSOw1cveLufgWA==
X-CSE-MsgGUID: 0NNIpOj8RQWFkTVjxyqITg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="117830620"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa004.jf.intel.com with ESMTP; 12 Feb 2025 05:27:52 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, jiri@resnulli.us,
 horms@kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Wed, 12 Feb 2025 14:14:00 +0100
Message-Id: <20250212131413.91787-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
References: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739366875; x=1770902875;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZGQPqIgzQ8u2dfuHYjkNeT/O3aLlbiigGyfdgXmOSMI=;
 b=EwDudOBBxgljwPFG64DbaWKRde/kcddqfU+kwFi/L1AJzSDuw9g56vGj
 C1sCee1ur4T/B1ASjeSkI5AE8cEFufL8TAVnSw2Ip2Z65MW/2ngZUOVSk
 QHJPXMlwEaf1s144pKex/p650pwP4xgFLw39mgnGCBtLIQ1frls7BVK1o
 KqXW7W83g92z3KWqdpWF6u3HbhAoYRwy/6L5atqzXxfi5SEf6E1ynetEF
 Xu23hbHQqg7Uu2Xu3UwNYoc++r54RhPvkEMa7Y7B1Fyqd42PhbXFFr98N
 UZNFQ84lQjKcUPII3aUPHFhJZdTmGwLOeWPARleaDQU16Oozsf7L+9pld
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EwDudOBB
Subject: [Intel-wired-lan] [PATCH iwl-next v3 01/14] devlink: add value
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

