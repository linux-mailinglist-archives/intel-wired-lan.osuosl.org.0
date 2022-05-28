Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0B5539175
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 15:09:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11E5741C47;
	Tue, 31 May 2022 13:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mKyBcKRodI9V; Tue, 31 May 2022 13:09:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3E9E41C3D;
	Tue, 31 May 2022 13:09:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EAF1C1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 May 2022 12:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8EA23405CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 May 2022 12:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BhwizmxE6Mlj for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 May 2022 12:33:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 52594405EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 May 2022 12:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653741194; x=1685277194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OSPAZxxv37pqTzJAcaSeIjrOLXfsZ/RNRjVK/H4Q9KI=;
 b=LSzJhwnYjQ8PVPxaXKead+NGds5aZXfLlJy0tp9Luw1DmI2t4yXsadro
 Mrd8ezYgXtoc5SC1qNI3lLSNpkznJr7RMUWwpetbneFSJLdA/EdtdTVTU
 e5ZttJqcQn/QyrPENIgxL9/KVAV5ZJTp08LCkaeINlcwHHvysTaxBmIFC
 YP2R3J+rooh5B2Na2M97//aAwa2g0NU5BoYZmLK3zlHFgOjYiujrpEQqL
 ysSpPjjzYazkAi979TAI5uq6d+XazvV2WUAQVff+w5dARVhbqwgjZj5TF
 EQajrmza/Mc56WFTh2lLGsvrZ9zeJIJccIqQ/i5gSSrst26LaLFP6uz+H A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="262287042"
X-IronPort-AV: E=Sophos;i="5.91,258,1647327600"; d="scan'208";a="262287042"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2022 05:33:11 -0700
X-IronPort-AV: E=Sophos;i="5.91,258,1647327600"; d="scan'208";a="604391834"
Received: from unknown (HELO jiaqingz-server.sh.intel.com) ([10.239.48.171])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2022 05:33:10 -0700
From: Jiaqing Zhao <jiaqing.zhao@linux.intel.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Sat, 28 May 2022 20:31:21 +0800
Message-Id: <20220528123123.1851519-2-jiaqing.zhao@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220528123123.1851519-1-jiaqing.zhao@linux.intel.com>
References: <20220528123123.1851519-1-jiaqing.zhao@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 31 May 2022 13:08:44 +0000
Subject: [Intel-wired-lan] [PATCH 1/3] e1000: Fix typos in comments
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
Cc: Jiaqing Zhao <jiaqing.zhao@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

"VLAN filter" was misspelled as "VLAN filer" in some comments.

Signed-off-by: Jiaqing Zhao <jiaqing.zhao@linux.intel.com>
---
 drivers/net/ethernet/intel/e1000/e1000_hw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
index 1042e79a1397..f8860f24ede0 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
@@ -4376,7 +4376,7 @@ void e1000_rar_set(struct e1000_hw *hw, u8 *addr, u32 index)
 /**
  * e1000_write_vfta - Writes a value to the specified offset in the VLAN filter table.
  * @hw: Struct containing variables accessed by shared code
- * @offset: Offset in VLAN filer table to write
+ * @offset: Offset in VLAN filter table to write
  * @value: Value to write into VLAN filter table
  */
 void e1000_write_vfta(struct e1000_hw *hw, u32 offset, u32 value)
@@ -4396,7 +4396,7 @@ void e1000_write_vfta(struct e1000_hw *hw, u32 offset, u32 value)
 }
 
 /**
- * e1000_clear_vfta - Clears the VLAN filer table
+ * e1000_clear_vfta - Clears the VLAN filter table
  * @hw: Struct containing variables accessed by shared code
  */
 static void e1000_clear_vfta(struct e1000_hw *hw)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
