Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6768701295
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 May 2023 01:45:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3C1E41C71;
	Fri, 12 May 2023 23:45:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3C1E41C71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683935107;
	bh=XZRWh5XBJLocq3OAbnGWJ5e5kp/WcQMC66hECADMJWQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Fj26P0Y1qPmnakKfLKbwztIYP8+cZbLbmdt5SFEma3+qTWXBDI9/tV8QrOJOmHapt
	 vLvlk40hmwdUgS8cdCDv2igILJmE55efN1FsqNRnE0noImXpdpepY/Y/4A/OyuuiFD
	 4O1rkIOJqCCriJRfSB9TFc2aRrpTj0HR5KGumdDnBHhtz7LDc8Qic+rpedlZgIQEzx
	 upSeE7zp2njRq8OhkD4CoVtX1RWaJ1v/2w/Xi0bvoZlE2P9JpgNGoTFQ5BFYviaUm2
	 fa5eSN7GPXUqB28pk9nc4MwKUg0xsMOV+jFtFcqR7qjpJGEGClqQGcd1ulTOs9Bd6t
	 uvDLrd4ZJmWEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v9v3dO-xlfZ6; Fri, 12 May 2023 23:45:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86A0D408A3;
	Fri, 12 May 2023 23:45:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86A0D408A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19CFA1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 23:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6D488475F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 23:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6D488475F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o8P_2aY56qRx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 23:20:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8685484750
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8685484750
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 23:20:21 +0000 (UTC)
Received: by air.basealt.ru (Postfix, from userid 490)
 id E56FE2F20239; Fri, 12 May 2023 23:20:16 +0000 (UTC)
Received: from localhost.localdomain (unknown [176.59.56.94])
 by air.basealt.ru (Postfix) with ESMTPSA id 000B02F20227;
 Fri, 12 May 2023 23:20:12 +0000 (UTC)
From: kovalev@altlinux.org
To: kovalev@altlinux.org, nickel@altlinux.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 sasha.neftin@intel.com, jeffrey.t.kirsher@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, pabeni@redhat.com, edumazet@google.com
Date: Sat, 13 May 2023 02:19:44 +0300
Message-Id: <20230512231944.100501-1-kovalev@altlinux.org>
X-Mailer: git-send-email 2.33.6
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 12 May 2023 23:45:01 +0000
Subject: [Intel-wired-lan] [PATCH] e1000e: Fix bind network card with ID =
 0x0D4F
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

From: Vasiliy Kovalev <kovalev@altlinux.org>

This solution fixes packet loss during download, allowing you
to get into the range of network cards of 639e298f432fb0 commit.

Below is a summary of the hardware:
$ cat /sys/devices/cpu_core/caps/pmu_name
alderlake_hybrid
$ lspci -nn | grep 'Ethernet'
00:1f.6 Ethernet controller [0200]: Intel Corporation Ethernet
Connection (10) I219-V [8086:0d4f] (rev 01)

Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=217436
Fixes: 914ee9c436cbe9 ("e1000e: Add support for Comet Lake")
Signed-off-by: Vasiliy Kovalev <kovalev@altlinux.org>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index db8e06157da29..8b13f19309c39 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7887,7 +7887,7 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ICP_I219_LM9), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ICP_I219_V9), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_LM10), board_pch_cnp },
-	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_V10), board_pch_cnp },
+	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_V10), board_pch_adp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_LM11), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_V11), board_pch_cnp },
 	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_CMP_I219_LM12), board_pch_spt },
-- 
2.33.5

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
