Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA2373518A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 12:09:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 079FC6119F;
	Mon, 19 Jun 2023 10:09:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 079FC6119F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687169361;
	bh=4x5Y0133IB/zAO0h6GnkMbKgp71RiKW1gh2TLX1oKMY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l8fRTuX6PS/XOuewpMTtXU2jLSB/k5mjVIeLNXEJygZdEahQ5Dno+VDNYoaU9gRxy
	 SGuF44CNl9nGD+9733OtwuBpYdMap2D5R6zXld1LGQKUVEHi2n6Oti/geq9m2HN6+p
	 II15jNrjg/WWAz7ICCI8iSYdS1mloGHdBmPn+6Leke7a1QlcgAqo6OJa3P66OfibOI
	 V8kQeckbe1QcSVIr7/F4wkX5aN0ORUeEcKTcxi++dpFMNy1HvYzrlxne2PtT6oKtIj
	 sopyaAVp2HiYUqH0VWgCeDMW4f4cColZMfxVzBlJVC6LWN2GBIMJ2/MlYVupTVArI6
	 kImcjBeqtiY2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b-nT9jg5LYdK; Mon, 19 Jun 2023 10:09:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEE0260761;
	Mon, 19 Jun 2023 10:09:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEE0260761
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F0E391BF8B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C8B4740970
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8B4740970
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPnjQrgBwZ0P for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 10:09:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C1CF40967
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C1CF40967
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:09:09 +0000 (UTC)
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
Date: Mon, 19 Jun 2023 12:08:53 +0200
Message-Id: <20230619100858.116286-2-florian.kauer@linutronix.de>
In-Reply-To: <20230619100858.116286-1-florian.kauer@linutronix.de>
References: <20230619100858.116286-1-florian.kauer@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1687169346;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1jNWX8QcZCpCofdya0P9KDQCt/K+OixGuaqVhm+2fOU=;
 b=YVMVtPVYbpoT+azuBmYHugphzeY68s7BUuMWyI3DgMGZ99jjxK46dBcZsi8Z2j2V/O96kd
 E2481yjeU6MJi8Bg+pqkOLeZYfZanzSTjJDW4wrKVO4yCaLQqkOputF+Ah2OMlN0PZLz/S
 7AJ8r4PsTkXIYL5sQJDzBe3lxiUeAJKLIiwmtzEp1DvyIDoCKerJbRA8YRS/6N6XHeMs2o
 xVCaiFjwuLjexJ4JtzNVz4zpKEY5g7eGS5DCR1bQWSBBCfVW4FCnqLKEMJ2H7NTXVtRkLw
 hCQHKQ6tz6QFYzZFgHK1wFWwK0MDROoVYL+B1xj45X3P4H0w1BncY4K9DW0wLQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1687169346;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1jNWX8QcZCpCofdya0P9KDQCt/K+OixGuaqVhm+2fOU=;
 b=Z4AJ1A2N5oEYHXaIWPstAh0ZgB+yJXiZwgZ2+f8ePvcJ7XvTHngj12+2wiKH3OyriKNOlq
 q+K5upR1BRZbzaBA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=YVMVtPVY; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=Z4AJ1A2N
Subject: [Intel-wired-lan] [PATCH net v2 1/6] igc: Rename qbv_enable to
 taprio_offload_enable
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

In the current implementation the flags adapter->qbv_enable
and IGC_FLAG_TSN_QBV_ENABLED have a similar name, but do not
have the same meaning. The first one is used only to indicate
taprio offload (i.e. when igc_save_qbv_schedule was called),
while the second one corresponds to the Qbv mode of the hardware.
However, the second one is also used to support the TX launchtime
feature, i.e. ETF qdisc offload. This leads to situations where
adapter->qbv_enable is false, but the flag IGC_FLAG_TSN_QBV_ENABLED
is set. This is prone to confusion.

The rename should reduce this confusion. Since it is a pure
rename, it has no impact on functionality.

Fixes: e17090eb2494 ("igc: allow BaseTime 0 enrollment for Qbv")
Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc.h      | 2 +-
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 34aebf00a512..4c7a1e92ce4c 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -185,7 +185,7 @@ struct igc_adapter {
 
 	ktime_t base_time;
 	ktime_t cycle_time;
-	bool qbv_enable;
+	bool taprio_offload_enable;
 	u32 qbv_config_change_errors;
 
 	/* OS defined structs */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index fa764190f270..dda057a3b5e3 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6075,7 +6075,7 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	size_t n;
 	int i;
 
-	adapter->qbv_enable = qopt->enable;
+	adapter->taprio_offload_enable = qopt->enable;
 
 	if (!qopt->enable)
 		return igc_tsn_clear_schedule(adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 94a2b0dfb54d..c6636a7264d5 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -37,7 +37,7 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
 {
 	unsigned int new_flags = adapter->flags & ~IGC_FLAG_TSN_ANY_ENABLED;
 
-	if (adapter->qbv_enable)
+	if (adapter->taprio_offload_enable)
 		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
 
 	if (is_any_launchtime(adapter))
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
