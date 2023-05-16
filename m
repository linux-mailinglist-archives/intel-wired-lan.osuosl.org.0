Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6D9704265
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 02:43:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02E97813E4;
	Tue, 16 May 2023 00:43:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02E97813E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684197813;
	bh=ec5Yyns+EWrLZLj+mwQ/xq+99pNEwyOU8NWGlAVT2R8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=H574WCmXhVL6TflQ/OrFIwUtZDaAnzT2t3tHlhZNoBkTPkRrirgrn9Ur0K+Ar6Kt4
	 swhONl1rVyIm5B7rmPmzU+a2KlSoyjZPh7/He5NibLRPiwhZeZ6FjY3xevOMGPD5GV
	 h0YPuAmx7Sa0dr8ZxC2xs88TUSFQ0rIAawLQ6jXv57ogS6Jdfj8NvbQVE36mgCd5Hz
	 8mjF8Fylnumvu8j4TZseLS9TFjYrDum1rJPjpZQa3Ley2BFV8W+y8oVGk4AcPGtebj
	 I9g3cz30ZGOB2dds/Mp8EFjI/X9UKTL92LotHh41PA7lkHRmtf/pKtaIDPNypBnYbK
	 8fVmWIvZ1cvrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id My8qIz8AQO6E; Tue, 16 May 2023 00:43:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D301C81361;
	Tue, 16 May 2023 00:43:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D301C81361
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 284831BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 00:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0DBE4606DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 00:43:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DBE4606DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KY6-GUkG8vx7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 00:43:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 313C2605C9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 313C2605C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 00:43:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1EC6362317;
 Tue, 16 May 2023 00:43:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20D9EC433EF;
 Tue, 16 May 2023 00:43:22 +0000 (UTC)
Date: Mon, 15 May 2023 18:44:12 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <ZGLR3H1OTgJfOdFP@work>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1684197804;
 bh=EZ/VEL9nOrJvXWP6Eakz2K4BqbU29ceO9yaOi8MzFko=;
 h=Date:From:To:Cc:Subject:From;
 b=DtiDA03qB8WUjEC0lxHy7XUBo+JRvMljs14RzZ5Iwbj3u1sMKB3DRd6/PJBOfHyrj
 xnjHhlVHg/BvwHuSK1gpstKc7I/nwQ5kXyw1CJvPyNDyFIsgiotCakhag/yr5tmAII
 ForlwY0e2dYmTNED0G6UT0NLKAr6Q7vm9VvJgUU1YEVZOMKaxOkVomqTMlTgat7piY
 1lpUj0OqDAK+Ys0ZZTnFGK5D6/VVkzo46q0D65W+zMqGViHsLmex2bJI/6dDXYG2qY
 hoHlMwVXY9hoO8De3n3pqvAIfU6Do8KWI02Bf971ijhvINxtar994EA+bXVeDy1qnY
 0M+aJ0gcSKVlw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DtiDA03q
Subject: [Intel-wired-lan] [PATCH][next] iavf: Replace one-element array
 with flexible-array member
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

One-element arrays are deprecated, and we are replacing them with flexible
array members instead. So, replace one-element array with flexible-array
member in struct iavf_qvlist_info, and refactor the rest of the code,
accordingly.

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
routines on memcpy() and help us make progress towards globally
enabling -fstrict-flex-arrays=3 [1].

Link: https://github.com/KSPP/linux/issues/79
Link: https://github.com/KSPP/linux/issues/289
Link: https://gcc.gnu.org/pipermail/gcc-patches/2022-October/602902.html [1]
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/ethernet/intel/iavf/iavf_client.c | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_client.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_client.c b/drivers/net/ethernet/intel/iavf/iavf_client.c
index 93c903c02c64..782384b3aa38 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_client.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_client.c
@@ -470,7 +470,7 @@ static int iavf_client_setup_qvlist(struct iavf_info *ldev,
 
 	v_qvlist_info = (struct virtchnl_rdma_qvlist_info *)qvlist_info;
 	msg_size = struct_size(v_qvlist_info, qv_info,
-			       v_qvlist_info->num_vectors - 1);
+			       v_qvlist_info->num_vectors);
 
 	adapter->client_pending |= BIT(VIRTCHNL_OP_CONFIG_RDMA_IRQ_MAP);
 	err = iavf_aq_send_msg_to_pf(&adapter->hw,
diff --git a/drivers/net/ethernet/intel/iavf/iavf_client.h b/drivers/net/ethernet/intel/iavf/iavf_client.h
index c5d51d7dc7cc..500269bc0f5b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_client.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_client.h
@@ -53,7 +53,7 @@ struct iavf_qv_info {
 
 struct iavf_qvlist_info {
 	u32 num_vectors;
-	struct iavf_qv_info qv_info[1];
+	struct iavf_qv_info qv_info[];
 };
 
 #define IAVF_CLIENT_MSIX_ALL 0xFFFFFFFF
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
