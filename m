Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9195F7C9E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 19:58:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4E1F416B1;
	Fri,  7 Oct 2022 17:58:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4E1F416B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665165523;
	bh=fyafK+s3M0bgXeeMGAVxSTHMTlakr/EcFm1vuyKWOgY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cgKvKZhjjVUGQ6cTCghhM74fimgysksk4IKHR4Qpsfsq55dRSbrTnWqmAfWWDdgxl
	 aaunC7OSDn1OZtm912LM3dJnA+FZeCM8FNPeCEknoT/zEZNTGvSgB5jLy8K6gpGm2O
	 d8DyWCZHY4xB8knI8C/BPdxWWdhtIOGlvCpXzhwd4vL8M71uQbxL000dDO4Z943IFP
	 8JbsnqTMsGginJXGjHZ1DciKGmJEfQ/2XoRgJWw8eDImOxqeFStG0zHlJI4gJZS15F
	 tYnET7sRsPJiWsd4llh0VSITJr3F4++lwjvo0I6lvYg+MigZqpt0opW2WNqOFVYvxi
	 r1z7IeiWgIBcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QkL0MqERfPJj; Fri,  7 Oct 2022 17:58:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7134741680;
	Fri,  7 Oct 2022 17:58:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7134741680
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B18F1BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56243400E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56243400E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xojnlprej-QR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 17:58:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E420400C7
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E420400C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:22 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id w2so5605970pfb.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Oct 2022 10:58:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XWctEXDnmuICt7Ye8VLx7Vw64U+4Ns0RSzzBPrWXVB4=;
 b=d9hc1v1jqkvekUNRalnqqE/FMRgD4E5C5uYXRG8XZWKUJ+J7Z5RZA5iLN1WcLPqcFV
 6O2Y5zbbFrsRMJZx/FPK8eSEzHeFBAo4tv7LcspIiZT2viN73P7RZnnQpFNbVJ7K4GTH
 2sWGt7O7lWDeQM/tefDaxXHwUxhrZHX+FcKajPDT+iCOTjUYtqwXwB20xWPQqBS3rrzu
 HM34zLrn/yD8t9W775rZ8LVWty4Vf5law1xnDbqOQk5nC3uzJ6RGu1XJrcGuxO/nQMJK
 m3qH1nwsbjfLWo+JFRX0yqNKTB8YUg6Lsrm9plO5iwCaCyKcPi0ip6R0KQsG8F//0Ffx
 oE1Q==
X-Gm-Message-State: ACrzQf2zkW0CakWhMxvKbRgG/WjiQ+rUPYsuWYk4cCxaMG1+drN0kAX4
 nVRwu9Kl9PjHD/BxmnWlko0dFQ43RpEExR1iHCpx9FZTtJIyNDc1X9Wdc6KfM/nZQmR9tJtH2+y
 bbtrX6ztaNcvBnE346wLua1k/JhG+1ZREnH9WxKL7MMQpwvlHN6c5kahpAgjtfvi8QRibPl1Ac7
 ogVh/Cxw==
X-Google-Smtp-Source: AMsMyM67hwMZVnyGZTcEu105OM7FprOnJwfjl7LTdkbF4+mdeeblnZLQBwUOIpFnj8opbMnIXbArhw==
X-Received: by 2002:a63:9141:0:b0:447:afc1:b803 with SMTP id
 l62-20020a639141000000b00447afc1b803mr5688447pge.135.1665165501468; 
 Fri, 07 Oct 2022 10:58:21 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 a29-20020a631a1d000000b0045c5a749a8fsm1937498pga.61.2022.10.07.10.58.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Oct 2022 10:58:21 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Oct 2022 10:57:27 -0700
Message-Id: <1665165447-1802-5-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
References: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=XWctEXDnmuICt7Ye8VLx7Vw64U+4Ns0RSzzBPrWXVB4=;
 b=v7TNYv4t+EMrgZz/+rMVC8vceQ4qQH1bp1eJZHItBF5bzYZK4kdpFzVPgde7AED2Q0
 OGD9XP+jF5n+aCDZE/WkKiiIwXz/AookJnSLb9XOtNZ1PzmT14BLp6rf1wQkgScQ6N/x
 GmCD6AzebOv7sAROwgxUhkHpPpAKEbw0wSLa4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=v7TNYv4t
Subject: [Intel-wired-lan] [RFC,
 next-queue 4/4] i40e: Add i40e_napi_poll tracepoint
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
Cc: Joe Damato <jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a tracepoint for i40e_napi_poll that allows users to get detailed
information about the amount of work done. This information can help users
better tune the correct NAPI parameters (like weight and budget), as well
as debug NIC settings like rx-usecs and tx-usecs, etc.

When perf is attached, this tracepoint only fires when not in XDP mode.

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
 drivers/net/ethernet/intel/i40e/i40e_txrx.c  |  4 +++
 2 files changed, 53 insertions(+)

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
index 5901e58..f2b1b94 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2752,6 +2752,10 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 			clean_complete = rx_clean_complete = false;
 	}
 
+	if (!i40e_enabled_xdp_vsi(vsi))
+		trace_i40e_napi_poll(napi, q_vector, budget, budget_per_ring, rx_cleaned,
+				     tx_cleaned, rx_clean_complete, tx_clean_complete);
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
