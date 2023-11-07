Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D72D37E4BF1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Nov 2023 23:40:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 611F8410B8;
	Tue,  7 Nov 2023 22:40:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 611F8410B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699396852;
	bh=HPWKQ9D9GJVkVsIm6SQpjRQ1ovOHPKaVkr5m55xpvMc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3nd88eHLsRWVyd/URsgXRNIYfBdTdViIJRRYMzF7GXGBdh9c+i/ZmdJUyz7iMpw4b
	 oys8HzFDv26RU/uVR8aAF9khmWDnbA/NtQPxWgjayLLwnfFoKdUJ5c8/5FkisKHX6o
	 MQEWFXrpXlbYotWd5tGLSE9k8B/QxQvKBCkt/fTYfscUushmrUf9gZJypNB04SvpRG
	 mm+2eYffZcjcbEsAW9pZi9wIrtUleAtt8y9AXZ8pZj8ea+t16ngKbcBv2CcD86H0+m
	 KljF0oXO5keTIJ/B3wDBqjthZ/IP9zFN/Urg1xuAus1GI8Vl2Fefww+RDW10LRW039
	 o0OTzYQrOWylA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0EAHsS1mg6v8; Tue,  7 Nov 2023 22:40:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4420B4098A;
	Tue,  7 Nov 2023 22:40:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4420B4098A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD4EC1BF59B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 22:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C1B544098A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 22:40:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1B544098A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 91WRmdCF0rMz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Nov 2023 22:40:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C6CA40974
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 22:40:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C6CA40974
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="374680128"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="374680128"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 14:40:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="762864739"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="762864739"
Received: from sbahadur1-bxdsw.sj.intel.com ([10.232.237.139])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 14:40:44 -0800
From: Sachin Bahadur <sachin.bahadur@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Nov 2023 14:40:40 -0800
Message-Id: <20231107224040.494924-1-sachin.bahadur@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699396845; x=1730932845;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jJkJPa3U3e2pZTFmqnAbe15VjszsIeQPcadWiAfb4d4=;
 b=VvulvgdgDcTEyzKv/cmDNVHGRdoSowor0VZUiHd+8x3+vDZjrUF0hI9F
 kK+BDECLHpU8myo0HAE0Z0PrmS0uU6bIlSD5tkYoh+IwwWlzWPDBInM0m
 PAuO+I5W97zyGer1pwttJO3SAQvvhJ3ZfYtxF2fKjHqCZFfMcWMw7US98
 HR/FcijaoI7PqyX7r9QPdXMPL17KOYaf5ZCq2LKrIbP7PR9LWC8Z+Ktt5
 j9cvWW5yQeXVojHv8wV4Baz9/9LxQG6dOzB6p0f7aT6lpvgzviL2h7iKk
 Bn1TZs//W1k5jD1clAyd5FDD4prWTxexa55rF0HPyxBerokYtlYcbEfF2
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vvulvgdg
Subject: [Intel-wired-lan] [PATCH iwl-next 1/1] ice: Block PF reinit if
 attached to bond
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PF interface part of LAG should not allow driver reinit via devlink. The
Bond config will be lost due to driver reinit. ice_devlink_reload_down is
called before PF driver reinit. If PF is attached to bond,
ice_devlink_reload_down returns error.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 80dc5445b50d..45e40b587e82 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -457,6 +457,10 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
 					   "Remove all VFs before doing reinit\n");
 			return -EOPNOTSUPP;
 		}
+		if (pf->lag && pf->lag->bonded) {
+			NL_SET_ERR_MSG_MOD(extack, "Remove all associated Bonds before doing reinit\n");
+			return -EBUSY;
+		}
 		ice_unload(pf);
 		return 0;
 	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
