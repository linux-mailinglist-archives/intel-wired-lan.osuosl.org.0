Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8706673E717
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jun 2023 19:59:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C12261324;
	Mon, 26 Jun 2023 17:59:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C12261324
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687802377;
	bh=dphpjaf4Kl1iJrczOj7rxBXmIOYth6lQgZG7YVqANzg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jF51990lOlYyYfaPZ/UhdQlVZm4F3BuRFNRMSFkNQ3K1nTY3kLqVBhlD5p/2An1zw
	 IAybvVtUM9CRoQyFkvJM84dUCYfcv0dBG7WoBQ7A1hhsBYAVQR4Jzbwm/k5cwSieyH
	 fAkRUx793XAmdr9tvFi4Dt3hADzGkrGm2qGFl5fKwk3AWZEjEbEl3ZmlMNqy6xQXP1
	 /djjOA4UB+W3GJRYxW6xthq5aSJUB7XduAe0jFIsGJHlJOdjLdGAoQ7Ic2dy1yvVod
	 SYVmCN6EA1EinGVuMA+ykgkj//pP7FoJp14V2eUIxKubrOVhoEucphpC9hCyiWNuwS
	 SLP8mRfd9yYKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c0ls8R6GNP9K; Mon, 26 Jun 2023 17:59:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1CF660B33;
	Mon, 26 Jun 2023 17:59:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1CF660B33
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C5BE61BF37B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 17:59:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B381418B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 17:59:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B381418B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7I4ry9QIN2Lx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jun 2023 17:59:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 050F9418B4
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 050F9418B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 17:59:28 +0000 (UTC)
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-497-ToVJQOlDOH6ww2zHZp-dvg-1; Mon, 26 Jun 2023 13:56:03 -0400
X-MC-Unique: ToVJQOlDOH6ww2zHZp-dvg-1
Received: by mail-qv1-f72.google.com with SMTP id
 6a1803df08f44-62dd79f63e0so6031816d6.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jun 2023 10:56:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687802163; x=1690394163;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Q0Se2zs1lKccD5otLcqb03woHwANJzzCEiMosGy+vA0=;
 b=TpT0bZ6v+5UAvLzaDly5FThfSa9ZoYsb0h2PBzE2MIS/ma/77OVtk54crNq2eMaDJb
 OJ+0nGBUb/YgMcK7AaBYIBIKEhDq8XRQglZ2hMgGurkFG5dj6HEgIi7vekDQCL6rpXwe
 9F0t18lpkLTfVSOp9V7kUImTShoAzSnsMnxegvXL7WpUz0+isOpevqAlgNGidEYyAGb5
 GqKlP/Mes85IHXDzB8xMCIiNtfbSZqDvNPX/R/J/JI0xi2OmWfRAeIwkbdc0bN8FwRVC
 /9U3+7M8Un/l9tOW0W9I1//yALl73b6KYnV/KxXzqDVg2VAljT+GlBh/08mcUk4ZmEsE
 Pd/g==
X-Gm-Message-State: AC+VfDzAlr8tlxoy8isAcHMDUaiT1qyukrsLxgEJ+10insXDeHr1WNUK
 rKUk3VF2jvy+fYWW+NCMwBV3kdMoob8FvJUa6eKbN6boz3E4j/H7BycDDaOq3WeZNQh3i84ZAtG
 8VDSDkfvdBj4Fbi2L9EmoOqcb5qHzpQ==
X-Received: by 2002:a05:6214:c4c:b0:635:dfe1:c1f2 with SMTP id
 r12-20020a0562140c4c00b00635dfe1c1f2mr4488530qvj.0.1687802162955; 
 Mon, 26 Jun 2023 10:56:02 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ532+/WeaPil/MMTjO+WmbQm5u/oyIabrHtJpfDmzsufPBZjJQEyfCoXfxK7YyjHRKwIDliqQ==
X-Received: by 2002:a05:6214:c4c:b0:635:dfe1:c1f2 with SMTP id
 r12-20020a0562140c4c00b00635dfe1c1f2mr4488515qvj.0.1687802162670; 
 Mon, 26 Jun 2023 10:56:02 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-231-243.dyn.eolo.it.
 [146.241.231.243]) by smtp.gmail.com with ESMTPSA id
 lg20-20020a056214549400b0062ff0dd0332sm3400092qvb.38.2023.06.26.10.56.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jun 2023 10:56:02 -0700 (PDT)
Message-ID: <ffb554bfa4739381d928406ad24697a4dbbbe4a2.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>
Date: Mon, 26 Jun 2023 19:55:59 +0200
In-Reply-To: <CAA85sZvn04k7=oiTQ=4_C8x7pNEXRWzeEStcaXvi3v63ah7OUQ@mail.gmail.com>
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
 <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
 <e7e49ed5-09e2-da48-002d-c7eccc9f9451@intel.com>
 <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
 <22aad588-47d6-6441-45b2-0e685ed84c8d@intel.com>
 <CAA85sZti1=ET=Tc3MoqCX0FqthHLf6MSxGNAhJUNiMms1TfoKA@mail.gmail.com>
 <CAA85sZvn04k7=oiTQ=4_C8x7pNEXRWzeEStcaXvi3v63ah7OUQ@mail.gmail.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1687802164;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q0Se2zs1lKccD5otLcqb03woHwANJzzCEiMosGy+vA0=;
 b=O5bBEtkVTBuWxH6kicc941Kxdnb36kapIFBzKfIksBhE7xtxFv91HU8Q6mFMK352PMD7Wu
 QFDlE3TTNnjEOrHTAjE6DZdqqCCOtt+OBBti7mGEci0lZqbvJyg/Pcd2wFFFzu3ggmN8u9
 lEQZsJ6daHwp59kzn93rmr6eSQT37Po=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1687802367;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q0Se2zs1lKccD5otLcqb03woHwANJzzCEiMosGy+vA0=;
 b=XrDDYBQmc0oUOB70AE6cRirKgh8/l9DCVzPhgBoxZTBxI3S1+yDv7kY3Xt243djjsfc6hL
 LWWAnxS+PU8C5/gehS7p6LMxJVOdNqa7qN9h2RIteKaOZ7aRSRqXUYBCtEzMTt9KwVgAIn
 SvtkqVThMDsnTSdExzJ8rzBSE7rZ3Wo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=O5bBEtkV; 
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=XrDDYBQm
Subject: Re: [Intel-wired-lan] bug with rx-udp-gro-forwarding offloading?
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
Cc: Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2023-06-26 at 19:30 +0200, Ian Kumlien wrote:
> There, that didn't take long, even with wireguard disabled
> 
> [14079.678380] BUG: kernel NULL pointer dereference, address: 00000000000000c0
> [14079.685456] #PF: supervisor read access in kernel mode
> [14079.690686] #PF: error_code(0x0000) - not-present page
> [14079.695915] PGD 0 P4D 0
> [14079.698540] Oops: 0000 [#1] PREEMPT SMP NOPTI
> [14079.702996] CPU: 11 PID: 891 Comm: napi/eno2-80 Not tainted 6.4.0 #360
> [14079.709614] Hardware name: Supermicro Super Server/A2SDi-12C-HLN4F,
> BIOS 1.7a 10/13/2022
> [14079.717796] RIP: 0010:__udp_gso_segment+0x346/0x4f0
> [14079.722778] Code: c3 08 66 89 5c 02 04 45 84 e4 0f 85 27 fd ff ff
> 49 8b 1e 49 8b ae c0 00 00 00 41 0f b7 86 b4 00 00 00 45 0f b7 a6 b2
> 00 00 00 <48> 8b b3 c0 00 00 00 0f b7 8b b2 00 00 00 49 01 ec 48 01 c5
> 48 8d
> [14079.741645] RSP: 0018:ffffa83643a4f818 EFLAGS: 00010246
> [14079.746966] RAX: 00000000000000ce RBX: 0000000000000000 RCX: 0000000000000000
> [14079.754195] RDX: ffffa2ad1403b000 RSI: 0000000000000028 RDI: ffffa2afc9d302d4
> [14079.761422] RBP: ffffa2ad1403b000 R08: 0000000000000022 R09: 00002000001558c9
> [14079.768650] R10: 0000000000000000 R11: ffffa2b02fcea888 R12: 00000000000000e2
> [14079.775879] R13: ffffa2afc9d30200 R14: ffffa2afc9d30200 R15: 00002000001558c9
> [14079.783106] FS:  0000000000000000(0000) GS:ffffa2b02fcc0000(0000)
> knlGS:0000000000000000
> [14079.791305] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [14079.797162] CR2: 00000000000000c0 CR3: 0000000151ff4000 CR4: 00000000003526e0
> [14079.804408] Call Trace:
> [14079.806961]  <TASK>
> [14079.809170]  ? __die+0x1a/0x60
> [14079.812340]  ? page_fault_oops+0x158/0x440
> [14079.816551]  ? ip6_route_output_flags+0xe3/0x160
> [14079.821284]  ? exc_page_fault+0x3f4/0x820
> [14079.825408]  ? update_load_avg+0x77/0x710
> [14079.829534]  ? asm_exc_page_fault+0x22/0x30
> [14079.833836]  ? __udp_gso_segment+0x346/0x4f0
> [14079.838218]  ? __udp_gso_segment+0x2fa/0x4f0
> [14079.842600]  ? _raw_spin_unlock_irqrestore+0x16/0x30
> [14079.847679]  ? try_to_wake_up+0x8e/0x5a0
> [14079.851713]  inet_gso_segment+0x150/0x3c0
> [14079.855827]  ? vhost_poll_wakeup+0x31/0x40
> [14079.860032]  skb_mac_gso_segment+0x9b/0x110
> [14079.864331]  __skb_gso_segment+0xae/0x160
> [14079.868455]  ? netif_skb_features+0x144/0x290
> [14079.872928]  validate_xmit_skb+0x167/0x370
> [14079.877139]  validate_xmit_skb_list+0x43/0x70
> [14079.881612]  sch_direct_xmit+0x267/0x380
> [14079.885641]  __qdisc_run+0x140/0x590
> [14079.889324]  __dev_queue_xmit+0x44d/0xba0
> [14079.893450]  ? nf_hook_slow+0x3c/0xb0
> [14079.897229]  br_dev_queue_push_xmit+0xb2/0x1c0
> [14079.901788]  maybe_deliver+0xa9/0x100
> [14079.905564]  br_flood+0x8a/0x180
> [14079.908903]  br_handle_frame_finish+0x31f/0x5b0
> [14079.913547]  br_handle_frame+0x28f/0x3a0
> [14079.917585]  ? ipv6_find_hdr+0x1f0/0x3e0
> [14079.921622]  ? br_handle_local_finish+0x20/0x20
> [14079.926267]  __netif_receive_skb_core.constprop.0+0x4c5/0xc90
> [14079.932125]  ? br_handle_frame_finish+0x5b0/0x5b0
> [14079.936946]  ? ___slab_alloc+0x4bf/0xaf0
> [14079.940986]  __netif_receive_skb_list_core+0x107/0x250
> [14079.946240]  netif_receive_skb_list_internal+0x194/0x2b0
> [14079.951660]  ? napi_gro_flush+0x97/0xf0
> [14079.955604]  napi_complete_done+0x69/0x180
> [14079.959808]  ixgbe_poll+0xe10/0x12e0
> [14079.963506]  __napi_poll+0x26/0x1b0
> [14079.967106]  napi_threaded_poll+0x232/0x250
> [14079.971405]  ? __napi_poll+0x1b0/0x1b0
> [14079.975260]  kthread+0xee/0x120
> [14079.978510]  ? kthread_complete_and_exit+0x20/0x20
> [14079.983415]  ret_from_fork+0x22/0x30
> [14079.987102]  </TASK>
> [14079.989395] Modules linked in: chaoskey
> [14079.993347] CR2: 00000000000000c0
> [14079.996773] ---[ end trace 0000000000000000 ]---
> [14080.018013] pstore: backend (erst) writing error (-28)
> [14080.023274] RIP: 0010:__udp_gso_segment+0x346/0x4f0
> [14080.028264] Code: c3 08 66 89 5c 02 04 45 84 e4 0f 85 27 fd ff ff
> 49 8b 1e 49 8b ae c0 00 00 00 41 0f b7 86 b4 00 00 00 45 0f b7 a6 b2
> 00 00 00 <48> 8b b3 c0 00 00 00 0f b7 8b b2 00 00 00 49 01 ec 48 01 c5
> 48 8d
> [14080.047181] RSP: 0018:ffffa83643a4f818 EFLAGS: 00010246
> [14080.052522] RAX: 00000000000000ce RBX: 0000000000000000 RCX: 0000000000000000
> [14080.059765] RDX: ffffa2ad1403b000 RSI: 0000000000000028 RDI: ffffa2afc9d302d4
> [14080.067012] RBP: ffffa2ad1403b000 R08: 0000000000000022 R09: 00002000001558c9
> [14080.074257] R10: 0000000000000000 R11: ffffa2b02fcea888 R12: 00000000000000e2
> [14080.081502] R13: ffffa2afc9d30200 R14: ffffa2afc9d30200 R15: 00002000001558c9
> [14080.088746] FS:  0000000000000000(0000) GS:ffffa2b02fcc0000(0000)
> knlGS:0000000000000000
> [14080.096964] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [14080.102823] CR2: 00000000000000c0 CR3: 0000000151ff4000 CR4: 00000000003526e0
> [14080.110067] Kernel panic - not syncing: Fatal exception in interrupt
> [14080.325501] Kernel Offset: 0x12600000 from 0xffffffff81000000
> (relocation range: 0xffffffff80000000-0xffffffffbfffffff)
> [14080.353129] ---[ end Kernel panic - not syncing: Fatal exception in
> interrupt ]---

Could you please provide a decoded stack trace?

# in your git tree:
cat <stacktrace file > | ./scripts/decode_stacktrace.sh vmlinux

Thanks!

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
