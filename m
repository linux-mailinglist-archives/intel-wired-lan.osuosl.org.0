Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B83A62C45C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 17:27:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3C1B60F9F;
	Wed, 16 Nov 2022 16:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3C1B60F9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668616029;
	bh=N2oexHNSb0GlENhK46R0IaAEFOG+OGQO0s5C3lfXOos=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=eHi02/R49hwTDHHuBT3AIj1IpwJEo6m1yFCisNsy9mafxzsR7s2PCAot/B43yj+aB
	 Xz/J/Zgdmp3yCpSCIUIkEXYVj0+NrZQDzEKF93NitMQtW1uZ91R8y8OLkCthndqRk9
	 gbifyfdygVEVoaW2+hL7cbZSk4I07QPt7yWta/vlVaGwHIFuPe3jpRiUJkoV2er9OJ
	 gm30AKoQnkR4PdcPXgW4ymfxILx6izhZeTNkxj10hsMp5tL/gYn8+5vEhNbLWXCv0F
	 uPjNRE2ZxHkjwjYOz4n0EpgVMZav0JQQudhV28qZVMsjtuoQ3PnhBGmyZmHiiovqlv
	 rzhEWnzFPC3uQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MakbCoXtSqQM; Wed, 16 Nov 2022 16:27:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB86560808;
	Wed, 16 Nov 2022 16:27:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB86560808
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C3961BF576
 for <intel-wired-lan@osuosl.org>; Wed, 16 Nov 2022 12:29:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CF084049E
 for <intel-wired-lan@osuosl.org>; Wed, 16 Nov 2022 12:29:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CF084049E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hw1MfcvY4hAg for <intel-wired-lan@osuosl.org>;
 Wed, 16 Nov 2022 12:29:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E91E0402A7
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E91E0402A7
 for <intel-wired-lan@osuosl.org>; Wed, 16 Nov 2022 12:29:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="300059685"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="300059685"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 04:29:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="641626856"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="641626856"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 16 Nov 2022 04:29:44 -0800
Received: from vecna.. (vecna.igk.intel.com [10.123.220.17])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2AGCThCB025791; Wed, 16 Nov 2022 12:29:44 GMT
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 16 Nov 2022 13:20:32 +0100
Message-Id: <20221116122032.969666-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 16 Nov 2022 16:26:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668601787; x=1700137787;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hMRemBd9Z0hxgWDLG1Z8eWMrFzJx3kAuquUpZCYu7WM=;
 b=UiGYgdgixsOp8XCextlw8sbdaJNiLPxTFVqX908qatADX69IFspj54U8
 4jfrmNUm5WqmzV3xcZ+1eKz10AvU0oBkae+UhZGWXxk5kaIDUcyvsP39l
 i17nNOAGKw7PruwXSW7iQDG4mTmDZSqowyBY8ROxykZJ5TTXyKQ+UtGEe
 d2JrjSuvYpTXg/TeuxNYynwJCbq5BMlbXXN69H7zwqwuRu5WLEAyNKEvo
 fKAguNKiOr8nWVNqaqllhsFXxtSkzCtxytrBZX36XhZw15aTuW+lTVH9U
 QZSNUsPBjRRr68+d181Oh1xD4JTZqZWZRBLZzXgQdyRrazwKXja5k3jNu
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UiGYgdgi
Subject: [Intel-wired-lan] [PATCH net-next] ice: remove redundant non-null
 check in ice_setup_pf_sw()
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

Remove a redundant null check, as vsi could not be null at this point.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 962b791e3ac7..b2d35d7e9d49 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3786,13 +3786,11 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 unroll_napi_add:
 	ice_tc_indir_block_unregister(vsi);
 unroll_cfg_netdev:
-	if (vsi) {
-		ice_napi_del(vsi);
-		if (vsi->netdev) {
-			clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
-			free_netdev(vsi->netdev);
-			vsi->netdev = NULL;
-		}
+	ice_napi_del(vsi);
+	if (vsi->netdev) {
+		clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
+		free_netdev(vsi->netdev);
+		vsi->netdev = NULL;
 	}
 
 unroll_vsi_setup:
-- 
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
