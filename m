Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD22CB20D2C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 17:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A867414BE;
	Mon, 11 Aug 2025 15:12:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7hpVU2STmDtE; Mon, 11 Aug 2025 15:12:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0EF74148C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754925129;
	bh=FLOXzas+wSBYP/Dbt2E5ZmVdeWbyYZCVVl1/5bGLwyA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IUQ7ouQ3CbuRwbW8F2ChWz+T/LYS8l0eA4xb0MmoYGF/8ufaeDgII44TVWhv/g876
	 GsLRPCdJ2p+IZKCHOR4mpi/lUc8NK2dE7U4H1pooAziDJthU1zS8VlGPDR853O+Y0b
	 5owermSONheJkH/XwuL0FkznXaqACHucslDknJ5jMrzXaGM5bjaVgSjzdKTmvXGbXe
	 G6ZcVHfabUzclN1bx/RSZbFhoa0QZwziIK7nyUk45s83t5JBJVi6WKP81LhMz+keuL
	 WXe/AL8cCTGNAARMV8rGH60P9kCCjcb4nwhkewUwC8jlfo/IMfXNKeWWjYsNE9xDCq
	 Nf/PE36UgOlXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0EF74148C;
	Mon, 11 Aug 2025 15:12:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BCE6F138
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 11:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AE9D14099B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 11:42:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lvjiKjRahugj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 11:42:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42c; helo=mail-pf1-x42c.google.com;
 envelope-from=xtydtc@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1EF2B40063
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EF2B40063
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1EF2B40063
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 11:42:29 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id
 d2e1a72fcca58-76bc5e68d96so3472535b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 04:42:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754912549; x=1755517349;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FLOXzas+wSBYP/Dbt2E5ZmVdeWbyYZCVVl1/5bGLwyA=;
 b=eyK7AZZeXiLoUkZAkS6DR2CxvAviAifd2sK9umOKQ6/SOraC0qwoFCOZdieWSTYjeJ
 oW04KqPPpWGvET2SmZhT0j7FaRLt8f2Vel/Ms7xo3HcUKcL6AfkKJa0qdxuX3nrOTvk8
 Xl1lRxpjjNqgHxwiAeQeM+zEZ9eHSKVAHnIdv4nZ4BTkyuAkrJGXtbdx7cMdXFcb4paz
 7aIzzo0xOuPHr/GL/JVUashalD7FZb/heTZZKJl+OedU+0aBqDtRce7ZcqtfONmTbwn5
 KwZ/AXMyiFHMo9J6Z0M7JebGmWXygMykkCTUurVsbkH1LrgnaS770nz3yCKSwmCPt1ik
 BsmA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWKiLmg11giSPuOCNdpXhNe8FDghWA1mJccVuocmzUZlgDbAMocFzbvhUqbqIPsTsgEjsH1oZL/w6q626Ut0gg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzLVCl2wXeuNNvU6I8wGL8/poG73i7hS60UUJPHV3FuPalFWNgx
 p6EFcEJbdYZ2C95OD2lKoIfSrv8feBlsAgMxUpI3pF3x2RhyStq9SCP5
X-Gm-Gg: ASbGnctHLILcQKH7lQ6Dj9AMAMCOgAXVAZv/QUkYPh08FU0jsn+z6BwVfQXZvdxZezf
 S5TO9JJKOyA+FgRvam+WdqKTrSrvd1nnflYcQMwQ51jOwZ6pMhp10wzY21U+ACNFcuuQJe4VA8G
 2TlHqMmwvUWpHIXxtsdTTmu1V8dulHS0Cz6ACjPnG7n0dADlv5LWDmDRaqlBLfUpGAb6O5gAyAY
 zCsKwRnf+1oKq6KKUYNcUY08Ch64VxCIp7KjGesc0W2AbhiszsdRyi/QmGMjbERJWsDp+dMfskx
 9en/h5oX20p2qv+i2ba6wlg+mM08haeQ/Hvi0uZwU04uPGCWMEbUZqSroc9jw0inJmSpRkV6ECY
 4o/N/sfKmAn/ASikta4XJvm6Y+SAxANXPvTF+4ZgO5s6jRRBLRYb8szbRUElCuP0oEQ==
X-Google-Smtp-Source: AGHT+IGEGrseVraUSU22uXaupkDe1Je61Gbat39FnhjpWvLrAWx5qR7QPiB6NlCHNXu5roDejR7COw==
X-Received: by 2002:a05:6a00:3c87:b0:748:33f3:8da3 with SMTP id
 d2e1a72fcca58-76c461b7e3cmr16458419b3a.19.1754912549391; 
 Mon, 11 Aug 2025 04:42:29 -0700 (PDT)
Received: from TIANYXU-M-J00K.cisco.com
 ([2001:420:588c:1300:513:ebe8:5ec0:cab3])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76bccfd1d8csm26569120b3a.101.2025.08.11.04.42.26
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Mon, 11 Aug 2025 04:42:28 -0700 (PDT)
From: Tianyu Xu <xtydtc@gmail.com>
X-Google-Original-From: Tianyu Xu <tianyxu@cisco.com>
To: anthony.l.nguyen@intel.com
Cc: przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 sdf@fomichev.me, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, tianyxu@cisco.com
Date: Mon, 11 Aug 2025 19:41:53 +0800
Message-Id: <20250811114153.25460-1-tianyxu@cisco.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 11 Aug 2025 15:12:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754912549; x=1755517349; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=FLOXzas+wSBYP/Dbt2E5ZmVdeWbyYZCVVl1/5bGLwyA=;
 b=Mp69PIekdYCppRU91xPYYNZWcz99rm0UQMs+yS2gXdiWiJuHWCi9KZz4gD2wiLvsiS
 KCsUUp10LzJLimSZn3i1PRWQyQ0rklTEskE9BvTQ2VSlm0IRtTTPFdu3u1TOq9+sa7DS
 h9Bsk6UFqafPmQY5TIY2KQYkl5pXPdmhn6liW+qGSyo+oNBKiPRTb0glhOK8lo1B5Txu
 CuC1EfZAOcnjdJVwCy3ZvnMgA/y+aOo/adAs2y9IQ4xzQdAin5ubQfvS7815M756OCGs
 Hl5O7TvPH0cAFwOjooIWzFnKEFgaha1N7J9yYExna9jL+z2GQBq62dI/MnlKuL0B5MZI
 +J4w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Mp69PIek
Subject: [Intel-wired-lan] [PATCH] igb: Fix NULL pointer dereference in
 ethtool loopback test
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

The igb driver currently causes a NULL pointer dereference
when executing the ethtool loopback test. This occurs because
there is no associated q_vector for the test ring when it is
set up, as interrupts are typically not added to the test rings.

Since commit 5ef44b3cb43b removed the napi_id assignment in
__xdp_rxq_info_reg(), there is no longer a need to pass a napi_id.
Therefore, simply use 0 as the final parameter.

Signed-off-by: Tianyu Xu <tianyxu@cisco.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index a9a7a94ae..453deb6d1 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4453,8 +4453,7 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
 	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
 		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
-			       rx_ring->queue_index,
-			       rx_ring->q_vector->napi.napi_id);
+			       rx_ring->queue_index, 0);
 	if (res < 0) {
 		dev_err(dev, "Failed to register xdp_rxq index %u\n",
 			rx_ring->queue_index);
-- 
2.39.5 (Apple Git-154)

