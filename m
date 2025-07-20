Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9A2B0B47D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Jul 2025 11:11:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6679F611A1;
	Sun, 20 Jul 2025 09:11:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZzqFz_HgI8AI; Sun, 20 Jul 2025 09:11:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF7A361499
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753002699;
	bh=Rt9sbSI84k+hriqQ4Yv6ukeqAyVbcIdSlA7NkaxNd1E=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JoLhMZb2Z/ofdip0FiFaxhib+JH0ZSLIWhBuDCCtNfpNCJwe9quqSjepcP23bnoSR
	 +TbktiEFw4pjsqjQ7U5EFNIw9nsfQ0EXoV+eRl+3MlsufemBSv5vRtH/u6dPPh9Nop
	 RppJTbFdoI7rBoQL+hl0IsVQZMMSY13whuUYVx+9FrARuMcEb9R9r64TwkYLLubUOd
	 5PUuhwBhpglRMWOWRz+cPWxlj/sl9afxy7wpRL+mptmh9lPh9p0L8WdF/EEh5MMGpb
	 42t80uv1NV6Nr4zHIvHuFrrzJdweA8ftpKa/8l2xGHe3eDSFeHCGtBte1qJpKd2ipk
	 DkDLmsyyosYEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF7A361499;
	Sun, 20 Jul 2025 09:11:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 46A69DA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3820D81F0C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ShuKDE3uRjvF for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Jul 2025 09:11:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42f; helo=mail-pf1-x42f.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9C5DE81ED9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C5DE81ED9
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C5DE81ED9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:37 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-74b56b1d301so2246076b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 02:11:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753002697; x=1753607497;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Rt9sbSI84k+hriqQ4Yv6ukeqAyVbcIdSlA7NkaxNd1E=;
 b=iwaZI+bSzWTCK7Zk/9ldt9tc3u6XBRyoagL5heFbJmNtapW6EfCSN1tUwCPDhscCxr
 066qqojb/90YIG5hunhiZV1bVULwybNMNhAJ1rhcHVx7EEUBp2X9TApzP2KCQOsNIU1G
 laIpWkizSRphgLeKWfKJrACQCXYkK2J2q1m8gYf0hk3tPf7nshEZqX0EwfFt38zqMbmt
 bxknWLWBoGdlAFDHE8K01u6FDmj69MESy+Ngc5fWGjMU4vYHlw4VRg0GF8OehJlr/YdI
 2mLHV8RS7XXEc8LKfQs5bwqL4A2EP5LCWYMas5GDLF10D/0zJP7UvpGOqfqiFk1MNCpb
 BiOg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWLTH2GfIPBtbt4Y+EOj2ATAoUJqcaw/B8+2shndiaj81CycGlGm7r3oicmwj+YGwY9VtNbubLd/HVNokhop94=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzFRoH6IgK05gAySMQLpaJ5gWIXpDIynkb+ySqJPXqJbj+HXUii
 VlvQRW5PkK9KodT+yYXzubKs6Vy0W3Pj4m7Ngp/vQ437E9jIZBSyZIpp
X-Gm-Gg: ASbGncscyMC9uVd7WzWZcRcnzn3iZXtHCf+GFqwDDyEj1OTu75KgWIrf+u8bsNeuZ21
 8g60TKKeSobJ6IiFbXMT8luRcXy5/4Rscqppig1OzvTGYHTLYdN/8fWIc8GRpPSdORYt15ImxWa
 84ctTsEEF4QQ49z9E9l4eZGqBgPcot6kpGkXRoZgEA1AJdSboOc7OMQm8ZpW6XFNH6cEtq1RM5R
 xgRMCkwep7L5sTS/klnMh0dDIRvVwAIzPZOcGz5Wpv45+F0KlTXGmE81XSV/V02g8QNY0IzJaYi
 L5G+FQ1pFL1L62O3jeQ+zKWJtnUBL+y3jqJZLfMyTRSQ5fSLS5LmIY53lewHbBJDe3FpJWsB5x0
 9BtkiVpGe3KedBuy4awiKvT3EB8RMBn64vZJql2v4x3AwWkdB6oTRDbW234c=
X-Google-Smtp-Source: AGHT+IE1nwxPPLoq731AChr7kpARPbWq+izW7FIXX6nSxuCyYB+jHt/5I11t6TB2f0G51tM6hDiVXQ==
X-Received: by 2002:a05:6a00:1795:b0:74e:aba0:6dfd with SMTP id
 d2e1a72fcca58-75723165609mr19294085b3a.10.1753002696663; 
 Sun, 20 Jul 2025 02:11:36 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.24.59])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-759cb76d53fsm3902585b3a.105.2025.07.20.02.11.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Jul 2025 02:11:36 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com
Cc: bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Date: Sun, 20 Jul 2025 17:11:19 +0800
Message-Id: <20250720091123.474-2-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250720091123.474-1-kerneljasonxing@gmail.com>
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753002697; x=1753607497; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Rt9sbSI84k+hriqQ4Yv6ukeqAyVbcIdSlA7NkaxNd1E=;
 b=ULVlgzfFbO+4x9K1/2Lw+7RU26jlLvR9yAbJnn8Cksf5pDh5aQYfAwb1E+as4h6Tsb
 kxENgw9NXetEOmEVhISU1RXRKEDr8d+ugGwOKx0I3RYu2Id79hTtr+j8YpedO/6u6vJo
 DPCht43Fu+GxMUCyDElNiU5YZkzwwylUx/SpqAq/e3tcfxTS/sLq6Bsv4kzKrJO2czp9
 sSWuTDHguDI4mvsFImSAs4oQYCMiSzcVRl2GYGlstnDKZvKDp1SnoLJiMBqJ7kB8ENo3
 AvFLtnfvstRgGqVA8NmWQI3VqBYzeK1uTW2JdyT0yL8+JyTU40+AgAbGyRBH5JkRaeqG
 CoaA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=ULVlgzfF
Subject: [Intel-wired-lan] [PATCH net-next 1/5] ixgbe: xsk: remove budget
 from ixgbe_clean_xdp_tx_irq
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

From: Jason Xing <kernelxing@tencent.com>

Since 'budget' parameter in ixgbe_clean_xdp_tx_irq() takes no effect,
the patch removes it. No functional change here.

Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c        | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c         | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 6122a0abb41f..a59fd8f74b5e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -3591,7 +3591,7 @@ int ixgbe_poll(struct napi_struct *napi, int budget)
 
 	ixgbe_for_each_ring(ring, q_vector->tx) {
 		bool wd = ring->xsk_pool ?
-			  ixgbe_clean_xdp_tx_irq(q_vector, ring, budget) :
+			  ixgbe_clean_xdp_tx_irq(q_vector, ring) :
 			  ixgbe_clean_tx_irq(q_vector, ring, budget);
 
 		if (!wd)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
index 78deea5ec536..788722fe527a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
@@ -42,7 +42,7 @@ int ixgbe_clean_rx_irq_zc(struct ixgbe_q_vector *q_vector,
 			  const int budget);
 void ixgbe_xsk_clean_rx_ring(struct ixgbe_ring *rx_ring);
 bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
-			    struct ixgbe_ring *tx_ring, int napi_budget);
+			    struct ixgbe_ring *tx_ring);
 int ixgbe_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
 void ixgbe_xsk_clean_tx_ring(struct ixgbe_ring *tx_ring);
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index ac58964b2f08..0ade15058d98 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -454,7 +454,7 @@ static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
 }
 
 bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
-			    struct ixgbe_ring *tx_ring, int napi_budget)
+			    struct ixgbe_ring *tx_ring)
 {
 	u16 ntc = tx_ring->next_to_clean, ntu = tx_ring->next_to_use;
 	unsigned int total_packets = 0, total_bytes = 0;
-- 
2.41.3

