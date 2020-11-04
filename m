Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8015F2A65F2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 15:09:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4114E85F7E;
	Wed,  4 Nov 2020 14:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RuGPcMABFX4B; Wed,  4 Nov 2020 14:09:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 239DD85FC6;
	Wed,  4 Nov 2020 14:09:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 592FE1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5098320438
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mQRGDgA2t28N for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 14:09:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 64F5620476
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:51 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 133so17355686pfx.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Nov 2020 06:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SjS5TEp5z8cEIBGlzyQMwfGUqpE+fsLHvYNxytW1zhE=;
 b=iInZt+7vo/656g3R+HqOPQwJLDpnDzLZdTp/NyL9cIzNchStu1zbL61zamGqJi1Ymy
 6JE480O5LJ8U+EtaZtqVenWwm6nuiLxFhlk6+T0SCkqJj+FRtTW2K4JDGt5PYfNvSHFD
 49CAxFvktj6Vti/2g4zzxuQ7xUcT/Dhr2sCCVh7ZbB3qFJ9WaE62x9HrCfQwg7RmWjMW
 5KqicybSFNNgSX3YTuBECODXL6x9gaHBgMg2h1AHzbro/VbwfCxGENPPkg+k7GzUnY+D
 MzTdbGrsvQfbsMi/YRUO9DzLCjB0xRp5m4UeRyQrrYOsqqX14WyMLgDAgufN1ZNmv5xn
 0y9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SjS5TEp5z8cEIBGlzyQMwfGUqpE+fsLHvYNxytW1zhE=;
 b=I05t1YpmT8aUJBua5WRI674iOtNvaUATkjTnrOSETNOv2ZxPHk+INwPzn+IWeOSojN
 gOfBEcemnI/Dn+I9xZ0el2Cy7j8CMdX8sySqft8h05vthOs8P4alg1KWgXlj/Xws5kwk
 Lf9JlH+5i+My+lpJrlVrZKxPdcQJK71LrZQCp0Wg22Ofq7ucX+seHTqK6WxS7e3SRXpm
 3MqPQfEXFzUBxnpU//pV7YjqwHPUUe1wd+o3OyqoZWSuw6sp5eHwNragMasDsiTvMqMH
 zQiWMs1ZfjJeWE1xL4F1GJBIPui6BrbCnGnSC+NJrOqVkzUiwMxchqB800rlorLd+sqv
 N1yQ==
X-Gm-Message-State: AOAM533s/k+lBB7mjPAqOORLPVAvSqK+TiUjAJ1v/yE/d5Lhc+Urami1
 8g76ci+ARM98/BxIWNoaOp4=
X-Google-Smtp-Source: ABdhPJwNBSJJDYLtTsXrcjAt4hqpccMQ5da+iMvYUZs5LnvSwt+eTwObKsSYWc1EFBYyXl1kjAiLQw==
X-Received: by 2002:a63:1924:: with SMTP id z36mr21497231pgl.354.1604498991045; 
 Wed, 04 Nov 2020 06:09:51 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id q123sm2724818pfq.56.2020.11.04.06.09.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:09:50 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com
Date: Wed,  4 Nov 2020 15:09:00 +0100
Message-Id: <1604498942-24274-5-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
Subject: [Intel-wired-lan] [PATCH bpf-next 4/6] xsk: introduce padding
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
