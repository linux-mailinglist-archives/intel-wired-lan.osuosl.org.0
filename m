Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D808073FF40
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jun 2023 17:05:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73B2783342;
	Tue, 27 Jun 2023 15:05:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73B2783342
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687878348;
	bh=vL8YsQNoCN0AoUXa47AdFMrfvGYRpM1BS7iEreKcjvY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=W/Frp347vBCM5fctCln8B2SybLJDIBs1CaxbU4+7V1WuNP6BSO6M9D6pO1k7PQEGS
	 dEBrB2zrcLoTeREdnbHdVdhuNhJm1oZ2sVAhPNL0ipKkLXa+QEWbF/BP+Oid0Ygy+i
	 sVuyjTKKC0g40th0HkgMal+AZebLnL7mr/khC6aZWNOB6nDk1vOszWpHSvdOa+DiFg
	 gZlUJZkurWDMN9opvaF4KxGhQGqXk0itLlwnrziGyolOlM0Lw/hrUqzOgExQwqap/2
	 J897SVxjPPEjT2W3QZMJ9h4OusXZWb/GqGVCTGiQtGF58eXrM3jAW8tdZ0ijczVFie
	 rWUknVHFBzrOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H9SGswtvHfKI; Tue, 27 Jun 2023 15:05:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43A9B83183;
	Tue, 27 Jun 2023 15:05:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43A9B83183
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 077BB1BF36A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 02:27:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D3E1340407
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 02:27:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3E1340407
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U1JA5ow-oOo4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jun 2023 02:27:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0FF5403A2
Received: from out-22.mta1.migadu.com (out-22.mta1.migadu.com [95.215.58.22])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0FF5403A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jun 2023 02:27:18 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Yajun Deng <yajun.deng@linux.dev>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, jacob.e.keller@intel.com
Date: Tue, 27 Jun 2023 10:26:58 +0800
Message-Id: <20230627022658.1876747-1-yajun.deng@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Tue, 27 Jun 2023 15:05:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1687832833;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=NiLCSG+J8TFDNfzSLNUB+HE+7XY7CA+7w0Zb1WNocDM=;
 b=IhqNKXxGVHAbv02ycD8gt4pXO7ev48kyVUIt/6qCLWeiBDI1Puem2akmTJkVtW85kXxD2v
 Dz6OdsIobdamjjipKw3k7iAt5SY9kitKkaE3qJdHabDP9eT8QLHB2BoUz6V9Y0QM8kwTDq
 qXggTMDRHehcW7QeX0CEM/ecZlOf+Kw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=IhqNKXxG
Subject: [Intel-wired-lan] [PATCH] i40e: fix the wrong PTP frequency
 calculation
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, Yajun Deng <yajun.deng@linux.dev>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The new adjustment should be based on the base frequency, not the
I40E_PTP_40GB_INCVAL in i40e_ptp_adjfine().

This issue was introduced in commit 3626a690b717 ("i40e: use
mul_u64_u64_div_u64 for PTP frequency calculation"), and was fixed in
commit 1060707e3809 ("ptp: introduce helpers to adjust by scaled
parts per million"). However the latter is a new feature and hasn't been
backported to the stable releases.

This issue affects both v6.0 and v6.1 versions, and the v6.1 version is
an LTS version.

Fixes: 3626a690b717 ("i40e: use mul_u64_u64_div_u64 for PTP frequency calculation")
Cc: <stable@vger.kernel.org> # 6.1
Signed-off-by: Yajun Deng <yajun.deng@linux.dev>
---
 drivers/net/ethernet/intel/i40e/i40e_ptp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index ffea0c9c82f1..97a9efe7b713 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -361,9 +361,9 @@ static int i40e_ptp_adjfine(struct ptp_clock_info *ptp, long scaled_ppm)
 				   1000000ULL << 16);
 
 	if (neg_adj)
-		adj = I40E_PTP_40GB_INCVAL - diff;
+		adj = freq - diff;
 	else
-		adj = I40E_PTP_40GB_INCVAL + diff;
+		adj = freq + diff;
 
 	wr32(hw, I40E_PRTTSYN_INC_L, adj & 0xFFFFFFFF);
 	wr32(hw, I40E_PRTTSYN_INC_H, adj >> 32);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
