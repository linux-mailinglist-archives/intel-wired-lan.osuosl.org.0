Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 562A6A886D8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 17:20:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26D2060F35;
	Mon, 14 Apr 2025 15:20:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tAyduJ6a10QM; Mon, 14 Apr 2025 15:20:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3345060D4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744644034;
	bh=sJzaMCUEmfS88/pHV7S6utRVF0OcgJooEZ6khtDSVo8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U1sVHK0DO0gwdr4hQqXOgpGDpi/eBOriCIMivegadFZUZoauHW3ffAsd03970bqVm
	 rxvmjL6X6TxiHiGbAYAj9janYpKVQOzWKPGB40exvl7irZisADDeC5NgWg5pJr2lx6
	 /JJGt/MEmx2IoFxxGnqSgdzdeQIiqhKgut3CHwsMCx4l51sKzVmsU5T1xHsXaPCugm
	 2HUw5BiFcq1izA72uq/cSBVPqjn67VnnAdt35Ti9ndSM3bMtJ0uoImuKuogNIaGrx2
	 HWyCdLNsmP3ckL7YkU6iPNmJmWaIvEJtozSDLn8Uqsfh5X24rl+SLlkiqIcL+0AcZL
	 bA4cR+gtCAHaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3345060D4C;
	Mon, 14 Apr 2025 15:20:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 6615E250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTP id 4C5FA4011D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id dsplP3fauvcR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 08:34:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=t-8ch@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 84EBF4094B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84EBF4094B
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with UTF8SMTPS id 84EBF4094B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:26 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Date: Mon, 14 Apr 2025 10:26:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250414-restricted-pointers-net-v1-2-12af0ce46cdd@linutronix.de>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744619172; l=1527;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=wCL19/j4oZD9OXQEwiK4h5ZQlR+8JRFqjWaTwz3M1O0=;
 b=Mll02AJLlxEAfIM3sBZFqErnG63AQHi+l+lIgSrBUXhRrD8igpMkDkzAgCyX/kNgfweVtnVzf
 eq1XA46Yw0ZD7+inGUGlFx1MAdV8znRd+XlcYbJtcFA4dVo7Ec8CwHn
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=
X-Mailman-Approved-At: Mon, 14 Apr 2025 15:20:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1744619174;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sJzaMCUEmfS88/pHV7S6utRVF0OcgJooEZ6khtDSVo8=;
 b=o1zujVLG2sQaTvMO6OACsI/499VzUxoEJUGqHj+qgv3E4KUgw4ysdGF3KRplnLfOHRVvHh
 C8sMrwd65T7vZGfCJrREE+bUEk9LL2vMgS0X0+RuJbIQeppjCp8fGV/UwnIp45VWxKazpm
 pPUUZ850J9Mwl2W2mFfVm4DBXwfC/tD/dqp1qpRBLw0A35yogM53wwW0qStrpoRhr/vxLu
 kWaPzO4nQZn6I8DkAoQHZ4cRPwtJiEENp07/CeSdtns4W9KJPsrCtCUM3iEx6YXuDwiAir
 0PyhOOCI6wQTQJQxGFU6nSJUCkG9l5cY6q/N9EpiaJdVTZ1mnhZtHJj1EeXsvQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1744619174;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sJzaMCUEmfS88/pHV7S6utRVF0OcgJooEZ6khtDSVo8=;
 b=2f0ZORhwJPNdlz9bEPHxT6ecUDp77xU2Mn7EJRnJRcfM4eIVe9A8P3Zm0rUrsQn+we0g90
 o6gNm/VzeLWiueAA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=o1zujVLG; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=2f0ZORhw
Subject: [Intel-wired-lan] [PATCH net-next 2/7] wifi: ath11k: Don't use %pK
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
 drivers/net/wireless/ath/ath11k/testmode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath11k/testmode.c b/drivers/net/wireless/ath/ath11k/testmode.c
index 9be1cd742339c95ffa74c09bee924f4eff15134a..a9751ea2a0b73009bfb600d51c3978200ce99114 100644
--- a/drivers/net/wireless/ath/ath11k/testmode.c
+++ b/drivers/net/wireless/ath/ath11k/testmode.c
@@ -107,7 +107,7 @@ static int ath11k_tm_process_event(struct ath11k_base *ab, u32 cmd_id,
 	u32 pdev_id;
 
 	ath11k_dbg(ab, ATH11K_DBG_TESTMODE,
-		   "event wmi cmd_id %d ftm event msg %pK datalen %d\n",
+		   "event wmi cmd_id %d ftm event msg %p datalen %d\n",
 		   cmd_id, ftm_msg, length);
 	ath11k_dbg_dump(ab, ATH11K_DBG_TESTMODE, NULL, "", ftm_msg, length);
 	pdev_id = DP_HW2SW_MACID(ftm_msg->seg_hdr.pdev_id);

-- 
2.49.0

