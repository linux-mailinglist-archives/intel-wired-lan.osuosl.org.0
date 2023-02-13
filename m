Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 840A9694486
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 12:30:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6196817EB;
	Mon, 13 Feb 2023 11:30:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6196817EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676287826;
	bh=IZegxpv/TIEGanXOfgdumgV5TUvfpAPOmT+/+O9Xr50=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UZENPerJBHGqoVKrCtraH4U1xOa+bpJdIeRo4P4LQVAUSzfhx6krW8Pk870By80Lz
	 owBQjjMdkCQ9z+YyY4iGg1O/8i60+koPKqO7jEE5qkmk8wSsUp7bBsitL2Ze58Q5lZ
	 0U9i/+93Q25K35hVzS2/dlddba6MA8BcJphF126diFX2s0nUpEUoamgPry3Ri9gnN4
	 /Q17pwmyrpIMGEAkS1ZJ8ASLEDU+1w6LlW8g8tnWATERpCTVCLxGYPuA+M7d4UCaDe
	 jBkNRD5qR543kzQb8EHjIKj2I65RGZPyHFRUrg4Jv7bs9vBpPw3ZGi/MPBQfBAfU4J
	 5f3JUSfgv/cWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nzhhbwFZIZ4L; Mon, 13 Feb 2023 11:30:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8ADB28174A;
	Mon, 13 Feb 2023 11:30:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8ADB28174A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D31881BF39E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 11:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B8AAD60F6C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 11:30:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8AAD60F6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oeM0sM3gw-fc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Feb 2023 11:30:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0E0960F58
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0E0960F58
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 11:30:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A191760FD2;
 Mon, 13 Feb 2023 11:30:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11B2CC433D2;
 Mon, 13 Feb 2023 11:30:18 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 ECA2DE68D2E; Mon, 13 Feb 2023 11:30:17 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167628781796.3463.3151948451131518084.git-patchwork-notify@kernel.org>
Date: Mon, 13 Feb 2023 11:30:17 +0000
References: <20230211074113.2782508-1-o.rempel@pengutronix.de>
In-Reply-To: <20230211074113.2782508-1-o.rempel@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1676287818;
 bh=SMomGZUWf/X7WdKybml+B0OSPVKkL3Uyt487pPjNiNQ=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=WyfCEEShHQ6AW/TKI7y3OTF57IPygN6yBnstNojtQ+WQCKMOFjfqXEj8CRoNeIeEy
 BO5cGSpxa1E8L2D/ROKoamQoIX0eCvu4JdFSc8ganfCywJCIwMIyQU2lJqrnl4fi53
 5dkOHtw7zSJieAFSURqUP2QGIkzc3UPYSL0mcA1GYGkCqSu1Ku+Ujc3Vsif/MIgUJr
 qH0jdrBxij5BrEeHVzchjW502aaBbpNxkSClxGTsolR/rZF7k3QjVhgE42SXv7GDPD
 C7z+bkLuGAGLDrJ5TDw7QUdN5GhBGzMJKgaapIxAYY9zr3ZKViWMAp5C0CDq1nH/lD
 afgprwGZ9K9gQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WyfCEESh
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 0/9] net: add EEE support
 for KSZ9477 switch family
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
Cc: woojung.huh@microchip.com, andrew@lunn.ch, Arun.Ramadoss@microchip.com,
 f.fainelli@gmail.com, davem@davemloft.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 edumazet@google.com, pabeni@redhat.com, wei.fang@nxp.com,
 kernel@pengutronix.de, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 olteanv@gmail.com, vivien.didelot@gmail.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Sat, 11 Feb 2023 08:41:04 +0100 you wrote:
> changes v8:
> - fix comment for linkmode_to_mii_eee_cap1_t() function
> - add Acked-by: Arun Ramadoss <arun.ramadoss@microchip.com>
> - add Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
> 
> changes v7:
> - update documentation for genphy_c45_eee_is_active()
> - address review comments on "net: dsa: microchip: enable EEE support"
>   patch
> 
> [...]

Here is the summary with links:
  - [net-next,v8,1/9] net: dsa: microchip: enable EEE support
    https://git.kernel.org/netdev/net-next/c/69d3b36ca045
  - [net-next,v8,2/9] net: phy: add genphy_c45_read_eee_abilities() function
    https://git.kernel.org/netdev/net-next/c/14e47d1fb8f9
  - [net-next,v8,3/9] net: phy: micrel: add ksz9477_get_features()
    https://git.kernel.org/netdev/net-next/c/48fb19940f2b
  - [net-next,v8,4/9] net: phy: export phy_check_valid() function
    https://git.kernel.org/netdev/net-next/c/cf9f60796968
  - [net-next,v8,5/9] net: phy: add genphy_c45_ethtool_get/set_eee() support
    https://git.kernel.org/netdev/net-next/c/022c3f87f88e
  - [net-next,v8,6/9] net: phy: c22: migrate to genphy_c45_write_eee_adv()
    https://git.kernel.org/netdev/net-next/c/9b01c885be36
  - [net-next,v8,7/9] net: phy: c45: migrate to genphy_c45_write_eee_adv()
    https://git.kernel.org/netdev/net-next/c/5827b168125d
  - [net-next,v8,8/9] net: phy: migrate phy_init_eee() to genphy_c45_eee_is_active()
    https://git.kernel.org/netdev/net-next/c/6340f9fd43d5
  - [net-next,v8,9/9] net: phy: start using genphy_c45_ethtool_get/set_eee()
    https://git.kernel.org/netdev/net-next/c/8b68710a3121

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
