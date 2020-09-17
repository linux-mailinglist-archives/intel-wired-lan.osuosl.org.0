Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E65326E682
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 22:19:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B779E87231;
	Thu, 17 Sep 2020 20:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oWYUxi2zzA9o; Thu, 17 Sep 2020 20:19:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D2DC8721B;
	Thu, 17 Sep 2020 20:19:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2FB7D1BF37B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CB728772A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cCc7qjkHEBv5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A924587732
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
IronPort-SDR: OGItpGde25nhL6I2l/wZUok98egq9uMMEpvW1+sF8CU7C+U6SJFCaIIYSAlbayl+7TUERTtJ2O
 GMIe9KqgCOSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="160711588"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="160711588"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:19:14 -0700
IronPort-SDR: Zix0da1aLiMXEDfx5M2LQxjIVvQDPobN47u6LhZbZ2EitwK6TY01guW6Z6JdSPv2m1GOx5w/mb
 sy2GOK4XfnZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="508574697"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 17 Sep 2020 13:19:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Sep 2020 13:13:45 -0700
Message-Id: <20200917201347.81570-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S53 13/15] ice: silence static analysis
 warning
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

From: Bruce Allan <bruce.w.allan@intel.com>

sparse warns about cast to/from restricted types which is not
an actual problem; silence the warning.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_nvm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index dc0d82c844ad..0d1092cbc927 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -196,7 +196,7 @@ ice_read_sr_word_aq(struct ice_hw *hw, u16 offset, u16 *data)
 	 * Shadow RAM sector restrictions necessary when reading from the NVM.
 	 */
 	status = ice_read_flat_nvm(hw, offset * sizeof(u16), &bytes,
-				   (u8 *)&data_local, true);
+				   (__force u8 *)&data_local, true);
 	if (status)
 		return status;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
