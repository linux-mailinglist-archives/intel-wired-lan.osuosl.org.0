Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 134692AD451
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Nov 2020 12:02:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8CB518693B;
	Tue, 10 Nov 2020 11:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WTftOZKTo5Fz; Tue, 10 Nov 2020 11:02:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0BD786A22;
	Tue, 10 Nov 2020 11:02:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E237A1BF298
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DAE3186477
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F1tjAru70yjk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Nov 2020 11:02:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DAC4D8630A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:07 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id f27so6443412pgl.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 03:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+SbxyZahfMfXnU/FChOm2quTfC2gyIuFdUfnHAtZnoI=;
 b=HDo2tLvTPlUvSl/ynyu+g51F9cSukXV+T7MVRGwd/ECz1C+0G0+I2wcLPsSbC18oXd
 inwKKlEU3sDBIhLVNZk+P/sw4/DfsG0ikuc8rcDBubiB8nStQezh2QFpA9tVWy/mmYXm
 0NGQm50exAolDD2y6mImHFcw8p691Yr8NaP+eFDCmJ+Ep0mHz2HmqPLgWqxyRjBm+x/2
 wrkiY0LtzeZvMJXty6GT15PD+2pZog2E2BfDbekl3yL+wTk6+IBdbl4rq/X3ialkWXa/
 D5nNSkCip85Tn6/xHsVoPBXLanXtl9GKLQslz/3j3gvSFeTCMeS6SxuMRQ5eomkKYJ/f
 Q2Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+SbxyZahfMfXnU/FChOm2quTfC2gyIuFdUfnHAtZnoI=;
 b=ZAH+Ty1w/hwTzOj0l5cSGSvldAVGllPA/Fi4Oq+z0IJqzQQH1VfZwTrxJwx78sKhnX
 Px6KUSRtBEuW34fmtdkLDC6B/70jZgzcZYENsY3jDMWG7/tzr2r8poUNHgD/co01aRba
 rDzLY1nKJOQlrJX/5gRH7Q8Rkuro1Q4FLvDCQiZgAlD7HXSdPCC1p4U1qqG/XTW0yhz1
 JB3zZnx3WOaKsdIJ3G/Wtcs9qD9kfajXeAu3VYTxjxvbBtQ+hR2XzpyxaHupmWp3spmS
 Il7LGUBWOBK1+0ruxQv2dfyf3n8GM2ykhxDiCgbfoZohhjgz7S1i7It0ZT83eAlNjXsh
 Exhg==
X-Gm-Message-State: AOAM530XP7Hy/Ss/D82wphux8GhWCuR+4GzHjyLC7xgSyXLDnuzxE3Wx
 EZXbnJiBvBffkaqHKet1UtM=
X-Google-Smtp-Source: ABdhPJzxXLLj8wlpgU6Uci22CTaPUGpi5ulPRN9nH5GXepx6NeUX+461wyJD5OnMiToM2Fxo8oX5zQ==
X-Received: by 2002:a63:4912:: with SMTP id w18mr17141230pga.131.1605006127544; 
 Tue, 10 Nov 2020 03:02:07 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.45])
 by smtp.gmail.com with ESMTPSA id 22sm3012024pjb.40.2020.11.10.03.02.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Nov 2020 03:02:06 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com,
 kuba@kernel.org, john.fastabend@gmail.com
Date: Tue, 10 Nov 2020 12:01:30 +0100
Message-Id: <1605006094-31097-2-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1605006094-31097-1-git-send-email-magnus.karlsson@gmail.com>
References: <1605006094-31097-1-git-send-email-magnus.karlsson@gmail.com>
Subject: [Intel-wired-lan] [PATCH bpf-next v2 1/5] samples/bpf: increment Tx
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
