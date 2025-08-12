Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E89B21FF4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 09:55:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF05D6141B;
	Tue, 12 Aug 2025 07:55:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jfmFyCU-Oc89; Tue, 12 Aug 2025 07:55:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24ED761422
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754985318;
	bh=Vv13BsS5RrQhyQhp1gGWIeio/fMq103HLxAjrsDIysY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NLX+oLlhA6u6EMQT31JgvcyaW6gVSogB5RVBZbnWe+uc7+/LtAMrs7By07fb6a9n9
	 1mdcJ+y7u3g5Zq3/Z6+HXryLRbbhQw7IoKON/c7E9k/NJ2e1zW8ozxIR0va12JEmd8
	 NHzS+dOTCR8X9hHxnhV5GIrZEMFOmos3ao42zbDIRac9VXCqHaDyayKOvtOE2K/xp3
	 GpEp7M8iYMJiUpAG0DYF2Rpzoxez2wevYPwdzP47hRRjg7Q4IHFtTi7sZi5qoOnm7g
	 gELZDVVBvGOQdlTkGwTfR9CraNKFW5gODhkc5XNDyxvdfXotufR9lGgwL55/BlHNVO
	 h1fPGzr/7+LmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24ED761422;
	Tue, 12 Aug 2025 07:55:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 59197B8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 07:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B5B640E10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 07:55:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N4OueqbItu_7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 07:55:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::436; helo=mail-pf1-x436.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9D16040D2E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D16040D2E
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D16040D2E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 07:55:15 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id
 d2e1a72fcca58-76bdea88e12so4406571b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 00:55:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754985315; x=1755590115;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Vv13BsS5RrQhyQhp1gGWIeio/fMq103HLxAjrsDIysY=;
 b=Ws+reu9l8Hak5QxSStJ7tsyHAJyWXiCANKZ7mJKlrYsmwuXjO4u66Yc7cIVu17tuCP
 QDFuXYc3kFVDRNdHPIDDhtrpJbK8Zh1/FRS+LmoIP1LYQMnIYM6rhRWtSsf7TtMvUFkH
 df8QJO7vBH/jGwAZ0V/PzvCXnzbT2T76xlaVU86pEl8mQkxufSM9Q0unH5qur6q6zkMM
 0sjxIsLnptusMrRoH+H73GMDww51s3V4v/U62vasI8SIDm/2KTYIrgVZxNdn+wpR/tIb
 2QL5T5mh72ByOEvlQfOAiaCShYRrY9wNnP9kJX++Qb13ltxN43L9VHNK+Zu25OEcICmF
 rUIg==
X-Gm-Message-State: AOJu0YzeNp7dfFq3chMGYeANLxu2QEKFFXBw5BLrZzt9I3794YrRgpBl
 EUR5ml9SawesIKHs6FEvSuilNwRAF5sshzJYG2afNlaFGjSZaSg5C9Pm
X-Gm-Gg: ASbGncvUPyj52fxRRH/FAVJ5SanRdch7+rq8Tx7nD00+TERwXrcun6vLty54PPqeIoj
 qxkixs18Fe+mMLFOEe+fLjSPhsELJc2ocHUsePxc7dgn0cl9IqNE7wD5jIqKm+m7TbYIiBHOdCh
 pXfDJNwWK6MzIIXvH9yuMh0WOFAHbDbW2MIEU+O0yfK5yyUYuHY1xCg9izdZ1jRzMstGGrNmJQn
 /oZbUU03v9NbsWP1phRWZ3e8/irxRMJGi5ZaCAPlClSOSiqQDTVKyj8vpFChoMwZU/iYaNWp6Je
 ZWBoBU9NtkxeX+XJfAYHZw9gT7HgoXPAzUh0DYtDYh1xdwzUNOEUngDMAtVHV+rRPSb5KiJtr0d
 dnklyHXuXQ9MjDIavpS4SO8MxMwuB+7wlBmDO8E+Sx5on5+LxheP72XAi3dNoqTJlasBXt/mFkk
 FN3nhD
X-Google-Smtp-Source: AGHT+IGfk586rwrxxfRmXHZhdzavFsh3ULsuydpMTWKN8QvYxg+vnRc9uQYVUrTpTJPECIJQNk4K+w==
X-Received: by 2002:a05:6300:218f:b0:240:2320:abb8 with SMTP id
 adf61e73a8af0-2409aa02ca0mr3376601637.41.1754985314846; 
 Tue, 12 Aug 2025 00:55:14 -0700 (PDT)
Received: from KERNELXING-MB0.tencent.com ([43.132.141.21])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b422bac12d4sm24651320a12.32.2025.08.12.00.55.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Aug 2025 00:55:14 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, andrew+netdev@lunn.ch,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, sdf@fomichev.me,
 larysa.zaremba@intel.com, maciej.fijalkowski@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Date: Tue, 12 Aug 2025 15:55:02 +0800
Message-Id: <20250812075504.60498-2-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20250812075504.60498-1-kerneljasonxing@gmail.com>
References: <20250812075504.60498-1-kerneljasonxing@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754985315; x=1755590115; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Vv13BsS5RrQhyQhp1gGWIeio/fMq103HLxAjrsDIysY=;
 b=EZbAgzh7fYwy5ff6lNsBa405CWAZejRvB++GBiZnp0AnWEO1UgHV9NOwlDEBicw/3o
 t4CneGPybHqI9B3hcMAN/bokt8cZw4lEBhBlO76ea96eHEpmt8cyLI1XPBaMrUIV/vmp
 MmcKqk/n4MK24Z/DooJNGH9iGnBHJfrvi0/q5iu1yJBI+O02D3ABvyQbSQtnDKuTj92W
 V26X5u1znQcsxRyRN9y34rTYd7m/cbdIC/WHlsqHrrbr+8qEUoKINJvuYnL07F61S30R
 HQ+nkH4d4+SS1RsIYY0lnvqFLNVpMEzJvxDCJK5Py0fKdv/onM8EHz3uIdCQCPbrG+No
 25sg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=EZbAgzh7
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/3] ixgbe: xsk: remove budget
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

Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c        | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c         | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 9a6a67a6d644..7a9508e1c05a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -3585,7 +3585,7 @@ int ixgbe_poll(struct napi_struct *napi, int budget)
 
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
index 7b941505a9d0..a463c5ac9c7c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -456,7 +456,7 @@ static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
 }
 
 bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
-			    struct ixgbe_ring *tx_ring, int napi_budget)
+			    struct ixgbe_ring *tx_ring)
 {
 	u16 ntc = tx_ring->next_to_clean, ntu = tx_ring->next_to_use;
 	unsigned int total_packets = 0, total_bytes = 0;
-- 
2.41.3

