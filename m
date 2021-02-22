Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9287321121
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 08:07:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FD5D85BB5;
	Mon, 22 Feb 2021 07:07:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8GGjeoKPW60C; Mon, 22 Feb 2021 07:07:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA79885B81;
	Mon, 22 Feb 2021 07:07:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C79B11BF983
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 07:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C36B4870A1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 07:07:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rozRvTQqUsGa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Feb 2021 07:07:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2102187098
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 07:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613977671;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SfjcSkeuCzE9/+CoYCFIFTm1Ke7Qr71yxOHQpPA/W1c=;
 b=F9OhE3QTwJ7Y0W1XA7oFnSiMHvyrWCUFGUG2NXUQMZAeCJB22vSmfwJ2+CZKEHNYftcAkl
 /5o59CzPglyMISl2x/I2yBmu1Qqk1OH6icisICAhAS415aXrNGrRkQIs7dby3m1V9SJyp6
 OmHk/p26oxVWcB1bAryamYSTlp9J074=
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-417-pPQfL_i2MXmDYJZhMTQ-3g-1; Mon, 22 Feb 2021 02:07:49 -0500
X-MC-Unique: pPQfL_i2MXmDYJZhMTQ-3g-1
Received: by mail-pf1-f198.google.com with SMTP id y17so308631pfp.18
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 23:07:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SfjcSkeuCzE9/+CoYCFIFTm1Ke7Qr71yxOHQpPA/W1c=;
 b=P5zvwLAynrOfITeCUmCfAWi2Wbqk8zPSC6kLFeHGaRByJwtbt64B/L8GDhzpFUYqu9
 vRtw3jtFeoZisyYhv1bZFbLC3qvdWmGAugWX2NSXYkQw02l2rN1helpee2g0genRx1ux
 rAEvTDHLuHJND7WfQcrdFNS5dMTsqYYaxMc3s4cj9Z98ex/yX1vm9ZDhluZ27ne2taT0
 pCdkruH6KoXJdaK30ImgjIAH/J8/30BPQjT9ASu1dS+1LZC++nypbjJ3GCawKf14C1Ny
 xFYbsob4phljzk3aITu7fD4HCRhKb9WTqGCZS7w4mM4fwriWqswrZDrkZDi6MT08bXKc
 vq9A==
X-Gm-Message-State: AOAM530UUeHgMiYofmTWltLEmnVBPHnBHXjiLqhy6YKsLcGTyZfbCwAU
 Mwto/wXVeQ8r5mDrZO7CRFvYB5p0LFg15jga/ZIyar5VVJGEkSujgi7+GI1wydoQb9qepq3sPRr
 /u/j74bL1jDZy69RUg4lQ4UIpFITRwg==
X-Received: by 2002:a63:90c9:: with SMTP id a192mr19124717pge.8.1613977668235; 
 Sun, 21 Feb 2021 23:07:48 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwP+/I77AvpPaCYZWkNUEmz3EntQVTfgkKGYRyDaFQPkLb+Affv8SxoduV3LDfkj7rLRdqY7Q==
X-Received: by 2002:a63:90c9:: with SMTP id a192mr19124701pge.8.1613977668054; 
 Sun, 21 Feb 2021 23:07:48 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id a24sm18029132pff.18.2021.02.21.23.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 23:07:47 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 22 Feb 2021 15:07:00 +0800
Message-Id: <20210222070701.16416-4-coxu@redhat.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210222070701.16416-1-coxu@redhat.com>
References: <20210222070701.16416-1-coxu@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=coxu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [RFC PATCH 3/4] i40e: use minimal admin queue for
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
index 118473dfdcbd..e106c33ff958 100644
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
index 5307f1744766..2fd8db80b585 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14847,8 +14847,13 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
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
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
