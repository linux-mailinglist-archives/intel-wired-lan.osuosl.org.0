Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD4F6A0C91
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Feb 2023 16:08:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5C874115F;
	Thu, 23 Feb 2023 15:07:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5C874115F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677164876;
	bh=lIXe7/DkFPuCBXMfZWk2n66HdOBgfRGGLFOeDpn91s0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NfQeRKda9Lj68/tOLHaxGRxLYCEmLORnoIRhaGH2n5/0DRmqJeQX8LVq9XJ0oqAlb
	 TQnIsC0SsqEMFROeeHyiZv6PScf+iFTnCjExPJczafYpb1GwLWzFyQyAngcQpyf5H2
	 wlVpv8Dll4umW4wMaeT6N1LQpxG1MDuCfGb8IT57GeGBzLv/4lbWQ1WdTppWzqgZNH
	 OGLbbYDeN3AnwKzRHAwj39Sb7r1jX6ynAKxb/zPPL2sw5s8H8f1C4Yqch/m2b39wa9
	 H3PupuUyLw5dnkmJ2DNU6tLOJ5ekQdQ/FlLWLPKhloaMDL+dVT6GW38H/jgh3ld2PM
	 apzbpzNDwVmbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fUuF7QXJ8YMX; Thu, 23 Feb 2023 15:07:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C41C40BB9;
	Thu, 23 Feb 2023 15:07:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C41C40BB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 332591BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 15:07:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0BD4960DCA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 15:07:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BD4960DCA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lb8kdjULMf82 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Feb 2023 15:07:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CBA460BB9
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CBA460BB9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 15:07:48 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-633-aOv7eJ-WMT-27Ygbz9P1Ow-1; Thu, 23 Feb 2023 10:07:42 -0500
X-MC-Unique: aOv7eJ-WMT-27Ygbz9P1Ow-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6C8F280BCAC;
 Thu, 23 Feb 2023 15:07:05 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.226.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9B9CE440DD;
 Thu, 23 Feb 2023 15:07:03 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 23 Feb 2023 16:07:02 +0100
Message-Id: <20230223150702.2802683-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1677164867;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=o7XAVQUmtmLL//PQHHpUYbLF4EeG7rtKUSTZl28m2OQ=;
 b=OHd6f1RofsnWVRt6LxFLBXSBIo1i9KNUkijvg9xGenkoZstUmIvoKEG6bAG2SN2SoXahqF
 zElHnYhfpd8vajb8nZIK09+Ysg/dMt0Rfxruqll2POtMAeI7WrDlDzu2vojm58qtlLFAdQ
 +JeoEjjOCZYDMIeI+O/QXJC8VMbiUmg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=OHd6f1Ro
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix kernel crash during reboot
 when adapter is in recovery mode
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
Cc: Eric Dumazet <edumazet@google.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, patryk.piotrowski@intel.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Piotr Marczak <piotr.marczak@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the driver detects during probe that firmware is in recovery
mode then i40e_init_recovery_mode() is called and the rest of
probe function is skipped including pci_set_drvdata(). Subsequent
i40e_shutdown() called during shutdown/reboot dereferences NULL
pointer as pci_get_drvdata() returns NULL.

To fix call pci_set_drvdata() also during entering to recovery mode.

Reproducer:
1) Lets have i40e NIC with firmware in recovery mode
2) Run reboot

Result:
[  139.084698] i40e: Intel(R) Ethernet Connection XL710 Network Driver
[  139.090959] i40e: Copyright (c) 2013 - 2019 Intel Corporation.
[  139.108438] i40e 0000:02:00.0: Firmware recovery mode detected. Limiting functionality.
[  139.116439] i40e 0000:02:00.0: Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.
[  139.129499] i40e 0000:02:00.0: fw 8.3.64775 api 1.13 nvm 8.30 0x8000b78d 1.3106.0 [8086:1583] [15d9:084a]
[  139.215932] i40e 0000:02:00.0 enp2s0f0: renamed from eth0
[  139.223292] i40e 0000:02:00.1: Firmware recovery mode detected. Limiting functionality.
[  139.231292] i40e 0000:02:00.1: Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.
[  139.244406] i40e 0000:02:00.1: fw 8.3.64775 api 1.13 nvm 8.30 0x8000b78d 1.3106.0 [8086:1583] [15d9:084a]
[  139.329209] i40e 0000:02:00.1 enp2s0f1: renamed from eth0
...
[  156.311376] BUG: kernel NULL pointer dereference, address: 00000000000006c2
[  156.318330] #PF: supervisor write access in kernel mode
[  156.323546] #PF: error_code(0x0002) - not-present page
[  156.328679] PGD 0 P4D 0
[  156.331210] Oops: 0002 [#1] PREEMPT SMP NOPTI
[  156.335567] CPU: 26 PID: 15119 Comm: reboot Tainted: G            E      6.2.0+ #1
[  156.343126] Hardware name: Abacus electric, s.r.o. - servis@abacus.cz Super Server/H12SSW-iN, BIOS 2.4 04/13/2022
[  156.353369] RIP: 0010:i40e_shutdown+0x15/0x130 [i40e]
[  156.358430] Code: c1 fc ff ff 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 55 48 89 fd 53 48 8b 9f 48 01 00 00 <f0> 80 8b c2 06 00 00 04 f0 80 8b c0 06 00 00 08 48 8d bb 08 08 00
[  156.377168] RSP: 0018:ffffb223c8447d90 EFLAGS: 00010282
[  156.382384] RAX: ffffffffc073ee70 RBX: 0000000000000000 RCX: 0000000000000001
[  156.389510] RDX: 0000000080000001 RSI: 0000000000000246 RDI: ffff95db49988000
[  156.396634] RBP: ffff95db49988000 R08: ffffffffffffffff R09: ffffffff8bd17d40
[  156.403759] R10: 0000000000000001 R11: ffffffff8a5e3d28 R12: ffff95db49988000
[  156.410882] R13: ffffffff89a6fe17 R14: ffff95db49988150 R15: 0000000000000000
[  156.418007] FS:  00007fe7c0cc3980(0000) GS:ffff95ea8ee80000(0000) knlGS:0000000000000000
[  156.426083] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  156.431819] CR2: 00000000000006c2 CR3: 00000003092fc005 CR4: 0000000000770ee0
[  156.438944] PKRU: 55555554
[  156.441647] Call Trace:
[  156.444096]  <TASK>
[  156.446199]  pci_device_shutdown+0x38/0x60
[  156.450297]  device_shutdown+0x163/0x210
[  156.454215]  kernel_restart+0x12/0x70
[  156.457872]  __do_sys_reboot+0x1ab/0x230
[  156.461789]  ? vfs_writev+0xa6/0x1a0
[  156.465362]  ? __pfx_file_free_rcu+0x10/0x10
[  156.469635]  ? __call_rcu_common.constprop.85+0x109/0x5a0
[  156.475034]  do_syscall_64+0x3e/0x90
[  156.478611]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
[  156.483658] RIP: 0033:0x7fe7bff37ab7

Fixes: 4ff0ee1af01697 ("i40e: Introduce recovery mode support")
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 467001db5070ed..228cd502bb48a9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15525,6 +15525,7 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
 	int err;
 	int v_idx;
 
+	pci_set_drvdata(pf->pdev, pf);
 	pci_save_state(pf->pdev);
 
 	/* set up periodic task facility */
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
