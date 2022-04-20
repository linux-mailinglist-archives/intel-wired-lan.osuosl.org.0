Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9292950899E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 15:46:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C3344198E;
	Wed, 20 Apr 2022 13:46:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x1bHZv3-ekN0; Wed, 20 Apr 2022 13:46:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0420418C9;
	Wed, 20 Apr 2022 13:46:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 615441BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 01:27:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4702660FC4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 01:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6xLKQhIaTe9e for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 01:27:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1900F60BF1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 01:27:49 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id w127so470396oig.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 18:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6RZt3pRY2aKwzYWHycI06GL3k6VJx2KQpfieK912YU8=;
 b=B+cxRY9FhW3qdrJo5zcX6sM27c423HY/NsSxFAgyuclMXAJFwQK1KTll69IMEU19Su
 20uLodQmfsoLbbRgBO1oFs/wUrRP13lxDSZSt44zqP8G+DteCzjY0ybV5oJgRQL3bgaW
 oL6afyZgrOEIVVpilc7VdFeRUhRpflx2IH60v0ZaFqjpnzYT4zDNijDaJErUFQR3NdN3
 rSgBxlNvI0tjgjQb65SZ8gtcqqOyhcT7dUYuSC2fuR8ciQ33E+K2Lbkkd+1+Ew5YtMkM
 RIw5Z/8GN7/6BzNwJl+EVKneuM2X8FAhSR1jNV6DD1h4OMfBD8bg48zfUH9Vn6N3xFid
 hUVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6RZt3pRY2aKwzYWHycI06GL3k6VJx2KQpfieK912YU8=;
 b=qir11mcAyKuNXY2xCTMeDwPLWYzwac5vFDhdzqRLS3ZvLVY6SyQSHqUIeTfPTpZGUb
 DpwXYwaU42HK8Tsz/XBCn2cpkqWGEYU8dPyfRwtB6T58yWwgppjG38qo40y3hrG1Ul6Q
 X6HuhoI45xJAgVXUu1RRDvBFzOW1NQqczMb8txmil3fshmQRRBMC2NrHSsukLunkwxmR
 rIGzXL//kuqMPngjYAX6Fz/StAtIDqpiQ0hziQ1JLtQFOTksHoI95S2A507absn+PRPs
 +FmcC+qIAW221T+fdd7UxiTa9CzQkbjfGlk9KjRSsBmKj+wGg+8J7xK/KIynF+Y/N4ak
 yk1g==
X-Gm-Message-State: AOAM533hVFJr48meQuo9h/kLzbRbr9knxW8/dGZERwVfCr+L/hP28/3P
 ahOwvrxbwIk4qrzGkgbNRpE=
X-Google-Smtp-Source: ABdhPJy65y7OiIVCslGTDjTngaUh+H8salM/co/xL+9jxZxE9vPUet2d6AEN2W7VgaiYwaDveYO/zw==
X-Received: by 2002:aca:d9c3:0:b0:2fa:6f51:7bfe with SMTP id
 q186-20020acad9c3000000b002fa6f517bfemr639590oig.59.1650418069051; 
 Tue, 19 Apr 2022 18:27:49 -0700 (PDT)
Received: from toe.qscaudio.com ([65.113.122.35])
 by smtp.gmail.com with ESMTPSA id
 i26-20020a4a929a000000b0033a29c8d564sm4284530ooh.3.2022.04.19.18.27.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 18:27:48 -0700 (PDT)
From: jeff.evanson@gmail.com
X-Google-Original-From: jeff.evanson@qsc.com
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vedang Patel <vedang.patel@intel.com>,
 Andre Guedes <andre.guedes@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 bpf@vger.kernel.org (open list:XDP (eXpress Data Path))
Date: Tue, 19 Apr 2022 19:26:34 -0600
Message-Id: <20220420012635.13733-2-jeff.evanson@qsc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220420012635.13733-1-jeff.evanson@qsc.com>
References: <20220420012635.13733-1-jeff.evanson@qsc.com>
X-Mailman-Approved-At: Wed, 20 Apr 2022 13:46:02 +0000
Subject: [Intel-wired-lan] [PATCH v2 1/2] igc: Fix race in igc_xdp_xmit_zc
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
Cc: Jeff Evanson <jeff.evanson@qsc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jeff Evanson <jeff.evanson@qsc.com>

In igc_xdp_xmit_zc, initialize next_to_use while holding the netif_tx_lock
to prevent racing with other users of the tx ring.

Fixes: 9acf59a752d4 (igc: Enable TX via AF_XDP zero-copy)
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 1c00ee310c19..a36a18c84aeb 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2598,7 +2598,7 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
 	struct netdev_queue *nq = txring_txq(ring);
 	union igc_adv_tx_desc *tx_desc = NULL;
 	int cpu = smp_processor_id();
-	u16 ntu = ring->next_to_use;
+	u16 ntu;
 	struct xdp_desc xdp_desc;
 	u16 budget;
 
@@ -2607,6 +2607,8 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
 
 	__netif_tx_lock(nq, cpu);
 
+	ntu = ring->next_to_use;
+
 	budget = igc_desc_unused(ring);
 
 	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
