Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5350B40858
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 17:02:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89A118413B;
	Tue,  2 Sep 2025 15:02:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JmgeNjFsdC5r; Tue,  2 Sep 2025 15:02:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBEF08414B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756825373;
	bh=BzWVpOuweO8xL9X7XLbSKS682/MfCO3qbXjwPcJLwYs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6hH+VlhChhe0t2zm2NI0cs/RByoHD64Kcipci4aUwNt+6Uh7nP6e8oJtjiKFcZnSP
	 KN3kfoB94rjd8tp4SHL/+38Yritk2oSa8K798fweqoVIjlHt2ZCjshCj8A53ZhZDQz
	 3HZ3xri9v2yC41UuB4zQVgJY8dijbWS/njIRH3ksxY7TJVNem0BpzzWy61H1TSW8fO
	 AmTLKTTZ/DXSAKlhkm63Zd3hqXTesBY+MVnbnrycVUb3eAnpzNjqRTf5FBqafl6Wje
	 3z15sd2aCwV52bYu+6Si/d9pTNEEULzJVxeI62NVF3J7RPFLmSnLmEJKCiQGWeh2Yn
	 YTw1znJoaZmRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBEF08414B;
	Tue,  2 Sep 2025 15:02:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 584591A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 21:38:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5505E607EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 21:38:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z2K_OHLODSuh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Sep 2025 21:38:01 +0000 (UTC)
X-Greylist: delayed 405 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 01 Sep 2025 21:38:01 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 989AE60866
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 989AE60866
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=80.241.56.152;
 helo=mout-p-102.mailbox.org; envelope-from=listout@listout.xyz;
 receiver=<UNKNOWN> 
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 989AE60866
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 21:38:01 +0000 (UTC)
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:b231:465::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4cG29r20Dhz9tFL;
 Mon,  1 Sep 2025 23:31:12 +0200 (CEST)
From: Brahmajit Das <listout@listout.xyz>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 listout@listout.xyz
Date: Tue,  2 Sep 2025 03:01:00 +0530
Message-ID: <20250901213100.3799820-1-listout@listout.xyz>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4cG29r20Dhz9tFL
X-Mailman-Approved-At: Tue, 02 Sep 2025 15:02:51 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=listout.xyz; s=MBO0001; t=1756762272;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=BzWVpOuweO8xL9X7XLbSKS682/MfCO3qbXjwPcJLwYs=;
 b=C+L9Wy9H+b1Il58OZlxb2R6Wapb8fVQBJDnHpZQdikM8oTz3Jm3/uGn8A0tstFZtI+lV6A
 Pg+sL49aZ1lhrMKZ0XjtPYi5PAaUjij6wMU9PZImbzBVmDfvWRQmM2FjfQEec4Mc4CWukJ
 IYtyTEdp3Cpb8uol8mQsHbnV8OQ5IMOtfSXBhbOfid3zqYX8KHpqYUyydZHR7tAniQHnPx
 vtju7pZihrmhH1Tl86ptiGClWi2r2n9fmQ5yzQrLMNWofe4Oi7MVlEfAMm5Zi35zm6SeNU
 TxtesJms722ZNdJXpzAoa3tIuzYEweWf6t+8Dzoc91huQwB+1L15mJJ54diUeQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=listout.xyz
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=listout.xyz header.i=@listout.xyz header.a=rsa-sha256
 header.s=MBO0001 header.b=C+L9Wy9H
X-Mailman-Original-Authentication-Results: outgoing_mbo_mout; dkim=none;
 spf=pass (outgoing_mbo_mout: domain of listout@listout.xyz designates
 2001:67c:2050:b231:465::2 as permitted sender)
 smtp.mailfrom=listout@listout.xyz
Subject: [Intel-wired-lan] [PATCH] net: intel: fm10k: Fix parameter idx set
 but not used
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

Variable idx is set in the loop, but is never used resulting in dead
code. Building with GCC 16, which enables
-Werror=unused-but-set-parameter= by default results in build error.
This patch removes the dead code and fixes the build error.

Signed-off-by: Brahmajit Das <listout@listout.xyz>
---
 drivers/net/ethernet/intel/fm10k/fm10k_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_common.c b/drivers/net/ethernet/intel/fm10k/fm10k_common.c
index f51a63fca513..2fcbbd5accc2 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_common.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_common.c
@@ -457,7 +457,7 @@ void fm10k_unbind_hw_stats_q(struct fm10k_hw_stats_q *q, u32 idx, u32 count)
 {
 	u32 i;
 
-	for (i = 0; i < count; i++, idx++, q++) {
+	for (i = 0; i < count; i++, q++) {
 		q->rx_stats_idx = 0;
 		q->tx_stats_idx = 0;
 	}
-- 
2.51.0

