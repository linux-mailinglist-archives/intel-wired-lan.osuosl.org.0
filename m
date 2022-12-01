Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D8B63ECA1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 10:38:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B82A81345;
	Thu,  1 Dec 2022 09:38:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B82A81345
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669887535;
	bh=3MlIB6VQZEDorDbFT+rqCiQU7MNI2a8YRyEabsOWzME=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MkeF+IEtEK0Mr2LVAYfRhMNykvS/BJjw1fQqC2Jwy7BanXELp1KYn6jIgT98crDR9
	 TD0Hft8YrQOVd4CIYDpKtkMbeucSL2Uj3IbLzdHCZOtI7k2vbYR7+TI2bIXZPdAoUa
	 WQuP0yV656ScrHcSvGlgrdktLGQpmOHj/mowEnH+ra4z+m/EYe/UQcxvAeH3EgpuYP
	 VIC1ZqiiVA7sHjxm+xxVSC3sFERyN9jtAqTyGh9hlojeXZ6/Ri7tVn3esLQvUac2vZ
	 68AGZhM9vfyazNSY54909Io6dCfqCoI4UTI7j/WkdJVaAWMZ8C4wysrGpNlOCC/cqH
	 9LYWDzjJwUqoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fKcFIteSWhmq; Thu,  1 Dec 2022 09:38:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2325D81360;
	Thu,  1 Dec 2022 09:38:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2325D81360
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B7BF51BF844
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 09:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 924FC607F4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 09:38:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 924FC607F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6VwVOVUS5Vn8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 09:38:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E86226076C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E86226076C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 09:38:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="379916243"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="379916243"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 01:38:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="646691792"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="646691792"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 01 Dec 2022 01:38:43 -0800
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2B19cgs1009561; Thu, 1 Dec 2022 09:38:42 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Dec 2022 10:38:09 +0100
Message-Id: <20221201093809.942256-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669887526; x=1701423526;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cpsq2J2fC9FCZTqXRX+4rpTvCusuDht+2xzRcxvJ72c=;
 b=Wt+BFjDawZHN7sx5o2nDbaShpK0WKbNFUxD+r3vGpd8GcAU12Ckz5JWT
 dp8F1zVKcYHbHSQynPBatirxnof1ZaUcpl3LRO7SeXgHUyzSRqmM68Wzi
 JS7WlC7d3cpFyii/5xXWnaTOR30IBy/EtHOwMINRMMJqHumKfDPaj/irw
 rorkLpCvc0Im226X68EdmM5MnOgMxHZ4mQqL1g/vA0gYb9ns4syVL5ipy
 TXUdSmM7wMi7LGYH2iBAqdvBTdQGrmHBdqf0T/A/985sj56xEzkQvP9Ac
 FVF0zWCQSS+dgAQNL1YJeCnKYj398vfC8thDOjOC3YsAZSEiB9PcsepaF
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wt+BFjDa
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Do not use
 WQ_MEM_RECLAIM flag for workqueue
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

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
