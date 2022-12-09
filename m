Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87531647CE8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Dec 2022 05:18:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A33381FFD;
	Fri,  9 Dec 2022 04:18:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A33381FFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670559508;
	bh=ljtz91eOCj2aWllmxBC1q/UQYyMoklLwb8GJCufCkc8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z1NhV693VMWjXkS9jH1oO2DoJOKDhNSFeZLw69lkYxJTnDS14EhXqekPsdbim5Tqm
	 95iPqCMfzGkX/x/R1qztB509shknmqzhxEV4UTfMAccygfpHZ7iFVeTcF1WPhYttNe
	 aILeTz6lclAtyftsJ1hFSjcznUeVy5xfLTu/hnGoJbH6LEq7ezrNKnXy4m3CmxmDlZ
	 PoEfFbMP7BstOaKRblEOHhJjtzD9maj+Q4I61wVnfdzz205HgyiiJILOu3ypFu+m1J
	 jT+15ZXAyfNPHqESGiaI44leePWAql4VkKvXoZtArPaCMi+U1kPUhbsyuEnW4+B1C3
	 notYKXkbk9ZuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZajbYlJ6Em1q; Fri,  9 Dec 2022 04:18:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37B2481F9C;
	Fri,  9 Dec 2022 04:18:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37B2481F9C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00F3A1BF3A9
 for <intel-wired-lan@osuosl.org>; Fri,  9 Dec 2022 04:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CDB6E81F9C
 for <intel-wired-lan@osuosl.org>; Fri,  9 Dec 2022 04:18:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDB6E81F9C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dp93WZlayo-o for <intel-wired-lan@osuosl.org>;
 Fri,  9 Dec 2022 04:18:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2818781F9E
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2818781F9E
 for <intel-wired-lan@osuosl.org>; Fri,  9 Dec 2022 04:18:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="300796337"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="300796337"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 20:18:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="649427539"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="649427539"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga007.fm.intel.com with ESMTP; 08 Dec 2022 20:18:08 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Fri,  9 Dec 2022 12:15:19 +0800
Message-Id: <20221209041522.30153-4-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221209041522.30153-1-muhammad.husaini.zulkifli@intel.com>
References: <20221209041522.30153-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670559490; x=1702095490;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=4TFTZH0kBiul6AV/ATBwRLabm4rJTCvdIHuX+i/3chY=;
 b=M/lofl53yOhFj7wsdxUB0L1KQ5yUD6SetKlcfsjHEiAbNcUEVLpnc2da
 I/o0GLB3IKNpESPXC1sAra/QoN0Av6DST7wicRA+3GxDDG01ONcdSo+dx
 gKlzmwXbQP1RPhE/uBlfEDPZEK1xCAX8Ir99LutrQSyvVmr5aFqlyhxbG
 KEaYLICKOu4DLg3Yabfd1koueY2n4QWqLdRbZL6Ct3AtUcyPXZnknmd4k
 w9wtg1VMbQdl1n6gueyxuXVELIrlmjv4nW3jDmhojUdw1SPSdf7NMXiEr
 PhtcmE/GZbmhEn0c2jiwj9XdwCYSQIrc9TVDFZ3ddchg3K5/TzVfnLXu9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M/lofl53
Subject: [Intel-wired-lan] [PATCH net v1 3/6] igc: Add checking for basetime
 less than zero
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
Cc: muhammad.husaini.zulkifli@intel.com, anthony.l.nguyen@intel.com,
 tee.min.tan@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Using the tc qdisc command, the user can set basetime to any value.
Checking should be done on the driver's side to prevent registering
basetime values that are less than zero.

Fixes: ec50a9d437f0 ("igc: Add support for taprio offloading")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 524f330230d7..a88840bbeeaf 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6030,6 +6030,9 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	if (!qopt->enable)
 		return igc_tsn_clear_schedule(adapter);
 
+	if (qopt->base_time < 0)
+		return -ERANGE;
+
 	if (adapter->base_time)
 		return -EALREADY;
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
