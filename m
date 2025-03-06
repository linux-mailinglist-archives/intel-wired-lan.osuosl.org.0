Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F28A553B5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 18:57:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E97AC80DC4;
	Thu,  6 Mar 2025 17:57:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OPXD8naLnbvA; Thu,  6 Mar 2025 17:57:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E634280DDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741283824;
	bh=cAEQTk2+ENwVXUJUouodCNu/7sXsFAj0nKyzciTr44g=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=uj24BmNrQ1gelMkmWeNoUFiNBp1nuJF8Zgism/xo6cbA/Oa1eq8BloU0l8dkUlcbG
	 R5YEPf6L2CKutl2fwVPc4jM1Rvs7vCv24InGRwSQM9PwEv8AazhyhvvtBZH3Lpfnpl
	 u10x5/L+2K5u0i9UhtRNGKn+ZyGawrhFv2icLlSD8D0LX1BOiHDHlI+m44IngucU5e
	 zY+wiukKJcU+hPjsKibuMQfdniAKetp1jCsSBZk26PeRfTDfk9tm5PLLopVlkSuxz6
	 WvBWvXqnHLATzHDfohFaCQ7beR5S0aTcRUaqW760XMTbMydBI1l/jM3fePELsVx2PC
	 ClEgzkouHznEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E634280DDA;
	Thu,  6 Mar 2025 17:57:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id AB41F95F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 17:57:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77C1240606
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 17:57:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E4aa0dLBKeAG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 17:57:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=jbrandeb@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3F0DB40104
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F0DB40104
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F0DB40104
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 17:57:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 1D661A45070;
 Thu,  6 Mar 2025 17:51:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C1E1C4CEE4;
 Thu,  6 Mar 2025 17:56:58 +0000 (UTC)
From: Jesse Brandeburg <jbrandeb@kernel.org>
To: intel-wired-lan@lists.osuosl.org
Cc: Jesse Brandeburg <jbrandeburg@cloudflare.com>, netdev@vger.kernel.org,
 kernel-team@cloudflare.com, jbrandeb@kernel.org, leon@kernel.org,
 przemyslaw.kitszel@intel.com, Dave Ertman <david.m.ertman@intel.com>
Date: Thu,  6 Mar 2025 09:56:34 -0800
Message-ID: <20250306175640.29565-1-jbrandeb@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741283818;
 bh=9La0ODpzt9XGnL00Cb5mnMsFzrpzsSQqAsTJATJZY7o=;
 h=From:To:Cc:Subject:Date:From;
 b=uTmdmg9+fgVzLKCmmGOm73A60ihWA3KyG9NwYPN+HHuejinouIyr64J4YbW2s5KaJ
 piE3g5rmi/n0zVSGeEl7mSyPuUAjTqeVCA2ZXf7G/L50Jwg+4++KsuJsnKSk2/0+b1
 Y3NdC006uuC44KV7BnVbf0xrU8UV65zR/5xiuWGpg2t8Q5u3KS+ZTK+WTCMT81VPzP
 aC2fuJGL33h6CU+AHJgU+hJ7x3IGEFEtc3gc3/p6oiP/7TJqBvYd4KD8nNVltoQjNv
 QRo4NcBUNA254X/yyLDLmLRXVKJH3WeZVSRR6lY82xzL0vgnh6EO0MPP8orORQGBnW
 oGnyvndBMPZwQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=uTmdmg9+
Subject: [Intel-wired-lan] [PATCH intel-net v2] ice: fix reservation of
 resources for RDMA when disabled
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

From: Jesse Brandeburg <jbrandeburg@cloudflare.com>

If the CONFIG_INFINIBAND_IRDMA symbol is not enabled as a module or a
built-in, then don't let the driver reserve resources for RDMA. The result
of this change is a large savings in resources for older kernels, and a
cleaner driver configuration for the IRDMA=n case for old and new kernels.

Implement this by avoiding enabling the RDMA capability when scanning
hardware capabilities.

Note: Loading the out-of-tree irdma driver in connection to the in-kernel
ice driver, is not supported, and should not be attempted, especially when
disabling IRDMA in the kernel config.

Fixes: d25a0fc41c1f ("ice: Initialize RDMA support")
Signed-off-by: Jesse Brandeburg <jbrandeburg@cloudflare.com>
Acked-by: Dave Ertman <david.m.ertman@intel.com>
---
v2: resend with acks, add note about oot irdma (Leon), reword commit
message
v1: https://lore.kernel.org/netdev/20241114000105.703740-1-jbrandeb@kernel.org/
---
 drivers/net/ethernet/intel/ice/ice_common.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 7a2a2e8da8fa..1e801300310e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2271,7 +2271,8 @@ ice_parse_common_caps(struct ice_hw *hw, struct ice_hw_common_caps *caps,
 			  caps->nvm_unified_update);
 		break;
 	case ICE_AQC_CAPS_RDMA:
-		caps->rdma = (number == 1);
+		if (IS_ENABLED(CONFIG_INFINIBAND_IRDMA))
+			caps->rdma = (number == 1);
 		ice_debug(hw, ICE_DBG_INIT, "%s: rdma = %d\n", prefix, caps->rdma);
 		break;
 	case ICE_AQC_CAPS_MAX_MTU:
-- 
2.43.0

