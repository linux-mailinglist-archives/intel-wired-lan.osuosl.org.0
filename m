Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8D047C391
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Dec 2021 17:13:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 532E640278;
	Tue, 21 Dec 2021 16:13:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DEYq5WgBo0BK; Tue, 21 Dec 2021 16:13:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25DAD40281;
	Tue, 21 Dec 2021 16:13:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E6891BF31B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 23:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A36F408A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 23:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lyUKxQOtJDZE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Dec 2021 23:31:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9E9C40868
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 23:31:18 +0000 (UTC)
Received: by mail-qk1-x72f.google.com with SMTP id de30so11002422qkb.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 15:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=obS2zFMplgchY6r0d+2BwcrCyhPBeginQSAcswa/U7g=;
 b=duBn/pSDG1yEFgh8iO14azA6xVUgY8iIu0GEEn0uZs38wKwC2B/8IBQt/aluoRCugU
 aGMklfF2QiqTqscaaPP2l4bqONh5cXJYwdh8EgFS5BCZhEXbjLHndF+VQnv3ZkKNr1ZI
 D7v22gNOVE5AK2yvb/ZKGGjUd4dquHD2B3BxA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=obS2zFMplgchY6r0d+2BwcrCyhPBeginQSAcswa/U7g=;
 b=NIeyvUlz84fuZ7yKXYCc9b120E3lLKSjOAVXh4RlyUGZAb33IgmDX15d5N5weRJiYx
 uQ8HDwZbLiASV4jxY5awEJmaF98aQ2iopATdev8eNHaqe5ZPs2hye67fil7e+GYHYtUE
 26Q1+QHCa69/1u1OXuA1OVPpMNueSmzcFX+/g1u3w5e8uPLOctWtG95rIfLIvOoFaCbX
 JtTEznV69KSkuScWenkZGBpuAjLxRrdkqE5SQ6Nl+3JDMpIO7wevYD8F49aDNmNgX9bm
 AePfPm8VFL6mIrMoS9p4ewjJXVPkNZ/ldiAXVDGWvKZugXJBpG7dWzAGo+ojbEOsWlKI
 AR1g==
X-Gm-Message-State: AOAM532INjpJ+91+Bdu0Is6R2plqOi8wJjk5z7UxyHUETFkupJ9+hmC6
 Th42d6XlFJPLCopNKuDsLXvYpNywSYLnc7gWXp5pY3tWU5ru7dKu08a4lSEFwDHcqovtI6PeEQo
 4LoA8dQcTZupDhVKn8YXTRbPC951GmJUJD8ywTsja3Qk1opezcXaE09yxz4RVN6IZreT/ML4m1H
 P2hKJKOQ==
X-Google-Smtp-Source: ABdhPJxkGNH/H0moCwhey/lu9s2NJeICj+P2+FJs2aLN1AGB8076d18dusavvKWgfTyB/QKIJz3luQ==
X-Received: by 2002:a37:6152:: with SMTP id v79mr417242qkb.188.1640043077316; 
 Mon, 20 Dec 2021 15:31:17 -0800 (PST)
Received: from localhost.localdomain ([205.220.129.17])
 by smtp.gmail.com with ESMTPSA id a3sm16517634qtx.59.2021.12.20.15.31.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 Dec 2021 15:31:16 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 20 Dec 2021 15:29:58 -0800
Message-Id: <1640042998-117712-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Tue, 21 Dec 2021 16:13:11 +0000
Subject: [Intel-wired-lan] [net-queue,
 PATCH] i40e: Remove unused RX realloc stat
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
Cc: Joe Damato <jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

rx_stats.realloc_count was not being incremented after 1a557afc4dd5, so
remove it.

The debugfs string was left but hardcoded to 0. This is intended to
prevent breaking any existing code / scripts that are parsing debugfs
for i40e.

Signed-off-by: Joe Damato <jdamato@fastly.com>
Fixes: 1a557afc4dd5 ("i40e: Refactor receive routine")
---
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 3 +--
 drivers/net/ethernet/intel/i40e/i40e_txrx.h    | 1 -
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 1e57cc8..90fff05 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -275,9 +275,8 @@ static void i40e_dbg_dump_vsi_seid(struct i40e_pf *pf, int seid)
 			 rx_ring->rx_stats.alloc_page_failed,
 			 rx_ring->rx_stats.alloc_buff_failed);
 		dev_info(&pf->pdev->dev,
-			 "    rx_rings[%i]: rx_stats: realloc_count = %lld, page_reuse_count = %lld\n",
+			 "    rx_rings[%i]: rx_stats: realloc_count = 0, page_reuse_count = %lld\n",
 			 i,
-			 rx_ring->rx_stats.realloc_count,
 			 rx_ring->rx_stats.page_reuse_count);
 		dev_info(&pf->pdev->dev,
 			 "    rx_rings[%i]: size = %i\n",
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.h b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
index bfc2845..88387a6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -298,7 +298,6 @@ struct i40e_rx_queue_stats {
 	u64 alloc_page_failed;
 	u64 alloc_buff_failed;
 	u64 page_reuse_count;
-	u64 realloc_count;
 };
 
 enum i40e_ring_state_t {
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
