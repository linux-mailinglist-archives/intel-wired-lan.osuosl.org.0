Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC349A0A3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 22:02:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B382986B25;
	Thu, 22 Aug 2019 20:02:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RTUkFOiR6olD; Thu, 22 Aug 2019 20:02:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 451D486B26;
	Thu, 22 Aug 2019 20:02:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B3191BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 18:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 35D0A2038B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 18:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ojim6d7l9wfs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 18:33:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by silver.osuosl.org (Postfix) with ESMTPS id 7D0CF20385
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 18:33:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C6C87C0546FE;
 Thu, 22 Aug 2019 18:33:37 +0000 (UTC)
Received: from malachite.bss.redhat.com (dhcp-10-20-1-11.bss.redhat.com
 [10.20.1.11])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5718A18517;
 Thu, 22 Aug 2019 18:33:34 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Thu, 22 Aug 2019 14:33:18 -0400
Message-Id: <20190822183318.27634-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 22 Aug 2019 18:33:37 +0000 (UTC)
X-Mailman-Approved-At: Thu, 22 Aug 2019 20:02:14 +0000
Subject: [Intel-wired-lan] [PATCH] igb/igc: Don't warn on fatal read
 failures when the device is removed
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
Cc: linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fatal read errors are worth warning about, unless of course the device
was just unplugged from the machine - something that's a rather normal
occurence when the igb/igc adapter is located on a Thunderbolt dock. So,
let's only WARN() if there's a fatal read error while the device is
still present.

This fixes the following WARN splat that's been appearing whenever I
unplug my Caldigit TS3 Thunderbolt dock from my laptop:

  igb 0000:09:00.0 enp9s0: PCIe link lost
  ------------[ cut here ]------------
  igb: Failed to read reg 0x18!
  WARNING: CPU: 7 PID: 516 at
  drivers/net/ethernet/intel/igb/igb_main.c:756 igb_rd32+0x57/0x6a [igb]
  Modules linked in: igb dca thunderbolt fuse vfat fat elan_i2c mei_wdt
  mei_hdcp i915 wmi_bmof intel_wmi_thunderbolt iTCO_wdt
  iTCO_vendor_support x86_pkg_temp_thermal intel_powerclamp joydev
  coretemp crct10dif_pclmul crc32_pclmul i2c_algo_bit ghash_clmulni_intel
  intel_cstate drm_kms_helper intel_uncore syscopyarea sysfillrect
  sysimgblt fb_sys_fops intel_rapl_perf intel_xhci_usb_role_switch mei_me
  drm roles idma64 i2c_i801 ucsi_acpi typec_ucsi mei intel_lpss_pci
  processor_thermal_device typec intel_pch_thermal intel_soc_dts_iosf
  intel_lpss int3403_thermal thinkpad_acpi wmi int340x_thermal_zone
  ledtrig_audio int3400_thermal acpi_thermal_rel acpi_pad video
  pcc_cpufreq ip_tables serio_raw nvme nvme_core crc32c_intel uas
  usb_storage e1000e i2c_dev
  CPU: 7 PID: 516 Comm: kworker/u16:3 Not tainted 5.2.0-rc1Lyude-Test+ #14
  Hardware name: LENOVO 20L8S2N800/20L8S2N800, BIOS N22ET35W (1.12 ) 04/09/2018
  Workqueue: kacpi_hotplug acpi_hotplug_work_fn
  RIP: 0010:igb_rd32+0x57/0x6a [igb]
  Code: 87 b8 fc ff ff 48 c7 47 08 00 00 00 00 48 c7 c6 33 42 9b c0 4c 89
  c7 e8 47 45 cd dc 89 ee 48 c7 c7 43 42 9b c0 e8 c1 94 71 dc <0f> 0b eb
  08 8b 00 ff c0 75 b0 eb c8 44 89 e0 5d 41 5c c3 0f 1f 44
  RSP: 0018:ffffba5801cf7c48 EFLAGS: 00010286
  RAX: 0000000000000000 RBX: ffff9e7956608840 RCX: 0000000000000007
  RDX: 0000000000000000 RSI: ffffba5801cf7b24 RDI: ffff9e795e3d6a00
  RBP: 0000000000000018 R08: 000000009dec4a01 R09: ffffffff9e61018f
  R10: 0000000000000000 R11: ffffba5801cf7ae5 R12: 00000000ffffffff
  R13: ffff9e7956608840 R14: ffff9e795a6f10b0 R15: 0000000000000000
  FS:  0000000000000000(0000) GS:ffff9e795e3c0000(0000) knlGS:0000000000000000
  CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
  CR2: 0000564317bc4088 CR3: 000000010e00a006 CR4: 00000000003606e0
  DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
  DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
  Call Trace:
   igb_release_hw_control+0x1a/0x30 [igb]
   igb_remove+0xc5/0x14b [igb]
   pci_device_remove+0x3b/0x93
   device_release_driver_internal+0xd7/0x17e
   pci_stop_bus_device+0x36/0x75
   pci_stop_bus_device+0x66/0x75
   pci_stop_bus_device+0x66/0x75
   pci_stop_and_remove_bus_device+0xf/0x19
   trim_stale_devices+0xc5/0x13a
   ? __pm_runtime_resume+0x6e/0x7b
   trim_stale_devices+0x103/0x13a
   ? __pm_runtime_resume+0x6e/0x7b
   trim_stale_devices+0x103/0x13a
   acpiphp_check_bridge+0xd8/0xf5
   acpiphp_hotplug_notify+0xf7/0x14b
   ? acpiphp_check_bridge+0xf5/0xf5
   acpi_device_hotplug+0x357/0x3b5
   acpi_hotplug_work_fn+0x1a/0x23
   process_one_work+0x1a7/0x296
   worker_thread+0x1a8/0x24c
   ? process_scheduled_works+0x2c/0x2c
   kthread+0xe9/0xee
   ? kthread_destroy_worker+0x41/0x41
   ret_from_fork+0x35/0x40
  ---[ end trace 252bf10352c63d22 ]---

Signed-off-by: Lyude Paul <lyude@redhat.com>
Fixes: 47e16692b26b ("igb/igc: warn when fatal read failure happens")
Cc: Feng Tang <feng.tang@intel.com>
Cc: Sasha Neftin <sasha.neftin@intel.com>
Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
---
 drivers/net/ethernet/intel/igb/igb_main.c | 3 ++-
 drivers/net/ethernet/intel/igc/igc_main.c | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index e5b7e638df28..1a7f7cd28df9 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -753,7 +753,8 @@ u32 igb_rd32(struct e1000_hw *hw, u32 reg)
 		struct net_device *netdev = igb->netdev;
 		hw->hw_addr = NULL;
 		netdev_err(netdev, "PCIe link lost\n");
-		WARN(1, "igb: Failed to read reg 0x%x!\n", reg);
+		WARN(pci_device_is_present(igb->pdev),
+		     "igb: Failed to read reg 0x%x!\n", reg);
 	}
 
 	return value;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 28072b9aa932..f873a4b35eaf 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3934,7 +3934,8 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
 		hw->hw_addr = NULL;
 		netif_device_detach(netdev);
 		netdev_err(netdev, "PCIe link lost, device now detached\n");
-		WARN(1, "igc: Failed to read reg 0x%x!\n", reg);
+		WARN(pci_device_is_present(igc->pdev),
+		     "igc: Failed to read reg 0x%x!\n", reg);
 	}
 
 	return value;
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
