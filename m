Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5098C704422
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 05:52:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4D72613C0;
	Tue, 16 May 2023 03:52:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4D72613C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684209173;
	bh=smmpNslHz1zv+90P+m0QNw33J28qmuIjPRrYPBgwEiY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=cfHHKHBr/WUSmJ3mWmCLAw68dR7lnUMC0yz+zKa9hBAhwAHCD+5YKXmrZeOx7gerl
	 TWsRTQDOrguUCo2hC3PstgwHC7tSmVvwIgoxWHbT0DmtPSRTweQaXXKQeWjDS5upSG
	 yEkxSK1ES77sNg0vYjbCw2zdUCVvEtsVQ7WWlK1GrBfz51Y1Bg8l3XXPLI2Q3W66Se
	 8UcGoIQryrabF/a7tmpoiOr/BQVI2WWHreUhwhjgfl4IL8u3pAJ+Gf7ZG3aGYIVoA2
	 aO3Zse68e5QQDdNJaTzOAgrpIUmWwJw70yebp1y6tbouPYnBUbNyHlGhrcIpihZ/F4
	 7NN7EH8Ezsu3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ULglKqFgSUzC; Tue, 16 May 2023 03:52:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C05E5610B3;
	Tue, 16 May 2023 03:52:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C05E5610B3
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 81DD41BF3B0
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 03:52:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50F4640B72
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 03:52:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50F4640B72
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UsFVF8CNNIQz for <intel-wired-lan@osuosl.org>;
 Tue, 16 May 2023 03:52:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67939401E1
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67939401E1
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 03:52:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="417031877"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="417031877"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 20:52:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="845528323"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="845528323"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2023 20:52:43 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 16 May 2023 11:51:13 +0800
Message-Id: <20230516035113.4147-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684209166; x=1715745166;
 h=from:to:cc:subject:date:message-id;
 bh=TbrICxU81VNR5bzTiZSG7YEO1TqEjp3kcNHF3GwFLxY=;
 b=JhRkhLmqC5DcD9sx/FQb9MRuvsC/ZQ33DKvq7aw39i+5JiizQbTIzms8
 wzB7zNnG+N+2GA2sRzK57elrnhSJAU3VoRQywOybY+q8R08fXf2AygINb
 hoO2TG84lliVuEs74MGsn7lSUCVxcdbYJ0IFmRTTwrtj8t2ez1ET0CpDe
 LM+TRtD8gzKsTZzcfUhNE10jIy7mC7JsGdzuIODOVK3UCxIdKSnMYM2j4
 GmonRw+es7FQUmkUsHsqlLtCoUF9PJfEOQ1UqpttpUUzo+BGbjZhekrVk
 qSIJyyrU1hR899c1CgVOGkQt71bijXySQycpWjCS6mj+ykpTO/pXnJfja
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JhRkhLmq
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: Remove delay during TX
 ring configuration
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
Cc: anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove unnecessary delay during the TX ring configuration.
It doesn't mentioned about this delay in the Software User Manual.
It might have been ported from legacy code I210 in the past.

Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index ca0e6d4141a05..b1d0b3a8bdc41 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -711,7 +711,6 @@ static void igc_configure_tx_ring(struct igc_adapter *adapter,
 	/* disable the queue */
 	wr32(IGC_TXDCTL(reg_idx), 0);
 	wrfl();
-	mdelay(10);
 
 	wr32(IGC_TDLEN(reg_idx),
 	     ring->count * sizeof(union igc_adv_tx_desc));
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
