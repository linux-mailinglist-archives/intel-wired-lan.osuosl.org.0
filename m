Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 310FD2B424F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 12:13:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C82FD86845;
	Mon, 16 Nov 2020 11:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 08msBdJHFHCD; Mon, 16 Nov 2020 11:13:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2568B86851;
	Mon, 16 Nov 2020 11:13:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E68C51BF42C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E2E4687124
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PJ6oK7IbOJNV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 11:13:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A8C928711D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:13:45 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id f18so12891391pgi.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 03:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+SbxyZahfMfXnU/FChOm2quTfC2gyIuFdUfnHAtZnoI=;
 b=dm4VnmqrFU23MKn/TKtIS4x/rNBKQpkzivbC6Xa+MPM04MO8nbeTUZY8HTgfvYys1j
 EOYiVrhB58A2akTYPFjGXf7c2SMKcPDfdAOiRAGjSu+oOvaTYIfJ+Dk+od/gIVIu2D8r
 cbAXyVwzvuDEhe9GUS0IqSfIbRiAgw61hQ6AMbBpv7o2B07EiT2/VFrTgsIiM9Kj4YMs
 fMj06Fw8BwmdGHUA0QAA8rCG19HY4PSZu+iB0zY4NfNI9ZV19WWE+YrumAo01AqbuRyQ
 bNu465+g6EAYR8Rx3rjh4x/Z8Y+Y4BRhvMbr2o7xLXlnZC8QqcDlOa18ogeYc9eqYMMT
 MikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+SbxyZahfMfXnU/FChOm2quTfC2gyIuFdUfnHAtZnoI=;
 b=UOCDs6u/Rk5SwcJH6YtVMND/AMYC843nVC0x1SUnU183ROcJyv7jS+ZvZU7A4uZLtq
 uS4lZR0XntLyzyTN3lPniNyQFwiTx1DGOECAH8PmtT/JYFq/nSkjolW9Zwc27g5dil1s
 EJyC5cvflj8n5GFZbwpN2ltTHPUIinJ5tBNDuxzAqZjeKcTjPXMQwYDWRtPZLGU4hMvg
 iI+Vn447n/LF9R0kUA1ftOXMcfdNV4tPEF0TTNkQf87s5ueVkzxTGOMzDjapxqCY80fM
 xu/t1QFtW1kucrhpHEgXPbG+YOCJpedbFSYJyNaKQrRCK787PpxrR4l+HvPWWw26UXTH
 Y0LA==
X-Gm-Message-State: AOAM530A85XuDPaFvA9s1P/54rrXM8iCmXGrcO9VLSv10rLmsQ/IY8R9
 AQ6vLYH1sa35+cHZ9h/Prlc=
X-Google-Smtp-Source: ABdhPJybPSvfextFY3UUIP4zrPkriv1bO8XhL0wD6bS3IGeBhbnbQ10ErLFdZ26Ko4b4QBOR6o+FWg==
X-Received: by 2002:a17:90a:fd0d:: with SMTP id
 cv13mr15802905pjb.124.1605525225333; 
 Mon, 16 Nov 2020 03:13:45 -0800 (PST)
Received: from localhost.localdomain ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id u24sm19486826pfm.81.2020.11.16.03.13.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Nov 2020 03:13:44 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com,
 kuba@kernel.org, john.fastabend@gmail.com
Date: Mon, 16 Nov 2020 12:12:43 +0100
Message-Id: <1605525167-14450-2-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1605525167-14450-1-git-send-email-magnus.karlsson@gmail.com>
References: <1605525167-14450-1-git-send-email-magnus.karlsson@gmail.com>
Subject: [Intel-wired-lan] [PATCH bpf-next v3 1/5] samples/bpf: increment Tx
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
Acked-by: John Fastabend <john.fastabend@gmail.com>
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
