Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C238911A3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 03:20:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D354160E7A;
	Fri, 29 Mar 2024 02:20:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2sr9UW4_hZfq; Fri, 29 Mar 2024 02:20:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5C4760E51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711678838;
	bh=xcuDRaeRNOyzQkzDaDQjhWyG/snx5uZw38iSkVlJ9No=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=046CBgD8/yKEwVZCk6O0vIGd66JQn81713LiRcuw8gMHgvoJVKM7KRIlmaSdoZpGb
	 0KWo9+UuDt5PuSUciTsqpC2S4M9ubBsbg5YjAcULgQSUSL7qQNxL/3d6s/awkV+Oro
	 KuSOz9I9kIe/8tIF5YxWOQo85wqbqfEOsgOhXJiiJ1kddpoaJWpdSOxSLhLdrpmOhO
	 QtJnoOvgAwlKlxta9ZPo5Iwi1vfg5zYE7dLERzPGGXQv4RDyF2QXkSFPPRLlipcsLu
	 OyIynlG00TOze/XESfBex96OmXxVqKVDf9QlcGXg86pJcMn2HpcQdENYH7tvQ4hyF3
	 Awzdr+K4oVokw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5C4760E51;
	Fri, 29 Mar 2024 02:20:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F51B1BF38C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 02:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7DAE7408D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 02:20:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C74y79Ru62zj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 02:20:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9BDB34044A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BDB34044A
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BDB34044A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 02:20:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 73D98618C9;
 Fri, 29 Mar 2024 02:20:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEBD5C433B1;
 Fri, 29 Mar 2024 02:20:31 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 E2D31D8BCE9; Fri, 29 Mar 2024 02:20:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171167883192.31897.5391383378639622485.git-patchwork-notify@kernel.org>
Date: Fri, 29 Mar 2024 02:20:31 +0000
References: <20240327142241.1745989-1-aleksander.lobakin@intel.com>
In-Reply-To: <20240327142241.1745989-1-aleksander.lobakin@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711678832;
 bh=scq+zhfqrpSEmaQVeGCdzdWPMSoFu4I0JJu2jmYEKVA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=UxN7uau/0swIpwP1Gpd4TqeL1OK7pHUj2QWM2Y5U9HDikHfmdEz5BSItnmI3CWuBS
 JoD4eFjjP0PiYfv14912z+N136MzmkhUCtfN5T9jPjDrsgy+gEU+m4p0rZ1Mm78Qn7
 Ug0z7zeExywdsB5z2WO/EkV/WFy8ARvLttW82sTwVY9dyoyamRuDcy3kLuOaEyy3UJ
 htPl1jbR9hZI9DnJtQJM7+a2FRnG2Ovb3weLX1ys0qtapMQwKsbWgQEeS3nXaFRn25
 CZ2p4nRK1MMx29QUwcjTdQ9vYot/isqRgLfj1bP+Kay4QcNL/C8k5yw2Q2/GxljYNp
 zPYGp3uVobJlQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=UxN7uau/
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/3] compiler_types: add
 Endianness-dependent __counted_by_{le, be}
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
Cc: keescook@chromium.org, netdev@vger.kernel.org, gustavoars@kernel.org,
 linux-kernel@vger.kernel.org, nathan@kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 horms@kernel.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 27 Mar 2024 15:22:38 +0100 you wrote:
> Some structures contain flexible arrays at the end and the counter for
> them, but the counter has explicit Endianness and thus __counted_by()
> can't be used directly.
> 
> To increase test coverage for potential problems without breaking
> anything, introduce __counted_by_{le,be} defined depending on platform's
> Endianness to either __counted_by() when applicable or noop otherwise.
> The first user will be virtchnl2.h from idpf just as example with 9 flex
> structures having Little Endian counters.
> 
> [...]

Here is the summary with links:
  - [net-next,v2,1/3] compiler_types: add Endianness-dependent __counted_by_{le,be}
    https://git.kernel.org/netdev/net-next/c/ca7e324e8ad3
  - [net-next,v2,2/3] idpf: make virtchnl2.h self-contained
    https://git.kernel.org/netdev/net-next/c/c00d33f1fc79
  - [net-next,v2,3/3] idpf: sprinkle __counted_by{,_le}() in the virtchnl2 header
    https://git.kernel.org/netdev/net-next/c/93d24acfa05e

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


