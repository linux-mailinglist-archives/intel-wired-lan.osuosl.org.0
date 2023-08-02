Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 197B476C491
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 07:05:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE2A161199;
	Wed,  2 Aug 2023 05:05:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE2A161199
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690952744;
	bh=0Ougv/JhwV8if9pY2w0uA6h7uLk/io9H/CbJtfsK7mU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZVkIWaG6b3xuqhAwM+jzVzyA7NZmFZsXec3PqddlhjNR4aTQhqtBYUVRmPFSRtfWl
	 UUNDA73Qv/5y9sFY4Ou92MELVg/iHcWLrJLN6sll2oW8+UtmYw9k/Qm9h22V/kGfD8
	 +Yu2z0b4zMU77NOriHeR2cPgAtLWAqCDKCyZQYby009wmY/On9U1OlRBtKO4x/cl2+
	 HsEt0xAb0uH8Pq2a5dvtkUT5XX3G+opS4ue8cwir2JFg3wi+hOdcWtt1tYc/qJmSn/
	 q2L6Y8osgATutnqQah6F2bifBPyrkjDSoz3DQ9ErV582IVW8cjCO2pue/EwQKUGPIp
	 kJHVFc6YEtA3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FUpWvDBy8Saq; Wed,  2 Aug 2023 05:05:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 816A160DFC;
	Wed,  2 Aug 2023 05:05:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 816A160DFC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38A021BF387
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7974741758
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:05:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7974741758
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d9AJ_So2m7Ox for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 05:05:27 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9644341736
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:05:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9644341736
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CF3FD617D9;
 Wed,  2 Aug 2023 05:05:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14365C433CA;
 Wed,  2 Aug 2023 05:05:24 +0000 (UTC)
Date: Tue, 1 Aug 2023 23:06:30 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <ddc1cde5fe6cb6a0865ae96d0d064298e343720d.1690938732.git.gustavoars@kernel.org>
References: <cover.1690938732.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1690938732.git.gustavoars@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690952726;
 bh=mqqkGVbU/w5XVGL8wNFiKBrpnoFsZ0U7xfNm17f7El4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aVODpFlGBTgJf/7xxXR6C30T6BZmJoEN3+kRYa79kTII0nnf6ub3clATPGufXTnTE
 P1eFFL1msnaqiFvcfvjhfbIWovhU1tqPpSdnflkPghhkn2lh+hZ5ZVoaHo2VaQypDj
 xV+96UEjZDU4q2/giYSW3dfh9wWNayYZcKuYJ63+9jB0uKPZfoy3MyJkKN7gxkmCO0
 55jVCANF0xJbgIXgoULvPYhOrsgUFYs10dSKWJ46Pm6V3nVYy/aB/0YZ8yNl8Isl/v
 AEa+nwN887eWcZeTNlqhP7f9DUeSP+L1HcCFO/w3mQm7W43LY4naJJaRTzU9eZdGCu
 sWK96H0/eRzpQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=aVODpFlG
Subject: [Intel-wired-lan] [PATCH 3/4][next] i40e: Replace one-element array
 with flex-array member in struct i40e_section_table
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
one-element array in struct i40e_section_table with flexible-array
member.

This results in no differences in binary output.

Link: https://github.com/KSPP/linux/issues/335
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index f7a984304b65..010261a10f56 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -1492,7 +1492,7 @@ struct i40e_profile_segment {
 
 struct i40e_section_table {
 	u32 section_count;
-	u32 section_offset[1];
+	u32 section_offset[];
 };
 
 struct i40e_profile_section_header {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
