Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DE1736C0F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 14:37:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 427E9416A4;
	Tue, 20 Jun 2023 12:37:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 427E9416A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687264659;
	bh=P60roan9vQroFWa2M3NJX/3eDFiMaA28PgDoZJ0inec=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3HqfnhJHsy8Zpj/BpUBVRAJet7/NbIhfWSe4kZUwLUrKU2uHkQ+m5CRziKaAU3re3
	 4vWZZFw4rmTjNHxyjj/PCTGHnOoPUg1YUi3QYB0irvCcynvkkQwetq5wh9nN/Seakq
	 iOd+hxvG/EdcInwqohA3moRIpN6cQRH+uorGIX5rzRuj/Ts45dyjqC/TpXd10euJF0
	 gi1eNVCsozVCQciyLsH3f3ghINAalJVP3qcu57MoIHVLfyBmQJdkzyHK3bSGx8PR1N
	 0F3lh94F0m5V2rJW2KWP1fIIJNko6OGfWx2GsHr+tJ+UxqNzK/fdtfC2qvA8rm0C/U
	 XWir9WA+iGblQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xq60mY4hkagx; Tue, 20 Jun 2023 12:37:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BF3F416A2;
	Tue, 20 Jun 2023 12:37:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BF3F416A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 951CA1BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 12:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C1E54097D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 12:37:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C1E54097D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id li-yVN43LR1e for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 12:37:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10C324098C
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10C324098C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 12:37:29 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.101.196.174])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 4CB9D3F295; 
 Tue, 20 Jun 2023 12:37:21 +0000 (UTC)
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Tue, 20 Jun 2023 20:36:36 +0800
Message-Id: <20230620123636.1854690-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1687264646;
 bh=cMuha6GweaG+AAmv5ZFt5Jg08JwMgA7CO4IwqmsXL5g=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=MVbfKx92+fDUG7KsEKcN5Sa8H9mIYx8KvGl4CNsfxwGhAWizldEdbjaSjbyxT4hGF
 4jRWDYVwQLzgA6xy2soVWYICfVQ+SPLXllPk03rGrHdVRL7DnHhEoDX0e8l3FfBXYi
 DCuTujYXhkPjRYqSgcSpEzaRZXv6pmFPzJ35vVHtmmOplWCv4NiTTye5PelYpnaNx6
 0NJzpkZiPh/7yWaNJ1JQNff4rzhbRuB+Wm7qR3TOJ+iEg3LE312OXe2wUVlVP+32YA
 cCvExDcklEmwtXx8ndytJ1pywXqOrmXXZappbmUTzf43rQBUjkbVyTfRd5WgT99IEf
 DDoPkjW2DQHkw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=MVbfKx92
Subject: [Intel-wired-lan] [PATCH] igc: Ignore AER reset when device is
 suspended
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
 Eric Dumazet <edumazet@google.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When a system that connects to a Thunderbolt dock equipped with I225,
I225 stops working after S3 resume:

[  606.527643] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:00:1d.0
[  606.527791] pcieport 0000:00:1d.0: PCIe Bus Error: severity=Corrected, type=Transaction Layer, (Receiver ID)
[  606.527795] pcieport 0000:00:1d.0:   device [8086:7ab0] error status/mask=00008000/00002000
[  606.527800] pcieport 0000:00:1d.0:    [15] HeaderOF
[  606.527806] pcieport 0000:00:1d.0: AER:   Error of this Agent is reported first
[  606.527853] pcieport 0000:07:04.0: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Receiver ID)
[  606.527856] pcieport 0000:07:04.0:   device [8086:0b26] error status/mask=00000080/00002000
[  606.527861] pcieport 0000:07:04.0:    [ 7] BadDLLP
[  606.527931] pcieport 0000:00:1d.0: AER: Multiple Uncorrected (Non-Fatal) error received: 0000:00:1d.0
[  606.528064] pcieport 0000:00:1d.0: PCIe Bus Error: severity=Uncorrected (Non-Fatal), type=Transaction Layer, (Requester ID)
[  606.528068] pcieport 0000:00:1d.0:   device [8086:7ab0] error status/mask=00100000/00004000
[  606.528072] pcieport 0000:00:1d.0:    [20] UnsupReq               (First)
[  606.528075] pcieport 0000:00:1d.0: AER:   TLP Header: 34000000 0a000052 00000000 00000000
[  606.528079] pcieport 0000:00:1d.0: AER:   Error of this Agent is reported first
[  606.528098] pcieport 0000:04:01.0: PCIe Bus Error: severity=Uncorrected (Non-Fatal), type=Transaction Layer, (Requester ID)
[  606.528101] pcieport 0000:04:01.0:   device [8086:1136] error status/mask=00300000/00000000
[  606.528105] pcieport 0000:04:01.0:    [20] UnsupReq               (First)
[  606.528107] pcieport 0000:04:01.0:    [21] ACSViol
[  606.528110] pcieport 0000:04:01.0: AER:   TLP Header: 34000000 04000052 00000000 00000000
[  606.528187] thunderbolt 0000:05:00.0: AER: can't recover (no error_detected callback)
[  606.558729] ------------[ cut here ]------------
[  606.558729] igc 0000:38:00.0: disabling already-disabled device
[  606.558738] WARNING: CPU: 0 PID: 209 at drivers/pci/pci.c:2248 pci_disable_device+0xf6/0x150
[  606.558743] Modules linked in: rfcomm ccm cmac algif_hash algif_skcipher af_alg usbhid bnep snd_hda_codec_hdmi snd_ctl_led snd_hda_codec_realtek joydev snd_hda_codec_generic ledtrig_audio binfmt_misc snd_sof_pci_intel_tgl snd_sof_intel_hda_common snd_soc_acpi_intel_match snd_soc_acpi snd_soc_hdac_hda snd_sof_pci snd_sof_xtensa_dsp x86_pkg_temp_thermal snd_sof_intel_hda_mlink intel_powerclamp snd_sof_intel_hda snd_sof snd_sof_utils snd_hda_ext_core snd_soc_core snd_compress snd_hda_intel coretemp snd_intel_dspcfg snd_hda_codec snd_hwdep kvm_intel snd_hda_core iwlmvm nls_iso8859_1 i915 snd_pcm kvm mac80211 crct10dif_pclmul crc32_pclmul i2c_algo_bit uvcvideo ghash_clmulni_intel snd_seq mei_pxp drm_buddy videobuf2_vmalloc sch_fq_codel sha512_ssse3 libarc4 aesni_intel mei_hdcp videobuf2_memops btusb uvc crypto_simd drm_display_helper snd_seq_device btrtl videobuf2_v4l2 cryptd snd_timer intel_rapl_msr btbcm drm_kms_helper videodev iwlwifi snd btintel rapl input_leds wmi_bmof hid_sensor_
 rotation btmtk hid_sensor_accel_3d
[  606.558778]  hid_sensor_gyro_3d hid_sensor_als syscopyarea videobuf2_common intel_cstate serio_raw soundcore bluetooth hid_sensor_trigger thunderbolt sysfillrect cfg80211 mc mei_me industrialio_triggered_buffer sysimgblt processor_thermal_device_pci hid_sensor_iio_common hid_multitouch ecdh_generic processor_thermal_device kfifo_buf cec 8250_dw mei ecc processor_thermal_rfim industrialio rc_core processor_thermal_mbox ucsi_acpi processor_thermal_rapl ttm typec_ucsi intel_rapl_common msr typec video int3403_thermal int340x_thermal_zone int3400_thermal intel_hid wmi acpi_pad acpi_thermal_rel sparse_keymap acpi_tad mac_hid parport_pc ppdev lp parport drm ramoops reed_solomon efi_pstore ip_tables x_tables autofs4 hid_sensor_custom hid_sensor_hub intel_ishtp_hid spi_pxa2xx_platform hid_generic dw_dmac dw_dmac_core rtsx_pci_sdmmc e1000e i2c_i801 igc nvme i2c_smbus intel_lpss_pci rtsx_pci intel_ish_ipc nvme_core intel_lpss xhci_pci i2c_hid_acpi intel_ishtp idma64 xhci_pci_renesas i2c_hid
  hid pinctrl_alderlake
[  606.558809] CPU: 0 PID: 209 Comm: irq/124-aerdrv Not tainted 6.4.0-rc7+ #119
[  606.558811] Hardware name: HP HP ZBook Fury 16 G9 Mobile Workstation PC/89C6, BIOS U96 Ver. 01.07.01 04/06/2023
[  606.558812] RIP: 0010:pci_disable_device+0xf6/0x150
[  606.558814] Code: 4d 85 e4 75 07 4c 8b a3 d0 00 00 00 48 8d bb d0 00 00 00 e8 5c f5 1f 00 4c 89 e2 48 c7 c7 f8 e6 37 ae 48 89 c6 e8 9a 3e 86 ff <0f> 0b e9 3c ff ff ff 48 8d 55 e6 be 04 00 00 00 48 89 df e8 62 0b
[  606.558815] RSP: 0018:ffffa70040a4fca0 EFLAGS: 00010246
[  606.558816] RAX: 0000000000000000 RBX: ffff8ac8434b2000 RCX: 0000000000000000
[  606.558817] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
[  606.558818] RBP: ffffa70040a4fcc0 R08: 0000000000000000 R09: 0000000000000000
[  606.558818] R10: 0000000000000000 R11: 0000000000000000 R12: ffff8ac843435dd0
[  606.558818] R13: ffff8ac84277c000 R14: 0000000000000001 R15: ffff8ac8434b2150
[  606.558819] FS:  0000000000000000(0000) GS:ffff8acbd6a00000(0000) knlGS:0000000000000000
[  606.558820] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  606.558821] CR2: 00007f9740ba28e8 CR3: 00000001eb43a000 CR4: 0000000000f50ef0
[  606.558822] PKRU: 55555554
[  606.558822] Call Trace:
[  606.558823]  <TASK>
[  606.558825]  ? show_regs+0x76/0x90
[  606.558828]  ? pci_disable_device+0xf6/0x150
[  606.558830]  ? __warn+0x91/0x160
[  606.558832]  ? pci_disable_device+0xf6/0x150
[  606.558834]  ? report_bug+0x1bf/0x1d0
[  606.558838] nvme nvme0: 24/0/0 default/read/poll queues
[  606.558837]  ? handle_bug+0x46/0x90
[  606.558841]  ? exc_invalid_op+0x1d/0x90
[  606.558843]  ? asm_exc_invalid_op+0x1f/0x30
[  606.558846]  ? pci_disable_device+0xf6/0x150
[  606.558849]  igc_io_error_detected+0x40/0x70 [igc]
[  606.558857]  report_error_detected+0xdb/0x1d0
[  606.558860]  ? __pfx_report_normal_detected+0x10/0x10
[  606.558862]  report_normal_detected+0x1a/0x30
[  606.558864]  pci_walk_bus+0x78/0xb0
[  606.558866]  pcie_do_recovery+0xba/0x340
[  606.558868]  ? __pfx_aer_root_reset+0x10/0x10
[  606.558870]  aer_process_err_devices+0x168/0x220
[  606.558871]  aer_isr+0x1d3/0x1f0
[  606.558874]  ? __pfx_irq_thread_fn+0x10/0x10
[  606.558876]  irq_thread_fn+0x29/0x70
[  606.558877]  irq_thread+0xee/0x1c0
[  606.558878]  ? __pfx_irq_thread_dtor+0x10/0x10
[  606.558879]  ? __pfx_irq_thread+0x10/0x10
[  606.558880]  kthread+0xf8/0x130
[  606.558882]  ? __pfx_kthread+0x10/0x10
[  606.558884]  ret_from_fork+0x29/0x50
[  606.558887]  </TASK>
[  606.558887] ---[ end trace 0000000000000000 ]---
[  606.570223] i915 0000:00:02.0: [drm] GT0: HuC: authenticated!
[  606.570228] i915 0000:00:02.0: [drm] GT0: GUC: submission disabled
[  606.570231] i915 0000:00:02.0: [drm] GT0: GUC: SLPC disabled
[  606.663042] xhci_hcd 0000:39:00.0: AER: can't recover (no error_detected callback)
[  606.663111] pcieport 0000:00:1d.0: AER: device recovery failed
[  606.721642] iwlwifi 0000:00:14.3: WFPM_UMAC_PD_NOTIFICATION: 0x1f
[  606.721677] iwlwifi 0000:00:14.3: WFPM_LMAC2_PD_NOTIFICATION: 0x1f
[  606.721687] iwlwifi 0000:00:14.3: WFPM_AUTH_KEY_0: 0x90
[  606.721698] iwlwifi 0000:00:14.3: CNVI_SCU_SEQ_DATA_DW9: 0x0
[  606.842877] usb 1-8: reset high-speed USB device number 3 using xhci_hcd
[  607.048340] genirq: Flags mismatch irq 164. 00000000 (enp56s0) vs. 00000000 (enp56s0)
[  607.050313] ------------[ cut here ]------------
...
[  609.064160] igc 0000:38:00.0 enp56s0: Register Dump
[  609.064167] igc 0000:38:00.0 enp56s0: Register Name   Value
[  609.064181] igc 0000:38:00.0 enp56s0: CTRL            081c0641
[  609.064188] igc 0000:38:00.0 enp56s0: STATUS          40280401
[  609.064195] igc 0000:38:00.0 enp56s0: CTRL_EXT        100000c0
[  609.064202] igc 0000:38:00.0 enp56s0: MDIC            18017949
[  609.064208] igc 0000:38:00.0 enp56s0: ICR             80000010
[  609.064214] igc 0000:38:00.0 enp56s0: RCTL            04408022
[  609.064232] igc 0000:38:00.0 enp56s0: RDLEN[0-3]      00001000 00001000 00001000 00001000
[  609.064251] igc 0000:38:00.0 enp56s0: RDH[0-3]        00000000 00000000 00000000 00000000
[  609.064270] igc 0000:38:00.0 enp56s0: RDT[0-3]        000000ff 000000ff 000000ff 000000ff
[  609.064289] igc 0000:38:00.0 enp56s0: RXDCTL[0-3]     00040808 00040808 00040808 00040808
[  609.064308] igc 0000:38:00.0 enp56s0: RDBAL[0-3]      ffc62000 fff6b000 fff6c000 fff6d000
[  609.064326] igc 0000:38:00.0 enp56s0: RDBAH[0-3]      00000000 00000000 00000000 00000000
[  609.064333] igc 0000:38:00.0 enp56s0: TCTL            a50400fa
[  609.064351] igc 0000:38:00.0 enp56s0: TDBAL[0-3]      fff6d000 ffcdf000 ffce0000 ffce1000
[  609.064369] igc 0000:38:00.0 enp56s0: TDBAH[0-3]      00000000 00000000 00000000 00000000
[  609.064387] igc 0000:38:00.0 enp56s0: TDLEN[0-3]      00001000 00001000 00001000 00001000
[  609.064405] igc 0000:38:00.0 enp56s0: TDH[0-3]        00000000 00000000 00000000 00000000
[  609.064423] igc 0000:38:00.0 enp56s0: TDT[0-3]        00000004 00000000 00000000 00000000
[  609.064441] igc 0000:38:00.0 enp56s0: TXDCTL[0-3]     00100108 00100108 00100108 00100108
[  609.064445] igc 0000:38:00.0 enp56s0: Reset adapter

The issue is that the PTM requests are sending before driver resumes the
device. Since the issue can also be observed on Windows, it's quite
likely a firmware/hardwar limitation.

So avoid resetting the device if it's not resumed. Once the device is
fully resumed, the device can work normally.

Link: https://bugzilla.kernel.org/show_bug.cgi?id=216850
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index fa764190f270..6a46f886ff43 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6962,6 +6962,9 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
+	if (!pci_is_enabled(pdev))
+		return 0;
+
 	netif_device_detach(netdev);
 
 	if (state == pci_channel_io_perm_failure)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
