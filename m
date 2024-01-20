Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5645F833581
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Jan 2024 18:33:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70BAF40A62;
	Sat, 20 Jan 2024 17:33:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70BAF40A62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705772006;
	bh=wFri96r10IYTNO8+N94yIYZtcJHCQ7p90QlQKgXP2zQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LlZebxZ8KsoDi8cNy/FYEIOoBedsURgFGCUqiCRyAZlCKqqe6wXOwL3xZqWSjofG7
	 5KoLM/eVvg035/dNNt0Tn2IMALDBjoeAU+lnQ27KrMBarmqHFu7fBt8kHAJwF/99yE
	 11WonS+KBTZGJvPY5EdCgXGOdI08nd3UDHIUVWPNS0vz43pUhTU3ad588WJI6WWhtU
	 1EIlt9a8ba1yVsz/ac6wxV+S2KpicialUPxuQGR+FPw8AW1hZn2kfz7xjVfHGK1rjW
	 sQAJ36gYlcEbdUAE0ooTYuzovCw7a6YT75+xlI8ZocvXlxP2o4AOkz84yDKXbY+oDJ
	 e7wPp7fjq78IA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJ8w_hILDxOl; Sat, 20 Jan 2024 17:33:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43DAF40A53;
	Sat, 20 Jan 2024 17:33:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43DAF40A53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C5591BF31E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 17:33:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6DDC060757
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 17:33:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DDC060757
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rH2f9DClFnw7 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Jan 2024 17:33:18 +0000 (UTC)
X-Greylist: delayed 451 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 20 Jan 2024 17:33:18 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CC6B60740
Received: from smtp.smtpout.orange.fr (smtp-22.smtpout.orange.fr
 [80.12.242.22])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CC6B60740
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 17:33:18 +0000 (UTC)
Received: from fedora.home ([92.140.202.140]) by smtp.orange.fr with ESMTPA
 id RF6DrefClXxngRF6DrrUj2; Sat, 20 Jan 2024 18:25:44 +0100
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 20 Jan 2024 18:25:44 +0100
X-ME-IP: 92.140.202.140
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Mark Rustad <mark.d.rustad@intel.com>
Date: Sat, 20 Jan 2024 18:25:36 +0100
Message-ID: <d39bbffb8817499cc2ae636cdef3b9c1eba59618.1705771534.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wanadoo.fr; s=t20230301; t=1705771544;
 bh=wFri96r10IYTNO8+N94yIYZtcJHCQ7p90QlQKgXP2zQ=;
 h=From:To:Cc:Subject:Date;
 b=m47oR2wFqaPhS795diQSgtuX4Cry1l/u1GV8fdwbAzJKCPH2sO5yOU2uBSFK/sZw0
 WtqVMmILCibiJMHFb9G1XAXukYgkby0Qz0a2znFeu77RdNH3Vg2lRqIMr5q+pQNDsh
 4ZND9BAePxKXF0TK+RQMZwpst4WWC6lgIaSiGlBfJ0uph6p0iEcnI1jWy5CJUASCZA
 weMAHL4HFdfiy0tx9tJfjxAn+BwcZMSrwciEamrwCBgxJu+mRLbgBGNXXhzRzUqDS0
 FA+9pgNY9P8agJN9FOXVj4HcfcTcM+9hWujZkh6+00HqAIe1b320aV91k6xiDgQ+xu
 wx8zSB/kq4eQw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr
 header.a=rsa-sha256 header.s=t20230301 header.b=m47oR2wF
Subject: [Intel-wired-lan] [PATCH] ixgbe: Fix an error handling path in
 ixgbe_read_iosf_sb_reg_x550()
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

All error handling paths, except this one, go to 'out' where
release_swfw_sync() is called.
This call balances the acquire_swfw_sync() call done at the beginning of
the function.

Branch to the error handling path in order to correctly release some
resources in case of error.

Fixes: ae14a1d8e104 ("ixgbe: Fix IOSF SB access issues")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
This patch is speculative, review with care.
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index 6208923e29a2..c1adc94a5a65 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -716,7 +716,8 @@ static s32 ixgbe_read_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
 	if ((command & IXGBE_SB_IOSF_CTRL_RESP_STAT_MASK) != 0) {
 		error = FIELD_GET(IXGBE_SB_IOSF_CTRL_CMPL_ERR_MASK, command);
 		hw_dbg(hw, "Failed to read, error %x\n", error);
-		return -EIO;
+		ret = -EIO;
+		goto out;
 	}
 
 	if (!ret)
-- 
2.43.0

