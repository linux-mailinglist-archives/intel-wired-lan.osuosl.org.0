Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E88BA886D9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 17:20:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D345A60D4C;
	Mon, 14 Apr 2025 15:20:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0SzlO5aoT7Vv; Mon, 14 Apr 2025 15:20:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4BEE60642
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744644035;
	bh=Q/VnYhVD1SCgZYyfaXiiv1axKyoVwiXgocwEv4oE1Ko=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P6a824OFg3Mb6aWBO20tOxW+aLgZ6pSNaSOcMOtknp/YYWw3WlsCw88hnHXO8oezB
	 VNT5BR+APijs9CxJawMsOQMCSRsTyFKjF0Ry8iv6DYO25a/x+UdPEXssXtJPmKMKH+
	 +p38sOA3JfjwUa9g4y9pEDEm14EdmG3e5/T5YckU38LSCMlxpqu4iq2fzRSvg+BbS1
	 0jMhA4DltJBH0+AZUbC6oqbbgqtHlIJFUHM3ES9hc3/FzqYQviYLD9Remb3BS2lom0
	 f4t4Lywqz8RjC7pLQnp6uaoXFKQegxzOmo6hOVLciYSu198G3vpqbx3zeREOzZx/CU
	 OXGgm3NLmrRPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4BEE60642;
	Mon, 14 Apr 2025 15:20:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 854B4250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with UTF8SMTP id 771854048E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id Fbg7tU9dP01k for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 08:34:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=t-8ch@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D21FC403B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D21FC403B1
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with UTF8SMTPS id D21FC403B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:26 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Date: Mon, 14 Apr 2025 10:26:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250414-restricted-pointers-net-v1-4-12af0ce46cdd@linutronix.de>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744619172; l=1466;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=61F6yS3SeLiDBJeFobz+nPKysOXCT5pH1Ry4x0mEWwk=;
 b=x/NwFZLAfuFMn6Tuwkaaozs8DHU3CODeWCFL2e9Z5eSwidQOwOcFXmSdTvN9+ChrWvdguO2cn
 UysC7tAl9ggC5QE/fMdSdsC5X2A9PqW1zeBD1+dBhqDiAkkT9kN1N/c
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=
X-Mailman-Approved-At: Mon, 14 Apr 2025 15:20:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1744619175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q/VnYhVD1SCgZYyfaXiiv1axKyoVwiXgocwEv4oE1Ko=;
 b=oXHvZS2XoGF1OUDHETEpesHyXLq7OFuBkAoXwt+6oCKMZrrFFF7uAwyKIDqzJqoXyqoqMx
 YfMGx/Wq/+MNteZfIoJ/sv1izi7t6HJy44wVg2hqGx0ck5MT8UTT10/XExG98CKxAN//+G
 OusqYZlGizraLiAQZfjQ1cDm7BhQ2SwbOYT7Ir2X/9itY/sZWkuig3cgmYDSu9N5UAd2we
 4DXfe2USWh11pvXMgy16WHeMjzegIHTAOIk2/I6NBfxU/jAKvND/ARkjDKzYATCwovn5na
 lAdIxHxyggXJgXvs29oqrL2p0PIPjlmvFObHVwm+/ndrprruazh3PRaU8SKhHA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1744619175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q/VnYhVD1SCgZYyfaXiiv1axKyoVwiXgocwEv4oE1Ko=;
 b=BW7eyc5nmNTm4BrUjTKiQcxtNBwCiX+GSkj3s651FAkykMV6ELiCFt5lY/bvAC3YEtdm8y
 c90pAWGVmstytfDg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=oXHvZS2X; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=BW7eyc5n
Subject: [Intel-wired-lan] [PATCH net-next 4/7] wifi: wcn36xx: Don't use %pK
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
 drivers/net/wireless/ath/wcn36xx/testmode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/wcn36xx/testmode.c b/drivers/net/wireless/ath/wcn36xx/testmode.c
index e5142c052985ddf629b93d7b9687e6ba63a48e8b..d7a2a483cbc486308032709a99bba9a52ed0ff59 100644
--- a/drivers/net/wireless/ath/wcn36xx/testmode.c
+++ b/drivers/net/wireless/ath/wcn36xx/testmode.c
@@ -56,7 +56,7 @@ static int wcn36xx_tm_cmd_ptt(struct wcn36xx *wcn, struct ieee80211_vif *vif,
 	msg = buf;
 
 	wcn36xx_dbg(WCN36XX_DBG_TESTMODE,
-		    "testmode cmd wmi msg_id 0x%04X msg_len %d buf %pK buf_len %d\n",
+		    "testmode cmd wmi msg_id 0x%04X msg_len %d buf %p buf_len %d\n",
 		   msg->msg_id, msg->msg_body_length,
 		   buf, buf_len);
 

-- 
2.49.0

