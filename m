Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D87B95F5BA1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 23:23:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D39341811;
	Wed,  5 Oct 2022 21:22:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D39341811
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665004979;
	bh=FkV2lwb/TT51pXwvegDt3/PZbb7ZxnV8DjhOr3Qrkus=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=brMzTqTg3MFkpwabE6tHHSKcIvXOgXQZpMi5RrOezMM9Boq8MOBJ/H2EgaqYGdICd
	 7QLy4YevoYw4FI7d7x54YA8hksM+lH3u34R+WVDfeU3e0mJazllt8b5wODbva6uOsw
	 WCFjXRV5hzfGShlfzEfofdPgAjQMZK2Wg0sgjBo4UEbeW/WsuPq7iLoZbGrGxV/Htg
	 Sp94pr0hvU6r/HU/3Ta+AJe47YfTDRqaPzHUQuo+1gdjnVWVfnY0EqKYB9usiuw7qp
	 PSqfMTd38TJPRcQrsaV+Z6WpdUw/Q9a/gL9QemKVOed/kzR3sjLDWQmqzg71Z00Dgi
	 6aVir0MclEAIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bv4bkHXSdvwy; Wed,  5 Oct 2022 21:22:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0036041809;
	Wed,  5 Oct 2022 21:22:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0036041809
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 36F771BF301
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1EB2E83145
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EB2E83145
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RcuPelZtRtdf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 21:22:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E859E82B1B
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E859E82B1B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 21:22:50 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 o9-20020a17090a0a0900b0020ad4e758b3so3151994pjo.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 14:22:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=JNakE1w5IeFv8n3LGgBITtV5IyGP6gCrIGjrqiJR+sg=;
 b=7GA1JvE5SpmXiKHM23Qqbno1l13s9wFv5PEWyV16hEXu2CYkWJk7AVau+bulTxxxEC
 uzrUKbaSbmRzxAcnX2fF6ZIbETy7wqC6Fo+jhjgMjpoVL/xIGDpiatc1BK9SKVydXO7g
 JVHOVUM46SrLJVkCOnNxBCiggd1JJc71w4cBtvFsOWQHudn5mM6qPbLR1pYKLJVj7YpK
 UWcZzsC3QD+sJBzxRlbw7r6mwyS9O8KRAfhrnaEVcGacJldsNDWLQWZ44oeroNxT6sJ8
 7Zq4tRKQGQCqrfv4ssQAAUA8VHSr1WraIPP3YghXZ/ofUAIS2sVFgXeix7cxIGZ8oKYB
 GmSw==
X-Gm-Message-State: ACrzQf0k7AO3+ER+ltmEWTTV+k7hSFQRw6EbV7cuZ4fFAeRK6nAmuMZd
 anoLS1io4AwztDwkSP2OW77gostwvbI3jXOalx5HNSBMwNJA745cBRh11QM1LuF8rbs+bJnmlXA
 xoZEfccQAJLUprZzLzgDbxEURmRWQlDOfbhp4y5Vg3eo6DV+LbPX4NunRLWum1WLL+JmLkkLhxu
 dS2khivQ==
X-Google-Smtp-Source: AMsMyM6NXwuCsm3wdhLdy0GvRv5PrjAD+9x+Ksi9QoY2G0GS6VM+A12wgXHx68EoHE6NDzP3SFnHcQ==
X-Received: by 2002:a17:902:db11:b0:17d:5e67:c51c with SMTP id
 m17-20020a170902db1100b0017d5e67c51cmr1374699plx.64.1665004970019; 
 Wed, 05 Oct 2022 14:22:50 -0700 (PDT)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 q12-20020a170902dacc00b0017f7b6e970esm2404666plx.146.2022.10.05.14.22.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 14:22:49 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Oct 2022 14:21:49 -0700
Message-Id: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=JNakE1w5IeFv8n3LGgBITtV5IyGP6gCrIGjrqiJR+sg=;
 b=s5tVBez4pTyRHbBsm067ooK9aedKv7SPMysMOcI3PYdRPNmT9Zn6iBAIwPTnmVIr54
 J1fr0ddOCBrUf0KDJQ+2YbHvv0PuuDweXCSIIYpn2QuDZtNXekOOj8kEvUfCY8+2T6UY
 HpMUI0MDVXO0sNhsZ9aiRnnQGeeP7WJzi7B4o=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=s5tVBez4
Subject: [Intel-wired-lan] [next-queue v2 0/4] i40e: Add an i40e_napi_poll
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

Greetings:

Debugging and tuning the NAPI and i40e NIC parameters can be a bit tricky
as there are many different options to test.

This change adds a tracepoint to i40e_napi_poll which exposes a lot of
helpful debug information for users who'd like to get a better
understanding of how their NIC is performing as they adjust various
parameters and tuning knobs.

With this series applied, you can use the tracepoint with perf by running:

$ sudo perf trace -e i40e:i40e_napi_poll -a --call-graph=fp --libtraceevent_print

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

The output is verbose, but is helpful when trying to determine the impact of
various turning parameters.

Thanks,
Joe

v1 -> v2:
	- TX path modified to push an out parameter through the function
	  call chain instead of modifying control flow.
	- RX path modified to also use an out parameter to track the number
	  of packets processed.
	- Naming of tracepoint struct members and format string modified to
	  be more readable.


Joe Damato (4):
  i40e: Store the irq number in i40e_q_vector
  i40e: Record number TXes cleaned during NAPI
  i40e: Record number of RXes cleaned during NAPI
  i40e: Add i40e_napi_poll tracepoint

 drivers/net/ethernet/intel/i40e/i40e.h       |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c  |  1 +
 drivers/net/ethernet/intel/i40e/i40e_trace.h | 49 ++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c  | 30 ++++++++++++-----
 drivers/net/ethernet/intel/i40e/i40e_xsk.c   | 21 +++++++++---
 drivers/net/ethernet/intel/i40e/i40e_xsk.h   |  6 ++--
 6 files changed, 93 insertions(+), 15 deletions(-)

-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
