Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMaLCFPnumkpdAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 18:56:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 677A12C0C23
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 18:56:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9649160BB8;
	Wed, 18 Mar 2026 17:56:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aF9NEraB-IQ8; Wed, 18 Mar 2026 17:56:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0725660BBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773856592;
	bh=iUa0cUAD4togZvYKxzXDBpSFVS/rOwnteKTz4jTJm+8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Of4MRcCC138s1pnDfCch3ac/yGzwUZk9TJbsxZr6Mn+SLlRerXgvw1rHIyqTuhtKv
	 VN5yatTeee5VP3QI94eF+GgvozlYbqNzWBY5TD4MshofKuIn+w02yf81WX3vp34cvK
	 i/y9GAg/89iKG+iYJ5AtxI3/ysQ3pmaS8WEwIccJdRRRXagcxfi9c5hw0qhyL+D+Y8
	 QsJIIJw7+tQ9LPJ4CVqiIEAIEhpknIpHcZeF83V2h42/NXGjn9+R2SoVHbbxQQQi4K
	 u5y3aBchGyEis2OiOvHexuo+qGhKLF1HJqPbFqf2j/iotGyMn3Ton6QUaXOwjgKbYa
	 MCgu3DWcd84uA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0725660BBD;
	Wed, 18 Mar 2026 17:56:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 10FE71AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 17:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0267360BB8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 17:56:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nHOqawO9X6Ih for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 17:56:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AC62960BB6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC62960BB6
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC62960BB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 17:56:29 +0000 (UTC)
Received: from x1 (122.24.31.150.dy.iij4u.or.jp [150.31.24.122])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 62IHtmKq077402
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 19 Mar 2026 02:55:50 +0900 (JST) (envelope-from kohei@enjuk.jp)
Date: Thu, 19 Mar 2026 02:55:48 +0900
From: Kohei Enju <kohei@enjuk.jp>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <abripOPt4oVu-Ksb@x1>
References: <20260318163505.31765-1-aleksander.lobakin@intel.com>
 <20260318163505.31765-4-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260318163505.31765-4-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=iUa0cUAD4togZvYKxzXDBpSFVS/rOwnteKTz4jTJm+8=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1773856550; v=1;
 b=vf/PIfqCgBa02vkmAd/4zNIX/nnJjZaA/43ZKAb+r7I05Qh6JgLI+NNqLk+XQj2W
 0cuskUKclaTebUPaCfUg5+b0DelcmFWX2hTJHzbVH3dDxs9D4Ar49c1NkI70sVMt
 dQo5EZoYmPtsAWOIiE9c4I69FHFRfJYUrj9gTrGPNOD184LFGRbEm+1UzwQkDsvd
 LmXuY8fEojSUR3lz1bs2L/U/0fH0c9z0JpM3APidWvgRMDKR+IdkOKNTn9WZ1Pzc
 TkqbfHJRM96ybw2j+nWtHiQO3gM3gYk3eKPj4E7HaAAa8KEigMktcUKijGhztafE
 BtgZaakc4orZCYaSWGdngw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=vf/PIfqC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/5] ice: migrate to
 netdev ops lock
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 677A12C0C23
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/18 17:35, Alexander Lobakin wrote:
> Queue management ops unconditionally enable netdev locking. The same
> lock is taken by default by several NAPI configuration functions,
> such as napi_enable() and netif_napi_set_irq().
> Request ops locking in advance and make sure we use the _locked
> counterparts of those functions to avoid deadlocks, taking the lock
> manually where needed (suspend/resume, queue rebuild and resets).

Hi Alexander,
After applying this patch (3/5) along with the preceding ones on top of
net-next, I got some WARNING splats when changing the admin state
(up/down) using the ip link command. [1, 2]

Since I haven't looked into this series in detail, I'm reporting the
splats anyway. 
I'm wondering why I haven't seen anyone report this type of issue up to
v3. Maybe there is something wrong with my setup or devices?

Device: Intel Corporation Ethernet Controller E810-XXV for SFP (rev 02)

[1] ip link set $DEV up
  WARNING: ./include/net/netdev_lock.h:17 at netif_napi_set_irq_locked+0x393/0x4b0, CPU#0: ip/898
  Modules linked in:
  CPU: 0 UID: 0 PID: 898 Comm: ip Not tainted 7.0.0-rc3-00751-gf0103a010a50 #88 PREEMPT(full)
  Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
  RIP: 0010:netif_napi_set_irq_locked+0x393/0x4b0
  [...]
  Call Trace:
   <TASK>
   ice_vsi_set_napi_queues_locked+0x31b/0x4d0
   ice_vsi_open+0x359/0x420
   ice_open_internal+0x1a4/0x230
   __dev_open+0x2e9/0x830
   __dev_change_flags+0x411/0x610
   netif_change_flags+0x76/0x170
   do_setlink.isra.0+0x17e8/0x39a0
   rtnl_newlink+0xe72/0x22a0
   rtnetlink_rcv_msg+0x6ea/0xb40
   netlink_rcv_skb+0x121/0x380
   netlink_unicast+0x4aa/0x780
   netlink_sendmsg+0x753/0xc80
   ____sys_sendmsg+0x7a2/0x950
   ___sys_sendmsg+0xf8/0x180
   __sys_sendmsg+0x11f/0x1c0
   do_syscall_64+0xf3/0x690
   entry_SYSCALL_64_after_hwframe+0x77/0x7f
  RIP: 0033:0x7f07ffabec5e
  [...]

[2] ip link set $DEV down
  WARNING: ./include/net/netdev_lock.h:17 at napi_disable_locked+0x3dd/0x5e0, CPU#0: ip/921
  Modules linked in:
  CPU: 0 UID: 0 PID: 921 Comm: ip Tainted: G        W           7.0.0-rc3-00751-gf0103a010a50 #88 PREEMPT(full)
  Tainted: [W]=WARN
  Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
  RIP: 0010:napi_disable_locked+0x3dd/0x5e0
  [...]
  Call Trace:
   <TASK>
   ice_down+0x7c3/0x1010
   ice_vsi_close+0x26f/0x360
   ice_stop+0xde/0x120
   __dev_close_many+0x2a2/0x650
   __dev_change_flags+0x237/0x610
   netif_change_flags+0x76/0x170
   do_setlink.isra.0+0x17e8/0x39a0
   rtnl_newlink+0xe72/0x22a0
   rtnetlink_rcv_msg+0x6ea/0xb40
   netlink_rcv_skb+0x121/0x380
   netlink_unicast+0x4aa/0x780
   netlink_sendmsg+0x753/0xc80
   ____sys_sendmsg+0x7a2/0x950
   ___sys_sendmsg+0xf8/0x180
   __sys_sendmsg+0x11f/0x1c0
   do_syscall_64+0xf3/0x690
   entry_SYSCALL_64_after_hwframe+0x77/0x7f
  RIP: 0033:0x7fc0bb17cc5e
  [...]
  ------------[ cut here ]------------
  WARNING: ./include/net/netdev_lock.h:17 at netif_napi_set_irq_locked+0x393/0x4b0, CPU#0: ip/921
  Modules linked in:
  CPU: 0 UID: 0 PID: 921 Comm: ip Tainted: G        W           7.0.0-rc3-00751-gf0103a010a50 #88 PREEMPT(full)
  Tainted: [W]=WARN
  Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
  RIP: 0010:netif_napi_set_irq_locked+0x393/0x4b0
  [...]
  Call Trace:
   <TASK>
   ice_vsi_clear_napi_queues_locked+0xe7/0x2b0
   ice_vsi_close+0x38/0x360
   ice_stop+0xde/0x120
   __dev_close_many+0x2a2/0x650
   __dev_change_flags+0x237/0x610
   netif_change_flags+0x76/0x170
   do_setlink.isra.0+0x17e8/0x39a0
   rtnl_newlink+0xe72/0x22a0
   rtnetlink_rcv_msg+0x6ea/0xb40
   netlink_rcv_skb+0x121/0x380
   netlink_unicast+0x4aa/0x780
   netlink_sendmsg+0x753/0xc80
   ____sys_sendmsg+0x7a2/0x950
   ___sys_sendmsg+0xf8/0x180
   __sys_sendmsg+0x11f/0x1c0
   do_syscall_64+0xf3/0x690
   entry_SYSCALL_64_after_hwframe+0x77/0x7f
  RIP: 0033:0x7fc0bb17cc5e
  [...]
  ------------[ cut here ]------------
  WARNING: ./include/net/netdev_lock.h:17 at netif_napi_affinity_release+0x1cb/0x250, CPU#1: ip/921
  Modules linked in:
  CPU: 1 UID: 0 PID: 921 Comm: ip Tainted: G        W           7.0.0-rc3-00751-gf0103a010a50 #88 PREEMPT(full)
  Tainted: [W]=WARN
  Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
  RIP: 0010:netif_napi_affinity_release+0x1cb/0x250
  [...]
  Call Trace:
   <TASK>
   irq_set_affinity_notifier+0x261/0x360
   netif_napi_set_irq_locked+0x338/0x4b0
   ice_vsi_clear_napi_queues_locked+0xe7/0x2b0
   ice_vsi_close+0x38/0x360
   ice_stop+0xde/0x120
   __dev_close_many+0x2a2/0x650
   __dev_change_flags+0x237/0x610
   netif_change_flags+0x76/0x170
   do_setlink.isra.0+0x17e8/0x39a0
   rtnl_newlink+0xe72/0x22a0
   rtnetlink_rcv_msg+0x6ea/0xb40
   netlink_rcv_skb+0x121/0x380
   netlink_unicast+0x4aa/0x780
   netlink_sendmsg+0x753/0xc80
   ____sys_sendmsg+0x7a2/0x950
   ___sys_sendmsg+0xf8/0x180
   __sys_sendmsg+0x11f/0x1c0
   do_syscall_64+0xf3/0x690
   entry_SYSCALL_64_after_hwframe+0x77/0x7f
  RIP: 0033:0x7fc0bb17cc5e
  [...]
