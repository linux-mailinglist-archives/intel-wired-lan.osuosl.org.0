Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE22FA91DCD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 15:24:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54CCD6FCB4;
	Thu, 17 Apr 2025 13:24:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i80RA3baQ95Q; Thu, 17 Apr 2025 13:24:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B35706FC63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744896275;
	bh=7qeA/MlLg5TVbU0397qorNcHIJah7W1zDQiEVoWGxtM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4RGr+BZe2jPbopA7Ox6C9Rn5qfP9BWVVru1zuD7OIA9icDvM9Lf5z1wdGvkLJ9pY0
	 ZYH1HSwmD0K6ZDhZoP/p16h8P67NGcBhnB3GcMEDWiSZMS2Ym7bdTkpoO5JBkoFgeq
	 4fwsDhMumUZAmWeXTrMvxY7iP4pJ7/OL84gYiiPtJ5XC9OdyGRnrply85hGol5LyxA
	 lqEQibre2VQQQIkB1jhD2Ifen2Puixf2JcSSATT2CHaVBSUz/voedR4hRemexZYrlN
	 fqqFmkGH6bfkU6XulaOjsWUXznHPfocDj+vx+FGvU3cHQJzEMYZKd+dAX+ijDkPfx8
	 BGdYAY+7fwYJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B35706FC63;
	Thu, 17 Apr 2025 13:24:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 1A5B91F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 13:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id B624D6FC63
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 13:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id mDNlbGNCN0ZM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 13:24:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=t-8ch@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 000986FCAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 000986FCAB
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id 000986FCAB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 13:24:30 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Date: Thu, 17 Apr 2025 15:24:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250417-restricted-pointers-net-v2-2-94cf7ef8e6ae@linutronix.de>
References: <20250417-restricted-pointers-net-v2-0-94cf7ef8e6ae@linutronix.de>
In-Reply-To: <20250417-restricted-pointers-net-v2-0-94cf7ef8e6ae@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744896267; l=1753;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=1O27NFYPZ19IgzsREQln6IV5+vcG07b7Uu4J0pPD9hY=;
 b=WC7ZK4Hrm/09jUGuveXUDEo+yg1Ik/GZ/ozPjzk7bqcG8rwjI0WtWwjvGegAgrwKQQVmE6mxP
 tIYIHp8vJCrDD7rFXaoatFMXxgBKxvKuuCUaIpm9Kp86BgyBvjNtJS/
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1744896269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7qeA/MlLg5TVbU0397qorNcHIJah7W1zDQiEVoWGxtM=;
 b=g6QoP311AeS6Mx1cg5R8FbGlIPKlDyonmDm7HQC5di/uZqWa5NMemkurzPCsuK1ygx4gs7
 7xZlHAyAxpa2BjqzLAiXrdSpyG7K8cnfHF1v9R4tX+m7fbDkYqERgyhbCKNiWA98eFo9dA
 rs9W1VEKHp4Rp92w+fGDOWgyCtuSS/Ovy8OJlNacqenWg2EM+sUjV65nMkzqf9v2sn0M+1
 EhWA9GAV+sFd90YAbwpxcJ0S7faDeIgzAuDvKUB+uEoO2yavl8/Uzl/TWfdjdc1kcbRXKK
 szOnXS7VLoPLgUbHla/WOiAMRQgpMQdZkaqbGZfMaq+Bs/bZbeCii9jktLQpow==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1744896269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7qeA/MlLg5TVbU0397qorNcHIJah7W1zDQiEVoWGxtM=;
 b=3PHqCejP2SQSvoddhTitFoMUXI2U5NWhD1r/og0rnq8ykl4l7StGnf+hPP9a0v4aH017Bl
 g39UzVDsYL5H75Ag==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=g6QoP311; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=3PHqCejP
Subject: [Intel-wired-lan] [PATCH net-next v2 2/2] net/mlx5: Don't use %pK
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
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
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

