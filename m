Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F99A7FDEEA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 18:56:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 003B741BCD;
	Wed, 29 Nov 2023 17:56:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 003B741BCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701280582;
	bh=oPlfRAfJJbHY6gpbx3DBbGM0xopjaJvRzKCZjGlvrlg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=L03mmgOIFSg253ZZxtY8OZScpYFbDGfC2HCHppCF++WlL+wWzNwOXygbCbwCae83L
	 I/FCGODlI4l3rJHX+MuueWJYh2bZ1f7cvwrLGXc+vPRr5r7T32dXOy8zH7m4MCbUeT
	 SFBsJDutjMbvqW0FvqOzb+JAfmrPhInILXcI6AQd+fsJSE2+mBmxeiH0Po9rHF26m6
	 gbYwWxZE2xwCQD+e7L5ujni95gy1dq0Rx4is5b7TVo57xXy+tyl8QCf7XYUWjpo5hC
	 aDR+YjboFc4DXa65d0qULU1ExjyirYt0GVBF2O7wSpq4IbJaxxsAzS9thtaETx9USv
	 SpBD5wU749Pyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JXWEkPxh3Xbq; Wed, 29 Nov 2023 17:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC48841BBF;
	Wed, 29 Nov 2023 17:56:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC48841BBF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0A3F1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 17:56:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 97EF0821ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 17:56:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97EF0821ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4dFOHMFxMiTt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 17:56:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0134D821E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 17:56:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0134D821E3
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="479404727"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="479404727"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 09:56:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="797990593"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="797990593"
Received: from sbahadur1-bxdsw.sj.intel.com ([10.232.237.139])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 09:56:13 -0800
From: Sachin Bahadur <sachin.bahadur@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Nov 2023 09:56:04 -0800
Message-Id: <20231129175604.1374020-1-sachin.bahadur@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701280574; x=1732816574;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cfyFMyY66E8uYlmk8SQXuQsg3lTBZ8/i8g/y5BK0ZXE=;
 b=jtQC21zVjcPEVrhlqTxNl/WnupNBIZiw1wPIoTHa18/kUcG7asXOXSJA
 HzZFx/JdZLZr5KU6keFFqSF7XqiHihaqeSVXEqDeXwKeNOvTj055XWJ0Z
 ML3RnSunpVmRw/w40t6grk0pl7QV2ZA6M7OO64bluccrYIL163Y6Y5HaF
 Du9eFjLWY2sGEt32ajP+W2KKpllwq5ZwyR4kJ5aI05AXriQ87vF6x9lgX
 tjNWAjWf45BtAz2DmgX27ALH0Ay2gW7vOQp9PUfUw5MJrp0TF9n8KiRq9
 lqaDjmCxpNbMwQhjMbEhizSDogT/9tSto7euIj3d5TAtSYZD3oNyqlDI+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jtQC21zV
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Print NIC FW version
 during init
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Print NIC FW version during PF initialization. FW version in dmesg is used
to identify and isolate issues. Particularly useful when dmesg is read
after reboot.

Example log from dmesg:
ice 0000:ca:00.0: fw 6.2.9 api 1.7.9 nvm 3.32 0x8000d83e 1.3146.0

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Pawel Kaminski <pawel.kaminski@intel.com>
Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>
---
v1->v2: Added example log message
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1f159b4362ec..71d3d8cfdd1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4568,6 +4568,12 @@ static int ice_init_dev(struct ice_pf *pf)
 		dev_err(dev, "ice_init_hw failed: %d\n", err);
 		return err;
 	}
+	dev_info(dev, "fw %u.%u.%u api %u.%u.%u nvm %u.%u 0x%08x %u.%u.%u\n",
+		 hw->fw_maj_ver, hw->fw_min_ver, hw->fw_patch, hw->api_maj_ver,
+		 hw->api_min_ver, hw->api_patch, hw->flash.nvm.major,
+		 hw->flash.nvm.minor, hw->flash.nvm.eetrack,
+		 hw->flash.orom.major, hw->flash.orom.build,
+		 hw->flash.orom.patch);

 	/* Some cards require longer initialization times
 	 * due to necessity of loading FW from an external source.
--
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
