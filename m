Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 025477326F5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jun 2023 08:00:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EACE183EB2;
	Fri, 16 Jun 2023 06:00:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EACE183EB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686895232;
	bh=hTROgkOvmPCmG4S77z/j3PTXjVqiximrkDwd6byYzGA=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w520iRcFCjxEmog6c88xpeQK8yGyC99CozUFOQTAAHGSebPU+iRdO1WpgkGKsCzzx
	 yECnSG0Vc2HU9dexGy77MYWVAJlMsykrYbIhxjb7DNrPcUahjOPluBLgmyMXlsNPfu
	 aIw4B1081ym6HhZ+gg5iIRbIziX0VwlNc4TPziRGHUcV1V+QZsetmT/B+0/YuqLnl3
	 V6eeR5ZQkFhf4FlHU883fBP7UDyb4qU0T3ugeSRBs5H4XOGmeZ9OKeZYYoamzs1qCK
	 f2kK/YCmTMTVeSpoPypWori6gozUX4qZN+gxH8/DRVMykD5oGsI7RuCaN101rIo3FF
	 I7WAOHgrhe0Zw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r7WszUq0qgor; Fri, 16 Jun 2023 06:00:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDAC683B57;
	Fri, 16 Jun 2023 06:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDAC683B57
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6C61BF853
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 06:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3303941B9B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 06:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3303941B9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NgZ3TAzL16Wp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jun 2023 06:00:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21CD0401FB
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21CD0401FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 06:00:24 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EADE06102D;
 Fri, 16 Jun 2023 06:00:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3893EC433C8;
 Fri, 16 Jun 2023 06:00:23 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 05EF0E21EE5; Fri, 16 Jun 2023 06:00:23 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <168689522302.30897.3895006000334449942.git-patchwork-notify@kernel.org>
Date: Fri, 16 Jun 2023 06:00:23 +0000
References: <20230614145302.902301-1-piotrx.gardocki@intel.com>
In-Reply-To: <20230614145302.902301-1-piotrx.gardocki@intel.com>
To: Piotr Gardocki <piotrx.gardocki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686895223;
 bh=HnQRwyunHewJwr7L0Fk6QAzen5YNO/w8JQDBxw1Fuqc=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=gKDkbnabeVj3xONNJ/lcPjCyetDvJix+bmzeUzr0PWuIz5m3cgtSgibH1Ck747MoM
 p7fXEC56JINWSMjK4FNZov9l9UJT6DlE5gqaR+BsYgLVs9UXJ/geqYFkVH3ofyjQEG
 Uva0ZfQa4ttURf84Lgeu+4UJe98VZAvUWcCIkz33MaGqrhbPp+5eZzgG5lEAW9yrkV
 AErf3c/y3VhDF2h6HtBdAQBRiHUzLfDw36gHgyRS/7ojQyPXUVfBdX6imwp3u3a+iY
 1qY/pZvkKq97/p81JMJSv6wNnT4WHJ1DIq416vSkv71wUkSRcy6/kuUuzh9Qo2Gcrs
 pyFEkiPZCZ2fw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gKDkbnab
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/3] optimize procedure of
 changing MAC address on interface
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, simon.horman@corigine.com,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 14 Jun 2023 16:52:59 +0200 you wrote:
> The first patch adds an if statement in core to skip early when
> the MAC address is not being changes.
> The remaining patches remove such checks from Intel drivers
> as they're redundant at this point.
> 
> v3: removed "This patch ..." from first patch to simplify sentence.
> v2: modified check in core to support addresses of any length,
> removed redundant checks in i40e and ice
> 
> [...]

Here is the summary with links:
  - [net-next,v3,1/3] net: add check for current MAC address in dev_set_mac_address
    https://git.kernel.org/netdev/net-next/c/ad72c4a06acc
  - [net-next,v3,2/3] i40e: remove unnecessary check for old MAC == new MAC
    https://git.kernel.org/netdev/net-next/c/c45a6d1a23c5
  - [net-next,v3,3/3] ice: remove unnecessary check for old MAC == new MAC
    https://git.kernel.org/netdev/net-next/c/96868cca7971

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
