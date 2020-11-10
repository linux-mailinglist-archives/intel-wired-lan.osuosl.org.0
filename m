Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0742AD457
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Nov 2020 12:02:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC2A8870C3;
	Tue, 10 Nov 2020 11:02:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1W-sqtQyxxSR; Tue, 10 Nov 2020 11:02:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 992B687318;
	Tue, 10 Nov 2020 11:02:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F2ECC1BF298
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EE8FB86A22
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N679GXq1Vp8U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Nov 2020 11:02:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7D31B86640
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:17 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q5so8122892pfk.6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 03:02:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bAeSUpBLbjOCEiLqRz8yHChict8yQeBE89i4qMRCUYE=;
 b=ukDfondez4f1XSppfnFc+BqF8nQ4L3FdFhCthj7LN4hHv62Bc6btOnZghg75/vUhoC
 SgBLIjpr3dnU39LDAiTywvdqiYorGMLmYViWeiBMTc2vcSU+oKypGOfj3ctC4gOMAqv1
 2BxuTVAg0FPF7IYzCWFasiov0yQN00GObJQWmVDQ4INjoONNHlP8MeV9Tsl3sXBziEHP
 dzVv+3U7r4iVqELVVMQkBkItHS2+aJ4nLgG4wTWhbrJ0LQNlPl1h+sUQDbUzxHmfXAVr
 R/zwAK00jdJuFb0ZQokoY75S4oyzlHUfRhlLxLRbi0CMB6AxlRB1g635DAAC3vop7rj8
 dHDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bAeSUpBLbjOCEiLqRz8yHChict8yQeBE89i4qMRCUYE=;
 b=NiybyJOTt0Ke52Gjw6738oOFDwz5hdY1ZP4Cb2K1wtFEP2CXhbOtpWTrodjJXodzl5
 unzJxm+2bABlazJn4E/ixpFODAq4J/IoH5F09YStJsrNaIj8zVJ/N4Gcip2zKxlxNNGa
 lsrm4gVZfbVEirTV4+C4ywcUR/BwkYdwfJTHKx407AMlO6hzKHBmfYOJcCiEtrx0PLv7
 TnDjR1dbjE5NJ1Z/OyqXRUyJl4xDj4ybFBn0mh7q9ap6KH3aT9hAdluR30MVPzG9GW03
 MbfaVptt0UbfyymJFs0p8BYiOx216k58A7jgiovkiyd2MRd/G/I6MF/aDvVxRCWJ3ei/
 PNlA==
X-Gm-Message-State: AOAM5318WOirCz6l8e//fnexMVxaNJUq5jmTFEF5mA4uOET/TVGpckMU
 gTaHabYz5but2nAchcr9I9s=
X-Google-Smtp-Source: ABdhPJxAFPJE7ck3w/rJbVJgGyaBFc5nGW5An7BtutpvMMirfepfVJnKzWTpZoLEvdslA1CaiziadA==
X-Received: by 2002:a17:90b:395:: with SMTP id
 ga21mr4396814pjb.219.1605006137204; 
 Tue, 10 Nov 2020 03:02:17 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.45])
 by smtp.gmail.com with ESMTPSA id 22sm3012024pjb.40.2020.11.10.03.02.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Nov 2020 03:02:16 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com,
 kuba@kernel.org, john.fastabend@gmail.com
Date: Tue, 10 Nov 2020 12:01:32 +0100
Message-Id: <1605006094-31097-4-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1605006094-31097-1-git-send-email-magnus.karlsson@gmail.com>
References: <1605006094-31097-1-git-send-email-magnus.karlsson@gmail.com>
Subject: [Intel-wired-lan] [PATCH bpf-next v2 3/5] xsk: introduce padding
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
