Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AF073013C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 16:07:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D8748399E;
	Wed, 14 Jun 2023 14:07:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D8748399E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686751669;
	bh=Ew56X3JA7b5qk8dGobNKCqB7LdkE+4qf/MGTyJ8wItU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JCHCZkGANiLknwtgt+edKZnOOIu1G3rdBNSZrkpZ/7PuA9JuAQc8vGcbDyXOAWqZT
	 zWCCcoLaha/u9+j4PJuZPe7oGeY7PxJP/dqR0BzAC69hBwyaQWZUFcvURtPb4pMTD+
	 pPMua9XgIhTl4n/KRutv6671qKnGNqOt/1wV7TATPuFPuusodIrWXAnmMDKM7t72NB
	 5Lx4RspeYnHEUBnOrj7s2PPCU4iE7IYSoaJDPeATMaPkYZ/O/xUScDGhCjaFnjiCib
	 xXuJNSML1apJw76elVKfB2bjajBox4AAF/WZ8lz8kljPR/vY+eJkq2EPg9edws9GKA
	 aEFLXp9iUfdfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tEOF-1Kqpo2k; Wed, 14 Jun 2023 14:07:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E26E7817E4;
	Wed, 14 Jun 2023 14:07:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E26E7817E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DA9D1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6171C40C0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6171C40C0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4w72jYI28UFX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 14:07:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1E2640146
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1E2640146
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:33 +0000 (UTC)
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
Date: Wed, 14 Jun 2023 16:07:11 +0200
Message-Id: <20230614140714.14443-4-florian.kauer@linutronix.de>
In-Reply-To: <20230614140714.14443-1-florian.kauer@linutronix.de>
References: <20230614140714.14443-1-florian.kauer@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1686751651;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x6Htu7np35GOzuU2rwqMOLnSJ2z47YfJkRbHy1TCsl0=;
 b=1+8JZxple640L2i78OWj0AT4lW7BSRG5mTek6g1HCJErHIPJWpbpZbA8770+hU+H+m0tNb
 c9BnZ8Psh4CSh/9fzNZmdOxxeQ2hs3QOXMSxanhaAq7kgy8pyfqTNpd9Pkk8zVadW2EqGg
 EHQnvyIaPn/G1d5Uws7atr6Ma3KiSfbQ8PQ6+j/C7XxECFdHZtDqNkZ7XoW90Oy36m5gGm
 NDleKInVyFDzlbfFnAK6BXpJrUyKA/ggBwhnEwJbDOWCVgZ5XKbGumlrZckJHJ+B59NqtC
 vykd4w1CGkQtniToM4Nce/jXtkl0xIgA8tz4o8zkfydewwK0vEH42Qg5/ID54w==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1686751651;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x6Htu7np35GOzuU2rwqMOLnSJ2z47YfJkRbHy1TCsl0=;
 b=slM6BJwhD6d50c957awDJHQXUZNZ9MEQweTUaWR3uNdodBTiBsjm6mW1Cvxg+B6E0s8OkD
 9nYgz1dY/rUvzFBg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=1+8JZxpl; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=slM6BJwh
Subject: [Intel-wired-lan] [PATCH net-next 3/6] igc: Handle already enabled
 taprio offload for basetime 0
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

Since commit e17090eb2494 ("igc: allow BaseTime 0 enrollment for Qbv")
it is possible to enable taprio offload with a basetime of 0.
However, the check if taprio offload is already enabled (and thus -EALREADY
should be returned for igc_save_qbv_schedule) still relied on
adapter->base_time > 0.

This can be reproduced as follows:

    # TAPRIO offload (flags == 0x2) and base-time = 0
    sudo tc qdisc replace dev enp1s0 parent root handle 100 stab overhead 24 taprio \
	    num_tc 1 \
	    map 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
	    queues 1@0 \
	    base-time 0 \
	    sched-entry S 01 300000 \
	    flags 0x2

    # The second call should fail with "Error: Device failed to setup taprio offload."
    # But that only happens if base-time was != 0
    sudo tc qdisc replace dev enp1s0 parent root handle 100 stab overhead 24 taprio \
	    num_tc 1 \
	    map 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 \
	    queues 1@0 \
	    base-time 0 \
	    sched-entry S 01 300000 \
	    flags 0x2

Fixes: e17090eb2494 ("igc: allow BaseTime 0 enrollment for Qbv")
Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 122158b321d5..35ace8d338a5 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6123,7 +6123,7 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	if (qopt->base_time < 0)
 		return -ERANGE;
 
-	if (igc_is_device_id_i225(hw) && adapter->base_time)
+	if (igc_is_device_id_i225(hw) && adapter->taprio_offload_enable)
 		return -EALREADY;
 
 	if (!validate_schedule(adapter, qopt))
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
