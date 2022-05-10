Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 265095226C9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 00:21:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62B5281383;
	Tue, 10 May 2022 22:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i0C0aUXCaHH1; Tue, 10 May 2022 22:21:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 665BD80D6B;
	Tue, 10 May 2022 22:21:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8FD041BF302
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 02:58:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87CD2402E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 02:58:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dAx_5Hu1NvcI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 May 2022 02:58:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 05D3C40201
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 02:58:02 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id a11so13815498pff.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 May 2022 19:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=NZZ82RuTuLU0y4qSq6oZ1tvwJHTTQ/f+mHzydS1us5Y=;
 b=mRBr+CyEVHK15AsW4cOz4ozfjZAmFjblYgAmkKCw15ZhQpmKaiKVCASBFC5bK7Qh4A
 6vRNTMVYUfNKgMRGnuMwTuCivv58jRMd0Ev19tdiOpXz1BYmLJM54e6r3wav82IXAQhM
 3cLgM1G/3/R5cs5RuZfX75Ymu07slccwTyPF/hEg1SP7t7zEpz9UhY5Kic2XdXK83Hhp
 Ql6le4gX+TB+PyEDdKP3Q/xaBTUuaJEf5whflNXSsuYRIBEFuqwP39hDeEPVPf4CZdYW
 3BGcmVe+vQstmiua5QzDqfcAzrxl6WKdU1Lx7qK+mcDVYuwm7wX6TcHYCU5Kmg6PzXrK
 tS0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NZZ82RuTuLU0y4qSq6oZ1tvwJHTTQ/f+mHzydS1us5Y=;
 b=zYLSOEwwOrvET+LHIVKeHiph8jcgRu9HQweoGMXkXS3ixYLZCKUAJIMTkBwW9Rmx6o
 vbcItV7Y5yJjV1j8GXmGTG5/qZu0TO7WxCAf1p2/d0e93LAP3Tj3T0ml/PTB6/ZowAsw
 ugW+CZ0mpbvnzU+fROHB6Yh3SUcgEW5+MxueoGojxdba4POB+IMqUYxqr2C7/Qdwq/tu
 K6LUEB57BxKDQxbiSp823xKKH1IMlTXlIfF2cU0ByRb2P+cxIQBAMhf9Em36z9zXC2Vd
 3MkAHUMD9r4Rs0U5IcNQVskYU0Pa41hkZNEwdE5Cto4rF7kjQQZQCCqBA82V7a6KCidm
 DHqg==
X-Gm-Message-State: AOAM531nqRJWGZiy9+w9/okxWnsGTBBu97vfAq5QfyeOofa4DEuhOxGn
 zHAvdy5q5LazuaqW+NNqHNY=
X-Google-Smtp-Source: ABdhPJzYihZv7mlkMJA7ZbDkWql/wlgvhE+WWQ0e8yZEgpgkYD522wD0F5eOKp0JK2pDnAIe1sUWfg==
X-Received: by 2002:a63:2002:0:b0:3c6:ae77:1869 with SMTP id
 g2-20020a632002000000b003c6ae771869mr7242455pgg.71.1652151482419; 
 Mon, 09 May 2022 19:58:02 -0700 (PDT)
Received: from localhost.localdomain ([23.91.97.158])
 by smtp.gmail.com with ESMTPSA id
 a206-20020a621ad7000000b0050dc762813dsm9356304pfa.23.2022.05.09.19.57.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 May 2022 19:58:02 -0700 (PDT)
From: xiaolinkui <xiaolinkui@gmail.com>
X-Google-Original-From: xiaolinkui <xiaolinkui@kylinos.cn>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Tue, 10 May 2022 10:57:55 +0800
Message-Id: <20220510025755.19047-1-xiaolinkui@kylinos.cn>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Tue, 10 May 2022 22:21:17 +0000
Subject: [Intel-wired-lan] [PATCH] igb: Convert a series of if statements to
 switch case
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
Cc: netdev@vger.kernel.org, Linkui Xiao <xiaolinkui@kylinos.cn>,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Linkui Xiao<xiaolinkui@kylinos.cn>

Convert a series of if statements that handle different events to
a switch case statement to simplify the code.

Signed-off-by: Linkui Xiao<xiaolinkui@kylinos.cn>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 34b33b21e0dc..4ce0718eeff6 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4588,13 +4588,17 @@ static inline void igb_set_vf_vlan_strip(struct igb_adapter *adapter,
 	struct e1000_hw *hw = &adapter->hw;
 	u32 val, reg;
 
-	if (hw->mac.type < e1000_82576)
+	switch (hw->mac.type) {
+	case e1000_undefined:
+	case e1000_82575:
 		return;
-
-	if (hw->mac.type == e1000_i350)
+	case e1000_i350:
 		reg = E1000_DVMOLR(vfn);
-	else
+		break;
+	default:
 		reg = E1000_VMOLR(vfn);
+		break;
+	}
 
 	val = rd32(reg);
 	if (enable)
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
