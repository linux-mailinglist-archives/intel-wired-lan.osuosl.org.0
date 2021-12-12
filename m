Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E24AD4731C7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 17:28:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 834B76F489;
	Mon, 13 Dec 2021 16:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bsDC4L-HBeII; Mon, 13 Dec 2021 16:27:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E2B06F486;
	Mon, 13 Dec 2021 16:27:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 283171BF303
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Dec 2021 08:18:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0AC4940153
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Dec 2021 08:18:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VNR20dHCSQeL for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Dec 2021 08:18:04 +0000 (UTC)
X-Greylist: delayed 00:07:31 by SQLgrey-1.8.0
Received: from smtpbg587.qq.com (smtpbg587.qq.com [113.96.223.105])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 406AA400AB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Dec 2021 08:18:02 +0000 (UTC)
X-QQ-mid: bizesmtp38t1639296604t6oikcmj
Received: from localhost.localdomain (unknown [182.132.179.213])
 by esmtp6.qq.com (ESMTP) with 
 id ; Sun, 12 Dec 2021 16:10:03 +0800 (CST)
X-QQ-SSF: 01000000002000D0I000B00A0000000
X-QQ-FEAT: hR9GyqeohShUxdW3mu+7fFAfGUyr+SlNqYGhRsPHYYX+MvQr7svU16nMkacwm
 UX4FTtuY62WwOpkG5weoNDC86skft94YO6j4y8r9s1FfzkqIVyb4/iBY+S9OtDXqcOhNV5Q
 i43V+gGfdKfIZby9LjvPL5JklvmivqFs4z/iP4Dfj2Q1w1MOq7QabNV1HUzD3/EngasyYX7
 KxVdzHKSWQMOSTkgv33/47INDZvLERMUt/pHlGOa9Nkys8gkKwlhhYIfOl1r6lCVhUQHoXJ
 ku4lnYxoAaqzjNjBGLV30bm4fjEVeaCdfOY+D6IavdFpxs6UNWALkoJ005v09N8gJyRGpD7
 bkabWgBe4G4vnzPBHMSyMLQBHOsAbG4PxGFVRcKxX/c1GnwDCM=
X-QQ-GoodBg: 0
From: Jason Wang <wangborong@cdjrlc.com>
To: kuba@kernel.org
Date: Sun, 12 Dec 2021 16:10:01 +0800
Message-Id: <20211212081001.368126-1-wangborong@cdjrlc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybgspam:qybgspam3
X-Mailman-Approved-At: Mon, 13 Dec 2021 16:27:34 +0000
Subject: [Intel-wired-lan] [PATCH] iavf: remove an unneeded variable
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
 Jason Wang <wangborong@cdjrlc.com>, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The variable `ret_code' used for returning is never changed in function
`iavf_shutdown_adminq'. So that it can be removed and just return its
initial value 0 at the end of `iavf_shutdown_adminq' function.

Signed-off-by: Jason Wang <wangborong@cdjrlc.com>
---
 drivers/net/ethernet/intel/iavf/iavf_adminq.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_adminq.c b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
index 9fa3fa99b4c2..cd4e6a22d0f9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_adminq.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_adminq.c
@@ -551,15 +551,13 @@ enum iavf_status iavf_init_adminq(struct iavf_hw *hw)
  **/
 enum iavf_status iavf_shutdown_adminq(struct iavf_hw *hw)
 {
-	enum iavf_status ret_code = 0;
-
 	if (iavf_check_asq_alive(hw))
 		iavf_aq_queue_shutdown(hw, true);
 
 	iavf_shutdown_asq(hw);
 	iavf_shutdown_arq(hw);
 
-	return ret_code;
+	return 0;
 }
 
 /**
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
