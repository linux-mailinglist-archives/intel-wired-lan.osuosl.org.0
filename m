Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C16D563D5AD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 13:35:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D0D2415F1;
	Wed, 30 Nov 2022 12:35:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D0D2415F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669811730;
	bh=wlutla7pQSTS56X5HS7zjNxTXUBubc5khXArUgyL98M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ZZunEfKvhgNaTvjSVv2xMRZ9QscCUY4tszHX3iYplcNlpRWq6qigstjiPnWzbbhBR
	 H3Ta51SWwkZYQb0j+VyCNoLmS/43sIO764eoa+E9xLhmPnyfneZ5Cw6MUZBdrJRZ3z
	 6lBdpWJ6kBS/b3rEEGdDpaS1rTfl5UrYFzJc6o2KpvoJi6fiT23QQmdQsivGUGCgLc
	 5kHyLmRCVkjGtg5WoGtkPun99VzQygnp0bBqUSW5OAkYNP/BYXauIf7FEf/1VG7nWS
	 NVNmQYGsAFJg12UpwrHK3T4OWsllxN8AnrCehwT+mC7lHVv+6b+GBdHseFMaJBId1m
	 Zibl6Ptk020NA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2b4u0B53Z6aY; Wed, 30 Nov 2022 12:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 717F0415BF;
	Wed, 30 Nov 2022 12:35:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 717F0415BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E05C1BF3E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 12:35:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27FC240377
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 12:35:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27FC240377
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bl7hn8PiQwv3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 12:35:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4486140121
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4486140121
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 12:35:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="295080564"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="295080564"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 04:35:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="707631238"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="707631238"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 30 Nov 2022 04:35:20 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2AUCZIEK027695; Wed, 30 Nov 2022 12:35:18 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Nov 2022 13:34:14 +0100
Message-Id: <20221130123414.892879-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669811723; x=1701347723;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=btLG74tAby/hcJpBjoOqrJGVzSJlq5cHTtvHnTda1jE=;
 b=OGG4UKaxCvb3wUFCtC9sRzYZcOeWClvlcnOGC/t+Mi6dQmD39g2bxa3u
 UWrNBL0zDYn9cDfK0jXA8Q6BFaP5kcBG6SpxPsZtJgwEDR+TwjQmhZnsD
 kU73mqNwm6uZtuEZzeGrHE9Vsaks+Rm3OOVXg+rR5pS1Z2EnSmHdJvJMf
 KsqIk1Tc8298PpTQSjgxCezaRtuF5EYYSlgy/Wwm2+cLQwKIW0bnxTW5a
 /4YV5QS/5FUtuOVzSzbH0tKXTAkk55kGEZt8Thw18UFnb8XV/U4SmLbS9
 Kxyo1yDNy7myVucFyOQBArQeD0+kOrlXpMuKtkzjmL0SJqYnfmj601nMt
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OGG4UKax
Subject: [Intel-wired-lan] [PATCH net-next] ice: Do not use WQ_MEM_RECLAIM
 flag for workqueue
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
Cc: mustafa.ismail@intel.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When both ice and the irdma driver are loaded, a warning
in check_flush_dependency is being triggered. This seems
to be because of the ice driver workqueue is allocated with
the WQ_MEM_RECLAIM flag, and the irdma one is not.

Looking at the kernel documentation, it doesn't seem like
the ice driver needs to use WQ_MEM_RECLAIM. Remove it.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 69984fea7fce..d01d1073ffec 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5617,7 +5617,7 @@ static int __init ice_module_init(void)
 	pr_info("%s\n", ice_driver_string);
 	pr_info("%s\n", ice_copyright);
 
-	ice_wq = alloc_workqueue("%s", WQ_MEM_RECLAIM, 0, KBUILD_MODNAME);
+	ice_wq = alloc_workqueue("%s", 0, 0, KBUILD_MODNAME);
 	if (!ice_wq) {
 		pr_err("Failed to create workqueue\n");
 		return -ENOMEM;
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
