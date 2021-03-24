Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E1C347330
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Mar 2021 09:05:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DAD7240574;
	Wed, 24 Mar 2021 08:05:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NMVr0iG7rO1Z; Wed, 24 Mar 2021 08:05:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9A5C40570;
	Wed, 24 Mar 2021 08:05:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 29CCD1BF3AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Mar 2021 08:05:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F39684942
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Mar 2021 08:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fWL1_DXzpumI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Mar 2021 08:05:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D1F78493A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Mar 2021 08:05:43 +0000 (UTC)
IronPort-SDR: ZYhhg+axuW3bXkKPIuX7PO9jF7UyvNKMw86eKa5pngY2SWA8kVYp/RAuBtmjCUFrP81CdkQtDD
 XXYvgZsuoHGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="190684297"
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="190684297"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 01:05:38 -0700
IronPort-SDR: s48x713RhVviz6221urL94RtpXukcCDozOnwJsVFyv2Jc3D4KgfBSv3gq0pSKAnJmvH/3gKWpx
 SbOoc5KPD+rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="415374692"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga008.jf.intel.com with ESMTP; 24 Mar 2021 01:05:34 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org, anna.kostyukovsky@intel.com,
 dvorax.fuxbrumer@linux.intel.com
Date: Wed, 24 Mar 2021 10:05:31 +0200
Message-Id: <20210324080531.2051963-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 1/1] igc: Fix overwrites return value
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

drivers/net/ethernet/intel/igc/igc_i225.c:235 igc_write_nvm_srwr()
warn: loop overwrites return value 'ret_val'

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_i225.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index cc83bb5c15e8..b2ef9fde97b3 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -229,10 +229,11 @@ static s32 igc_write_nvm_srwr(struct igc_hw *hw, u16 offset, u16 words,
 	if (offset >= nvm->word_size || (words > (nvm->word_size - offset)) ||
 	    words == 0) {
 		hw_dbg("nvm parameter(s) out of bounds\n");
-		goto out;
+		return ret_val;
 	}
 
 	for (i = 0; i < words; i++) {
+		ret_val = -IGC_ERR_NVM;
 		eewr = ((offset + i) << IGC_NVM_RW_ADDR_SHIFT) |
 			(data[i] << IGC_NVM_RW_REG_DATA) |
 			IGC_NVM_RW_REG_START;
@@ -254,7 +255,6 @@ static s32 igc_write_nvm_srwr(struct igc_hw *hw, u16 offset, u16 words,
 		}
 	}
 
-out:
 	return ret_val;
 }
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
