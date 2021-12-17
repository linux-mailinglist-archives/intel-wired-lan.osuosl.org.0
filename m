Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F184794ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 20:38:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D696C421BB;
	Fri, 17 Dec 2021 19:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kfp4lA3BPgrx; Fri, 17 Dec 2021 19:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC19342016;
	Fri, 17 Dec 2021 19:38:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C83F1BF35E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B8FD41F63
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B_kdhWqqBAUN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 19:37:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D60CD41F5D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 19:37:41 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id c6so2723592plg.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 11:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8Ll/megliBvnHirIhlfhf9sv9I4xbL9uGA2hDg8OW1A=;
 b=TmvT+/sgG176ULevcaTCaQSKC/MIsri+Ce63wECSpDGjtrbIGrUKIGI93nNH1Q/eHL
 Vy8yRQKJCPlVboWCHKjzxEWhI+PQA2itzHJDHsirkZQdihcgJSq3me152OPVKqzjNa/E
 U+uNWJVeRz3sQ/+/9lhDd35/FptBhiYkWlGKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8Ll/megliBvnHirIhlfhf9sv9I4xbL9uGA2hDg8OW1A=;
 b=Tk2hWQrP6iGl1nfC+ZW4eP+HnTEXMWLewnvrkRsvwSvLtfzvYvO3qP6ciDWQZ2o3Aw
 divEEQWFwJ9zio7j/MNgz1S9PVhGeB+1TBVB06SjSfeSdhO7r+55NUJ12LDMyOJLW6PA
 lHlGeuoEQ1pOKaFU0y98sZbB4Gm2MfFIDAsDFnvTsJXam0FJnv2Oh7Wh6grvE2lGiWw/
 8RuQ4BqPcU3+kLP9mi9rV+ztewtPP5WODiVxpCcQ95gc7mA7YGcx5ewInHhuQmhKAVaD
 iygpmHdjHKv1qdQ6iiuVDV8JktHrE8JccXoSJYZ69qfi/deSz7448kW1h3WFE2KX9t0P
 Yg1Q==
X-Gm-Message-State: AOAM530t8z9tyLDAniokgyInfD8EZg41x+PLUaVz4X9fxzRhJnQoRkgp
 Er6+COaln4iO/rnOs1EXBRmeh2ym+jC+kyBx+RKB4s8gMHgCryTssoEtef95QoQzg5EFVUNMT3B
 FgwomhnnfbCHtNt6MYAnTzbzWSybnA2sEyOksMAwmvkH78/HPbD1skbPThyENx13As6DHGLzQtg
 wdtW2qqNOk
X-Google-Smtp-Source: ABdhPJyNLB11PC9qokBMjL7Vnc9kxb8RmrsSSO81oUC2Jl5FNkjQa1Zj+tNLjbBJCm6SDn/3iABh9w==
X-Received: by 2002:a17:90b:128b:: with SMTP id
 fw11mr1483215pjb.146.1639769860870; 
 Fri, 17 Dec 2021 11:37:40 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id o17sm8783294pgb.42.2021.12.17.11.37.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 Dec 2021 11:37:40 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 17 Dec 2021 11:35:15 -0800
Message-Id: <1639769719-81285-2-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
References: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
X-Mailman-Approved-At: Fri, 17 Dec 2021 19:38:44 +0000
Subject: [Intel-wired-lan] [net-queue, v2,
 1/5] i40e: Remove rx page reuse double count.
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
Cc: kuba@kernel.org, Joe Damato <jdamato@fastly.com>
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
