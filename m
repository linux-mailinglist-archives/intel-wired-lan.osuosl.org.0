Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DCCADE43F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 09:08:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EDB980843;
	Wed, 18 Jun 2025 07:08:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WK7GGEwqx7SV; Wed, 18 Jun 2025 07:08:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B55880890
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750230501;
	bh=MGK97/9CBMGDn1jVvJaZcWRYHnqpFOoQ221JfSRUEOg=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b7yUdn//h0gNCpzhPFuN4LvIK60uQUyvB7KG/Rx4JWZopJNWxepQhHzoHl1qFtn1Y
	 Guid2q7vnrH4jDTZTrpbc2xs49RvfCMAQ0S0HSS20iPJVx2ZCS7wEjFXgQM7gx1l1t
	 REPrgZWqsjw+efY9gE2LNLzn0hARehbHKPm8X18eMVXzKNLDFQYdeCmRWSzVZqBkV1
	 JBV9AQEOpxCuSicG7YrwmggwaaGe72Tbns2SuN0w8B+meeWqzMI6+1pm8lk/B9wA7m
	 WP1wRq3w2t+sRMyU81cXdazYGW5Mjo2mR3OFGuOE5eBUFGqz6uZfXu97hZd6Kz+d6b
	 vfx0SHrlC3yJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B55880890;
	Wed, 18 Jun 2025 07:08:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 6B07C16B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 07:08:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTP id 67F1F40199
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 07:08:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id Kg3Ke3DqlzM7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 07:08:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=t-8ch@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B5DA3400E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5DA3400E5
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTPS id B5DA3400E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 07:08:19 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Date: Wed, 18 Jun 2025 09:08:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250618-restricted-pointers-net-v3-2-3b7a531e58bb@linutronix.de>
References: <20250618-restricted-pointers-net-v3-0-3b7a531e58bb@linutronix.de>
In-Reply-To: <20250618-restricted-pointers-net-v3-0-3b7a531e58bb@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750230493; l=1753;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=LwyFCg1hPwOB3FrGaSxk8SWGYFXPgImSK0vRpO9RTGI=;
 b=13EGGL/pGeWrq7COE6/dKm8CewTN7vPHrb2NvryTUPw/D9EerXvdGKcYEGE1UY6c7bzvm7zga
 ltZrQmo2USMB4QuewDf0McoGBUfAx+i/7ntsCusdqHTzWh4p1uLIHWU
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1750230497;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MGK97/9CBMGDn1jVvJaZcWRYHnqpFOoQ221JfSRUEOg=;
 b=FQpO8WFl2oBTyLCDow7uKVsRvnflLcvil+7wIDFgdbPYXYP/UbzO7jjfqqYFBvVMijtijt
 YkOqKWQxoOhHtRNArJVJBdxMWLFOPkskfRORyNBv8btHYBfzgjszPzjDoSxyYXQDgf7sNV
 RdYITFD9Jfhkl2a1bhMEz3IZmneFo3YxNrKnBY384JHbkbHIudc364rm8A5vDYIdhmwM/Q
 g+EI8SBWc9pAf3EVMRm0g/VyFT1NLp9mZhH2cBDSXBVSvo3PcQ7/vU5ioHYREQr78mpsaq
 Uby/FexnPEbHm4HZ4W3WFQufnUJQKWCs6jxK2Lc8dz3aqNXn+dRJfSnmfR4Rig==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1750230497;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MGK97/9CBMGDn1jVvJaZcWRYHnqpFOoQ221JfSRUEOg=;
 b=qw4ozD8ypbX6sEExvdeQ6aL78/JpSKiRdkhsJQnbbvL+r5jKr7ObW3DBGMXoq8jE2aXhrl
 rcKFMOmoRHWciQAQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=FQpO8WFl; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=qw4ozD8y
Subject: [Intel-wired-lan] [PATCH net-next v3 2/2] net/mlx5: Don't use %pK
 through printk or tracepoints
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
acquire sleeping locks in atomic contexts.

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

