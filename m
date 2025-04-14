Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7629FA886D2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 17:20:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0508182119;
	Mon, 14 Apr 2025 15:20:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OFyOrPMmdNgM; Mon, 14 Apr 2025 15:20:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67B4F8210A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744644032;
	bh=g+p3ZZ8m+P6MBwg+X0cWHrVyngWhZc3MgIiUJosTjVM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Pb6LhHOOS9vUaJkujloG04vR7u1pLd/JA7X66Hk1/lwkVs2dJilqx7IxYlEl//SRz
	 IIHmK21nPaWrA5dROdC8hFkaVScql0QvaB1mzMu4rghprkeKvybNCUz1JBZ7n49nu6
	 WHzAVyhJVbN/y54o3KhfwHG6EcGL5mYDC9yv2Av7TnKbn3tHZ4fl7FSZJwBINyzeo3
	 YzuoM2lkAt0YH8iHkJP57UKO/7ku8lwOpgPgKhanGqhplqVw71w7dmQrpZCIJyH13p
	 LqlTnaHr8WOHq1edQkfUtGTzei9/wOindrSqlQ1TjmOL+6JijaU/jLwAbAXtZzWiR+
	 fxGquRJlBMR1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67B4F8210A;
	Mon, 14 Apr 2025 15:20:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 1237F108
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id 6903481ECC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id l7g-07MBozV8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 08:34:24 +0000 (UTC)
X-Greylist: delayed 487 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 14 Apr 2025 08:34:24 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 984B081A47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 984B081A47
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=t-8ch@linutronix.de; receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id 984B081A47
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:24 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Date: Mon, 14 Apr 2025 10:26:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250414-restricted-pointers-net-v1-3-12af0ce46cdd@linutronix.de>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744619172; l=2012;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=Mog1fUxDWxYnW9KpoZ7DzBFzkRO6Ky21p9XzMNb3Vf8=;
 b=b/us2xNbwh8znqfnzh9E4Av2oMff6qZufNEzIm5QnYwVPSQtCv4hVANkyEXwMgwxfZZXMClBq
 TRKDFzK5g7kCqMlmFJDdqt8wzmcZOLvplpYQXCfNLJTM+XlGTzlWrnQ
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=
X-Mailman-Approved-At: Mon, 14 Apr 2025 15:20:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1744619175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g+p3ZZ8m+P6MBwg+X0cWHrVyngWhZc3MgIiUJosTjVM=;
 b=ofLbcum+e5ES97JZNHgUn4eizYkDbWnLe7xsM+Zdmxa5+24Dx7P2aGHM7z3O141w/4Rr+k
 WRveEv8SYrJCfpnOWdRe0Lrhgax34JsFWwZTghEZ5yEiNmWu6LJq8IoexKOIoS9JwGMj1U
 S4w3rdfc484lB0AX/t1LFVhunaQKaxEszKarS5CJczq3PXzEjlrWASNsfBbYVIl4/NbegK
 ySYcWod+zpWWxlHAn/FkiejzfE4POH5aygMEbC5tcYMs8Peb/Qj9iPW0Q1uyrh/mjAD2S0
 9q0+XyXre1y2vy0I+hqySM0tWoAVSXGqdyLIy8qXEkZlH8mWo+xn53pyczg7DQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1744619175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=g+p3ZZ8m+P6MBwg+X0cWHrVyngWhZc3MgIiUJosTjVM=;
 b=R8G1LC3nTq9auZ80K7wKWRdWZ5AzwlgcChsPmwJreInP145Kb0TjPt+6wFT5D5ZCsiLixI
 icD4Mn52YWhoOcBw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=ofLbcum+; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=R8G1LC3n
Subject: [Intel-wired-lan] [PATCH net-next 3/7] wifi: ath12k: Don't use %pK
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
 drivers/net/wireless/ath/ath12k/testmode.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath12k/testmode.c b/drivers/net/wireless/ath/ath12k/testmode.c
index 18d56a976dc74c4f6eab87e358c14d4faea648e2..fb6af7ccf71f44ae4bd01cde53fba3527eed0d2d 100644
--- a/drivers/net/wireless/ath/ath12k/testmode.c
+++ b/drivers/net/wireless/ath/ath12k/testmode.c
@@ -97,7 +97,7 @@ void ath12k_tm_process_event(struct ath12k_base *ab, u32 cmd_id,
 	u8 const *buf_pos;
 
 	ath12k_dbg(ab, ATH12K_DBG_TESTMODE,
-		   "testmode event wmi cmd_id %d ftm event msg %pK datalen %d\n",
+		   "testmode event wmi cmd_id %d ftm event msg %p datalen %d\n",
 		   cmd_id, ftm_msg, length);
 	ath12k_dbg_dump(ab, ATH12K_DBG_TESTMODE, NULL, "", ftm_msg, length);
 	pdev_id = DP_HW2SW_MACID(le32_to_cpu(ftm_msg->seg_hdr.pdev_id));
@@ -227,7 +227,7 @@ static int ath12k_tm_cmd_process_ftm(struct ath12k *ar, struct nlattr *tb[])
 	buf_len = nla_len(tb[ATH_TM_ATTR_DATA]);
 	cmd_id = WMI_PDEV_UTF_CMDID;
 	ath12k_dbg(ar->ab, ATH12K_DBG_TESTMODE,
-		   "testmode cmd wmi cmd_id %d buf %pK buf_len %d\n",
+		   "testmode cmd wmi cmd_id %d buf %p buf_len %d\n",
 		   cmd_id, buf, buf_len);
 	ath12k_dbg_dump(ar->ab, ATH12K_DBG_TESTMODE, NULL, "", buf, buf_len);
 	bufpos = buf;

-- 
2.49.0

