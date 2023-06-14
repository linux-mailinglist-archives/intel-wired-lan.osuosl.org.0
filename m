Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0EE730136
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 16:07:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9255783976;
	Wed, 14 Jun 2023 14:07:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9255783976
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686751660;
	bh=U95X6+EVeWmWZxr2/ujgcdz+YsiLZ/JGG/FKjojmC2k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LpOstWwd9U7JNUC2YwiRvDePaKSbXn4302rl2OkxEok1H+EuStWvQHXYXH/gZ44W2
	 Kkg46hDgs8RKqcxIkXyaaZfPIuaLbEPyoN+kfaw20RpauPKbuR+X9h4Mq265QCXBHn
	 fvbKzr29/vWRezUIJp49Gu9+PN0GbU9/5hn7Gvn8TNabPiXyLTHcwIN324DDLmykYd
	 olucqHjDVZAjvdmSFZWHRwOY9GGJ7E7EcbKxGd3VS0FI7suZP49M8zE8RAkc3yEHvx
	 SXpekhp7BHb7OjplV/Oa5m9v/TzJSi/fb3vhjISHgjHLiLlkImKr+6Ws2go5AJEnh0
	 q3kNRNG+K/OrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yZWCBaS3dRso; Wed, 14 Jun 2023 14:07:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EA3A8376D;
	Wed, 14 Jun 2023 14:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EA3A8376D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B12D1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5AD941D82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5AD941D82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pHDHBaOHP3UZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 14:07:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA37B41C62
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA37B41C62
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 14:07:31 +0000 (UTC)
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
Date: Wed, 14 Jun 2023 16:07:09 +0200
Message-Id: <20230614140714.14443-2-florian.kauer@linutronix.de>
In-Reply-To: <20230614140714.14443-1-florian.kauer@linutronix.de>
References: <20230614140714.14443-1-florian.kauer@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1686751649;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g0kxT8UuGZDLapzulcDZLbRyKl1FZxwDwVUyDtTqgTM=;
 b=OPdXmQc2iWgpOGq0YWxc+qabH7RHLIUl2krzJQZ/IFJrv+4YJ20rpcADfaL7nS836gEDkx
 u4k0lsUWgNLXxRHbEWEZhhjGjkogxaUAsCkIWEvkhBnKbmvqfgF93pXrlB/J5N6daqZTVC
 tfpiBZ8W2Y84WiR4aYUnAFU6Bzz0bvQmh6OSgpW4ltoSQt0QDek19ddsEzhRwHslcL/K8y
 HDWQUEKdjR5Hgm/nXJ59WnPYocD/Bo2as8F4eLbD7xUoCa+BWl/KOyeCSJcNsbaHfH/vOk
 CaD/Vje7dkrxvmO0n1OLjd/grqfTXBiuSR0wnJIYR7WBuH4xExAi6Zroluz+Ag==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1686751649;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g0kxT8UuGZDLapzulcDZLbRyKl1FZxwDwVUyDtTqgTM=;
 b=fg+FJIuZ8ojp+l7iqa7Xhk+uBKHrS/vn3/BdUvbjOjMeCFYoYcnCe51pBDUV1ILSfW5SCh
 DkHLTPS/Tw0hrhCA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=OPdXmQc2; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=fg+FJIuZ
Subject: [Intel-wired-lan] [PATCH net-next 1/6] igc: Rename qbv_enable to
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
 drivers/net/ethernet/intel/igc/igc_main.c | 6 +++---
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 18d4af934d8c..4d22662e8021 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -186,7 +186,7 @@ struct igc_adapter {
 
 	ktime_t base_time;
 	ktime_t cycle_time;
-	bool qbv_enable;
+	bool taprio_offload_enable;
 	u32 qbv_config_change_errors;
 
 	/* OS defined structs */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 88145c30c919..56117846b8da 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6115,16 +6115,16 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 
 	switch (qopt->cmd) {
 	case TAPRIO_CMD_REPLACE:
-		adapter->qbv_enable = true;
+		adapter->taprio_offload_enable = true;
 		break;
 	case TAPRIO_CMD_DESTROY:
-		adapter->qbv_enable = false;
+		adapter->taprio_offload_enable = false;
 		break;
 	default:
 		return -EOPNOTSUPP;
 	}
 
-	if (!adapter->qbv_enable)
+	if (!adapter->taprio_offload_enable)
 		return igc_tsn_clear_schedule(adapter);
 
 	if (qopt->base_time < 0)
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
