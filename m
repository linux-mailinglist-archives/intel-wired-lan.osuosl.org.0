Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1394BCE05
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Feb 2022 11:45:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E2D3817D3;
	Sun, 20 Feb 2022 10:45:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5SQ1xW_5QyC9; Sun, 20 Feb 2022 10:45:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A0A9817AD;
	Sun, 20 Feb 2022 10:45:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D03DF1BF59D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 10:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB1E340184
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 10:45:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0C_3sSIthlLp for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Feb 2022 10:45:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.wantstofly.org (hmm.wantstofly.org [213.239.204.108])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D9E1B4000B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 10:45:34 +0000 (UTC)
Received: by mail.wantstofly.org (Postfix, from userid 1000)
 id CE1B17F51E; Sun, 20 Feb 2022 12:45:30 +0200 (EET)
Date: Sun, 20 Feb 2022 12:45:30 +0200
From: Lennert Buytenhek <buytenh@wantstofly.org>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <YhIbyiPCKzDDLUIr@wantstofly.org>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] igc_rd32() oopses on reboot / PCIe link flap
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

When rebooting one of my machines that has an I225 NIC in it, I hit a
NULL pointer deref in device_shutdown() -> pci_device_shutdown() ->
igc_shutdown() -> __igc_shutdown() -> igc_setup_rctl() -> igc_rd32().

That was on a custom 4.19 kernel with a backported igc driver, but I
can reproduce similar oopses on 5.16 by flapping the I225's PCIe link,
by toggling the "Secondary Bus Reset" bit in the upstream bridge's
"Bridge Control" register.  See the oopses at the end of this email.

It seems that there is some code in the igc driver for handling PCI
hot removal, but it doesn't seem to be working as intended.

	u32 igc_rd32(struct igc_hw *hw, u32 reg)
	{
		struct igc_adapter *igc = container_of(hw, struct igc_adapter, hw);
		u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
		u32 value = 0;

		value = readl(&hw_addr[reg]);

		/* reads should not return all F's */
		if (!(~value) && (!reg || !(~readl(hw_addr)))) {
			struct net_device *netdev = igc->netdev;

			hw->hw_addr = NULL;
			netif_device_detach(netdev);
			netdev_err(netdev, "PCIe link lost, device now detached\n");
			WARN(pci_device_is_present(igc->pdev),
			     "igc: Failed to read reg 0x%x!\n", reg);
		}

		return value;
	}

igc_rd32() can be invoked again after it detects hot removal, and the
next invocation will then see hw->hw_addr being NULL, and
'value = readl(&hw_addr[reg]);' will dereference a NULL pointer.

This can be trivially reproduced on any machine using a variant of the
setpci command below.

I tried adding this:

	diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
	index 2f17f36e94fd..cf29c700e9f2 100644
	--- a/drivers/net/ethernet/intel/igc/igc_main.c
	+++ b/drivers/net/ethernet/intel/igc/igc_main.c
	@@ -6167,6 +6167,9 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
		u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
		u32 value = 0;
	  
	+	if (hw_addr == NULL)
	+		return 0xffffffff;
	+
		value = readl(&hw_addr[reg]);
	  
		/* reads should not return all F's */

Which then makes it oops instead in process_one_work() ->
igc_watchdog_task() -> igc_update_stats():

	[  102.882047] igc 0000:08:00.0 enp8s0: PCIe link lost, device now detached
	[  102.882062] BUG: unable to handle page fault for address: 000000000000c030
	[  102.882065] #PF: supervisor write access in kernel mode
	[  102.882067] #PF: error_code(0x0002) - not-present page

0xc030 is IGC_RQDPC(0), so this is due to:

	void igc_update_stats(struct igc_adapter *adapter)
	{
		struct rtnl_link_stats64 *net_stats = &adapter->stats64;
		struct pci_dev *pdev = adapter->pdev;
		struct igc_hw *hw = &adapter->hw;
	[...]
			if (hw->mac.type >= igc_i225)
				wr32(IGC_RQDPC(i), 0);		<====

As igc_rd32() has a hw_addr NULL check now but wr32() doesn't.  Adding
a similar check there:

	diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
	index e197a33d93a0..5d8825d4a8f5 100644
	--- a/drivers/net/ethernet/intel/igc/igc_regs.h
	+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
	@@ -306,7 +306,8 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg);
	 #define wr32(reg, val) \
	 do { \
		u8 __iomem *hw_addr = READ_ONCE((hw)->hw_addr); \
	-       writel((val), &hw_addr[(reg)]); \
	+       if (hw_addr != NULL) \
	+               writel((val), &hw_addr[(reg)]); \
	 } while (0)
	 
	 #define rd32(reg) (igc_rd32(hw, reg))

With these changes it seems to survive a PCIe link flap.  (But you may
want to fix this differently.  Let me know what you think.)


Thanks,
Lennert


# lspci | grep I225
08:00.0 Ethernet controller: Intel Corporation Ethernet Controller I225-LM (rev 03)
# lspci -t -s 00:03.1
0000:00:03.1-[08]----00.0
#

Doing this on the upstream bridge:

# setpci -v -s 00:03.1 3E.w=0052; sleep 0.5; setpci -v -s 00:03.1 3E.w=0012

gives me e.g. (when the ethernet link is up):

igc 0000:08:00.0 enp8s0: PCIe link lost, device now detached
------------[ cut here ]------------
igc: Failed to read reg 0xc030!
WARNING: CPU: 12 PID: 467 at drivers/net/ethernet/intel/igc/igc_main.c:6168 igc_rd32+0x7c/0x80 [igc]
Modules linked in: ib_core iwlmvm mac80211 bnep libarc4 snd_hda_codec_realtek snd_hda_codec_generic snd_hda_codec_hdmi ledtrig_audio snd_hda_intel snd_intel_dspcfg snd_intel_sdw_acpi intel_rapl_msr snd_hda_codec intel_rapl_common amd64_edac edac_mce_amd iwlwifi btusb bridge snd_hda_core btrtl nct6775 snd_hwdep kvm_amd btbcm hwmon_vid btintel snd_pcm stp llc jc42 bluetooth cfg80211 kvm atlantic snd_timer snd ecdh_generic irqbypass igc rapl r8169 k10temp wmi_bmof i2c_piix4 macsec soundcore rfkill gpio_amdpt gpio_generic acpi_cpufreq vfat fat fuse zram ip_tables nouveau video drm_ttm_helper ttm i2c_algo_bit mxm_wmi drm_kms_helper cec drm crct10dif_pclmul crc32_pclmul crc32c_intel nvme ghash_clmulni_intel ccp nvme_core sp5100_tco wmi i2c_dev ipmi_devintf ipmi_msghandler
CPU: 12 PID: 467 Comm: kworker/12:3 Not tainted 5.16.9-200.fc35.x86_64 #1
Hardware name: ASUS System Product Name/TUF GAMING B550M-PLUS (WI-FI), BIOS 1401 12/03/2020
Workqueue: events igc_watchdog_task [igc]
RIP: 0010:igc_rd32+0x7c/0x80 [igc]
Code: 48 c7 c6 b8 43 90 c0 e8 4e 62 3a dc 48 8b bb 30 ff ff ff e8 66 53 e2 db 84 c0 74 b2 89 ee 48 c7 c7 e0 43 90 c0 e8 20 53 34 dc <0f> 0b eb a0 0f 1f 44 00 00 41 56 41 55 41 54 55 48 89 f5 53 80 7e
RSP: 0018:ffffbea2407c7df0 EFLAGS: 00010286
RAX: 000000000000001f RBX: ffff98ce471a4c10 RCX: 0000000000000000
RDX: 0000000000000002 RSI: ffffffff9d634ddd RDI: 00000000ffffffff
RBP: 000000000000c030 R08: 0000000000000000 R09: ffffbea2407c7c30
R10: ffffbea2407c7c28 R11: ffffffff9df462a8 R12: 00000000ffffffff
R13: ffff98ce471a4000 R14: ffff98ce46148d40 R15: 000000000000c030
FS:  0000000000000000(0000) GS:ffff98eceed00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f3114b61570 CR3: 000000010137e000 CR4: 0000000000350ee0
Call Trace:
 <TASK>
 igc_update_stats+0x82/0x6a0 [igc]
 igc_watchdog_task+0x83/0x290 [igc]
 ? psi_avgs_work+0x96/0xa0
 process_one_work+0x1e5/0x3c0
 worker_thread+0x50/0x3b0
 ? rescuer_thread+0x350/0x350
 kthread+0x169/0x190
 ? set_kthread_struct+0x40/0x40
 ret_from_fork+0x1f/0x30
 </TASK>
---[ end trace cd5c2c421a507777 ]---
BUG: unable to handle page fault for address: 000000000000c030
#PF: supervisor write access in kernel mode
#PF: error_code(0x0002) - not-present page


Or if I do it while the ethernet link is down:

igc 0000:08:00.0 enp8s0: PCIe link lost, device now detached
BUG: unable to handle page fault for address: 000000000000c030
#PF: supervisor write access in kernel mode
#PF: error_code(0x0002) - not-present page
PGD 0 P4D 0 
Oops: 0002 [#1] PREEMPT SMP NOPTI
CPU: 0 PID: 120 Comm: kworker/0:3 Not tainted 5.16.9-200.fc35.x86_64 #1
Hardware name: ASUS System Product Name/TUF GAMING B550M-PLUS (WI-FI), BIOS 1401 12/03/2020
Workqueue: events igc_watchdog_task [igc]
RIP: 0010:igc_update_stats+0x9c/0x6a0 [igc]
Code: 89 0c 24 4e 8b b4 eb 88 00 00 00 e8 9e f1 ff ff 8b 93 fc 02 00 00 48 8b 0c 24 85 d2 74 0e 48 8b b3 98 02 00 00 31 d2 4c 01 fe <89> 16 85 c0 74 10 89 c0 49 01 86 80 00 00 00 48 01 83 40 02 00 00
RSP: 0018:ffffa64240657e18 EFLAGS: 00010206
RAX: 00000000ffffffff RBX: ffff8b064f3f4980 RCX: 0000000000000000
RDX: 0000000000000000 RSI: 000000000000c030 RDI: 00000000ffffffff
RBP: ffff8b064f3f4c10 R08: 0000000000000004 R09: ffffa64240657d8c
R10: ffffa64240657ae8 R11: 0000000000000008 R12: 0000000000000000
R13: 0000000000000000 R14: ffff8b064b836d40 R15: 000000000000c030
FS:  0000000000000000(0000) GS:ffff8b24eea00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000000c030 CR3: 00000001064ee000 CR4: 0000000000350ef0
Call Trace:
 <TASK>
 igc_watchdog_task+0x83/0x290 [igc]
 process_one_work+0x1e5/0x3c0
 worker_thread+0x50/0x3b0
 ? rescuer_thread+0x350/0x350
 kthread+0x169/0x190
 ? set_kthread_struct+0x40/0x40
 ret_from_fork+0x1f/0x30
 </TASK>
Modules linked in: bridge stp llc iwlmvm intel_rapl_msr intel_rapl_common amd64_edac edac_mce_amd mac80211 bnep nct6775 hwmon_vid libarc4 snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio snd_hda_codec_hdmi jc42 snd_hda_intel snd_intel_dspcfg snd_intel_sdw_acpi snd_hda_codec btusb btrtl snd_hda_core kvm_amd btbcm iwlwifi snd_hwdep btintel snd_pcm bluetooth kvm cfg80211 atlantic snd_timer snd irqbypass ecdh_generic igc rapl r8169 wmi_bmof k10temp i2c_piix4 macsec soundcore rfkill gpio_amdpt acpi_cpufreq gpio_generic vfat fat fuse zram ip_tables nouveau video drm_ttm_helper ttm i2c_algo_bit mxm_wmi drm_kms_helper cec drm crct10dif_pclmul crc32_pclmul crc32c_intel nvme ghash_clmulni_intel nvme_core ccp sp5100_tco wmi i2c_dev ipmi_devintf ipmi_msghandler
CR2: 000000000000c030
---[ end trace 85448a0de210328a ]---
RIP: 0010:igc_update_stats+0x9c/0x6a0 [igc]
Code: 89 0c 24 4e 8b b4 eb 88 00 00 00 e8 9e f1 ff ff 8b 93 fc 02 00 00 48 8b 0c 24 85 d2 74 0e 48 8b b3 98 02 00 00 31 d2 4c 01 fe <89> 16 85 c0 74 10 89 c0 49 01 86 80 00 00 00 48 01 83 40 02 00 00
RSP: 0018:ffffa64240657e18 EFLAGS: 00010206
RAX: 00000000ffffffff RBX: ffff8b064f3f4980 RCX: 0000000000000000
RDX: 0000000000000000 RSI: 000000000000c030 RDI: 00000000ffffffff
RBP: ffff8b064f3f4c10 R08: 0000000000000004 R09: ffffa64240657d8c
R10: ffffa64240657ae8 R11: 0000000000000008 R12: 0000000000000000
R13: 0000000000000000 R14: ffff8b064b836d40 R15: 000000000000c030
FS:  0000000000000000(0000) GS:ffff8b24eea00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000000c030 CR3: 00000001064ee000 CR4: 0000000000350ef0
note: kworker/0:3[120] exited with preempt_count 1


Or:

igc 0000:08:00.0 enp8s0: PCIe link lost, device now detached
------------[ cut here ]------------
igc: Failed to read reg 0xc030!
WARNING: CPU: 0 PID: 95 at drivers/net/ethernet/intel/igc/igc_main.c:6168 igc_rd32+0x7c/0x80 [igc]
Modules linked in: intel_rapl_msr intel_rapl_common amd64_edac edac_mce_amd iwlmvm bridge stp llc mac80211 bnep snd_hda_codec_realtek snd_hda_codec_generic libarc4 ledtrig_audio snd_hda_codec_hdmi snd_hda_intel btusb snd_intel_dspcfg snd_intel_sdw_acpi snd_hda_codec btrtl nct6775 btbcm hwmon_vid iwlwifi btintel snd_hda_core jc42 kvm_amd snd_hwdep bluetooth kvm snd_pcm cfg80211 atlantic snd_timer snd irqbypass rapl ecdh_generic igc r8169 wmi_bmof k10temp i2c_piix4 macsec soundcore rfkill acpi_cpufreq gpio_amdpt gpio_generic vfat fat fuse zram ip_tables nouveau video drm_ttm_helper ttm i2c_algo_bit mxm_wmi drm_kms_helper cec crct10dif_pclmul drm crc32_pclmul crc32c_intel nvme ghash_clmulni_intel ccp nvme_core sp5100_tco wmi i2c_dev ipmi_devintf ipmi_msghandler
CPU: 0 PID: 95 Comm: kworker/0:2 Not tainted 5.16.9-200.fc35.x86_64 #1
Hardware name: ASUS System Product Name/TUF GAMING B550M-PLUS (WI-FI), BIOS 1401 12/03/2020
Workqueue: events igc_watchdog_task [igc]
RIP: 0010:igc_rd32+0x7c/0x80 [igc]
Code: 48 c7 c6 b8 43 77 c0 e8 4e 62 53 cb 48 8b bb 30 ff ff ff e8 66 53 fb ca 84 c0 74 b2 89 ee 48 c7 c7 e0 43 77 c0 e8 20 53 4d cb <0f> 0b eb a0 0f 1f 44 00 00 41 56 41 55 41 54 55 48 89 f5 53 80 7e
RSP: 0018:ffffa3ed404fbdf0 EFLAGS: 00010286
RAX: 000000000000001f RBX: ffff8e2a86476c10 RCX: 0000000000000000
RDX: 0000000000000002 RSI: ffffffff8c634ddd RDI: 00000000ffffffff
RBP: 000000000000c030 R08: 0000000000000000 R09: ffffa3ed404fbc30
R10: ffffa3ed404fbc28 R11: ffffffff8cf462a8 R12: 00000000ffffffff
R13: ffff8e2a86476000 R14: ffff8e2a8b3e6d40 R15: 000000000000c030
FS:  0000000000000000(0000) GS:ffff8e492ea00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055979d1e4020 CR3: 0000001a01e10000 CR4: 0000000000350ef0
Call Trace:
 <TASK>
 igc_update_stats+0x82/0x6a0 [igc]
 igc_watchdog_task+0x83/0x290 [igc]
 process_one_work+0x1e5/0x3c0
 worker_thread+0x50/0x3b0
 ? rescuer_thread+0x350/0x350
 kthread+0x169/0x190
 ? set_kthread_struct+0x40/0x40
 ret_from_fork+0x1f/0x30
 </TASK>
---[ end trace 42ae6356ab0377be ]---
BUG: unable to handle page fault for address: 000000000000c030
#PF: supervisor write access in kernel mode
#PF: error_code(0x0002) - not-present page
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
