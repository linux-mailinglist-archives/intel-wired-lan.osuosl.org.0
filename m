Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB9F6B988C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 16:08:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00EB140AF5;
	Tue, 14 Mar 2023 15:08:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00EB140AF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678806526;
	bh=T5iw7dmYFEVtHjkI4OeSE53xvXC1OQw6NOSZqC6cJrg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4kLfdGR2BqPtpeN23IbBTfIJrmMSOlKw7Nh/QUTVaXNTWDuW4DBf+tGc3uRselPpl
	 LvmeGahA62bPFhah8d13mc44DyGOzrG1Y5n3oaXxmiLmGLDg+mVLszhx4ZWJ0f0UM7
	 fiPFLLvhP5HgPcCMMxgxNQTH6PUblyyFzGMNKIL6ph4V+EqeFyqfe9Fq7TX/mp+cH3
	 PWj+ZQ/adzti0m5fo5RmWworLTqznw1rNi8GzzDHz5rvtYZxoEwzxqxumihRZ+9P6l
	 17LR3PAlZElI6IxVUTl2JQXb1j2HhYtM2azOtw1stWvLRgNmyUttNg6zmqWnoDDWCS
	 7pmdgC9EZMJUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OCmWXPt6JGhY; Tue, 14 Mar 2023 15:08:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D3F6C40ACD;
	Tue, 14 Mar 2023 15:08:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3F6C40ACD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F3D61BF283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 05:09:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E80B54032A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 05:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E80B54032A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YqyLTsv4tAEP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 05:09:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A69634011F
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A69634011F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 05:09:48 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id c10so8943165pfv.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 22:09:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678770588;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=kJwe1EkC8J3zS8Wr9IC+xL9zZ1GIIZJktIybcPhN72o=;
 b=h2wQw1P0U/ASg9EoSQtmPfU2o0XUWNTCbg87GaSiev7KGj0t1u7pqsrVK0IXEZb389
 JbGFh8MIZYA5FipekEH+jd1ViLZA9BPa3B9lnknpFY52LIAd7ZxRcbobtOGioOdM5oRE
 DfYT18UNPxXvhwVOBLWrxVaEx310ztXCYv1v2JDgPb4Eb43J7vQhcZpIYdE7MU7SUBkE
 mcfYjGuB88VrJgqvA6/QxFVmVGME0PaKqMkBWFXh2yZTEdGX9f12/fQXZSmv6jK2ZqPU
 A158JqTV0Dm/tIDAWG4RBfUxcEIaXukOnFgjQ1vEDR7IhdS0NSD5/8P71qhL/Lw905TN
 wB4Q==
X-Gm-Message-State: AO0yUKX/D9GvWQCmp70CAY9eU9MPb4fst74S6Jy8kgHyZ0ThwLZSR36q
 k+QiRzpgv98iSfBoDfJ9SRI=
X-Google-Smtp-Source: AK7set8mKI5+zTeXQ0Jx2tZuCR9srHojnIsVXKy4IiVuimsx6xrFtdP0m+3jjJcMup3DyzCaE6ETWw==
X-Received: by 2002:a62:1d0b:0:b0:5df:421d:1962 with SMTP id
 d11-20020a621d0b000000b005df421d1962mr25570030pfd.2.1678770588027; 
 Mon, 13 Mar 2023 22:09:48 -0700 (PDT)
Received: from localhost ([98.97.116.12]) by smtp.gmail.com with ESMTPSA id
 k17-20020aa792d1000000b005a84ef49c63sm542888pfa.214.2023.03.13.22.09.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Mar 2023 22:09:47 -0700 (PDT)
Date: Mon, 13 Mar 2023 22:09:45 -0700
From: John Fastabend <john.fastabend@gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Message-ID: <64100199e8980_425812081b@john.notmuch>
In-Reply-To: <20230216122839.6878-1-maciej.fijalkowski@intel.com>
References: <20230216122839.6878-1-maciej.fijalkowski@intel.com>
Mime-Version: 1.0
X-Mailman-Approved-At: Tue, 14 Mar 2023 15:08:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678770588;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kJwe1EkC8J3zS8Wr9IC+xL9zZ1GIIZJktIybcPhN72o=;
 b=TmbgJE70HU8Dd9gu6wAm994jqb8A93QmQvhbg5AYaMTrbW0IHRL+JT/KNmwX0/xpR0
 3+/wJnr627UZt8dwFicghcjITvtnDphsuBz7CmB8wHrHNG0AXFqnC6t2asTDLBLRC+Bu
 PezmZ6CcthSs3aJUScLLMW2QlG3vyEUJzKd1SFgj4njb5OK/wsWs3ZYeM0OUghG47Jiw
 KYXVSwRj+Y2BsW+tN6mRdf/OMWlXDqCwqd6sOLewbinS7GfbqNT5GOXVLqOi9gHT2nv/
 HuoP9RYwsautN2Rz1wySpwH1u2QE9oPerK8mVpkx9S+rvzCsS4a+MTD55chBA3mx/IV7
 Ta8Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=TmbgJE70
Subject: Re: [Intel-wired-lan] [PATCH intel-net] ice: xsk: disable txq irq
 before flushing hw
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Maciej Fijalkowski wrote:
> ice_qp_dis() intends to stop a given queue pair that is a target of xsk
> pool attach/detach. One of the steps is to disable interrupts on these
> queues. It currently is broken in a way that txq irq is turned off
> *after* HW flush which in turn takes no effect.
> 
> ice_qp_dis():
> -> ice_qvec_dis_irq()
> --> disable rxq irq
> --> flush hw
> -> ice_vsi_stop_tx_ring()
> -->disable txq irq
> 
> Below splat can be triggered by following steps:
> - start xdpsock WITHOUT loading xdp prog
> - run xdp_rxq_info with XDP_TX action on this interface
> - start traffic
> - terminate xdpsock
> 
> [  256.312485] BUG: kernel NULL pointer dereference, address: 0000000000000018
> [  256.319560] #PF: supervisor read access in kernel mode
> [  256.324775] #PF: error_code(0x0000) - not-present page
> [  256.329994] PGD 0 P4D 0
> [  256.332574] Oops: 0000 [#1] PREEMPT SMP NOPTI
> [  256.337006] CPU: 3 PID: 32 Comm: ksoftirqd/3 Tainted: G           OE      6.2.0-rc5+ #51
> [  256.345218] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0008.031920191559 03/19/2019
> [  256.355807] RIP: 0010:ice_clean_rx_irq_zc+0x9c/0x7d0 [ice]
> [  256.361423] Code: b7 8f 8a 00 00 00 66 39 ca 0f 84 f1 04 00 00 49 8b 47 40 4c 8b 24 d0 41 0f b7 45 04 66 25 ff 3f 66 89 04 24 0f 84 85 02 00 00 <49> 8b 44 24 18 0f b7 14 24 48 05 00 01 00 00 49 89 04 24 49 89 44
> [  256.380463] RSP: 0018:ffffc900088bfd20 EFLAGS: 00010206
> [  256.385765] RAX: 000000000000003c RBX: 0000000000000035 RCX: 000000000000067f
> [  256.393012] RDX: 0000000000000775 RSI: 0000000000000000 RDI: ffff8881deb3ac80
> [  256.400256] RBP: 000000000000003c R08: ffff889847982710 R09: 0000000000010000
> [  256.407500] R10: ffffffff82c060c0 R11: 0000000000000004 R12: 0000000000000000
> [  256.414746] R13: ffff88811165eea0 R14: ffffc9000d255000 R15: ffff888119b37600
> [  256.421990] FS:  0000000000000000(0000) GS:ffff8897e0cc0000(0000) knlGS:0000000000000000
> [  256.430207] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  256.436036] CR2: 0000000000000018 CR3: 0000000005c0a006 CR4: 00000000007706e0
> [  256.443283] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  256.450527] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  256.457770] PKRU: 55555554
> [  256.460529] Call Trace:
> [  256.463015]  <TASK>
> [  256.465157]  ? ice_xmit_zc+0x6e/0x150 [ice]
> [  256.469437]  ice_napi_poll+0x46d/0x680 [ice]
> [  256.473815]  ? _raw_spin_unlock_irqrestore+0x1b/0x40
> [  256.478863]  __napi_poll+0x29/0x160
> [  256.482409]  net_rx_action+0x136/0x260
> [  256.486222]  __do_softirq+0xe8/0x2e5
> [  256.489853]  ? smpboot_thread_fn+0x2c/0x270
> [  256.494108]  run_ksoftirqd+0x2a/0x50
> [  256.497747]  smpboot_thread_fn+0x1c1/0x270
> [  256.501907]  ? __pfx_smpboot_thread_fn+0x10/0x10
> [  256.506594]  kthread+0xea/0x120
> [  256.509785]  ? __pfx_kthread+0x10/0x10
> [  256.513597]  ret_from_fork+0x29/0x50
> [  256.517238]  </TASK>
> 
> In fact, irqs were not disabled and napi managed to be scheduled and run
> while xsk_pool pointer was still valid, but SW ring of xdp_buff pointers
> was already freed.
> 
> To fix this, call ice_qvec_dis_irq() after ice_vsi_stop_tx_ring(). Also
> while at it, remove redundant ice_clean_rx_ring() call - this is handled
> in ice_qp_clean_rings().
> 
> Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Looks reasonable to me for what its worth.

Acked-by: John Fastabend <john.fastabend@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
