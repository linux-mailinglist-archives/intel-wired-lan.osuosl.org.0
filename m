Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE74474ED8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Dec 2021 01:06:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D6A640941;
	Wed, 15 Dec 2021 00:06:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f-0rIMqV5I3F; Wed, 15 Dec 2021 00:06:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D230409BB;
	Wed, 15 Dec 2021 00:06:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47E5C1BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 36B2B8148F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3p9VgkieWE0E for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 22:43:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BA65F813B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 22:43:07 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id o14so14748723plg.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 14:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8Ll/megliBvnHirIhlfhf9sv9I4xbL9uGA2hDg8OW1A=;
 b=oArXG4XItRxuvjy9gbxOQHZcIDmwjotDa55nsFktI/Ns7HH590LpkhKUwUsvi3G4CW
 xqEgzueXDhJEmj/gpQ8vz6zQcCUt03dZ4Ql20t1R0F00j/NYxxshodzKFMBOz0i/AHsF
 qwXQhAD+FPKOHYLXBqDrqWL7MTCns+COl+PIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8Ll/megliBvnHirIhlfhf9sv9I4xbL9uGA2hDg8OW1A=;
 b=Yvo+4I5B2vkgAusZzwq+6iftjI5x01S395FCP5l0tlBS0272TkZdCE4VrHZ3NbxxzH
 xxTr5zoNKHmBn3znt00Wi5AGzNGc02xxnJU2yVJMFDGRUcLnDDY4zeStPyO6e9YSdm2D
 2nCJhdew/KYAl1LD14ZH7ijxQNtRRO6fR3NaPhfS+I5lOw8/r/Y7qJUJRrIYw/DQ5e0f
 a+ps9eCWEp9SgrixiFn9vBSuY9WByZm3TKUj8QZ1IZHO++w0vYHwOnmhG3pu59u5Z7cj
 7gTiqITPQ7VKxD/Z4ArDRNV/oQ+LAPBA17ZnhOVWWAhlJFUvSs3M6NALBcOPKiV+MUVG
 l/5w==
X-Gm-Message-State: AOAM532+xt5xYWBEV/DkEEul456hwzO9e7OBKdcFoe8P6/wIm24nUPRR
 Ewhvpr0smLai58cqi8xxpyWO79EoZ65Ee6tLY1UyEKYbKMea0J3Ghn2QA3Vbl1LVVC1FU7tMM1X
 k41jE0o0t9pVwseBTluzz+cEgHVr+s1Ytv/RguYc+o8XfldIBix8BGojFDdvbv2W2o4B+Opb5/R
 CyLXIIm53a
X-Google-Smtp-Source: ABdhPJxJHXV4YY3O2ob0ztz1/iKHz1y8Srlj7Vm61kglf3JYUPm93vWiYBIjWXwz1gRDUbvDFsvIZg==
X-Received: by 2002:a17:90b:1c8d:: with SMTP id
 oo13mr8634212pjb.139.1639521786702; 
 Tue, 14 Dec 2021 14:43:06 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id mg12sm3448012pjb.10.2021.12.14.14.43.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 Dec 2021 14:43:06 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Dec 2021 14:42:06 -0800
Message-Id: <1639521730-57226-2-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
References: <1639521730-57226-1-git-send-email-jdamato@fastly.com>
X-Mailman-Approved-At: Wed, 15 Dec 2021 00:06:03 +0000
Subject: [Intel-wired-lan] [net-queue PATCH 1/5] i40e: Remove rx page reuse
 double count.
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
Cc: netdev@vger.kernel.org, Joe Damato <jdamato@fastly.com>, kuba@kernel.org,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Page reuse was being tracked from two locations:
  - i40e_reuse_rx_page (via 40e_clean_rx_irq), and
  - i40e_alloc_mapped_page

Remove the double count and only count reuse from i40e_alloc_mapped_page
when the page is about to be reused.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 10a83e5..8b3ffb7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1382,8 +1382,6 @@ static void i40e_reuse_rx_page(struct i40e_ring *rx_ring,
 	new_buff->page_offset	= old_buff->page_offset;
 	new_buff->pagecnt_bias	= old_buff->pagecnt_bias;
 
-	rx_ring->rx_stats.page_reuse_count++;
-
 	/* clear contents of buffer_info */
 	old_buff->page = NULL;
 }
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
