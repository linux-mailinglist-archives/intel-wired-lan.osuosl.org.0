Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD68B20462
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 11:51:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3901561295;
	Mon, 11 Aug 2025 09:51:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zJi_T2-Uhj4K; Mon, 11 Aug 2025 09:51:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14A31612A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754905884;
	bh=b0423Apn/yDdM75Hzc5wqjfCAct86GXaSdLhTu73vbY=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ytlV5WafgcUixogLkZtZeKwel2vZ4aZW0bdXv8qgz89FQFszNJRESOtFALGYX+pZw
	 QxJasULDDePpTNWHmA01iWcb/ZgjQk3yt1uGxrSXMkz5IBccPWJXovU78dHZbrWZ8Z
	 lD5WNFv/foZ1LVVd+mQYSITF+JTDxpLhy/lPTvNfJTSUDqIrgAogDUksiTrVs0PD8F
	 4NDxm/hzvupmVGj/DMk/C7RBcDHhNXEYCA340mzss1PL5PPVVPU9jyTmHJZS3xjSsa
	 p2t9I2DmYAy0IYwiFCCVy34HkW2mjoUlHBafhfim3nsFlzQZj882o25djlqRa3TKAR
	 ZWidDOfMf02/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14A31612A1;
	Mon, 11 Aug 2025 09:51:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 316661C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 09:51:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id 23BD661288
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 09:51:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id iYHnwtuUhOyX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 09:51:21 +0000 (UTC)
X-Greylist: delayed 470 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 11 Aug 2025 09:51:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1EECE6125E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EECE6125E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=t-8ch@linutronix.de;
 receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id 1EECE6125E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 09:51:21 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Date: Mon, 11 Aug 2025 11:43:17 +0200
Message-Id: <20250811-restricted-pointers-net-v5-0-2e2fdc7d3f2c@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIADW7mWgC/33NTW7DIBAF4KtErEvEz4BpVrlH1AWGcTNShSMgl
 qPIdy91F4mquMunN/O9OyuYCQs77O4s40SFxtSCeduxcPbpEznFlpkSyggQwDOWmilUjPwyUqq
 YC09YuXchxig0mihZ+75kHGhe5RP7OUg4V/bRmjOVOubbOjnJtf/V5bY+SS64VH4QAcG2peMXp
 WvNY6J5H3F1J/VsdduWatY7hKHDwaH1+MrSD8tKt23pZum+80ZLNK7vX1nwsLr/LGgW9N5bQBD
 WuL/WsizfPCy4dLABAAA=
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
 Simon Horman <horms@kernel.org>, Paul Menzel <pmenzel@molgen.mpg.de>, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754905404; l=1968;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=L8xlTdbV68sRk5Mq8IoevADaEzgZ+a6EIL6L9IxI4bQ=;
 b=rSJrXaszfDDrt8hU0fUQBJsibudoaXOy7MMpFvOV2l/6IRnujeE+95Jis4SetZdmM92vI7QRM
 S8mPnXGv4ASAjo9fuPA5/Q+dBrqBK0nVGLmwt7QBPukJ5c455TuXRmd
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1754905407;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=b0423Apn/yDdM75Hzc5wqjfCAct86GXaSdLhTu73vbY=;
 b=WwHk0GWpQylBlDPLOvp+4jJT31NqMeZNolN80ZjVuMFaTaFFTDcbpwJ/ppwV2YoSLJjwlP
 SEXCqIMdUhQYxNFXRf5hMlM0iKBLEiPHSPFb5K+8nXmfqSB7NYk4OxyPqc8kdb85dCAAl6
 2tc28DbOSxxq9swMqTOLU9Gkr8ktWN5g8/qa1L+UkFqO4+7hnxoHIwRdg+T3dh+xEZdCY6
 zScyVPDSYhQ7iRpJU3blIzFH+JKgxiTRWXJsjIStXVRm4g44cLB1aMk5uKGdMl85auGIb0
 uv1ogSsUa4u8qS8tQxROXpqm99pDmvL4hob3PnM6VUCb41YyILHOVfTiWcDfEw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1754905407;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=b0423Apn/yDdM75Hzc5wqjfCAct86GXaSdLhTu73vbY=;
 b=pb1pNvSdSSE86gdlMRearVcFmTxP+TDEd2qJYBnnHGL/kRSfzoBuej/rw2QyxxUcmCmrEe
 ycajX09I9JyPSXAg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=WwHk0GWp; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=pb1pNvSd
Subject: [Intel-wired-lan] [PATCH net-next v5 0/2] net: Don't use %pK
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
through printk(). They can still unintentionally leak raw pointers or
acquire sleeping locks in atomic contexts.

Switch to the regular pointer formatting which is safer and
easier to reason about.
There are still a few users of %pK left, but these use it through seq_file,
for which its usage is safe.

Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
---
Changes in v5:
- Rebase on v6.17-rc1
- Bick up Reviewed-by from Paul
- Link to v4: https://lore.kernel.org/r/20250718-restricted-pointers-net-v4-0-4baa64e40658@linutronix.de

Changes in v4:
- Pick up Reviewed-by from Simon
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
      net/mlx5: Don't use %pK through tracepoints

 drivers/net/ethernet/intel/ice/ice_main.c                      |  2 +-
 drivers/net/ethernet/intel/ice/ice_trace.h                     | 10 +++++-----
 .../ethernet/mellanox/mlx5/core/sf/dev/diag/dev_tracepoint.h   |  2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)
---
base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
change-id: 20250404-restricted-pointers-net-a8cddd03e5d1

Best regards,
-- 
Thomas Weißschuh <thomas.weissschuh@linutronix.de>

