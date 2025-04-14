Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF03A886D1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 17:20:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88A5760E4F;
	Mon, 14 Apr 2025 15:20:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rDxqpO38ONxm; Mon, 14 Apr 2025 15:20:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9ACC60642
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744644031;
	bh=+OyON1Yf1rr+8CzcSa4hkkYGRtID+dWFkGoiAoSKTwA=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GjUixtv+Gfbs5Qzje73L17IwSacbqls1x1KmyBcgRIM6BCtzZb6jKfJnMGhqPgriJ
	 bBYt8vViJv6jpqJZRHun4D+GY+Khk/oP/gmyXtk8oKjOiGnr8N0pFQU/NP+BZvxxxD
	 zFaLfMaw6rYQfE64VPtAQFMgVDFhT+aGPd+r7JoEAkbiGzXCEDqXdzPJRj7AdWqbC0
	 euiBfioyMLQCK4d1fq4FRshdzhR5tML3xBX4OawdZT9OObNVkVIZn48hquNpdOiNsF
	 UnSkT5FY7fVWxztMbGftQS8WBx4x7tCBGHlwmGpBD/BlJ2bfSctvERTQKxVTpBRlhz
	 JTn7qMMGGxBPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9ACC60642;
	Mon, 14 Apr 2025 15:20:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 4F1AD250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with UTF8SMTP id 3FECB403B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id ww65avqVosWk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 08:34:24 +0000 (UTC)
X-Greylist: delayed 487 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 14 Apr 2025 08:34:24 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 95F5A403D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95F5A403D6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=t-8ch@linutronix.de;
 receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with UTF8SMTPS id 95F5A403D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:24 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Date: Mon, 14 Apr 2025 10:26:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250414-restricted-pointers-net-v1-7-12af0ce46cdd@linutronix.de>
References: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
In-Reply-To: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
To: Jeff Johnson <jjohnson@kernel.org>, 
 Loic Poulain <loic.poulain@linaro.org>, 
 Brian Norris <briannorris@chromium.org>, 
 Francesco Dolcini <francesco@dolcini.it>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>
Cc: ath10k@lists.infradead.org, linux-kernel@vger.kernel.org, 
 ath11k@lists.infradead.org, ath12k@lists.infradead.org, 
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-rdma@vger.kernel.org, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744619172; l=1640;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=WzJ/HmoEyIxMvJeEOlZ2czFzOQnDOjD3iHfVNkyBNQ4=;
 b=Zuho2QqTEJS0pVHFp2MmyTiIbCDfOTyQV+4ybcxy4I85pU30LrHxUGib19TU2f1V/3c3/DFBC
 e7ly/4/qAorA4GYLUQdHhuDpswxVWNrCo2fL5St4/wIo6zWsIBOTgfx
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=
X-Mailman-Approved-At: Mon, 14 Apr 2025 15:20:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1744619177;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+OyON1Yf1rr+8CzcSa4hkkYGRtID+dWFkGoiAoSKTwA=;
 b=TIrUb6KaLTcpHArLnyDrZ1/XzY6utlfmyG99ojUWp1bMSzIHF1Vgi08/TVQvWG4iM+opbL
 cWWo8YuQ2dBWBoxAayYDMVZlaw6Ioc86xZFPw3MD/rmV/AU9pxMCsjA3+1uR81ohZq6+Qa
 kPP1Z+VG90nbHrkaymmkH78gr4q3g3rRDaoSHgaX1aD1/LbBlPUf1ZuHGcTQI0vfjfPb6j
 ospQd6F5IkYTdO/VqmDmF2+V6Lnjo4B2Ga4yfmBs3b/EfvEMEgoz8I1fzPr6b5FZ1Lt53v
 XI3GSuhhqbNqKW3qpT3asL9boRf5663GPlGNpqyxXpj1DUZRhDg1b+shCLaklQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1744619177;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+OyON1Yf1rr+8CzcSa4hkkYGRtID+dWFkGoiAoSKTwA=;
 b=b81luPP9nxBvVUYPxsolvoc8ilyKeEV88+u2tvl6LB2jk2uYlffGU4Xys4Y38dexezpnwV
 22324LRkDL8QYaBg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=TIrUb6Ka; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=b81luPP9
Subject: [Intel-wired-lan] [PATCH net-next 7/7] net/mlx5: Don't use %pK
 through tracepoints
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In the past %pK was preferable to %p as it would not leak raw pointer
values into the kernel log.
Since commit ad67b74d2469 ("printk: hash addresses printed with %p")
the regular %p has been improved to avoid this issue.
Furthermore, restricted pointers ("%pK") were never meant to be used
through tracepoints. They can still unintentionally leak raw pointers or
acquire sleeping looks in atomic contexts.

Switch to the regular pointer formatting which is safer and
easier to reason about.
There are still a few users of %pK left, but these use it through seq_file,
for which its usage is safe.

Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
---
 drivers/net/ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h b/drivers/net/ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h
index 0537de86f9817dc80bd897688c539135b1ad37ac..9b0f44253f332aa602a84a1f6d7532a500dd4f55 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h
@@ -28,7 +28,7 @@ DECLARE_EVENT_CLASS(mlx5_sf_dev_template,
 				   __entry->hw_fn_id = sfdev->fn_id;
 				   __entry->sfnum = sfdev->sfnum;
 		    ),
-		    TP_printk("(%s) sfdev=%pK aux_id=%d hw_id=0x%x sfnum=%u\n",
+		    TP_printk("(%s) sfdev=%p aux_id=%d hw_id=0x%x sfnum=%u\n",
 			      __get_str(devname), __entry->sfdev,
 			      __entry->aux_id, __entry->hw_fn_id,
 			      __entry->sfnum)

-- 
2.49.0

