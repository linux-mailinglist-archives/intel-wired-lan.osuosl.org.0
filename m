Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EAB2A65E2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 15:09:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B544C874E0;
	Wed,  4 Nov 2020 14:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pMvEl0ljNsok; Wed,  4 Nov 2020 14:09:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4473387515;
	Wed,  4 Nov 2020 14:09:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 243541BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2107086AEE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ppXuM3KPqXTA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 14:09:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9313B86AED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:42 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id o3so16687354pgr.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Nov 2020 06:09:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8+wmdl8dxGrL4PiYjqO1IGkwfNXPjaWfQTVtL5mk3TU=;
 b=pqfALFjyvFpVFRkFsJUEQWBG1QOKGsIgGOga8VgN6ZqRXRoEarHrMOg3EaA/cevxMJ
 OHh7oDXHKItfvhHKg1l8hH4ze1C88whzbodX2iRIa36ANhUrOvAkHVPt5BWpIugKsvgx
 VV4yfRMElhX7WfIRm8xopCdT3bqnm84kNIf924oric/ZSsQ9VQ/iwMkjlnRFjWiZII1r
 Deq1joxcO65nhHdaoBOG7PErCT7dPxbW4UbOJ6cQ3vtMkywVEY4RpwtMNswx79Df8JYO
 /vwb+mOSe90WdBa2G3BzTlALfjrh/VOCiE0k7TUNEZT37Xb7hIwUKvxxKWAilBDqqxeG
 Yz8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8+wmdl8dxGrL4PiYjqO1IGkwfNXPjaWfQTVtL5mk3TU=;
 b=edTULGXHWVKRblWyIeckIm2rBm/W1de4+gCwabEYPp0vGPH441Qfw2DLabRVzKHbzb
 45saw5eunsWyFNlDClxQ3Cpm7goHLQKy+J4NtAOHLeNXZShhJGgsgkUZVzFV9OVF9x34
 xeY9ASG+6JKHOmCxArQGPEX2k7czV79ZW/Ag7jWizn0KPr8J2HHHPF+28AUrVhvDDdK+
 ip7k+rzLbTSz9LxUbjVEER7LgGOdh9nhxwdlXoCqdE6DdQxC+KfZY2wks+g8uWDtcs1h
 Vyecg5Ee0pbNG5g0BgX8pAjvPF+20FiipSxkrAYpCek1QcCYRb8D6C2QnABHFQ3bIYep
 Vp+g==
X-Gm-Message-State: AOAM531IMbcgeBfe3GmDWx7aMG3Rzhh8kkJS+TwN2bFbjRKaKqyD+qsU
 9WuFKi5bBMrDFMj9rOKaN2Q=
X-Google-Smtp-Source: ABdhPJzIoXz/gBu1yr5pXzZGVVq8Z08Ksz/3VbhzpwCKerO50ZqQ6h9oFGmPWePptpisDK0xiKadmg==
X-Received: by 2002:a17:90a:e658:: with SMTP id
 ep24mr3478312pjb.171.1604498982258; 
 Wed, 04 Nov 2020 06:09:42 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id q123sm2724818pfq.56.2020.11.04.06.09.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:09:41 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com
Date: Wed,  4 Nov 2020 15:08:58 +0100
Message-Id: <1604498942-24274-3-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
Subject: [Intel-wired-lan] [PATCH bpf-next 2/6] samples/bpf: increment Tx
 stats at sending
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

Increment the statistics over how many Tx packets have been sent at
the time of sending instead of at the time of completion. This as a
completion event means that the buffer has been sent AND returned to
user space. The packet always gets sent shortly after sendto() is
called. The kernel might, for performance reasons, decide to not
return every single buffer to user space immediately after sending,
for example, only after a batch of packets have been
transmitted. Incrementing the number of packets sent at completion,
will in that case be confusing as if you send a single packet, the
counter might show zero for a while even though the packet has been
transmitted.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 samples/bpf/xdpsock_user.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/samples/bpf/xdpsock_user.c b/samples/bpf/xdpsock_user.c
index 1149e94..2567f0d 100644
--- a/samples/bpf/xdpsock_user.c
+++ b/samples/bpf/xdpsock_user.c
@@ -1146,7 +1146,6 @@ static inline void complete_tx_l2fwd(struct xsk_socket_info *xsk,
 		xsk_ring_prod__submit(&xsk->umem->fq, rcvd);
 		xsk_ring_cons__release(&xsk->umem->cq, rcvd);
 		xsk->outstanding_tx -= rcvd;
-		xsk->ring_stats.tx_npkts += rcvd;
 	}
 }
 
@@ -1168,7 +1167,6 @@ static inline void complete_tx_only(struct xsk_socket_info *xsk,
 	if (rcvd > 0) {
 		xsk_ring_cons__release(&xsk->umem->cq, rcvd);
 		xsk->outstanding_tx -= rcvd;
-		xsk->ring_stats.tx_npkts += rcvd;
 	}
 }
 
@@ -1260,6 +1258,7 @@ static void tx_only(struct xsk_socket_info *xsk, u32 *frame_nb, int batch_size)
 	}
 
 	xsk_ring_prod__submit(&xsk->tx, batch_size);
+	xsk->ring_stats.tx_npkts += batch_size;
 	xsk->outstanding_tx += batch_size;
 	*frame_nb += batch_size;
 	*frame_nb %= NUM_FRAMES;
@@ -1348,6 +1347,7 @@ static void l2fwd(struct xsk_socket_info *xsk, struct pollfd *fds)
 		}
 		return;
 	}
+	xsk->ring_stats.rx_npkts += rcvd;
 
 	ret = xsk_ring_prod__reserve(&xsk->tx, rcvd, &idx_tx);
 	while (ret != rcvd) {
@@ -1379,7 +1379,7 @@ static void l2fwd(struct xsk_socket_info *xsk, struct pollfd *fds)
 	xsk_ring_prod__submit(&xsk->tx, rcvd);
 	xsk_ring_cons__release(&xsk->rx, rcvd);
 
-	xsk->ring_stats.rx_npkts += rcvd;
+	xsk->ring_stats.tx_npkts += rcvd;
 	xsk->outstanding_tx += rcvd;
 }
 
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
