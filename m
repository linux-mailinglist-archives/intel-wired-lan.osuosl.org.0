Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9953BCD67
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jul 2021 13:20:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41503836F6;
	Tue,  6 Jul 2021 11:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ge6FJbcdVIJs; Tue,  6 Jul 2021 11:20:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55DE6830E6;
	Tue,  6 Jul 2021 11:20:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F2121BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 11:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C7B840555
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 11:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2o4OVAyWFK0b for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jul 2021 11:20:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8345F40548
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 11:20:39 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 586AA61D81;
 Tue,  6 Jul 2021 11:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625570439;
 bh=6mBsYhaKeX18KySfiOE6BvBBbZKWlt1Zm/r2GZXHrm8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dNMcE9k/wg0B7+VjmKnTi6kbOju7Rb8E1zT2AjijZqSh/m23T4hDM1D93sJryFHu2
 +dJoUV+3K/IoxkoZgLQmGCmbQTR41/CpsKUOoUEFv+y/eO95egYDyv800SZK+Ze279
 HksU1dqMmKpyxwmqv681UflDiYibEICuiOrg8LgRzscI5y0TWtyrVxOp2TtE7gU6Rk
 pADUa0zrcx6jjWVb1DxC6shU+wYdsOhewivVON0f/LGUgMJB4QTU6YqB0lAWVZlAzV
 Oq47Cp4MocI0JjviG6/GpztH+kr2sSh91YUBivkUTKu3+jEPfpj5AqGqs7d1w+Wfz1
 E+zz2bt8DTzBw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  6 Jul 2021 07:17:25 -0400
Message-Id: <20210706111827.2060499-99-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706111827.2060499-1-sashal@kernel.org>
References: <20210706111827.2060499-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.12 099/160] ice: fix incorrect
 payload indicator on PTYPE
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

[ Upstream commit 638a0c8c8861cb8a3b54203e632ea5dcc23d8ca5 ]

The entry for PTYPE 90 indicates that the payload is layer 3. This does
not match the specification in the datasheet which indicates the packet
is a MAC, IPv6, UDP packet, with a payload in layer 4.

Fix the lookup table to match the data sheet.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Tony Brelinski <tonyx.brelinski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 4ec24c3e813f..98a7f27c532b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -722,7 +722,7 @@ static const struct ice_rx_ptype_decoded ice_ptype_lkup[] = {
 	/* Non Tunneled IPv6 */
 	ICE_PTT(88, IP, IPV6, FRG, NONE, NONE, NOF, NONE, PAY3),
 	ICE_PTT(89, IP, IPV6, NOF, NONE, NONE, NOF, NONE, PAY3),
-	ICE_PTT(90, IP, IPV6, NOF, NONE, NONE, NOF, UDP,  PAY3),
+	ICE_PTT(90, IP, IPV6, NOF, NONE, NONE, NOF, UDP,  PAY4),
 	ICE_PTT_UNUSED_ENTRY(91),
 	ICE_PTT(92, IP, IPV6, NOF, NONE, NONE, NOF, TCP,  PAY4),
 	ICE_PTT(93, IP, IPV6, NOF, NONE, NONE, NOF, SCTP, PAY4),
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
