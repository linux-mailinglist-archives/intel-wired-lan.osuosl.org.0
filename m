Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 230E25EC793
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Sep 2022 17:24:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0430261084;
	Tue, 27 Sep 2022 15:24:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0430261084
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664292249;
	bh=AnmI/ulDMr9ji04wwTh51g3VGUx9OLXA/2EKB43+IuA=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HPPoGS3gvpDOpIFhNsJDobjU/DqP67HiM+mF6zdrBH75svkuiwblA/ZspFuOrYTp3
	 e5GglF30UUcA00KkEgxVkcPR9pHm54cR5AgG13fH2Hg7Q+decEipvaapuVsXMGfdNr
	 g1LUxNv+0aubY5Dz/IE8cKH8j96Zl6rOJh8ubQPuYl66qt31Si1p1PUJkMMA4lGw6l
	 3sizI43WR6BVn2HsL2JV1mxztBysOeAXSl/VZ9MjTbzDgAEeSrYWeean3XpipdjyjI
	 vQgGxRnC8SNX2NYtOMn3F/L7kWL94jI+V6Amcp6qWvrANoGWhBg7L8bcU/c/VOp3NE
	 zNnl9WCNCiI8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j6LMDcbvXpIe; Tue, 27 Sep 2022 15:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B34260BC7;
	Tue, 27 Sep 2022 15:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B34260BC7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 874F71BF29D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 04:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68CC141887
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 04:44:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68CC141887
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5obY5wCIoyJf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Sep 2022 04:44:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28C7D41890
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28C7D41890
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 04:44:13 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id sb3so18180338ejb.9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 21:44:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=l1wBi+6umvncLDBKieZ1XfXH8kSugLZm2o3CnBG1w44=;
 b=VJRR0SAWRNxKm8yjb95IScOLvmvp0aMNXAj7kIPmZ3Ml2cNMjp0Yxb8aWeuIpMw6/4
 Mgu65zJ6ms6yfPTnvwIg8LM8L39CMnMQhnGtKZcUp2X/fWaEztEeA6VFytqGqcsnxm5V
 4L5plvsZHPRkFI+QlZgtXkzHUgZsFCTxk06+8iSIFim5VbXIA1wINEf7LpftWK8jXr9H
 DBc1Qp1HDiybte0t0nLgQw0gvzfXPbQGSlVBlqlDonWlUtJMQPXkyazLPABX7FhJPbW/
 j2xOYZ0oluF7DVU8Bu3+S7oAJJxtcY31mrIqSPSC93wNovj4euVMq8LLwpfPSJO1Y1wo
 Upsw==
X-Gm-Message-State: ACrzQf37GTTIPhiQdCsE7bBR7dXaO1BfqvdAIVlgXW4aZlQMUp3V10Jl
 tTwfGco8xvk8JOE/WN2KFUc=
X-Google-Smtp-Source: AMsMyM7TxU0q3RRO4eY7tXMJeGNLQWWlQeC1LFjKN1GQmdpFh4FtYwyNG7CaaC+7bAATwY9bl/oH5A==
X-Received: by 2002:a17:906:974c:b0:784:d96c:b4fa with SMTP id
 o12-20020a170906974c00b00784d96cb4famr970916ejy.391.1664253852194; 
 Mon, 26 Sep 2022 21:44:12 -0700 (PDT)
Received: from smtpclient.apple ([178.254.237.20])
 by smtp.gmail.com with ESMTPSA id
 x3-20020a1709064a8300b0078082f95e5csm122080eju.204.2022.09.26.21.44.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Sep 2022 21:44:11 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Martin Zaharinov <micron10@gmail.com>
In-Reply-To: <20220926151939.GG12777@breakpoint.cc>
Date: Tue, 27 Sep 2022 07:44:09 +0300
Message-Id: <D304A05C-D535-43D0-AC70-D5943CE66D89@gmail.com>
References: <20220926083139.48069-1-fw@strlen.de>
 <YzFp4H/rbdov7iDg@dhcp22.suse.cz> <20220926151939.GG12777@breakpoint.cc>
To: Florian Westphal <fw@strlen.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Mailman-Approved-At: Tue, 27 Sep 2022 15:23:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date;
 bh=l1wBi+6umvncLDBKieZ1XfXH8kSugLZm2o3CnBG1w44=;
 b=im7Sx2Cfiel3Nb1P60hkLEkIwjc956AdHjop3aTwDymCONtuBpYwtcVtbY6UdAEcZh
 4NhgCFrnvJpGu5miRNQijeaE5rRvu3VoaA5U+W+NZgcCsFdcFctuXVCvP5cwyoyFdFCv
 a3NC+ObvcHP4WDiZtBtcDIz7H/oZ88/FZzJXzgR1tR4tjrcgLaaz2y7rPN6v6c7+At8T
 AvZjatw90+uVLHIaa3uVbijbPUMC+nWB0zeTnzy56B/k+tRpe6V8KpINlrLw14o5kH7y
 K1GjMO84zXy2RI8w0ijgBr9p1YIlm8HD+gXeLlOoaYkpoq6HXaor2dVUOUZ1KCwmXjtg
 tTWg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=im7Sx2Cf
Subject: Re: [Intel-wired-lan] [PATCH net] rhashtable: fix crash due to mm
 api change
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
Cc: Intel-wired-lan@osuosl.org, Michal Hocko <mhocko@suse.com>,
 herbert@gondor.apana.org.au, kvm@vger.kernel.org,
 netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger kernel. org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, urezki@gmail.com,
 intel-wired-lan@lists.osuosl.org, Paolo Bonzini <pbonzini@redhat.com>,
 tgraf@suug.ch, Jakub Kicinski <kuba@kernel.org>, akpm@linux-foundation.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add intel 
And one more from last min:


Sep 27 06:28:58 [ 1715.463514][   C28] ------------[ cut here ]------------
Sep 27 06:28:58 [ 1715.464245][   C28] NETDEV WATCHDOG: eth0 (i40e): transmit queue 0 timed out
Sep 27 06:28:58 [ 1715.465216][   C28] WARNING: CPU: 28 PID: 0 at net/sched/sch_generic.c:529 dev_watchdog+0x167/0x170
Sep 27 06:28:58 [ 1715.466459][   C28] Modules linked in: nft_limit nf_conntrack_netlink pppoe pppox ppp_generic slhc nft_ct nft_nat nft_chain_nat team_mode_loadbalance team nf_tables netconsole coretemp i40e nf_nat_sip nf_conntrack_sip nf_nat_pptp nf_conntrack_pptp nf_nat_tftp nf_conntrack_tftp nf_nat_ftp nf_conntrack_ftp nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 acpi_ipmi ipmi_si ipmi_devintf ipmi_msghandler rtc_cmos [last unloaded: nf_flow_table]
Sep 27 06:28:58 [ 1715.472099][   C28] CPU: 28 PID: 0 Comm: swapper/28 Tainted: G           O      5.19.11 #1
Sep 27 06:28:58 [ 1715.473225][   C28] Hardware name: Supermicro SYS-5038MR-H8TRF/X10SRD-F, BIOS 3.3 10/28/2020
Sep 27 06:28:58 [ 1715.474377][   C28] RIP: 0010:dev_watchdog+0x167/0x170
Sep 27 06:28:58 [ 1715.475081][   C28] Code: 28 e9 77 ff ff ff 48 89 df c6 05 63 57 c4 00 01 e8 de 59 fb ff 48 89 c2 44 89 e1 48 89 de 48 c7 c7 08 c7 ec 98 e8 52 c6 13 00 <0f> 0b eb 85 0f 1f 44 00 00 41 55 41 54 55 53 48 8b 47 50 4c 8b 28
Sep 27 06:28:58 [ 1715.477736][   C28] RSP: 0018:ffffa93c806b8ee8 EFLAGS: 00010292
Sep 27 06:28:58 [ 1715.478542][   C28] RAX: 0000000000000038 RBX: ffffa01591bb0000 RCX: 0000000000000001
Sep 27 06:28:58 [ 1715.479608][   C28] RDX: 00000000ffffffea RSI: 00000000fff7ffff RDI: 00000000fff7ffff
Sep 27 06:28:58 [ 1715.480674][   C28] RBP: ffffa01591bb03c0 R08: 0000000000000001 R09: 00000000fff7ffff
Sep 27 06:28:58 [ 1715.481741][   C28] R10: ffffa01cdae00000 R11: 0000000000000003 R12: 0000000000000000
Sep 27 06:28:58 [ 1715.482807][   C28] R13: 0000000000000001 R14: ffffa01cdfd207a8 R15: 0000000000000082
Sep 27 06:28:58 [ 1715.483876][   C28] FS:  0000000000000000(0000) GS:ffffa01cdfd00000(0000) knlGS:0000000000000000
Sep 27 06:28:58 [ 1715.485072][   C28] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
Sep 27 06:28:58 [ 1715.485949][   C28] CR2: 000000c000c19010 CR3: 00000001974a4005 CR4: 00000000003706e0
Sep 27 06:28:58 [ 1715.487018][   C28] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
Sep 27 06:28:58 [ 1715.488084][   C28] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Sep 27 06:28:58 [ 1715.489151][   C28] Call Trace:
Sep 27 06:28:58 [ 1715.489582][   C28]  <IRQ>
Sep 27 06:28:58 [ 1715.489949][   C28]  ? pfifo_fast_destroy+0x30/0x30
Sep 27 06:28:58 [ 1715.490615][   C28]  call_timer_fn.constprop.0+0x14/0x70
Sep 27 06:28:58 [ 1715.491342][   C28]  __run_timers.part.0+0x164/0x190
Sep 27 06:28:58 [ 1715.492019][   C28]  ? ktime_get+0x30/0x90
Sep 27 06:28:58 [ 1715.492576][   C28]  run_timer_softirq+0x21/0x50
Sep 27 06:28:58 [ 1715.493204][   C28]  __do_softirq+0xaf/0x1d7
Sep 27 06:28:58 [ 1715.493788][   C28]  __irq_exit_rcu+0x9a/0xd0
Sep 27 06:28:58 [ 1715.494383][   C28]  sysvec_apic_timer_interrupt+0x66/0x80
Sep 27 06:28:58 [ 1715.495131][   C28]  </IRQ>
Sep 27 06:28:58 [ 1715.495509][   C28]  <TASK>
Sep 27 06:28:58 [ 1715.495887][   C28]  asm_sysvec_apic_timer_interrupt+0x16/0x20
Sep 27 06:28:58 [ 1715.496683][   C28] RIP: 0010:cpuidle_enter_state+0xb3/0x290
Sep 27 06:28:58 [ 1715.497455][   C28] Code: e8 12 25 b0 ff 31 ff 49 89 c5 e8 c8 80 af ff 45 84 ff 74 12 9c 58 f6 c4 02 0f 85 cf 01 00 00 31 ff e8 c1 cb b3 ff fb 45 85 f6 <0f> 88 d0 00 00 00 49 63 ce 48 6b f1 68 48 8b 04 24 4c 89 ea 48 29
Sep 27 06:28:58 [ 1715.500111][   C28] RSP: 0018:ffffa93c801cfe98 EFLAGS: 00000202
Sep 27 06:28:58 [ 1715.500916][   C28] RAX: ffffa01cdfd26800 RBX: ffffa01580bff000 RCX: 000000000000001f
Sep 27 06:28:58 [ 1715.501983][   C28] RDX: 0000018f6997dcb8 RSI: 00000000313b13b1 RDI: 0000000000000000
Sep 27 06:28:58 [ 1715.503050][   C28] RBP: 0000000000000001 R08: 0000000000000002 R09: ffffa01cdfd25724
Sep 27 06:28:58 [ 1715.504118][   C28] R10: 0000000000000018 R11: 000000000000007b R12: ffffffff99222da0
Sep 27 06:28:58 [ 1715.536292][   C28] R13: 0000018f6997dcb8 R14: 0000000000000001 R15: 0000000000000000
Sep 27 06:28:58 [ 1715.568539][   C28]  ? cpuidle_enter_state+0x98/0x290
Sep 27 06:28:58 [ 1715.600850][   C28]  cpuidle_enter+0x24/0x40
Sep 27 06:28:58 [ 1715.632878][   C28]  cpuidle_idle_call+0xbb/0x100
Sep 27 06:28:58 [ 1715.664572][   C28]  do_idle+0x76/0xc0
Sep 27 06:28:58 [ 1715.695803][   C28]  cpu_startup_entry+0x14/0x20
Sep 27 06:28:58 [ 1715.726582][   C28]  start_secondary+0xd6/0xe0
Sep 27 06:28:58 [ 1715.756507][   C28]  secondary_startup_64_no_verify+0xd3/0xdb
Sep 27 06:28:58 [ 1715.785770][   C28]  </TASK>
Sep 27 06:28:58 [ 1715.813710][   C28] ---[ end trace 0000000000000000 ]---
Sep 27 06:28:58 [ 1715.840988][   C28] i40e 0000:03:00.0 eth0: tx_timeout: VSI_seid: 390, Q 0, NTC: 0x697, HWB: 0x78c, NTU: 0x78c, TAIL: 0x78c, INT: 0x0
Sep 27 06:28:58 [ 1715.896233][   C28] i40e 0000:03:00.0 eth0: tx_timeout recovery level 1, txqueue 0



> On 26 Sep 2022, at 18:19, Florian Westphal <fw@strlen.de> wrote:
> 
> Michal Hocko <mhocko@suse.com> wrote:
>> On Mon 26-09-22 10:31:39, Florian Westphal wrote:
>>> Martin Zaharinov reports BUG() in mm land for 5.19.10 kernel:
>>> kernel BUG at mm/vmalloc.c:2437!
>>> invalid opcode: 0000 [#1] SMP
>>> CPU: 28 PID: 0 Comm: swapper/28 Tainted: G        W  O      5.19.9 #1
>>> [..]
>>> RIP: 0010:__get_vm_area_node+0x120/0x130
>>>  __vmalloc_node_range+0x96/0x1e0
>>>  kvmalloc_node+0x92/0xb0
>>>  bucket_table_alloc.isra.0+0x47/0x140
>>>  rhashtable_try_insert+0x3a4/0x440
>>>  rhashtable_insert_slow+0x1b/0x30
>>> [..]
>>> 
>>> bucket_table_alloc uses kvzalloc(GPF_ATOMIC).  If kmalloc fails, this now
>>> falls through to vmalloc and hits code paths that assume GFP_KERNEL.
>>> 
>>> I sent a patch to restore GFP_ATOMIC support in kvmalloc but mm
>>> maintainers rejected it.
>>> 
>>> This patch is partial revert of
>>> commit 93f976b5190d ("lib/rhashtable: simplify bucket_table_alloc()"),
>>> to avoid kvmalloc for ATOMIC case.
>>> 
>>> As kvmalloc doesn't warn when used with ATOMIC, kernel will only crash
>>> once vmalloc fallback occurs, so we may see more crashes in other areas
>>> in the future.
>>> 
>>> Most other callers seem ok but kvm_mmu_topup_memory_cache looks like it
>>> might be affected by the same breakage, so Cc kvm@.
>>> 
>>> Reported-by: Martin Zaharinov <micron10@gmail.com>
>>> Fixes: a421ef303008 ("mm: allow !GFP_KERNEL allocations for kvmalloc")
>>> Link: https://lore.kernel.org/linux-mm/Yy3MS2uhSgjF47dy@pc636/T/#t
>>> Cc: Michal Hocko <mhocko@suse.com>
>>> Cc: Paolo Bonzini <pbonzini@redhat.com>
>>> Cc: kvm@vger.kernel.org
>>> Signed-off-by: Florian Westphal <fw@strlen.de>
>> 
>> Please continue in the original email thread until we sort out the most
>> reasonable solution for this.
> 
> I've submitted a v2 using Michals proposed fix for kvmalloc api, if
> thats merged no fixes are required in the callers, so this rhashtable
> patch can be discarded.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
