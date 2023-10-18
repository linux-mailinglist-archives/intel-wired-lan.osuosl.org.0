Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F8A7CD6C5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 10:40:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0882440AAE;
	Wed, 18 Oct 2023 08:40:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0882440AAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697618435;
	bh=aI/oVZlxrhBG2TGQptXTWaPbdPMfdj5sL1EVs0/o8EY=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s+8HS0GsEZVu/LTLReGFwsXRVM3+DoYysR0UYrFsaD3JFofUwYCMiYN9ezIqYaO9p
	 IdsT9B7reJ9qQEQ3vTH38N0pMtZUAcdFDYMtZvglGTPkdboGlLqbgrotQV1gqAslz7
	 9fbY9Xbe+zZtLKnYCWNrB8iULRVQyY+K2e5GGBXONDwkD0rD/xuX3b9vaCkfCql2E6
	 m8rNUD274OTtUIhimeIanYgG69RPhdv+ZAXznYFnU4Q/Olkn+NZR5G/U8r+aH513WM
	 PtFpzl7pX9lYPzsQSoqaR8iJr+hNTk/4SuKXGC6biLqQ2d+q86c8Efn0Km01R2gSCA
	 ycrZpQhzkkKBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tlIzcYtOOsHa; Wed, 18 Oct 2023 08:40:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2751404D4;
	Wed, 18 Oct 2023 08:40:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2751404D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 83FB11BF285
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 08:40:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5ABFF820B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 08:40:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5ABFF820B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cy9eGWuHbfUo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 08:40:27 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4A1981471
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 08:40:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4A1981471
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id C8599B82266;
 Wed, 18 Oct 2023 08:40:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25AD2C433CC;
 Wed, 18 Oct 2023 08:40:23 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 0BF96C04DD9; Wed, 18 Oct 2023 08:40:23 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169761842304.32286.14718578238275474190.git-patchwork-notify@kernel.org>
Date: Wed, 18 Oct 2023 08:40:23 +0000
References: <20231015234304.2633-1-paul.greenwalt@intel.com>
In-Reply-To: <20231015234304.2633-1-paul.greenwalt@intel.com>
To: Paul Greenwalt <paul.greenwalt@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697618423;
 bh=GDfbvZk3KEL/2OiP0+wJBNdzV07Kq7LZeX1sJq5NRSs=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=FRdVEGQcO5oZ3Pszg7eozW4THnumQY5R+cIefaOFwSy0jYzqcy5OsMR6c8uxViKK3
 Z/pN+geFvN4eTGxBGL5mAwW62mbcMZLprGCafLpHRqrL1SFr8zmOo2vaxol8jLRgs0
 nt+a7MlkwSLgxLnNaA7er6FLV4fVHpPwr5A3Soz0OY55o8wFxM+fqzzmS/+e5hq4NG
 Znfs01thHGsX7I7JWpyIhoyLB/ee+dJ52O1QjouhC1rFKdcqRiGCCI6ExY/FZIqDuP
 +3SRXmk7smqQmBS25Y0H2R5SXc75t+vh4tcQTBjROYdkMqErkw63HAECACgVgJ4NPt
 jVpnyr6KhrQpw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=FRdVEGQc
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/3] ethtool: Add link
 mode maps for forced speeds
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
Cc: jiri@resnulli.us, andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 vladimir.oltean@nxp.com, jdamato@fastly.com, pawel.chmielewski@intel.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 netdev@vger.kernel.org, kuba@kernel.org, d-tatianin@yandex-team.ru,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Sun, 15 Oct 2023 19:43:01 -0400 you wrote:
> The following patch set was initially a part of [1]. As the purpose of the
> original series was to add the support of the new hardware to the intel ice
> driver, the refactoring of advertised link modes mapping was extracted to a
> new set.
> 
> The patch set adds a common mechanism for mapping Ethtool forced speeds
> with Ethtool supported link modes, which can be used in drivers code.
> 
> [...]

Here is the summary with links:
  - [net-next,v5,1/3] ethtool: Add forced speed to supported link modes maps
    https://git.kernel.org/netdev/net-next/c/26c5334d344d
  - [net-next,v5,2/3] qede: Refactor qede_forced_speed_maps_init()
    https://git.kernel.org/netdev/net-next/c/a5b65cd2a317
  - [net-next,v5,3/3] ice: Refactor finding advertised link speed
    https://git.kernel.org/netdev/net-next/c/982b0192db45

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
