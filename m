Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD2F32CA98
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Mar 2021 03:56:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 695294D0A8;
	Thu,  4 Mar 2021 02:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ah59CzAcvWGX; Thu,  4 Mar 2021 02:56:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 377C5470A7;
	Thu,  4 Mar 2021 02:56:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ACC651BF36E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 02:56:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B6BC42FBC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 02:56:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GBRnmcfXw45C for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Mar 2021 02:56:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEC2B42F3A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 02:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614826598;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2++HG/raBXrb2pYDlmO4aNJrzLxuw9/UCZRY3agwA7w=;
 b=fe9ViBDrzzxmvaTJf149aA+arTYCNiBuhnVHA+7OVlhFOZajMKn1kDUypTR0P1NDve8Up5
 S/FKDtsUAyE3WTQpcGVQH7SKi4vFRFcL2FqaXyvNo/fpt6x2McOQ3iknF3+JOoQq79GU/G
 mRCGCBbQIOCWp1lRNiY9lbp6yZwcr58=
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-PIW_KbENPTWPijp_523i7g-1; Wed, 03 Mar 2021 21:56:37 -0500
X-MC-Unique: PIW_KbENPTWPijp_523i7g-1
Received: by mail-pl1-f199.google.com with SMTP id m1so14439875pll.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Mar 2021 18:56:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2++HG/raBXrb2pYDlmO4aNJrzLxuw9/UCZRY3agwA7w=;
 b=qugbnxAuG5u56+PpgURep7rkkH8kVH2EvU1ZDjC2PVT04zLpQbEjOOcOXKt0qqMLvs
 /Kboq1csg11VMKZvDQWoIESbpLajdvIYjx27r8c1MYRmQGVpViffLhQ5VOtjkhhHFtKg
 RzKAaU5rSI9PzLUbBlVD+f9iDg4L7C9HD6q++T6kpyGXa4ZNGzsMgRl5y2qk2rX3PBe3
 8tz6uW6TTzP96W4Y1GzFt0MZ/BUlUR+9DLZXxWrdN/9sEwNxv3CAhyST9wERQUI1YeXw
 bDHCBvuaiLjZrk6TeLqRwGBjsJ8qxQdLa4bnixdiTW7j7B5QCJvyAH0S045AcFYADEli
 gHgQ==
X-Gm-Message-State: AOAM531BkOr6Knsr7TzCj9wtaYPmo9xQHRCVE1F4/AmoXsOc6UfY5biR
 Eo/91s1Whap+vs4+vl843utCqeZpQQloLNX900KOsCilXrTYZr2TxEXmiWcy+dNzSjGtmFWhYXF
 Je4uYeWq1lNJmjIUlJL8WNLk2/+DX1A==
X-Received: by 2002:a65:63c6:: with SMTP id n6mr1849027pgv.298.1614826596372; 
 Wed, 03 Mar 2021 18:56:36 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxNF3mLv9QkYWO5TGYR64AQOa8lhwTHoP+hGHz+W6OXYdSFWgzrOJ+YI8ZH1CqKqskGK1p5tg==
X-Received: by 2002:a65:63c6:: with SMTP id n6mr1849016pgv.298.1614826596192; 
 Wed, 03 Mar 2021 18:56:36 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id gt22sm8090144pjb.35.2021.03.03.18.56.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 18:56:35 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: netdev@vger.kernel.org
Date: Thu,  4 Mar 2021 10:55:43 +0800
Message-Id: <20210304025543.334912-4-coxu@redhat.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210304025543.334912-1-coxu@redhat.com>
References: <20210304025543.334912-1-coxu@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=coxu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [PATCH v1 3/3] i40e: use minimal admin queue for
 kdump
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
Cc: kexec@lists.infradead.org, open list <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The minimum size of admin send/receive queue is 1 and 2 respectively.
The admin send queue can't be set to 1 because in that case, the
firmware would fail to init.

Signed-off-by: Coiby Xu <coxu@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      | 2 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c | 9 +++++++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index cd53981fa5e0..09217944baa4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -66,6 +66,8 @@
 #define I40E_FDIR_RING_COUNT		32
 #define I40E_MAX_AQ_BUF_SIZE		4096
 #define I40E_AQ_LEN			256
+#define I40E_MIN_ARQ_LEN		1
+#define I40E_MIN_ASQ_LEN		2
 #define I40E_AQ_WORK_LIMIT		66 /* max number of VFs + a little */
 #define I40E_MAX_USER_PRIORITY		8
 #define I40E_DEFAULT_TRAFFIC_CLASS	BIT(0)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d6868c7aee05..5d67fb12e576 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15327,8 +15327,13 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	i40e_check_recovery_mode(pf);
 
-	hw->aq.num_arq_entries = I40E_AQ_LEN;
-	hw->aq.num_asq_entries = I40E_AQ_LEN;
+	if (is_kdump_kernel()) {
+		hw->aq.num_arq_entries = I40E_MIN_ARQ_LEN;
+		hw->aq.num_asq_entries = I40E_MIN_ASQ_LEN;
+	} else {
+		hw->aq.num_arq_entries = I40E_AQ_LEN;
+		hw->aq.num_asq_entries = I40E_AQ_LEN;
+	}
 	hw->aq.arq_buf_size = I40E_MAX_AQ_BUF_SIZE;
 	hw->aq.asq_buf_size = I40E_MAX_AQ_BUF_SIZE;
 	pf->adminq_work_limit = I40E_AQ_WORK_LIMIT;
-- 
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
