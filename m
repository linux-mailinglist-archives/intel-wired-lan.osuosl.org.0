Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511FF3BCC71
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jul 2021 13:17:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4840403D9;
	Tue,  6 Jul 2021 11:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UwxVTKei7Cnz; Tue,  6 Jul 2021 11:17:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAC53402CF;
	Tue,  6 Jul 2021 11:17:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB47C1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 11:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99C6D40531
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 11:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V-RU_ClbaJLL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jul 2021 11:16:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9A4E4051D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 11:16:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 75E0061C6E;
 Tue,  6 Jul 2021 11:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625570212;
 bh=u0QFyRevTZr7p8yfLERK/B+mNVjUavYlRYsUcZXuM6s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hzP6/KfKbTHJJXQwOKWTvPwx/zisuA10C59fejN5PVXo/WssHoqkm6r/FA9Arl89l
 81LToiMacLTeCUl5SO1o0QI+93PG7w+0xTIJK4gEx61n+Bn3NnnoFjIuCZv/+3Z4aQ
 OWhGOjOlBFwDX76osFtXLgIdAQeIpUuHv7gH99lk5mQTXWAe4x2nD1XkkiTcgWx31h
 cSH6IV4jBk+NSawQRtTZtGH9B0tBa27FqOII0m0DSL3lD9UDZtCQzHDhvKmnWi/+5S
 kKcWdd7DBNq8du8LxRI5Q646ceAxs/5GZ5MUQtJPJo4L6UjxrpCeKM6/MebIYY/0yX
 ZBfuF1n1J6Yxw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue,  6 Jul 2021 07:13:01 -0400
Message-Id: <20210706111409.2058071-121-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706111409.2058071-1-sashal@kernel.org>
References: <20210706111409.2058071-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.13 121/189] ice: mark PTYPE 2 as
 reserved
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

[ Upstream commit 0c526d440f76676733cb470b454db9d5507a3a50 ]

The entry for PTYPE 2 in the ice_ptype_lkup table incorrectly states
that this is an L2 packet with no payload. According to the datasheet,
this PTYPE is actually unused and reserved.

Fix the lookup entry to indicate this is an unused entry that is
reserved.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Tony Brelinski <tonyx.brelinski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index fc3b56c13786..4238ab0433ee 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -630,7 +630,7 @@ static const struct ice_rx_ptype_decoded ice_ptype_lkup[] = {
 	/* L2 Packet types */
 	ICE_PTT_UNUSED_ENTRY(0),
 	ICE_PTT(1, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	ICE_PTT(2, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),
+	ICE_PTT_UNUSED_ENTRY(2),
 	ICE_PTT_UNUSED_ENTRY(3),
 	ICE_PTT_UNUSED_ENTRY(4),
 	ICE_PTT_UNUSED_ENTRY(5),
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
