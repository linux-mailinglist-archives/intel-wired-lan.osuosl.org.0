Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E27BE6500F6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Dec 2022 17:22:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F50C8142A;
	Sun, 18 Dec 2022 16:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F50C8142A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671380549;
	bh=sG3O1nMEz0jr8+uqLq+6/R4B7zhdLJk+Jbr9n0zCHsY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uHt2zLVjZTMV/pBaE7Jyy/eFYS3+PF5xEk07pbo/ihhSQNbyCIr4wUvHd8mn7T9+t
	 LrjHUrHwObF6V2Vv0xCLkghyg60NEvNOAWLo9axLcp8KCcwfAW4ikdwGrnT7P671c7
	 aLVhW4hX8FEBGY23/IZT3yNMIxprl2A4JvwC866Zkxwxo/YTUFbxy/+H4on733CcBk
	 Vr3Ync0+tAEidyFjD9xZHdhNX0fc4vv8ZGX6Rrc7vblNRFTgcm3e51FUGdFSzaWan3
	 gLzQM6/m/kpjGiqKsVokvMns9Bx6zI1Efbmco8LGEfLXbGOfoveXz6D2csC1vxWmcj
	 NbU6TCtkfwOoQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VmMwaxgRNtqD; Sun, 18 Dec 2022 16:22:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CC3080A75;
	Sun, 18 Dec 2022 16:22:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CC3080A75
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C31A81BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Dec 2022 16:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A8AF4408E0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Dec 2022 16:22:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8AF4408E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zUsZJy_8igYO for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Dec 2022 16:22:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43A88408DF
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 43A88408DF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Dec 2022 16:22:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7DD55B80BA8;
 Sun, 18 Dec 2022 16:22:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE39BC43396;
 Sun, 18 Dec 2022 16:22:17 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 18 Dec 2022 11:21:35 -0500
Message-Id: <20221218162149.935047-9-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221218162149.935047-1-sashal@kernel.org>
References: <20221218162149.935047-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671380539;
 bh=ss7Jzd+qhr9tDpAcXvBK6qFIh6LX8OCkZ4cy/gZ+eAs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZpO+5RiRG0EpYODL7wv/89CHpHOlM/hJ9q0jD8V6C90UflvIv5S8ans2Qzgb69dHE
 eqV6SWudlQnU+72JcWGeafUlrRxsD72rYt/Ebq7k2Bu1F+mGNW5Dw8rWBnS3N2gSBJ
 HCqJvhh777tenegVvh+i1Ukx2XgFOp4HC/jW1qpbXwPSf/2Z0K1tnIabj/yi4uoVr1
 Ah1VmZd8V1OxNw/ic5Fxexq1SbIQ7OkehB1lJhDgsKOc6DrX0cqMiihAedXp+xiKnE
 Ler3SDOPkbi9J5Qr7d8dwbFYSoShTd2oDxs2DErYAwAMoM7YfpFo3kXmmY8KYwVGOr
 +ltPI08uaOf6A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZpO+5RiR
Subject: [Intel-wired-lan] [PATCH AUTOSEL 4.14 09/23] igb: Do not free
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
index 82f1960c6c19..6bdd81a11445 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1222,8 +1222,12 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
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
