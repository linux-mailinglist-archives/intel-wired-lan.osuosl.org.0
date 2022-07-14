Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEA7574FFC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jul 2022 15:52:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0141341709;
	Thu, 14 Jul 2022 13:52:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0141341709
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657806770;
	bh=NwqcvV4dyTt2UtCt49PQIgSe+dSOcjOX4nqIrmhU4KU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=kmDamTvG4mMNunoSrRQoZzu4QKZtjQJgOukDq3AZtiArX0p1HSvEdSJ65UkefLuec
	 uyM1ywRR5cOL+Lks5S7R9F5hpY8LLi96/AXqNIStzkwQ/WyUo7CIK0IjyfbxJ5vLBZ
	 t/wvKVKW3DgKITtiZ9DQs1g/4TTaqpCxr6TUjkfG9LdylHIwKbwRQZVNhMZkmpBH5x
	 4aSnqRzSqua5Cfzh8D+Eh+MmLwJex+Xba+E6EbZQqQNrDfOBAnK2s+uw8JKQWjAzXm
	 ofjoj8ojnTaGA4ZAtl7sClghH/N5wJZtQ0DvKyG4m9S9+HlLng4cntybMGX+9xlTo+
	 9ceLayXGQrsZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5yjIjucIRtna; Thu, 14 Jul 2022 13:52:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D778C416C2;
	Thu, 14 Jul 2022 13:52:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D778C416C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D66471BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 08:14:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B00868475A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 08:14:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B00868475A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Khu-FsGiEi65 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 08:14:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E279084747
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E279084747
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 08:14:45 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6A928B823BE;
 Thu, 14 Jul 2022 08:14:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4700DC34115;
 Thu, 14 Jul 2022 08:14:40 +0000 (UTC)
From: James Hogan <jhogan@kernel.org>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Jul 2022 09:14:38 +0100
Message-ID: <4752347.31r3eYUQgx@saruman>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 14 Jul 2022 13:52:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1657786480;
 bh=8MIZRvny9tGCUOF+L7yfssGGU7Gjdzw+NIk6Cb9IuqA=;
 h=From:To:Cc:Subject:Date:From;
 b=PZL0ozLGtO9+ltUxLTVIoks1X1zdxfdd55FjWOy94MyGvPDWv/h2BqRu68gQPNNhd
 PEbyXxiM3ezdx7NrRhDonkS5LURlffMjwPb8FySvxH8Vx+rrcwFzQDmVw1r5lcjUBx
 vDsWhrB1r6I6pzbGnUCaM/StXyL2OGy/dbFiVTtVMJ3XpOLm4pE0YXBnomhw6IzmXF
 Bq9VFn/wdAPXUyhrOT3ZOciJfvIQCWh5QRbCOFVrtD2tUnsfJ0KnW8DucjwdCQflFk
 e810SRHAkh/5bVlrq9rcihZqOPsRQxrWqrfpGbtQRC1Nk8BtPz2FALL6fsjKN1NLRI
 8Ob2LswlmMkGg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PZL0ozLG
Subject: [Intel-wired-lan] I225-V (igc driver) hangs after resume in
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

I'm getting regular hangs after resume from suspend with the igc driver, for
an I225-V (rev 3) on an MSI Pro Z690-A, with version 5.18.11 on archlinux. A few
stable versions ago it was possible to get the network back up by removing and
reloading the igc driver, however now I get the following, and only a reboot
works (which itself hangs before actually restarting the machine, and requires
a hard reset).

Any ideas?

INFO: task NetworkManager:1139 blocked for more than 124 seconds.
      Not tainted 5.18.11-arch1-1 #1  
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:NetworkManager  state:D stack:    0 pid: 1139 ppid:     1 flags:0x00004002
Call Trace:
 <TASK>
 __schedule+0x37c/0x11f0
 schedule+0x4f/0xb0
 schedule_preempt_disabled+0x15/0x20
 __mutex_lock.constprop.0+0x2d0/0x480
 ? igc_tsn_reset+0x64/0x100 [igc c7b6f7549edcf5dd76637367233bb9aa57fc35fd]
 igc_resume+0xf6/0x1d0 [igc c7b6f7549edcf5dd76637367233bb9aa57fc35fd]
 pci_pm_runtime_resume+0xab/0xd0 
 ? pci_pm_freeze_noirq+0xe0/0xe0 
 __rpm_callback+0x41/0x160
 rpm_callback+0x35/0x70
 ? pci_pm_freeze_noirq+0xe0/0xe0 
 rpm_resume+0x5e6/0x820
 __pm_runtime_resume+0x4b/0x80
 dev_ethtool+0x128/0x3060
 ? inet_ioctl+0xdc/0x1e0
 dev_ioctl+0x157/0x520
 sock_do_ioctl+0xd7/0x120
 sock_ioctl+0xee/0x330
 ? syscall_exit_to_user_mode+0x26/0x50
 ? do_syscall_64+0x6b/0x90
 ? syscall_exit_to_user_mode+0x26/0x50
 __x64_sys_ioctl+0x8e/0xc0
 do_syscall_64+0x5c/0x90
 ? do_syscall_64+0x6b/0x90
 ? do_syscall_64+0x6b/0x90
 ? do_syscall_64+0x6b/0x90
 ? syscall_exit_to_user_mode+0x26/0x50
 ? do_syscall_64+0x6b/0x90
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x7f5d37b077af
RSP: 002b:00007ffd791600f0 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007ffd791603e0 RCX: 00007f5d37b077af
RDX: 00007ffd79160210 RSI: 0000000000008946 RDI: 0000000000000013
RBP: 00007ffd79160390 R08: 0000000000000000 R09: 00007ffd791603e8
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffd79160210 R14: 00007ffd791601f0 R15: 00007ffd791601f0
 </TASK>

Thanks
James


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
