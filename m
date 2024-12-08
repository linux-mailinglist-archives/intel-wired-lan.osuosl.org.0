Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 288F29E875F
	for <lists+intel-wired-lan@lfdr.de>; Sun,  8 Dec 2024 19:50:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3F4680DE3;
	Sun,  8 Dec 2024 18:50:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FiepUzF9mLvL; Sun,  8 Dec 2024 18:50:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B214C80DE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733683829;
	bh=Pprlwk4H8fus0mZ0KjoURwKrFvoO/43ERt9bckqWA4o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RLkrjBtZ14IeC5+pmDj4FNBYU8KU4P0c6Qw/MMTlt8Ye5DE5/l30VHM8pdO734Ycb
	 xhr6z3U3wmRso4VQgzicuziYZ8w5LP5z3cSvKwSXAHSajzxRquPsaAkmmNdKpMenDJ
	 37PDtjuIwnb4qhT4jiCNNYSoYgQmuIeIBv5Gfcav+sre/A+g4mzyS+4qixxoHHjDdS
	 PFOGHp6AGqaKMAZRbg5lMxzwFqe2+hlip8X/hRMF5p09U9uAads+RwNm2HaW+/oYw6
	 pBMHTuRIN8rDtR85jcNAJHKrLEIFJ4vlsyCoqYavev0d6+clBTiO1SYFK6GKtVEwFM
	 R6kLCeQBjT6Ng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B214C80DE6;
	Sun,  8 Dec 2024 18:50:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B035ED2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Dec 2024 18:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1BF5B400AC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Dec 2024 18:50:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DGKqlsNQZUwO for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Dec 2024 18:50:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.113;
 helo=mx03lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E1F9F4013B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E1F9F4013B
Received: from mx03lb.world4you.com (mx03lb.world4you.com [81.19.149.113])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E1F9F4013B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Dec 2024 18:50:25 +0000 (UTC)
Received: from [88.117.62.55] (helo=hornet.engleder.at)
 by mx03lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1tKMMF-0000000034x-3P6Q; Sun, 08 Dec 2024 19:50:21 +0100
From: Gerhard Engleder <gerhard@engleder-embedded.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Gerhard Engleder <eg@keba.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Sun,  8 Dec 2024 19:49:50 +0100
Message-Id: <20241208184950.8281-1-gerhard@engleder-embedded.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AV-Do-Run: Yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pprlwk4H8fus0mZ0KjoURwKrFvoO/43ERt9bckqWA4o=; b=iC+QNjvXc1bC1j0P/jv1gFGNfG
 zmoJc7wwoQyXBnZp02uFFlwCfPg0OLbcx5Qzy4iN+GVOPhyavJ6CJ44XNYfpZ8yuRzu+tFdXJR3rd
 OpoKa7hLUDdZWfeRiBA7rlDIWHjuNn1d+yUvjrgS1D8yuJlVtn88uWFVmvAWP4kWz32w=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=iC+QNjvX
Subject: [Intel-wired-lan] [PATCH iwl-next v2] e1000e: Fix real-time
 violations on link up
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Gerhard Engleder <eg@keba.com>

From: Gerhard Engleder <eg@keba.com>

Link down and up triggers update of MTA table. This update executes many
PCIe writes and a final flush. Thus, PCIe will be blocked until all writes
are flushed. As a result, DMA transfers of other targets suffer from delay
in the range of 50us. This results in timing violations on real-time
systems during link down and up of e1000e.

A flush after a low enough number of PCIe writes eliminates the delay
but also increases the time needed for MTA table update. The following
measurements were done on i3-2310E with e1000e for 128 MTA table entries:

Single flush after all writes: 106us
Flush after every write:       429us
Flush after every 2nd write:   266us
Flush after every 4th write:   180us
Flush after every 8th write:   141us
Flush after every 16th write:  121us

A flush after every 8th write delays the link up by 35us and the
negative impact to DMA transfers of other targets is still tolerable.

Execute a flush after every 8th write. This prevents overloading the
interconnect with posted writes.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: Vitaly Lifshits <vitaly.lifshits@intel.com>
Link: https://lore.kernel.org/netdev/f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch/T/
Signed-off-by: Gerhard Engleder <eg@keba.com>
---
v2:
- remove PREEMPT_RT dependency (Andrew Lunn, Przemek Kitszel)
---
 drivers/net/ethernet/intel/e1000e/mac.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
index d7df2a0ed629..7d1482a9effd 100644
--- a/drivers/net/ethernet/intel/e1000e/mac.c
+++ b/drivers/net/ethernet/intel/e1000e/mac.c
@@ -331,8 +331,13 @@ void e1000e_update_mc_addr_list_generic(struct e1000_hw *hw,
 	}
 
 	/* replace the entire MTA table */
-	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
+	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
 		E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, hw->mac.mta_shadow[i]);
+
+		/* do not queue up too many writes */
+		if ((i % 8) == 0 && i != 0)
+			e1e_flush();
+	}
 	e1e_flush();
 }
 
-- 
2.39.2

