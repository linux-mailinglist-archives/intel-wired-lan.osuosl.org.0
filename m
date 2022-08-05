Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A20E58AA14
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 13:25:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 420C660B43;
	Fri,  5 Aug 2022 11:25:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 420C660B43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659698725;
	bh=Tkmrl+CTGk6M7gJ+tMiQvZC8iQ5WXZnqngDXKlEPiPo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MxMHO9V/XLSh6plWaz9Y7d0CisJc9YsWSbE8xq/NhEwOXIBRhabLZH9udiOJ5COcS
	 QaoU6oNgRv2fjq3IaUsi7F2ddAx583MdfeGVrSY/8ourg8lI65AysGfbDgVvsGufNi
	 qIzhuZCaSz8FgCPddRt7ICxDBikXT4GxtB2+5+9g0Nnvm6cihnFrlEzWlc0pV7EQCr
	 zdQHM9oH6Gu+6E0MwUYYvQ/N81UQSNeu0K1FQuQVlgQvhHVmZIFZoZZPWeU7i2/TJL
	 FxcTXT+3wZgkaxyADAtDAS1RoyqPqISuyIPEXd89MT50wCYt2laE5mvqjY2dcQNWV3
	 hZTH66zj2G49g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hA5Rw29i6nfi; Fri,  5 Aug 2022 11:25:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13AC360ADC;
	Fri,  5 Aug 2022 11:25:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13AC360ADC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF82E1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 11:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9686F83E3E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 11:25:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9686F83E3E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9uIY2c1N_526 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Aug 2022 11:25:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CA7B83E3D
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3CA7B83E3D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 11:25:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 234B6B82868;
 Fri,  5 Aug 2022 11:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58A84C433D6;
 Fri,  5 Aug 2022 11:25:12 +0000 (UTC)
From: James Hogan <jhogan@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, Sasha Neftin <sasha.neftin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Fri, 05 Aug 2022 12:25:05 +0100
Message-ID: <4765029.31r3eYUQgx@saruman>
In-Reply-To: <3514132.R56niFO833@saruman>
References: <4752347.31r3eYUQgx@saruman> <1838555.CQOukoFCf9@saruman>
 <3514132.R56niFO833@saruman>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1659698713;
 bh=KmJe2qnqGyoOeiAUg0mt7Tfq1iwsWa5Ik7kNc1FSwGE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jP3SFGjpiKDYr5Ol6KP/IzgbS3NrexKwGRq84KeOXNGiGqoifnPy3cZKN2raB7I0G
 YGgYLZbCJdjgEyZ9tAtgfkNObaAgGVxOgbYkM7ZzFk2Sy9bUMaxHMEfe02toVYR2bZ
 1mA2U8ll+X5n5Mp3oW5BEIuHvtX0nkBWHtfA+N4qje4iHaZvuSD5sQQ2dcB+7VfN8S
 Ti7jS1lRf+nndY/uk+j+UEUatzeTmsR3+pv9qb9mNh3qvmyu9OSVt/oquxMhtQYV7p
 e9dLHJprBTiStWtHRjJyvwJQDqGWLnKPjkdR3hSwAxkh4DOusen8AzMOvcNmHUPY5P
 zf1ZWqiOM2UwQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jP3SFGjp
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thursday, 4 August 2022 23:07:34 BST James Hogan wrote:
> And I just found this patch from December which may have been masked by the
> PTM issues:
> https://lore.kernel.org/netdev/20211201185731.236130-1-vinicius.gomes@intel.
> com/
> 
> I'll build and run with that for a few days and see how it goes.

I gave it a good hammering yesterday evening with suspend/resume cycles, and
it didn't lock up, however it did still fail to bring the network up a couple
of times, requiring me to unload and reload the driver.

The only kernel log splats I saw were an assert that RTNL mutex wasn't taken
in the igc_runtime_resume path, and a suspicious RCU usage warning, both
pasted below.

I'll keep running with that patch and lockdep enabled (based on
5.18.16-arch1-1) and report back any further issues.

Cheers
James

------------[ cut here ]------------
RTNL: assertion failed at net/core/dev.c (2886)
WARNING: CPU: 0 PID: 7752 at net/core/dev.c:2886 netif_set_real_num_tx_queues+0x1f0/0x210
Modules linked in: rfcomm intel_rapl_msr ee1004 spi_nor iTCO_wdt intel_pmc_bxt mtd iTCO_vendor_support mei_pxp mei_hdcp cmac algif_hash algif_skcipher af_alg bnep pmt_telemetry pmt_class wmi_bmof mxm_wmi intel_rapl_common intel_tcc_cooling x86_pkg_temp_thermal intel_powerclamp kvm_intel kvm irqbypass rapl intel_cstate intel_uncore pcspkr snd_sof_pci_intel_tgl snd_sof_intel_hda_common soundwire_intel soundwire_generic_allocation soundwire_cadence snd_sof_intel_hda snd_sof_pci snd_sof_xtensa_dsp snd_sof snd_hda_codec_realtek snd_sof_utils snd_soc_hdac_hda snd_hda_codec_generic snd_hda_ext_core snd_soc_acpi_intel_match snd_soc_acpi soundwire_bus ledtrig_audio uvcvideo snd_usb_audio snd_soc_core videobuf2_vmalloc videobuf2_memops snd_usbmidi_lib videobuf2_v4l2 snd_compress i2c_i801 snd_rawmidi spi_intel_pci ac97_bus igc(-) spi_intel videobuf2_common snd_pcm_dmaengine i2c_smbus snd_seq_device mei_me snd_hda_codec_hdmi mei cdc_acm videodev snd_hda_intel snd_intel_dspcfg
 snd_intel_sdw_acpi mc amdgpu mousedev i915 snd_hda_codec snd_hda_core btusb snd_hwdep btrtl snd_pcm btbcm gpu_sched drm_buddy joydev btintel snd_timer drm_ttm_helper btmtk snd ttm intel_vsec drm_dp_helper soundcore intel_gtt serial_multi_instantiate wmi video bluetooth ecdh_generic acpi_tad rfkill coretemp acpi_pad nls_iso8859_1 vfat fat mac_hid ip6t_REJECT nf_reject_ipv6 xt_hl ip6t_rt ipt_REJECT nf_reject_ipv4 xt_LOG nf_log_syslog xt_multiport xt_limit xt_addrtype xt_tcpudp xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 libcrc32c ip6table_filter ip6_tables iptable_filter i2c_dev sg crypto_user fuse bpf_preload ip_tables x_tables ext4 crc32c_generic crc16 mbcache jbd2 hid_microsoft ff_memless dm_crypt cbc encrypted_keys trusted asn1_encoder tee tpm rng_core dm_mod usbhid crct10dif_pclmul crc32_pclmul crc32c_intel ghash_clmulni_intel aesni_intel crypto_simd nvme cryptd sr_mod xhci_pci nvme_core cdrom xhci_pci_renesas
CPU: 0 PID: 7752 Comm: kworker/0:1 Not tainted 5.18.16-arch1-1 #3 2927cbed739f932be66f137e6808a2714da26c25
Hardware name: Micro-Star International Co., Ltd. MS-7D25/PRO Z690-A DDR4(MS-7D25), BIOS 1.40 05/17/2022
Workqueue: pm pm_runtime_work
RIP: 0010:netif_set_real_num_tx_queues+0x1f0/0x210
Code: f8 f7 5f 01 00 0f 85 90 fe ff ff ba 46 0b 00 00 48 c7 c6 6e 6e 6f 82 48 c7 c7 70 a5 72 82 c6 05 d8 f7 5f 01 01 e8 1f d6 25 00 <0f> 0b e9 6a fe ff ff b8 ea ff ff ff e9 46 fe ff ff 66 66 2e 0f 1f
RSP: 0018:ffffa25e823dbc98 EFLAGS: 00010286
RAX: 0000000000000000 RBX: ffff95a5668fa000 RCX: 0000000000000027
RDX: ffff95accfc21a28 RSI: 0000000000000001 RDI: ffff95accfc21a20
RBP: 0000000000000004 R08: 0000000000000000 R09: ffffa25e823dbaa0
R10: 0000000000000003 R11: ffff95acf07ac2e8 R12: 0000000000000001
R13: 0000000000000004 R14: ffff95a5668fa000 R15: ffff95a5691bc1e8
FS:  0000000000000000(0000) GS:ffff95accfc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007feec86e5c90 CR3: 0000000252fdc001 CR4: 0000000000f70ef0
PKRU: 55555554
Call Trace:
 <TASK>
 __igc_open+0x40a/0x660 [igc 73e11f9f5110389b26a5a274cff80c9ddf9bab7a]
 __igc_resume+0x133/0x240 [igc 73e11f9f5110389b26a5a274cff80c9ddf9bab7a]
 ? pci_pme_active+0xa5/0x1a0
 pci_pm_runtime_resume+0xab/0xd0
 ? pci_pm_freeze_noirq+0xf0/0xf0
 __rpm_callback+0x41/0x170
 rpm_callback+0x35/0x70
 ? pci_pm_freeze_noirq+0xf0/0xf0
 rpm_resume+0x5ee/0x820
 pm_runtime_work+0x7c/0xb0
 process_one_work+0x276/0x570
 worker_thread+0x53/0x390
 ? _raw_spin_unlock_irqrestore+0x34/0x60
 ? process_one_work+0x570/0x570
 kthread+0xdb/0x110
 ? kthread_complete_and_exit+0x20/0x20
 ret_from_fork+0x1f/0x30
 </TASK>
irq event stamp: 128847
hardirqs last  enabled at (128853): [<ffffffff81132dde>] __up_console_sem+0x5e/0x70
hardirqs last disabled at (128858): [<ffffffff81132dc3>] __up_console_sem+0x43/0x70
softirqs last  enabled at (125404): [<ffffffff810a5533>] __irq_exit_rcu+0xa3/0xd0
softirqs last disabled at (125395): [<ffffffff810a5533>] __irq_exit_rcu+0xa3/0xd0
---[ end trace 0000000000000000 ]---

=============================
WARNING: suspicious RCU usage
5.18.16-arch1-1 #3 Tainted: G        W   
-----------------------------
net/sched/sch_generic.c:1389 suspicious rcu_dereference_protected() usage!

other info that might help us debug this:

rcu_scheduler_active = 2, debug_locks = 1 
2 locks held by kworker/0:1/7752:
 #0: ffff95a540ba8b38 ((wq_completion)pm){+.+.}-{0:0}, at: process_one_work+0x1f5/0x570
 #1: ffffa25e823dbe78 ((work_completion)(&dev->power.work)){+.+.}-{0:0}, at: process_one_work+0x1f5/0x570

stack backtrace:
CPU: 0 PID: 7752 Comm: kworker/0:1 Tainted: G        W         5.18.16-arch1-1 #3 2927cbed739f932be66f137e6808a2714da26c25
Hardware name: Micro-Star International Co., Ltd. MS-7D25/PRO Z690-A DDR4(MS-7D25), BIOS 1.40 05/17/2022
Workqueue: pm pm_runtime_work
Call Trace:
 <TASK>
 dump_stack_lvl+0x5f/0x7b
 dev_qdisc_change_real_num_tx+0x68/0x80
 netif_set_real_num_tx_queues+0x8d/0x210
 __igc_open+0x40a/0x660 [igc 73e11f9f5110389b26a5a274cff80c9ddf9bab7a]
 __igc_resume+0x133/0x240 [igc 73e11f9f5110389b26a5a274cff80c9ddf9bab7a]
 ? pci_pme_active+0xa5/0x1a0
 pci_pm_runtime_resume+0xab/0xd0
 ? pci_pm_freeze_noirq+0xf0/0xf0
 __rpm_callback+0x41/0x170
 rpm_callback+0x35/0x70
 ? pci_pm_freeze_noirq+0xf0/0xf0
 rpm_resume+0x5ee/0x820
 pm_runtime_work+0x7c/0xb0
 process_one_work+0x276/0x570
 worker_thread+0x53/0x390
 ? _raw_spin_unlock_irqrestore+0x34/0x60
 ? process_one_work+0x570/0x570
 kthread+0xdb/0x110
 ? kthread_complete_and_exit+0x20/0x20
 ret_from_fork+0x1f/0x30
 </TASK>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
