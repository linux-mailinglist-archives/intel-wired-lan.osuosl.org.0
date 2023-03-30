Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 964F56D02E2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 13:18:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2972C40424;
	Thu, 30 Mar 2023 11:18:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2972C40424
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680175081;
	bh=or71tlsh7b5dA8eQRRGhowyapMt7ggEwVc5bEglwuMc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AB5KeK3zRAOPraxc0pSFisCB7IZEos62YMp2a93ffrIaS6cgVYb/8J49Ct877G7xN
	 jeNpHNAGfydGQ0HIV79X2+DnwCOYIZE/8HVlUyoxiDWwPZTXX3unPeiZPRvdWU5ZGk
	 mhWqdKJYtbwAHQTeVogM6QdkmwJAQjSXaBUhDQVh3LvUIyuR1FiQn2TqPRGKGEIl7B
	 FTewvVqsk4U7ZehobcXQPprP+PJJoPI+blfLzGwwcXlbsCyDIs0+f9WQXXM6uCfIO+
	 1ccEhpMDK/q2LJ4GSGh/AB1ewFa2jKjYJj0wiwXbfCZF01ZOgCQKFDqXlGI/k/5C0X
	 lFPCXTaRp4q6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b4dBiILYlInD; Thu, 30 Mar 2023 11:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F0E240376;
	Thu, 30 Mar 2023 11:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F0E240376
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4AB761BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 11:17:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E88441FA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 11:17:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E88441FA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aIcd-g1jVuAg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 11:17:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CEFE41FA1
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CEFE41FA1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 11:17:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="343592459"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="343592459"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 04:17:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="661960460"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="661960460"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga006.jf.intel.com with ESMTP; 30 Mar 2023 04:17:47 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anthony.l.nguyen@intel.com
Date: Thu, 30 Mar 2023 13:17:46 +0200
Message-Id: <20230330111746.3809394-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680175069; x=1711711069;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XzSuNgBx3Qtsy5izdlPxSRzZYur4phmuOSLeUv5LhrE=;
 b=ID3HHP7TgyuqrZ4hSOV96MDzO+H9vvCp8iPNO5M36Z9PzjgR1W4viDDA
 iRK6j2w6LQ66NaUgp7t8bsEEH8flvWGS4q8GM7EhnqEjjcUWQX5QBHRGp
 sTxjb3O6zpj3abpB4z4ldomi98kPN8LyjF9BEq9EF56s83HZvRGUNp/1T
 0YYtNYfXcmrSZq8Rntm/EOtWOUmTuYL8dvR4H4o2u1p9KnwKJnGZ/c7oM
 Y3Zs46KOvd9A17GHLOYre8r/46jFmuIwdeiUDJmi+tB3Z81khCk1ML3d6
 G3i9MsaOfPo6rYbfm02zo9sgtZZFOBm88ku3ZOtVPLQMRbCy50f8FTQPj
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ID3HHP7T
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Limit expression passed to
 kzalloc() to 1280 bytes
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

Add buff_size limit of 1280 bytes as big enough for user input value.

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
