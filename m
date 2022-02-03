Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C564B4A83BB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 13:22:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA948416BA;
	Thu,  3 Feb 2022 12:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EAt8KqXOqp47; Thu,  3 Feb 2022 12:22:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E922B41651;
	Thu,  3 Feb 2022 12:21:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5019F1BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 12:21:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 465174018E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 12:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Vr07XG8N_qG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 12:21:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5050A40116
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 12:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643890914; x=1675426914;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NDeigjQlXbUwGHWQKyDi7LiptARwEqT4udK6oWp34vM=;
 b=f0iZqtJDF4sgxVXCXwzRt7YxIUfaSuAkfzaIgkimTxNeP10Km7b8YqQi
 nhYovVHVogv3io3WBkTbK3Eugrz/tp6XOkgrXchlEdsD4LGPoXY34hi1Y
 B9CymGeoaQl76jJ3+PRYPnilk8x47xOAwiVYNZJmnxw76TSzjIdymbRBp
 sSC9q3xKDltMdXUg1J5fbb8aYj4pKp1BbxZKl2n9q4I+JN93jSMu/l9bo
 EOBwOc3R7ehnu8UiNwjwLWVCM2CM9goRKh/g0YzOVGh9OoA8tCXlFxoUc
 mtdrsoDFtr7gkz4S70Ns51FC70D316qYxgQ0gHfDXGDBmaH8XLhj99PbQ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="247897961"
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="247897961"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 04:21:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="535186096"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.57])
 by fmsmga007.fm.intel.com with ESMTP; 03 Feb 2022 04:21:52 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Feb 2022 14:21:49 +0200
Message-Id: <20220203122149.3298840-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Correct NVM checksum
 verification flow
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
Cc: Thomas Bogendoerfer <tbogendoerfer@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Update MAC type check e1000_pch_tgp because for e1000_pch_cnp,
NVM checksum update is still possible.
Emit a more detailed warning message.

Bugzilla: https://bugzilla.opensuse.org/show_bug.cgi?id=1191663
Fixes: 4051f68318ca ("e1000e: Do not take care about recovery NVM checksum")
Reported-by: Thomas Bogendoerfer <tbogendoerfer@suse.de>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index e298da712758..d60e2016d03c 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -4140,9 +4140,9 @@ static s32 e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
 		return ret_val;
 
 	if (!(data & valid_csum_mask)) {
-		e_dbg("NVM Checksum Invalid\n");
+		e_dbg("NVM Checksum valid bit not set\n");
 
-		if (hw->mac.type < e1000_pch_cnp) {
+		if (hw->mac.type < e1000_pch_tgp) {
 			data |= valid_csum_mask;
 			ret_val = e1000_write_nvm(hw, word, 1, &data);
 			if (ret_val)
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
