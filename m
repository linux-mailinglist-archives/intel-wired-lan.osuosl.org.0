Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B70058450C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 19:36:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F61141852;
	Thu, 28 Jul 2022 17:36:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F61141852
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659029803;
	bh=i2/pSI9ByVwLQc9nt1Lcds5bxF7jv3apVx7JLErXnNo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=05UUzsOgK2mO+Gn7JrHpYEH0nwBUe5wGgOSWvvkatMJcDM52Dh+iJm6nrWu3Pil1d
	 g6ZTLNNKIDUwlS96O9hxTTz+Cx3WPWcXT2w/sFc5mKBgnQRp791XO0qFt/+VFhwDpl
	 mXiyuhRpUgm6oMp1jCgquixXo9ahzjWz4IyOvw8Ix+Shss+CHK3ZdpqTvQuBD7c7dY
	 IaCkVfksIQp0f58784uYRM1FyCf0husqNCFG6EGMVTq/zEDpLaejzSSQyvxgQ4Qfw2
	 L+I+eYR+jVtgLLJcKEzwWZxPYQtjh56XkCEkwtKIZXlVxTDfzlwvzDYsgGn1+55Bw5
	 N94U3dCFjSy0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8AKwK7hYpysw; Thu, 28 Jul 2022 17:36:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1B344183A;
	Thu, 28 Jul 2022 17:36:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1B344183A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60F281BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 17:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35B988331B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 17:36:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35B988331B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D1xkXvPyttXe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jul 2022 17:36:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C5F782D96
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C5F782D96
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 17:36:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8797461D48;
 Thu, 28 Jul 2022 17:36:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B088AC433C1;
 Thu, 28 Jul 2022 17:36:33 +0000 (UTC)
From: James Hogan <jhogan@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Thu, 28 Jul 2022 18:36:31 +0100
Message-ID: <4755499.31r3eYUQgx@saruman>
In-Reply-To: <874jz2ei5m.fsf@intel.com>
References: <4752347.31r3eYUQgx@saruman> <5843458.lOV4Wx5bFT@saruman>
 <874jz2ei5m.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1659029794;
 bh=Ntidgi/XDM/wlvwKVOmQ1q/s8IxelhKoFDPX+sliVAA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sUSKqWVWKOxkZJi1jZLXEFh//y4aWivB6ixrsageqFXniKeAHq9beAW3czFGEKHCh
 n5PacfNe0t9FPtvgDOzfzHlI3izlWled57aTE22l6i5yQscWLSV4p2AU241sP2RiG8
 Qix9pf70jumstNk3/L7v9hERoDwr2azH6G0FurrUGDpVov7pyHo8bvurDo0khwe8mW
 UhmWfxP0tt7SA6Hq0rs7oy7HliE75ZN4JXJWw9AS85Cm+MabVEr33OB2WzdYCPYKeG
 YalyZfHAVJWQlvwI/wrg1S3Tbv4QE80CEAx4eb31SkwErUTmvBMdAXENvFv6vJwM4g
 Kahpyk/2ELDMA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sUSKqWVW
Subject: Re: [Intel-wired-lan] I225-V (igc driver) hangs after resume in
 igc_resume/igc_tsn_reset
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On Wednesday, 27 July 2022 15:37:09 BST Vinicius Costa Gomes wrote:
> James Hogan <jhogan@kernel.org> writes:
> > On Sunday, 17 July 2022 22:40:59 BST James Hogan wrote:
> >> On Sunday, 17 July 2022 20:59:36 BST you wrote:
> >> > Hi James,
> >> > 
> >> > James Hogan <jhogan@kernel.org> writes:
> >> > > Hi,
> >> > > 
> >> > > I'm getting regular hangs after resume from suspend with the igc
> >> > > driver,
> >> > > for an I225-V (rev 3) on an MSI Pro Z690-A, with version 5.18.11 on
> >> > > archlinux. A few stable versions ago it was possible to get the
> >> > > network
> >> > > back up by removing and reloading the igc driver, however now I get
> >> > > the
> >> > > following, and only a reboot works (which itself hangs before
> >> > > actually
> >> > > restarting the machine, and requires a hard reset).
> >> > 
> >> > Sorry for the delay. I was travelling.
> >> 
> >> No worries
> >> 
> >> > I remember seeing some weird behaviors with PCIe PTM and
> >> > suspend/resume.
> >> > Specially with onboard controllers.
> >> 
> >> It appears that the hardware got itself into a funny state such that
> >> NetworkManager hung as described more often than not on resume, however
> >> without changing kernel it has now settled back into the previous
> >> behaviour
> >> of usually working, but occasionally (maybe 1 in 5) the network wouldn't
> >> come back up on resume, with network related things hung until I unload
> >> and
> >> reload the igc module.
> >> 
> >> > Can you see if disabling CONFIG_PCIE_PTM in your kernel config changes
> >> > anything? (assuming it's enabled)
> >> 
> >> It is enabled yes. Okay I'll give it a go when I get the chance. I'll
> >> likely have to do a bunch of boot and suspend cycles to try and get it
> >> back into either failure condition.
> > 
> > (sorry somehow dropped others off cc the other day, now adding back)...
> > 
> > I've been running most of this week with 5.18.12-arch1-1, rebuilt with
> > CONFIG_PCIE_PTM=n, however I have now observed both cases.
> > 
> > It failed to bring up the network link a couple of times after resume from
> > suspend, and i managed to remove the igc module and reload it to get it
> > going again.
> > 
> > Another time it failed to come back up, but reloading module didn't help.
> > 
> > I also hit the igc_tsn_reset hang, but this time it was immediately after
> > boot (possibly a warm reset), where it failed to bring up the network at
> > all. I'll paste the full backtraces of hung tasks below.
> > 
> > I'm wondering whether, since most of the tasks are stuck trying to acquire
> > a mutex, the issue is elsewhere. In some past cases though all the tasks
> > that are dumped are at a mutex_lock...
> 
> Yeah, I agree that it seems like the issue is something else. I would
> suggest start with the "simple" things, enabling 'CONFIG_PROVE_LOCKING'
> and looking at the first splat, it could be that what you are seeing is
> caused by a deadlock somewhere else.

This is revealing I think (re-enabled PCIE_PTM and enabled PROVE_LOCKING).

In this case it happened within minutes of boot, but a few previous attempts
with several suspend cycles with the same kernel didn't detect the same thing.

NetworkManager[857]: <info>  [1659028974.1752] device (enp6s0): state change: activated -> unavailable (reason 'carrier-changed', sys-iface-state: 'managed')

============================================
WARNING: possible recursive locking detected
5.18.12-arch1-1 #2 Not tainted
--------------------------------------------
NetworkManager/857 is trying to acquire lock:
ffffffff9f9e9048 (rtnl_mutex){+.+.}-{3:3}, at: igc_resume+0xf6/0x1d0 [igc]

but task is already holding lock:
ffffffff9f9e9048 (rtnl_mutex){+.+.}-{3:3}, at: dev_ethtool+0xaf/0x3080

other info that might help us debug this:
 Possible unsafe locking scenario:
       CPU0
       ----
  lock(rtnl_mutex);
  lock(rtnl_mutex);

 *** DEADLOCK ***
 May be due to missing lock nesting notation
1 lock held by NetworkManager/857:
 #0: ffffffff9f9e9048 (rtnl_mutex){+.+.}-{3:3}, at: dev_ethtool+0xaf/0x3080

stack backtrace:
CPU: 0 PID: 857 Comm: NetworkManager Not tainted 5.18.12-arch1-1 #2 369425cead7bf2331cd4c5d2279465ad4a0fc21f
Hardware name: Micro-Star International Co., Ltd. MS-7D25/PRO Z690-A DDR4(MS-7D25), BIOS 1.40 05/17/2022
Call Trace:
 <TASK>
 dump_stack_lvl+0x5f/0x78
 __lock_acquire.cold+0xd4/0x2e5
 ? __lock_acquire+0x3b2/0x1fd0
 lock_acquire+0xc8/0x2d0
 ? igc_resume+0xf6/0x1d0 [igc beed6d83546b18fcf82fbbfaeea59871823bceeb]
 ? lock_is_held_type+0xaa/0x120
 __mutex_lock+0xb6/0x830
 ? igc_resume+0xf6/0x1d0 [igc beed6d83546b18fcf82fbbfaeea59871823bceeb]
 ? lockdep_hardirqs_on_prepare+0xdd/0x180
 ? _raw_spin_unlock_irqrestore+0x34/0x50
 ? igc_resume+0xf6/0x1d0 [igc beed6d83546b18fcf82fbbfaeea59871823bceeb]
 ? igc_resume+0xf6/0x1d0 [igc beed6d83546b18fcf82fbbfaeea59871823bceeb]
 igc_resume+0xf6/0x1d0 [igc beed6d83546b18fcf82fbbfaeea59871823bceeb]
 pci_pm_runtime_resume+0xab/0xd0
 ? pci_pm_freeze_noirq+0xe0/0xe0
 __rpm_callback+0x41/0x160
 rpm_callback+0x35/0x70
 ? pci_pm_freeze_noirq+0xe0/0xe0
 rpm_resume+0x5eb/0x820
 __pm_runtime_resume+0x4b/0x80
 dev_ethtool+0x128/0x3080
 ? lock_is_held_type+0xaa/0x120
 ? find_held_lock+0x2b/0x80
 ? dev_load+0x57/0x140
 ? lock_release+0xd4/0x2d0
 dev_ioctl+0x155/0x560
 sock_do_ioctl+0xd7/0x120
 sock_ioctl+0x103/0x360
 ? __fget_files+0xd2/0x170
 __x64_sys_ioctl+0x8e/0xc0
 do_syscall_64+0x5c/0x90
 ? do_syscall_64+0x6b/0x90
 ? lockdep_hardirqs_on_prepare+0xdd/0x180
 ? do_syscall_64+0x6b/0x90
 ? lockdep_hardirqs_on_prepare+0xdd/0x180
 ? do_syscall_64+0x6b/0x90
 ? asm_sysvec_apic_timer_interrupt+0xe/0x20
 ? rcu_read_lock_sched_held+0x40/0x80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f2c35d077af
Code: 00 48 89 44 24 18 31 c0 48 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48 89 44 24 10 b8 10 00 00 00 0f 05 <89> c2 3d 00 f0 ff ff 77 18 48 8b 44 24 18 64 48 2b 04 25 28 00 00
RSP: 002b:00007ffd7319afd0 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007ffd7319b2c0 RCX: 00007f2c35d077af
RDX: 00007ffd7319b0f0 RSI: 0000000000008946 RDI: 0000000000000012
RBP: 00007ffd7319b270 R08: 0000000000000000 R09: 00007ffd7319b2c8
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffd7319b0f0 R14: 00007ffd7319b0d0 R15: 00007ffd7319b0d0
 </TASK>

Cheers
James


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
