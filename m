Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F70D2C8B8E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Nov 2020 18:43:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D6F6F22BCC;
	Mon, 30 Nov 2020 17:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IBbkQCAhKUhV; Mon, 30 Nov 2020 17:43:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2F62422E89;
	Mon, 30 Nov 2020 17:43:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EFEA61BF329
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 17:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E99EF86B4D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 17:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OnjZDmExWGja for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Nov 2020 17:43:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F1D6186B0C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 17:43:04 +0000 (UTC)
IronPort-SDR: diDD0+qAYhUeG+DO2ujJWmKnGqquKyyz+GkiaNSbLxJWbQg7jWK51DEi2LXr0g6CVuuRkPd9jP
 BqSrv3DU5N6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="160449691"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="160449691"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 09:43:04 -0800
IronPort-SDR: Ur9tcbfF2XSkJfMtR9XQMnI8gbdKKWVhxnTP3mO5V0rNxVYq2SYVU+2aceU8wfYeWTtpc45FEp
 PfDqHJcYPbmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="538682197"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga005.fm.intel.com with ESMTP; 30 Nov 2020 09:43:03 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Nov 2020 19:43:00 +0200
Message-Id: <20201130174300.2784292-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove igc_set_fw_version
 method
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

i225 device not supported and do not plan to support
configuration of fw version string for ethtool

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 831f2f09de5f..8d0085c03635 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -544,7 +544,6 @@ static int igc_ethtool_set_eeprom(struct net_device *netdev,
 	if (ret_val == 0)
 		hw->nvm.ops.update(hw);
 
-	/* check if need: igc_set_fw_version(adapter); */
 	kfree(eeprom_buff);
 	return ret_val;
 }
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
