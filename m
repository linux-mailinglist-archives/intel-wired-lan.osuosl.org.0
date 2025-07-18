Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFD5B0A505
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 15:23:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BFC64121E;
	Fri, 18 Jul 2025 13:23:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jm-HoudyC2Oz; Fri, 18 Jul 2025 13:23:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEC6D4122C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752845036;
	bh=k4RLhqXeWrS5RgZJNQezfsxzg5XGF5Z2AEnOcuhDTjk=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C/IEoWJryEkFgj2KlEm1+v9lk/BrC8ANwLSEnhpxNVIqjznxnoGunfraT95yQVBHw
	 YFuVFlaY/5X/4l5C1qv0AAa0g6HjiQAiDAuhJID6vl25h9w5NXDWS7/bNaw1qibV5Q
	 uR+xbRfEtkSE0QuNaiJbhqxWc65uKYa//jYvt4qJ18E5UnB1yKZ8KGUVK9dNbo1Tcj
	 KJTDbhPv0ZkLXyzScddBDYl5SRqekObajk9tUIPX9tGFyLujDqyfexIQuR2e7hfOCS
	 0u+ZzWn1dhF87juvwANCIOVcJIFR0hpTug8cqYNhwFR0qVjTos1WobxCaMbwdia5W2
	 K117eUa58171A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEC6D4122C;
	Fri, 18 Jul 2025 13:23:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 86653DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 13:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTP id 6D543400AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 13:23:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id GMiylQShb3VD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jul 2025 13:23:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=t-8ch@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B528D4011D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B528D4011D
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTPS id B528D4011D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 13:23:53 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Date: Fri, 18 Jul 2025 15:23:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250718-restricted-pointers-net-v4-2-4baa64e40658@linutronix.de>
References: <20250718-restricted-pointers-net-v4-0-4baa64e40658@linutronix.de>
In-Reply-To: <20250718-restricted-pointers-net-v4-0-4baa64e40658@linutronix.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>, 
 Simon Horman <horms@kernel.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752845027; l=1799;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=aDE2F+i5U/RwF3bKKM80JxNThsV/LVClmb28mInGzlg=;
 b=GTdAOYrxRWkN606mCj94ouCBtR8Bj3//Ieq8iAC12TTJ5SRo1fgAgU5ZfYRMVlGgf3wvxj49g
 3DVA9ISChT3Bxqn1nQghWmkPNLSDLMlhVSweD9deb0BztPXeXYSi8uc
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1752845029;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k4RLhqXeWrS5RgZJNQezfsxzg5XGF5Z2AEnOcuhDTjk=;
 b=wPrnENv06N8UIVCEh7GN7huPaGCkPrf/LRIrlWG9kf0JApUTTnwLnZm19AyEoH7EYYPnfe
 2rUyhQ89E479cPf0NfRdGMrzHQk2IMqWDme36KBciJwcdSAS9zxD2dec+bpsuEOyNQLFcS
 LuLSu0L6SHJh1XB0GXUnpIJWfFWMXX6l26AFsh/9ERH72Hw+VG9rpdqWxgrcu+chLMCQuQ
 ZddSey9m9XuaV6+eE/X6o6QoefcB+r66HKHyql9WrB8TwRS1IPNx29c0ff2O5Z8n3h6nDz
 xI5EhsjE9cTdGkyyrQQqbT+ZaglZP+0D/612LpG8eV3pePIfPX+/beOiyPsFyw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1752845029;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k4RLhqXeWrS5RgZJNQezfsxzg5XGF5Z2AEnOcuhDTjk=;
 b=fZwcWDbqEHE5G48achDLvaYWRQDua2DiiFMSnNPctFoKX+iSod4JKk8B0v4v9Z0ZHyMkja
 ee9ygxkk5Fd4fhBg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=wPrnENv0; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=fZwcWDbq
Subject: [Intel-wired-lan] [PATCH net-next v4 2/2] net/mlx5: Don't use %pK
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
Reviewed-by: Simon Horman <horms@kernel.org>
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
2.50.1

