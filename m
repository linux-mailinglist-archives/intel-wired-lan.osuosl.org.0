Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 417893A9065
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Jun 2021 06:19:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 50949401D0;
	Wed, 16 Jun 2021 04:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AlO3eUz7mNHa; Wed, 16 Jun 2021 04:19:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67964401CA;
	Wed, 16 Jun 2021 04:19:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D18A61BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 04:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CB7A5401CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 04:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vP5kpw6SWa8v for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jun 2021 04:19:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 84668400CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jun 2021 04:19:35 +0000 (UTC)
IronPort-SDR: aghi+gVYNU9sBD3kIPesH2i+EdMFYokxzTZHkasUCO89ZV5RmD6oCJ5HXgDvIVNSl8lwiWOqaj
 rwE8ZRrTq+0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="203089304"
X-IronPort-AV: E=Sophos;i="5.83,277,1616482800"; d="scan'208";a="203089304"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 21:19:34 -0700
IronPort-SDR: vxrdrq1ITyoVWcSaKjtW9gfEqemFLNzFDC7sD/VN+lzfJAVw9pwmYnngdmBqM9dC/7LxRJfDUC
 mhnapL5J/ZQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,277,1616482800"; d="scan'208";a="452199274"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga008.fm.intel.com with ESMTP; 15 Jun 2021 21:19:33 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	michael.edri@intel.com
Date: Wed, 16 Jun 2021 07:19:30 +0300
Message-Id: <20210616041930.1827357-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Add space to the debug
 print
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

Minor fixes to allow debug prints more readable.

Fixes: 3cf31b1a9eff ("e1000e: bump up timeout to wait when ME un-configures ULP mode")
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
v1 -> v2: addressed compilation warnings
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 5b008c88beb7..49a6f8205403 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1271,9 +1271,11 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
 			usleep_range(10000, 11000);
 		}
 		if (firmware_bug)
-			e_warn("ULP_CONFIG_DONE took %dmsec.  This is a firmware bug\n", i * 10);
+			e_warn("ULP_CONFIG_DONE took %dmsec. This is a firmware bug\n",
+			       i * 10);
 		else
-			e_dbg("ULP_CONFIG_DONE cleared after %dmsec\n", i * 10);
+			e_dbg("ULP_CONFIG_DONE cleared after %d msec\n",
+			      i * 10);
 
 		if (force) {
 			mac_reg = er32(H2ME);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
