Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D309FE9D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Dec 2024 19:27:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30D5940236;
	Mon, 30 Dec 2024 18:27:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gw-kGv91yLr4; Mon, 30 Dec 2024 18:27:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD826402F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735583270;
	bh=cWwGlGKRBHUWO/a7dKvlUTDhtDD+VetBHtkfDGNAz2Y=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LkbqifujA6Sf89E83t5YSlsezZI60sGYTE8Isu0yfwoY8RfbXTbpGHKxB5aFSEvF8
	 G4JuAzylFxlZwGsj/Tfz2LvN8AasNcKdnbJOzVRsGmXswHbOP/ZK6LjCwt6fxeoe4k
	 tyeTPDLXu2cQrsJHmk8I2QO65SrARgECPvKJNVlBtqHBJ5zXssbQ0iQ1S6ZY1Yjvt8
	 SNnJ6bYvMeszKwDY3nMrOBtYqmCdEaIXrX13LZBjPN3XSrljypbskn1f89F1cZTmi8
	 fJyCH8K1BoqWS/5nh6LnabQtedhDNcCoMIFGZQoOaDQ+v5eSUPp16QN6aN0dqzNMIf
	 ONot670/knz2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD826402F3;
	Mon, 30 Dec 2024 18:27:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E4522E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Dec 2024 03:55:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C008E40272
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Dec 2024 03:55:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jYo07gUo-TcL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Dec 2024 03:55:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62f; helo=mail-pl1-x62f.google.com;
 envelope-from=yue.zhao@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3985640245
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3985640245
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3985640245
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Dec 2024 03:55:15 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-2167141dfa1so80238315ad.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2024 19:55:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735271715; x=1735876515;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cWwGlGKRBHUWO/a7dKvlUTDhtDD+VetBHtkfDGNAz2Y=;
 b=MTSwL/V8UrPEuAEz3atIlTt008atMvdE/4gJe4uQ9oTSfH68lIPq7NmRVBdNULNb7R
 wJCTT8ezeXTXnt0jR+9lH+v5IhNLVwqhnZ4tlb7Jx16lVpjzBvgrEm+JofKas1fPUloH
 aOlvPdJVh56eQSnjTLzdMLN278k2CShIOpuGw0Scnu1XlJkpyoJ2Qzt2pdCKv4m913s7
 6SgqOEjfvOX+gCj9XgsEXbhgVuqh2llkA+tb3kwnGMG7yeS1Iv+XjrHvut+1LrZtNRYB
 ZpjUIWY2r7mChaBj2ZiIPPt4puvwkhP0rAMjHw2WKqyqTaRMO9YQNUs1vkadLXSLAwl3
 E80Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXdGDzT8yvN5Zh3Sh136kvyuL9pWoZxZSlOangh1KaB922m6C3ls8MZ60rKSofQ6g9O8bN+eEbreiEFKBII5cE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxnT39ECQ3Q/mZ+oqQl85shzLe9Y/MDhRRwEG4vesRqB3Q59Xpc
 v2qWvAXoCKZcBRPSARfjJl/qcLgEQNwHYp7aU4p0LhjxJ6QzdfR5oKd++0jFN8Y=
X-Gm-Gg: ASbGncvQlHHC0+AVIB+1ofigAQ5Owz3h7ihzppldX/7V0FB51HKo8eyjFl1+NFEgQPi
 X2Y15qHGRaI8dYbaBPxUERXXt5Ag2lxtmAhxqk8i/DugTvoM50mMK+QOsDYEcrb8pWZqaOER9lR
 fOYwnghR/CDocWI9cfioqCMnF3QviC0xNF9HB48BKz88cq6rlP/mzAxb9nQ39iAVEkZukFqKyal
 gf6cGR5mSWEAnvlMj4QCejbwQdUWnjX7n9to8nj3Q3/3vmUez3QmzbRgMxxsmfJNWXPd2idrakk
 hSZXC4IHvCOYNUE=
X-Google-Smtp-Source: AGHT+IHDuLIcbu0hPHGa/G2uQ8mI4bKwiPV1xjD49qtnVtNbj/ofNv3MK+JAbrl4vueOmhZWxI6HCw==
X-Received: by 2002:a17:903:2a87:b0:216:3f6e:fabd with SMTP id
 d9443c01a7336-219da5cc2d0mr445657615ad.7.1735271715370; 
 Thu, 26 Dec 2024 19:55:15 -0800 (PST)
Received: from R4NDHT277M.cn.corp.seagroup.com ([143.92.118.3])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-842b229c48fsm10606252a12.26.2024.12.26.19.55.11
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Thu, 26 Dec 2024 19:55:14 -0800 (PST)
From: Yue Zhao <yue.zhao@shopee.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: chunguang.xu@shopee.com, haifeng.xu@shopee.com,
 Yue Zhao <yue.zhao@shopee.com>
Date: Fri, 27 Dec 2024 11:54:59 +0800
Message-Id: <20241227035459.90602-1-yue.zhao@shopee.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Dec 2024 18:27:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1735271715; x=1735876515; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=cWwGlGKRBHUWO/a7dKvlUTDhtDD+VetBHtkfDGNAz2Y=;
 b=Y6baA87p9JnpOGMjfq19xACNJuF3myij+embr7EazqACxWBvbXbdvF1EBiJ6TWoF5M
 2wfSjcDZc215fS7W4Ud3fhY2zFyN03HccNcrTPbLpYgx/DVGKH7gvlqQL3yPMIsBeM9x
 BAJApBmDc5/Qlmg1vFP4LRmvA1Q99q7bbWEusLvYtrvMcIo6ffA1WOOFaLpvsIC9+p2x
 AufbHsOJH3fQhv2DV9/a4AB4BpOF8Fy+BhLGpw0VXifGFGG16HA6Z5ge+cpBre0fiv9L
 HfZkcQNRsOLTl3sZMSMiCyy3mzsBuH9SwEwHULnPyQfBNNxX4KhQp5NEa5ubw1/2x8ZH
 t/PQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=Y6baA87p
Subject: [Intel-wired-lan] [PATCH] i40e: Disable i40e PCIe AER on system
 reboot
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

Disable PCIe AER on the i40e device on system reboot on a limited
list of Dell PowerEdge systems. This prevents a fatal PCIe AER event
on the i40e device during the ACPI _PTS (prepare to sleep) method for
S5 on those systems. The _PTS is invoked by acpi_enter_sleep_state_prep()
as part of the kernel's reboot sequence as a result of commit
38f34dba806a ("PM: ACPI: reboot: Reinstate S5 for reboot").

We first noticed this abnormal reboot issue in tg3 device, and there
is a similar patch about disable PCIe AER to fix hardware error during
reboot. The hardware error in tg3 device has gone after we apply this
patch below.

https://lore.kernel.org/lkml/20241129203640.54492-1-lszubowi@redhat.com/T/

So we try to disable PCIe AER on the i40e device in the similar way.

hardware crash dmesg log:

ACPI: PM: Preparing to enter system sleep state S5
{1}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 5
{1}[Hardware Error]: event severity: fatal
{1}[Hardware Error]:  Error 0, type: fatal
{1}[Hardware Error]:   section_type: PCIe error
{1}[Hardware Error]:   port_type: 0, PCIe end point
{1}[Hardware Error]:   version: 3.0
{1}[Hardware Error]:   command: 0x0006, status: 0x0010
{1}[Hardware Error]:   device_id: 0000:05:00.1
{1}[Hardware Error]:   slot: 0
{1}[Hardware Error]:   secondary_bus: 0x00
{1}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x1572
{1}[Hardware Error]:   class_code: 020000
{1}[Hardware Error]:   aer_uncor_status: 0x00100000, aer_uncor_mask: 0x00018000
{1}[Hardware Error]:   aer_uncor_severity: 0x000ef030
{1}[Hardware Error]:   TLP Header: 40000001 0000000f 90028090 00000000
Kernel panic - not syncing: Fatal hardware error!
Hardware name: Dell Inc. PowerEdge C4140/08Y2GR, BIOS 2.21.1 12/12/2023
Call Trace:
 <NMI>
 dump_stack_lvl+0x48/0x70
 dump_stack+0x10/0x20
 panic+0x1b4/0x3a0
 __ghes_panic+0x6c/0x70
 ghes_in_nmi_queue_one_entry.constprop.0+0x1ee/0x2c0
 ghes_notify_nmi+0x5e/0xe0
 nmi_handle+0x62/0x160
 default_do_nmi+0x4c/0x150
 exc_nmi+0x140/0x1f0
 end_repeat_nmi+0x16/0x67
RIP: 0010:intel_idle_irq+0x70/0xf0
 </NMI>
 <TASK>
 cpuidle_enter_state+0x91/0x6f0
 cpuidle_enter+0x2e/0x50
 call_cpuidle+0x23/0x60
 cpuidle_idle_call+0x11d/0x190
 do_idle+0x82/0xf0
 cpu_startup_entry+0x2a/0x30
 rest_init+0xc2/0xf0
 arch_call_rest_init+0xe/0x30
 start_kernel+0x34f/0x440
 x86_64_start_reservations+0x18/0x30
 x86_64_start_kernel+0xbf/0x110
 secondary_startup_64_no_verify+0x18f/0x19b
 </TASK>

Fixes: 38f34dba806a ("PM: ACPI: reboot: Reinstate S5 for reboot")
Signed-off-by: Yue Zhao <yue.zhao@shopee.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 64 +++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 0e1d9e2fbf38..80e66e4e90f7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -8,6 +8,7 @@
 #include <linux/module.h>
 #include <net/pkt_cls.h>
 #include <net/xdp_sock_drv.h>
+#include <linux/dmi.h>
 
 /* Local includes */
 #include "i40e.h"
@@ -16608,6 +16609,56 @@ static void i40e_pci_error_resume(struct pci_dev *pdev)
 	i40e_io_resume(pf);
 }
 
+/* Systems where ACPI _PTS (Prepare To Sleep) S5 will result in a fatal
+ * PCIe AER event on the i40e device if the i40e device is not, or cannot
+ * be, powered down.
+ */
+static const struct dmi_system_id i40e_restart_aer_quirk_table[] = {
+	{
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge C4140"),
+		},
+	},
+	{
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R440"),
+		},
+	},
+	{
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R540"),
+		},
+	},
+	{
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R640"),
+		},
+	},
+	{
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R650"),
+		},
+	},
+	{
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R740"),
+		},
+	},
+	{
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge R750"),
+		},
+	},
+	{}
+};
+
 /**
  * i40e_shutdown - PCI callback for shutting down
  * @pdev: PCI device information struct
@@ -16654,6 +16705,19 @@ static void i40e_shutdown(struct pci_dev *pdev)
 	i40e_clear_interrupt_scheme(pf);
 	rtnl_unlock();
 
+	if (system_state == SYSTEM_RESTART &&
+		dmi_first_match(i40e_restart_aer_quirk_table) &&
+		pdev->current_state <= PCI_D3hot) {
+		/* Disable PCIe AER on the i40e to avoid a fatal
+		 * error during this system restart.
+		 */
+		pcie_capability_clear_word(pdev, PCI_EXP_DEVCTL,
+					   PCI_EXP_DEVCTL_CERE |
+					   PCI_EXP_DEVCTL_NFERE |
+					   PCI_EXP_DEVCTL_FERE |
+					   PCI_EXP_DEVCTL_URRE);
+	}
+
 	if (system_state == SYSTEM_POWER_OFF) {
 		pci_wake_from_d3(pdev, pf->wol_en);
 		pci_set_power_state(pdev, PCI_D3hot);
-- 
2.39.5 (Apple Git-154)

