Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE3976C496
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 07:06:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4B6F6119E;
	Wed,  2 Aug 2023 05:06:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4B6F6119E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690952793;
	bh=9ADo1DvqnamOnP5HIqcnukFrKBseDFxSqlNCVqphDSE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Br5Be4ddnxXwByXB7NrzuvD+woc5epjCK9oQuZoSCzt0gKqT6Cf9EPcY7UqqXPFvb
	 yWEW1XjfM3mmV8bdKSHWzSzj4AWjFe43O1d3GWxUV8lUlaDOCNFyMPbMPwaJXZ9BRU
	 V6aWh4ixO48rdL5LDDkPrLVCzOocFNgebGWkxxUApMq3hS1VcgDxk9RhL8hmaH/qaq
	 RkNQt5KThCPYheJQtdCQ66lvf1Z1ggSfyfsQbx+WEwxeBdF6g8232/JXjuGIJc3SFG
	 UM0W0t9yJdhSzADzG13S8lIkVrL8U1s9yZeq6BqMIPvfLN4hlu+3MHUjljef17xx8B
	 77v/sFXjlsW9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZIE-_7sWpu1A; Wed,  2 Aug 2023 05:06:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9F2461179;
	Wed,  2 Aug 2023 05:06:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9F2461179
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5053D1BF98E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:06:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 610A861152
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:06:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 610A861152
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id imVHAKaaVKHn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 05:06:03 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A40CF6116B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:06:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A40CF6116B
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E8B03617CA;
 Wed,  2 Aug 2023 05:06:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39A3CC433C7;
 Wed,  2 Aug 2023 05:06:01 +0000 (UTC)
Date: Tue, 1 Aug 2023 23:07:06 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <8b945fa3afeb26b954c400c5b880c0ae175091ac.1690938732.git.gustavoars@kernel.org>
References: <cover.1690938732.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1690938732.git.gustavoars@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690952762;
 bh=vIsmaLOHNHCmvZTxuykbw4hyJBbUacnWk4VvMmzUK9Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TGoDdwO7hOgoCxkDVBaD4hulYPoImelxdjPjcsAzBC2Hck8e6L1owP4Unq/187OVz
 AaStDAYVHCuEzbXh3yndCl5XABgFRv/5KrYue7+slumcRYB7WQ2g3CME5mdZ+llh66
 jII4nKJ7g63cth/fX997PJyM8Kry7RBTy31bDAp+MWEwX2BfKZg4uLn9TWVJWWQtP5
 oKN++/7yTJTf5yp54Xz8LRF10QeLPhaJaOBXF8ivvu+VLabPMa2Nnf3KHILWMn692S
 Xb3thfwhybIBYbI34Btvu072VaqksAauTVZoOI3ndEnrtNlYosLlTpWYVOr0c8x5TY
 woBuhwwh0qrpA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TGoDdwO7
Subject: [Intel-wired-lan] [PATCH 4/4][next] i40e: Replace one-element array
 with flex-array member in struct i40e_profile_aq_section
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
Cc: linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

One-element and zero-length arrays are deprecated. So, replace
one-element array in struct i40e_profile_aq_section with
flexible-array member.

This results in no differences in binary output.

Link: https://github.com/KSPP/linux/issues/335
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 010261a10f56..b9d50218344b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -1524,7 +1524,7 @@ struct i40e_profile_aq_section {
 	u16 flags;
 	u8  param[16];
 	u16 datalen;
-	u8  data[1];
+	u8  data[];
 };
 
 struct i40e_profile_info {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
