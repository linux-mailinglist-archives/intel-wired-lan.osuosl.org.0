Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4168C33E312
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 01:56:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3626839DC;
	Wed, 17 Mar 2021 00:56:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b8TKhORfMs9i; Wed, 17 Mar 2021 00:56:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAA208385D;
	Wed, 17 Mar 2021 00:56:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B50141BF393
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:55:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A44788385D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:55:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sch8nBo-6_Ov for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 00:55:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D960283857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 00:55:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id AAE9764F9F;
 Wed, 17 Mar 2021 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615942554;
 bh=VWVsVUMY3SUNNZG6xwnbldaWKxsDHqWx8i0e/+hCGnw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YuQnZAx66zlKO2YBRrbPDjPKvL/fRR94Skguy++x8ah+fpLeKX9v/8CY7bLogEG0C
 Nx88Th3W+P1DdD6mXMmj2jJbbWe7RZP4T6ths9Q9yOy81IZuT5dFRDw+Y7AImnHThd
 ymFLS7n4VetUBAT7V8gaqpfDn7xBvcdNBnhl/eJQ/mgHsgwolNuOBUsmSw3Rs8r9eT
 TcTeLcArEe4Ha25fcmeoFrs4ovcShNQP7AIkR9/RITGKBa3IKDlrNyvykFj+y6yqF+
 25kTTrvmzh1l9kuOZkaQ8SnYhHWJdG35prvkNhwfYIWXgPt3Rv/o/R7WGlfBFQl8HA
 kcfd8RHOl+tRQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Tue, 16 Mar 2021 20:54:48 -0400
Message-Id: <20210317005536.724046-14-sashal@kernel.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210317005536.724046-1-sashal@kernel.org>
References: <20210317005536.724046-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.11 14/61] net: intel: iavf: fix
 error return code of iavf_init_get_resources()
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
 Jia-Ju Bai <baijiaju1990@gmail.com>, intel-wired-lan@lists.osuosl.org,
 TOTE Robot <oslab@tsinghua.edu.cn>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jia-Ju Bai <baijiaju1990@gmail.com>

[ Upstream commit 6650d31f21b8a0043613ae0a4a2e42e49dc20b2d ]

When iavf_process_config() fails, no error return code of
iavf_init_get_resources() is assigned.
To fix this bug, err is assigned with the return value of
iavf_process_config(), and then err is checked.

Reported-by: TOTE Robot <oslab@tsinghua.edu.cn>
Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 0a867d64d467..dc5b3c06d1e0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1776,7 +1776,8 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
 		goto err_alloc;
 	}
 
-	if (iavf_process_config(adapter))
+	err = iavf_process_config(adapter);
+	if (err)
 		goto err_alloc;
 	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 
-- 
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
