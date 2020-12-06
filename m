Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7152D04B1
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Dec 2020 13:07:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D047874D5;
	Sun,  6 Dec 2020 12:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id APvsjGWrLncZ; Sun,  6 Dec 2020 12:07:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96942874D0;
	Sun,  6 Dec 2020 12:07:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 141841BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Dec 2020 12:07:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0A1E886AC6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Dec 2020 12:07:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sJwUTjXQ4_28 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Dec 2020 12:07:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4A7E286AB6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Dec 2020 12:07:05 +0000 (UTC)
IronPort-SDR: ugMWQaGzu9ME5gO/OK1T4Yj5+29pRLh3TfMTdsSyi5w+d6TqXsAljSiIDX6BEPpnuDRMFYW9/6
 0Xm8iBfA+Mog==
X-IronPort-AV: E=McAfee;i="6000,8403,9826"; a="235182719"
X-IronPort-AV: E=Sophos;i="5.78,397,1599548400"; d="scan'208";a="235182719"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 04:07:03 -0800
IronPort-SDR: ZNtpOtILorHu5NZsYmN6xDkGF2B4Fvz8DF43SFJFWHUiHywY76V0aBDB/snMexc4t+fankSHTW
 G0h3cohSkjkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,397,1599548400"; d="scan'208";a="374869426"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Dec 2020 04:07:02 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun,  6 Dec 2020 14:07:00 +0200
Message-Id: <20201206120700.3767534-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add Host Good Packets
 Transmitted Count
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

This counter counts the number of good (non-erred) packets
transmitted sent by the host.
A good transmit packet is considered one that is 64 or more bytes
in length (from <Destination Address> through <CRC>,
inclusively) in length

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 705bb89aded7..8913c7f7be7f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3949,6 +3949,7 @@ void igc_update_stats(struct igc_adapter *adapter)
 	adapter->stats.prc1522 += rd32(IGC_PRC1522);
 	adapter->stats.tlpic += rd32(IGC_TLPIC);
 	adapter->stats.rlpic += rd32(IGC_RLPIC);
+	adapter->stats.hgptc += rd32(IGC_HGPTC);
 
 	mpc = rd32(IGC_MPC);
 	adapter->stats.mpc += mpc;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
