Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2D173518D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 12:09:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05701611B3;
	Mon, 19 Jun 2023 10:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05701611B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687169365;
	bh=dCi6DeM1Aq2rgnbfjV0lLf/qjMcTPp9NFCR/j0oiqAo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZtNESBpKhEE+hoWUktUKWuhnO/PoPYCjTkFMYG8YFnCdxw5+dF+b9YIMkHJfuC6qS
	 NNHodEasYq6JO2IqXgHZMze2DOqS0PaM9SVi5r34eMscsM+SsdotaHcNGkJbs9CFda
	 M6R7i2PrjFWAmPfi8nXunTPpuuS6cU2rkYABbyOYqjDBOJcTmkXzi7XcYOaVVdW2qD
	 xVsWPWn4KOEjd4hJgeMxdo2/vIXZqewj5CJrTD081CzOXSWIOP0AKsjdmUn4QCeS8n
	 Dhrk0IptUc5IiDagcTkqjXDqdLJWHVUdiQ+dfeSmmdK9695VN7Rsi521WRu/ZGbAY6
	 2YPYEqAXZmX+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id al2FwGJQKCdI; Mon, 19 Jun 2023 10:09:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4DA460899;
	Mon, 19 Jun 2023 10:09:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4DA460899
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08FB11BF947
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D634A60899
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D634A60899
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dBKp2uPfnDyG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 10:09:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1DE09607D0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1DE09607D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 10:09:10 +0000 (UTC)
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
Date: Mon, 19 Jun 2023 12:08:55 +0200
Message-Id: <20230619100858.116286-4-florian.kauer@linutronix.de>
In-Reply-To: <20230619100858.116286-1-florian.kauer@linutronix.de>
References: <20230619100858.116286-1-florian.kauer@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1687169347;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kb+TqQuWpDSxFnkQigH0nioPHCD+14Ykg/2LIhh5iUw=;
 b=yW64DHUBzxEmuMXFo0JTz6YkbpHoLbvW3P34PXtXuLlZNU8hHvqe/Uxoa+/sKZsEgmEsaC
 Q4+03OkVbEEPN/UEwyLRclVUiLlpyWCWntilqzaCOzU32ZcX7S4bh/9KghEkwmr6dLUDXW
 XvEkdeO1qUHKOgUpxStMaKQtO5qevP/Bf9GvAswGaoFPDPy+rHXHDDbQB2jkmBOfQGn0Fn
 Ey7dlqWWurfGpzU2c/zTn40HHS/J+BCV3FA0iuLthpPHVCqvSgkPqIRV/7KpnGFkO/XCps
 q2dujlvvVYRTp3yCCZxc5IVci+JJPJLwk0lkql9VFBQwWdkZPi9tPNmH8bFMjw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1687169347;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kb+TqQuWpDSxFnkQigH0nioPHCD+14Ykg/2LIhh5iUw=;
 b=urX7V1JW2N8R2tILbg5vLqusqxZBEQa4IqBUYrr9PPbYX/Dv8dHPeWbanH1iHvZB6nA++R
 NAR3yrSbh+95/ZCw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=yW64DHUB; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=urX7V1JW
Subject: [Intel-wired-lan] [PATCH net v2 3/6] igc: Handle already enabled
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
However, the check if taprio offload is already enabled for i225
(and thus -EALREADY should be returned for igc_save_qbv_schedule)
still relied on adapter->base_time > 0.

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
index 290daa5827f0..9c04df900b59 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6082,7 +6082,7 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
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
