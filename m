Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7236DA91DCC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 15:24:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2978883689;
	Thu, 17 Apr 2025 13:24:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AS47gVQPf1HU; Thu, 17 Apr 2025 13:24:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1802E82BEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744896273;
	bh=t4LXHHM9pIIYS/FncXPzORV/LCy/Y/iy+i/1qQY0jvI=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=pL65Z6EpNUM6vno1lmdloBNLCRlDEVcsY6GSqUAWUcQTZJ/D2lYfCcyDsyN8TVYG9
	 saFSKwbx6rYVpf6NTTtSJTXC6kXKNDqOXb7BbZg0odjjSHn/nwmFfiRWqONGJDTv/6
	 w+vVpqAy2tK2aJKGQqh8e+IR/5bqLwsK7vZLfC5jnX8gwGDV26TmRqm84p51JRqXx6
	 q4HT12sPq+EBzI3MfdurN0qi1ZOweHz1jS8y0N5vJddu5bNVdqNP7TOOoly0Uv5ZNI
	 rSDd2AjyOLGvDcqGmfpCNJ8GzotpVNTOlBl+R8ppw0Q0m5PbVZctuU3j3P/zUG0gf3
	 YyP+G7bCqHjYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1802E82BEB;
	Thu, 17 Apr 2025 13:24:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 9F4B81F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 13:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id 909476FCA9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 13:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id Ye5tbyeHknYN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 13:24:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=t-8ch@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AC2226FCAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC2226FCAA
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id AC2226FCAA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 13:24:30 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Date: Thu, 17 Apr 2025 15:24:00 +0200
Message-Id: <20250417-restricted-pointers-net-v2-0-94cf7ef8e6ae@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAPAAAWgC/3WNwQrCMBBEf6Xs2UgSWxFP/of0ULJbuyCbsoklU
 vrvxnr2OLyZNyskUqYE12YFpYUTR6nBHxoI0yAPMow1g7e+s61tjVLKyiETmjmyZNJkhLIZLgE
 R7Yk6dFDXs9LIZTff4VsQKhn6SiZOOep7v1zczn9299++OGON88NoA7Xn+nR7sryyRuFyRIJ+2
 7YPY+cLuMwAAAA=
X-Change-ID: 20250404-restricted-pointers-net-a8cddd03e5d1
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744896267; l=1475;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=q5DT2URR0iIEIgICy/7GxHM8nUG2+FDbrbiNStsY9Yw=;
 b=X08p2lFA0ynS1mcdfvjxdH+ZL1KjMvP/BrAphh8RvW1oCW8Oz+ExDLOL0sHQ77+OvLraMX/lt
 /ey18iOGONmDpGlQAtBTi6GVmbSjXx7x12s4a/rI1lTDInlhQJZgtP3
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1744896267;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=t4LXHHM9pIIYS/FncXPzORV/LCy/Y/iy+i/1qQY0jvI=;
 b=b+0jnMyAUqQACm6y8lBp500HM5X/piD+c2TyCr8RU0raEUfvsvhCDW1huz0/iphE1MqsAY
 f47CKOB7KZzzcFlkp3w6dI3RBWxEet4TtR3GjHzBxO3XzS0mORQ49fTnVfdG4jNLHuch3L
 nCcaRk/Zns+AlF6Z5hesBmF5HKPFgzr33oxys0tN3hic7trhrxlCH9ajbl/B9sPvHmFn90
 CA7qskUDkY2O9pH/+YT0NMYnUDRRQnXb9cSCAR549ihIr01fVQv12yiWWVH5HB6CIqlH4a
 rh6ptcoE7Ssn9aDpwOAR564KGolJ+8LQGn1tYCeBRgMY80C7w5AEwJ4JKrGusA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1744896267;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=t4LXHHM9pIIYS/FncXPzORV/LCy/Y/iy+i/1qQY0jvI=;
 b=4F18vwRCjEGRayESMci2JVont349Cxglgm3zyTPojVGjNtVCsE6iYqrTJUM5uGH3TRHztP
 rGTxYINxZOmOz6AA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=b+0jnMyA; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=4F18vwRC
Subject: [Intel-wired-lan] [PATCH net-next v2 0/2] net: Don't use %pK
 through printk
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
through printk(). They can still unintentionally leak raw pointers or
acquire sleeping looks in atomic contexts.

Switch to the regular pointer formatting which is safer and
easier to reason about.
There are still a few users of %pK left, but these use it through seq_file,
for which its usage is safe.

Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
---
Changes in v2:
- Drop wifi/ath patches, they are submitted on their own now
- Link to v1: https://lore.kernel.org/r/20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de

---
Thomas Weißschuh (2):
      ice: Don't use %pK through printk or tracepoints
      net/mlx5: Don't use %pK through tracepoints

 drivers/net/ethernet/intel/ice/ice_main.c                      |  2 +-
 drivers/net/ethernet/intel/ice/ice_trace.h                     | 10 +++++-----
 .../ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h   |  2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)
---
base-commit: cfb2e2c57aef75a414c0f18445c7441df5bc13be
change-id: 20250404-restricted-pointers-net-a8cddd03e5d1

Best regards,
-- 
Thomas Weißschuh <thomas.weissschuh@linutronix.de>

