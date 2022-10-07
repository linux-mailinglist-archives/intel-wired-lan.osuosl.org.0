Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 215F75F8028
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 23:39:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13F6560B43;
	Fri,  7 Oct 2022 21:39:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13F6560B43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665178783;
	bh=gdNsOFgmKLp5LF4W2wfjvsTMxV+h2TM5qxpQD0aoDu4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=wYMwD0QXjFCH4ppaq6I/xSq0T/zdYxVpYrfVv7nTV4b9rARHrzXFuF13hY8iPT7Fr
	 EUF9t6DMq/oTQeX/E6LX493iI8SA9zJ4XOZxyNG+Jqg6l03TM3Rs/VmyBISjhskdRM
	 qss+rUsKr1SUxULfdFVgWrcq+sx/+G/dA0eefT5UEy2lWaY9BBorny3Ht5LV6GHH/V
	 c+NQ+NALOIzSO/tKwqGzTJnvg2GocNqEo7zQfgE1Rj1AnrQiqlpZtYAkoGj7x5Cg9Y
	 nWG6IE5nXWfXxunqrORFCgFCVBBn6RHZ0H0INVGUuRBGDqiG4e8yDeATe8uQD1iMa2
	 hscWLe/PMNJHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IG2LlZahZu_1; Fri,  7 Oct 2022 21:39:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16BAA60B1A;
	Fri,  7 Oct 2022 21:39:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16BAA60B1A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C8691BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6039F823C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6039F823C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3DRNWT98Edo2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 21:39:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6E78823AB
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A6E78823AB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 21:39:36 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id b5so5719148pgb.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Oct 2022 14:39:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pdA6XcDcQwg9zDLtFIzs93/AhQzMHvgyPe65oak5BT0=;
 b=nQnxzIONWjMhg+WqcrA7sEL0QEOS32ZmSaoW/dZduZK70/DQu3BAZRqBgqHQ7YEpvN
 Gxjg+e6hx+BbziOHL4T1qWeIHFQ4ZBlnU1ArjdGbZc8Usy0ws043xo+/3WDWwjTBot1f
 X82uSlcmaJXYeoDL7AfWT5r/p7ZArODQq1tvGIbEg/nlGbK294pITvDkLG2IdgkVM9fo
 DbsWa4jSnJrpRNtQEFVpIJnySJjRl2tYAPM95YMH2TXfxKWqJ6mUjdHIsXkK8LVAvmaR
 KEu7Y4mdz9uray9A8vTb/PhyRywWrYu6keDnEBdkai5Qelx2/CQMfRghT3FJuFUF4ZRV
 5NWg==
X-Gm-Message-State: ACrzQf0KGOcGq6AinhGid+8ocayK0s9ifmLSFBz2lb7fpK1iFYDoBViz
 7wb7EiHsRazAvaHde0mjoC4Vw+/51/VjMepJWn4pHCi9tQQ/jrUP/g9ZhT7jFPBBKh2YGeKd4qr
 C3DAvpcpsOBgvKtaPoHlBNxITGZj2bZVXhmksDNYnSEgHVer6W/Inf7om9nS17bJwYL/tX0//z3
 2WXAEooQ==
X-Google-Smtp-Source: AMsMyM5Sitfc0wj+QbX6HOmxnxrWy2URPbg4MO2DhArWB89B8N62KltQqNmU2cxjPQR3U+jz72ppnA==
X-Received: by 2002:a05:6a00:2495:b0:562:c459:e327 with SMTP id
 c21-20020a056a00249500b00562c459e327mr4236531pfv.47.1665178775283; 
 Fri, 07 Oct 2022 14:39:35 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 m24-20020a17090a7f9800b001f2fa09786asm2012655pjl.19.2022.10.07.14.39.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Oct 2022 14:39:34 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Oct 2022 14:38:39 -0700
Message-Id: <1665178723-52902-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pdA6XcDcQwg9zDLtFIzs93/AhQzMHvgyPe65oak5BT0=;
 b=nWtUNKq8fpP7+oe7Ko7ayU3yWakO5yodmPrVAdSsPswK6lvRmiq6WII4nYMR4uxWfU
 dgGAiLCpxAyMRi7pjuOj37z3loTbG8RJl4/iU5cxyB7CJIUIzRxBSQ5f+zM3YunERMnI
 8kvcnOhvmhCK3FSsMfQ6xvVNmInCdSZijG60A=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=nWtUNKq8
Subject: [Intel-wired-lan] [next-queue v4 0/4] Add an i40e_napi_poll
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

Welcome to v4.

Debugging and tuning the NAPI and i40e NIC parameters can be a bit tricky
as there are many different options to test.

This change adds a tracepoint to i40e_napi_poll which exposes a lot of
helpful debug information for users who'd like to get a better
understanding of how their NIC is performing as they adjust various
parameters and tuning knobs.

Note: this series does not touch any XDP related code paths. This
tracepoint will only work when not using XDP. Care has been taken to avoid
changing control flow in i40e_napi_poll with this change.

With this series applied, you can use the tracepoint with perf (assuming
XDP is not being used) by running:

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

v3 -> v4:
	- All XDP related changes were dropped from both the TX and RX
	  paths (patches 2/4 and 3/4 were updated).
	- A conditional was added to only fire the tracepoint if XDP is NOT
	  enabled (patch 4/4 updated).
	- Fixed format specifier for rx_cleaned and tx_cleaned (from %lu
	  to %u in patch 4/4).

v2 -> v3:
	- Add an rx_clean_complete to the RX patch so that it can be output
	  in tracepoint instead of the valued of 'clean_complete' which can
	  be ambiguous (patch 3/4 was updated).
	- Update the tracepoint to swap 'clean_complete' with
	  'rx_clean_complete' (patch 4/4 was updated).

v1 -> v2:
	- TX path modified to push an out parameter through the function
	  call chain instead of modifying control flow.
	- RX path modified to also use an out parameter to track the number
	  of packets processed.
	- Naming of tracepoint struct members and format string modified to
	  be more readable.

Thanks,
Joe

Joe Damato (4):
  i40e: Store the irq number in i40e_q_vector
  i40e: Record number TXes cleaned during NAPI
  i40e: Record number of RXes cleaned during NAPI
  i40e: Add i40e_napi_poll tracepoint

 drivers/net/ethernet/intel/i40e/i40e.h       |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c  |  1 +
 drivers/net/ethernet/intel/i40e/i40e_trace.h | 49 ++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c  | 27 +++++++++++----
 4 files changed, 72 insertions(+), 6 deletions(-)

-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
