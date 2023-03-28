Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 280226CB62A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Mar 2023 07:41:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB675417C3;
	Tue, 28 Mar 2023 05:41:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB675417C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679982081;
	bh=7dBmnNXaTRWO7uwolZBGaghoQUCVzL6P9tsz2B4rQVw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OeduezpdkD12ayNikPwGxUuRpw7+TnFa/HmrMsR/ywgsXfH4L5iEidEDyFNhxU+cU
	 RXe3VXrjc6j8D6bFW54/B4slmF3m7OB+0NPDrS5k94EBnQkxMnUe1yyG0ze3ZQrXzV
	 he97CpXv+YNO+WVXzBDtdFKIrLsauOT5AVZBlACC9iSVTKt5P91+SWLadMD5m5y+be
	 66igoO4ujutQRne9Sx+ioUE91csYBpW5xMIVYRYqRQX3nqdzfsBm5DEosyfT2oPfsY
	 Vuma46uROQqg8AyCvVdWh3aF0DKmxSIji5O7sNw/24gTvNgzugOK0SuBvG5KOzfv7Q
	 QwaPavnQ+2jUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BQIQFBerH0sj; Tue, 28 Mar 2023 05:41:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF724417B7;
	Tue, 28 Mar 2023 05:41:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF724417B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DC121BF32A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 05:41:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 163BD8213D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 05:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 163BD8213D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dnZtOJS4EK9B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Mar 2023 05:41:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA51D82133
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA51D82133
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 05:41:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="405412251"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="405412251"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 22:41:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="661063645"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="661063645"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga006.jf.intel.com with ESMTP; 27 Mar 2023 22:41:12 -0700
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anthony.l.nguyen@intel.com
Date: Tue, 28 Mar 2023 07:41:11 +0200
Message-Id: <20230328054111.803638-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679982073; x=1711518073;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8d5RmNoGL2KYcKKUwXl+Bj+Dt0ONVVaLevb1Cn36T4s=;
 b=GpTYu/r9jZv0G7crLxxL9Agyea1gbO6zNM6IGHsOhtARZ3+6E8ztx6DL
 NCIuEVGeE6VNDZXaZ2FLyKfKz+L4wdTYWY600J9CDn8RuGPHct5RoMH5m
 GN4+XG5OYz47lUPhiw6ebcdXd2YF1d+WpnNa6l90ym4xBK9E63AwGn8J1
 3LRiduzs2VG35/Bhc/iBPnOZY104jYaLpDSoUcgaX7qaqlKyNk4sSQ+Gq
 FM/2RWs3VtnReYwvZWRvUnTzoNlHTjrjXEj5ehvFB3xSQgOiybhQtBtes
 sJ+2IHMAY6DSRBoPNGnXpwmeW+9UfuNknW+mQjAbY7o796iSwtOlkCGyG
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GpTYu/r9
Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix passing tainted
 expression to kzalloc()
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Add buff_size limit of 1280 bytes for user input value.

Fixes: f1143c4b0f60 ("i40e: Expose AQ debugfs hooks")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index c9dcd6d..b10d00d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -1356,7 +1356,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 			goto command_write_done;
 		}
 		/* Just stub a buffer big enough in case user messed up */
-		if (buffer_len == 0)
+		if (buffer_len == 0 || buffer_len > 1280)
 			buffer_len = 1280;
 
 		buff = kzalloc(buffer_len, GFP_KERNEL);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
