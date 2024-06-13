Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3206090604A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 03:10:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D23A1608BE;
	Thu, 13 Jun 2024 01:10:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cYI7QLilgxYr; Thu, 13 Jun 2024 01:10:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEEBD608D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718241035;
	bh=m7cTmju5ycx3rANBNr0g+SD8GRB3Rq9DW/+VjCVwcSk=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zA5PgVajx6jJE4sKEpv8ZMrPlxiXvxpxSoLl7I8vMi1IhZC5Z0EcPLPa5gmiQpqXO
	 i7IzRIq5IpBwZriXP54XKHOzcSVrQ1M73kVIXQSqsbEFN8TzawN/PcXtcYfDb9M5n9
	 ASiVeY0nNRc/+S69hBmXbE+QYFoW5c776LV5PKjGiGz/ERKMykNdY0ACSZFeWUISei
	 56PbHz/WDxAwjzc4o0tquzCu+TlZod9W7fdCBq38j3DDB8ZFg2HCa5A1fB0hqiQEnW
	 DA5EJIhgZqKxdNKwqh0raYBcmw7J844Na40gX0xCO0yRuhf9votJheIAvpNtivotV+
	 x60LkjwESKT4Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEEBD608D8;
	Thu, 13 Jun 2024 01:10:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BAC821BF362
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 01:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B48116083E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 01:10:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l2U6G6lB1390 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 01:10:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AFB9B60833
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFB9B60833
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AFB9B60833
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 01:10:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5F05861800;
 Thu, 13 Jun 2024 01:10:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0124CC3277B;
 Thu, 13 Jun 2024 01:10:30 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 DCA08C43613; Thu, 13 Jun 2024 01:10:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171824103090.1775.1813584315398438736.git-patchwork-notify@kernel.org>
Date: Thu, 13 Jun 2024 01:10:30 +0000
References: <20240609173358.193178-1-ast@fiberby.net>
In-Reply-To: <20240609173358.193178-1-ast@fiberby.net>
To: =?utf-8?b?QXNiasO4cm4gU2xvdGggVMO4bm5lc2VuIDxhc3RAZmliZXJieS5uZXQ+?=@ci.codeaurora.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718241031;
 bh=c0lZUPwRpq5mEKJuM9qgYgJrToeU1Q+bgLPAqjtxcfE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=F8wmudT/Tp5E7U+PbUtnv+Ijz5V2i5VX7aQ4f8oOpDJ7LYw80lmChazTNBC2JiAxs
 ChkOc2hiozk5O4rUHpXNn4Kb7u4selmkawUHKYrEiVrIuN6UqbfI8TOLNtKKAkMBAu
 ouGBYre+IYT5pjllBE7muFH10Us122oWCMm3aAiPuuwLLVbQwfrK0IuXkjpl/mnuO1
 p8ZyJEzXo/W/a+YiSNwotoXvhrIyxb0ZaS8eTey6vWIAM9ZvD6teGtzm68sJDKqdoa
 hQm+YxrmlyP0ugd06ax3KeCNz+iXETT+SQApE57ucxbQpuIhIxptpkLcTRO1VH3nSv
 msOyyIcJd5b0A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=F8wmudT/
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] net: flower: validate
 encapsulation control flags
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
Cc: louis.peens@corigine.com, dcaratti@redhat.com,
 intel-wired-lan@lists.osuosl.org, leon@kernel.org, linux-net-drivers@amd.com,
 netdev@vger.kernel.org, oss-drivers@corigine.com, tariqt@nvidia.com,
 linux-kernel@vger.kernel.org, ecree.xilinx@gmail.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, i.maximets@ovn.org, habetsm.xilinx@gmail.com,
 kuba@kernel.org, pabeni@redhat.com, saeedm@nvidia.com, davem@davemloft.net,
 linux-rdma@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Sun,  9 Jun 2024 17:33:50 +0000 you wrote:
> Now that all drivers properly rejects unsupported flower control flags
> used with FLOW_DISSECTOR_KEY_CONTROL, then time has come to add similar
> checks to the drivers supporting FLOW_DISSECTOR_KEY_ENC_CONTROL.
> 
> There are currently just 4 drivers supporting this key, and
> 3 of those currently doesn't validate encapsulated control flags.
> 
> [...]

Here is the summary with links:
  - [net-next,1/5] flow_offload: add encapsulation control flag helpers
    https://git.kernel.org/netdev/net-next/c/b48a1540b73a
  - [net-next,2/5] sfc: use flow_rule_is_supp_enc_control_flags()
    https://git.kernel.org/netdev/net-next/c/2ede54f8786f
  - [net-next,3/5] net/mlx5e: flower: validate encapsulation control flags
    https://git.kernel.org/netdev/net-next/c/28d19ec91755
  - [net-next,4/5] nfp: flower: validate encapsulation control flags
    https://git.kernel.org/netdev/net-next/c/34cdd9847820
  - [net-next,5/5] ice: flower: validate encapsulation control flags
    https://git.kernel.org/netdev/net-next/c/5a1b015d521d

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


