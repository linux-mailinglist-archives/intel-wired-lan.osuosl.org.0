Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E191D77D822
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 04:10:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7ED49611BF;
	Wed, 16 Aug 2023 02:10:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7ED49611BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692151831;
	bh=gA20VjzP/oKwq/ba9vbBsnYxMJsCw5GXlrRwwon2VCA=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vpDij8pffSouXHfLcyHt8eU5I21UI2CiNapuFQpwUuKEgW84BqFJlA1BHkC+7LjpU
	 RxMBymv/ebR+8z8V1x4QmpOQy1PothCdUapUW5TEuBDcMWWBjkgrakYRiahHCNsimM
	 cUidR/jBM7OvVojZHyNJuTIBkLEWfX0z7gS7zojwhCFS6/hvfwAdoXiMbnZykzmFHP
	 PmvbhFQqgzyTGHeFgcTxVQGuyBXXP+P1qh3CFuieNkfVm6693/jCMZITGn0TWVS7tU
	 vo2CPMx9ystjweHYOrU5s7OQ62ZxMc2mNMRs8+JsFGWdDeKgflWbb5OYGryzMfM/Nn
	 Z0a1jNTSdj+Kw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6omAtRplGeXa; Wed, 16 Aug 2023 02:10:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7564461212;
	Wed, 16 Aug 2023 02:10:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7564461212
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 127221BF427
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 02:10:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DDE0A414DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 02:10:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDE0A414DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NNV7i4OVzb3D for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 02:10:24 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 13C4F40352
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 02:10:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13C4F40352
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 52EDA649D3;
 Wed, 16 Aug 2023 02:10:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E38C433CA;
 Wed, 16 Aug 2023 02:10:22 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 8753DC691E1; Wed, 16 Aug 2023 02:10:22 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169215182255.21752.11821443988284205958.git-patchwork-notify@kernel.org>
Date: Wed, 16 Aug 2023 02:10:22 +0000
References: <20230814135821.4808-1-yuehaibing@huawei.com>
In-Reply-To: <20230814135821.4808-1-yuehaibing@huawei.com>
To: Yue Haibing <yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692151822;
 bh=TvIcGdfs/e4rVml4DBfZeSRdAvc8xZa3p4ubeI6k6Zw=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=RqlYx5H82mJJTuVHRJqQyRpvpzD67Chg7cjNxu7B59I7ymNWVpQvkXYUyDgpB5xQC
 MkARVpIgBu2BUTwXN9kmkpBNFylxhzjBkfX2h+6wLBcMSqx4Y0e3bi5egrW58Z/a+0
 aqn9aRSUap9/f10MyUH5mpCTpjSvCzYOmTdow1XKnizfSbSOQntHaf/GoWXCkac/qV
 p8HT/pvXr7UqyG8IzxwgNe1nbgTJHCnhkwPcPHtKfjy2BSQ/DFQl8SU3on/Rtw45Hu
 LnLfhp/YXduUXSmE3brfDZ4VH0ZMXHbigVj78CEtMd5AtgCvT69L04L198nKzOYdEB
 c38362cfKzmcg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RqlYx5H8
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: e1000e: Remove unused
 declarations
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Mon, 14 Aug 2023 21:58:21 +0800 you wrote:
> Commit bdfe2da6aefd ("e1000e: cosmetic move of function prototypes to the new mac.h")
> declared but never implemented them.
> 
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
> ---
>  drivers/net/ethernet/intel/e1000e/mac.h | 2 --
>  1 file changed, 2 deletions(-)

Here is the summary with links:
  - [net-next] net: e1000e: Remove unused declarations
    https://git.kernel.org/netdev/net-next/c/3bfdcc324a04

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
