Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4899263F7E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 10:16:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 727C38753A;
	Thu, 10 Sep 2020 08:16:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DN9M5JnFVw4Y; Thu, 10 Sep 2020 08:16:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 18DEA87562;
	Thu, 10 Sep 2020 08:16:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75AB81BF38C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 08:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7114686C56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 08:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xGJnNRVEcPGs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 08:16:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C60CE869E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 08:16:10 +0000 (UTC)
IronPort-SDR: qNEfcD/E4+49bH5OvY8hER7QjAQJjZsfo1Bvt6z2nETvRYxA+xpRZH7PSymeLWXAuKCWdpH1Df
 1400iat/JI9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="138008231"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="138008231"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:16:09 -0700
IronPort-SDR: KuYRPuLWhYf928wCXkVFxmGh8qHIIPNFgm6wuzoYaNfus2w7DthJyhMl0AOzwha3H5biVVtvqW
 DLeyMI9cpMug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="505040749"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.161.198])
 by fmsmga006.fm.intel.com with ESMTP; 10 Sep 2020 01:16:08 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Sep 2020 11:16:05 +0300
Message-Id: <20200910081605.2562950-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.18.4
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up _nvm_info structure
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

flash_bank_size and flash_base_addr field not in use and can
be removed from a _nvm_info structure

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_hw.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index 17d6669959db..55dae7c4703f 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -130,9 +130,6 @@ struct igc_nvm_info {
 	struct igc_nvm_operations ops;
 	enum igc_nvm_type type;
 
-	u32 flash_bank_size;
-	u32 flash_base_addr;
-
 	u16 word_size;
 	u16 delay_usec;
 	u16 address_bits;
-- 
2.18.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
