Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB095F50DC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 10:33:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53DE681A95;
	Wed,  5 Oct 2022 08:33:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53DE681A95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664958780;
	bh=5CLSCHJDJq3gtAOJ21r9eVrL/DYjcKfH82Fx/kTrgEI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AgE2rkHXflvq5xQscmUocpmi2wBOobT/1uzOrfzOn5jDIMdv7T8UfVKV8mFC5A57N
	 7im8P0GKD2/3TthYkn+0I5RfEC1n14I84Ep2FVCUYTSZF6bL3/PZ2RszYfTg/IUYcF
	 z3H6trftbCs+6woW+hrxaZQGNw3o8fsgkTPgrIbF5zJcdn4oSjML7M8pDs1ZMLlcdX
	 6PH0WxaYPWpYKvIRKhZYtp0CmHEo2GvybwOUmRU8tcs/955wlRROknddkCGrrXrqXE
	 33cBUKzrBzFhE/U6ASEhL66p6pEYBjFDBpX+mNWCV9a8pSmaOSPWllYqt84YwrD2nJ
	 id7wKKaUPfYYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sp4XnK2gAEiI; Wed,  5 Oct 2022 08:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12B6881A92;
	Wed,  5 Oct 2022 08:32:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12B6881A92
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06A441BF422
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 08:32:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E373C60D77
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 08:32:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E373C60D77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3AsPOlg0rzvZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 08:32:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F46460D57
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F46460D57
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 08:32:42 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id b15so6930899pje.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 01:32:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date;
 bh=bJlYpEHuGteSJYoWYcuqwtV+VIvtgUlEz8rUGsVoQjk=;
 b=yxI4QcQJcsH0CalnjladNJ+179cRjJzYl7kZm5wz/SrrZgLd3nAqH1hnLcUJan+AKK
 bLHQKKm95HmfTbCJBytpdFCf97meQvDUMXFvNPqHEGQ39XJGmQEEmXqhhwoNgMiBnu9U
 4zqqCUVVDc76eyXrOLe9DaKy/TBP5ZAp4c2d5pidA1xqi6gRiWzuzjorax9h9cYyxb+R
 aPtetSrQCWqeQt+W81LooxBzwYHn+EZ+KgYJZ6oiJ4lSfOI362uw4a2l8dRW+64J56fB
 9pVlQV6/kYVlcxRpr5UsdEN6sTMzF6kmyDGY9uPP8rTLA/B5lytWRTxwlJEesrhE/KIp
 tRew==
X-Gm-Message-State: ACrzQf2qaQPC5EF8Yyxo3ULDW6otF0Ppf1mekTSlIBsP1l9SFsup2wdi
 qelRaxBi1MpMHgJXoGE6i//c2ynC+GFsDhAw+o1YKxcGsZH1TG3XS09e6U+NdkPWfSsg1muZcB6
 tQNcwr1nHSKM9+aUTi43tdNvhkgT/TZiYplHcU9Rw0yJCNZWUrfLX6OPu5xoO4H0zZGk77mRCL+
 xY3iwO/w==
X-Google-Smtp-Source: AMsMyM4e1IgzBSwzbAN1NcOz9z3wDCw8ret5SbCIH1oL8oONRg/y/frZr3ZBmUJdWAEWfiRySb0Obg==
X-Received: by 2002:a17:902:6546:b0:17f:7888:58b with SMTP id
 d6-20020a170902654600b0017f7888058bmr5318982pln.140.1664958761819; 
 Wed, 05 Oct 2022 01:32:41 -0700 (PDT)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 jj9-20020a170903048900b0017ec1b1bf9fsm5899320plb.217.2022.10.05.01.32.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 01:32:41 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Oct 2022 01:31:43 -0700
Message-Id: <1664958703-4224-4-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1664958703-4224-1-git-send-email-jdamato@fastly.com>
References: <1664958703-4224-1-git-send-email-jdamato@fastly.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date;
 bh=bJlYpEHuGteSJYoWYcuqwtV+VIvtgUlEz8rUGsVoQjk=;
 b=wL1DDtBFmuHQUdMOTWtEGr0NdsA1syEXxHDCRSlaru+nrpvnw2185xhFEOryfFV6PE
 tOSy/dhkvaGgyBx3uq9EijGtk4UmLdlVfGfKGvGvqESqHPlfU3pjKF1KE0D2HS2AuXVu
 u7xCv/30ioB94QCjdL1B8zHa1TnRVTe8lP/CU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=wL1DDtBF
Subject: [Intel-wired-lan] [next-queue 3/3] i40e: Add i40e_napi_poll
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

[...snip...]

1029.268 :0/0 i40e:i40e_napi_poll(i40e_napi_poll on dev eth1 q i40e-eth1-TxRx-30 irq 172 irq_mask 00000000,00000000,00000000,00000010,00000000,00000000 curr_cpu 68 budget 64 bpr 64 work_done 0 tx_work_done 2 clean_complete 1 tx_clean_complete 1)
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
 drivers/net/ethernet/intel/i40e/i40e_trace.h | 50 ++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c  |  3 ++
 2 files changed, 53 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_trace.h b/drivers/net/ethernet/intel/i40e/i40e_trace.h
index b5b1229..779d046 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_trace.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_trace.h
@@ -55,6 +55,56 @@
  * being built from shared code.
  */
 
+#define NO_DEV "(i40e no_device)"
+
+TRACE_EVENT(i40e_napi_poll,
+
+	TP_PROTO(struct napi_struct *napi, struct i40e_q_vector *q, int budget,
+		 int budget_per_ring, int work_done, int tx_work_done, bool clean_complete,
+		 bool tx_clean_complete),
+
+	TP_ARGS(napi, q, budget, budget_per_ring, work_done, tx_work_done,
+		clean_complete, tx_clean_complete),
+
+	TP_STRUCT__entry(
+		__field(int, budget)
+		__field(int, budget_per_ring)
+		__field(int, work_done)
+		__field(int, tx_work_done)
+		__field(int, clean_complete)
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
+		__entry->work_done = work_done;
+		__entry->tx_work_done = tx_work_done;
+		__entry->clean_complete = clean_complete;
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
+		  "budget %d bpr %d work_done %d tx_work_done %d "
+		  "clean_complete %d tx_clean_complete %d",
+		__get_str(dev_name), __get_str(qname), __entry->irq_num,
+		__get_bitmask(irq_affinity), __entry->curr_cpu, __entry->budget,
+		__entry->budget_per_ring, __entry->work_done,
+		__entry->tx_work_done,
+		__entry->clean_complete, __entry->tx_clean_complete)
+);
+
 /* Events related to a vsi & ring */
 DECLARE_EVENT_CLASS(
 	i40e_tx_template,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index ed88309..8b72f1b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -2743,6 +2743,9 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
 			clean_complete = false;
 	}
 
+	trace_i40e_napi_poll(napi, q_vector, budget, budget_per_ring, work_done, tx_wd,
+			     clean_complete, tx_clean_complete);
+
 	/* If work not completed, return budget and polling will return */
 	if (!clean_complete || !tx_clean_complete) {
 		int cpu_id = smp_processor_id();
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
