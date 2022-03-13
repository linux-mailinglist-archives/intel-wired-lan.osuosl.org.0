Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D304D75FD
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Mar 2022 16:02:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17AE860BA8;
	Sun, 13 Mar 2022 15:02:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F6lGTIylNZzD; Sun, 13 Mar 2022 15:02:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 104DB60B8D;
	Sun, 13 Mar 2022 15:02:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 64F471BF42D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Mar 2022 15:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 510C8408CB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Mar 2022 15:02:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ke-0bo8SE_tt for <intel-wired-lan@lists.osuosl.org>;
 Sun, 13 Mar 2022 15:02:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 37F43408C9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Mar 2022 15:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1647183744;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=OZkkggqsQIoWieW/oVrOCwUkJK6lKvyxEtn8wx8/DH4=;
 b=ITlXUbAseMe9EwMvroC0JZLKidlAvrvoGoAMGL1vZYOI1gXzEzrVqR9Jwumst3VR7K30TO
 TIpR0zizhQ6vhvczt0KbRtkGfSp22xAmMVLEmdEVZmbvyDmvdX1fpvK8jmsarhpGkBvkKE
 /jjDeU4uvKn8VxTsGOX6pDJm0MfbCmY=
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-600-YOkjNq_ZMAKJ2FyLEm44Mw-1; Sun, 13 Mar 2022 11:02:23 -0400
X-MC-Unique: YOkjNq_ZMAKJ2FyLEm44Mw-1
Received: by mail-ot1-f69.google.com with SMTP id
 o17-20020a9d5c11000000b005b24a70c275so10039300otk.10
 for <intel-wired-lan@lists.osuosl.org>; Sun, 13 Mar 2022 08:02:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OZkkggqsQIoWieW/oVrOCwUkJK6lKvyxEtn8wx8/DH4=;
 b=WVDoBvf8ltXr2lT8S3nmtaxnzNIQnCZX+5rMx4YaEdIpQMY7MC3HwewHARcPx0d4Wl
 8BEE6BkkEGjUgpz4qGh2QyMeOwQmjUd8gl7LanCvnghUnya5qo8zlZhz/lIkG1jUYghl
 rlFlIpsRh1J39ZwPIDgchmjL3pIiPv8hiIbUpra3g4YanzsOQm1c8FMM7JOMZq69pqHs
 BVzrsfZ0V5I4oxHABHvwEZIEeRP+8bsrDDpEN2ygDc/jR2ouaOrfTgn6xXSRF3VXAIRx
 cQA4FRiW72fUSN+AqcZ03b+uHG5uDwTGaKjsRcqP+5cwcE/1hH2cOVyz36W2JHDWjOBI
 wGLA==
X-Gm-Message-State: AOAM532TxbRNV3vp4x+QmDDi1ByhpVQWZ/EEGzZFYDy1q/PKCo87J5Mn
 AHN7JmD7dakcWvvysRzPIKBdxG/c0RRwqvI/gsqCQ0oP+C8evGjTQBR8XZuEuj8SnlOuBn7Y1de
 gHR/eakJofynh460oRN4B1sf3H3vtTA==
X-Received: by 2002:a9d:4e99:0:b0:5b2:54f4:75e7 with SMTP id
 v25-20020a9d4e99000000b005b254f475e7mr9119066otk.94.1647183741500; 
 Sun, 13 Mar 2022 08:02:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzjb1ejVgoHBYltkBU7cyugOD8fhaxKGdkCT++7rWLl8GnDe8scorY7NgLJqvOmNm3oOxRWWQ==
X-Received: by 2002:a9d:4e99:0:b0:5b2:54f4:75e7 with SMTP id
 v25-20020a9d4e99000000b005b254f475e7mr9119012otk.94.1647183739823; 
 Sun, 13 Mar 2022 08:02:19 -0700 (PDT)
Received: from localhost.localdomain.com (024-205-208-113.res.spectrum.com.
 [24.205.208.113]) by smtp.gmail.com with ESMTPSA id
 o17-20020a9d5c11000000b005b2611a13edsm6324116otk.61.2022.03.13.08.02.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Mar 2022 08:02:19 -0700 (PDT)
From: trix@redhat.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, nathan@kernel.org,
 ndesaulniers@google.com
Date: Sun, 13 Mar 2022 08:02:10 -0700
Message-Id: <20220313150210.1508203-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [PATCH] igb: zero hwtstamp by default
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
Cc: netdev@vger.kernel.org, llvm@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Tom Rix <trix@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tom Rix <trix@redhat.com>

Clang static analysis reports this representative issue
igb_ptp.c:997:3: warning: The left operand of '+' is a
  garbage value
  ktime_add_ns(shhwtstamps.hwtstamp, adjust);
  ^            ~~~~~~~~~~~~~~~~~~~~

shhwtstamps.hwtstamp is set by a call to
igb_ptp_systim_to_hwtstamp().  In the switch-statement
for the hw type, the hwtstamp is zeroed for matches
but not the default case.  Move the memset out of
switch-statement.  This degarbages the default case
and reduces the size.

Some whitespace cleanup of empty lines

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 6580fcddb4be5..02fec948ce642 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -165,23 +165,21 @@ static void igb_ptp_systim_to_hwtstamp(struct igb_adapter *adapter,
 	unsigned long flags;
 	u64 ns;
 
+	memset(hwtstamps, 0, sizeof(*hwtstamps));
+
 	switch (adapter->hw.mac.type) {
 	case e1000_82576:
 	case e1000_82580:
 	case e1000_i354:
 	case e1000_i350:
 		spin_lock_irqsave(&adapter->tmreg_lock, flags);
-
 		ns = timecounter_cyc2time(&adapter->tc, systim);
-
 		spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
 
-		memset(hwtstamps, 0, sizeof(*hwtstamps));
 		hwtstamps->hwtstamp = ns_to_ktime(ns);
 		break;
 	case e1000_i210:
 	case e1000_i211:
-		memset(hwtstamps, 0, sizeof(*hwtstamps));
 		/* Upper 32 bits contain s, lower 32 bits contain ns. */
 		hwtstamps->hwtstamp = ktime_set(systim >> 32,
 						systim & 0xFFFFFFFF);
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
