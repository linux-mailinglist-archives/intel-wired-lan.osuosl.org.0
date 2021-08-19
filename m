Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFEA3F21FE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 22:58:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 294EA613DC;
	Thu, 19 Aug 2021 20:58:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rq0l5uhDhJIA; Thu, 19 Aug 2021 20:58:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A3A9613DA;
	Thu, 19 Aug 2021 20:58:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE7B71BF297
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 20:57:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCB9B801DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 20:57:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CVqSAmMmJjSm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 20:57:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0366819F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 20:57:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="277669081"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="277669081"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 13:57:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="532656367"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga002.fm.intel.com with ESMTP; 19 Aug 2021 13:57:53 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 13:44:49 -0700
Message-Id: <20210819204449.14148-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] ice: do not abort devlink info if
 board identifier can't be found
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

From: Jacob Keller <jacob.e.keller@intel.com>

The devlink dev info command reports version information about the
device and firmware running on the board. This includes the "board.id"
field which is supposed to represent an identifier of the board design.
The ice driver uses the Product Board Assembly identifier for this.

In some cases, the PBA is not present in the NVM. If this happens,
devlink dev info will fail with an error. Instead, modify the
ice_info_pba function to just exit without filling in the context
buffer. This will cause the board.id field to be skipped. Log a dev_dbg
message in case someone wants to confirm why board.id is not showing up
for them.

Fixes: e961b679fb0b ("ice: add board identifier info to devlink .info_get")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
v2:
- Removed refactors - to be submitted later as separate patch to next-queue
- Changed 'PBA' to 'board identifier' in title
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index e9c66e99d92d..5a9aa8b26819 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -42,7 +42,9 @@ static int ice_info_pba(struct ice_pf *pf, struct ice_info_ctx *ctx)
 
 	status = ice_read_pba_string(hw, (u8 *)ctx->buf, sizeof(ctx->buf));
 	if (status)
-		return -EIO;
+		/* We failed to locate the PBA, so just skip this entry */
+		dev_dbg(ice_pf_to_dev(pf), "Failed to read Product Board Assembly string, status %s\n",
+			ice_stat_str(status));
 
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
