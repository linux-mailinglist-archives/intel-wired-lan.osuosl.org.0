Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F545F8031
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 23:40:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9157F60B55;
	Fri,  7 Oct 2022 21:39:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9157F60B55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665178799;
	bh=VDK8LCryApBlp+mgwHvQ8CyE1g7zmHuEyk1fNB2RvJU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=15Dxy8+9lroLgOLFio+8Zj482FEaEpO/i/cZZrwSYkdfRnP3by6WkDX0FEx7wk73K
	 utstqie46lCGCnSTudS6LrY0vIHwCfk6ggSuzhc/No2N/Q8AAj6TDwbSInU4iVPucF
	 HuA4w/yMYwufJrKp2Yt84+H5c/+8UH2j03v+tLx80j8svFgMUPJerp6CEvOJr+avBS
	 jtmFSTQJ8BDc2CCwJQ6uTDcYpYRchFMJfZ0JuF4z6cYtQfSPAnMLjnfr+IHsCAEGzh
	 dKK5Zw8bk5wyjnaM/FJsed5ElH9wwskAqEbTbJg4t4BxyL3RvWRReONDck6L8qS2+u
	 dQtthGSK6p0dw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QCZZdDmtgqNh; Fri,  7 Oct 2022 21:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D52C60B05;
	Fri,  7 Oct 2022 21:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D52C60B05
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 398261BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1446960ADC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1446960ADC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id snCR_P0ehxgE for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 21:39:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45C6F60AB9
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 45C6F60AB9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:41 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 l1-20020a17090a72c100b0020a6949a66aso5822164pjk.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Oct 2022 14:39:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=z0vFULdBKwrocYcOtwwM7mQLQOp60to46d8PtAxnk1M=;
 b=HuffC5qF9lUx9L4nqZv9b2mnBIXxPgNRvcR8rNdpfe2w/HjQYOpm2Mt70KbnFF/nX1
 g2kkq+SrBOp+oBJ6c4nOI4zgr0mWxt8W5vUBM6EgoA56UbiZE8DeguU0xsZvAGdWOQln
 ny6QbVWqcPGtkN/5Rznlg0l5Ni039FrRqD2dl00SRM/8t15ScR3Ua0U4yZPgCOeqqM3d
 ymJTUaj7iS0PV7WvoUPcKcsVV8FJPGjYgYjG56MT/L+2kyZSrx2tjbsS/VLUpAwiGjFY
 nWNZHFZI1Ie8oGRaaxJdoeZtKZCMlcB/5VpUWc2kUr6iQjL4JPENP1x6pz5srExKNM6h
 agiQ==
X-Gm-Message-State: ACrzQf2C9WC3zzJn5blZWssMX0e4CpaJr8/JNp4du4jvlg/Dvqlz9J4N
 /IAKafSFeR7wlbj69Du6L8VggpPGbYi370fQMmdLIPPLfzsnfsIsDqlOrpwAloJ/4oSqupxFQIs
 BT7LGflgzaVcsYzc/P8tQ4+esRy5bop8gWrovRhk/P1IUJwy0WKBL2c78to0ghLJWR2mBITiAx8
 M3lem9zg==
X-Google-Smtp-Source: AMsMyM7GDXRatllZhBdz3awwyEocviEAFfinyRSstgbzMXRwYLTSpU8/bjhHjP5rAJIc3/ygK9POJQ==
X-Received: by 2002:a17:90b:1d4c:b0:20a:8db1:da52 with SMTP id
 ok12-20020a17090b1d4c00b0020a8db1da52mr18088096pjb.98.1665178780266; 
 Fri, 07 Oct 2022 14:39:40 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 m24-20020a17090a7f9800b001f2fa09786asm2012655pjl.19.2022.10.07.14.39.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Oct 2022 14:39:39 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Oct 2022 14:38:43 -0700
Message-Id: <1665178723-52902-5-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665178723-52902-1-git-send-email-jdamato@fastly.com>
References: <1665178723-52902-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=z0vFULdBKwrocYcOtwwM7mQLQOp60to46d8PtAxnk1M=;
 b=UgrFMxcroGOVU8LnSMIcenQy8uSEnuAYINFxotf9XLElzqCAf5s4lEORyi4Uw2VDRJ
 868Mvbg12HUfoSxa24GfnEgzq3s22kH74yUbuZVSyBCNuCud4j5zJAeCYT594Z+OzkTn
 d9l3/q21azUcz2FZ2LqvNrQEFGJtJzjpKeJ3k=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=UgrFMxcr
Subject: [Intel-wired-lan] [next-queue v4 4/4] i40e: Add i40e_napi_poll
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
Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Acked-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_trace.h | 49 ++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c  |  4 +++
 2 files changed, 53 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_trace.h b/drivers/net/ethernet/intel/i40e/i40e_trace.h
index b5b1229..79d587a 100644
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
+		  "budget %d bpr %d rx_cleaned %u tx_cleaned %u "
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
