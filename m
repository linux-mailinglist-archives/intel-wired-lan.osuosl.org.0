Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E37094F185
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 17:20:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66D8F40602;
	Mon, 12 Aug 2024 15:20:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id id8H2psP7teS; Mon, 12 Aug 2024 15:20:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A721540273
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723476000;
	bh=XJH0uVvxdSYT5zl4fGYoMB8R2frG9nofCfoIgi7N6mY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PRI2pNuYjxs4bkBqO2G1cjPzdSQBzD0ONXst7wlNo5nJWBCG4JhopUX32FZ/20+68
	 p5i+lyE7WFil4x5TTB+tADS42VuCtiidBQCNpaNVKgDCP/enRdzCbhXN1oRRVu1zqv
	 YABmLtwzIUbtWGCJ0SDVd6N+GY4ygGxair/ZrNtTtZ0mY5LbOTyHUEGHoSgbv+8g3x
	 6atSPo00B/jLiXD4aUlNUR6+wmkVWkXqCuC4eEFNUBX1zLK0uMQXV+zPV74zqYphV8
	 ZRTir7r0KiY9/eUJUc23ORsuv3P8r2EYGkZKHLwEBXgVnD2S2+Kv08PLRtoM2QJFcn
	 RqdxsY25hYvCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A721540273;
	Mon, 12 Aug 2024 15:20:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 63BCF1BF470
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 11:36:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F9A8400F3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 11:36:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id thHcRXxs2qlV for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Aug 2024 11:36:57 +0000 (UTC)
X-Greylist: delayed 455 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 11 Aug 2024 11:36:56 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D472A400D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D472A400D6
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:648:2ffe:3:a800:ff:fe99:2593; helo=balab.aueb.gr;
 envelope-from=dds@balab.aueb.gr; receiver=<UNKNOWN> 
Received: from balab.aueb.gr (balab.aueb.gr
 [IPv6:2001:648:2ffe:3:a800:ff:fe99:2593])
 by smtp2.osuosl.org (Postfix) with ESMTP id D472A400D6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 11:36:56 +0000 (UTC)
Received: by balab.aueb.gr (Postfix, from userid 1000)
 id 65CF12461C4; Sun, 11 Aug 2024 14:29:16 +0300 (EEST)
From: Diomidis Spinellis <dds@aueb.gr>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Sun, 11 Aug 2024 14:28:37 +0300
Message-Id: <20240811112837.3323753-1-dds@aueb.gr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 12 Aug 2024 15:19:56 +0000
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=aueb.gr
Subject: [Intel-wired-lan] [PATCH] Break include dependency cycle
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
Cc: Diomidis Spinellis <dds@aueb.gr>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Header ixgbe_type.h includes ixgbe_mbx.h.  Also, header ixgbe_mbx.h
included ixgbe_type.h, thus introducing a circular dependency.
Removing the second include is OK, because its includers, ixgbe_mbx.c
and ixgbe_82599.c, include ixgbe.h, which includes ixgbe_type.h.

Signed-off-by: Diomidis Spinellis <dds@aueb.gr>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
index bd205306934b..34bc042da4ed 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
@@ -4,8 +4,6 @@
 #ifndef _IXGBE_MBX_H_
 #define _IXGBE_MBX_H_
 
-#include "ixgbe_type.h"
-
 #define IXGBE_VFMAILBOX_SIZE        16 /* 16 32 bit words - 64 bytes */
 
 #define IXGBE_VFMAILBOX             0x002FC
-- 
2.30.2

