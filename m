Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 592565F5BA7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 23:23:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC14460FDB;
	Wed,  5 Oct 2022 21:23:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC14460FDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665004995;
	bh=4qI+uesF48y3JWNSTu+V6BclV2y96vWnHKTvydEAS+8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7Apfali1GRyR+qjhKodMKbnryYbs4VFWV46XXF1vAnwjHPEmOE7Uv3YohjSJcqzl7
	 KFcyRuBIBRtfCqFVXzrdAGLr1Qed30vwhNYIkfHzhUndwHaPugQIKPIll5dQ6TmXLZ
	 hrJShbizSquJjwnA/xKYiNx3ZNgCVVSAmfWkQFTKaibgOfy5FwgQAmATtw4EpQT8Ki
	 UvT2aImsmetE25ITNAhemTckq0bwl4cT7e1QFYKcxrqZVfTF7fIwBHgZA8J/ULjeZC
	 T4jCc2Y4AxS3s7v+JUKIgVBKvtM0OTgpdgs+uEFsT0wL+Ek39g9D3Py5QU1M3UDFeN
	 e1zI1SGqbv4Wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1eWTu8lkooV9; Wed,  5 Oct 2022 21:23:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C56F160C20;
	Wed,  5 Oct 2022 21:23:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C56F160C20
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FF791BF301
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2AD4260C20
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AD4260C20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qNTAxfb_46pn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 21:22:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EBC060C1A
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EBC060C1A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:58 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id b15so8737732pje.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 14:22:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date;
 bh=SlseP4dgiApJQK/x/PEYzxG6w1TjAk1Gik0zr1f0WYA=;
 b=HaD2g6aYdNpypLul+fI2/X+Sc3GFmpDIsSDzlNehqr6WuIyomtZ4nHxkZcGVQ1rnIG
 hgbyxN/cv2QT4Q72FWjQjkKVVF62+8/ehefQguz/+J4pLASZvS/zYxe7/rUZfz4aTp+x
 5xd3BvkyNlr/hC5x1eIiMx+i4wIyKSy3WrMqEZ2wfdjyl9pnWJHNEuVAz7pLywgTtSxJ
 NYwWX0zX1QNSyJTLEugcgCiE09QJww8iXQw+84RSHwyCT9hpDTyMRqTkNi9AeY5r3pzI
 MKhH1pMllAAlVhptxYGBEiHWFA1afX9iMvCOP1nx9JhbQqWGcxwfto0irkLjeNNnYF3Q
 8sjg==
X-Gm-Message-State: ACrzQf1qQ/f9b9gNh28ntoHyvy/a/8f4rmYp5kcRTr9C4lrMJh6Mlk/Y
 dWRWIJnAObz54vSyb4dXg/ROu0ouGB3JKuzHVzcB1U7063iOYOl6069NjQ7oFiRvBfP4Ybrt5/J
 cobvCecrQU+smU7c5ykSBHhM5b1nUxh/vrT/WoZGXgZNRt7O4CloD4KGtneympoREI7vCuwpNU1
 dCGWi4Sw==
X-Google-Smtp-Source: AMsMyM6U43yiWbXNCsWZlFnJdfPvB5IEMVAeI7HcjhcAYH+6iwM8T7SORXoUgM3wjEKBr78wAOr2vQ==
X-Received: by 2002:a17:902:f545:b0:178:b4c3:eab6 with SMTP id
 h5-20020a170902f54500b00178b4c3eab6mr1391848plf.148.1665004977368; 
 Wed, 05 Oct 2022 14:22:57 -0700 (PDT)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 q12-20020a170902dacc00b0017f7b6e970esm2404666plx.146.2022.10.05.14.22.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 14:22:56 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Oct 2022 14:21:53 -0700
Message-Id: <1665004913-25656-5-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
References: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date;
 bh=SlseP4dgiApJQK/x/PEYzxG6w1TjAk1Gik0zr1f0WYA=;
 b=fXk4yjR2HNMxdxzSQjs7KO2j7GunI93mT0OnU17esOpjMqql4deqlSuuX/XGlxqEnJ
 tNy9MlmOJhQZAt9YSF0uhCfIgWNXCBHpNYU/DoKcdGu/k7d/G1Vd48aUurBM0BUoWD8e
 t7/9w2qqxbLIOWewPSG0DjqiKxZw7vlYguwTA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=fXk4yjR2
Subject: [Intel-wired-lan] [next-queue v2 4/4] i40e: Add i40e_napi_poll
 tracepoint
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
Cc: netdev@vger.kernel.org, Joe Damato <jdamato@fastly.com>, kuba@kernel.org,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a tracepoint for i40e_napi_poll that allows users to get detailed
information about the amount of work done. This information can help users
better tune the correct NAPI parameters (like weight and budget), as well
as debug NIC settings like rx-usecs and tx-usecs, etc.

An example of the output from this tracepoint:

$ sudo perf trace -e i40e:i40e_napi_poll -a --call-graph=fp --libtraceevent_print

[..snip..]

388.258 :0/0 i40e:i40e_napi_poll(i40e_napi_poll on dev eth2 q i40e-eth2-TxRx-9 irq 346 irq_mask 00000000,00000000,00000000,00000000,00000000,00800000 curr_cpu 23 budget 64 bpr 64 rx_cleaned 28 tx_cleaned 0 rx_clean_complete 1 tx_clean_complete 1)
	i40e_napi_poll ([i40e])
	i40e_napi_poll ([i40e])
	__napi_poll ([kernel.kallsyms])
	net_rx_action ([kernel.kallsyms])
	__do_softirq ([kernel.kallsyms])
	common_interrupt ([kernel.kallsyms])
	asm_common_interrupt ([kernel.kallsyms])
	intel_idle_irq ([kernel.kallsyms])
	cpuidle_enter_state ([kernel.kallsyms])
	cpuidle_enter ([kernel.kallsyms])
	do_idle ([kernel.kallsyms])
	cpu_startup_entry ([kernel.kallsyms])
	[0x243fd8] ([kernel.kallsyms])
	secondary_startup_64_no_verify ([kernel.kallsyms])

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e_trace.h | 49 ++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c  |  3 ++
 2 files changed, 52 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_trace.h b/drivers/net/ethernet/intel/i40e/i40e_trace.h
index b5b1229..7d7c161 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_trace.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_trace.h
@@ -55,6 +55,55 @@
  * being built from shared code.
  */
 
+#define NO_DEV "(i40e no_device)"
+
+TRACE_EVENT(i40e_napi_poll,
+
+	TP_PROTO(struct napi_struct *napi, struct i40e_q_vector *q, int budget,
+		 int budget_per_ring, unsigned int rx_cleaned, unsigned int tx_cleaned,
+		 bool rx_clean_complete, bool tx_clean_complete),
+
+	TP_ARGS(napi, q, budget, budget_per_ring, rx_cleaned, tx_cleaned,
+		rx_clean_complete, tx_clean_complete),
+
+	TP_STRUCT__entry(
+		__field(int, budget)
+		__field(int, budget_per_ring)
+		__field(unsigned int, rx_cleaned)
+		__field(unsigned int, tx_cleaned)
+		__field(int, rx_clean_complete)
+		__field(int, tx_clean_complete)
+		__field(int, irq_num)
+		__field(int, curr_cpu)
+		__string(qname, q->name)
+		__string(dev_name, napi->dev ? napi->dev->name : NO_DEV)
+		__bitmask(irq_affinity,	nr_cpumask_bits)
+	),
+
+	TP_fast_assign(
+		__entry->budget = budget;
+		__entry->budget_per_ring = budget_per_ring;
+		__entry->rx_cleaned = rx_cleaned;
+		__entry->tx_cleaned = tx_cleaned;
+		__entry->rx_clean_complete = rx_clean_complete;
+		__entry->tx_clean_complete = tx_clean_complete;
+		__entry->irq_num = q->irq_num;
+		__entry->curr_cpu = get_cpu();
+		__assign_str(qname, q->name);
+		__assign_str(dev_name, napi->dev ? napi->dev->name : NO_DEV);
+		__assign_bitmask(irq_affinity, cpumask_bits(&q->affinity_mask),
+				 nr_cpumask_bits);
+	),
+
+	TP_printk("i40e_napi_poll on dev %s q %s irq %d irq_mask %s curr_cpu %d "
+		  "budget %d bpr %d rx_cleaned %lu tx_cleaned %lu "
+		  "rx_clean_complete %d tx_clean_complete %d",
+		__get_str(dev_name), __get_str(qname), __entry->irq_num,
+		__get_bitmask(irq_affinity), __entry->curr_cpu, __entry->budget,
+		__entry->budget_per_ring, __entry->rx_cleaned, __entry->tx_cleaned,
+		__entry->rx_clean_complete, __entry->tx_clean_complete)
+);
+
 /* Events related to a vsi & ring */
 DECLARE_EVENT_CLASS(
 	i40e_tx_template,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 8a0d4fd..cda7f59 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2752,6 +2752,9 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 			clean_complete = false;
 	}
 
+	trace_i40e_napi_poll(napi, q_vector, budget, budget_per_ring, rx_cleaned,
+			     tx_cleaned, clean_complete, tx_clean_complete);
+
 	/* If work not completed, return budget and polling will return */
 	if (!clean_complete) {
 		int cpu_id = smp_processor_id();
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
