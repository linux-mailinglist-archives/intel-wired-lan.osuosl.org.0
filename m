Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 176EF221B8B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 06:49:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B2E9487D3C;
	Thu, 16 Jul 2020 04:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vIiAFVvBLusR; Thu, 16 Jul 2020 04:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB38587D51;
	Thu, 16 Jul 2020 04:49:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F4671BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 04:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0AC0687D36
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 04:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fPIKuMtKp7UA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 04:49:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4F73487D32
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 04:49:44 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id 80so4394504qko.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 21:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n811LGQ+Fs+fBe93hqpRgAF7EkTTe3DB3wlxhpthHDw=;
 b=SN1EWsentgIHscCjmZscmE4hUCVQR/1YxFOEaA2X4eJyYCgfDw76RB4yTMxi1W8jHk
 tVP1TH55qedN4ibmS3LTkcIguB97sohxrNr7aJ8i5Skd8MGRMvtbsA4qvfH9yjsoxMY2
 BslrqZzF7cvqBNWz+ym7AASewM3JMVymzxgwMiZiwfLTaEop5kzr3kRal3cbWIwxUFQz
 ED7ZgyiI9scdVeqLvZWEZe/dpojv8rszJv6NRUlGBP7ZaPqLpelGMlvNV+YBESb1h1jk
 qxbatPUQkxME556vz4b9YinXKvUniS8GTOcZLo0Z+/dy3wr7nMOkf6eE4asa3vcI38x0
 Tu9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n811LGQ+Fs+fBe93hqpRgAF7EkTTe3DB3wlxhpthHDw=;
 b=dd+jgbu7Y4CHGFZpoNa+N2Jv3mEWQD5gmrgLWU67bQunZUp9D75PV+1WQ0LzOS6VGj
 JZDH5op2oOe/IJGU7sX9cviSGl8WxWXBOv8Y40UnNKMuMC/PXD2hu1ZnGv3Kvr3c1SFW
 nQYkPjOK1/HmFPhHMQx6EJ4ZiqeQevtQnzb/R8U39V4BFBx0+5W030LkEoxiVPxGrsnN
 PnZK24fQ1lkb6PjekwIZl1mIAErFuG+6kVoNQYwOyRs4ZisMJhqBBh89D7pVMc3qk4BM
 k1JMd3FmnPnOPdeF39Stk/jfu614ZaLiK89Y0EneDrKhd39xd23jS1RfAztOogcfK+gJ
 LyuA==
X-Gm-Message-State: AOAM5337ViNSgGdzYqhfK7e/URerXFjpCMaZjoR86cOg6Mpb7XkY+sqm
 CVEtiylqeuqlvnrgPXPoqT0=
X-Google-Smtp-Source: ABdhPJxBhHumFvG6aGwTPxpSidimNXkf7fv044wp4/GTzx2Yec4tK844YQU6nCh0L0QPTxx2qBsEow==
X-Received: by 2002:a05:620a:91b:: with SMTP id
 v27mr2143475qkv.499.1594874983094; 
 Wed, 15 Jul 2020 21:49:43 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
 by smtp.gmail.com with ESMTPSA id 16sm5606381qkn.106.2020.07.15.21.49.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jul 2020 21:49:42 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Wed, 15 Jul 2020 21:49:34 -0700
Message-Id: <20200716044934.152364-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Subject: [Intel-wired-lan] [PATCH] igc: Do not use link uninitialized in
 igc_check_for_copper_link
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Clang warns:

drivers/net/ethernet/intel/igc/igc_mac.c:374:6: warning: variable 'link'
is used uninitialized whenever 'if' condition is true
[-Wsometimes-uninitialized]
        if (!mac->get_link_status) {
            ^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/igc/igc_mac.c:424:33: note: uninitialized use
occurs here
        ret_val = igc_set_ltr_i225(hw, link);
                                       ^~~~
drivers/net/ethernet/intel/igc/igc_mac.c:374:2: note: remove the 'if' if
its condition is always false
        if (!mac->get_link_status) {
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/igc/igc_mac.c:367:11: note: initialize the
variable 'link' to silence this warning
        bool link;
                 ^
                  = 0
1 warning generated.

It is not wrong, link is only uninitialized after this through
igc_phy_has_link. Presumably, if we skip the majority of this function
when get_link_status is false, we should skip calling igc_set_ltr_i225
as well. Just directly return 0 in this case, rather than bothering with
adding another label or initializing link in the if statement.

Fixes: 707abf069548 ("igc: Add initial LTR support")
Link: https://github.com/ClangBuiltLinux/linux/issues/1095
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/intel/igc/igc_mac.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
index b47e7b0a6398..26e3c56a4a8b 100644
--- a/drivers/net/ethernet/intel/igc/igc_mac.c
+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
@@ -371,10 +371,8 @@ s32 igc_check_for_copper_link(struct igc_hw *hw)
 	 * get_link_status flag is set upon receiving a Link Status
 	 * Change or Rx Sequence Error interrupt.
 	 */
-	if (!mac->get_link_status) {
-		ret_val = 0;
-		goto out;
-	}
+	if (!mac->get_link_status)
+		return 0;
 
 	/* First we want to see if the MII Status Register reports
 	 * link.  If so, then we want to get the current speed/duplex

base-commit: ca0e494af5edb59002665bf12871e94b4163a257
-- 
2.28.0.rc0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
