Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A1AC36B9C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 17:36:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D9A961279;
	Wed,  5 Nov 2025 16:36:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 25piE9cNa8on; Wed,  5 Nov 2025 16:36:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 949E260BCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762360578;
	bh=2iY547+j8hzuF45PBHEottqawhMie7CZqRUPPaOz1bM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fwS6bhXtQhr5K9dHCDXLsQ8BqhUEU0IqPPfbbYdTtjdjTG837pTh5YEE/Tm4j35b+
	 4W1yyEqEzO8YzR8UnxJMLu+DeE6TzHM491wrx7L3IjywmQuHuqz7OHWEndMPA3HwL1
	 lQt/VwxQpWOXnh3OOVLZx8mXSV8/TnP5CBphzOBtrGp2CfZ3s6Rf6Eey4HOwUnYpz/
	 KHnsCs68FhX+lSe29vrjuOYOGZAX1KBnSReDW0MO8sOoKdx2liab9yiWZ1ARwk4oBI
	 hx+6kKFIzvqHlOuTFu4U3GEYvYvadF0o1l9v8vm957yMVBJr9dKfx0veuUdQ069ZM/
	 8FWf9slvZ2VcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 949E260BCC;
	Wed,  5 Nov 2025 16:36:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8706B462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 12:34:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EDB40605C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 12:34:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A9cYIK2E-Y_m for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 12:34:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=natalia.wochtman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 39432605C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39432605C4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39432605C4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 12:34:40 +0000 (UTC)
X-CSE-ConnectionGUID: yPujFP+DTJKB1N2mtjPpPg==
X-CSE-MsgGUID: o1vN4iC6S2e5Hv/uBi9V8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="52027891"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="52027891"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 04:34:40 -0800
X-CSE-ConnectionGUID: bLHsCdiYQSeGfCcLX5useA==
X-CSE-MsgGUID: bbBEwNWOQ6aMlLlKnzXlXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="191734435"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 05 Nov 2025 04:34:39 -0800
Received: from korred.igk.intel.com (korred.igk.intel.com [10.237.113.2])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 17D8F28798;
 Wed,  5 Nov 2025 12:34:38 +0000 (GMT)
From: Natalia Wochtman <natalia.wochtman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, maciej.fijalkowski@intel.com,
 Natalia Wochtman <natalia.wochtman@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed,  5 Nov 2025 13:21:47 +0100
Message-ID: <20251105122147.12159-1-natalia.wochtman@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 05 Nov 2025 16:36:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762346081; x=1793882081;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s+Hmi6t44VWKMMKuarLYfvp86vaNLRxUOKz2NtS36pg=;
 b=CG4puGY1/ruH/RPVC1HokGJcU0PiA7R5HfmdepPcT1j7419nce6XFFmt
 SBcUb19f6RZDce1APdrGGMAYVnhvyfeb9ORcF9+dz+wT8EYa7FqpS3yL6
 RQpLruKNXOM2AQhz6tX9Lj3kQtu0dUQY2VIqmlyMaZTae0GodkdPv6nfc
 X4q/ytyVrLXhMbzRbAEKhtwfaOWG8yh6PgDOuZoBSYDwHNekxRzc8vFuR
 4bNZcrj/EG5yD70V0n26OK8ruUNxRCyBRu3POqlIUUlCyJnvjaNrsPbn5
 zz4kR7j/es/j9pz3En4xFwA0SXjmo2NFrpUEhXgBqu2935hxifMf+IdMp
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CG4puGY1
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbevf: ixgbevf_q_vector
 clean up
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Flex array should be at the end of the structure and use [] syntax

Remove unused fields of ixgbevf_q_vector.
They aren't used since busy poll was moved to core code in commit
508aac6dee02 ("ixgbevf: get rid of custom busy polling code").

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Natalia Wochtman <natalia.wochtman@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index 039187607e98..516a6fdd23d0 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -241,23 +241,7 @@ struct ixgbevf_q_vector {
 	char name[IFNAMSIZ + 9];
 
 	/* for dynamic allocation of rings associated with this q_vector */
-	struct ixgbevf_ring ring[0] ____cacheline_internodealigned_in_smp;
-#ifdef CONFIG_NET_RX_BUSY_POLL
-	unsigned int state;
-#define IXGBEVF_QV_STATE_IDLE		0
-#define IXGBEVF_QV_STATE_NAPI		1    /* NAPI owns this QV */
-#define IXGBEVF_QV_STATE_POLL		2    /* poll owns this QV */
-#define IXGBEVF_QV_STATE_DISABLED	4    /* QV is disabled */
-#define IXGBEVF_QV_OWNED	(IXGBEVF_QV_STATE_NAPI | IXGBEVF_QV_STATE_POLL)
-#define IXGBEVF_QV_LOCKED	(IXGBEVF_QV_OWNED | IXGBEVF_QV_STATE_DISABLED)
-#define IXGBEVF_QV_STATE_NAPI_YIELD	8    /* NAPI yielded this QV */
-#define IXGBEVF_QV_STATE_POLL_YIELD	16   /* poll yielded this QV */
-#define IXGBEVF_QV_YIELD	(IXGBEVF_QV_STATE_NAPI_YIELD | \
-				 IXGBEVF_QV_STATE_POLL_YIELD)
-#define IXGBEVF_QV_USER_PEND	(IXGBEVF_QV_STATE_POLL | \
-				 IXGBEVF_QV_STATE_POLL_YIELD)
-	spinlock_t lock;
-#endif /* CONFIG_NET_RX_BUSY_POLL */
+	struct ixgbevf_ring ring[] ____cacheline_internodealigned_in_smp;
 };
 
 /* microsecond values for various ITR rates shifted by 2 to fit itr register
-- 
2.45.2

