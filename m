Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDE1760CB0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 10:11:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA0DA4063C;
	Tue, 25 Jul 2023 08:11:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA0DA4063C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690272687;
	bh=allFbS74HD9m4i7BaFNFXNMDcRd2P1DB2P8T8a8AddI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rDwI0ZDsSNdXTeWbj9C0YuMYSHqmg0Jmz6/0vM1WXCpJZGgC6nd0E1++56JVGAzpc
	 GquyLGhiTYgD18BLa+Jarkm4HMoxtKLQO8+T1xC5TM16xUYON/AkOGkfrTe0A2NTGB
	 AbgZIllgQvkoHiSwBsGcABD8GnB/V5oR1jPlibo0tF3oo2wy3LoGZ6R/T7/GJaaJ/5
	 E26GVUSqIV8otxqFAfyQIO3JPttQXIhOyjvM/n1onVfqMB2b7mKPr/fiaLEm1AupHZ
	 KiDx1zsOoxALCOXsPppSkrCWQ0nLBfgoZ1CV7k8PAxAU8DPZxMkMzvj99mF77CIoGW
	 m+6Nq+HM901sA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id febkruZeKeUo; Tue, 25 Jul 2023 08:11:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9845F40260;
	Tue, 25 Jul 2023 08:11:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9845F40260
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECF871BF295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 08:11:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4E9E41527
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 08:11:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4E9E41527
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EOGa1Y5SMIMo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 08:11:15 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 012E2409AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 08:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 012E2409AA
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="367675287"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="367675287"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 01:11:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="869378390"
Received: from gk3153-or4-r750-36948.igk.intel.com ([10.102.19.252])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2023 01:11:15 -0700
From: Olga Zaborska <olga.zaborska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Jul 2023 10:10:57 +0200
Message-Id: <20230725081058.92158-3-olga.zaborska@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230725081058.92158-1-olga.zaborska@intel.com>
References: <20230725081058.92158-1-olga.zaborska@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690272674; x=1721808674;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AqJqDAEnsZGCSIFkajnIdB27jd3VGPcGmnPl1n2e0vg=;
 b=RcuveIKvHyyLrLRzyr1DD+9yM1b0DdLcI68zbnQZe+cJfZdl542b82nF
 jsoXDWeMo6MLucky+Xjyyrt0N7lFmincR9mUQqM29XF4AiBFD7amYmJAL
 +p9unXxdPu9saRvSdlFbsfyavui0XBaj7VzJx6X2/3mMKn2JYoJmWjJ2U
 BxKbruJ4Hh1zDz2+r0YaOB7gXQ81AEI752s43ZqhTaGHpMESuEela4BaS
 b3j+L7kFIOKkv5gq5WIUF4MFGO/hpfHwM3K/aRC/ag4IjYXTHHrHyRTfH
 4k+b+pr4Yl2Natf3savsRNm1Isk8zgfDQPJSofTV2qRIkgZeaKvwBuQry
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RcuveIKv
Subject: [Intel-wired-lan] [PATCH iwl-net v4 2/3] igbvf: Change IGBVF_MIN to
 allow set rx/tx value between 64 and 80
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

Change the minimum value of RX/TX descriptors to 64 to enable setting the rx/tx value
between 64 and 80. All igbvf devices can use as low as 64 descriptors.
This change will unify igbvf with other drivers.
Based on commit 7b1be1987c1e ("e1000e: lower ring minimum size to 64")

Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual functions")
Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
---
v1->v2 fixed commit title and message
v2->v3 fixed commit title and message, added changes for igb and igc
v3->v4 fixed commit message
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
