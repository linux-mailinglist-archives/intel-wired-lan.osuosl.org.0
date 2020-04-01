Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A52519AAEA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Apr 2020 13:38:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3AFCF85C95;
	Wed,  1 Apr 2020 11:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cn71ZimIdKsn; Wed,  1 Apr 2020 11:38:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3209E84693;
	Wed,  1 Apr 2020 11:38:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B74DD1BF484
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 11:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AB66E87F81
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 11:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uUJ27EUd7BWW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2020 11:38:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 33E6F87F3F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2020 11:38:46 +0000 (UTC)
IronPort-SDR: 1aKhDJb7Aq3do7oyxGO4nB9lnqTnAvLbWu+nDdCkJrEQX9Fj7iQE9hjrO9MPWqwaQdWPFYWCRg
 h5+XsD7UOD6g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 04:38:45 -0700
IronPort-SDR: mDi5vkWwvep0t3vGLFa4w4fiR3Wvz0YspDSzK8sgRyccVOSV1VYtqxeYylrYoDg2azA1bqL6uh
 ROLnamqhUM4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,331,1580803200"; d="scan'208";a="449145218"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga005.fm.intel.com with ESMTP; 01 Apr 2020 04:38:45 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  1 Apr 2020 14:38:44 +0300
Message-Id: <20200401113844.17969-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up obsolete NVM defines
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Packet buffer allocation, reserved word and pointer guard
not applicable for i225 parts.
This patch comes to clean up these obsolete defines

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index dd0c86ce09ed..eda4510dd90e 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -163,11 +163,6 @@
 
 /* For checksumming, the sum of all words in the NVM should equal 0xBABA. */
 #define NVM_SUM				0xBABA
-
-#define NVM_PBA_OFFSET_0		8
-#define NVM_PBA_OFFSET_1		9
-#define NVM_RESERVED_WORD		0xFFFF
-#define NVM_PBA_PTR_GUARD		0xFAFA
 #define NVM_WORD_SIZE_BASE_SHIFT	6
 
 /* Collision related configuration parameters */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
