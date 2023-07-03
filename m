Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A43745A51
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 12:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24C1C40BB1;
	Mon,  3 Jul 2023 10:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24C1C40BB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688380385;
	bh=sXb97XTWKdbA8xYoSMUBff39gMZ/z/SBco3keklvOzw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QcUEb1fgv6H/gy2uPtTNlQJCX78bY/yW8BGSL9jnOPA+lA0Yg/BHw8/3JEhHMP4No
	 ESf9zJC9fzdjSo90aGzXmySRBEykhgR1Upjd4+EuELTYfyKBBrz7IXq54HmsA/lGTi
	 fs4LQ+tJQ0bachoRK8DTSZNQsUHUiPpfoumtzmXHWQVpNWaNHXznsoqnpAyvvGj5yI
	 GsbTpI5Pw8BFlXfOaiYtB/v3yli0SWZro/bfBubu4ipLeOj5iQXbSNVqg9kwvBaeKJ
	 DImrL/wDafb7rFrsUCW6khQI35ty7RUgDMG/rHASpDGrbngQyuWYTMtCYUg5QimKoW
	 wJkILYqXlvHUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hZtIhLWRIzHR; Mon,  3 Jul 2023 10:33:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6F0640BA7;
	Mon,  3 Jul 2023 10:33:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6F0640BA7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB8D11BF30C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 10:32:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8391F408AF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 10:32:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8391F408AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zo4-50WEoQnR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 10:32:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C1B0405F0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C1B0405F0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 10:32:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="428890446"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="428890446"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 03:32:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="831772842"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="831772842"
Received: from gk3153-or4-r750-36948.igk.intel.com ([10.102.19.252])
 by fmsmga002.fm.intel.com with ESMTP; 03 Jul 2023 03:32:53 -0700
From: "Zaborska, Olga" <olga.zaborska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jul 2023 12:32:30 +0200
Message-Id: <20230703103230.89884-1-olga.zaborska@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688380375; x=1719916375;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xsjsJdMQtKRvv77lJMV45cLpadmiJjfVDrn3IRzr7kA=;
 b=gaODAuQz10+2gbnAh+I5jWY7MU0t2Sud54tY5TKwrTTgbXZHiRYb3YeW
 D3cDw6DRFNa9uY4ptJTmiMZr2UVulByNHjbY/YXUH6xvQmnKuD4bQwx6n
 AeCF71dp83wYwLrOCPNSsssZnziTAFIV8+24n7zVf0Bm7r3SoCW6jz3SK
 0ky8liVCbAxdf0qtlJLaUBhs4mzhedGPK30GAaxbdG2h4CSApumdoWIQX
 TQOxYHppo9lhHks+zdWuxYj0/CrwbKwa35HztzWrnraESAtAvSZLoQU4X
 itb+w/Sr6ekGDPTPqSDQhNNfw8bgRDbwhlS4A3YIs62w2EaXJf19J7QQx
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gaODAuQz
Subject: [Intel-wired-lan] [PATCH iwl-net v2] igbvf: Change IGBVF_MIN_TXD
 and IGBVF_MIN_RXD to allow change of rx/tx value between 64 and 80
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
Cc: Olga Zaborska <olga.zaborska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Olga Zaborska <olga.zaborska@intel.com>

There is currently a bug where when setting the rx/tx value between 64 and 80 it automatically
sets to 80, this will be fixed by changing IGBVF_MIN_TXD and IGBVF_MIN_RXD.
Based on commit:
Link: https://sourceforge.net/p/e1000/mailman/message/19194160/
All e1000 devices can use as low as 64 descriptors. This change will unify igbvf with other drivers.

Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual functions")
Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
v1->v2 fixed commit title and message
---
 drivers/net/ethernet/intel/igbvf/igbvf.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h b/drivers/net/ethernet/intel/igbvf/igbvf.h
index 57d39ee00b58..7b83678ba83a 100644
--- a/drivers/net/ethernet/intel/igbvf/igbvf.h
+++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
@@ -39,11 +39,11 @@ enum latency_range {
 /* Tx/Rx descriptor defines */
 #define IGBVF_DEFAULT_TXD	256
 #define IGBVF_MAX_TXD		4096
-#define IGBVF_MIN_TXD		80
+#define IGBVF_MIN_TXD		64
 
 #define IGBVF_DEFAULT_RXD	256
 #define IGBVF_MAX_RXD		4096
-#define IGBVF_MIN_RXD		80
+#define IGBVF_MIN_RXD		64
 
 #define IGBVF_MIN_ITR_USECS	10 /* 100000 irq/sec */
 #define IGBVF_MAX_ITR_USECS	10000 /* 100    irq/sec */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
