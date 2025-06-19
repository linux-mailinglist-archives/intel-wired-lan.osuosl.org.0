Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC09AAE0FB6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jun 2025 00:50:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DB4F81264;
	Thu, 19 Jun 2025 22:50:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0MrTYMVLpeMz; Thu, 19 Jun 2025 22:49:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D5AE812F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750373399;
	bh=qK2zftCW4yj4HQgzoeiMqNV88YHpyKl5rFrLaWPEl2U=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0y+qKv+VD/mMYIJw1B9j8LyfE4vKCRDHew0QgQvAoUP4SGGLDxAY8j4QDk6po8M3W
	 Et+4fho/BgAauoLUdc7kvitS//RX99cg6nd3rB66Q6iK9zbBmIobYkgvcdSkjtYyX0
	 GRpZy8Ec1iBK0+HB9kezW8XmxOm51U2sbZsIIzUhWKNf6XMOJNcoLPtELEB3QGuSAc
	 46a59QJGfYAv8MPd76TOE8hC/mrLAl/z7ZORM70hSHUh7FdN8pBZh5A/fMxiZLWbRH
	 L5nl2hBZiPVXM98jTVypHsojSuw4/2yET2bfo2hdp4iYCRY3VwkZrsYDm+MiH0Xg12
	 s4llbqWRq1OfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D5AE812F8;
	Thu, 19 Jun 2025 22:49:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B7A1616B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 22:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E2394014E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 22:49:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BCa99iPOO8Ko for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jun 2025 22:49:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E11704002D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E11704002D
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E11704002D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 22:49:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 4E9874ADC1;
 Thu, 19 Jun 2025 22:49:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E50A0C4CEFE;
 Thu, 19 Jun 2025 22:49:55 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 33CE538111DD; Thu, 19 Jun 2025 22:50:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175037342399.1010622.16235636667757427783.git-patchwork-notify@kernel.org>
Date: Thu, 19 Jun 2025 22:50:23 +0000
References: <20250618135408.1784120-1-colin.i.king@gmail.com>
In-Reply-To: <20250618135408.1784120-1-colin.i.king@gmail.com>
To: Colin Ian King <colin.i.king@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750373395;
 bh=IEl3Qxe9G4aEzvOzD9TPWOAxEI89WxS5C40gmzn3ckM=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=eKAPMSJ+/ILWNsGYLtmi201BqpyQISe5SReL3J49kOvB2WtfsX2ND1Dc04aLBU/Vk
 nb0UJlRgFLm7T2dJ56H+RiQusC1WpXRxyyaTMlCQRIY89Qq7SwOBAvHjACENElXt3F
 6hmwAYr4QHGeKHl8lwochHmYr94lDZffdv5dbSvISt0PMmR7v69mKm/f4WnbfDWeO3
 Q+NAikNlElK5qSC4dYdntLvpJqH30dTkWe98EREM/Inq4rwNaYr2QoE/pSVfffLU8u
 BosberWYzMLYF/0KSRBTpkgwFsSNNf/JTbWSqmJPIekW9ZbqNrdfGBIc7Jkb8o8wos
 Y56W7TQ6EhIcA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=eKAPMSJ+
Subject: Re: [Intel-wired-lan] [PATCH] igc: Make the const read-only array
 supported_sizes static
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 18 Jun 2025 14:54:08 +0100 you wrote:
> Don't populate the const read-only array supported_sizes on the
> stack at run time, instead make it static.
> 
> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_tsn.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Here is the summary with links:
  - igc: Make the const read-only array supported_sizes static
    https://git.kernel.org/netdev/net-next/c/deb21a6e5b4a

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


