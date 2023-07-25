Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDAE760CB2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 10:11:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8099405BE;
	Tue, 25 Jul 2023 08:11:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8099405BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690272692;
	bh=Z5c+UoR00DVgj/SgiCEqRGpliiFjjC5OFZ+7D6CHkHU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dGvAnCrTIHnOBd7leJz/Q6QYBB5EbSO43lyI4iWiQbdNqDOjJQzbqHTR7XrJpMgnT
	 l1PpIFvOQ3lfDwuuf2Us8CMeTEjVqVEE0oIjtDw9zzrStkhu4HHrksjvXl3OuRYIPM
	 rqhv93L+4jH49sr6JqRovXqxWmzYiDoVd4dibsVmjTavPlBtiCPf/R9AxvtappnnJl
	 HNCNeDe9DdHvyUXJPXujO/iYzML70XCa1F6jWxAkrLCs8rBbLOuTXoue2N/pC90H4O
	 28szToZuNRULuv9pKbOaoQL26l3SPCE8Hr/DphmewvdL1ncp5afE9583EQUTEb5ip8
	 y68enrqZBXqqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O24RD4EzgkCk; Tue, 25 Jul 2023 08:11:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA35C40523;
	Tue, 25 Jul 2023 08:11:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA35C40523
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55AE51BF295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 08:11:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DBE341527
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 08:11:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DBE341527
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XYet17U5KSml for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 08:11:16 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 64E36409AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 08:11:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64E36409AA
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="367675291"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="367675291"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 01:11:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="869378393"
Received: from gk3153-or4-r750-36948.igk.intel.com ([10.102.19.252])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2023 01:11:16 -0700
From: Olga Zaborska <olga.zaborska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Jul 2023 10:10:58 +0200
Message-Id: <20230725081058.92158-4-olga.zaborska@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230725081058.92158-1-olga.zaborska@intel.com>
References: <20230725081058.92158-1-olga.zaborska@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690272676; x=1721808676;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YhvcKym148xBKjNrKqpA0X8+qU/jZX4n97rW8TGihg8=;
 b=EkRzTS7KFIbacaadPnR+DXTx2UPMPRj2LgGoPr0NS0D21AcHBNDSUGNV
 /UFYUUhoKF4AaWEjyAwskHbDKMQXUFdZWnZv0nNAwOmq9yhLxbAHBOT+E
 OnsVDbS66Web628SS7l+lh2BYZPE+QAqNsIrGIN/AorGANC4jTFUH3LfE
 X+vb583NoimTAtR7ExnjAIaeZCBqzKWfM2ZGNQQRRGn2qfPBLLg7RW7Nd
 t0yRBZyi7w7qSidEYTu7rwfIx2UezFHvPTpBGmC7fBUT6Kwmzl96kAexp
 exSEMH/QCavIJ6ETuJEWtm7/gzDNgXZzJPU1lfIG1j/jHqpQ4VFdYLHFp
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EkRzTS7K
Subject: [Intel-wired-lan] [PATCH iwl-net v4 3/3] igb: Change IGB_MIN to
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

Change the minimum value of RX/TX descriptors to 64 to
enable setting the rx/tx value between 64 and 80. All igb devices can use as
low as 64 descriptors. This change will unify igb with other drivers. Based
on commit 7b1be1987c1e ("e1000e: lower ring minimum size to 64")

Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
---
v1->v2 fixed commit title and message
v2->v3 fixed commit title and message, added changes for igb and igc
v3->v4 fixed commit message
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
