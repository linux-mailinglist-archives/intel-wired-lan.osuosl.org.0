Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D2676C489
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 07:04:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEDD261179;
	Wed,  2 Aug 2023 05:04:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEDD261179
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690952696;
	bh=e/8SYzLygw19SFjl7wpKw+miMrMM5/4WFZxgUcQQvx0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Dat875tkCeRudV3/HqIy65LX9/oJTPVAT5naw4WwPkxmuw1slene2xt75n0oep412
	 LAuA8ylCKVLPjE+LcNuYVfZxgzPvwz+NTW2Grv1kSDXXW6MfLIo747eoWyrCSoUI1S
	 9GUyiEVtlzJyklv0SvoQLgVk0GnJ/l1BgmXYxHzlMdhop4wRDd1K/f8LNQ8YxU7MiZ
	 /9imvHFEGwYGwEN9z5aX2zYVfziVdUIqMhKqLcNX+1zFaRiBgC9Q0Yf/x+j9YBnYPr
	 cmUH4rQTLHvcjS8HAcCNUMbXDC98k7I8eYpzqHkBhayWn7S9hAa1rpt1SkwE3mAP4+
	 RCvDYZVEG3cdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dLlu6-OuvjQR; Wed,  2 Aug 2023 05:04:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 879226116B;
	Wed,  2 Aug 2023 05:04:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 879226116B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D3401BF859
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:04:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC15C61152
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:04:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC15C61152
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2bonLWoo_9Rq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 05:04:29 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14B7360E79
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 05:04:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14B7360E79
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 49920617D9;
 Wed,  2 Aug 2023 05:04:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F79BC433C7;
 Wed,  2 Aug 2023 05:04:26 +0000 (UTC)
Date: Tue, 1 Aug 2023 23:05:31 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <768db2c3764a490118f6850d24f6e49998494b6c.1690938732.git.gustavoars@kernel.org>
References: <cover.1690938732.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1690938732.git.gustavoars@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690952667;
 bh=roMvJpb+EzYKwtQeG0++SvhEzIg74QW7AkwQyMIYc/8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jIR3DAN3rPp40JJ80ZHvkLqrCjGI4pSRFKCrEkL1vHVjBNGUvz3xOLHhxuwLauIXl
 2w3Hi13EWZBk9l75KXdGL6arb1bAYS7vRLZvWif0lYIFruJuRKXWZW1imPdW/bQRQE
 HLH311XABoSVxhP3HRVme9J+NCojqdyrqGM5/2dsSPZfZnaWPpJolWQNNsN40YA50T
 XTSgR+6axNJjZpTIE5xji6Pg1woOTWvU6UFD3M3+enuWUkQuYpfc8bcbEbeTfiNRQv
 CtdfFKEfbdRGpccfrBCQ5avkgYsXGxT+36SJkAGGGt+V2rYcBvzr4fvAYxpjs4NhEf
 +M3pG5cOlt9EQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jIR3DAN3
Subject: [Intel-wired-lan] [PATCH 1/4][next] i40e: Replace one-element array
 with flex-array member in struct i40e_package_header
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
one-element array in struct i40e_package_header with flexible-array
member.

The `+ sizeof(u32)` adjustments ensure that there are no differences
in binary output.

Link: https://github.com/KSPP/linux/issues/335
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_ddp.c  | 4 ++--
 drivers/net/ethernet/intel/i40e/i40e_type.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ddp.c b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
index 7e8183762fd9..0db6f5e3cfcc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ddp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
@@ -220,7 +220,7 @@ static bool i40e_ddp_is_pkg_hdr_valid(struct net_device *netdev,
 		netdev_err(netdev, "Invalid DDP profile - size is bigger than 4G");
 		return false;
 	}
-	if (size < (sizeof(struct i40e_package_header) +
+	if (size < (sizeof(struct i40e_package_header) + sizeof(u32) +
 		sizeof(struct i40e_metadata_segment) + sizeof(u32) * 2)) {
 		netdev_err(netdev, "Invalid DDP profile - size is too small.");
 		return false;
@@ -281,7 +281,7 @@ int i40e_ddp_load(struct net_device *netdev, const u8 *data, size_t size,
 	if (!i40e_ddp_is_pkg_hdr_valid(netdev, pkg_hdr, size))
 		return -EINVAL;
 
-	if (size < (sizeof(struct i40e_package_header) +
+	if (size < (sizeof(struct i40e_package_header) + sizeof(u32) +
 		    sizeof(struct i40e_metadata_segment) + sizeof(u32) * 2)) {
 		netdev_err(netdev, "Invalid DDP recipe size.");
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 388c3d36d96a..c3d5fe12059a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -1456,7 +1456,7 @@ struct i40e_ddp_version {
 struct i40e_package_header {
 	struct i40e_ddp_version version;
 	u32 segment_count;
-	u32 segment_offset[1];
+	u32 segment_offset[];
 };
 
 /* Generic segment header */
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
