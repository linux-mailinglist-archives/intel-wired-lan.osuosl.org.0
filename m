Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 298542EC218
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jan 2021 18:27:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BCF8B87355;
	Wed,  6 Jan 2021 17:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0KrGcfRm+2Zv; Wed,  6 Jan 2021 17:27:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11B9987364;
	Wed,  6 Jan 2021 17:27:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65F1C1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 17:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 59CB2272DB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 17:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BfOfrZJca9Ua for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jan 2021 17:27:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 7109223492
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 17:27:10 +0000 (UTC)
IronPort-SDR: t7EA0im8Iu/AVewwvJYzodsW88jvjkUJ6zw2lQunjtPlLVavHeXYU6NSrUX1xUg9TIdfmtwFnI
 HA9a1u0Pzmag==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="156497522"
X-IronPort-AV: E=Sophos;i="5.79,327,1602572400"; d="scan'208";a="156497522"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 09:27:09 -0800
IronPort-SDR: mC9GggVO87rvQHXwpvn3g5mcQ2/4TYEhSKRHm0QnpKajaBZWLviw8yefTKALZjtMcP3oK9Uxli
 0BrYNBKLVK3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,327,1602572400"; d="scan'208";a="422238891"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga001.jf.intel.com with ESMTP; 06 Jan 2021 09:27:08 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Jan 2021 19:27:04 +0200
Message-Id: <20210106172704.3106880-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix TDBAL register show
 incorrect value
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
Cc: Gal Hammer <ghammer@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fixed a typo which caused the registers dump function to read the
RDBAL register when printing TDBAL register values.
_reg_dump method has been partially derived from i210 and have
same typo.

Suggested-by: Gal Hammer <ghammer@redhat.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_dump.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_dump.c b/drivers/net/ethernet/intel/igc/igc_dump.c
index 4b9ec7d0b727..495bed47ed0a 100644
--- a/drivers/net/ethernet/intel/igc/igc_dump.c
+++ b/drivers/net/ethernet/intel/igc/igc_dump.c
@@ -75,7 +75,7 @@ static void igc_regdump(struct igc_hw *hw, struct igc_reg_info *reginfo)
 		break;
 	case IGC_TDBAL(0):
 		for (n = 0; n < 4; n++)
-			regs[n] = rd32(IGC_RDBAL(n));
+			regs[n] = rd32(IGC_TDBAL(n));
 		break;
 	case IGC_TDBAH(0):
 		for (n = 0; n < 4; n++)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
