Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C778C7FFD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 04:40:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A788D40BD4;
	Fri, 17 May 2024 02:40:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TSvOY5zZtNoO; Fri, 17 May 2024 02:40:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC39040BD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715913637;
	bh=nmdfa2+WZks9XMckAdK+yY74zBK0gKNiZe7vlneXnwM=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N8KjZliFeJlR9uPUo7zRLoSg6bytGL45ALIG6w4ryQIQrYukSOr9nfQKySjXD7pzE
	 NpTQ4gLMj57DYMh/hsFgmZDsbJt4FDzO4Z/RwD59zWxow9kIqmDrUFFqBH0qWWDCan
	 7BsGSnAYUCGIfQlsHsAhgJcn90csuXDVB3Mw5NWdpIcJy/e9COVll9Z88xBL94yLCT
	 sKJqh1tI+eXlgmR0vpVFf/7ltqExHHXup5Hdizd79LM+Dfy+ZehltlPrvKOTYCYB8i
	 YqAWU310OQgbMj4vvdAjIKw7Z3WBbW+XpdEaLvo5oi6c7FHXXu8Vv3VSlaaoneMOjk
	 yqbZm7hU5jQqg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC39040BD5;
	Fri, 17 May 2024 02:40:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 236E01BF23C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 02:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0CD1A83A89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 02:40:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ls3T2hhkqmGp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 02:40:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 02177817A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02177817A7
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02177817A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 02:40:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 78822CE19DC;
 Fri, 17 May 2024 02:40:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3ADC2BD11;
 Fri, 17 May 2024 02:40:30 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 A18D7C54BDA; Fri, 17 May 2024 02:40:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171591363065.2697.11756234770145638064.git-patchwork-notify@kernel.org>
Date: Fri, 17 May 2024 02:40:30 +0000
References: <20240515092414.158079-1-mschmidt@redhat.com>
In-Reply-To: <20240515092414.158079-1-mschmidt@redhat.com>
To: Michal Schmidt <mschmidt@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1715913630;
 bh=VCrb7UnnkO5S0CtIrGnADeHi98LkHpUqkncSHeHWXI4=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=lbCl65c8KF+k0SbNnpm9D9nhd+IUxfzDEBknfJhvFIYBxUPyxLLVXXNy0Pg1B53o6
 IzwydIAjR+XGs0/3jQ62sVcyu6qHkK4k1SGWUNRa4U5V8zHo6i7l04xqjEDiNXglBq
 4i0q15zEmdxxVHUaGCaNaXF0YMEgkk906VUz2Moyj5c7KNtlUH+sLaa7DN3xBu2MTh
 EpQJbyloBD0gqF9Fxe9LFT+ZcADd6j6PodoLr1Z6IdQbVljHbAOILQXA+Lo9ziMUhv
 gJ/3u0lYCpVhqYjYaUQ2L89Bq/IVKhUXeky42Dv+se+TCaDfJnWmFYCcrsIPhpu/+r
 NafwWAmQUdhEQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=lbCl65c8
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: don't skip over ethtool
 tcp-data-split setting
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
Cc: przemyslaw.kitszel@intel.com, xudu@redhat.com, linux-kernel@vger.kernel.org,
 aleksander.lobakin@intel.com, edumazet@google.com, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 15 May 2024 11:24:14 +0200 you wrote:
> Disabling tcp-data-split on idpf silently fails:
>   # ethtool -G $NETDEV tcp-data-split off
>   # ethtool -g $NETDEV | grep 'TCP data split'
>   TCP data split:        on
> 
> But it works if you also change 'tx' or 'rx':
>   # ethtool -G $NETDEV tcp-data-split off tx 256
>   # ethtool -g $NETDEV | grep 'TCP data split'
>   TCP data split:        off
> 
> [...]

Here is the summary with links:
  - [net] idpf: don't skip over ethtool tcp-data-split setting
    https://git.kernel.org/netdev/net/c/67708158e732

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


