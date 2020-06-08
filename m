Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D787F1F2285
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 01:09:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7F1D72262E;
	Mon,  8 Jun 2020 23:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uk9V7E6WRxVU; Mon,  8 Jun 2020 23:09:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F0261221F0;
	Mon,  8 Jun 2020 23:09:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03A381BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:09:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EA92721509
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wOCXnj43xrjr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 23:09:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A4C3204FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:09:27 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 483BC208B8;
 Mon,  8 Jun 2020 23:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657767;
 bh=gIPMWsm4ABPCize5QULWOmfap6esL9krjFHVmOk7eLw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jb97ttQrecBOA4dUUzSc+83oiF7UcGx3ZHKsIsaqpptNpzD5XMGrZkf+pst+Xt6ro
 6i5TvtUjwkNmVVh6wy1blMQ88xD1IosG+09xAise72ejAk/h7u9fsI62akxWQZJFft
 H9oMwVQS0mEKCPIADQ73yGdUyvZwGGFgyEh1SP4Q=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  8 Jun 2020 19:04:04 -0400
Message-Id: <20200608230607.3361041-151-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.7 151/274] ice: Fix error return
 code in ice_add_prof()
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
Cc: Sasha Levin <sashal@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Wei Yongjun <weiyongjun1@huawei.com>, "David S . Miller" <davem@davemloft.net>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wei Yongjun <weiyongjun1@huawei.com>

[ Upstream commit f8d530ac29fe9248f5e58ca5bcf4c368f8393ccf ]

Fix to return a error code from the error handling case
instead of 0, as done elsewhere in this function.

Fixes: 31ad4e4ee1e4 ("ice: Allocate flow profile")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 42bac3ec5526..e7a2671222d2 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -2962,8 +2962,10 @@ ice_add_prof(struct ice_hw *hw, enum ice_block blk, u64 id, u8 ptypes[],
 
 	/* add profile info */
 	prof = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*prof), GFP_KERNEL);
-	if (!prof)
+	if (!prof) {
+		status = ICE_ERR_NO_MEMORY;
 		goto err_ice_add_prof;
+	}
 
 	prof->profile_cookie = id;
 	prof->prof_id = prof_id;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
