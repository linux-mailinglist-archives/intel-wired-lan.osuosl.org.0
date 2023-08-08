Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F097774DDF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 00:00:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2901B82135;
	Tue,  8 Aug 2023 22:00:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2901B82135
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691532032;
	bh=yKHzEz5W79dIQW67r0Dw4EYVXBRYTKCvVJs/y8XyPig=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N9y0/B1CaxJGDuJWKNCX7l3Y5/lylHlYzgDUZU6OcYllILamUluLBbqhRgPhVWcdb
	 Ey4k1D4iln2Nh3a9T7net58l7vnKtF7v5iRg9qAtk9sqD1gU6yBbriFj4xMaUIf7YX
	 FGz0UhT01tgWDfhmmAylxPoH+4NFW2rC1ZcGiwdQBq7xjwBe3yRonT8D4sr8XGFqLU
	 UVzYy7bLcFecx+/ocm2/xcHqlE9DuqsPMyaAs/1p48OZQYoqLsofi6boilhBa2vDDh
	 zhvxQW5XIo23cUoVGcR8WTBKGE0jmrdnaIrso2WNYiHJ83EQkEjlzIN80sioKAw/+2
	 t93duDzLw9gRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-D4SY0acZNm; Tue,  8 Aug 2023 22:00:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BE76820F4;
	Tue,  8 Aug 2023 22:00:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BE76820F4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 804411BF82D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 22:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5634D4176C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 22:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5634D4176C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y1789irndJTL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 22:00:24 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57F5C41745
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 22:00:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57F5C41745
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3BE4262DA7;
 Tue,  8 Aug 2023 22:00:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0A3C433D9;
 Tue,  8 Aug 2023 22:00:22 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 86C30C64459; Tue,  8 Aug 2023 22:00:22 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169153202254.6931.1809745921138635353.git-patchwork-notify@kernel.org>
Date: Tue, 08 Aug 2023 22:00:22 +0000
References: <20230804125203.30924-1-yuehaibing@huawei.com>
In-Reply-To: <20230804125203.30924-1-yuehaibing@huawei.com>
To: Yue Haibing <yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691532022;
 bh=8YuuElbFwVlpduRXxYXvgNc6H3UQeAUu2HC/SZZwh4s=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=XbaSIomfIhRup/KQc8pMzNMimKjUbow5eH+febLDSdUuXimO2o5qLrh9jDvYE/9gK
 KUL/zJ1OVqYFlNy5jmGjkdYQp5blb45psNtfw10/IqhJ77Y8/6nla6O2dbWQ7kHq+e
 0TIVAB5tHoh8BPgWBtYjVaGh+brja29z32i7oWNlZhZg7ZqBnE4CkOm+Co5MyBYGfh
 8AlxCosNYDvAIHnNLkqvVNYL8xWe/xNMjZOUyKu7P9Cc7cN8S1SkyLjrO7U82y4Y0k
 4rWVsBGsjKcSaQnrysEvxK1dKy53u10yw0u53ltbiUXuwzJ7fJ0KwkvmURsny7Wrc5
 Ac+3f3SolTn8Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XbaSIomf
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove unused
 function declarations
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
Cc: intel-wired-lan@lists.osuosl.org, daniel@veobot.com,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Fri, 4 Aug 2023 20:52:03 +0800 you wrote:
> Commit dc166e22ede5 ("ixgbe: DCB remove ixgbe_fcoe_getapp routine")
> leave ixgbe_fcoe_getapp() unused.
> Commit ffed21bcee7a ("ixgbe: Don't bother clearing buffer memory for descriptor rings")
> leave ixgbe_unmap_and_free_tx_resource() declaration unused.
> And commit 3b3bf3b92b31 ("ixgbe: remove unused fcoe.tc field and fcoe_setapp()")
> removed the ixgbe_fcoe_setapp() implementation.
> 
> [...]

Here is the summary with links:
  - [net-next] ixgbe: Remove unused function declarations
    https://git.kernel.org/netdev/net-next/c/ac0955f0ccb0

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
