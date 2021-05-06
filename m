Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 384F63757E6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 May 2021 17:50:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A942405DC;
	Thu,  6 May 2021 15:50:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y5-jRvlxqBt7; Thu,  6 May 2021 15:50:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59202405CC;
	Thu,  6 May 2021 15:50:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 559D21C1187
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F8A940613
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TgQjiJiMkR9B for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 May 2021 15:50:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 70214405CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:38 +0000 (UTC)
IronPort-SDR: +teuDzfwP/1DspCQVR7cCW+AGqxSr//3XJHLCP92oJrOOtqs0SuWho7RfdF0tLf6EYdeK6mP4b
 MkKH4ge+pqSQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="219389324"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="219389324"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 08:50:35 -0700
IronPort-SDR: QVtoeUBbOn9+CklZx3dIHVLj+52zfGfgkbb0Z6Ramlt2M84NB2qBZ+d52/z5trzq9hiL5DePOb
 ls6E07ju5G0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="459369482"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2021 08:50:35 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 May 2021 08:40:00 -0700
Message-Id: <20210506154008.12880-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S59 05/13] ice: (re)initialize NVM fields
 when rebuilding
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

After performing a flash update, a device EMP reset may occur. This
reset will cause the newly downloaded firmware to be initialized. When
this happens, the driver still reports the previous NVM version
information.

This is because the NVM versions are cached within the hw structure.
This can be confusing, as the new firmware is in fact running in this
case.

Handle this by calling ice_init_nvm when rebuilding the driver state.
This will update the flash version information and ensures that the
current values are displayed when reporting the NVM versions to the
stack.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9ae9197c12a9..a7c359335cb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6151,6 +6151,12 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ice_clear_pxe_mode(hw);
 
+	ret = ice_init_nvm(hw);
+	if (ret) {
+		dev_err(dev, "ice_init_nvm failed %s\n", ice_stat_str(ret));
+		goto err_init_ctrlq;
+	}
+
 	ret = ice_get_caps(hw);
 	if (ret) {
 		dev_err(dev, "ice_get_caps failed %s\n", ice_stat_str(ret));
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
