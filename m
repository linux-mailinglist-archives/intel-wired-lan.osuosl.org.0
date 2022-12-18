Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1999865008B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Dec 2022 17:17:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3CBA81432;
	Sun, 18 Dec 2022 16:16:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3CBA81432
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671380219;
	bh=31LYitE2iL0W4k2MM/S0+eh8E8w4wyfKwKG7Cr67m+s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i5i0cGbQSxiZno7AfJi3evfy409MNi+dMdGK8Zih9EVr1EUcdDhjcdLTJjGN2xVRv
	 IyCZguvxJMXOibWve4ptqIE7Wq6K7y/P9lznRIUb9f1fwiqI5YyXVingSlBP/iGuTb
	 MCx0YxM2/K9JUI0/Hnj5cIybkCY9HESGxh3TdIEUx2Ji+0TXgYoKzKrKU6DcXQFd6i
	 dE/wlERbRR/s7hHItLlzlfOj15uWEuDI/sCqLVuptag3lAxflNB+VjK/fsd8BuVJ3D
	 zs6q948pyCEED26IV+7w86ykcka9NCbYOXfEkYE+lABkZ1znRC1qFigg8o5U2VNL46
	 +9+zzN0vuj/lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LpoeOR-02GFh; Sun, 18 Dec 2022 16:16:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B140C81420;
	Sun, 18 Dec 2022 16:16:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B140C81420
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4CF641BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Dec 2022 16:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34835607E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Dec 2022 16:16:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34835607E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J9dqn1LCdn4h for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Dec 2022 16:16:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A8EA605A9
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A8EA605A9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Dec 2022 16:16:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C9FC460DB4;
 Sun, 18 Dec 2022 16:16:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9B59C433EF;
 Sun, 18 Dec 2022 16:16:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 18 Dec 2022 11:15:33 -0500
Message-Id: <20221218161559.932604-13-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221218161559.932604-1-sashal@kernel.org>
References: <20221218161559.932604-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671380212;
 bh=sE4hrr5Z9y8FJNwHZ0rPPc/HvQ6jdCGqKbBbYo6socc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qceLxy8YdYcV1A/FgcwOzFupt32rnAJCyu0cQAdFRop/mlGtWCu0ZY+ZR9CzJaXpv
 E7i/BtAsOIYZPOpJwa6a0MTg9a6J2AulhgKXKA3/cZcry/JJ7GUhItoHfkyopNZCXP
 kr0/lU/6xrMkvCElEbkqsIMuzVloqUUUY20HSo4M++p33fOZienV/HAXo5fCxzIFFn
 e0M10UQNWj2qpu7hHsV2ThC+xrk1HGbUlUoNv8AlfvSQmwgmgHwn/3xisSU56IljSC
 HBSyHrX2FcmI5cZK5apoENZ3r2x3BBo7hqc+1cVx+de8XzC6B6s9J3R/Dl3Sof9E70
 zcphrpmVtNJpg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=qceLxy8Y
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.10 13/39] igb: Do not free
 q_vector unless new one was allocated
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
Cc: Sasha Levin <sashal@kernel.org>, Kees Cook <keescook@chromium.org>,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "Michael J . Ruhl" <michael.j.ruhl@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kees Cook <keescook@chromium.org>

[ Upstream commit 0668716506ca66f90d395f36ccdaebc3e0e84801 ]

Avoid potential use-after-free condition under memory pressure. If the
kzalloc() fails, q_vector will be freed but left in the original
adapter->q_vector[v_idx] array position.

Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 327196d15a6a..eed8274f5f79 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1204,8 +1204,12 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
 	if (!q_vector) {
 		q_vector = kzalloc(size, GFP_KERNEL);
 	} else if (size > ksize(q_vector)) {
-		kfree_rcu(q_vector, rcu);
-		q_vector = kzalloc(size, GFP_KERNEL);
+		struct igb_q_vector *new_q_vector;
+
+		new_q_vector = kzalloc(size, GFP_KERNEL);
+		if (new_q_vector)
+			kfree_rcu(q_vector, rcu);
+		q_vector = new_q_vector;
 	} else {
 		memset(q_vector, 0, size);
 	}
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
