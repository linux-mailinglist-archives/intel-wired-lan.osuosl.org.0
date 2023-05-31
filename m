Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F25717B5D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 11:10:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2571A821B3;
	Wed, 31 May 2023 09:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2571A821B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685524235;
	bh=J4YU04/IdMzaYVUzyNi/0SfuVjPkunPioQ26CDptd6c=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TesRJtJy7Zf53RbxTL6vZU2cJJJsJao7Mld7+nMWaj4vo7QaSz7UioULO+lxO9f6q
	 iXhPNZxXt59hlmLltwR9Jp5reT1dtQwYv7P871lU5JSBhRoTZ+eVayb+MkM/F3xQjq
	 Z6Rs3oms+xRmAU3ESfzfcX50g20m71PrAzm/RbSPaCvvpLeqP2wWJ5LLE0eMqB3cMN
	 sW9l2fV1NCLjigMP7F26whg5XKIgVEk5bR1Tt8mKsvl5phzpNhq7E1lEoWY5BH5+dZ
	 ZdrAjqCAJefWPOZBH/Tft5KX34ERt12d2MXXSlGZ6ifeNVIpYTKnxjycEJJ4Q2kdRa
	 PlMpcgaNcpCZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xxoUez7t-jva; Wed, 31 May 2023 09:10:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9785821A5;
	Wed, 31 May 2023 09:10:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9785821A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 983F21BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 09:10:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7BFE741DA7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 09:10:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BFE741DA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SNOnoebtd1um for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 09:10:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A2C141DA5
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A2C141DA5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 09:10:28 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7D0EA638B8;
 Wed, 31 May 2023 09:10:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6496EC4339C;
 Wed, 31 May 2023 09:10:26 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 41ADFE21EC7; Wed, 31 May 2023 09:10:26 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <168552422626.12579.6601125654059435231.git-patchwork-notify@kernel.org>
Date: Wed, 31 May 2023 09:10:26 +0000
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
In-Reply-To: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1685524226;
 bh=i6lshncDJIeLa1kUlaumbpkddBNVHnpfwPUQihXnRJM=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=IaXWdXOPAn96BdRBhQ4DPzAthy487kYS93n2uzsHOTA1oazIXh1PJLRJjhIMKmARd
 Zoul+HBtrNLRcpCC2eHgZtX87lOcuHQ3x0ZPDqqbzcWIxV8XrvoFCGWkft9/5+scfE
 qL6WQPDj9zqbTxH1fqntFPCdWp6px4wZuSYYwPABZ/Ls7K8G4Dc3JtMIzbw/dpzg6Z
 ZAGWT/0NFGkjpNNgCcGPpQvitaUmaUpqSvWSwM0wSyRffTUG32FqqJAyiRiba9JD7B
 E5tPgL/2SPQybKEvJ2jMwVPpJme582vDyDEQMZMj4rUKVq94P2u1XjjKvzVdP1jwZr
 vEUPT+tsZiVoQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IaXWdXOP
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] xstats for tc-taprio
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
Cc: andrew@lunn.ch, alexandre.belloni@bootlin.com, ferenc.fejes@ericsson.com,
 kurt@linutronix.de, alexandre.torgue@foss.st.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, xiyou.wangcong@gmail.com,
 gerhard@engleder-embedded.com, UNGLinuxDriver@microchip.com,
 horatiu.vultur@microchip.com, f.fainelli@gmail.com, xiaoliang.yang_1@nxp.com,
 jesse.brandeburg@intel.com, mohammad.athari.ismail@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 pranavi.somisetty@amd.com, jiri@resnulli.us, jhs@mojatatu.com,
 rogerq@kernel.org, claudiu.manoil@nxp.com, peppe.cavallaro@st.com,
 michael.wei.hong.sit@intel.com, harini.katakam@amd.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, linux@rempel-privat.de,
 mcoquelin.stm32@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Tue, 30 May 2023 12:19:43 +0300 you wrote:
> As a result of this discussion:
> https://lore.kernel.org/intel-wired-lan/20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com/
> 
> it became apparent that tc-taprio should make an effort to standardize
> statistics counters related to the 802.1Qbv scheduling as implemented
> by the NIC. I'm presenting here one counter suggested by the standard,
> and one counter defined by the NXP ENETC controller from LS1028A. Both
> counters are reported globally and per traffic class - drivers get
> different callbacks for reporting both of these, and get to choose what
> to report in both cases.
> 
> [...]

Here is the summary with links:
  - [net-next,1/5] net/sched: taprio: don't overwrite "sch" variable in taprio_dump_class_stats()
    https://git.kernel.org/netdev/net-next/c/dced11ef84fb
  - [net-next,2/5] net/sched: taprio: replace tc_taprio_qopt_offload :: enable with a "cmd" enum
    https://git.kernel.org/netdev/net-next/c/2d800bc500fb
  - [net-next,3/5] net/sched: taprio: add netlink reporting for offload statistics counters
    https://git.kernel.org/netdev/net-next/c/6c1adb650c8d
  - [net-next,4/5] net: enetc: refactor enetc_setup_tc_taprio() to have a switch/case for cmd
    https://git.kernel.org/netdev/net-next/c/5353599aa745
  - [net-next,5/5] net: enetc: report statistics counters for taprio
    https://git.kernel.org/netdev/net-next/c/4802fca8d1af

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
