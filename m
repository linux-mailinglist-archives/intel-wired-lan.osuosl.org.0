Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5CDB219B7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 02:18:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5832617A8;
	Tue, 12 Aug 2025 00:18:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YJMbsM4awMBd; Tue, 12 Aug 2025 00:18:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09789617A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754957937;
	bh=kEATbw+syxIXndCnCw5boUOoJKmmB7ZC3EZqQaPdQKM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GI+d0wlY+ogD2G8+XyoW0gANEKx2Wi7ILOiNi6lPth0pgrbrE9ePPxFQogtzSX526
	 I1v2zTAX35CXbnDtytIBnX83Sh+WbHkFKjGezaiK7LGvJRf/lgJcC6Dx6QUyRdXadu
	 Pudq5Zqewml4Yms3MGHXkw7ACpJwa8NlsqxmZUy7miO+8XpNKq50RZItQ6tAD6rb/s
	 NYY0vB3qJVGNOiPkEsb9yJInPKUoc0GdYLrlDNTTt5pr5CCOt3M3EyL65rgs5oPn+s
	 hoekZXsGDhPN2tZOPN3X/J2gFOs9w5B+HfRjSG+rDKpfWqyI2y7Dx9uNtBzvNidOcH
	 GZFRdOZeCvpUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09789617A7;
	Tue, 12 Aug 2025 00:18:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E70DBB8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 00:18:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD283617A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 00:18:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YkdkL8wH4KfK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 00:18:54 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 12 Aug 2025 00:18:54 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2E2D5617A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E2D5617A0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2E2D5617A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 00:18:54 +0000 (UTC)
X-CSE-ConnectionGUID: TCO240ZfS+WDMWdfn3h5Rw==
X-CSE-MsgGUID: lOtXQ6TcRDKQKWeMnaWnQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68593830"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68593830"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 17:11:48 -0700
X-CSE-ConnectionGUID: mtx225MgRBK2vPqxHaRQWw==
X-CSE-MsgGUID: Yk1wtHI2SG27/l1lx5wQ0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="166044395"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by orviesa007.jf.intel.com with ESMTP; 11 Aug 2025 17:11:48 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, larysa.zaremba@intel.com,
 Joshua Hay <joshua.a.hay@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 11 Aug 2025 17:19:21 -0700
Message-Id: <20250812001921.4076454-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754957934; x=1786493934;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WLXAufMx4+moAqVJ6lJ70jpjz9qJ9rjFJFkOmpjLpQA=;
 b=MQZl5YJpjMkOWvzHR4AmMdaj2PeZTdmjYPs/AAOvd1sNT8RMNsAjxx/V
 ZTxPwPu3W9feKgPG/YQus11J/O8k6rs1LusHaFJ2j6WM5HNFveF22eUJ6
 koj5xCEC097/aZAuzVp4qUyGlX14OORBJNnojLKzEOMF2IStN3ARBUUYy
 WVEhBa4+exkmryLhgbTcJt9B73acocwWM9KmNmCM8DMJYBOFzNrDKFKtk
 TETSZ5j8yIAMUxnwu+GdtL0I9hTnGAF8oV2/EzNiYMK2jqH8lnjY9B7P7
 JTkvU/u3fIHnjkt9/IWGBDXAP6ZNU9+qs69UkpQ2+25krCtx5Fb10Py+n
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MQZl5YJp
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix UAF in RDMA core aux
 dev deinitialization
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

Free the adev->id before auxiliary_device_uninit. The call to uninit
triggers the release callback, which frees the iadev memory containing the
adev. The previous flow results in a UAF during rmmod due to the adev->id
access.

[264939.604077] ==================================================================
[264939.604093] BUG: KASAN: slab-use-after-free in idpf_idc_deinit_core_aux_device+0xe4/0x100 [idpf]
[264939.604134] Read of size 4 at addr ff1100109eb6eaf8 by task rmmod/17842

...

[264939.604635] Allocated by task 17597:
[264939.604643]  kasan_save_stack+0x20/0x40
[264939.604654]  kasan_save_track+0x14/0x30
[264939.604663]  __kasan_kmalloc+0x8f/0xa0
[264939.604672]  idpf_idc_init_aux_core_dev+0x4bd/0xb60 [idpf]
[264939.604700]  idpf_idc_init+0x55/0xd0 [idpf]
[264939.604726]  process_one_work+0x658/0xfe0
[264939.604742]  worker_thread+0x6e1/0xf10
[264939.604750]  kthread+0x382/0x740
[264939.604762]  ret_from_fork+0x23a/0x310
[264939.604772]  ret_from_fork_asm+0x1a/0x30

[264939.604785] Freed by task 17842:
[264939.604790]  kasan_save_stack+0x20/0x40
[264939.604799]  kasan_save_track+0x14/0x30
[264939.604808]  kasan_save_free_info+0x3b/0x60
[264939.604820]  __kasan_slab_free+0x37/0x50
[264939.604830]  kfree+0xf1/0x420
[264939.604840]  device_release+0x9c/0x210
[264939.604850]  kobject_put+0x17c/0x4b0
[264939.604860]  idpf_idc_deinit_core_aux_device+0x4f/0x100 [idpf]
[264939.604886]  idpf_vc_core_deinit+0xba/0x3a0 [idpf]
[264939.604915]  idpf_remove+0xb0/0x7c0 [idpf]
[264939.604944]  pci_device_remove+0xab/0x1e0
[264939.604955]  device_release_driver_internal+0x371/0x530
[264939.604969]  driver_detach+0xbf/0x180
[264939.604981]  bus_remove_driver+0x11b/0x2a0
[264939.604991]  pci_unregister_driver+0x2a/0x250
[264939.605005]  __do_sys_delete_module.constprop.0+0x2eb/0x540
[264939.605014]  do_syscall_64+0x64/0x2c0
[264939.605024]  entry_SYSCALL_64_after_hwframe+0x76/0x7e

Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create, init, and destroy")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_idc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
index 4d2905103215..7e20a07e98e5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
@@ -247,10 +247,10 @@ static void idpf_unplug_aux_dev(struct auxiliary_device *adev)
 	if (!adev)
 		return;
 
+	ida_free(&idpf_idc_ida, adev->id);
+
 	auxiliary_device_delete(adev);
 	auxiliary_device_uninit(adev);
-
-	ida_free(&idpf_idc_ida, adev->id);
 }
 
 /**
-- 
2.39.2

