Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 332EF2B4251
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 12:14:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD78785E69;
	Mon, 16 Nov 2020 11:14:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M_yKeiAE0pAB; Mon, 16 Nov 2020 11:14:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA7E485F2B;
	Mon, 16 Nov 2020 11:13:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB16C1BF42C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:13:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C58B720112
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:13:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id baUmck2RHMII for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 11:13:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 9009C20017
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:13:55 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 62so12892183pgg.12
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 03:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bAeSUpBLbjOCEiLqRz8yHChict8yQeBE89i4qMRCUYE=;
 b=HRCZiGhfMze/cT5wkg+jlzsWbS+rxF+M74VHbs97vSlv4BcozFiJz4X5bULSA4eYGX
 oXA9P2hKK6KgmqvqgtJqqY0kXLZw0eX4QZpq8jDHudx3xROAALtPd9eRsYYVOyX92kIL
 ipHf9kmhuFfB2tYdh7dGrbY63rgvcPAYWqaUQJP2TLY0VsBJ6OeNaR9XpVWXYx45Upa0
 VlPceHOcu5NldcF798EeqbU4hh19dGE1AuMzsrLl6Ja/nT+zdtKMhRrWKSJ8XmYBzoXB
 onxai0vJ6XujhSgUcUcSeXY+yEBOPNTfxOzdQxMUu/fa284GHOB/cZn+eDAGaSjp7ZpT
 vr1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bAeSUpBLbjOCEiLqRz8yHChict8yQeBE89i4qMRCUYE=;
 b=hBwcX2dyyOHEgYDr7yH4qJR0ORYE7E4y/BD9gthbAw0Mea/owkCrItmC1ETcfEBcFf
 DG7g0TfKmMh2D3bIDNzhjxcN8Mz54a+ISvPxvijbXcdsRGwqEfAJV3couACjfYEUEJd8
 kEvfwRE3enXvMTUvVjaYgoEeX2JgE7SXCQgFU42c1xmswsXqlVxDgJpFkWWQkckYH7xl
 ugWi8CDv9zlrcVhHzxhHzKNPeppe74V2OzTl79nyuSWFooJrA0EtvzbI8ZY91F5JztlX
 X6G6I/MD4FQDIqdtkBJm7MBUKdGxS3epjbMJAONDXjofl46TD1vFG/eLfOsCrPSo59dA
 /YvQ==
X-Gm-Message-State: AOAM531MpQlvU2Mn/ctYkgfRlnt4nEdIJn8t77o/5VnBUCmgao+kphsY
 c3vRFk4y8k61oC45mHBNPgM=
X-Google-Smtp-Source: ABdhPJx783S1CRCdIOA53Z4HGpeqjGAjBbOjl5cElVHcw6E5vtxhwsc0gOevd4EBaRZuUaGtKPawbw==
X-Received: by 2002:a17:90a:bc4c:: with SMTP id
 t12mr14790488pjv.163.1605525235215; 
 Mon, 16 Nov 2020 03:13:55 -0800 (PST)
Received: from localhost.localdomain ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id u24sm19486826pfm.81.2020.11.16.03.13.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Nov 2020 03:13:54 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com,
 kuba@kernel.org, john.fastabend@gmail.com
Date: Mon, 16 Nov 2020 12:12:45 +0100
Message-Id: <1605525167-14450-4-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1605525167-14450-1-git-send-email-magnus.karlsson@gmail.com>
References: <1605525167-14450-1-git-send-email-magnus.karlsson@gmail.com>
Subject: [Intel-wired-lan] [PATCH bpf-next v3 3/5] xsk: introduce padding
 between more ring pointers
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
Cc: maciejromanfijalkowski@gmail.com, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Introduce one cache line worth of padding between the consumer pointer
and the flags field as well as between the flags field and the start
of the descriptors in all the lockless rings. This so that the x86 HW
adjacency prefetcher will not prefetch the adjacent pointer/field when
only one pointer/field is going to be used. This improves throughput
performance for the l2fwd sample app with 1% on my machine with HW
prefetching turned on in the BIOS.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
Acked-by: John Fastabend <john.fastabend@gmail.com>
---
 net/xdp/xsk_queue.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/xdp/xsk_queue.h b/net/xdp/xsk_queue.h
index cdb9cf3..74fac80 100644
--- a/net/xdp/xsk_queue.h
+++ b/net/xdp/xsk_queue.h
@@ -18,9 +18,11 @@ struct xdp_ring {
 	/* Hinder the adjacent cache prefetcher to prefetch the consumer
 	 * pointer if the producer pointer is touched and vice versa.
 	 */
-	u32 pad ____cacheline_aligned_in_smp;
+	u32 pad1 ____cacheline_aligned_in_smp;
 	u32 consumer ____cacheline_aligned_in_smp;
+	u32 pad2 ____cacheline_aligned_in_smp;
 	u32 flags;
+	u32 pad3 ____cacheline_aligned_in_smp;
 };
 
 /* Used for the RX and TX queues for packets */
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
