Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3F116A485
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2020 12:02:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BCD77859B1;
	Mon, 24 Feb 2020 11:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bei2-nw-6+Fz; Mon, 24 Feb 2020 11:02:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F4EB85734;
	Mon, 24 Feb 2020 11:02:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 824131BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2020 11:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7DAA38628E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2020 11:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e8D2R5PXO0HD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2020 11:02:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4762886252
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2020 11:02:01 +0000 (UTC)
Received: from mail-pj1-f71.google.com ([209.85.216.71])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1j6BUs-0004Au-Hn
 for intel-wired-lan@lists.osuosl.org; Mon, 24 Feb 2020 11:01:58 +0000
Received: by mail-pj1-f71.google.com with SMTP id i3so6109778pjx.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2020 03:01:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=BoiLCuSVpr8GBuU940fcA4Jfqwnzh6IBOKxiFMTLggI=;
 b=Ei6my32UT/mqKdP7Ra5e4nIHg4QSW2urGrvklCil28gYH3DaAONxO5UjA7MLF7C6lS
 pvadoEG1oNrPY2K5sVJOoqB7kCZoxGpiC9258pmovAy4Rr5Nfau7h0GLe+a0xtqlBWL9
 xbfLhjnevAUzc59YJ5Ahq0CWOt79nN4VVs0WlrQ+PO36ItzRXGOIPbjOXSkhWkcTqh9m
 IRZLvP0PchxBTzhT1ByQDm0NdNlVFdbRvgdw1r+QDZRgbKK0xcyAlrlFPJx5qUYYgkk0
 skK9QAFLDgiA2YSTjI4WHO4j4bop2/yVTRHCXfVf01k26VUbX9YqnNFQ9wxzIc6Qa/eY
 EeVQ==
X-Gm-Message-State: APjAAAUwTT3GD2kXXlOlUlI6mDsvNj/xUp0228BPIlgX+6aU/cI7g4aH
 wxW1PuqEMDYM774PdQ6WcKhptrz4UCOzLRTP0ORarki/Gtd8Uxz/lBayotdXI2KSjtI+mpTyW6H
 7qph1cejNpJsTyd7N/dN/DRSanZPPtXwwlU8H7aEho/NdvM0=
X-Received: by 2002:aa7:9aeb:: with SMTP id y11mr52630203pfp.63.1582542116783; 
 Mon, 24 Feb 2020 03:01:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqxpATXkohj6yEWiEDe/7AKSV1/j3Ut6qTaY2VMvfoQs5TBxERrKQUUz7vYu5l978w6tSfR1yQ==
X-Received: by 2002:aa7:9aeb:: with SMTP id y11mr52630147pfp.63.1582542116228; 
 Mon, 24 Feb 2020 03:01:56 -0800 (PST)
Received: from 2001-b011-380f-3214-50a2-8a79-e4f9-2b0e.dynamic-ip6.hinet.net
 (2001-b011-380f-3214-50a2-8a79-e4f9-2b0e.dynamic-ip6.hinet.net.
 [2001:b011:380f:3214:50a2:8a79:e4f9:2b0e])
 by smtp.gmail.com with ESMTPSA id d69sm13176910pfd.72.2020.02.24.03.01.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Feb 2020 03:01:55 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <309B89C4C689E141A5FF6A0C5FB2118B971F9210@ORSMSX103.amr.corp.intel.com>
Date: Mon, 24 Feb 2020 19:01:52 +0800
Message-Id: <3CA021B0-FEB8-4DAA-9CF2-224F305A8C8A@canonical.com>
References: <20200207101005.4454-1-kai.heng.feng@canonical.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971F9210@ORSMSX103.amr.corp.intel.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Subject: Re: [Intel-wired-lan] [PATCH v3 1/2] igb: Use device_lock() insead
 of rtnl_lock()
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> On Feb 22, 2020, at 08:30, Brown, Aaron F <aaron.f.brown@intel.com> wrote:
> 
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Kai-Heng Feng
>> Sent: Friday, February 7, 2020 2:10 AM
>> To: davem@davemloft.net; mkubecek@suse.cz; Kirsher, Jeffrey T
>> <jeffrey.t.kirsher@intel.com>
>> Cc: open list:NETWORKING DRIVERS <netdev@vger.kernel.org>; Kai-Heng
>> Feng <kai.heng.feng@canonical.com>; moderated list:INTEL ETHERNET
>> DRIVERS <intel-wired-lan@lists.osuosl.org>; open list <linux-
>> kernel@vger.kernel.org>
>> Subject: [Intel-wired-lan] [PATCH v3 1/2] igb: Use device_lock() insead of
>> rtnl_lock()
>> 
>> Commit 9474933caf21 ("igb: close/suspend race in netif_device_detach")
>> fixed race condition between close and power management ops by using
>> rtnl_lock().
>> 
>> However we can achieve the same by using device_lock() since all power
>> management ops are protected by device_lock().
>> 
>> This fix is a preparation for next patch, to prevent a dead lock under
>> rtnl_lock() when calling runtime resume routine.
>> 
>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>> ---
>> v3:
>> - Fix unreleased lock reported by 0-day test bot.
>> v2:
>> - No change.
>> 
>> drivers/net/ethernet/intel/igb/igb_main.c | 14 ++++++++------
>> 1 file changed, 8 insertions(+), 6 deletions(-)
> 
> This patch introduces the following call trace / RIP when I sleep / resume (via rtcwake) a system that has an igb port with link up:  I'm not sure if it introduces the issue or just exposes / displays it as it only shows up on the first sleep / resume cycle and the systems I have that were stable for many sleep / resume cycles (arbitrarily 50+) continue to be so.  

I can't reproduce the issue here.

> -------------------------------------------------------------------------------------------------
> ...
> [   50.279436] usb usb3: root hub lost power or was reset
> [   50.279437] usb usb4: root hub lost power or was reset
> [   50.279491] sd 1:0:0:0: [sda] Starting disk
> [   50.317691] ------------[ cut here ]------------
> [   50.317692] RTNL: assertion failed at net/core/dev.c (2867)
> [   50.317700] WARNING: CPU: 6 PID: 5287 at net/core/dev.c:2867 netif_set_real_num_tx_queues+0x184/0x1a0
> [   50.317701] Modules linked in: rfcomm xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 ipt_REJECT nf_rej
> ect_ipv4 nft_counter nft_compat nf_tables nfnetlink tun bridge stp llc cmac bnep iTCO_wdt intel_wmi_thunderbolt iT
> CO_vendor_support mxm_wmi wmi_bmof x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel snd_hda_codec_hdmi kvm
> snd_hda_codec_realtek irqbypass snd_hda_codec_generic ledtrig_audio btusb btrtl btbcm snd_hda_intel btintel snd_i
> ntel_dspcfg snd_hda_codec bluetooth snd_hwdep snd_hda_core snd_seq crct10dif_pclmul crc32_pclmul joydev snd_seq_de
> vice ghash_clmulni_intel intel_cstate snd_pcm mei_me intel_uncore snd_timer ecdh_generic snd ecc pcspkr mei rfkill
> i2c_i801 soundcore intel_rapl_perf sg wmi acpi_pad intel_pmc_core nfsd auth_rpcgss nfs_acl lockd grace sunrpc ip_
> tables xfs libcrc32c sr_mod sd_mod cdrom t10_pi i915 intel_gtt drm_kms_helper syscopyarea sysfillrect sysimgblt fb
> _sys_fops cec drm igb ahci libahci e1000e libata crc32c_intel dca i2c_algo_bit video
> [   50.317719] CPU: 6 PID: 5287 Comm: kworker/u24:17 Not tainted 5.6.0-rc2_next-queue_dev-queue_81b6341+ #5
> [   50.317720] Hardware name: Gigabyte Technology Co., Ltd. Z370 AORUS Gaming 5/Z370 AORUS Gaming 5-CF, BIOS F6 04
> /03/2018
> [   50.317722] Workqueue: events_unbound async_run_entry_fn
> [   50.317723] RIP: 0010:netif_set_real_num_tx_queues+0x184/0x1a0

I added some debug message and made sure the ASSERT_RTNL() was reached. However rtnl is locked for me.

> [   50.317724] Code: 43 1e e7 00 00 0f 85 fc fe ff ff ba 33 0b 00 00 48 c7 c6 92 57 9a bd 48 c7 c7 e0 a4 91 bd c6
> 05 23 1e e7 00 01 e8 57 3c 97 ff <0f> 0b e9 d6 fe ff ff 41 be ea ff ff ff e9 a4 fe ff ff 66 2e 0f 1f
> [   50.317724] RSP: 0018:ffffb57fc1347d38 EFLAGS: 00010282
> [   50.317725] RAX: 0000000000000000 RBX: ffff995a9e3e4000 RCX: 0000000000000007
> [   50.317725] RDX: 0000000000000007 RSI: 0000000000000002 RDI: ffff995abe398f40
> [   50.317725] RBP: 0000000000000004 R08: 0000000000000002 R09: 000000000002b500
> [   50.317726] R10: 0000003a9dc62fa1 R11: 0000000000fed278 R12: 0000000000000004
> [   50.317726] R13: 0000000000000004 R14: ffff995a9e3e4000 R15: ffff995a9e3e4000
> [   50.317727] FS:  0000000000000000(0000) GS:ffff995abe380000(0000) knlGS:0000000000000000
> [   50.317727] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   50.317727] CR2: 00007f4dbd7fae20 CR3: 0000000efbe0a004 CR4: 00000000003606e0
> [   50.317728] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [   50.317728] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [   50.317728] Call Trace:
> [   50.317734]  __igb_open+0x1ee/0x5c0 [igb]
> [   50.317737]  igb_resume+0x193/0x1c0 [igb]
> [   50.317739]  ? pci_pm_thaw+0x80/0x80

So this is hibernation instead of suspension. I tried both S3 and S4 and can't reproduce the issue.

Kai-Heng

> [   50.317741]  dpm_run_callback+0x4f/0x140
> [   50.317742]  device_resume+0x107/0x180
> [   50.317743]  async_resume+0x19/0x50
> [   50.317744]  async_run_entry_fn+0x39/0x160
> [   50.317746]  process_one_work+0x1a7/0x370
> [   50.317747]  worker_thread+0x30/0x380
> [   50.317748]  ? process_one_work+0x370/0x370
> [   50.317749]  kthread+0x10c/0x130
> [   50.317750]  ? kthread_park+0x80/0x80
> [   50.317751]  ret_from_fork+0x35/0x40
> [   50.317752] ---[ end trace 45a9ec6b02347b6e ]---
> [   50.317753] ------------[ cut here ]------------
> [   50.317753] RTNL: assertion failed at net/core/dev.c (2913)
> [   50.317756] WARNING: CPU: 6 PID: 5287 at net/core/dev.c:2913 netif_set_real_num_rx_queues+0x79/0x80
> [   50.317757] Modules linked in: rfcomm xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 ipt_REJECT nf_rej
> ect_ipv4 nft_counter nft_compat nf_tables nfnetlink tun bridge stp llc cmac bnep iTCO_wdt intel_wmi_thunderbolt iT
> CO_vendor_support mxm_wmi wmi_bmof x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel snd_hda_codec_hdmi kvm
> snd_hda_codec_realtek irqbypass snd_hda_codec_generic ledtrig_audio btusb btrtl btbcm snd_hda_intel btintel snd_i
> ntel_dspcfg snd_hda_codec bluetooth snd_hwdep snd_hda_core snd_seq crct10dif_pclmul crc32_pclmul joydev snd_seq_de
> vice ghash_clmulni_intel intel_cstate snd_pcm mei_me intel_uncore snd_timer ecdh_generic snd ecc pcspkr mei rfkill
> i2c_i801 soundcore intel_rapl_perf sg wmi acpi_pad intel_pmc_core nfsd auth_rpcgss nfs_acl lockd grace sunrpc ip_
> tables xfs libcrc32c sr_mod sd_mod cdrom t10_pi i915 intel_gtt drm_kms_helper syscopyarea sysfillrect sysimgblt fb
> _sys_fops cec drm igb ahci libahci e1000e libata crc32c_intel dca i2c_algo_bit video
> [   50.317766] CPU: 6 PID: 5287 Comm: kworker/u24:17 Tainted: G        W         5.6.0-rc2_next-queue_dev-queue_81
> b6341+ #5
> [   50.317766] Hardware name: Gigabyte Technology Co., Ltd. Z370 AORUS Gaming 5/Z370 AORUS Gaming 5-CF, BIOS F6 04
> /03/2018
> [   50.317767] Workqueue: events_unbound async_run_entry_fn
> [   50.317768] RIP: 0010:netif_set_real_num_rx_queues+0x79/0x80
> [   50.317768] Code: ff c3 80 3d 89 6c e7 00 00 75 db ba 61 0b 00 00 48 c7 c6 92 57 9a bd 48 c7 c7 e0 a4 91 bd c6
> 05 6d 6c e7 00 01 e8 a2 8a 97 ff <0f> 0b eb b8 0f 1f 00 0f 1f 44 00 00 53 f0 48 0f ba af d8 00 00 00
> [   50.317769] RSP: 0018:ffffb57fc1347d58 EFLAGS: 00010282
> [   50.317769] RAX: 0000000000000000 RBX: ffff995a9e3e4000 RCX: 0000000000000007
> [   50.317769] RDX: 0000000000000007 RSI: 0000000000000002 RDI: ffff995abe398f40
> [   50.317770] RBP: 0000000000000004 R08: 0000000000000002 R09: 000000000002b500
> [   50.317770] R10: 0000003a9dc92851 R11: 0000000000fec568 R12: 0000000000000000
> [   50.317770] R13: 0000000000000001 R14: ffff995a9e3e4000 R15: ffff995a9e3e4000
> [   50.317771] FS:  0000000000000000(0000) GS:ffff995abe380000(0000) knlGS:0000000000000000
> [   50.317771] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   50.317771] CR2: 00007f4dbd7fae20 CR3: 0000000efbe0a004 CR4: 00000000003606e0
> [   50.317772] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [   50.317772] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [   50.317772] Call Trace:
> [   50.317775]  __igb_open+0x208/0x5c0 [igb]
> [   50.317777]  igb_resume+0x193/0x1c0 [igb]
> [   50.317777]  ? pci_pm_thaw+0x80/0x80
> [   50.317778]  dpm_run_callback+0x4f/0x140
> [   50.317779]  device_resume+0x107/0x180
> [   50.317780]  async_resume+0x19/0x50
> [   50.317781]  async_run_entry_fn+0x39/0x160
> [   50.317782]  process_one_work+0x1a7/0x370
> [   50.317783]  worker_thread+0x30/0x380
> [   50.317784]  ? process_one_work+0x370/0x370
> [   50.317785]  kthread+0x10c/0x130
> [   50.317785]  ? kthread_park+0x80/0x80
> [   50.317786]  ret_from_fork+0x35/0x40
> [   50.317787] ---[ end trace 45a9ec6b02347b6f ]---
> [   50.560158] OOM killer enabled.
> [   50.560158] Restarting tasks ... done.
> [   50.560713] video LNXVIDEO:00: Restoring backlight state
> [   50.560714] PM: suspend exit
> [   50.601179] ata5: SATA link down (SStatus 4 SControl 300)
> [   50.601201] ata4: SATA link up 1.5 Gbps (SStatus 113 SControl 300)
> ...

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
