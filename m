Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B08E2B0A503
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 15:23:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC60060DA4;
	Fri, 18 Jul 2025 13:23:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C3CfdAa151_7; Fri, 18 Jul 2025 13:23:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F10C460E10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752845034;
	bh=iE7hw9+bZACRqLCE5oK6anYds6V+tWE0n5Y1ZwoRR1M=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mIHVErerchxAZvPkHLpC5ryj2N2Wll65y886Q8BDDiERYJhXnVQQrPbNH7Vpm+D4m
	 ra/LgpKjz21ppvKBPOUfa21l/jFCWLfo8c+llXOA9AV3zqtApuG2Lc2iIiE6N39YYD
	 A7m9VrmH/pGEHIQaqT7uW25za0UuIrzmApXU85G57nPz5HC2G9dKB+VaLeUeDKXeGs
	 cSSyaOz6izXN9q+sD3paPSto00hXcLSo6yelBxCvoc+03HCEzJdlm622Ye8tSZBZ5P
	 t5XT4+mye4QBAMydCkXw3oRE2r7OIasiGuJ2O9Fvp+7iFAVTDIlN4kL3t1gUWUEiUl
	 XU0g/BWfue0rg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F10C460E10;
	Fri, 18 Jul 2025 13:23:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id BCF3EDA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 13:23:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id A3C1A60C1F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 13:23:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id X5OlrmLLOjDu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jul 2025 13:23:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=t-8ch@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B26A360903
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B26A360903
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id B26A360903
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 13:23:50 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Date: Fri, 18 Jul 2025 15:23:41 +0200
Message-Id: <20250718-restricted-pointers-net-v4-0-4baa64e40658@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAN5KemgC/3XNS47CMBAE0KsgrzHyLx9mNfdALBy7Ai0hB9kmC
 kK5OyYsQKPJslTdrx4sIRIS+9k8WMRIiYZQgtlumDvbcAInXzJTQlXCCMMjUo7kMjy/DhQyYuI
 BmdvWee+FRuUlK9/XiJ6mRT6w10HAlNmxNGdKeYj3ZXKUS//W5bo+Si64VLYXDqYuS78XCrcch
 0DTzmNxR/VtNeuWKtbeuL5B36K2+M/SH6uW7bqli6W7xlZaomq77q81z/MT130swGQBAAA=
X-Change-ID: 20250404-restricted-pointers-net-a8cddd03e5d1
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752845027; l=1796;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=3Gj5w5HsItXOBNki2riEbc69tNDXQwN6DrDF+HRXaSQ=;
 b=DWaPcDFUr2/N2fYXMgVEmheOtBa9OQXB8VHbff97i8usZ/cxn4dmeEsP68M/YKkJiWq1Z+H1c
 FPEwYW7yHA9DIGq5iZK0JE0MCO7A8B3773+7aVeQ69bQMJjF6fLB3Te
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1752845028;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=iE7hw9+bZACRqLCE5oK6anYds6V+tWE0n5Y1ZwoRR1M=;
 b=F/w5LVRbDSebIic/4Y0Fr0thO5Uv7WpT55/AIK/GzmnkxlvMy7c9ThpvuvCR64mGN35mj+
 IHqX0+BEuu+v8EXbUxLdoX9EmGvLQzjweRMIVX5JSWNWwx6UIqnakE47soxm3/zH10JFc+
 +j2mlAfwiQnb6+j5PgjNMPDXesocGEfQhqlY+WIa/jzBgTn40xVkb46SaixhyZonZPApYB
 qb+VNCOgfOi6a+/iNabXlFO0kgAJ9LxZGPcOIX21m0trgX8OhXTzjP2EVnMcmccEBjBZZw
 WfGlhV/Ejr2K/EMAS8oy4UGmTHp8JpC6mQApdvx32DqEywk4ghpGcOk/k5WY5Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1752845028;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=iE7hw9+bZACRqLCE5oK6anYds6V+tWE0n5Y1ZwoRR1M=;
 b=J7nloz6c1uwBPmOsvHuHIjNrJDgNV6BNkq7pz0gJXDOHjEQxUfHpCxKzjg9Si49GAqSnMf
 j7kah6zkbakXKdDw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=F/w5LVRb; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=J7nloz6c
Subject: [Intel-wired-lan] [PATCH net-next v4 0/2] net: Don't use %pK
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
acquire sleeping locks in atomic contexts.

Switch to the regular pointer formatting which is safer and
easier to reason about.
There are still a few users of %pK left, but these use it through seq_file,
for which its usage is safe.

Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
---
Changes in v4:
- Pick up Review-by from Simon
- Link to v3: https://lore.kernel.org/r/20250618-restricted-pointers-net-v3-0-3b7a531e58bb@linutronix.de

Changes in v3:
- Fix typo in commit messages
- Link to v2: https://lore.kernel.org/r/20250417-restricted-pointers-net-v2-0-94cf7ef8e6ae@linutronix.de

Changes in v2:
- Drop wifi/ath patches, they are submitted on their own now
- Link to v1: https://lore.kernel.org/r/20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de

---
Thomas Weißschuh (2):
      ice: Don't use %pK through printk or tracepoints
      net/mlx5: Don't use %pK through printk or tracepoints

 drivers/net/ethernet/intel/ice/ice_main.c                      |  2 +-
 drivers/net/ethernet/intel/ice/ice_trace.h                     | 10 +++++-----
 .../ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h   |  2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)
---
base-commit: d086c886ceb9f59dea6c3a9dae7eb89e780a20c9
change-id: 20250404-restricted-pointers-net-a8cddd03e5d1

Best regards,
-- 
Thomas Weißschuh <thomas.weissschuh@linutronix.de>

