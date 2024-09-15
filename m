Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E11AF9797AB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Sep 2024 18:01:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF6BA405B0;
	Sun, 15 Sep 2024 16:01:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v4JZx__umG-W; Sun, 15 Sep 2024 16:01:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5B7E405B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726416091;
	bh=2vh0Y3+6rMoU7bXxbGV34L3m5b+SIJniD6qcJtKiB5Y=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7Gg4agRu3qnYMkJrIhOKCkxTJG1PBNzmQ/HSc5KJJ0yFJoMe6R4jBQgSd1yWzRYxQ
	 lL1YK3duEzZaPbz1PydbTMxqLSydtMpDNJZMWiDq3XKwF22q4ibWS/xHVNjrUSYGsg
	 dNzuVVEq0hUhNJucL/wfoUvPOpBgN5XxnyS8v+3vqFD55/8Qqb6nnXKemV9fhoh/0Y
	 4svSCZQ6lYn6N0BG7b2ia3OoZF98BKaNNozczigorBpPDk4V7PudintqMMhisoCowP
	 SG9ZYZTLYXKnwLLFfDngsPKM0QXDoBYwI+I5WYpbGHnfbv/MUxmjgSpo59K4ndkW0z
	 kMKuRV7EFoWtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5B7E405B7;
	Sun, 15 Sep 2024 16:01:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB1B81BF282
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 16:01:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D650D405A3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 16:01:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9_8q2xPFbyx6 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Sep 2024 16:01:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D1EC6404E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1EC6404E2
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1EC6404E2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 16:01:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 9C0B0A40F22;
 Sun, 15 Sep 2024 16:01:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0594CC4CEC3;
 Sun, 15 Sep 2024 16:01:26 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 ADDB03804C85; Sun, 15 Sep 2024 16:01:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <172641608750.3111582.11116274512992021166.git-patchwork-notify@kernel.org>
Date: Sun, 15 Sep 2024 16:01:27 +0000
References: <7f7aeb91-8771-47b8-9275-9d9f64f947dd@stanley.mountain>
In-Reply-To: <7f7aeb91-8771-47b8-9275-9d9f64f947dd@stanley.mountain>
To: Dan Carpenter <dan.carpenter@linaro.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726416086;
 bh=wg67dmBzddHpQPxvcLlIi8uEkqvPL4DE0pY2JU1FlyU=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=PdHJwMl2rlZwyweitrslhQR1bgmMMCd9GKy6swSfrdveoaiv0O01ttPvoIYF6F1m8
 nmiq2PSzkDTZWk9izo/1mDPOl+AM5XgBM+X2oG6AawBljEDxXDdx9Iita8VkTEDTuX
 HLAsPFNcFJn0faDrdT4Hss3tVGhfjtygN5o+fbeDlYsP1RHuuruIyCvq0MigdG/UQa
 pPs4z6JE33iEf59zjbZd5ijIQqQ4Mbh6C6R/0oHTIQE6jMGvMuewlI8FVGYoS0Rh+B
 30lGbvH8RS5pRSK4RTom9A9QsnngnGy95K9h9VL3a5QRetuwKFzjn7szzoTOr4C9yg
 YP7LJZNEeiOng==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PdHJwMl2
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix a couple NULL vs
 IS_ERR() bugs
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
Cc: wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, michal.swiatkowski@linux.intel.com,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Sat, 14 Sep 2024 12:57:28 +0300 you wrote:
> The ice_repr_create() function returns error pointers.  It never returns
> NULL.  Fix the callers to check for IS_ERR().
> 
> Fixes: 977514fb0fa8 ("ice: create port representor for SF")
> Fixes: 415db8399d06 ("ice: make representor code generic")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> 
> [...]

Here is the summary with links:
  - [net-next] ice: Fix a couple NULL vs IS_ERR() bugs
    https://git.kernel.org/netdev/net-next/c/75834577c087

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


