Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B47735191
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 12:09:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1EF7F611C2;
	Mon, 19 Jun 2023 10:09:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EF7F611C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687169378;
	bh=326usz9lz7wOY2JQM3s6YdMgJ9FDngn986UlHgXK1zg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4QAMPzpVgK/4fcZLfwfBllzGjnlHZQA80Qx5pL8JBFrkulo/oWcBrbmQOu2uAPhKh
	 dbV9VBcqL8XLtlA2QdldtAM8nU2+SMPHbSCHG8Vsk5xwCl0SWsFEjguvdlBLzkXNDT
	 pyNcEEGPM4hPmWX4mn5Kk6933s4VfgRspspVkEAq8EcbySGOvDMzFKd38EcAtR6nDU
	 mm3tdHpvL635wRQb+m9TlTbhkalazh0DqYD8e2KikNzP8ZsZSsrBHOb9ZjkD5AT0qg
	 5p1ewhkB2yCTgVZ5fj+dNCRQduJJzXCZdzNjMqBzYmUzXJw5kWWLA4B1cUB1hirxUa
	 3HkoFc/m7ZAQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fw-gqFGQ2NpP; Mon, 19 Jun 2023 10:09:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1686061190;
	Mon, 19 Jun 2023 10:09:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1686061190
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A1B51BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:09:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7414E81604
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:09:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7414E81604
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U4EiMrIplwYq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 10:09:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4DC881757
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B4DC881757
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:09:11 +0000 (UTC)
From: Florian Kauer <florian.kauer@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tan Tee Min <tee.min.tan@linux.intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>,
 Malli C <mallikarjuna.chilakala@intel.com>
Date: Mon, 19 Jun 2023 12:08:57 +0200
Message-Id: <20230619100858.116286-6-florian.kauer@linutronix.de>
In-Reply-To: <20230619100858.116286-1-florian.kauer@linutronix.de>
References: <20230619100858.116286-1-florian.kauer@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1687169348;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ifTkOc+IePMxuKDemBz16w3UeJ8myDaZex1J+2pMJyw=;
 b=O1sb0RIn6Hy6jCcn3trgyXlbi2F7M/tZc1oHs55EChHsMkOVxTWEvpmuHRQD3/pEccJKOK
 ESPzMyNi+0R4oVNLy1dZE9I+YAf72swbc0Hr4tWQkM6h6t7IJHZXMCn8EyprCNmUavhT+9
 PyD1MF5FEOLJ42V9fgvPhdq67drLFP7CpJvi+QdHl8SMpz55xilEZDkY7ITwh3vIbGZflN
 etl7jQsCevFxi0nQItYAiuqUXVIKouU7RibrA4IZsWrJHu95WXIDVxnd/MR76PbP5246Yb
 qdIULppA+9QBImqLyo9oK96FGBjP9ZsO3fKw65pU1ATkxQbpFqSf0ozxpWH4MA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1687169348;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ifTkOc+IePMxuKDemBz16w3UeJ8myDaZex1J+2pMJyw=;
 b=mvBdAF/iCI7Y3/a7COxWzds9FSCtuMIHxL8z2+O5kNMffu0l3Cxtn9idwFTvT90lVFr1L6
 TJHzDFGhJf1yPRBQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=O1sb0RIn; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=mvBdAF/i
Subject: [Intel-wired-lan] [PATCH net v2 5/6] igc: Fix launchtime before
 start of cycle
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It is possible (verified on a running system) that frames are processed
by igc_tx_launchtime with a txtime before the start of the cycle
(baset_est).

However, the result of txtime - baset_est is written into a u32,
leading to a wrap around to a positive number. The following
launchtime > 0 check will only branch to executing launchtime = 0
if launchtime is already 0.

Fix it by using a s32 before checking launchtime > 0.

Fixes: db0b124f02ba ("igc: Enhance Qbv scheduling by using first flag bit")
Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 9c04df900b59..565c72bd737d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1017,7 +1017,7 @@ static __le32 igc_tx_launchtime(struct igc_ring *ring, ktime_t txtime,
 	ktime_t base_time = adapter->base_time;
 	ktime_t now = ktime_get_clocktai();
 	ktime_t baset_est, end_of_cycle;
-	u32 launchtime;
+	s32 launchtime;
 	s64 n;
 
 	n = div64_s64(ktime_sub_ns(now, base_time), cycle_time);
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
