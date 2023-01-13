Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42098669DF2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 17:27:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E6AF41B36;
	Fri, 13 Jan 2023 16:27:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E6AF41B36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673627223;
	bh=e7UxSxoBMXS/a6NnMWYqRbGY899L/VXQVGWVHGQMlOw=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NIOPG1/I9qY92F7rAblSEQiC73vaWGaOseMbefnn5G9lNc6nH1YQ9ckdafDxxuqum
	 UkTpxxkm9ysNJrd6PFLbuKOK6XORoHNiFTDZl+E00Pk9jwzbOtbEmBG+Iyn5JdXrAH
	 7OrlKkYipwM9/x3iPrCPm5Ki9PcsDs5TJSl74xhHArkFPmos1u4U1mjrKVSh6m/qre
	 R0+LqF2xC1FzTFtIrITOLUA4xwnUnNzCc105dppp2FORV6+5I6iut62x6psArS+7wa
	 1+JQbJYRvrufZ/0e2LoDtsySLzRI0zUG+AsAocYej38POYGbWjRwdflF02K2/2DlnT
	 /5QxMOy20U8Lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wwdliWY7juRv; Fri, 13 Jan 2023 16:27:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94F4A41A35;
	Fri, 13 Jan 2023 16:27:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94F4A41A35
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 378F41BF31C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 13:40:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 06F32414E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 13:40:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06F32414E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KAZ7VCAQNu02 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 13:40:28 +0000 (UTC)
X-Greylist: delayed 00:06:15 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C441400FD
Received: from shelob.oktetlabs.ru (shelob.oktetlabs.ru [91.220.146.113])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C441400FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 13:40:28 +0000 (UTC)
Received: by shelob.oktetlabs.ru (Postfix, from userid 115)
 id 63FB367; Fri, 13 Jan 2023 16:34:07 +0300 (MSK)
Received: from [192.168.38.37] (gondor.oktetlabs.ru [192.168.38.37])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by shelob.oktetlabs.ru (Postfix) with ESMTPS id 7EEFB5D;
 Fri, 13 Jan 2023 16:34:06 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 shelob.oktetlabs.ru 7EEFB5D
Message-ID: <4f771cb4-634e-9a1e-0eef-60ba2e6ebaa0@oktetlabs.ru>
Date: Fri, 13 Jan 2023 16:34:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-GB
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org
From: "Alexandra N. Kossovsky" <Alexandra.Kossovsky@oktetlabs.ru>
Organization: OKTET Labs
X-Mailman-Approved-At: Fri, 13 Jan 2023 16:26:56 +0000
X-Mailman-Original-Authentication-Results: shelob.oktetlabs.ru/7EEFB5D;
 dkim=none; dkim-atps=neutral
Subject: [Intel-wired-lan] Intel i810 (ice driver) + AF_XDP: list_add
 corruption
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi.

I'm running a custom AF_XDP application (and unfortunately I'm not 
allowed to share it), and I see following Call Trace when running it 
with Inter e810 NIC (ice driver).  The crash happens when my application 
closes its AF_XDP sockets.  There are 2 AF_XDP sockets in the 
application, and they are using different channels of the same network 
interface.

My application runs properly in non-zerocopy mode, and in zerocopy mode 
with following NICs/drivers:
- Intel x710 (i40e driver)
- Mellanox 5 (mlx5_core driver)
- various Solarlfare NICs (sfc driver)

There is the kernel log:

[  391.084249] list_add corruption. prev->next should be next 
(ffff973474ebd4f0), but was ffff973474ebb880. (prev=ffff973452662450).
[  391.084249] list_del corruption. next->prev should be 
ffff973474eb79f0, but was ffff973474ecf630. (next=ffff973474ecf630)
[  391.084258] ------------[ cut here ]------------
[  391.084265] kernel BUG at lib/list_debug.c:62!
[  391.084265] ------------[ cut here ]------------
[  391.084269] invalid opcode: 0000 [#1] PREEMPT SMP NOPTI
[  391.084270] kernel BUG at lib/list_debug.c:30!
[  391.084276] CPU: 3 PID: 31 Comm: ksoftirqd/3 Tainted: G           OE 
     6.1.5-sasha1 #6
[  391.084279] Hardware name: System manufacturer System Product 
Name/PRIME X299-A II, BIOS 0901 11/06/2020
[  391.084282] RIP: 0010:__list_del_entry_valid.cold+0x23/0x6f
[  391.084289] Code: e8 55 a0 fe ff 0f 0b 48 89 fe 48 c7 c7 08 d3 54 88 
e8 44 a0 fe ff 0f 0b 48 89 d1 48 c7 c7 28 d4 54 88 4c 89 c2 e8 30 a0 fe 
ff <0f> 0b 48 89 f2 48 89 fe 48 c7 c7 d8 d3 54 88 e8 1c a0 fe ff 0f 0b
[  391.084293] RSP: 0018:ffffaf93c02a7c70 EFLAGS: 00010246
[  391.084296] RAX: 000000000000006d RBX: ffff973474eb79f0 RCX: 
0000000000000000
[  391.084299] RDX: 0000000000000000 RSI: ffffffff8853538e RDI: 
00000000ffffffff
[  391.084302] RBP: ffff973452662400 R08: ffffffff88c622c0 R09: 
000000000000000f
[  391.084304] R10: 000000000000000f R11: ffffffff8958bb2e R12: 
0000000000000011
[  391.084306] R13: ffff9734a38b42d0 R14: ffff9734a38b4298 R15: 
0000000000000200
[  391.084309] FS:  0000000000000000(0000) GS:ffff97439fd80000(0000) 
knlGS:0000000000000000
[  391.084312] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  391.084315] CR2: 000056067c3f20a0 CR3: 0000000340c10001 CR4: 
00000000003706e0
[  391.084318] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 
0000000000000000
[  391.084320] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 
0000000000000400
[  391.084322] Call Trace:
[  391.084325]  <TASK>
[  391.084327]  xp_alloc_batch+0x24d/0x2c0
[  391.084334]  __ice_alloc_rx_bufs_zc+0xfc/0x170 [ice]
[  391.084368]  ice_clean_rx_irq_z[  391.084388] 
ice_napi_poll+0x47f/0x680 [ice]
[  391.084408]  __napi_poll+0x29/0x160
[  391.084413]  net_rx_action+0x2a2/0x360
[  391.084417]  __do_softirq+0xe9/0x2e9
[  391.084420]  run_ksoftirqd+0x34/0x40
[  391.084425]  smpboot_thread_fn+0x185/0x220
[  391.084429]  ? sort_range+0x20/0x20
[  391.084432]  kthread+0xe5/0x110
[  391.084435]  ? kthread_complete_and_exit+0x20/0x20
[  391.084438]  ret_from_fork+0x1f/0x30
[  391.084443]  </TASK>
[  391.084446] Modules linked in: onload(OE) sfc_char(OE) 
sfc_resource(OE) netconsole(E) cts(E) rpcsec_gss_krb5(E) nfsv4(E) 
dns_resolver(E) nfs(E) fscache(E) netfs(E) intel_rapl_msr(E) 
intel_rapl_common(E) nfit(E) libnvdimm(E) x86_pkg_temp_thermal(E) 
intel_powerclamp(E) nouveau(E) kvm_intel(E) kvm(E) 
ghash_clmulni_intel(E) sha512_ssse3(E) sha512_generic(E) 
snd_hda_codec_realtek(E) drm_display_helper(E) snd_hda_codec_hdmi(E) 
cec(E) aesni_intel(E) rc_core(E) snd_hda_codec_generic(E) eeepc_wmi(E) 
drm_ttm_helper(E) crypto_simd(E) cryptd(E) asus_wmi(E) snd_hda_intel(E) 
ttm(E) platform_profile(E) irdma(E) battery(E) rapl(E) sparse_keymap(E) 
drm_kms_helper(E) snd_intel_dspcfg(E) snd_intel_sdw_acpi(E) i40e(E) 
i2c_algo_bit(E) intel_cstate(E) ledtrig_audio(E) evdev(E) 
intel_uncore(E) snd_hda_codec(E) rfkill(E) efi_pstore(E) pcspkr(E) 
video(E) ib_uverbs(E) iTCO_wdt(E) intel_wmi_thunderbolt(E) 
snd_hda_core(E) wmi_bmof(E) intel_pmc_bxt(E) snd_hwdep(E) 
iTCO_vendor_support(E) ib_core(E) sg(E) snd_pcm(E)
[  391.084485]  watchdog(E) ioatdma(E) snd_timer(E) mei_me(E) snd(E) 
mei(E) dca(E) soundcore(E) button(E) acpi_tad(E) mxm_wmi(E) nct6775(E) 
nct6775_core(E) hwmon_vid(E) coretemp(E) vfio_pci(E) vfio_pci_core(E) 
vfio_virqfd(E) vfio_iommu_type1(E) vfio(E) irqbypass(E) nfsd(E) 
uio_pci_generic(E) uio(E) nfs_acl(E) lockd(E) grace(E) auth_rpcgss(E) 
configfs(E) sunrpc(E) fuse(E) drm(E) efivarfs(E) ip_tables(E) 
x_tables(E) autofs4(E) ext4(E) crc32c_generic(E) crc16(E) mbcache(E) 
jbd2(E) uas(E) usb_storage(E) hid_generic(E) usbhid(E) hid(E) dm_mod(E) 
sd_mod(E) nvme([  391.084543] invalid opcode: 0000 [#2] PREEMPT SMP NOPTI
[  391.084545] ---[ end trace 0000000000000000 ]---
[  391.084547] CPU: 8 PID: 24541 Comm: kworker/8:0 Tainted: G      D 
OE      6.1.5-sasha1 #6
[  391.084554] Hardware name: System manufacturer System Product 
Name/PRIME X299-A II, BIOS 0901 11/06/2020
[  391.084557] Workqueue: events xp_release_deferred
[  391.084563] RIP: 0010:__list_add_valid.cold+0x3a/0x5b
[  391.084568] Code: f2 4c 89 c1 48 89 fe 48 c7 c7 d0 d2 54 88 e8 8b a0 
fe ff 0f 0b 48 89 d1 4c 89 c6 4c 89 ca 48 c7 c7 78 d2 54 88 e8 74 a0 fe 
ff <0f> 0b 4c 89 c1 48 c7 c7 20 d2 54 88 e8 63 a0 fe ff 0f 0b 48 c7 c7
[  391.084572] RSP: 0018:ffffaf93ce43fd40 EFLAGS: 00010246
[  391.084576] RAX: 0000000000000075 RBX: ffff973474ebe8e8 RCX: 
0000000000000000
[  391.084578] RDX: 0000000000000000 RSI: ffffffff8853538e RDI: 
00000000ffffffff
[  391.084581] RBP: ffff973474ebe940 R08: 0000000000000001 R09: 
0000000000000019
[  391.084583] R10: 0000000000000729 R11: 6c65645f7473696c R12: 
ffff973452662400
[  391.084586] R13: ffff973474ebd4f0 R14: ffff973452662450 R15: 
ffff973452662d00
[  391.084588] FS:  0000000000000000(0000) GS:ffff9743a0000000(0000) 
knlGS:0000000000000000
[  391.084592] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  391.084594] CR2: 00007f6c0515b198 CR3: 0000000340c10004 CR4: 
00000000003706e0
[  391.084597] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 
0000000000000000

[  391.084599] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7[ 
391.084602] Call Trace:
[  391.084604]  <TASK>
[  391.084606]  xp_free+0x51/0x80
[  391.084611]  ice_xsk_clean_rx_ring+0x39/0x60 [ice]
[  391.084638]  ice_clean_rx_ring+0x152/0x170 [ice]
[  391.084659]  ice_xsk_pool_setup+0x5ed/0x7b0 [ice]
[  391.084679]  xp_disable_drv_zc+0x60/0xd0
[  391.084682]  ? __schedule+0x30e/0xa40
[  391.084686]  xp_release_deferred+0x22/0xb0
[  391.084689]  process_one_work+0x1e2/0x3b0
[  391.084694]  ? rescuer_thread+0x390/0x390
[  391.084698]  worker_thread+0x50/0x3a0
[  391.084701]  ? rescuer_thread+0x390/0x390
[  391.084705]  kthread+0xe5/0x110
[  391.084708]  ? kthread_complete_and_exit+0x20/0x20
[  391.084711]  ret_from_fork+0x1f/0x30
[  391.084716]  </TASK>
[  391.084717] Modules linked in: onload(OE) sfc_char(OE) 
sfc_resource(OE) netconsole(E) cts(E) rpcsec_gss_krb5(E) nfsv4(E) 
dns_resolver(E) nfs(E) fscache(E) netfs(E) intel_rapl_msr(E) 
intel_rapl_common(E) nfit(E) libnvdimm(E) x86_pkg_temp_thermal(E) 
intel_powerclamp(E) nouveau(E) kvm_intel(E) kvm(E) 
ghash_clmulni_intel(E) sha512_ssse3(E) sha512_generic(E) 
snd_hda_codec_realtek(E) drm_display_helper(E) snd_hda_codec_hdmi(E) 
cec(E) aesni_intel(E) rc_core(E) snd_hda_codec_generic(E) eeepc_wmi(E) 
drm_ttm_helper(E) crypto_simd(E) cryptd(E) asus_wmi(E) snd_hda_intel(E) 
ttm(E) platform_profile(E) irdma(E) battery(E) rapl(E) sparse_keymap(E) 
drm_kms_helper(E) snd_intel_dspcfg(E) snd_intel_sdw_acpi(E) i40e(E) 
i2c_algo_bit(E) intel_cstate(E) ledtrig_audio(E) evdev(E) 
intel_uncore(E) snd_hda_codec(E) rfkill(E) efi_pstore(E) pcspkr(E) 
video(E) ib_uverbs(E) iTCO_wdt(E) intel_wmi_thunderbolt(E) 
snd_hda_core(E) wmi_bmof(E) intel_pmc_bxt(E) snd_hwdep(E) 
iTCO_vendor_support(E) ib_core(E) sg(E) snd_pcm(E)
[  391.084749]  watchdog(E) ioatdma(E) snd_timer(E) mei_me(E) snd(E) 
mei(E) dca(E) soundcore(E) button(E) acpi_tad(E) mxm_wmi(E) nct6775(E) 
nct6775_core(E) hwmon_vid(E) coretemp(E) vfio_pci(E) vfio_pci_core(E) 
vfio_virqfd(E) vfio_iommu_type1(E) vfio(E) irqbypass(E) nfsd(E) uio_[ 
391.084803] ---[ end trace 0000000000000000 ]---
[  391.111804] RIP: 0010:__list_del_entry_valid.cold+0x23/0x6f
[  391.111812] Code: e8 55 a0 fe ff 0f 0b 48 89 fe 48 c7 c7 08 d3 54 88 
e8 44 a0 fe ff 0f 0b 48 89 d1 48 c7 c7 28 d4 54 88 4c 89 c2 e8 30 a0 fe 
ff <0f> 0b 48 89 f2 48 89 fe 48 c7 c7 d8 d3 54 88 e8 1c a0 fe ff 0f 0b
[  391.111817] RSP: 0018:ffffaf93c02a7c70 EFLAGS: 00010246
[  391.111821] RAX: 000000000000006d RBX: ffff973474eb79f0 RCX: 
0000000000000000
[  391.111824] RDX: 0000000000000000 RSI: ffffffff8853538e RDI: 
00000000ffffffff
[  391.111826] RBP: ffff973452662400 R08: ffffffff88c622c0 R09: 
000000000000000f
[  391.111829] R10: 000000000000000f R11: ffffffff8958bb2e R12: 
0000000000000011
[  391.111832] R13: ffff9734a38b42d0 R14: ffff9734a38b4298 R15: 
0000000000000200
[  391.111835] FS:  0000000000000000(0000) GS:ffff97439fd80000(0000) 
knlGS:0000000000000000
[  391.111838] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  391.111840] CR2: 000056067c3f20a0 CR3: 00000002b4e0a006 CR4: 
00000000003706e0
[  391.111843] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 
0000000000000000
[  391.111846] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 
0000000000000400
[  391.111848] Kernel panic - not syncing: Fatal exception in interrupt
[  391.140375] Kernel Offset: 0x6200000 from 0xffffffff81000000 
(relocation range: 0xffffffff80000000-0xffffffffbfffffff)
[  391.169096] ---[ end Kernel panic - not syncing: Fatal exception in 
interrupt ]---

-- 
Alexandra N. Kossovsky
OKTET Labs (http://www.oktetlabs.ru/)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
