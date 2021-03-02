Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F2232A930
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:22:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7CC0B4EB91;
	Tue,  2 Mar 2021 18:22:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b9zBv9yvh8uf; Tue,  2 Mar 2021 18:22:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6D8E4EA77;
	Tue,  2 Mar 2021 18:22:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 202961BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98D82606B6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q-8Mu7I1nCfl for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:21:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F4EF606C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:21:49 +0000 (UTC)
IronPort-SDR: FezOaVIPZwdASUlITGKW+w6T4NzAqdUDrkzf2DxDBD2lkqAL+XXLC8YL66G/OBk7jIy15TIysF
 JKEkIxYNt9Tg==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="166813976"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="166813976"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:21:48 -0800
IronPort-SDR: 9dQ5u5XTsAEbObq8z5yoRQr5oka2ve55UUT8XmSvvG/kcRZQ6lOJF9xF9J7cMUICYFCINZ5oE1
 Hwd09NmBWM6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="369051174"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga006.jf.intel.com with ESMTP; 02 Mar 2021 10:21:45 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:12:09 -0800
Message-Id: <20210302181213.51718-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S55 10/14] ice: Check for bail out
 condition early
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

Check for bail out condition before calling ice_aq_sff_eeprom

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d6a9fd912971..26a7be2f7193 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3958,14 +3958,14 @@ ice_get_module_eeprom(struct net_device *netdev,
 	u8 value = 0;
 	u8 page = 0;
 
-	status = ice_aq_sff_eeprom(hw, 0, addr, offset, page, 0,
-				   &value, 1, 0, NULL);
-	if (status)
-		return -EIO;
-
 	if (!ee || !ee->len || !data)
 		return -EINVAL;
 
+	status = ice_aq_sff_eeprom(hw, 0, addr, offset, page, 0, &value, 1, 0,
+				   NULL);
+	if (status)
+		return -EIO;
+
 	if (value == ICE_MODULE_TYPE_SFP)
 		is_sfp = true;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
