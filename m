Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA025F71FD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 01:44:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7F6560FEE;
	Thu,  6 Oct 2022 23:44:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7F6560FEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665099896;
	bh=9ZInjxFVOZ798NCit3t4vsQDYIk3wh/eNX87l261FNI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ajbpb8UFjs59TsD2oHGqpbHmmPLeHSVD8DzWqyCY0MXIb6yJaiA3WrSY+Nn1yLIw1
	 6kQV/xmiQD4G9jufkXTAIYZodgvwqmRPfPV0N8sI/PfTH+ejxvfEoUN9itfJMb0V3O
	 4NRHy1zUCcBnprvpEA7GUnCdjkToIyqI2LaoTbqGUE3axisBMxg6EfdTO0SDQBH1VS
	 BEWqqcQVEkPHQgoCCGFb8efe1NtoYAl3ocquXgpZFaDa90IWhFiCgEDXI74uLajv9v
	 xkEcZwfTGOjhOaN+X519nUTNwPAzV5oxK4SNtcLgRhQY74wITGDDw8hOHoNZLSgq8u
	 0V6h/d0EVS/Vw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WQ6aHLXOmg7w; Thu,  6 Oct 2022 23:44:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C24456101E;
	Thu,  6 Oct 2022 23:44:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C24456101E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D249D1BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 23:44:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AAB464199A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 23:44:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAB464199A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6I5MjNF9-Xkg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 23:44:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9623D41983
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9623D41983
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 23:44:48 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id w2so3527339pfb.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Oct 2022 16:44:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GPTFsWXnUF1t4YsdsaSodcYPSmixZRIQrf+mhIR5IvA=;
 b=5vSY/hpJcS594C9qMJSWqUYGPh7h6AyfkTmKigzXdoSS9dss72E8nQm/8aL8Erj9c9
 sr11bqTs1iHCGeWdskbuMRXbxouSfmWsukodlF5TBGazycmZGMSp2cb3ss6H4WnOqn4a
 CDVMUFTVsLLaqI3qva/Uljgi5A2gjyOoeDcrlaG3eVW738WTdpojQ+m+N9PxwNC7m4KF
 MY0qYPPR/Oio11CMFOMvLCZMtIEhAdeknNLFBjUC0a6YP2N4O3433okl0POhl+wWdYgH
 /Xrw7v47ItGyTKunejGkQTsoaxin1C+yWxnnOLWD1mGCbu1Gs7v1HPau6CgZ4K8fNhNq
 pZUg==
X-Gm-Message-State: ACrzQf0gfwi+vnDUbmqB0CvTFC4bWZUBBsFbYYNbK63BBB8lQOC7Ex32
 mdLiHM9M8CpWdyVXk/6vEkJhQntG8323fbMPKqeCQXUl1PNQHN5ettfgwE4HgkU/7K2gGgTxwvU
 WZ5SxZsNBiah/FzbaYvV0KhJLfKH8EUgFczcJe2gpBM/1xPmVHNdc8kf1JbwRdklYhe/CkVHliR
 8sJbdGHA==
X-Google-Smtp-Source: AMsMyM55E19vOgYYzGx2uJq5Br5O2PAtKHWRUapQlvr12s7MkdtQa9BFXmom7F+FpWrUbkZ0lV0IKw==
X-Received: by 2002:a65:62c5:0:b0:434:d997:5848 with SMTP id
 m5-20020a6562c5000000b00434d9975848mr1896545pgv.603.1665099887388; 
 Thu, 06 Oct 2022 16:44:47 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 u4-20020a631404000000b0045935b12e97sm308124pgl.36.2022.10.06.16.44.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Oct 2022 16:44:46 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Oct 2022 16:43:54 -0700
Message-Id: <1665099838-94839-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GPTFsWXnUF1t4YsdsaSodcYPSmixZRIQrf+mhIR5IvA=;
 b=oziab/z1fFFEqKv5NdSoNc8530zFl92rhX5GvQ9/d1JQJ+GRFNG56yxPqi3TuqPD1T
 VtfHZ0AQ9FfZVLuR2dgvS32OsVJ9Zob9NpqmCAuKEa/IoozlhpYoZY3qisBvuet9C0mI
 gTzRf78h+Qvrb8J8nwgNmLQjmfpIPifJAS9AQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=oziab/z1
Subject: [Intel-wired-lan] [next-queue v3 0/4] i40e: Add an i40e_napi_poll
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

Welcome to v3.

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


Joe Damato (4):
  i40e: Store the irq number in i40e_q_vector
  i40e: Record number TXes cleaned during NAPI
  i40e: Record number of RXes cleaned during NAPI
  i40e: Add i40e_napi_poll tracepoint

 drivers/net/ethernet/intel/i40e/i40e.h       |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c  |  1 +
 drivers/net/ethernet/intel/i40e/i40e_trace.h | 49 ++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c  | 33 ++++++++++++++-----
 drivers/net/ethernet/intel/i40e/i40e_xsk.c   | 21 +++++++++---
 drivers/net/ethernet/intel/i40e/i40e_xsk.h   |  6 ++--
 6 files changed, 95 insertions(+), 16 deletions(-)

-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
