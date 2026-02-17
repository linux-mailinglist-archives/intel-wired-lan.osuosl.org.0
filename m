Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iE3FIz5zlGnVDwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 14:55:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DBE14CCEB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 14:55:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BA6F40AAD;
	Tue, 17 Feb 2026 13:55:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WPNao71uBCb1; Tue, 17 Feb 2026 13:55:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAFE240B08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771336507;
	bh=Hkc+aMmdSCQbinpWl+I5zPELxjREuXyzuN5bniHDSmQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=juRb/TJGAOm5NlceTswctMbHz8mVL7kiDsN9hJRD7XDKBhUJwEJm7qLa6OIAMOR8S
	 Fw5R+GrSJIJbE81Px5XADk9Htq9NXcyQaXyETO4WRTXY1bdLf9DB4seLaCDlE4kmeo
	 xBXxIhN+63kJrVdiTFCThfpWVfS8aWCG8CCZo3kIMZVY8IwxWXPFDLU4VIlckKTAcI
	 GZvLHRoduaRbfIHW8ART4OUGjR1IKPkt1Uxl2yhMcrwVy1jfDkIzfhtAUrlvz9WA5U
	 /Q9wLOs64OCS3Bc6n7bAUru/JJew53zLIIA3rXGtZ+yRFzDupDgyNif/ng8QPovgYR
	 sjiGNQoRCcYfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAFE240B08;
	Tue, 17 Feb 2026 13:55:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CFCE61EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 13:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BDEE440A91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 13:55:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UMgLsz0YQ1UC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Feb 2026 13:55:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A00940A9A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A00940A9A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A00940A9A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 13:55:05 +0000 (UTC)
X-CSE-ConnectionGUID: uuUjnfIPRSmFsg95wsqPLQ==
X-CSE-MsgGUID: K7L6RfWlSimtDjFCqU5DGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="72470547"
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="72470547"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 05:55:05 -0800
X-CSE-ConnectionGUID: McvEJOwdRVyWWokjnxn1vA==
X-CSE-MsgGUID: GnTaJH0OS/WfbqRKhldZQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; d="scan'208";a="213904726"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 17 Feb 2026 05:54:56 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E2F5128795;
 Tue, 17 Feb 2026 13:54:52 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "Bastien Curutchet (eBPF Foundation)" <bastien.curutchet@bootlin.com>,
 Tushar Vyavahare <tushar.vyavahare@intel.com>,
 Jason Xing <kernelxing@tencent.com>,
 =?UTF-8?q?Ricardo=20B=2E=20Marli=C3=A8re?= <rbm@suse.com>,
 Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dragos Tatulea <dtatulea@nvidia.com>,
 Martin KaFai Lau <martin.lau@kernel.org>
Date: Tue, 17 Feb 2026 14:24:47 +0100
Message-ID: <20260217132450.1936200-10-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260217132450.1936200-1-larysa.zaremba@intel.com>
References: <20260217132450.1936200-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771336506; x=1802872506;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ge7gIG8IIRQWGUGHw6qwZgqeXDldxXzM/a5Ov/Y7Rr4=;
 b=GCGtgM/FmyQ3VvGHeRqti8T5m744PEpJGb2MUlVu/QL3FMlK4IFgconr
 tOhwXJWIM60K9xG6tlCrltLMdLghfVUFO8xBjyg25cHoPt2knEeH5RMvI
 ILLFfMfvNR1+l1p/dx4rqLox/bM1tXbsv0ETE+T74FnAvfnsVUt5IewGq
 CCeyBshvSuf0DT4whbuCbi69VHEOE81draCDN8AyTHvTdWSib8/hlaFzM
 ofE2orlCUkpkPb3nfeo7qt/qkCmya+RvwNeZU9orpWrtN9UnsfOxzswFZ
 ce1kBZCfr9g1zG7Q1Cssb3TB0jhkGtCY1c8NYMV9NpUxNMeTj5h8reuPr
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GCGtgM/F
Subject: [Intel-wired-lan] [PATCH bpf v3 9/9] xdp: produce a warning when
 calculated tailroom is negative
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[45];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:bpf@vger.kernel.org,m:larysa.zaremba@intel.com,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktiono
 v@intel.com,m:dtatulea@nvidia.com,m:martin.lau@kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,vger.kernel.org,lists.osuosl.org,nvidia.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: D7DBE14CCEB
X-Rspamd-Action: no action

Many ethernet drivers report xdp Rx queue frag size as being the same as
DMA write size. However, the only user of this field, namely
bpf_xdp_frags_increase_tail(), clearly expects a truesize.

Such difference leads to unspecific memory corruption issues under certain
circumstances, e.g. in ixgbevf maximum DMA write size is 3 KB, so when
running xskxceiver's XDP_ADJUST_TAIL_GROW_MULTI_BUFF, 6K packet fully uses
all DMA-writable space in 2 buffers. This would be fine, if only
rxq->frag_size was properly set to 4K, but value of 3K results in a
negative tailroom, because there is a non-zero page offset.

We are supposed to return -EINVAL and be done with it in such case, but due
to tailroom being stored as an unsigned int, it is reported to be somewhere
near UINT_MAX, resulting in a tail being grown, even if the requested
offset is too much (it is around 2K in the abovementioned test). This later
leads to all kinds of unspecific calltraces.

[ 7340.337579] xskxceiver[1440]: segfault at 1da718 ip 00007f4161aeac9d sp 00007f41615a6a00 error 6
[ 7340.338040] xskxceiver[1441]: segfault at 7f410000000b ip 00000000004042b5 sp 00007f415bffecf0 error 4
[ 7340.338179]  in libc.so.6[61c9d,7f4161aaf000+160000]
[ 7340.339230]  in xskxceiver[42b5,400000+69000]
[ 7340.340300]  likely on CPU 6 (core 0, socket 6)
[ 7340.340302] Code: ff ff 01 e9 f4 fe ff ff 0f 1f 44 00 00 4c 39 f0 74 73 31 c0 ba 01 00 00 00 f0 0f b1 17 0f 85 ba 00 00 00 49 8b 87 88 00 00 00 <4c> 89 70 08 eb cc 0f 1f 44 00 00 48 8d bd f0 fe ff ff 89 85 ec fe
[ 7340.340888]  likely on CPU 3 (core 0, socket 3)
[ 7340.345088] Code: 00 00 00 ba 00 00 00 00 be 00 00 00 00 89 c7 e8 31 ca ff ff 89 45 ec 8b 45 ec 85 c0 78 07 b8 00 00 00 00 eb 46 e8 0b c8 ff ff <8b> 00 83 f8 69 74 24 e8 ff c7 ff ff 8b 00 83 f8 0b 74 18 e8 f3 c7
[ 7340.404334] Oops: general protection fault, probably for non-canonical address 0x6d255010bdffc: 0000 [#1] SMP NOPTI
[ 7340.405972] CPU: 7 UID: 0 PID: 1439 Comm: xskxceiver Not tainted 6.19.0-rc1+ #21 PREEMPT(lazy)
[ 7340.408006] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.17.0-5.fc42 04/01/2014
[ 7340.409716] RIP: 0010:lookup_swap_cgroup_id+0x44/0x80
[ 7340.410455] Code: 83 f8 1c 73 39 48 ba ff ff ff ff ff ff ff 03 48 8b 04 c5 20 55 fa bd 48 21 d1 48 89 ca 83 e1 01 48 d1 ea c1 e1 04 48 8d 04 90 <8b> 00 48 83 c4 10 d3 e8 c3 cc cc cc cc 31 c0 e9 98 b7 dd 00 48 89
[ 7340.412787] RSP: 0018:ffffcc5c04f7f6d0 EFLAGS: 00010202
[ 7340.413494] RAX: 0006d255010bdffc RBX: ffff891f477895a8 RCX: 0000000000000010
[ 7340.414431] RDX: 0001c17e3fffffff RSI: 00fa070000000000 RDI: 000382fc7fffffff
[ 7340.415354] RBP: 00fa070000000000 R08: ffffcc5c04f7f8f8 R09: ffffcc5c04f7f7d0
[ 7340.416283] R10: ffff891f4c1a7000 R11: ffffcc5c04f7f9c8 R12: ffffcc5c04f7f7d0
[ 7340.417218] R13: 03ffffffffffffff R14: 00fa06fffffffe00 R15: ffff891f47789500
[ 7340.418229] FS:  0000000000000000(0000) GS:ffff891ffdfaa000(0000) knlGS:0000000000000000
[ 7340.419489] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 7340.420286] CR2: 00007f415bfffd58 CR3: 0000000103f03002 CR4: 0000000000772ef0
[ 7340.421237] PKRU: 55555554
[ 7340.421623] Call Trace:
[ 7340.421987]  <TASK>
[ 7340.422309]  ? softleaf_from_pte+0x77/0xa0
[ 7340.422855]  swap_pte_batch+0xa7/0x290
[ 7340.423363]  zap_nonpresent_ptes.constprop.0.isra.0+0xd1/0x270
[ 7340.424102]  zap_pte_range+0x281/0x580
[ 7340.424607]  zap_pmd_range.isra.0+0xc9/0x240
[ 7340.425177]  unmap_page_range+0x24d/0x420
[ 7340.425714]  unmap_vmas+0xa1/0x180
[ 7340.426185]  exit_mmap+0xe1/0x3b0
[ 7340.426644]  __mmput+0x41/0x150
[ 7340.427098]  exit_mm+0xb1/0x110
[ 7340.427539]  do_exit+0x1b2/0x460
[ 7340.427992]  do_group_exit+0x2d/0xc0
[ 7340.428477]  get_signal+0x79d/0x7e0
[ 7340.428957]  arch_do_signal_or_restart+0x34/0x100
[ 7340.429571]  exit_to_user_mode_loop+0x8e/0x4c0
[ 7340.430159]  do_syscall_64+0x188/0x6b0
[ 7340.430672]  ? __do_sys_clone3+0xd9/0x120
[ 7340.431212]  ? switch_fpu_return+0x4e/0xd0
[ 7340.431761]  ? arch_exit_to_user_mode_prepare.isra.0+0xa1/0xc0
[ 7340.432498]  ? do_syscall_64+0xbb/0x6b0
[ 7340.433015]  ? __handle_mm_fault+0x445/0x690
[ 7340.433582]  ? count_memcg_events+0xd6/0x210
[ 7340.434151]  ? handle_mm_fault+0x212/0x340
[ 7340.434697]  ? do_user_addr_fault+0x2b4/0x7b0
[ 7340.435271]  ? clear_bhb_loop+0x30/0x80
[ 7340.435788]  ? clear_bhb_loop+0x30/0x80
[ 7340.436299]  ? clear_bhb_loop+0x30/0x80
[ 7340.436812]  ? clear_bhb_loop+0x30/0x80
[ 7340.437323]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[ 7340.437973] RIP: 0033:0x7f4161b14169
[ 7340.438468] Code: Unable to access opcode bytes at 0x7f4161b1413f.
[ 7340.439242] RSP: 002b:00007ffc6ebfa770 EFLAGS: 00000246 ORIG_RAX: 00000000000000ca
[ 7340.440173] RAX: fffffffffffffe00 RBX: 00000000000005a1 RCX: 00007f4161b14169
[ 7340.441061] RDX: 00000000000005a1 RSI: 0000000000000109 RDI: 00007f415bfff990
[ 7340.441943] RBP: 00007ffc6ebfa7a0 R08: 0000000000000000 R09: 00000000ffffffff
[ 7340.442824] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
[ 7340.443707] R13: 0000000000000000 R14: 00007f415bfff990 R15: 00007f415bfff6c0
[ 7340.444586]  </TASK>
[ 7340.444922] Modules linked in: rfkill intel_rapl_msr intel_rapl_common intel_uncore_frequency_common skx_edac_common nfit libnvdimm kvm_intel vfat fat kvm snd_pcm irqbypass rapl iTCO_wdt snd_timer intel_pmc_bxt iTCO_vendor_support snd ixgbevf virtio_net soundcore i2c_i801 pcspkr libeth_xdp net_failover i2c_smbus lpc_ich failover libeth virtio_balloon joydev 9p fuse loop zram lz4hc_compress lz4_compress 9pnet_virtio 9pnet netfs ghash_clmulni_intel serio_raw qemu_fw_cfg
[ 7340.449650] ---[ end trace 0000000000000000 ]---

The issue can be fixed in all in-tree drivers, but we cannot just trust OOT
drivers to not do this. Therefore, make tailroom a signed int and produce a
warning when it is negative to prevent such mistakes in the future.

Fixes: bf25146a5595 ("bpf: add frags support to the bpf_xdp_adjust_tail() API")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Toke Høiland-Jørgensen <toke@redhat.com>
Acked-by: Martin KaFai Lau <martin.lau@kernel.org>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 net/core/filter.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/core/filter.c b/net/core/filter.c
index 5f5489665c58..e93d9dc0471a 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -4151,13 +4151,14 @@ static int bpf_xdp_frags_increase_tail(struct xdp_buff *xdp, int offset)
 	struct skb_shared_info *sinfo = xdp_get_shared_info_from_buff(xdp);
 	skb_frag_t *frag = &sinfo->frags[sinfo->nr_frags - 1];
 	struct xdp_rxq_info *rxq = xdp->rxq;
-	unsigned int tailroom;
+	int tailroom;
 
 	if (!rxq->frag_size || rxq->frag_size > xdp->frame_sz)
 		return -EOPNOTSUPP;
 
 	tailroom = rxq->frag_size - skb_frag_size(frag) -
 		   skb_frag_off(frag) % rxq->frag_size;
+	WARN_ON_ONCE(tailroom < 0);
 	if (unlikely(offset > tailroom))
 		return -EINVAL;
 
-- 
2.52.0

