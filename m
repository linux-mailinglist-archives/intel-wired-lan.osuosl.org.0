Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDB87560F6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 12:58:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9469812C3;
	Mon, 17 Jul 2023 10:58:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9469812C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689591528;
	bh=6iuIR87mI34fJMyHDzC2dvJ1BTdOmEIu9UvM1NocLTI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NaPDpG1XWPmbfvbN3/YFdzD7yOMtGqokomjzcUD+glj+ApPlRSBGr/rNknwpoOQZW
	 Hd7JZ8BJD4pFPpkizQub4JoeIegYM0qgBdH2bNbuofTx9A3akRuTWILJZEV/FIg+WA
	 VhPk3fq2UuXY1qXv00eo084kn8aaBbjDoKZqzGEhLAnqh+6eBfXJlnwqT4o4fhZ8oj
	 3XD8lJfYIvj8NUOsvnLtah3uiSXv/ZucsbKIF9zS+ASxFB9mfjMK037ZQsLqzGu1QC
	 mweDD8eOB/qS2+/TQ6JpNaKWDS6wsexf7/W7BLxRvcfcfZq30cgs9F8gg4CYQDsIJa
	 fhZmD3lShtJaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q8ri4ast7vBp; Mon, 17 Jul 2023 10:58:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC5D981098;
	Mon, 17 Jul 2023 10:58:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC5D981098
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 429691BF38D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 10:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 280A9407D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 10:58:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 280A9407D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Ied6eY5_gFv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 10:58:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55F28404E8
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55F28404E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 10:58:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="452273448"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="452273448"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 03:58:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="700474628"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="700474628"
Received: from gk3153-or4-r750-36948.igk.intel.com ([10.102.19.252])
 by orsmga006.jf.intel.com with ESMTP; 17 Jul 2023 03:58:40 -0700
From: "Zaborska, Olga" <olga.zaborska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Jul 2023 12:58:10 +0200
Message-Id: <20230717105812.298188-2-olga.zaborska@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230717105812.298188-1-olga.zaborska@intel.com>
References: <20230717105812.298188-1-olga.zaborska@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689591522; x=1721127522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OYZtcmWiFSFgwfSA4Y3ZZFgedOtZunvOakkttqx2bMk=;
 b=V+z9gSuMxFUlcoDBTuLdv1P1UrNaz0zqlY8xKKXOtPEzmD8hDWlYpT7K
 YfKRxZhi9PjPn+6GOwn5nRDeOT5PVIsAyqO3FxFt3SA9g/fiXHIeFfRGw
 EkbEpWsaEZyVGgluhhFjsoTnYgUNXacebGyVAdk5vp8nkQ/0TdP60BGJd
 iZUQcPeTtzXDdY4UD1KjFYsZHhFbtzjBKSzZiNwdvZ/Z8McOf7RCIvVTd
 11+FZoWPczaH8DARr64tvcZR4o11TiBVw8LXu7FE2GNEam3REx+e/AmSu
 wBQwp+cJeqrFJCQqSAiBPZCHwu9NIQ1NLQ5pSICQoXMozJDAwVN748JH3
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V+z9gSuM
Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/3] igb: Change IGB_MIN to
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
Cc: "Zaborska, Olga" <olga.zaborska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change the minimum value of RX/TX descriptors to 64 to
enable setting the rx/tx value between 64 and 80. All igb devices can use as
low as 64 descriptors. This change will unify igb with other drivers. Based
on commit 7b1be19 ("e1000e: lower ring minimum size to 64")

Fixes: 0507ef8 ("igb: Fix code comments and whitespace")
Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
---
 v1->v2 fixed commit title and message
 v2->v3 fixed commit title and message, added changes for igb and igc
---
 drivers/net/ethernet/intel/igb/igb.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 015b78144114..a2b759531cb7 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -34,11 +34,11 @@ struct igb_adapter;
 /* TX/RX descriptor defines */
 #define IGB_DEFAULT_TXD		256
 #define IGB_DEFAULT_TX_WORK	128
-#define IGB_MIN_TXD		80
+#define IGB_MIN_TXD		64
 #define IGB_MAX_TXD		4096
 
 #define IGB_DEFAULT_RXD		256
-#define IGB_MIN_RXD		80
+#define IGB_MIN_RXD		64
 #define IGB_MAX_RXD		4096
 
 #define IGB_DEFAULT_ITR		3 /* dynamic */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
