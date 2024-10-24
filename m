Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 233759AECAE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 18:53:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56DF360657;
	Thu, 24 Oct 2024 16:53:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ad23qYNLisNS; Thu, 24 Oct 2024 16:53:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D339C60839
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729788779;
	bh=Yw2joPSZBRAcPknHCGCTPBKVECnGNXOC9xb77trAjAo=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oVOXDdAQxRWAYA6T0sObuuloTLDgDC7eheZcm5Pdqm8RMs3UtdDEATZE4t/5rfHJI
	 i7wcF/Cn2foNaUKP513slZmiSPNt1mCv4OlLO/pBmSpwY7bSWIq5aYQacn2dS5yXeb
	 sFuZPhcbXh5xYvvrYjlfhhFYE4ra2OyLK/qhfi4qctysTUuPltCUhAWhsotSKPI1Ey
	 glIqBs6Raa66165WVaLnKUfJ2EzEihhU1723MtQbwz+j/vTpIg+/0swShOm6Dh2gtx
	 ulNxDYIL/gXJjH8jYDdAx9WM3xmP37ylDDeOZeejl7hBUKHIc1b5pj9PjAi1hp85j/
	 BFOMWq80BSMZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D339C60839;
	Thu, 24 Oct 2024 16:52:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 99704972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 16:52:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 866B840589
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 16:52:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YgyqW-HiKRXr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 16:52:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EC57840025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC57840025
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC57840025
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 16:52:55 +0000 (UTC)
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-665-8M5rl3PSMKm3bg1hjSgVPA-1; Thu, 24 Oct 2024 12:52:52 -0400
X-MC-Unique: 8M5rl3PSMKm3bg1hjSgVPA-1
Received: by mail-ot1-f71.google.com with SMTP id
 46e09a7af769-717fac47d50so339053a34.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 09:52:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729788771; x=1730393571;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Yw2joPSZBRAcPknHCGCTPBKVECnGNXOC9xb77trAjAo=;
 b=D2XpSGMd7mOdVpBaPl7SzlrNCI67hsjIa6cjKc2C5huCmvCUuu29Yxzz7+6PSjIYUe
 nXKtv3wOWc19eZte9OWNlYZ4fzhcwDhQl6R0Opwsf4FysHCiLaX9QF7tqeTn3pWgbQBW
 2aW/uwFDaS2oewsqkJ7BVOpED7Nj4nAm3mo/TBQk87xtALPKtE0y0NKIIAZhL93TAYrG
 LrEz7e+0qQ6xzn6wXm22riBlq/vPdd64hYIfy7zUZt3fnt3fNadzq1gPvwzRJlyyBBm3
 Ms86p5npTTQcnnu7ceQI6txezn+EGSzSdfIH8xhYgUYzKfCD0BUd4oenVkIWkK1yW2WH
 tcqA==
X-Gm-Message-State: AOJu0YyFvbZMtcxvOAjMZvN+uoN7Go8kztBf0jLsrXUPECHYRd3xm2Tx
 rir4NtD0YGQs6640TTG23LBWUeAFAUIDhOjeFB6aQWtaEGVzOlOh5Vq/0YnO+pU7u0FD/MEx7Wu
 VpaL3oY4l1hIGBerPkSSc73kIN6otxznqtwMf2CYiMGJUep9Ii9CaM4t0ImxR2iMM49ySOeoiSh
 PYfgq/CpzrY7lJtzIsf7fBtLC/OhFPnuU4fEtx3Tk7Ew==
X-Received: by 2002:a05:6871:5cf:b0:260:e5e1:2411 with SMTP id
 586e51a60fabf-28ccb452718mr1644222fac.6.1729788771294; 
 Thu, 24 Oct 2024 09:52:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1FeOeqVI5RDdJcGP1OgTiiacmQCe/R6h2GxVLiVTbW18yiDFdJFq8LQK9/RlJpfpEMvuN0EvOZ+D7OkZlso8=
X-Received: by 2002:a05:6871:5cf:b0:260:e5e1:2411 with SMTP id
 586e51a60fabf-28ccb452718mr1644215fac.6.1729788770943; Thu, 24 Oct 2024
 09:52:50 -0700 (PDT)
MIME-Version: 1.0
References: <20241016093011.318078-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20241016093011.318078-1-aleksandr.loktionov@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 24 Oct 2024 18:52:39 +0200
Message-ID: <CADEbmW0N+7xNt_DaBcYsK9=A3f4kWnNS4tEV_gAcE3r_7aWgOA@mail.gmail.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, 
 netdev@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1729788773;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Yw2joPSZBRAcPknHCGCTPBKVECnGNXOC9xb77trAjAo=;
 b=UJTgNMkTcYY/4A3DAtxESg9TADJmsOh2oTvXfVigbRSdI08vGI7wiTQz6YBLxpxHFv+h0k
 s4U1RDasOqliHIBV2Rx8UkB+0Y2UKN8ipfAndqkkoHonGM2iNc3PF8vuLRDTdBwK4wvUGN
 6Vlg57eE2JlIvw6akYssg499k730drY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=UJTgNMkT
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix race condition
 by adding filter's intermediate sync state
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

On Wed, Oct 16, 2024 at 11:30=E2=80=AFAM Aleksandr Loktionov
<aleksandr.loktionov@intel.com> wrote:
>
> Fix a race condition in the i40e driver that leads to MAC/VLAN filters
> becoming corrupted and leaking. Address the issue that occurs under
> heavy load when multiple threads are concurrently modifying MAC/VLAN
> filters by setting mac and port VLAN.
>
> 1. Thread T0 allocates a filter in i40e_add_filter() within
>         i40e_ndo_set_vf_port_vlan().
> 2. Thread T1 concurrently frees the filter in __i40e_del_filter() within
>         i40e_ndo_set_vf_mac().
> 3. Subsequently, i40e_service_task() calls i40e_sync_vsi_filters(), which
>         refers to the already freed filter memory, causing corruption.
>
> Reproduction steps:
> 1. Spawn multiple VFs.
> 2. Apply a concurrent heavy load by running parallel operations to change
>         MAC addresses on the VFs and change port VLANs on the host.
> 3. Observe errors in dmesg:
> "Error I40E_AQ_RC_ENOSPC adding RX filters on VF XX,
>         please set promiscuous on manually for VF XX".
>
> Exact code for stable reproduction Intel can't open-source now.

I wrote a reproducer that uses Systemtap to enlarge the race window in
i40e_sync_vsi_filters():
https://gitlab.com/mschmidt2/repro/-/tree/master/i40e-filters-uaf

With KASAN enabled, it looks like this when it triggers:
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 BUG: KASAN: slab-use-after-free in i40e_sync_vsi_filters+0x37ee/0x3c10 [i4=
0e]
 Read of size 2 at addr ffff888120a43350 by task kworker/29:0/211

 CPU: 29 UID: 0 PID: 211 Comm: kworker/29:0 Tainted: G           OE
  6.11.4-301.fc41.x86_64+debug #1
 Tainted: [O]=3DOOT_MODULE, [E]=3DUNSIGNED_MODULE
 Hardware name: Abacus electric, s.r.o. - servis@abacus.cz Super
Server/H12SSW-iN, BIOS 2.7 10/25/2023
 Workqueue: i40e i40e_service_task [i40e]
 Call Trace:
  <TASK>
  dump_stack_lvl+0x84/0xd0
  ? i40e_sync_vsi_filters+0x37ee/0x3c10 [i40e]
  print_report+0x174/0x505
  ? i40e_sync_vsi_filters+0x37ee/0x3c10 [i40e]
  ? srso_alias_return_thunk+0x5/0xfbef5
  ? __virt_addr_valid+0x231/0x420
  ? i40e_sync_vsi_filters+0x37ee/0x3c10 [i40e]
  kasan_report+0xab/0x180
  ? i40e_sync_vsi_filters+0x37ee/0x3c10 [i40e]
  i40e_sync_vsi_filters+0x37ee/0x3c10 [i40e]
  ? __pfx_i40e_sync_vsi_filters+0x10/0x10 [i40e]
  ? __pfx_register_lock_class+0x10/0x10
  ? srso_alias_return_thunk+0x5/0xfbef5
  i40e_sync_filters_subtask.part.0+0x1e0/0x260 [i40e]
  i40e_service_task+0x1b3/0x23a0 [i40e]
  ? srso_alias_return_thunk+0x5/0xfbef5
  ? rethook_hook+0x19/0x90
  ? srso_alias_return_thunk+0x5/0xfbef5
  ? pre_handler_kretprobe+0xc0/0x140
  ? __pfx_i40e_service_task+0x10/0x10 [i40e]
  ? aggr_pre_handler+0xd2/0x160
  ? srso_alias_return_thunk+0x5/0xfbef5
  ? kprobe_ftrace_handler+0x371/0x480
  ? i40e_service_task+0x9/0x23a0 [i40e]
  ? srso_alias_return_thunk+0x5/0xfbef5
  ? loop_init+0xce/0xff0 [loop]
  ? __pfx_i40e_service_task+0x10/0x10 [i40e]
  ? process_one_work+0x860/0x1450
  osnoise_arch_unregister+0x210/0x210
  ? worker_thread+0xe3/0xfc0
  ? __pfx_process_one_work+0x10/0x10
  ? srso_alias_return_thunk+0x5/0xfbef5
  ? srso_alias_return_thunk+0x5/0xfbef5
  ? assign_work+0x16c/0x240
  worker_thread+0x5e6/0xfc0
  ? __pfx_worker_thread+0x10/0x10
  kthread+0x2d5/0x3a0
  ? _raw_spin_unlock_irq+0x28/0x60
  ? __pfx_kthread+0x10/0x10
  ret_from_fork+0x34/0x70
  ? __pfx_kthread+0x10/0x10
  ret_from_fork_asm+0x1a/0x30
  </TASK>

 Allocated by task 2198:
  kasan_save_stack+0x30/0x50
  kasan_save_track+0x14/0x30
  __kasan_kmalloc+0x8f/0xa0
  i40e_add_filter+0x133/0x4c0 [i40e]
  i40e_add_vlan_all_mac+0x7e/0x160 [i40e]
  i40e_ndo_set_vf_port_vlan.cold+0x291/0x363 [i40e]
  do_setlink+0x1216/0x33e0
  __rtnl_newlink+0xb1d/0x1600
  rtnl_newlink+0xc0/0x100
  rtnetlink_rcv_msg+0x2f6/0xb20
  netlink_rcv_skb+0x140/0x3b0
  netlink_unicast+0x431/0x720
  netlink_sendmsg+0x765/0xc20
  ____sys_sendmsg+0x97f/0xc60
  ___sys_sendmsg+0xfd/0x180
  __sys_sendmsg+0x19c/0x220
  do_syscall_64+0x97/0x190
  entry_SYSCALL_64_after_hwframe+0x76/0x7e

 Freed by task 2198:
  kasan_save_stack+0x30/0x50
  kasan_save_track+0x14/0x30
  kasan_save_free_info+0x3b/0x70
  poison_slab_object+0x109/0x180
  __kasan_slab_free+0x14/0x30
  kfree+0x11b/0x450
  i40e_vsi_release+0x38a/0xbd0 [i40e]
  i40e_free_vf_res+0x551/0x9e0 [i40e]
  i40e_cleanup_reset_vf+0x89/0x1620 [i40e]
  i40e_reset_vf+0x216/0x360 [i40e]
  i40e_ndo_set_vf_port_vlan+0x4a8/0x850 [i40e]
  do_setlink+0x1216/0x33e0
  __rtnl_newlink+0xb1d/0x1600
  rtnl_newlink+0xc0/0x100
  rtnetlink_rcv_msg+0x2f6/0xb20
  netlink_rcv_skb+0x140/0x3b0
  netlink_unicast+0x431/0x720
  netlink_sendmsg+0x765/0xc20
  ____sys_sendmsg+0x97f/0xc60
  ___sys_sendmsg+0xfd/0x180
  __sys_sendmsg+0x19c/0x220
  do_syscall_64+0x97/0x190
  entry_SYSCALL_64_after_hwframe+0x76/0x7e

 The buggy address belongs to the object at ffff888120a43340
  which belongs to the cache kmalloc-rnd-02-32 of size 32
 The buggy address is located 16 bytes inside of
  freed 32-byte region [ffff888120a43340, ffff888120a43360)

 The buggy address belongs to the physical page:
 page: refcount:1 mapcount:0 mapping:0000000000000000
index:0xffff888120a43a00 pfn:0x120a43
 flags: 0x17ffffc0000000(node=3D0|zone=3D2|lastcpupid=3D0x1fffff)
 page_type: 0xfdffffff(slab)
 raw: 0017ffffc0000000 ffff88810004e800 dead000000000122 0000000000000000
 raw: ffff888120a43a00 0000000080400034 00000001fdffffff 0000000000000000
 page dumped because: kasan: bad access detected

 Memory state around the buggy address:
  ffff888120a43200: fa fb fb fb fc fc fc fc fa fb fb fb fc fc fc fc
  ffff888120a43280: fa fb fb fb fc fc fc fc fa fb fb fb fc fc fc fc
 >ffff888120a43300: fa fb fb fb fc fc fc fc fa fb fb fb fc fc fc fc
                                                  ^
  ffff888120a43380: fa fb fb fb fc fc fc fc fc fc fc fc fc fc fc fc
  ffff888120a43400: fa fb fb fb fc fc fc fc fa fb fb fb fc fc fc fc
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


> The fix involves implementing a new intermediate filter state,
> I40E_FILTER_NEW_SYNC, for the time when a filter is on a tmp_add_list.
> These filters cannot be deleted from the hash list directly but
> must be removed using the full process.
>
> Fixes: 278e7d0b9d68 ("i40e: store MAC/VLAN filters in a hash with the MAC=
 Address as key")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
Tested-by: Michal Schmidt <mschmidt@redhat.com>

Michal

