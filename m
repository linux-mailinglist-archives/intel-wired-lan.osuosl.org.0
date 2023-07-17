Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 466847560F7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 12:58:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E024E812E7;
	Mon, 17 Jul 2023 10:58:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E024E812E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689591533;
	bh=jYp5a3jY59VgON7HldwqCXzIU0MQP7hT9gKhrjlhxkE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=afAtcpE85HXrqp91U7mxrUkb9ycmib8O/3xFWDzLwZHiLdHWqqNFEBili7CSR2j+5
	 Q9iBEgz9W1lGahyqDTq/yfc4EAuwDHQI2Igp6Ih1jIVUBSq8coJySyAH2LYLuWYQ8H
	 xwCMOPQsOSVwbjCYr9gVG0g6/hp/cLgbK7VmEdGH0auGjYMnM8L8vOIIFxv0MBNukg
	 /vyhb5NCGrQvnFGHk+yUS5aQtIiGvI5iJN40x78vgpZHE9ZBNYRM2CbGDwEL0ZE5Mg
	 19ySBvwDmjOp/mVnnCDkbcNIs7IgxHzhgepudA7BqJq5bMcK1kETClDmoWN663MOt6
	 zrsbyK2G+iGtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wEN8y3wVGGgd; Mon, 17 Jul 2023 10:58:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF0518121A;
	Mon, 17 Jul 2023 10:58:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF0518121A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F0C561BF38D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 10:58:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C922F407D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 10:58:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C922F407D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 87Zk9jZVMnaV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 10:58:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17993404E8
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 17993404E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 10:58:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="452273460"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="452273460"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 03:58:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="700474632"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="700474632"
Received: from gk3153-or4-r750-36948.igk.intel.com ([10.102.19.252])
 by orsmga006.jf.intel.com with ESMTP; 17 Jul 2023 03:58:45 -0700
From: "Zaborska, Olga" <olga.zaborska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Jul 2023 12:58:11 +0200
Message-Id: <20230717105812.298188-3-olga.zaborska@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230717105812.298188-1-olga.zaborska@intel.com>
References: <20230717105812.298188-1-olga.zaborska@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689591527; x=1721127527;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4+vS2sV0pXKM4Vir0ZntOhEBIIUt1Z7NNM4AAUsGGmQ=;
 b=nAZMSyegqmKR0817iKZECZKrZ/LINen49G3GDYSe732GxZH4ID5St5Ko
 tsb2VqxHp2W3f5zpsfRmLrZ+QSChNOxPmh85uWPheQx4JlcCi6x98lhgH
 X0KXClEhiV3/AlQ2cvqrAkbqnKYr9wGD/k9OZTx5fYIIfy7Iyf5s7vZUs
 Y9Kso3Xu0009MjaaSOnOUS1czT+fcLwfvGDKpbrdsgghxVyXPRR7RZhCH
 WCOlNwYibcO+Yq4M1O9qKbFEECXm7GJSMJ8UmAbWDwz7GwEWx3dnFZEJ2
 a+QJ1K1AgaVp/BA6PZQsdwJ9KcUrrQp3LGTLIttgi+srSk1Sw+Zx7emAs
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nAZMSyeg
Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/3] igbvf: Change IGBVF_MIN to
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

From: Olga Zaborska <olga.zaborska@intel.com>

Change the minimum value of RX/TX descriptors to 64 to enable setting the rx/tx value
between 64 and 80. All igbvf devices can use as low as 64 descriptors.
This change will unify igbvf with other drivers.
Based on commit 7b1be19 ("e1000e: lower ring minimum size to 64")

Fixes: d4e0fe0 ("igbvf: add new driver to support 82576 virtual functions")
Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
---
 v1->v2 fixed commit title and message
 v2->v3 fixed commit title and message, added changes for igb and igc
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
