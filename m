Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B291699AD73
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 22:25:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CA3960A8C;
	Fri, 11 Oct 2024 20:25:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lJYKgxA_3t_D; Fri, 11 Oct 2024 20:25:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EE2C60AAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728678304;
	bh=ALLXedTczsskWYT8EyWguub+TKfvEY+dZAtEEz5BF6A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=go9YmUDEY8YfIMarSFPXcQd3p9v4Y8tBkzNlcPbTZ9KRYZxSlopkfkfArUbRRCghz
	 4wtgpVa5u8l7jS6KArj0EZKNf1VPZqpKtOxyzxNXr23JNq7n4APwZh33FzT/c6tuFm
	 6mpW8LTovM40TcJ+CU2ckAOdZMfMDsi6dW1QQIyAoRn293lH6Zgc2ybCQSHnorIP3R
	 7dWR9OKQC82gonABC/NMGXMdjp9tuQjfUCfXxxEMem9a3tCYH/ssDJyGPfvOeYjXgm
	 QgdzsQ7v2H3jng0bBpqbVgDdHTlEu2PjBgPHZdM52B45xhFpTmeFPanWGfGWC+x28J
	 C3U2sFP1tkgNg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EE2C60AAD;
	Fri, 11 Oct 2024 20:25:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 163A31BF354
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 20:25:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F3A7040822
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 20:25:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MaD_O0ZdUQId for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 20:25:02 +0000 (UTC)
X-Greylist: delayed 1831 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 11 Oct 2024 20:25:01 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 026F340811
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 026F340811
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.120;
 helo=mx10lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
Received: from mx10lb.world4you.com (mx10lb.world4you.com [81.19.149.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 026F340811
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 20:25:01 +0000 (UTC)
Received: from [88.117.56.173] (helo=hornet.engleder.at)
 by mx10lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1szLiQ-000000005uk-0ndw; Fri, 11 Oct 2024 21:54:22 +0200
From: Gerhard Engleder <gerhard@engleder-embedded.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Fri, 11 Oct 2024 21:54:12 +0200
Message-Id: <20241011195412.51804-1-gerhard@engleder-embedded.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AV-Do-Run: Yes
X-ACL-Warn: X-W4Y-Internal
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ALLXedTczsskWYT8EyWguub+TKfvEY+dZAtEEz5BF6A=; b=tmFZL+Mdx2UCrMPSH5SSONiv7C
 Wun4H9fmG2lzNzLGYknVliPJ7j8auJhJwzz7Vv3osQVtSqUCevRQbb6VaG+xB9qQ3+0nQdx8HA7rR
 rYu6P87NnnLjdupiwra907grmj4ub/yamTTGIRkH7RaaOXGL/bLCPaM3rZxebXXS30RE=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=tmFZL+Md
Subject: [Intel-wired-lan] [PATCH RFC net-next] e1000e: Fix real-time
 violations on link up
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
Cc: Gerhard Engleder <gerhard@engleder-embedded.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Gerhard Engleder <eg@keba.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Gerhard Engleder <eg@keba.com>

Link down and up triggers update of MTA table. This update executes many
PCIe writes and a final flush. Thus, PCIe will be blocked until all writes
are flushed. As a result, DMA transfers of other targets suffer from delay
in the range of 50us. The result are timing violations on real-time
systems during link down and up of e1000e.

Execute a flush after every single write. This prevents overloading the
interconnect with posted writes. As this also increases the time spent for
MTA table update considerable this change is limited to PREEMPT_RT.

Signed-off-by: Gerhard Engleder <eg@keba.com>
---
 drivers/net/ethernet/intel/e1000e/mac.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
index d7df2a0ed629..f4693d355886 100644
--- a/drivers/net/ethernet/intel/e1000e/mac.c
+++ b/drivers/net/ethernet/intel/e1000e/mac.c
@@ -331,9 +331,15 @@ void e1000e_update_mc_addr_list_generic(struct e1000_hw *hw,
 	}
 
 	/* replace the entire MTA table */
-	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
+	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
 		E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, hw->mac.mta_shadow[i]);
+#ifdef CONFIG_PREEMPT_RT
+		e1e_flush();
+#endif
+	}
+#ifndef CONFIG_PREEMPT_RT
 	e1e_flush();
+#endif
 }
 
 /**
-- 
2.39.2

