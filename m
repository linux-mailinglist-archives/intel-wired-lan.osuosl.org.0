Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA6E48FE81
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Jan 2022 19:46:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A05EB60B61;
	Sun, 16 Jan 2022 18:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DzCO7h4r0Gdr; Sun, 16 Jan 2022 18:46:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A66B460777;
	Sun, 16 Jan 2022 18:46:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CFCB1BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jan 2022 18:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E5E50605A0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jan 2022 18:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lEAjPmk1T2Vp for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Jan 2022 18:46:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp.smtpout.orange.fr (smtp08.smtpout.orange.fr
 [80.12.242.130])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E5BE96058F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Jan 2022 18:46:32 +0000 (UTC)
Received: from pop-os.home ([90.126.236.122]) by smtp.orange.fr with ESMTPA
 id 9AXrnM977HZHJ9AXrn7KaY; Sun, 16 Jan 2022 19:46:30 +0100
X-ME-Helo: pop-os.home
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Sun, 16 Jan 2022 19:46:30 +0100
X-ME-IP: 90.126.236.122
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Shiraz Saleem <shiraz.saleem@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>
Date: Sun, 16 Jan 2022 19:46:20 +0100
Message-Id: <40c94af2f9140794351593047abc95ca65e4e576.1642358759.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ice: Don't use GFP_KERNEL in atomic
 context
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_misc_intr() is an irq handler. It should not sleep.

Use GFP_ATOMIC instead of GFP_KERNEL when allocating some memory.

Fixes: 348048e724a0 ("ice: Implement iidc operations")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
I've never played a lot with irq handler. My understanding is that they
should never sleep. So GFP_KERNEL must be avoided. So I guess that this
patch is correct.

However, I don't know if some special cases allow such allocation.
Any feedback/pointer to a good doc/explanation is welcome :)
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 30814435f779..65de01f3a504 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3018,7 +3018,7 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 		struct iidc_event *event;
 
 		ena_mask &= ~ICE_AUX_CRIT_ERR;
-		event = kzalloc(sizeof(*event), GFP_KERNEL);
+		event = kzalloc(sizeof(*event), GFP_ATOMIC);
 		if (event) {
 			set_bit(IIDC_EVENT_CRIT_ERR, event->type);
 			/* report the entire OICR value to AUX driver */
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
