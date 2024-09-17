Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBAD97B29A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Sep 2024 18:04:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E39060D68;
	Tue, 17 Sep 2024 16:04:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J30stGIZ8NkT; Tue, 17 Sep 2024 16:04:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 805A260E0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726589057;
	bh=v4ZyqsT4n79EeFd5d+TwUQqE3mId93HU+qBpz4lWZFw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YR09f2VF3xWnbqvbxMtGEr/4kVbpGbC5cei+ZkgAVn1HbvduEHUPjAOTodwfdZ+Ff
	 446oAt2RrbOegs7C9BwQQmHd0vDoqwMgrN9u+hlob/CYw4nGJ6ioBIc2cevHxjdhfU
	 0ixQFjDf7rVJ7dm+22cg9dpLablvN0ueAz6KE3mesQQeHIzN3vwxQha8fWdBR2+JMu
	 GPejBe6shn5a4coSHWUP8e95n0IYsh2+CbKifnJbBwvcvhQSue1/8FLuC5FOMRKg3G
	 j7SRGNSjLGfd8mqar6xRDXTAd696iGdAwEgP9Zc0CLv0RIpUUBA3QdxqnCl1bSt+4N
	 o2OPbqNZkf6yg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 805A260E0A;
	Tue, 17 Sep 2024 16:04:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34B9D1BF484
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 16:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18D1981B69
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 16:04:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZL9y2aFL-yBL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Sep 2024 16:04:12 +0000 (UTC)
X-Greylist: delayed 85729 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 17 Sep 2024 16:04:12 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3C19881B52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C19881B52
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.154.183;
 helo=dispatch1-us1.ppe-hosted.com; envelope-from=greearb@candelatech.com;
 receiver=<UNKNOWN> 
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [67.231.154.183])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C19881B52
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2024 16:04:11 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mail3.candelatech.com (mail.candelatech.com [208.74.158.173])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 206AE3C0092; 
 Tue, 17 Sep 2024 16:04:07 +0000 (UTC)
Received: from [192.168.1.23] (unknown [98.97.39.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 80AC613C2B0;
 Tue, 17 Sep 2024 09:04:06 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 80AC613C2B0
Message-ID: <37c5b56d-e07a-4729-8f8c-d7d8e999a0e3@candelatech.com>
Date: Tue, 17 Sep 2024 09:04:05 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ben Greear <greearb@candelatech.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <9ac75ea7-84de-477c-b586-5115ce844dc7@candelatech.com>
 <b833aea6-b499-4b9c-90fe-aab31510544d@intel.com>
 <3547078e-acdf-4189-9a1d-98f581896706@intel.com>
 <66479f9e-fd0b-41d0-b7b8-07a336c3341b@candelatech.com>
Content-Language: en-MW
Organization: Candela Technologies
In-Reply-To: <66479f9e-fd0b-41d0-b7b8-07a336c3341b@candelatech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-MDID: 1726589049-gUDxLGIyfwmV
X-MDID-O: us5; at1; 1726589049; gUDxLGIyfwmV; <greearb@candelatech.com>;
 8dc78dbb4e7cf902f842fac31f92f42e
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=candelatech.com; s=default; t=1726589047;
 bh=TWkAair4nDJsIx4tIFVVuuoL4WRV/uNcE72d61zLUI4=;
 h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
 b=aBYfrcOV7o17iQtRaP3hv5dZM8Madr6Be9+z/17yjnrAKfn6TQPZJXxiaDhAAhMjt
 rgMnoZremfdL3PfNNsHb40SPksDyaxoChSnv30G1PeJ3mUHU6WU2wSm90BUAENg+bB
 k5XAWGQ0LEfcJFmZtsXWxhgvh+8Vxhjtor5pquAc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=candelatech.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=candelatech.com header.i=@candelatech.com
 header.a=rsa-sha256 header.s=default header.b=aBYfrcOV
Subject: [Intel-wired-lan] inconsistent lock state, deadlock,
 6.11.0 un-modified kernel, maybe VRF related.
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 netdev <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jan Glaza <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[ I changed email subject, as what we reproduced on un-modified kernel is not
   the same as what we saw earlier.]

On 9/16/24 09:15, Ben Greear wrote:
> On 9/16/24 04:09, Przemek Kitszel wrote:
>> On 9/16/24 12:32, Przemek Kitszel wrote:
>>> On 9/14/24 07:27, Ben Greear wrote:
>>>> Hello,
>>>>
>>>> We found this during a long duration network test where we are using
>>>> lots of wifi network devices in a single system, talking with
>>>
>>> It will be really hard to repro for us. Still would like to help.
> 
> We also have trouble reproducing this.  Thanks for suggestions on
> debugging tips below...we'll try to get some better debugging
> to share (on stock kernels).

Hello,

We reproduced a lockup with kernel debugging enabled.

[?2004h[root@ct523c-3b27 ~]# iwlwifi 0000:0c:00.0: fail to flush all tx fifo queues Q 3
iwlwifi 0000:0c:00.0: Queue 3 is stuck 11638 12203

================================
WARNING: inconsistent lock state
6.11.0 #1 Tainted: G        W
--------------------------------
inconsistent {IN-SOFTIRQ-W} -> {SOFTIRQ-ON-W} usage.
btserver/134819 [HC0[0]:SC0[0]:HE1:SE1] takes:
ffff8882da30c118 (rlock-AF_PACKET){+.?.}-{2:2}, at: tpacket_rcv+0x863/0x3b30
{IN-SOFTIRQ-W} state was registered at:
   lock_acquire+0x19a/0x4f0
   _raw_spin_lock+0x27/0x40
   packet_rcv+0xa33/0x1320
   __netif_receive_skb_core.constprop.0+0xcb0/0x3a90
   __netif_receive_skb_list_core+0x2c9/0x890
   netif_receive_skb_list_internal+0x610/0xcc0
   napi_complete_done+0x1c0/0x7c0
   igb_poll+0x1dbb/0x57e0 [igb]
   __napi_poll.constprop.0+0x99/0x430
   net_rx_action+0x8e7/0xe10
   handle_softirqs+0x1b7/0x800
   __irq_exit_rcu+0x91/0xc0
   irq_exit_rcu+0x5/0x10
   common_interrupt+0x7f/0xa0
   asm_common_interrupt+0x22/0x40
   cpuidle_enter_state+0x289/0x320
   cpuidle_enter+0x45/0xa0
   do_idle+0x2fe/0x3e0
   cpu_startup_entry+0x4b/0x60
   start_secondary+0x201/0x280
   common_startup_64+0x13e/0x148
irq event stamp: 467094363
hardirqs last  enabled at (467094363): [<ffffffff83dc794b>] _raw_spin_unlock_irqrestore+0x2b/0x50
hardirqs last disabled at (467094362): [<ffffffff83dc7753>] _raw_spin_lock_irqsave+0x53/0x60
softirqs last  enabled at (467094360): [<ffffffff83481213>] skb_attempt_defer_free+0x303/0x4e0
softirqs last disabled at (467094358): [<ffffffff83481188>] skb_attempt_defer_free+0x278/0x4e0

other info that might help us debug this:
  Possible unsafe locking scenario:

        CPU0
        ----
   lock(rlock-AF_PACKET);
   <Interrupt>
     lock(rlock-AF_PACKET);

  *** DEADLOCK ***

3 locks held by btserver/134819:
  #0: ffff888136a3bf98 (sk_lock-AF_INET){+.+.}-{0:0}, at: tcp_recvmsg+0xc7/0x4e0
  #1: ffffffff84e4bc20 (rcu_read_lock){....}-{1:2}, at: __ip_queue_xmit+0x59/0x1e20
  #2: ffffffff84e4bc20 (rcu_read_lock){....}-{1:2}, at: dev_queue_xmit_nit+0x2a/0xa40

stack backtrace:
CPU: 2 UID: 0 PID: 134819 Comm: btserver Tainted: G        W          6.11.0 #1
Tainted: [W]=WARN
Hardware name: Default string Default string/SKYBAY, BIOS 5.12 08/04/2020
Call Trace:
  <TASK>
  dump_stack_lvl+0x73/0xa0
  mark_lock+0x102e/0x16b0
  ? print_usage_bug.part.0+0x600/0x600
  ? print_usage_bug.part.0+0x600/0x600
  ? print_usage_bug.part.0+0x600/0x600
  ? lock_acquire+0x19a/0x4f0
  ? find_held_lock+0x2d/0x110
  __lock_acquire+0x9ae/0x6170
  ? lockdep_hardirqs_on_prepare+0x3e0/0x3e0
  ? lockdep_hardirqs_on_prepare+0x3e0/0x3e0
  lock_acquire+0x19a/0x4f0
  ? tpacket_rcv+0x863/0x3b30
  ? run_filter+0x131/0x300
  ? lock_sync+0x170/0x170
  ? do_syscall_64+0x69/0x160
  ? entry_SYSCALL_64_after_hwframe+0x4b/0x53
  ? lock_is_held_type+0xa5/0x110
  _raw_spin_lock+0x27/0x40
  ? tpacket_rcv+0x863/0x3b30
  tpacket_rcv+0x863/0x3b30
  ? packet_recvmsg+0x1340/0x1340
  ? __asan_memcpy+0x38/0x60
  ? __skb_clone+0x547/0x730
  ? packet_recvmsg+0x1340/0x1340
  dev_queue_xmit_nit+0x709/0xa40
  ? lockdep_hardirqs_on_prepare+0x3e0/0x3e0
  vrf_finish_direct+0x26e/0x340 [vrf]
  ? vrf_ip_local_out+0x570/0x570 [vrf]
  vrf_l3_out+0x5f4/0xe80 [vrf]
  __ip_local_out+0x51e/0x7a0
  ? __ip_append_data+0x3d00/0x3d00
  ? __lock_acquire+0x1b57/0x6170
  ? ipv4_dst_check+0xd6/0x150
  ? lock_is_held_type+0xa5/0x110
  __ip_queue_xmit+0x7ff/0x1e20
  __tcp_transmit_skb+0x1699/0x3850
  ? __tcp_select_window+0xfb0/0xfb0
  ? __build_skb_around+0x22f/0x330
  ? __alloc_skb+0x13d/0x2c0
  ? __napi_build_skb+0x40/0x40
  ? __tcp_send_ack.part.0+0x5f/0x690
  ? skb_attempt_defer_free+0x303/0x4e0
  tcp_recvmsg_locked+0xdd1/0x23e0
  ? tcp_recvmsg+0xc7/0x4e0
  ? tcp_update_recv_tstamps+0x1c0/0x1c0
  tcp_recvmsg+0xe5/0x4e0
  ? tcp_recv_timestamp+0x6c0/0x6c0
  inet_recvmsg+0xf0/0x4b0
  ? inet_splice_eof+0xa0/0xa0
  ? inet_splice_eof+0xa0/0xa0
  sock_recvmsg+0xc8/0x150
  ? poll_schedule_timeout.constprop.0+0xe0/0xe0
  sock_read_iter+0x258/0x380
  ? poll_schedule_timeout.constprop.0+0xe0/0xe0
  ? sock_recvmsg+0x150/0x150
  ? rw_verify_area+0x64/0x590
  vfs_read+0x8d5/0xc20
  ? poll_schedule_timeout.constprop.0+0xe0/0xe0
  ? kernel_read+0x50/0x50
  ? __asan_memset+0x1f/0x40
  ? ktime_get_ts64+0x85/0x210
  ? __fget_light+0x4d/0x1d0
  ksys_read+0x166/0x1c0
  ? __ia32_sys_pwrite64+0x1d0/0x1d0
  ? __ia32_sys_poll+0x3e0/0x3e0
  do_syscall_64+0x69/0x160
  entry_SYSCALL_64_after_hwframe+0x4b/0x53
RIP: 0033:0x7f6909b01b92
Code: c0 e9 b2 fe ff ff 50 48 8d 3d 9a cd 0b 00 e8 75 f7 01 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0 ff ff 77 56 c3 
0f 1f 44 00 00 48 83 ec 28 48 89 54 24
RSP: 002b:00007ffda143deb8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
RAX: ffffffffffffffda RBX: 000000001d34adb0 RCX: 00007f6909b01b92
RDX: 0000000000010000 RSI: 000000001f238300 RDI: 0000000000000019
RBP: 00007ffda143df40 R08: 00007ffda143df8f R09: 0000000000000000
R10: 00007ffda143e020 R11: 0000000000000246 R12: 000000000046a020
R13: 0000000000000001 R14: 0000000000000001 R15: 00007f6909d22000
  </TASK>
sched: RT throttling activated
iwlwifi 0000:05:00.0: Error sending SCD_QUEUE_CONFIG_CMD: time out after 2000ms.
iwlwifi 0000:05:00.0: Current CMD queue read_ptr 44216 write_ptr 44217
iwlwifi 0000:05:00.0: Start IWL Error Log Dump:
iwlwifi 0000:05:00.0: Transport status: 0x0000004A, valid: 6
iwlwifi 0000:05:00.0: Loaded firmware version: 89.202a2f7b.0 ty-a0-gf-a0-89.ucode
iwlwifi 0000:05:00.0: 0x00000084 | NMI_INTERRUPT_UNKNOWN
iwlwifi 0000:05:00.0: 0x00008E16 | trm_hw_status0
iwlwifi 0000:05:00.0: 0x00000000 | trm_hw_status1
iwlwifi 0000:05:00.0: 0x004DAD6C | branchlink2
iwlwifi 0000:05:00.0: 0x00013548 | interruptlink1
iwlwifi 0000:05:00.0: 0x00013548 | interruptlink2
iwlwifi 0000:05:00.0: 0x0000C248 | data1
iwlwifi 0000:05:00.0: 0x01000000 | data2
iwlwifi 0000:05:00.0: 0x00000000 | data3
iwlwifi 0000:05:00.0: 0x91014029 | beacon time
iwlwifi 0000:05:00.0: 0x37471FEA | tsf low
iwlwifi 0000:05:00.0: 0x00000025 | tsf hi
iwlwifi 0000:05:00.0: 0x00000000 | time gp1
iwlwifi 0000:05:00.0: 0xEE4FE9E9 | time gp2
iwlwifi 0000:05:00.0: 0x00000001 | uCode revision type
iwlwifi 0000:05:00.0: 0x00000059 | uCode version major
iwlwifi 0000:05:00.0: 0x202A2F7B | uCode version minor
iwlwifi 0000:05:00.0: 0x00000420 | hw version
iwlwifi 0000:05:00.0: 0x00C80002 | board version
iwlwifi 0000:05:00.0: 0x80D6F400 | hcmd
iwlwifi 0000:05:00.0: 0xA6720000 | isr0
iwlwifi 0000:05:00.0: 0x01400000 | isr1
iwlwifi 0000:05:00.0: 0x48F00002 | isr2
iwlwifi 0000:0c:00.0: Error sending SCAN_CFG_CMD: time out after 2000ms.
iwlwifi 0000:05:00.0: 0x00C3180C | isr3
iwlwifi 0000:05:00.0: 0x00200000 | isr4
iwlwifi 0000:0c:00.0: Current CMD queue read_ptr 42704 write_ptr 42705
iwlwifi 0000:05:00.0: 0x03CD001C | last cmd Id
iwlwifi 0000:05:00.0: 0x0000C248 | wait_event
iwlwifi 0000:0c:00.0: Start IWL Error Log Dump:
iwlwifi 0000:05:00.0: 0x000000C4 | l2p_control
iwlwifi 0000:0c:00.0: Transport status: 0x0000004A, valid: 6
iwlwifi 0000:05:00.0: 0x00013C34 | l2p_duration
iwlwifi 0000:0c:00.0: Loaded firmware version: 89.202a2f7b.0 ty-a0-gf-a0-89.ucode
iwlwifi 0000:05:00.0: 0x00000007 | l2p_mhvalid
iwlwifi 0000:05:00.0: 0x00000000 | l2p_addr_match
iwlwifi 0000:04:00.0: Error sending SCD_QUEUE_CONFIG_CMD: time out after 2000ms.
iwlwifi 0000:0c:00.0: 0x00000084 | NMI_INTERRUPT_UNKNOWN
iwlwifi 0000:05:00.0: 0x00000009 | lmpm_pmg_sel
iwlwifi 0000:0c:00.0: 0x00008610 | trm_hw_status0
iwlwifi 0000:04:00.0: Current CMD queue read_ptr 44113 write_ptr 44114
iwlwifi 0000:05:00.0: 0x00000000 | timestamp
iwlwifi 0000:0c:00.0: 0x00000000 | trm_hw_status1
iwlwifi 0000:05:00.0: 0x00003838 | flow_handler
iwlwifi 0000:04:00.0: Start IWL Error Log Dump:
iwlwifi 0000:0c:00.0: 0x004DAD6C | branchlink2
iwlwifi 0000:05:00.0: Start IWL Error Log Dump:
iwlwifi 0000:04:00.0: Transport status: 0x0000004A, valid: 6
iwlwifi 0000:0c:00.0: 0x004D09AE | interruptlink1
iwlwifi 0000:05:00.0: Transport status: 0x0000004A, valid: 7
iwlwifi 0000:0c:00.0: 0x004D09AE | interruptlink2
iwlwifi 0000:04:00.0: Loaded firmware version: 89.202a2f7b.0 ty-a0-gf-a0-89.ucode
iwlwifi 0000:05:00.0: 0x20000066 | NMI_INTERRUPT_HOST
iwlwifi 0000:0c:00.0: 0x0000C248 | data1
iwlwifi 0000:05:00.0: 0x00000000 | umac branchlink1
iwlwifi 0000:04:00.0: 0x00000084 | NMI_INTERRUPT_UNKNOWN
iwlwifi 0000:0c:00.0: 0x01000000 | data2
iwlwifi 0000:05:00.0: 0x804838B2 | umac branchlink2
iwlwifi 0000:0c:00.0: 0x00000000 | data3
iwlwifi 0000:04:00.0: 0x00000AF4 | trm_hw_status0
iwlwifi 0000:0c:00.0: 0x94809B8B | beacon time
iwlwifi 0000:05:00.0: 0x804A5AB2 | umac interruptlink1
iwlwifi 0000:04:00.0: 0x00000000 | trm_hw_status1
iwlwifi 0000:0c:00.0: 0x37495488 | tsf low
iwlwifi 0000:05:00.0: 0x804A5AB2 | umac interruptlink2
iwlwifi 0000:04:00.0: 0x004DAD6C | branchlink2
iwlwifi 0000:0c:00.0: 0x00000025 | tsf hi
iwlwifi 0000:05:00.0: 0x01000000 | umac data1
iwlwifi 0000:04:00.0: 0x004D09AE | interruptlink1
iwlwifi 0000:0c:00.0: 0x00000000 | time gp1
iwlwifi 0000:05:00.0: 0x804A5AB2 | umac data2
iwlwifi 0000:04:00.0: 0x004D09AE | interruptlink2
iwlwifi 0000:0c:00.0: 0xEE3E0BBA | time gp2
iwlwifi 0000:05:00.0: 0x00000000 | umac data3
iwlwifi 0000:04:00.0: 0x0001010E | data1
iwlwifi 0000:0c:00.0: 0x00000001 | uCode revision type
iwlwifi 0000:05:00.0: 0x00000059 | umac major
iwlwifi 0000:04:00.0: 0x01000000 | data2
iwlwifi 0000:0c:00.0: 0x00000059 | uCode version major
iwlwifi 0000:05:00.0: 0x202A2F7B | umac minor
iwlwifi 0000:04:00.0: 0x00000000 | data3
iwlwifi 0000:0c:00.0: 0x202A2F7B | uCode version minor
iwlwifi 0000:05:00.0: 0xEE4FE9E7 | frame pointer
iwlwifi 0000:04:00.0: 0x8E40FE29 | beacon time
iwlwifi 0000:0c:00.0: 0x00000420 | hw version
iwlwifi 0000:04:00.0: 0x374A81EA | tsf low
iwlwifi 0000:05:00.0: 0xC0886258 | stack pointer
iwlwifi 0000:0c:00.0: 0x00C80002 | board version
iwlwifi 0000:04:00.0: 0x00000025 | tsf hi
iwlwifi 0000:05:00.0: 0x00B80517 | last host cmd
iwlwifi 0000:04:00.0: 0x00000000 | time gp1
iwlwifi 0000:0c:00.0: 0x80B0F400 | hcmd
iwlwifi 0000:05:00.0: 0x00000400 | isr status reg
iwlwifi 0000:04:00.0: 0xEE57CF2E | time gp2
iwlwifi 0000:0c:00.0: 0xA4020000 | isr0
iwlwifi 0000:05:00.0: IML/ROM dump:
iwlwifi 0000:0c:00.0: 0x01400000 | isr1
iwlwifi 0000:04:00.0: 0x00000001 | uCode revision type
iwlwifi 0000:05:00.0: 0x00000B03 | IML/ROM error/state
iwlwifi 0000:0c:00.0: 0x48F00002 | isr2
iwlwifi 0000:04:00.0: 0x00000059 | uCode version major
iwlwifi 0000:05:00.0: 0x0000807D | IML/ROM data1
iwlwifi 0000:0c:00.0: 0x00C33C1C | isr3
iwlwifi 0000:04:00.0: 0x202A2F7B | uCode version minor
iwlwifi 0000:05:00.0: 0x00000090 | IML/ROM WFPM_AUTH_KEY_0
iwlwifi 0000:0c:00.0: 0x00200000 | isr4
iwlwifi 0000:0c:00.0: 0x037C001C | last cmd Id
iwlwifi 0000:04:00.0: 0x00000420 | hw version
iwlwifi 0000:05:00.0: Fseq Registers:
iwlwifi 0000:05:00.0: 0x60000000 | FSEQ_ERROR_CODE
iwlwifi 0000:05:00.0: 0x80440007 | FSEQ_TOP_INIT_VERSION
iwlwifi 0000:05:00.0: 0x00080009 | FSEQ_CNVIO_INIT_VERSION
iwlwifi 0000:05:00.0: 0x0000A652 | FSEQ_OTP_VERSION
iwlwifi 0000:05:00.0: 0x00000002 | FSEQ_TOP_CONTENT_VERSION
iwlwifi 0000:05:00.0: 0x4552414E | FSEQ_ALIVE_TOKEN
iwlwifi 0000:05:00.0: 0x00400410 | FSEQ_CNVI_ID
iwlwifi 0000:05:00.0: 0x00400410 | FSEQ_CNVR_ID
iwlwifi 0000:05:00.0: 0x00400410 | CNVI_AUX_MISC_CHIP
iwlwifi 0000:05:00.0: 0x00400410 | CNVR_AUX_MISC_CHIP
iwlwifi 0000:05:00.0: 0x00009061 | CNVR_SCU_SD_REGS_SD_REG_DIG_DCDC_VTRIM
iwlwifi 0000:05:00.0: 0x00000061 | CNVR_SCU_SD_REGS_SD_REG_ACTIVE_VDIG_MIRROR
iwlwifi 0000:05:00.0: 0x00080009 | FSEQ_PREV_CNVIO_INIT_VERSION
iwlwifi 0000:05:00.0: 0x00440007 | FSEQ_WIFI_FSEQ_VERSION
iwlwifi 0000:05:00.0: 0x31060198 | FSEQ_BT_FSEQ_VERSION
iwlwifi 0000:05:00.0: 0x000000C8 | FSEQ_CLASS_TP_VERSION
iwlwifi 0000:0c:00.0: 0x0000C248 | wait_event
iwlwifi 0000:04:00.0: 0x00C80002 | board version
iwlwifi 0000:0c:00.0: 0x00000094 | l2p_control
iwlwifi 0000:04:00.0: 0x80F3F400 | hcmd
iwlwifi 0000:0c:00.0: 0x00010034 | l2p_duration
iwlwifi 0000:04:00.0: 0x80020000 | isr0
iwlwifi 0000:04:00.0: 0x00400000 | isr1
iwlwifi 0000:0c:00.0: 0x0000000F | l2p_mhvalid
iwlwifi 0000:04:00.0: 0x48F80002 | isr2
iwlwifi 0000:0c:00.0: 0x00000000 | l2p_addr_match
iwlwifi 0000:04:00.0: 0x00C3380C | isr3
iwlwifi 0000:0c:00.0: 0x00000009 | lmpm_pmg_sel
iwlwifi 0000:04:00.0: 0x00200000 | isr4
iwlwifi 0000:0c:00.0: 0x00000000 | timestamp
iwlwifi 0000:04:00.0: 0x03D5001C | last cmd Id
iwlwifi 0000:0c:00.0: 0x000070CC | flow_handler
iwlwifi 0000:04:00.0: 0x0001010E | wait_event
iwlwifi 0000:0c:00.0: Start IWL Error Log Dump:
iwlwifi 0000:04:00.0: 0x00000024 | l2p_control
iwlwifi 0000:0c:00.0: Transport status: 0x0000004A, valid: 7
iwlwifi 0000:04:00.0: 0x00002020 | l2p_duration
iwlwifi 0000:04:00.0: 0x0000000F | l2p_mhvalid
iwlwifi 0000:0c:00.0: 0x20000066 | NMI_INTERRUPT_HOST
iwlwifi 0000:04:00.0: 0x08000000 | l2p_addr_match
iwlwifi 0000:0c:00.0: 0x00000000 | umac branchlink1
iwlwifi 0000:04:00.0: 0x00000009 | lmpm_pmg_sel
iwlwifi 0000:0c:00.0: 0x804838B2 | umac branchlink2
iwlwifi 0000:04:00.0: 0x00000000 | timestamp
iwlwifi 0000:0c:00.0: 0x804A5AB2 | umac interruptlink1
iwlwifi 0000:04:00.0: 0x00008080 | flow_handler
iwlwifi 0000:0c:00.0: 0x804A5AB2 | umac interruptlink2
iwlwifi 0000:04:00.0: Start IWL Error Log Dump:
iwlwifi 0000:0c:00.0: 0x01000000 | umac data1
iwlwifi 0000:04:00.0: Transport status: 0x0000004A, valid: 7
iwlwifi 0000:0c:00.0: 0x804A5AB2 | umac data2
iwlwifi 0000:04:00.0: 0x20000066 | NMI_INTERRUPT_HOST
iwlwifi 0000:0c:00.0: 0x00000000 | umac data3
iwlwifi 0000:04:00.0: 0x00000000 | umac branchlink1
iwlwifi 0000:0c:00.0: 0x00000059 | umac major
iwlwifi 0000:05:00.0: UMAC CURRENT PC: 0x804a5578
iwlwifi 0000:05:00.0: LMAC1 CURRENT PC: 0xd0
iwlwifi 0000:04:00.0: 0x804838B2 | umac branchlink2
iwlwifi 0000:0c:00.0: 0x202A2F7B | umac minor
iwlwifi 0000:04:00.0: 0x804A5AB2 | umac interruptlink1
iwlwifi 0000:0c:00.0: 0xEE3E0BB8 | frame pointer
iwlwifi 0000:05:00.0: WRT: Collecting data: ini trigger 4 fired (delay=0ms).
iwlwifi 0000:0c:00.0: 0xC0886258 | stack pointer
iwlwifi 0000:04:00.0: 0x804A5AB2 | umac interruptlink2
iwlwifi 0000:0c:00.0: 0x00D0010C | last host cmd
ieee80211 wiphy2: Hardware restart was requested
iwlwifi 0000:04:00.0: 0x01000000 | umac data1
iwlwifi 0000:0c:00.0: 0x00000400 | isr status reg
iwlwifi 0000:04:00.0: 0x804A5AB2 | umac data2
iwlwifi 0000:0c:00.0: IML/ROM dump:
iwlwifi 0000:04:00.0: 0x00000000 | umac data3
iwlwifi 0000:0c:00.0: 0x00000B03 | IML/ROM error/state
iwlwifi 0000:04:00.0: 0x00000059 | umac major
iwlwifi 0000:0c:00.0: 0x0000804A | IML/ROM data1
iwlwifi 0000:04:00.0: 0x202A2F7B | umac minor
iwlwifi 0000:0c:00.0: 0x00000090 | IML/ROM WFPM_AUTH_KEY_0
iwlwifi 0000:04:00.0: 0xEE57CF2B | frame pointer
iwlwifi 0000:04:00.0: 0xC0886258 | stack pointer
iwlwifi 0000:0c:00.0: Fseq Registers:
iwlwifi 0000:0c:00.0: 0x60000000 | FSEQ_ERROR_CODE
iwlwifi 0000:0c:00.0: 0x80440007 | FSEQ_TOP_INIT_VERSION
iwlwifi 0000:0c:00.0: 0x00080009 | FSEQ_CNVIO_INIT_VERSION
iwlwifi 0000:0c:00.0: 0x0000A652 | FSEQ_OTP_VERSION
iwlwifi 0000:0c:00.0: 0x00000002 | FSEQ_TOP_CONTENT_VERSION
iwlwifi 0000:0c:00.0: 0x4552414E | FSEQ_ALIVE_TOKEN
iwlwifi 0000:0c:00.0: 0x00400410 | FSEQ_CNVI_ID
iwlwifi 0000:0c:00.0: 0x00400410 | FSEQ_CNVR_ID
iwlwifi 0000:0c:00.0: 0x00400410 | CNVI_AUX_MISC_CHIP
iwlwifi 0000:0c:00.0: 0x00400410 | CNVR_AUX_MISC_CHIP
iwlwifi 0000:0c:00.0: 0x00009061 | CNVR_SCU_SD_REGS_SD_REG_DIG_DCDC_VTRIM
iwlwifi 0000:0c:00.0: 0x00000061 | CNVR_SCU_SD_REGS_SD_REG_ACTIVE_VDIG_MIRROR
iwlwifi 0000:0c:00.0: 0x00080009 | FSEQ_PREV_CNVIO_INIT_VERSION
iwlwifi 0000:0c:00.0: 0x00440007 | FSEQ_WIFI_FSEQ_VERSION
iwlwifi 0000:0c:00.0: 0x73EE8BF4 | FSEQ_BT_FSEQ_VERSION
iwlwifi 0000:0c:00.0: 0x000000D2 | FSEQ_CLASS_TP_VERSION
iwlwifi 0000:04:00.0: 0x00510517 | last host cmd
iwlwifi 0000:04:00.0: 0x00000400 | isr status reg
iwlwifi 0000:04:00.0: IML/ROM dump:
iwlwifi 0000:04:00.0: 0x00000B03 | IML/ROM error/state
iwlwifi 0000:04:00.0: 0x0000807C | IML/ROM data1
iwlwifi 0000:04:00.0: 0x00000090 | IML/ROM WFPM_AUTH_KEY_0
iwlwifi 0000:04:00.0: Fseq Registers:
iwlwifi 0000:04:00.0: 0x60000000 | FSEQ_ERROR_CODE
iwlwifi 0000:04:00.0: 0x80440007 | FSEQ_TOP_INIT_VERSION
iwlwifi 0000:04:00.0: 0x00080009 | FSEQ_CNVIO_INIT_VERSION
iwlwifi 0000:04:00.0: 0x0000A652 | FSEQ_OTP_VERSION
iwlwifi 0000:04:00.0: 0x00000002 | FSEQ_TOP_CONTENT_VERSION
iwlwifi 0000:04:00.0: 0x4552414E | FSEQ_ALIVE_TOKEN
iwlwifi 0000:04:00.0: 0x00400410 | FSEQ_CNVI_ID
iwlwifi 0000:04:00.0: 0x00400410 | FSEQ_CNVR_ID
iwlwifi 0000:04:00.0: 0x00400410 | CNVI_AUX_MISC_CHIP
iwlwifi 0000:04:00.0: 0x00400410 | CNVR_AUX_MISC_CHIP
iwlwifi 0000:04:00.0: 0x00009061 | CNVR_SCU_SD_REGS_SD_REG_DIG_DCDC_VTRIM
iwlwifi 0000:04:00.0: 0x00000061 | CNVR_SCU_SD_REGS_SD_REG_ACTIVE_VDIG_MIRROR
iwlwifi 0000:04:00.0: 0x00080009 | FSEQ_PREV_CNVIO_INIT_VERSION
iwlwifi 0000:04:00.0: 0x00440007 | FSEQ_WIFI_FSEQ_VERSION
iwlwifi 0000:04:00.0: 0x91A580C2 | FSEQ_BT_FSEQ_VERSION
iwlwifi 0000:04:00.0: 0x000000C8 | FSEQ_CLASS_TP_VERSION
iwlwifi 0000:15:00.0: Error sending SCAN_CFG_CMD: time out after 2000ms.
iwlwifi 0000:15:00.0: Current CMD queue read_ptr 20985 write_ptr 20986
iwlwifi 0000:15:00.0: Start IWL Error Log Dump:
iwlwifi 0000:15:00.0: Transport status: 0x0000004A, valid: 6
iwlwifi 0000:15:00.0: Loaded firmware version: 89.202a2f7b.0 ty-a0-gf-a0-89.ucode
iwlwifi 0000:15:00.0: 0x00000084 | NMI_INTERRUPT_UNKNOWN
iwlwifi 0000:15:00.0: 0x00008210 | trm_hw_status0
iwlwifi 0000:15:00.0: 0x00000000 | trm_hw_status1
iwlwifi 0000:15:00.0: 0x004DAD6C | branchlink2
iwlwifi 0000:15:00.0: 0x004D09AE | interruptlink1
iwlwifi 0000:15:00.0: 0x004D09AE | interruptlink2
iwlwifi 0000:0c:00.0: UMAC CURRENT PC: 0x804a5578
iwlwifi 0000:0c:00.0: LMAC1 CURRENT PC: 0xd0
iwlwifi 0000:15:00.0: 0x0000C212 | data1
iwlwifi 0000:06:00.0: Error sending SCAN_CFG_CMD: time out after 2000ms.
iwlwifi 0000:15:00.0: 0x01000000 | data2
iwlwifi 0000:0c:00.0: WRT: Collecting data: ini trigger 4 fired (delay=0ms).
iwlwifi 0000:06:00.0: Current CMD queue read_ptr 44327 write_ptr 44328
iwlwifi 0000:15:00.0: 0x00000000 | data3
iwlwifi 0000:15:00.0: 0x9801009E | beacon time
ieee80211 wiphy6: Hardware restart was requested
iwlwifi 0000:06:00.0: Start IWL Error Log Dump:
iwlwifi 0000:15:00.0: 0x375A1F76 | tsf low
iwlwifi 0000:06:00.0: Transport status: 0x0000004A, valid: 6
iwlwifi 0000:15:00.0: 0x00000025 | tsf hi
iwlwifi 0000:13:00.0: Error sending SYSTEM_STATISTICS_CMD: time out after 2000ms.
iwlwifi 0000:15:00.0: 0x00000000 | time gp1
iwlwifi 0000:06:00.0: Loaded firmware version: 89.202a2f7b.0 ty-a0-gf-a0-89.ucode
iwlwifi 0000:04:00.0: UMAC CURRENT PC: 0x804a5578
iwlwifi 0000:04:00.0: LMAC1 CURRENT PC: 0xd0
iwlwifi 0000:15:00.0: 0xEE372D48 | time gp2
iwlwifi 0000:13:00.0: Current CMD queue read_ptr 44782 write_ptr 44783
iwlwifi 0000:15:00.0: 0x00000001 | uCode revision type
iwlwifi 0000:06:00.0: 0x00000084 | NMI_INTERRUPT_UNKNOWN
iwlwifi 0000:13:00.0: Start IWL Error Log Dump:
iwlwifi 0000:04:00.0: WRT: Collecting data: ini trigger 4 fired (delay=0ms).
iwlwifi 0000:15:00.0: 0x00000059 | uCode version major
iwlwifi 0000:06:00.0: 0x00008614 | trm_hw_status0
iwlwifi 0000:13:00.0: Transport status: 0x0000004A, valid: 6
iwlwifi 0000:15:00.0: 0x202A2F7B | uCode version minor
iwlwifi 0000:06:00.0: 0x00000000 | trm_hw_status1
ieee80211 wiphy1: Hardware restart was requested
iwlwifi 0000:15:00.0: 0x00000420 | hw version
iwlwifi 0000:13:00.0: Loaded firmware version: 89.202a2f7b.0 ty-a0-gf-a0-89.ucode
iwlwifi 0000:06:00.0: 0x004DAD6C | branchlink2
iwlwifi 0000:15:00.0: 0x00C80002 | board version
iwlwifi 0000:06:00.0: 0x004D09AE | interruptlink1
iwlwifi 0000:13:00.0: 0x00000084 | NMI_INTERRUPT_UNKNOWN
iwlwifi 0000:15:00.0: 0x805EF400 | hcmd
iwlwifi 0000:06:00.0: 0x004D09AE | interruptlink2
iwlwifi 0000:15:00.0: 0x24020000 | isr0
iwlwifi 0000:13:00.0: 0x00008614 | trm_hw_status0
iwlwifi 0000:06:00.0: 0x0000C212 | data1
iwlwifi 0000:15:00.0: 0x01400000 | isr1
iwlwifi 0000:13:00.0: 0x00000000 | trm_hw_status1
iwlwifi 0000:06:00.0: 0x01000000 | data2
iwlwifi 0000:15:00.0: 0x68F00002 | isr2
iwlwifi 0000:06:00.0: 0x00000000 | data3
iwlwifi 0000:13:00.0: 0x004DAD6C | branchlink2
iwlwifi 0000:15:00.0: 0x00C3241C | isr3
iwlwifi 0000:06:00.0: 0x5580EFC2 | beacon time
iwlwifi 0000:13:00.0: 0x004D09AE | interruptlink1
iwlwifi 0000:15:00.0: 0x00200000 | isr4
iwlwifi 0000:06:00.0: 0x375D5050 | tsf low
iwlwifi 0000:15:00.0: 0x037B001C | last cmd Id
iwlwifi 0000:13:00.0: 0x004D09AE | interruptlink2
iwlwifi 0000:06:00.0: 0x00000025 | tsf hi
iwlwifi 0000:15:00.0: 0x0000C212 | wait_event
iwlwifi 0000:13:00.0: 0x0000C248 | data1
iwlwifi 0000:06:00.0: 0x00000000 | time gp1
iwlwifi 0000:15:00.0: 0x000000D4 | l2p_control
iwlwifi 0000:13:00.0: 0x01000000 | data2
iwlwifi 0000:06:00.0: 0xEE5C9904 | time gp2
iwlwifi 0000:13:00.0: 0x00000000 | data3
iwlwifi 0000:15:00.0: 0x00010034 | l2p_duration
iwlwifi 0000:06:00.0: 0x00000001 | uCode revision type
iwlwifi 0000:13:00.0: 0x3AC166E9 | beacon time
iwlwifi 0000:15:00.0: 0x00000007 | l2p_mhvalid
iwlwifi 0000:06:00.0: 0x00000059 | uCode version major
iwlwifi 0000:13:00.0: 0x375E692B | tsf low
iwlwifi 0000:15:00.0: 0x00000000 | l2p_addr_match
iwlwifi 0000:13:00.0: 0x00000025 | tsf hi
iwlwifi 0000:06:00.0: 0x202A2F7B | uCode version minor
iwlwifi 0000:15:00.0: 0x00000009 | lmpm_pmg_sel
iwlwifi 0000:13:00.0: 0x00000000 | time gp1
iwlwifi 0000:06:00.0: 0x00000420 | hw version
iwlwifi 0000:15:00.0: 0x00000000 | timestamp
iwlwifi 0000:13:00.0: 0xEE446B0C | time gp2
iwlwifi 0000:06:00.0: 0x00C80002 | board version
iwlwifi 0000:15:00.0: 0x0000302C | flow_handler
iwlwifi 0000:13:00.0: 0x00000001 | uCode revision type
iwlwifi 0000:06:00.0: 0x8043F400 | hcmd
iwlwifi 0000:15:00.0: Start IWL Error Log Dump:
iwlwifi 0000:13:00.0: 0x00000059 | uCode version major
iwlwifi 0000:06:00.0: 0xA4020000 | isr0
iwlwifi 0000:15:00.0: Transport status: 0x0000004A, valid: 7
iwlwifi 0000:06:00.0: 0x01000000 | isr1
iwlwifi 0000:13:00.0: 0x202A2F7B | uCode version minor
iwlwifi 0000:15:00.0: 0x20000066 | NMI_INTERRUPT_HOST
iwlwifi 0000:06:00.0: 0x48F00002 | isr2
iwlwifi 0000:13:00.0: 0x00000420 | hw version
iwlwifi 0000:06:00.0: 0x00C3281D | isr3
iwlwifi 0000:15:00.0: 0x00000000 | umac branchlink1
iwlwifi 0000:13:00.0: 0x00C80002 | board version
iwlwifi 0000:06:00.0: 0x00200000 | isr4
iwlwifi 0000:15:00.0: 0x804838B2 | umac branchlink2
iwlwifi 0000:13:00.0: 0x8090F400 | hcmd
iwlwifi 0000:06:00.0: 0x031F001C | last cmd Id
iwlwifi 0000:15:00.0: 0x804A5AB2 | umac interruptlink1
iwlwifi 0000:13:00.0: 0xA4020000 | isr0
iwlwifi 0000:06:00.0: 0x0000C212 | wait_event
iwlwifi 0000:13:00.0: 0x00000000 | isr1
iwlwifi 0000:15:00.0: 0x804A5AB2 | umac interruptlink2
iwlwifi 0000:06:00.0: 0x000000D4 | l2p_control
iwlwifi 0000:13:00.0: 0x48F00002 | isr2
iwlwifi 0000:15:00.0: 0x01000000 | umac data1
iwlwifi 0000:06:00.0: 0x00012034 | l2p_duration
iwlwifi 0000:13:00.0: 0x00C3080C | isr3
iwlwifi 0000:15:00.0: 0x804A5AB2 | umac data2
iwlwifi 0000:06:00.0: 0x00000007 | l2p_mhvalid
iwlwifi 0000:13:00.0: 0x00200000 | isr4
iwlwifi 0000:15:00.0: 0x00000000 | umac data3
iwlwifi 0000:06:00.0: 0x00000000 | l2p_addr_match
iwlwifi 0000:13:00.0: 0x0316001C | last cmd Id
iwlwifi 0000:15:00.0: 0x00000059 | umac major
iwlwifi 0000:13:00.0: 0x0000C248 | wait_event
iwlwifi 0000:06:00.0: 0x00000009 | lmpm_pmg_sel
iwlwifi 0000:15:00.0: 0x202A2F7B | umac minor
iwlwifi 0000:13:00.0: 0x00000080 | l2p_control
iwlwifi 0000:06:00.0: 0x00000000 | timestamp
iwlwifi 0000:15:00.0: 0xEE372D45 | frame pointer
iwlwifi 0000:13:00.0: 0x00012034 | l2p_duration
iwlwifi 0000:06:00.0: 0x000028A0 | flow_handler
iwlwifi 0000:15:00.0: 0xC0886258 | stack pointer
iwlwifi 0000:13:00.0: 0x0000003F | l2p_mhvalid
iwlwifi 0000:06:00.0: Start IWL Error Log Dump:
iwlwifi 0000:15:00.0: 0x00F9010C | last host cmd
iwlwifi 0000:13:00.0: 0x00001800 | l2p_addr_match
iwlwifi 0000:06:00.0: Transport status: 0x0000004A, valid: 7
iwlwifi 0000:15:00.0: 0x00000400 | isr status reg
iwlwifi 0000:13:00.0: 0x00000009 | lmpm_pmg_sel
iwlwifi 0000:06:00.0: 0x20000066 | NMI_INTERRUPT_HOST
iwlwifi 0000:15:00.0: IML/ROM dump:
iwlwifi 0000:13:00.0: 0x00000000 | timestamp
iwlwifi 0000:06:00.0: 0x00000000 | umac branchlink1
iwlwifi 0000:15:00.0: 0x00000B03 | IML/ROM error/state
iwlwifi 0000:13:00.0: 0x00008800 | flow_handler
iwlwifi 0000:06:00.0: 0x804838B2 | umac branchlink2
iwlwifi 0000:15:00.0: 0x0000807A | IML/ROM data1
iwlwifi 0000:13:00.0: Start IWL Error Log Dump:
iwlwifi 0000:06:00.0: 0x804A5AB2 | umac interruptlink1
iwlwifi 0000:15:00.0: 0x00000090 | IML/ROM WFPM_AUTH_KEY_0
iwlwifi 0000:13:00.0: Transport status: 0x0000004A, valid: 7
iwlwifi 0000:06:00.0: 0x804A5AB2 | umac interruptlink2
iwlwifi 0000:15:00.0: Fseq Registers:
iwlwifi 0000:15:00.0: 0x60000000 | FSEQ_ERROR_CODE
iwlwifi 0000:15:00.0: 0x80440007 | FSEQ_TOP_INIT_VERSION
iwlwifi 0000:15:00.0: 0x00080009 | FSEQ_CNVIO_INIT_VERSION
iwlwifi 0000:15:00.0: 0x0000A652 | FSEQ_OTP_VERSION
iwlwifi 0000:15:00.0: 0x00000002 | FSEQ_TOP_CONTENT_VERSION
iwlwifi 0000:15:00.0: 0x4552414E | FSEQ_ALIVE_TOKEN
iwlwifi 0000:15:00.0: 0x00400410 | FSEQ_CNVI_ID
iwlwifi 0000:15:00.0: 0x00400410 | FSEQ_CNVR_ID
iwlwifi 0000:15:00.0: 0x00400410 | CNVI_AUX_MISC_CHIP
iwlwifi 0000:15:00.0: 0x00400410 | CNVR_AUX_MISC_CHIP
iwlwifi 0000:15:00.0: 0x00009061 | CNVR_SCU_SD_REGS_SD_REG_DIG_DCDC_VTRIM
iwlwifi 0000:15:00.0: 0x00000061 | CNVR_SCU_SD_REGS_SD_REG_ACTIVE_VDIG_MIRROR
iwlwifi 0000:15:00.0: 0x00080009 | FSEQ_PREV_CNVIO_INIT_VERSION
iwlwifi 0000:15:00.0: 0x00440007 | FSEQ_WIFI_FSEQ_VERSION
iwlwifi 0000:15:00.0: 0x80A93640 | FSEQ_BT_FSEQ_VERSION
iwlwifi 0000:15:00.0: 0x000000DC | FSEQ_CLASS_TP_VERSION
iwlwifi 0000:13:00.0: 0x20000066 | NMI_INTERRUPT_HOST
iwlwifi 0000:06:00.0: 0x01000000 | umac data1
iwlwifi 0000:13:00.0: 0x00000000 | umac branchlink1
iwlwifi 0000:06:00.0: 0x804A5AB2 | umac data2
iwlwifi 0000:13:00.0: 0x804838B2 | umac branchlink2
iwlwifi 0000:06:00.0: 0x00000000 | umac data3
iwlwifi 0000:13:00.0: 0x804A5AB2 | umac interruptlink1
iwlwifi 0000:06:00.0: 0x00000059 | umac major
iwlwifi 0000:13:00.0: 0x804A5AB2 | umac interruptlink2
iwlwifi 0000:06:00.0: 0x202A2F7B | umac minor
iwlwifi 0000:06:00.0: 0xEE5C9901 | frame pointer
iwlwifi 0000:13:00.0: 0x01000000 | umac data1
iwlwifi 0000:06:00.0: 0xC0886258 | stack pointer
iwlwifi 0000:13:00.0: 0x804A5AB2 | umac data2
iwlwifi 0000:06:00.0: 0x0027010C | last host cmd
iwlwifi 0000:13:00.0: 0x00000000 | umac data3
iwlwifi 0000:13:00.0: 0x00000059 | umac major
iwlwifi 0000:06:00.0: 0x00000400 | isr status reg
iwlwifi 0000:13:00.0: 0x202A2F7B | umac minor
iwlwifi 0000:06:00.0: IML/ROM dump:
iwlwifi 0000:06:00.0: 0x00000B03 | IML/ROM error/state
iwlwifi 0000:13:00.0: 0xEE446B09 | frame pointer
iwlwifi 0000:13:00.0: 0xC0886258 | stack pointer
iwlwifi 0000:06:00.0: 0x00008049 | IML/ROM data1
iwlwifi 0000:13:00.0: 0x00EE020F | last host cmd
iwlwifi 0000:06:00.0: 0x00000090 | IML/ROM WFPM_AUTH_KEY_0
iwlwifi 0000:13:00.0: 0x00000400 | isr status reg
iwlwifi 0000:06:00.0: Fseq Registers:
iwlwifi 0000:06:00.0: 0x60000000 | FSEQ_ERROR_CODE
iwlwifi 0000:06:00.0: 0x80440007 | FSEQ_TOP_INIT_VERSION
iwlwifi 0000:06:00.0: 0x00080009 | FSEQ_CNVIO_INIT_VERSION
iwlwifi 0000:06:00.0: 0x0000A652 | FSEQ_OTP_VERSION
iwlwifi 0000:06:00.0: 0x00000002 | FSEQ_TOP_CONTENT_VERSION
iwlwifi 0000:06:00.0: 0x4552414E | FSEQ_ALIVE_TOKEN
iwlwifi 0000:06:00.0: 0x00400410 | FSEQ_CNVI_ID
iwlwifi 0000:06:00.0: 0x00400410 | FSEQ_CNVR_ID
iwlwifi 0000:06:00.0: 0x00400410 | CNVI_AUX_MISC_CHIP
iwlwifi 0000:06:00.0: 0x00400410 | CNVR_AUX_MISC_CHIP
iwlwifi 0000:06:00.0: 0x00009061 | CNVR_SCU_SD_REGS_SD_REG_DIG_DCDC_VTRIM
iwlwifi 0000:06:00.0: 0x00000061 | CNVR_SCU_SD_REGS_SD_REG_ACTIVE_VDIG_MIRROR
iwlwifi 0000:06:00.0: 0x00080009 | FSEQ_PREV_CNVIO_INIT_VERSION
iwlwifi 0000:06:00.0: 0x00440007 | FSEQ_WIFI_FSEQ_VERSION
iwlwifi 0000:06:00.0: 0x5EE572FA | FSEQ_BT_FSEQ_VERSION
iwlwifi 0000:06:00.0: 0x000000DC | FSEQ_CLASS_TP_VERSION
iwlwifi 0000:13:00.0: IML/ROM dump:
iwlwifi 0000:13:00.0: 0x00000B03 | IML/ROM error/state
iwlwifi 0000:13:00.0: 0x0000807B | IML/ROM data1
iwlwifi 0000:13:00.0: 0x00000090 | IML/ROM WFPM_AUTH_KEY_0
iwlwifi 0000:13:00.0: Fseq Registers:
iwlwifi 0000:13:00.0: 0x60000000 | FSEQ_ERROR_CODE
iwlwifi 0000:13:00.0: 0x80440007 | FSEQ_TOP_INIT_VERSION
iwlwifi 0000:13:00.0: 0x00080009 | FSEQ_CNVIO_INIT_VERSION
iwlwifi 0000:13:00.0: 0x0000A652 | FSEQ_OTP_VERSION
iwlwifi 0000:13:00.0: 0x00000002 | FSEQ_TOP_CONTENT_VERSION
iwlwifi 0000:13:00.0: 0x4552414E | FSEQ_ALIVE_TOKEN
iwlwifi 0000:13:00.0: 0x00400410 | FSEQ_CNVI_ID
iwlwifi 0000:13:00.0: 0x00400410 | FSEQ_CNVR_ID
iwlwifi 0000:13:00.0: 0x00400410 | CNVI_AUX_MISC_CHIP
iwlwifi 0000:13:00.0: 0x00400410 | CNVR_AUX_MISC_CHIP
iwlwifi 0000:13:00.0: 0x00009061 | CNVR_SCU_SD_REGS_SD_REG_DIG_DCDC_VTRIM
iwlwifi 0000:13:00.0: 0x00000061 | CNVR_SCU_SD_REGS_SD_REG_ACTIVE_VDIG_MIRROR
iwlwifi 0000:13:00.0: 0x00080009 | FSEQ_PREV_CNVIO_INIT_VERSION
iwlwifi 0000:13:00.0: 0x00440007 | FSEQ_WIFI_FSEQ_VERSION
iwlwifi 0000:13:00.0: 0xF5FF3B9C | FSEQ_BT_FSEQ_VERSION
iwlwifi 0000:13:00.0: 0x000000C8 | FSEQ_CLASS_TP_VERSION
iwlwifi 0000:15:00.0: UMAC CURRENT PC: 0x804a5578
iwlwifi 0000:15:00.0: LMAC1 CURRENT PC: 0xd0
iwlwifi 0000:15:00.0: WRT: Collecting data: ini trigger 4 fired (delay=0ms).
ieee80211 wiphy11: Hardware restart was requested
iwlwifi 0000:06:00.0: UMAC CURRENT PC: 0x804a5578
iwlwifi 0000:06:00.0: LMAC1 CURRENT PC: 0xd0
iwlwifi 0000:06:00.0: WRT: Collecting data: ini trigger 4 fired (delay=0ms).
ieee80211 wiphy3: Hardware restart was requested
iwlwifi 0000:13:00.0: UMAC CURRENT PC: 0x804a5578
iwlwifi 0000:13:00.0: LMAC1 CURRENT PC: 0xd0
iwlwifi 0000:13:00.0: WRT: Collecting data: ini trigger 4 fired (delay=0ms).
ieee80211 wiphy9: Hardware restart was requested
iwlwifi 0000:0c:00.0: Queue 6 is stuck 6 9
iwlwifi 0000:0c:00.0: Queue 2 is stuck 291 300
iwlwifi 0000:15:00.0: Queue 2 is stuck 359 420
iwlwifi 0000:06:00.0: Queue 3 is stuck 30 32
iwlwifi 0000:0a:00.0: Queue 2 is stuck 133 139
watchdog: BUG: soft lockup - CPU#0 stuck for 26s! [dumpcap:138701]
Modules linked in: nfnetlink_queue nfnetlink_log bluetooth tls nf_conntrack_netlink nf_conntrack nfnetlink vrf nf_defrag_ipv6 nf_defrag_ipv4 8021q garp mrp stp 
llc macvlan pktgen rpcrdma rdma_cm iw_cm ib_cm ib_core qrtr iwlmvm ee1004 intel_rapl_msr iTCO_wdt intel_pmc_bxt iTCO_vendor_support snd_hda_codec_hdmi 
snd_hda_codec_realtek snd_hda_codec_generic snd_hda_scodec_component coretemp intel_rapl_common snd_hda_intel intel_uncore_frequency 
intel_uncore_frequency_common snd_intel_dspcfg mac80211 snd_hda_codec snd_hda_core snd_hwdep snd_seq snd_seq_device snd_pcm intel_tcc_cooling iwlwifi snd_timer 
x86_pkg_temp_thermal intel_powerclamp pcspkr intel_wmi_thunderbolt snd i2c_i801 cfg80211 soundcore i2c_smbus bfq i2c_mux mei_hdcp mei_pxp intel_pch_thermal 
intel_pmc_core intel_vsec pmt_telemetry acpi_pad pmt_class sch_fq_codel nfsd auth_rpcgss nfs_acl lockd grace sunrpc zram raid1 dm_raid raid456 libcrc32c 
async_raid6_recov async_memcpy async_pq async_xor xor async_tx raid6_pq i915 cec rc_core drm_buddy intel_gtt
  drm_display_helper drm_kms_helper ttm ixgbe agpgart igb mdio i2c_algo_bit dca hwmon drm mei_wdt xhci_pci i2c_core xhci_pci_renesas video wmi fuse [last 
unloaded: nfnetlink]
irq event stamp: 105949
hardirqs last  enabled at (105949): [<ffffffff814922ca>] __call_rcu_common.constprop.0+0x2da/0x6b0
hardirqs last disabled at (105948): [<ffffffff81492386>] __call_rcu_common.constprop.0+0x396/0x6b0
softirqs last  enabled at (105942): [<ffffffff83ba66e3>] packet_setsockopt+0x483/0x2e90
softirqs last disabled at (105940): [<ffffffff8343fd26>] release_sock+0x16/0x1b0
CPU: 0 UID: 0 PID: 138701 Comm: dumpcap Tainted: G        W          6.11.0 #1
Tainted: [W]=WARN
Hardware name: Default string Default string/SKYBAY, BIOS 5.12 08/04/2020
RIP: 0010:queued_spin_lock_slowpath+0x716/0xba0
Code: 00 00 8b 45 08 85 c0 75 38 48 b8 00 00 00 00 00 fc ff df 4c 89 fa 4d 89 fd 48 c1 ea 03 41 83 e5 07 48 01 c2 41 83 c5 03 f3 90 <0f> b6 02 41 38 c5 7c 08 84 
c0 0f 85 ba 03 00 00 8b 45 08 85 c0 74
RSP: 0018:ffff888303f0faa0 EFLAGS: 00000246
RAX: 0000000000000000 RBX: ffff88813b3c0100 RCX: 1ffffffff09491e7
RDX: ffffed1083b48159 RSI: 0000000000000002 RDI: ffffffff84a48f38
RBP: ffff88841da40ac0 R08: 0000000000000001 R09: ffffed1027678020
R10: ffff88813b3c0103 R11: 0000000000000000 R12: 1ffff110607e1f56
R13: 0000000000000003 R14: 0000000000040000 R15: ffff88841da40ac8
FS:  00007f18c016c740(0000) GS:ffff88841da00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fddd15ea858 CR3: 000000012acdf005 CR4: 00000000003706f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  <IRQ>
  ? watchdog_timer_fn+0x2d9/0x3b0
  ? lockup_detector_update_enable+0x50/0x50
  ? __hrtimer_run_queues+0x495/0x860
  ? trace_hrtimer_cancel+0x130/0x130
  ? ktime_get_update_offsets_now+0x87/0x2c0
  ? hrtimer_interrupt+0x2c4/0x7d0
  ? __flush_smp_call_function_queue+0x2e2/0x600
  ? __sysvec_apic_timer_interrupt+0xbc/0x380
  ? sysvec_apic_timer_interrupt+0x66/0x80
  </IRQ>
  <TASK>
  ? asm_sysvec_apic_timer_interrupt+0x16/0x20
  ? queued_spin_lock_slowpath+0x716/0xba0
  ? _raw_write_unlock_irqrestore+0x50/0x50
  ? lock_acquire+0x43a/0x4f0
  ? lock_release+0x4c1/0x680
  ? lock_sync+0x170/0x170
  do_raw_spin_lock+0x1dd/0x270
  ? spin_bug+0x1c0/0x1c0
  packet_getsockopt+0xfa/0x900
  ? packet_cached_dev_get+0x1d0/0x1d0
  ? do_proc_dopipe_max_size_conv+0x130/0x130
  ? do_nanosleep+0x117/0x3c0
  do_sock_getsockopt+0x201/0x6a0
  ? sock_fasync+0x110/0x110
  ? hrtimer_nanosleep+0x151/0x320
  ? nanosleep_copyout+0xc0/0xc0
  ? kernel_write+0x5a0/0x5a0
  ? __fget_light+0x4d/0x1d0
  __sys_getsockopt+0x14d/0x270
  ? __ia32_sys_setsockopt+0x150/0x150
  ? ksys_write+0x166/0x1c0
  ? __ia32_sys_read+0xa0/0xa0
  __x64_sys_getsockopt+0xb4/0x150
  ? trace_irq_enable.constprop.0+0xce/0x110
  do_syscall_64+0x69/0x160
  entry_SYSCALL_64_after_hwframe+0x4b/0x53
RIP: 0033:0x7f18c03133ce
Code: 48 8b 0d 55 4a 0e 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 49 89 ca b8 37 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 0a c3 
66 0f 1f 84 00 00 00 00 00 48 8b 15 19
RSP: 002b:00007ffd0ee1ae58 EFLAGS: 00000246 ORIG_RAX: 0000000000000037
RAX: ffffffffffffffda RBX: 0000563025906110 RCX: 00007f18c03133ce
RDX: 0000000000000006 RSI: 0000000000000107 RDI: 000000000000006f
RBP: 0000563025906398 R08: 00007ffd0ee1ae64 R09: 0000000000000075
R10: 00007ffd0ee1ae68 R11: 0000000000000246 R12: 00007ffd0ee1aef4
R13: 0000563025906490 R14: 0000563007d4ffd2 R15: 00005630258face0
  </TASK>
watchdog: BUG: soft lockup - CPU#4 stuck for 26s! [btserver:134831]
Modules linked in: nfnetlink_queue nfnetlink_log bluetooth tls nf_conntrack_netlink nf_conntrack nfnetlink vrf nf_defrag_ipv6 nf_defrag_ipv4 8021q garp mrp stp 
llc macvlan pktgen rpcrdma rdma_cm iw_cm ib_cm ib_core qrtr iwlmvm ee1004 intel_rapl_msr iTCO_wdt intel_pmc_bxt iTCO_vendor_support snd_hda_codec_hdmi 
snd_hda_codec_realtek snd_hda_codec_generic snd_hda_scodec_component coretemp intel_rapl_common snd_hda_intel intel_uncore_frequency 
intel_uncore_frequency_common snd_intel_dspcfg mac80211 snd_hda_codec snd_hda_core snd_hwdep snd_seq snd_seq_device snd_pcm intel_tcc_cooling iwlwifi snd_timer 
x86_pkg_temp_thermal intel_powerclamp pcspkr intel_wmi_thunderbolt snd i2c_i801 cfg80211 soundcore i2c_smbus bfq i2c_mux mei_hdcp mei_pxp intel_pch_thermal 
intel_pmc_core intel_vsec pmt_telemetry acpi_pad pmt_class sch_fq_codel nfsd auth_rpcgss nfs_acl lockd grace sunrpc zram raid1 dm_raid raid456 libcrc32c 
async_raid6_recov async_memcpy async_pq async_xor xor async_tx raid6_pq i915 cec rc_core drm_buddy intel_gtt
  drm_display_helper drm_kms_helper ttm ixgbe agpgart igb mdio i2c_algo_bit dca hwmon drm mei_wdt xhci_pci i2c_core xhci_pci_renesas video wmi fuse [last 
unloaded: nfnetlink]
irq event stamp: 825662060
hardirqs last  enabled at (825662059): [<ffffffff83dc794b>] _raw_spin_unlock_irqrestore+0x2b/0x50
hardirqs last disabled at (825662060): [<ffffffff83dad49b>] __schedule+0x12ab/0x2c90
softirqs last  enabled at (825661498): [<ffffffff83ba5fef>] packet_poll+0x2ef/0x560
softirqs last disabled at (825661496): [<ffffffff83ba5ef9>] packet_poll+0x1f9/0x560
CPU: 4 UID: 0 PID: 134831 Comm: btserver Tainted: G        W    L     6.11.0 #1
Tainted: [W]=WARN, [L]=SOFTLOCKUP
Hardware name: Default string Default string/SKYBAY, BIOS 5.12 08/04/2020
RIP: 0010:queued_spin_lock_slowpath+0x7b2/0xba0
Code: 00 00 8b 03 66 85 c0 74 39 48 b8 00 00 00 00 00 fc ff df 49 89 df 49 89 dd 49 c1 ef 03 41 83 e5 07 49 01 c7 41 83 c5 03 f3 90 <41> 0f b6 07 41 38 c5 7c 08 
84 c0 0f 85 5e 02 00 00 8b 03 66 85 c0
RSP: 0000:ffff8882b1c271c0 EFLAGS: 00000202
RAX: 0000000000040101 RBX: ffff88813b3c0100 RCX: 0000000000000000
RDX: 0000000000000000 RSI: 0000000000000002 RDI: ffff88813b3c0102
RBP: ffff88841dc40ac0 R08: 0000000000000001 R09: ffffed1027678020
R10: ffff88813b3c0103 R11: 0000000000000000 R12: 1ffff11056384e3a
R13: 0000000000000003 R14: 0000000000140000 R15: ffffed1027678020
FS:  00007f75c58057c0(0000) GS:ffff88841dc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f1280003b38 CR3: 000000015354a004 CR4: 00000000003706f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  <IRQ>
  ? watchdog_timer_fn+0x2d9/0x3b0
  ? lockup_detector_update_enable+0x50/0x50
  ? __hrtimer_run_queues+0x495/0x860
  ? trace_hrtimer_cancel+0x130/0x130
  ? ktime_get_update_offsets_now+0x87/0x2c0
  ? hrtimer_interrupt+0x2c4/0x7d0
  ? __flush_smp_call_function_queue+0x2e2/0x600
  ? __sysvec_apic_timer_interrupt+0xbc/0x380
  ? sysvec_apic_timer_interrupt+0x66/0x80
  </IRQ>
  <TASK>
  ? asm_sysvec_apic_timer_interrupt+0x16/0x20
  ? queued_spin_lock_slowpath+0x7b2/0xba0
  ? __kasan_slab_alloc+0x62/0x70
  ? kmem_cache_alloc_noprof+0xc8/0x290
  ? _raw_write_unlock_irqrestore+0x50/0x50
  ? lock_acquire+0x43a/0x4f0
  ? lock_acquire+0x43a/0x4f0
  ? run_filter+0x131/0x300
  ? lock_sync+0x170/0x170
  do_raw_spin_lock+0x1dd/0x270
  ? spin_bug+0x1c0/0x1c0
  tpacket_rcv+0x863/0x3b30
  ? __lock_acquire+0x5806/0x6170
  ? packet_recvmsg+0x1340/0x1340
  ? seqcount_lockdep_reader_access.constprop.0+0x82/0x90
  ? ktime_get_with_offset+0x62/0x1b0
  ? ktime_get_with_offset+0xad/0x1b0
  ? __skb_clone+0x547/0x730
  ? packet_recvmsg+0x1340/0x1340
  dev_queue_xmit_nit+0x709/0xa40
  ? sk_skb_reason_drop+0xfb/0x150
  vrf_l3_rcv+0x3a3/0xe10 [vrf]
  ? vrf_l3_out+0xe80/0xe80 [vrf]
  ? run_filter+0x300/0x300
  ? __netif_receive_skb_core.constprop.0+0xadd/0x3a90
  ip_sublist_rcv+0x17f/0x870
  ? ip_rcv_finish_core.constprop.0+0x1e70/0x1e70
  ? __kernel_text_address+0x9/0x30
  ? __asan_memset+0x1f/0x40
  ? ip_rcv_core+0x603/0xcc0
  ip_list_rcv+0x2c1/0x3c0
  ? stack_trace_save+0x8b/0xc0
  ? ip_rcv+0x320/0x320
  ? stack_depot_save_flags+0x24/0x880
  ? filter_irq_stacks+0x90/0x90
  __netif_receive_skb_list_core+0x478/0x890
  ? __irq_exit_rcu+0x91/0xc0
  ? __netif_receive_skb_core.constprop.0+0x3a90/0x3a90
  ? trace_irq_enable.constprop.0+0xce/0x110
  ? seqcount_lockdep_reader_access.constprop.0+0x82/0x90
  ? ktime_get_with_offset+0x62/0x1b0
  ? ktime_get_with_offset+0xad/0x1b0
  netif_receive_skb_list_internal+0x610/0xcc0
  ? lock_release+0x4c1/0x680
  ? dev_gro_receive+0x10fd/0x2d50
  ? process_backlog+0x1220/0x1220
  ? napi_gro_complete.constprop.0+0x1e4/0x650
  ? napi_gro_flush+0x225/0x380
  ? reacquire_held_locks+0x4e0/0x4e0
  napi_complete_done+0x1c0/0x7c0
  ? napi_skb_cache_put+0x81/0x500
  ? napi_busy_loop+0x110/0x110
  ? napi_gro_receive+0x776/0x990
  ixgbe_poll+0x2073/0x4de0 [ixgbe]
  ? lock_sync+0x170/0x170
  ? ixgbe_xdp_ring_update_tail_locked+0x80/0x80 [ixgbe]
  ? net_rx_action+0x3e1/0xe10
  ? reacquire_held_locks+0x4e0/0x4e0
  ? poison_slab_object+0x107/0x180
  __napi_poll.constprop.0+0x99/0x430
  net_rx_action+0x8e7/0xe10
  ? __napi_poll.constprop.0+0x430/0x430
  ? handle_irq_event+0x98/0x1b0
  ? do_raw_spin_lock+0x128/0x270
  ? spin_bug+0x1c0/0x1c0
  ? lock_release+0x4c1/0x680
  ? __common_interrupt+0x62/0x110
  ? reacquire_held_locks+0x4e0/0x4e0
  handle_softirqs+0x1b7/0x800
  __irq_exit_rcu+0x91/0xc0
  irq_exit_rcu+0x5/0x10
  common_interrupt+0x41/0xa0
  asm_common_interrupt+0x22/0x40
RIP: 0033:0x5946a8
Code: c0 48 8b 00 48 29 c2 48 8b 45 b8 48 89 10 48 8d 45 d0 48 89 c7 e8 e4 3d 2f 00 48 8b 45 c8 48 8b 00 48 05 38 0d 00 00 4c 8b 00 <48> 8d 4d d0 48 8b 55 b8 48 
8b 75 c0 48 8b 45 c8 48 89 c7 41 ff d0
RSP: 002b:00007fffcde4c7a0 EFLAGS: 00000206
RAX: 00000000009b2b28 RBX: 000000002e7a1db0 RCX: 0000000000000006
RDX: 00000191fe5f53d5 RSI: 0000000000000040 RDI: 00007fffcde4c7d0
RBP: 00007fffcde4c800 R08: 000000000059f80e R09: 0000000000594128
R10: 00007fffcde4c7f0 R11: 0000000000000000 R12: 000000000046a020
R13: 0000000000000001 R14: 0000000000000001 R15: 00007f75c59dc000
  </TASK>
watchdog: BUG: soft lockup - CPU#1 stuck for 26s! [btserver:134808]
Modules linked in: nfnetlink_queue nfnetlink_log bluetooth tls nf_conntrack_netlink nf_conntrack nfnetlink vrf nf_defrag_ipv6 nf_defrag_ipv4 8021q garp mrp stp 
llc macvlan pktgen rpcrdma rdma_cm iw_cm ib_cm ib_core qrtr iwlmvm ee1004 intel_rapl_msr iTCO_wdt intel_pmc_bxt iTCO_vendor_support snd_hda_codec_hdmi 
snd_hda_codec_realtek snd_hda_codec_generic snd_hda_scodec_component coretemp intel_rapl_common snd_hda_intel intel_uncore_frequency 
intel_uncore_frequency_common snd_intel_dspcfg mac80211 snd_hda_codec snd_hda_core snd_hwdep snd_seq snd_seq_device snd_pcm intel_tcc_cooling iwlwifi snd_timer 
x86_pkg_temp_thermal intel_powerclamp pcspkr intel_wmi_thunderbolt snd i2c_i801 cfg80211 soundcore i2c_smbus bfq i2c_mux mei_hdcp mei_pxp intel_pch_thermal 
intel_pmc_core intel_vsec pmt_telemetry acpi_pad pmt_class sch_fq_codel nfsd auth_rpcgss nfs_acl lockd grace sunrpc zram raid1 dm_raid raid456 libcrc32c 
async_raid6_recov async_memcpy async_pq async_xor xor async_tx raid6_pq i915 cec rc_core drm_buddy intel_gtt
  drm_display_helper drm_kms_helper ttm ixgbe agpgart igb mdio i2c_algo_bit dca hwmon drm mei_wdt xhci_pci i2c_core xhci_pci_renesas video wmi fuse [last 
unloaded: nfnetlink]
irq event stamp: 871541089
hardirqs last  enabled at (871541089): [<ffffffff83d9dbe5>] do_syscall_64+0x75/0x160
hardirqs last disabled at (871541088): [<ffffffff83da3eb1>] syscall_exit_to_user_mode+0x11/0x1e0
softirqs last  enabled at (871541086): [<ffffffff83779ea0>] tcp_recvmsg+0xf0/0x4e0
softirqs last disabled at (871541084): [<ffffffff8343fd26>] release_sock+0x16/0x1b0
CPU: 1 UID: 0 PID: 134808 Comm: btserver Tainted: G        W    L     6.11.0 #1
Tainted: [W]=WARN, [L]=SOFTLOCKUP
Hardware name: Default string Default string/SKYBAY, BIOS 5.12 08/04/2020
RIP: 0010:queued_spin_lock_slowpath+0x38f/0xba0
Code: 00 00 85 c0 74 3c 0f b6 03 84 c0 74 35 48 b8 00 00 00 00 00 fc ff df 48 89 dd 49 89 dd 48 c1 ed 03 41 83 e5 07 48 01 c5 f3 90 <0f> b6 45 00 44 38 e8 7f 08 
84 c0 0f 85 62 06 00 00 0f b6 03 84 c0
RSP: 0018:ffff88841da89658 EFLAGS: 00000202
RAX: 0000000000000001 RBX: ffff88813b3c0100 RCX: ffffffff83dc8291
RDX: 0000000000000000 RSI: 0000000000000004 RDI: ffff88813b3c0100
RBP: ffffed1027678020 R08: 0000000000000000 R09: ffffed1027678020
R10: ffff88813b3c0103 R11: 0000000000000000 R12: 1ffff11083b512cd
R13: 0000000000000000 R14: ffff88813b3c0000 R15: 0000000000000001
FS:  00007f7cf2c367c0(0000) GS:ffff88841da80000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000056180f15f7f8 CR3: 000000013b0d7003 CR4: 00000000003706f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  <IRQ>
  ? watchdog_timer_fn+0x2d9/0x3b0
  ? lockup_detector_update_enable+0x50/0x50
  ? __hrtimer_run_queues+0x495/0x860
  ? trace_hrtimer_cancel+0x130/0x130
  ? ktime_get_update_offsets_now+0x87/0x2c0
  ? hrtimer_interrupt+0x2c4/0x7d0
  ? __sysvec_apic_timer_interrupt+0xbc/0x380
  ? sysvec_apic_timer_interrupt+0x32/0x80
  ? asm_sysvec_apic_timer_interrupt+0x16/0x20
  ? queued_spin_lock_slowpath+0x321/0xba0
  ? queued_spin_lock_slowpath+0x38f/0xba0
  ? queued_spin_lock_slowpath+0x321/0xba0
  ? kasan_save_track+0x10/0x30
  ? __kasan_slab_alloc+0x62/0x70
  ? _raw_write_unlock_irqrestore+0x50/0x50
  ? lock_acquire+0x43a/0x4f0
  ? lock_acquire+0x43a/0x4f0
  ? run_filter+0x131/0x300
  ? lock_sync+0x170/0x170
  do_raw_spin_lock+0x1dd/0x270
  ? spin_bug+0x1c0/0x1c0
  tpacket_rcv+0x863/0x3b30
  ? __lock_acquire+0x5806/0x6170
  ? packet_recvmsg+0x1340/0x1340
  ? seqcount_lockdep_reader_access.constprop.0+0x82/0x90
  ? ktime_get_with_offset+0x62/0x1b0
  ? ktime_get_with_offset+0xad/0x1b0
  ? __skb_clone+0x547/0x730
  ? packet_recvmsg+0x1340/0x1340
  dev_queue_xmit_nit+0x709/0xa40
  ? lock_acquire+0x43a/0x4f0
  vrf_finish_direct+0x26e/0x340 [vrf]
  ? vrf_ip_local_out+0x570/0x570 [vrf]
  vrf_l3_out+0x5f4/0xe80 [vrf]
  __ip_local_out+0x51e/0x7a0
  ? __ip_append_data+0x3d00/0x3d00
  ? trace_irq_enable.constprop.0+0xce/0x110
  ? __iommu_dma_unmap+0x5c8/0x9f0
  ? ipv4_dst_check+0xd6/0x150
  __ip_queue_xmit+0x7ff/0x1e20
  ? __skb_clone+0x547/0x730
  __tcp_transmit_skb+0x1699/0x3850
  ? __tcp_select_window+0xfb0/0xfb0
  ? lock_acquire+0x43a/0x4f0
  ? lock_release+0x4c1/0x680
  ? lock_sync+0x170/0x170
  ? ktime_get+0x29/0x130
  ? reacquire_held_locks+0x4e0/0x4e0
  ? trace_irq_enable.constprop.0+0xce/0x110
  tcp_write_xmit+0x142a/0x87d0
  ? lock_sync+0xc1/0x170
  ? do_raw_spin_lock+0x128/0x270
  ? spin_bug+0x1c0/0x1c0
  ? tcp_tsq_write.part.0+0x16f/0x2b0
  tcp_tsq_handler+0xa2/0x1a0
  tcp_tasklet_func+0x25f/0x4f0
  ? cpuacct_percpu_seq_show+0x10/0x10
  ? tcp_tsq_handler+0x1a0/0x1a0
  ? do_raw_spin_lock+0x128/0x270
  tasklet_action_common.constprop.0+0x264/0x3f0
  handle_softirqs+0x1b7/0x800
  __irq_exit_rcu+0x91/0xc0
  irq_exit_rcu+0x5/0x10
  common_interrupt+0x7f/0xa0
  </IRQ>
  <TASK>
  asm_common_interrupt+0x22/0x40
RIP: 0010:kasan_check_range+0xfd/0x190
Code: 07 49 39 d1 75 0a b8 01 00 00 00 45 3a 11 7c 0b 44 89 c2 e8 e5 eb ff ff 83 f0 01 5b 5d 41 5c c3 48 85 d2 74 4f 48 01 ea eb 09 <48> 83 c0 01 48 39 d0 74 41 
80 38 00 74 f2 eb b6 41 bc 08 00 00 00
RSP: 0018:ffff88825e8bf320 EFLAGS: 00000246
RAX: ffffed10276780b4 RBX: ffffed10276780b5 RCX: ffffffff814081c0
RDX: ffffed10276780b5 RSI: 0000000000000004 RDI: ffff88813b3c05a0
RBP: ffffed10276780b4 R08: 0000000000000001 R09: ffffed10276780b4
R10: ffff88813b3c05a3 R11: 0000000000000000 R12: ffff8882d9f40000
R13: 0000000000000098 R14: ffff88813b3c0000 R15: ffff8882d9f69668
  ? do_raw_read_lock+0x40/0xe0
  do_raw_read_lock+0x40/0xe0
  prb_fill_curr_block+0x101/0x650
  tpacket_rcv+0x22b0/0x3b30
  ? __lock_acquire+0x5806/0x6170
  ? packet_recvmsg+0x1340/0x1340
  ? seqcount_lockdep_reader_access.constprop.0+0x82/0x90
  ? ktime_get_with_offset+0x62/0x1b0
  ? ktime_get_with_offset+0xad/0x1b0
  ? __skb_clone+0x547/0x730
  ? packet_recvmsg+0x1340/0x1340
  dev_queue_xmit_nit+0x709/0xa40
  vrf_finish_direct+0x26e/0x340 [vrf]
  ? vrf_ip_local_out+0x570/0x570 [vrf]
  vrf_l3_out+0x5f4/0xe80 [vrf]
  __ip_local_out+0x51e/0x7a0
  ? __ip_append_data+0x3d00/0x3d00
  ? rcu_preempt_deferred_qs_irqrestore+0x627/0xd20
  ? ip_skb_dst_mtu+0x11e/0x990
  ? ipv4_dst_check+0xd6/0x150
  __ip_queue_xmit+0x7ff/0x1e20
  ? __virt_addr_valid+0x1c7/0x390
  __tcp_transmit_skb+0x1699/0x3850
  ? __tcp_select_window+0xfb0/0xfb0
  ? __build_skb_around+0x22f/0x330
  ? __alloc_skb+0x13d/0x2c0
  ? __napi_build_skb+0x40/0x40
  ? do_raw_spin_lock+0x128/0x270
  ? __tcp_send_ack.part.0+0x5f/0x690
  ? skb_attempt_defer_free+0x303/0x4e0
  tcp_recvmsg_locked+0xdd1/0x23e0
  ? tcp_recvmsg+0xc7/0x4e0
  ? tcp_update_recv_tstamps+0x1c0/0x1c0
  ? tcp_tsq_write.part.0+0x2b0/0x2b0
  ? tcp_zerocopy_receive+0x2050/0x2050
  ? tcp_recvmsg+0xc7/0x4e0
  ? trace_irq_enable.constprop.0+0xce/0x110
  tcp_recvmsg+0xe5/0x4e0
  ? tcp_recv_timestamp+0x6c0/0x6c0
  inet_recvmsg+0xf0/0x4b0
  ? inet_splice_eof+0xa0/0xa0
  ? inet_splice_eof+0xa0/0xa0
  sock_recvmsg+0xc8/0x150
  ? poll_schedule_timeout.constprop.0+0xe0/0xe0
  sock_read_iter+0x258/0x380
  ? poll_schedule_timeout.constprop.0+0xe0/0xe0
  ? sock_recvmsg+0x150/0x150
  ? rw_verify_area+0x64/0x590
  vfs_read+0x8d5/0xc20
  ? poll_schedule_timeout.constprop.0+0xe0/0xe0
  ? kernel_read+0x50/0x50
  ? __asan_memset+0x1f/0x40
  ? __fget_light+0x4d/0x1d0
  ksys_read+0x166/0x1c0
  ? __ia32_sys_pwrite64+0x1d0/0x1d0
  ? trace_irq_enable.constprop.0+0xce/0x110
  do_syscall_64+0x69/0x160
  entry_SYSCALL_64_after_hwframe+0x4b/0x53
RIP: 0033:0x7f7cf2f01b92
Code: c0 e9 b2 fe ff ff 50 48 8d 3d 9a cd 0b 00 e8 75 f7 01 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0 ff ff 77 56 c3 
0f 1f 44 00 00 48 83 ec 28 48 89 54 24
RSP: 002b:00007ffdca4ce2c8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
RAX: ffffffffffffffda RBX: 0000000008a44db0 RCX: 00007f7cf2f01b92
RDX: 0000000000010000 RSI: 000000000bc087e0 RDI: 00000000000000ab
RBP: 00007ffdca4ce350 R08: 00007ffdca4ce39f R09: 0000000000000000
R10: 00007ffdca4ce360 R11: 0000000000000246 R12: 000000000046a020
R13: 0000000000000001 R14: 0000000000000001 R15: 00007f7cf31b2000
  </TASK>
watchdog: BUG: soft lockup - CPU#5 stuck for 26s! [wireshark:138625]
Modules linked in: nfnetlink_queue nfnetlink_log bluetooth tls nf_conntrack_netlink nf_conntrack nfnetlink vrf nf_defrag_ipv6 nf_defrag_ipv4 8021q garp mrp stp 
llc macvlan pktgen rpcrdma rdma_cm iw_cm ib_cm ib_core qrtr iwlmvm ee1004 intel_rapl_msr iTCO_wdt intel_pmc_bxt iTCO_vendor_support snd_hda_codec_hdmi 
snd_hda_codec_realtek snd_hda_codec_generic snd_hda_scodec_component coretemp intel_rapl_common snd_hda_intel intel_uncore_frequency 
intel_uncore_frequency_common snd_intel_dspcfg mac80211 snd_hda_codec snd_hda_core snd_hwdep snd_seq snd_seq_device snd_pcm intel_tcc_cooling iwlwifi snd_timer 
x86_pkg_temp_thermal intel_powerclamp pcspkr intel_wmi_thunderbolt snd i2c_i801 cfg80211 soundcore i2c_smbus bfq i2c_mux mei_hdcp mei_pxp intel_pch_thermal 
intel_pmc_core intel_vsec pmt_telemetry acpi_pad pmt_class sch_fq_codel nfsd auth_rpcgss nfs_acl lockd grace sunrpc zram raid1 dm_raid raid456 libcrc32c 
async_raid6_recov async_memcpy async_pq async_xor xor async_tx raid6_pq i915 cec rc_core drm_buddy intel_gtt
  drm_display_helper drm_kms_helper ttm ixgbe agpgart igb mdio i2c_algo_bit dca hwmon drm mei_wdt xhci_pci i2c_core xhci_pci_renesas video wmi fuse [last 
unloaded: nfnetlink]
irq event stamp: 1324280
hardirqs last  enabled at (1324279): [<ffffffff83dc794b>] _raw_spin_unlock_irqrestore+0x2b/0x50
hardirqs last disabled at (1324280): [<ffffffff83dad49b>] __schedule+0x12ab/0x2c90
softirqs last  enabled at (1324054): [<ffffffff810d613c>] fpu_clone+0x33c/0xaa0
softirqs last disabled at (1324052): [<ffffffff810d60e7>] fpu_clone+0x2e7/0xaa0
CPU: 5 UID: 0 PID: 138625 Comm: wireshark Tainted: G        W    L     6.11.0 #1
Tainted: [W]=WARN, [L]=SOFTLOCKUP
Hardware name: Default string Default string/SKYBAY, BIOS 5.12 08/04/2020
RIP: 0010:queued_spin_lock_slowpath+0x716/0xba0
Code: 00 00 8b 45 08 85 c0 75 38 48 b8 00 00 00 00 00 fc ff df 4c 89 fa 4d 89 fd 48 c1 ea 03 41 83 e5 07 48 01 c2 41 83 c5 03 f3 90 <0f> b6 02 41 38 c5 7c 08 84 
c0 0f 85 ba 03 00 00 8b 45 08 85 c0 74
RSP: 0018:ffff88841dc89200 EFLAGS: 00000246
RAX: 0000000000000000 RBX: ffff88813b3c0100 RCX: 1ffffffff09491eb
RDX: ffffed1083b98159 RSI: 0000000000000002 RDI: ffffffff84a48f58
RBP: ffff88841dcc0ac0 R08: 0000000000000001 R09: ffffed1027678020
R10: ffff88813b3c0103 R11: 0000000000000000 R12: 1ffff11083b91242
R13: 0000000000000003 R14: 0000000000180000 R15: ffff88841dcc0ac8
FS:  00007f1287b71200(0000) GS:ffff88841dc80000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f12800068d8 CR3: 00000002a9977002 CR4: 00000000003706f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  <IRQ>
  ? watchdog_timer_fn+0x2d9/0x3b0
  ? lockup_detector_update_enable+0x50/0x50
  ? __hrtimer_run_queues+0x495/0x860
  ? trace_hrtimer_cancel+0x130/0x130
  ? ktime_get_update_offsets_now+0x87/0x2c0
  ? hrtimer_interrupt+0x2c4/0x7d0
  ? __flush_smp_call_function_queue+0x1bc/0x600
  ? __sysvec_apic_timer_interrupt+0xbc/0x380
  ? sysvec_apic_timer_interrupt+0x32/0x80
  ? asm_sysvec_apic_timer_interrupt+0x16/0x20
  ? queued_spin_lock_slowpath+0x716/0xba0
  ? __kasan_slab_alloc+0x62/0x70
  ? kmem_cache_alloc_noprof+0xc8/0x290
  ? _raw_write_unlock_irqrestore+0x50/0x50
  ? lock_acquire+0x43a/0x4f0
  ? lock_acquire+0x43a/0x4f0
  ? run_filter+0x131/0x300
  ? lock_sync+0x170/0x170
  do_raw_spin_lock+0x1dd/0x270
  ? spin_bug+0x1c0/0x1c0
  tpacket_rcv+0x863/0x3b30
  ? __lock_acquire+0x5806/0x6170
  ? packet_recvmsg+0x1340/0x1340
  ? seqcount_lockdep_reader_access.constprop.0+0x82/0x90
  ? ktime_get_with_offset+0x62/0x1b0
  ? ktime_get_with_offset+0xad/0x1b0
  ? __skb_clone+0x547/0x730
  ? packet_recvmsg+0x1340/0x1340
  dev_queue_xmit_nit+0x709/0xa40
  vrf_l3_rcv+0x3a3/0xe10 [vrf]
  ? vrf_l3_out+0xe80/0xe80 [vrf]
  ? ip_sublist_rcv_finish+0x87/0x260
  ip_sublist_rcv+0x17f/0x870
  ? ip_rcv_finish_core.constprop.0+0x1e70/0x1e70
  ? is_bpf_text_address+0x5b/0xf0
  ? reacquire_held_locks+0x4e0/0x4e0
  ? __asan_memset+0x1f/0x40
  ? ip_rcv_core+0x603/0xcc0
  ip_list_rcv+0x2c1/0x3c0
  ? __kernel_text_address+0x9/0x30
  ? ip_rcv+0x320/0x320
  __netif_receive_skb_list_core+0x478/0x890
  ? __netif_receive_skb_core.constprop.0+0x3a90/0x3a90
  ? __asan_memcpy+0x38/0x60
  ? trace_irq_enable.constprop.0+0xce/0x110
  ? seqcount_lockdep_reader_access.constprop.0+0x82/0x90
  ? ktime_get_with_offset+0x62/0x1b0
  ? ktime_get_with_offset+0xad/0x1b0
  netif_receive_skb_list_internal+0x610/0xcc0
  ? process_backlog+0x1220/0x1220
  ? lock_release+0x4c1/0x680
  ? napi_gro_complete.constprop.0+0x164/0x650
  ? reacquire_held_locks+0x4e0/0x4e0
  ? dev_gro_receive+0x10fd/0x2d50
  ? reacquire_held_locks+0x4e0/0x4e0
  ? tcp4_gro_complete+0x329/0x680
  napi_gro_complete.constprop.0+0x490/0x650
  dev_gro_receive+0x121a/0x2d50
  ? kasan_save_track+0x10/0x30
  ? __kasan_mempool_unpoison_object+0x19c/0x1f0
  napi_gro_receive+0x296/0x990
  ixgbe_poll+0x14c1/0x4de0 [ixgbe]
  ? try_to_wake_up+0x6f7/0x12c0
  ? sched_ttwu_pending+0x4a0/0x4a0
  ? ixgbe_xdp_ring_update_tail_locked+0x80/0x80 [ixgbe]
  ? perf_event_task_tick+0x11e/0x230
  ? lock_acquire+0x43a/0x4f0
  ? lock_sync+0x170/0x170
  __napi_poll.constprop.0+0x99/0x430
  net_rx_action+0x8e7/0xe10
  ? __napi_poll.constprop.0+0x430/0x430
  ? handle_irq_event+0x98/0x1b0
  ? do_raw_spin_lock+0x128/0x270
  ? spin_bug+0x1c0/0x1c0
  ? lock_release+0x4c1/0x680
  ? __common_interrupt+0x62/0x110
  ? reacquire_held_locks+0x4e0/0x4e0
  handle_softirqs+0x1b7/0x800
  __irq_exit_rcu+0x91/0xc0
  irq_exit_rcu+0x5/0x10
  common_interrupt+0x7f/0xa0
  </IRQ>
  <TASK>
  asm_common_interrupt+0x22/0x40
RIP: 0010:qlist_free_all+0x28/0x170
Code: 1f 00 41 57 41 56 41 55 41 54 55 53 48 8b 1f 48 85 db 0f 84 05 01 00 00 49 89 fd 49 89 f4 eb 3e 49 63 86 c0 00 00 00 48 8b 2b <4c> 89 f7 48 29 c3 48 89 de 
e8 4a f5 ff ff 49 89 c7 0f 1f 44 00 00
RSP: 0018:ffff8882a8637d40 EFLAGS: 00000246
RAX: 0000000000000000 RBX: ffff888134524c80 RCX: ffffea0000000000
RDX: 0000000000000000 RSI: ffffea0004bbef00 RDI: 0000000000020000
RBP: ffff888221936400 R08: ffff88812efbd800 R09: 0000000000150003
R10: ffff888110171e00 R11: 0000000000000000 R12: 0000000000000000
R13: ffff8882a8637d78 R14: ffff888110171b80 R15: ffff88812efbd800
  kasan_quarantine_reduce+0x18a/0x1d0
  __kasan_slab_alloc+0x46/0x70
  kmem_cache_alloc_noprof+0xc8/0x290
  getname_flags.part.0+0x47/0x480
  ? kmem_cache_free+0xcd/0x3a0
  user_path_at+0x18/0x50
  do_faccessat+0xb3/0x840
  ? __do_sys_vhangup+0x20/0x20
  ? trace_irq_enable.constprop.0+0xce/0x110
  do_syscall_64+0x69/0x160
  entry_SYSCALL_64_after_hwframe+0x4b/0x53
RIP: 0033:0x7f1288901cfb
Code: 77 05 c3 0f 1f 40 00 48 8b 15 21 61 0f 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff c3 0f 1f 40 00 f3 0f 1e fa b8 15 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 05 c3 
0f 1f 40 00 48 8b 15 f1 60 0f 00 f7 d8
RSP: 002b:00007fff0d7f5528 EFLAGS: 00000246 ORIG_RAX: 0000000000000015
RAX: ffffffffffffffda RBX: 00007fff0d7f5730 RCX: 00007f1288901cfb
RDX: 0000000000000034 RSI: 0000000000000000 RDI: 000056180f1d4650
RBP: 0000000000400000 R08: 00007fff0d7f5517 R09: 0000000000000034
R10: 000000000000bfef R11: 0000000000000246 R12: 0000000000400000
R13: 00007fff0d7f56f0 R14: 00007fff0d7f5570 R15: 00007fff0d7f5550
  </TASK>
watchdog: BUG: soft lockup - CPU#3 stuck for 26s! [swapper/3:0]
Modules linked in: nfnetlink_queue nfnetlink_log bluetooth tls nf_conntrack_netlink nf_conntrack nfnetlink vrf nf_defrag_ipv6 nf_defrag_ipv4 8021q garp mrp stp 
llc macvlan pktgen rpcrdma rdma_cm iw_cm ib_cm ib_core qrtr iwlmvm ee1004 intel_rapl_msr iTCO_wdt intel_pmc_bxt iTCO_vendor_support snd_hda_codec_hdmi 
snd_hda_codec_realtek snd_hda_codec_generic snd_hda_scodec_component coretemp intel_rapl_common snd_hda_intel intel_uncore_frequency 
intel_uncore_frequency_common snd_intel_dspcfg mac80211 snd_hda_codec snd_hda_core snd_hwdep snd_seq snd_seq_device snd_pcm intel_tcc_cooling iwlwifi snd_timer 
x86_pkg_temp_thermal intel_powerclamp pcspkr intel_wmi_thunderbolt snd i2c_i801 cfg80211 soundcore i2c_smbus bfq i2c_mux mei_hdcp mei_pxp intel_pch_thermal 
intel_pmc_core intel_vsec pmt_telemetry acpi_pad pmt_class sch_fq_codel nfsd auth_rpcgss nfs_acl lockd grace sunrpc zram raid1 dm_raid raid456 libcrc32c 
async_raid6_recov async_memcpy async_pq async_xor xor async_tx raid6_pq i915 cec rc_core drm_buddy intel_gtt
  drm_display_helper drm_kms_helper ttm ixgbe agpgart igb mdio i2c_algo_bit dca hwmon drm mei_wdt xhci_pci i2c_core xhci_pci_renesas video wmi fuse [last 
unloaded: nfnetlink]
irq event stamp: 1046470532
hardirqs last  enabled at (1046470531): [<ffffffff8152aec1>] flush_smp_call_function_queue+0x81/0xa0
hardirqs last disabled at (1046470532): [<ffffffff83dad49b>] __schedule+0x12ab/0x2c90
softirqs last  enabled at (1046470510): [<ffffffff81295ef1>] __irq_exit_rcu+0x91/0xc0
softirqs last disabled at (1046470503): [<ffffffff81295ef1>] __irq_exit_rcu+0x91/0xc0
CPU: 3 UID: 0 PID: 0 Comm: swapper/3 Tainted: G        W    L     6.11.0 #1
Tainted: [W]=WARN, [L]=SOFTLOCKUP
Hardware name: Default string Default string/SKYBAY, BIOS 5.12 08/04/2020
RIP: 0010:queued_spin_lock_slowpath+0x716/0xba0
Code: 00 00 8b 45 08 85 c0 75 38 48 b8 00 00 00 00 00 fc ff df 4c 89 fa 4d 89 fd 48 c1 ea 03 41 83 e5 07 48 01 c2 41 83 c5 03 f3 90 <0f> b6 02 41 38 c5 7c 08 84 
c0 0f 85 ba 03 00 00 8b 45 08 85 c0 74
RSP: 0018:ffff88841db89290 EFLAGS: 00000246
RAX: 0000000000000000 RBX: ffff88813b3c0100 RCX: 1ffffffff09491e9
RDX: ffffed1083b78159 RSI: 0000000000000002 RDI: ffffffff84a48f48
RBP: ffff88841dbc0ac0 R08: 0000000000000001 R09: ffffed1027678020
R10: ffff88813b3c0103 R11: 0000000000000000 R12: 1ffff11083b71254
R13: 0000000000000003 R14: 0000000000100000 R15: ffff88841dbc0ac8
FS:  0000000000000000(0000) GS:ffff88841db80000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000056180f05c098 CR3: 0000000004c99001 CR4: 00000000003706f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  <IRQ>
  ? watchdog_timer_fn+0x2d9/0x3b0
  ? lockup_detector_update_enable+0x50/0x50
  ? __hrtimer_run_queues+0x495/0x860
  ? trace_hrtimer_cancel+0x130/0x130
  ? ktime_get_update_offsets_now+0x87/0x2c0
  ? hrtimer_interrupt+0x2c4/0x7d0
  ? __flush_smp_call_function_queue+0x2e2/0x600
  ? __sysvec_apic_timer_interrupt+0xbc/0x380
  ? sysvec_apic_timer_interrupt+0x32/0x80
  ? asm_sysvec_apic_timer_interrupt+0x16/0x20
  ? queued_spin_lock_slowpath+0x716/0xba0
  ? __kasan_slab_alloc+0x62/0x70
  ? kmem_cache_alloc_noprof+0xc8/0x290
  ? _raw_write_unlock_irqrestore+0x50/0x50
  ? lock_acquire+0x43a/0x4f0
  ? lock_acquire+0x43a/0x4f0
  ? run_filter+0x131/0x300
  ? lock_sync+0x170/0x170
  do_raw_spin_lock+0x1dd/0x270
  ? spin_bug+0x1c0/0x1c0
  tpacket_rcv+0x863/0x3b30
  ? __lock_acquire+0x5806/0x6170
  ? packet_recvmsg+0x1340/0x1340
  ? seqcount_lockdep_reader_access.constprop.0+0x82/0x90
  ? ktime_get_with_offset+0x62/0x1b0
  ? ktime_get_with_offset+0xad/0x1b0
  ? __skb_clone+0x547/0x730
  ? packet_recvmsg+0x1340/0x1340
  dev_queue_xmit_nit+0x709/0xa40
  ? sk_skb_reason_drop+0xfb/0x150
  vrf_l3_rcv+0x3a3/0xe10 [vrf]
  ? vrf_l3_out+0xe80/0xe80 [vrf]
  ? run_filter+0x300/0x300
  ? __netif_receive_skb_core.constprop.0+0xadd/0x3a90
  ip_sublist_rcv+0x17f/0x870
  ? ip_rcv_finish_core.constprop.0+0x1e70/0x1e70
  ? common_startup_64+0x13e/0x148
  ? common_startup_64+0x13d/0x148
  ? write_profile+0xe0/0xe0
  ? __asan_memset+0x1f/0x40
  ? ip_rcv_core+0x603/0xcc0
  ip_list_rcv+0x2c1/0x3c0
  ? stack_trace_save+0x8b/0xc0
  ? ip_rcv+0x320/0x320
  ? stack_depot_save_flags+0x24/0x880
  ? filter_irq_stacks+0x90/0x90
  __netif_receive_skb_list_core+0x478/0x890
  ? __irq_exit_rcu+0x91/0xc0
  ? __netif_receive_skb_core.constprop.0+0x3a90/0x3a90
  ? cpuidle_enter+0x45/0xa0
  ? cpu_startup_entry+0x4b/0x60
  ? trace_irq_enable.constprop.0+0xce/0x110
  ? seqcount_lockdep_reader_access.constprop.0+0x82/0x90
  ? ktime_get_with_offset+0x62/0x1b0
  ? ktime_get_with_offset+0xad/0x1b0
  netif_receive_skb_list_internal+0x610/0xcc0
  ? lock_release+0x4c1/0x680
  ? dev_gro_receive+0x10fd/0x2d50
  ? process_backlog+0x1220/0x1220
  ? napi_gro_complete.constprop.0+0x1e4/0x650
  ? napi_gro_flush+0x225/0x380
  ? reacquire_held_locks+0x4e0/0x4e0
  napi_complete_done+0x1c0/0x7c0
  ? napi_skb_cache_put+0x81/0x500
  ? napi_busy_loop+0x110/0x110
  ? napi_gro_receive+0x776/0x990
  ixgbe_poll+0x2073/0x4de0 [ixgbe]
  ? rcu_sched_clock_irq+0xdb4/0x2dd0
  ? lock_acquire+0x43a/0x4f0
  ? ixgbe_xdp_ring_update_tail_locked+0x80/0x80 [ixgbe]
  ? perf_event_task_tick+0x11e/0x230
  ? lock_repin_lock+0x330/0x330
  __napi_poll.constprop.0+0x99/0x430
  net_rx_action+0x8e7/0xe10
  ? __napi_poll.constprop.0+0x430/0x430
  ? handle_irq_event+0x98/0x1b0
  ? do_raw_spin_lock+0x128/0x270
  ? spin_bug+0x1c0/0x1c0
  ? lock_release+0x4c1/0x680
  ? __common_interrupt+0x62/0x110
  ? reacquire_held_locks+0x4e0/0x4e0
  handle_softirqs+0x1b7/0x800
  __irq_exit_rcu+0x91/0xc0
  irq_exit_rcu+0x5/0x10
  common_interrupt+0x7f/0xa0
  </IRQ>
  <TASK>
  asm_common_interrupt+0x22/0x40
RIP: 0010:cpuidle_enter_state+0x289/0x320
Code: 76 49 8d 04 86 4c 8d 6c c5 18 41 f6 45 40 20 0f 84 d3 fd ff ff e8 87 f3 3d fd e9 c9 fd ff ff e8 8d fe 88 fd fb 0f 1f 44 00 00 <e9> 41 fe ff ff e8 4d ab 49 
ff e9 2a fe ff ff 48 8b 7c 24 38 e8 6e
RSP: 0018:ffff888110d7fda0 EFLAGS: 00000246
RAX: 0000000000000003 RBX: ffffe8ffffbe1da0 RCX: 1ffffffff0ab4847
RDX: 0000000000000000 RSI: 0000000000000008 RDI: ffffffff83da4a63
RBP: ffffffff850f9be0 R08: 0000000000000000 R09: 0000000000000000
R10: ffffffff855a151f R11: 0000000000000018 R12: 0000000000000003
R13: 00002b93cfba7f09 R14: 0000000000000003 R15: 0000000000000000
  ? cpuidle_enter_state+0x283/0x320
  cpuidle_enter+0x45/0xa0
  do_idle+0x2fe/0x3e0
  ? arch_cpu_idle_exit+0x30/0x30
  cpu_startup_entry+0x4b/0x60
  start_secondary+0x201/0x280
  ? set_cpu_sibling_map+0x1af0/0x1af0
  common_startup_64+0x13e/0x148
  </TASK>
watchdog: BUG: soft lockup - CPU#7 stuck for 26s! [btserver:3383]
Modules linked in: nfnetlink_queue nfnetlink_log bluetooth tls nf_conntrack_netlink nf_conntrack nfnetlink vrf nf_defrag_ipv6 nf_defrag_ipv4 8021q garp mrp stp 
llc macvlan pktgen rpcrdma rdma_cm iw_cm ib_cm ib_core qrtr iwlmvm ee1004 intel_rapl_msr iTCO_wdt intel_pmc_bxt iTCO_vendor_support snd_hda_codec_hdmi 
snd_hda_codec_realtek snd_hda_codec_generic snd_hda_scodec_component coretemp intel_rapl_common snd_hda_intel intel_uncore_frequency 
intel_uncore_frequency_common snd_intel_dspcfg mac80211 snd_hda_codec snd_hda_core snd_hwdep snd_seq snd_seq_device snd_pcm intel_tcc_cooling iwlwifi snd_timer 
x86_pkg_temp_thermal intel_powerclamp pcspkr intel_wmi_thunderbolt snd i2c_i801 cfg80211 soundcore i2c_smbus bfq i2c_mux mei_hdcp mei_pxp intel_pch_thermal 
intel_pmc_core intel_vsec pmt_telemetry acpi_pad pmt_class sch_fq_codel nfsd auth_rpcgss nfs_acl lockd grace sunrpc zram raid1 dm_raid raid456 libcrc32c 
async_raid6_recov async_memcpy async_pq async_xor xor async_tx raid6_pq i915 cec rc_core drm_buddy intel_gtt
  drm_display_helper drm_kms_helper ttm ixgbe agpgart igb mdio i2c_algo_bit dca hwmon drm mei_wdt xhci_pci i2c_core xhci_pci_renesas video wmi fuse [last 
unloaded: nfnetlink]
irq event stamp: 1487316392
hardirqs last  enabled at (1487316391): [<ffffffff83dc794b>] _raw_spin_unlock_irqrestore+0x2b/0x50
hardirqs last disabled at (1487316392): [<ffffffff83dad49b>] __schedule+0x12ab/0x2c90
softirqs last  enabled at (1487316328): [<ffffffff810d613c>] fpu_clone+0x33c/0xaa0
softirqs last disabled at (1487316326): [<ffffffff810d60e7>] fpu_clone+0x2e7/0xaa0
CPU: 7 UID: 0 PID: 3383 Comm: btserver Tainted: G        W    L     6.11.0 #1
Tainted: [W]=WARN, [L]=SOFTLOCKUP
Hardware name: Default string Default string/SKYBAY, BIOS 5.12 08/04/2020
RIP: 0010:queued_spin_lock_slowpath+0x716/0xba0
Code: 00 00 8b 45 08 85 c0 75 38 48 b8 00 00 00 00 00 fc ff df 4c 89 fa 4d 89 fd 48 c1 ea 03 41 83 e5 07 48 01 c2 41 83 c5 03 f3 90 <0f> b6 02 41 38 c5 7c 08 84 
c0 0f 85 ba 03 00 00 8b 45 08 85 c0 74
RSP: 0000:ffff88813c7ff1c0 EFLAGS: 00000246
RAX: 0000000000000000 RBX: ffff88813b3c0100 RCX: 1ffffffff09491ea
RDX: ffffed1083bb8159 RSI: 0000000000000002 RDI: ffffffff84a48f50
RBP: ffff88841ddc0ac0 R08: 0000000000000001 R09: ffffed1027678020
R10: ffff88813b3c0103 R11: 0000000000000000 R12: 1ffff110278ffe3a
R13: 0000000000000003 R14: 0000000000200000 R15: ffff88841ddc0ac8
FS:  00007f19582347c0(0000) GS:ffff88841dd80000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00000001c9ef0000 CR3: 0000000154971005 CR4: 00000000003706f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  <IRQ>
  ? watchdog_timer_fn+0x2d9/0x3b0
  ? lockup_detector_update_enable+0x50/0x50
  ? __hrtimer_run_queues+0x495/0x860
  ? trace_hrtimer_cancel+0x130/0x130
  ? ktime_get_update_offsets_now+0x87/0x2c0
  ? hrtimer_interrupt+0x2c4/0x7d0
  ? __flush_smp_call_function_queue+0x2e2/0x600
  ? __sysvec_apic_timer_interrupt+0xbc/0x380
  ? sysvec_apic_timer_interrupt+0x66/0x80
  </IRQ>
  <TASK>
  ? asm_sysvec_apic_timer_interrupt+0x16/0x20
  ? queued_spin_lock_slowpath+0x716/0xba0
  ? __kasan_slab_alloc+0x62/0x70
  ? kmem_cache_alloc_noprof+0xc8/0x290
  ? _raw_write_unlock_irqrestore+0x50/0x50
  ? lock_acquire+0x43a/0x4f0
  ? lock_acquire+0x43a/0x4f0
  ? run_filter+0x131/0x300
  ? lock_sync+0x170/0x170
  do_raw_spin_lock+0x1dd/0x270
  ? spin_bug+0x1c0/0x1c0
  tpacket_rcv+0x863/0x3b30
  ? __lock_acquire+0x5806/0x6170
  ? packet_recvmsg+0x1340/0x1340
  ? seqcount_lockdep_reader_access.constprop.0+0x82/0x90
  ? ktime_get_with_offset+0x62/0x1b0
  ? ktime_get_with_offset+0xad/0x1b0
  ? __skb_clone+0x547/0x730
  ? packet_recvmsg+0x1340/0x1340
  dev_queue_xmit_nit+0x709/0xa40
  ? sk_skb_reason_drop+0xfb/0x150
  vrf_l3_rcv+0x3a3/0xe10 [vrf]
  ? vrf_l3_out+0xe80/0xe80 [vrf]
  ? run_filter+0x300/0x300
  ? __netif_receive_skb_core.constprop.0+0xadd/0x3a90
  ip_sublist_rcv+0x17f/0x870
  ? ip_rcv_finish_core.constprop.0+0x1e70/0x1e70
  ? __kernel_text_address+0x9/0x30
  ? __asan_memset+0x1f/0x40
  ? ip_rcv_core+0x603/0xcc0
  ip_list_rcv+0x2c1/0x3c0
  ? stack_trace_save+0x8b/0xc0
  ? ip_rcv+0x320/0x320
  ? stack_depot_save_flags+0x24/0x880
  ? filter_irq_stacks+0x90/0x90
  __netif_receive_skb_list_core+0x478/0x890
  ? __irq_exit_rcu+0x91/0xc0
  ? __netif_receive_skb_core.constprop.0+0x3a90/0x3a90
  ? trace_irq_enable.constprop.0+0xce/0x110
  ? seqcount_lockdep_reader_access.constprop.0+0x82/0x90
  ? ktime_get_with_offset+0x62/0x1b0
  ? ktime_get_with_offset+0xad/0x1b0
  netif_receive_skb_list_internal+0x610/0xcc0
  ? lock_release+0x4c1/0x680
  ? dev_gro_receive+0x10fd/0x2d50
  ? process_backlog+0x1220/0x1220
  ? napi_gro_complete.constprop.0+0x1e4/0x650
  ? napi_gro_flush+0x225/0x380
  ? reacquire_held_locks+0x4e0/0x4e0
  napi_complete_done+0x1c0/0x7c0
  ? napi_skb_cache_put+0x81/0x500
  ? napi_busy_loop+0x110/0x110
  ? napi_gro_receive+0x776/0x990
  ixgbe_poll+0x2073/0x4de0 [ixgbe]
  ? tcp_write_wakeup+0x550/0x570
  ? lock_release+0x4c1/0x680
  ? inet_splice_eof+0xa0/0xa0
  ? ixgbe_xdp_ring_update_tail_locked+0x80/0x80 [ixgbe]
  ? sock_recvmsg+0x150/0x150
  __napi_poll.constprop.0+0x99/0x430
  net_rx_action+0x8e7/0xe10
  ? __napi_poll.constprop.0+0x430/0x430
  ? handle_irq_event+0x98/0x1b0
  ? do_raw_spin_lock+0x128/0x270
  ? spin_bug+0x1c0/0x1c0
  ? lock_release+0x4c1/0x680
  ? __common_interrupt+0x62/0x110
  ? reacquire_held_locks+0x4e0/0x4e0
  handle_softirqs+0x1b7/0x800
  __irq_exit_rcu+0x91/0xc0
  irq_exit_rcu+0x5/0x10
  common_interrupt+0x41/0xa0
  asm_common_interrupt+0x22/0x40
RIP: 0033:0x7f1958513660
Code: ff ff 64 89 02 eb 9a 0f 1f 00 48 8b 15 b9 47 0e 00 f7 d8 48 c7 c3 ff ff ff ff 64 89 02 eb bd 66 2e 0f 1f 84 00 00 00 00 00 90 <f3> 0f 1e fa 41 89 ca 64 8b 
04 25 18 00 00 00 85 c0 75 1d 45 31 c9
RSP: 002b:00007fff22703b68 EFLAGS: 00000246
RAX: 000000000000005c RBX: 000000002693fdb0 RCX: 0000000000000000
RDX: 000000000000005c RSI: 00000000bd910de0 RDI: 0000000000000041
RBP: 00007fff22703bf0 R08: 0000000000000000 R09: 00000000ffffffff
R10: 00007fff22703bc0 R11: 0000000000000000 R12: 000000000046a020
R13: 0000000000000002 R14: 0000000000b41a78 R15: 00007f1958828000
  </TASK>
watchdog: BUG: soft lockup - CPU#6 stuck for 26s! [irq/254-iwlwifi:880]
Modules linked in: nfnetlink_queue nfnetlink_log bluetooth tls nf_conntrack_netlink nf_conntrack nfnetlink vrf nf_defrag_ipv6 nf_defrag_ipv4 8021q garp mrp stp 
llc macvlan pktgen rpcrdma rdma_cm iw_cm ib_cm ib_core qrtr iwlmvm ee1004 intel_rapl_msr iTCO_wdt intel_pmc_bxt iTCO_vendor_support snd_hda_codec_hdmi 
snd_hda_codec_realtek snd_hda_codec_generic snd_hda_scodec_component coretemp intel_rapl_common snd_hda_intel intel_uncore_frequency 
intel_uncore_frequency_common snd_intel_dspcfg mac80211 snd_hda_codec snd_hda_core snd_hwdep snd_seq snd_seq_device snd_pcm intel_tcc_cooling iwlwifi snd_timer 
x86_pkg_temp_thermal intel_powerclamp pcspkr intel_wmi_thunderbolt snd i2c_i801 cfg80211 soundcore i2c_smbus bfq i2c_mux mei_hdcp mei_pxp intel_pch_thermal 
intel_pmc_core intel_vsec pmt_telemetry acpi_pad pmt_class sch_fq_codel nfsd auth_rpcgss nfs_acl lockd grace sunrpc zram raid1 dm_raid raid456 libcrc32c 
async_raid6_recov async_memcpy async_pq async_xor xor async_tx raid6_pq i915 cec rc_core drm_buddy intel_gtt
  drm_display_helper drm_kms_helper ttm ixgbe agpgart igb mdio i2c_algo_bit dca hwmon drm mei_wdt xhci_pci i2c_core xhci_pci_renesas video wmi fuse [last 
unloaded: nfnetlink]
irq event stamp: 479468408
hardirqs last  enabled at (479468407): [<ffffffff83dc794b>] _raw_spin_unlock_irqrestore+0x2b/0x50
hardirqs last disabled at (479468408): [<ffffffff83dad49b>] __schedule+0x12ab/0x2c90
softirqs last  enabled at (479468404): [<ffffffff81294f9c>] do_softirq.part.0+0x3c/0x90
softirqs last disabled at (479468301): [<ffffffff81294f9c>] do_softirq.part.0+0x3c/0x90
CPU: 6 UID: 0 PID: 880 Comm: irq/254-iwlwifi Tainted: G        W    L     6.11.0 #1
Tainted: [W]=WARN, [L]=SOFTLOCKUP
Hardware name: Default string Default string/SKYBAY, BIOS 5.12 08/04/2020
RIP: 0010:queued_spin_lock_slowpath+0x716/0xba0
Code: 00 00 8b 45 08 85 c0 75 38 48 b8 00 00 00 00 00 fc ff df 4c 89 fa 4d 89 fd 48 c1 ea 03 41 83 e5 07 48 01 c2 41 83 c5 03 f3 90 <0f> b6 02 41 38 c5 7c 08 84 
c0 0f 85 ba 03 00 00 8b 45 08 85 c0 74
RSP: 0000:ffff88841dd092a8 EFLAGS: 00000246
RAX: 0000000000000000 RBX: ffff88813b3c0100 RCX: 1ffffffff09491e8
RDX: ffffed1083ba8159 RSI: 0000000000000002 RDI: ffffffff84a48f40
RBP: ffff88841dd40ac0 R08: 0000000000000001 R09: ffffed1027678020
R10: ffff88813b3c0103 R11: 0000000000000000 R12: 1ffff11083ba1257
R13: 0000000000000003 R14: 00000000001c0000 R15: ffff88841dd40ac8
FS:  0000000000000000(0000) GS:ffff88841dd00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fddd15ea7d8 CR3: 0000000004c99003 CR4: 00000000003706f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  <IRQ>
  ? watchdog_timer_fn+0x2d9/0x3b0
  ? lockup_detector_update_enable+0x50/0x50
  ? __hrtimer_run_queues+0x495/0x860
  ? trace_hrtimer_cancel+0x130/0x130
  ? ktime_get_update_offsets_now+0x87/0x2c0
  ? hrtimer_interrupt+0x2c4/0x7d0
  ? __flush_smp_call_function_queue+0x1bc/0x600
  ? __sysvec_apic_timer_interrupt+0xbc/0x380
  ? sysvec_apic_timer_interrupt+0x32/0x80
  ? asm_sysvec_apic_timer_interrupt+0x16/0x20
  ? queued_spin_lock_slowpath+0x716/0xba0
  ? queued_spin_lock_slowpath+0x648/0xba0
  ? kasan_save_track+0x10/0x30
  ? __kasan_slab_alloc+0x62/0x70
  ? _raw_write_unlock_irqrestore+0x50/0x50
  ? lock_acquire+0x43a/0x4f0
  ? lock_acquire+0x43a/0x4f0
  ? run_filter+0x131/0x300
  ? lock_sync+0x170/0x170
  do_raw_spin_lock+0x1dd/0x270
  ? spin_bug+0x1c0/0x1c0
  tpacket_rcv+0x863/0x3b30
  ? __lock_acquire+0x5806/0x6170
  ? packet_recvmsg+0x1340/0x1340
  ? seqcount_lockdep_reader_access.constprop.0+0x82/0x90
  ? ktime_get_with_offset+0x62/0x1b0
  ? ktime_get_with_offset+0xad/0x1b0
  ? __skb_clone+0x547/0x730
  ? packet_recvmsg+0x1340/0x1340
  dev_queue_xmit_nit+0x709/0xa40
  ? sk_skb_reason_drop+0xfb/0x150
  vrf_l3_rcv+0x3a3/0xe10 [vrf]
  ? vrf_l3_out+0xe80/0xe80 [vrf]
  ? run_filter+0x300/0x300
  ? __netif_receive_skb_core.constprop.0+0xadd/0x3a90
  ip_sublist_rcv+0x17f/0x870
  ? ip_rcv_finish_core.constprop.0+0x1e70/0x1e70
  ? ret_from_fork_asm+0x11/0x20
  ? ret_from_fork_asm+0x10/0x20
  ? write_profile+0xe0/0xe0
  ? __asan_memset+0x1f/0x40
  ? ip_rcv_core+0x603/0xcc0
  ip_list_rcv+0x2c1/0x3c0
  ? stack_trace_save+0x8b/0xc0
  ? ip_rcv+0x320/0x320
  ? stack_depot_save_flags+0x24/0x880
  ? filter_irq_stacks+0x90/0x90
  __netif_receive_skb_list_core+0x478/0x890
  ? do_softirq.part.0+0x3c/0x90
  ? __netif_receive_skb_core.constprop.0+0x3a90/0x3a90
  ? kthread+0x299/0x370
  ? ret_from_fork_asm+0x11/0x20
  ? trace_irq_enable.constprop.0+0xce/0x110
  ? seqcount_lockdep_reader_access.constprop.0+0x82/0x90
  ? ktime_get_with_offset+0x62/0x1b0
  ? ktime_get_with_offset+0xad/0x1b0
  netif_receive_skb_list_internal+0x610/0xcc0
  ? lock_release+0x4c1/0x680
  ? dev_gro_receive+0x10fd/0x2d50
  ? process_backlog+0x1220/0x1220
  ? tcp4_gro_complete+0x329/0x680
  ? lock_sync+0x170/0x170
  ? lock_release+0x4c1/0x680
  ? napi_gro_receive+0x7f3/0x990
  ? napi_skb_cache_put+0x25b/0x500
  ? reacquire_held_locks+0x4e0/0x4e0
  napi_complete_done+0x1c0/0x7c0
  ? napi_skb_cache_put+0x81/0x500
  ? napi_busy_loop+0x110/0x110
  ? napi_gro_receive+0x776/0x990
  ixgbe_poll+0x2073/0x4de0 [ixgbe]
  ? __lock_acquire+0x5870/0x6170
  ? lock_release+0x4c1/0x680
  ? napi_complete_done+0x2f0/0x7c0
  ? do_raw_spin_lock+0x81/0x270
  ? ixgbe_xdp_ring_update_tail_locked+0x80/0x80 [ixgbe]
  ? spin_bug+0x1c0/0x1c0
  __napi_poll.constprop.0+0x99/0x430
  net_rx_action+0x8e7/0xe10
  ? __napi_poll.constprop.0+0x430/0x430
  ? lock_release+0x4c1/0x680
  ? hrtimer_interrupt+0x30c/0x7d0
  ? reacquire_held_locks+0x4e0/0x4e0
  ? ktime_get+0x68/0x130
  ? lapic_next_deadline+0x23/0x30
  ? clockevents_program_event+0x1c3/0x280
  ? hrtimer_interrupt+0x318/0x7d0
  handle_softirqs+0x1b7/0x800
  ? iwl_pcie_irq_rx_msix_handler+0x1f6/0x320 [iwlwifi]
  do_softirq.part.0+0x3c/0x90
  </IRQ>
  <TASK>
  __local_bh_enable_ip+0xf6/0x120
  ? iwl_pcie_irq_rx_msix_handler+0x1f6/0x320 [iwlwifi]
  iwl_pcie_irq_rx_msix_handler+0x1fe/0x320 [iwlwifi]
  ? iwl_pcie_rx_free+0x550/0x550 [iwlwifi]
  irq_thread_fn+0x7f/0x150
  irq_thread+0x26f/0x470
  ? disable_irq_nosync+0x10/0x10
  ? wake_threads_waitq+0x40/0x40
  ? irq_thread+0x470/0x470
  ? lockdep_hardirqs_on_prepare+0x275/0x3e0
  ? __kthread_parkme+0x7d/0x130
  ? wake_threads_waitq+0x40/0x40
  kthread+0x299/0x370
  ? kthread_insert_work_sanity_check+0xd0/0xd0
  ret_from_fork+0x28/0x60
  ? kthread_insert_work_sanity_check+0xd0/0xd0
  ret_from_fork_asm+0x11/0x20
  </TASK>

[ there is more, but I think it will be repeat of above]

Thanks,
Ben

> 
>>>
>>>> an intel 10g
>>>
>>> It's more likely to get Intel's help if you mail (also) to our IWL list
>>> (CCed, +Aleksandr for ixgbe expertise).
>>>
>>>
>>>> NIC in the same system (using vrfs and such).  The system ran around
>>>> 7 hours before it crashed.  Seems to be a null pointer in a list, but
>>>> I'm not having great luck understanding where exactly in the large tcp_ack
>>>> method this is happening.  Any suggestions for how to get more relevant
>>>> info out of gdb?
>>
>> I would also enable kmemleak, lockdep, ubsan to get some easy helpers.
>>
>>>>
>>>> BUG: kernel NULL pointer dereference, address: 0000000000000008^M
>>>> #PF: supervisor write access in kernel mode^M
>>
>> could you share your virtualization config?
> 
> We are using vrf for each of the network devices.  We're using mac-vlans
> and 12 intel ax210 as well, though I need to verify the netdevs to make sure I'm
> not confusing it with a second mostly unrelated problem we are tracking.
> 
>>>> #PF: error_code(0x0002) - not-present page^M
>>>> PGD 115855067 P4D 115855067 PUD 283ed3067 PMD 0 ^M
>>>> Oops: Oops: 0002 [#1] PREEMPT SMP^M
>>>> CPU: 6 PID: 115673 Comm: btserver Tainted: G           O       6.10.3+ 
>>
>> so, what hacks do you have? those are to aid debugging or to enable some
>> of the wifi devices?
> 
> Great piles of wifi related hacks mostly.
> 
>> I don't have any insightful comment unfortunately, sorry.
> 
> We are able to reproduce on upstream 6.11.0 as well.  Or, we reproduced a soft-lockup
> at least.  We are trying again now with lockdep and list debugging and some other
> debugging enabled.
> 
> Thanks,
> Ben
> 

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

