Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFEB7BF79C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 11:40:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E43C1414FF;
	Tue, 10 Oct 2023 09:40:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E43C1414FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696930833;
	bh=9FKTDGTMR+tr1sI7NbTrbWkiqxm2zHxOVy6f7qeyGQ4=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y+c1lfnrZXLqsTeibAjs1vWBNM5uZEt8gkX6IW1sjjnLFdn+LnOd1tGplE7OGPBIm
	 U15nvcoHjCOUz8LBleSIjLtvD8A4WEdnWRmgZ7pCKdIlsNKVaG9nQQ+Fm6BiYMqIm2
	 zT8JBHyBw4EWo5Q0ZjBRanqYe8CLN9m36pvh+IfDR1gj7kUkENaKlD0gUK5EYwkQml
	 d3Y4RtxB0d8yV7lPXHsB3VaUGoN2vjslThK+nXlmeZkb//BXLMl7pJlACAnHTahxoC
	 hIkM5wfHPlKBC/phzE/3XL5Lf72vjz5/b3N9WsdOLdWB1usBENwxaG/zik8VjPaK7N
	 sqU0SCBhcTnEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wtIRFD_qfEWB; Tue, 10 Oct 2023 09:40:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83DD2408A8;
	Tue, 10 Oct 2023 09:40:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83DD2408A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44F031BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 09:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1310A40C6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 09:40:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1310A40C6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4sX2cIKzO-3j for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 09:40:25 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA73D4177A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 09:40:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA73D4177A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 84ABA615A2;
 Tue, 10 Oct 2023 09:40:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25D84C433CA;
 Tue, 10 Oct 2023 09:40:24 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 09E68C595C5; Tue, 10 Oct 2023 09:40:24 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169693082403.5800.6981451364289759108.git-patchwork-notify@kernel.org>
Date: Tue, 10 Oct 2023 09:40:24 +0000
References: <ZSADNdIw8zFx1xw2@kadam>
In-Reply-To: <ZSADNdIw8zFx1xw2@kadam>
To: Dan Carpenter <dan.carpenter@linaro.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696930824;
 bh=d5GXNWwoNDXNq9hUxuk9GxPSEE/IHXHFL6VyvMeDIvo=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=QVRXkPWUzCFltimaLELy7wuruoL5hw4jf0oeZnlyvltelKamaJzsHlxuhfO8n6eZN
 tEJ4FPG6ayQGR9Dyk0ox5mUgGJLOJTBOPOsADgsuTm3gYbmJabiWg9aStcy5jphIgY
 E4YY/UTsDWqxTPThOdSYVTDvGN3vLVM4qPFu2HESvpvmBX1/rcGvKubX49vYUOZEI0
 NIi/n7xzRHlGWoPx+Gm+sws/ZV38kyj4t+NUJ/RpiqXL3cusMT6rmjoBWE1rw3bKIX
 p2CJaaY1nbU+xI39k/HCSIKy9jPOz+TwXgExHnDnMEB7hUGOUNzAIfFe+U7bdQlgXh
 9/1AIPvdJRYMQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QVRXkPWU
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: fix crash with empty VF
 macvlan list
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 jeffrey.t.kirsher@intel.com, horms@kernel.org, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Fri, 6 Oct 2023 15:53:09 +0300 you wrote:
> The adapter->vf_mvs.l list needs to be initialized even if the list is
> empty.  Otherwise it will lead to crashes.
> 
> Fixes: a1cbb15c1397 ("ixgbe: Add macvlan support for VF")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
> v2: Use the correct fixes tag.  Thanks, Simon.
> 
> [...]

Here is the summary with links:
  - [net,v2] ixgbe: fix crash with empty VF macvlan list
    https://git.kernel.org/netdev/net/c/7b5add9af567

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
