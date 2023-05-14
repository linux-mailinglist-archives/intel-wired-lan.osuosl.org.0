Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541C3703139
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 17:13:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E295541D73;
	Mon, 15 May 2023 15:13:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E295541D73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684163582;
	bh=6Il0ka2fJU5IVgVIyTxuFfkKouQRvA5cvYR+BcvGi4I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zNOYIqQ7IMYV8IXG4FEUV5/fK9KJnh4mbbhXSJl/wTGEt/Bvv6Ysv9vEQmJCLkpDM
	 wcaISVhbnaLIcWZxTDMPhsDx5yEoEwUxrPeEt6IO65ctVToYntdTr5xhsZaS21QYH4
	 oKDKpmyBrbAK3ziKtXx4WkI0Wq2hvK4go0V7BFBH8cLcaw27sNwAZcmxRO6wTEb0sf
	 7Fhnb0jMtRdGBRCI+8QiwLo0kt4uMSP+l1OcUXrojApoxfAafH/BrM6tdMy3XyPB+e
	 0/fb8PPompAPCMasWxNSsvzL0QI5yAx84Qn6kcK+xQWP/s7AxTeJGBaWavlLVX4Ldc
	 94N6rALO24L8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WxRgvNyXdc66; Mon, 15 May 2023 15:13:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE50C404A8;
	Mon, 15 May 2023 15:13:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE50C404A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4DCE1BF41D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 09:35:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A927A40586
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 09:35:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A927A40586
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o9-4mfmL3K_g for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 May 2023 09:35:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CE694013C
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6CE694013C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 09:35:34 +0000 (UTC)
Received: by air.basealt.ru (Postfix, from userid 490)
 id 51F532F2022E; Sun, 14 May 2023 09:35:31 +0000 (UTC)
Received: from localhost.localdomain (unknown [176.59.56.94])
 by air.basealt.ru (Postfix) with ESMTPSA id 484C52F20227;
 Sun, 14 May 2023 09:35:27 +0000 (UTC)
From: kovalev@altlinux.org
To: kovalev@altlinux.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 sasha.neftin@intel.com, jeffrey.t.kirsher@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Sun, 14 May 2023 12:34:28 +0300
Message-Id: <20230514093428.113471-1-kovalev@altlinux.org>
X-Mailer: git-send-email 2.33.6
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 15 May 2023 15:12:52 +0000
Subject: [Intel-wired-lan] [PATCH] e1000e: Add "cnp" PCH boards to the
 packet loss fixing workaround
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

From: Vasiliy Kovalev <kovalev@altlinux.org>

Add CannonLake and some Comet Lake Client Platform into the range
of workaround for packet loss issue.

Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=217436
Fixes: 639e298f432fb0 ("e1000e: Fix packet loss on Tiger Lake and later")
Signed-off-by: Vasiliy Kovalev <kovalev@altlinux.org>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 9466f65a6da77..e233a0b93bcf1 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -4875,7 +4875,7 @@ static s32 e1000_init_hw_ich8lan(struct e1000_hw *hw)
 	/* Enable workaround for packet loss issue on TGP PCH
 	 * Do not gate DMA clock from the modPHY block
 	 */
-	if (mac->type >= e1000_pch_tgp) {
+	if (mac->type >= e1000_pch_cnp) {
 		fflt_dbg = er32(FFLT_DBG);
 		fflt_dbg |= E1000_FFLT_DBG_DONT_GATE_WAKE_DMA_CLK;
 		ew32(FFLT_DBG, fflt_dbg);
-- 
2.33.6

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
