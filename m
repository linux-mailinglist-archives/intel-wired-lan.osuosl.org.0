Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C34485635
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jan 2022 16:52:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F164401B8;
	Wed,  5 Jan 2022 15:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fUlAUxJftfu6; Wed,  5 Jan 2022 15:52:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2371E4021F;
	Wed,  5 Jan 2022 15:52:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D1A31BF48D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 15:50:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36E3F40587
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 15:50:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BxNjBB8qDOoo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jan 2022 15:50:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 541F040519
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 15:50:09 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id 69so38674148qkd.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Jan 2022 07:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=j2w7u80ru31kkJjOYol+t2GMOIOK4QgzzUHv6TYbE4g=;
 b=XJaFza0OAALcGL0MdkH1pwJHEVMVaxSv8zQUEsjrOzU7bzulkXEIHQCVGnBXaRKODy
 fjoxU/ufN7SlT9ECdsfLQPclCd+4ClIipGfdgjyTQzGcZpSIi8AIZH+5tXtzKEgB7vP9
 HK8Htf0vt1MQTaAFDYN/oxD7Dp5TQ0E4Gh4+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=j2w7u80ru31kkJjOYol+t2GMOIOK4QgzzUHv6TYbE4g=;
 b=39W0F1ZNSaW5lODGW3CIjgzkEqGGe4jrqF0bv2ViH6C8/iJ5OSCAktqr03OR6uGDsW
 WWoBvITIUMr0v743IvYTUMwxtoAogfWAg4BHb2icEb+NhiXrQ7RQx4Qj655FGrpQ9Xqa
 7a6hkyGGrSSjbdhd5mP/p6ow2KVMzezQHQRvD7qwaDao4hdwMQwQmm9ptY010KBUCY6g
 Ud6Bi5jURUgP52LhA8KZEBXinsD2sbCblbMrhKMSfU5WeVb5IeSUnbNePwSKjOYU6p3g
 tiRe/uhPCRBFU3FBIN7XE4q+4xCy7pb9u2110o4BceTmM5doYNxbepu0+F2jUkEYKb2e
 aapw==
X-Gm-Message-State: AOAM532QXfWzQu3cLExt7UOGzZihn7KD0VePIPZAYaGN6Po6U13zeJfI
 nE08m/gtIQMqqUOQr+PNyCnr5EubxASjaeCwkO/Ftuh+nBvZi892x/lHtZtSDq9PTQvZlORgbf2
 iKJZbQ9mYIqaM4nDF3uakLl2p0dDGwrg7Ia6VdLnJ7XqBXtzUSY1ifFW1CAfpn4zLNDBt0CEh+M
 oZBY7SsA==
X-Google-Smtp-Source: ABdhPJx2SruqMDlBhScliOYyI5Wzts5f6P0OYx1GiaoLE8aETrA5onurSGVupATQozR7Me2n91433Q==
X-Received: by 2002:a05:620a:4542:: with SMTP id
 u2mr8772917qkp.605.1641397807737; 
 Wed, 05 Jan 2022 07:50:07 -0800 (PST)
Received: from localhost.localdomain (154-27-112-17.starry-inc.net.
 [154.27.112.17])
 by smtp.gmail.com with ESMTPSA id u6sm34688560qki.129.2022.01.05.07.50.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jan 2022 07:50:07 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  5 Jan 2022 07:49:13 -0800
Message-Id: <1641397753-121138-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Wed, 05 Jan 2022 15:51:56 +0000
Subject: [Intel-wired-lan] [next-queue,
 v2] i40e: Remove unused RX realloc stat
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

After commit 1a557afc4dd5 ("i40e: Refactor receive routine"),
rx_stats.realloc_count is no longer being incremented, so remove it.

The debugfs string was left, but hardcoded to 0. This is intended to
prevent breaking any existing code / scripts that are parsing debugfs
for i40e.

Fixes: 1a557afc4dd5 ("i40e: Refactor receive routine")
Signed-off-by: Joe Damato <jdamato@fastly.com>

---
v1 -> v2: Fix commit message to include one-line SHA summary. Patch is now
          based on next-queue.
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
index fd22e2f..324699e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.h
@@ -298,7 +298,6 @@ struct i40e_rx_queue_stats {
 	u64 alloc_page_failed;
 	u64 alloc_buff_failed;
 	u64 page_reuse_count;
-	u64 realloc_count;
 	u64 page_alloc_count;
 	u64 page_waive_count;
 	u64 page_busy_count;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
