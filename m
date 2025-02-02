Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40278A24C6A
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Feb 2025 02:20:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE7164276E;
	Sun,  2 Feb 2025 01:20:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id URmB2sbjB53r; Sun,  2 Feb 2025 01:20:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF73442753
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738459216;
	bh=5cDeejirSaesynERbAUC5FD5nHEW/G9pqtSXYAEbWmw=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1/pmTqMkZ7G1Rp13kRvfFHk3uYD4rJN8N2pkJbo2PWmf1UnZNS6FT/L0P26+uM859
	 /WUtfmdKXIVsoGmTOEonihCgEKXpPT7x6fwTFcdjzz7c5ueL8Z95Wvd8nR6iHT05bt
	 +zFe9dosJMQxIUR9TGiyu6KdbI4Y0kjD8rIljMLhjD6irZeBUIVjXyi5DxQ1/MaC9U
	 dSIpvMBgJDanL9udC8Ri+URAQoEKlOCnU1aXRVi6ZCLdtYYAkGyOXgjUARgpkFOnhL
	 XfO2/FTRtZTYgObMAh5Y05fXEQht6uUmA1qAtpHyp6IKfYRgFoKdNLEsLRofWCQGtt
	 q3qPVhsRXpiMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF73442753;
	Sun,  2 Feb 2025 01:20:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CA54216E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Feb 2025 01:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AE910403B7
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Feb 2025 01:20:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dmjkEvMZ2wAj for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Feb 2025 01:20:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2EABF4010F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2EABF4010F
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2EABF4010F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Feb 2025 01:20:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E0EFB5C5F4A;
 Sun,  2 Feb 2025 01:19:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EEEFC4CED3;
 Sun,  2 Feb 2025 01:20:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 722F9380AA68; Sun,  2 Feb 2025 01:20:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <173845923827.2030588.8008436658888569180.git-patchwork-notify@kernel.org>
Date: Sun, 02 Feb 2025 01:20:38 +0000
References: <20250131013832.24805-1-jiashengjiangcool@gmail.com>
In-Reply-To: <20250131013832.24805-1-jiashengjiangcool@gmail.com>
To: Jiasheng Jiang <jiashengjiangcool@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, michal.swiatkowski@linux.intel.com,
 horms@kernel.org, wojciech.drewek@intel.com, piotr.raczynski@intel.com,
 mateusz.polchlopek@intel.com, pawel.kaminski@intel.com,
 michal.wilczynski@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738459211;
 bh=GbcQEQpjuXezmd6s4Xjo3yFPd81uZdTBhnNerQvz48Q=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Q9bJBS28WSd7V59JcFvaUX6ewy+nlyTzOqnjYBsemLu9etJMvQJRyKwk4whYKvMBm
 qOAB12WdTlU3+8myRS0EEg8L3+xNGjjjM4XQbsadsbI224Fo+d0uU7dm1VJGa1qGpE
 5iq9lTUBw0hTfI+1rrPf5Enh35b1sNYStyrm7ADPzmsUDGLeHbL9EB3OMzIXyUenHr
 vyeJ/Dil9bw+93l9wGs37zYzXcX+egHWNMAPE4Io2B12rVTM4crY2d2sdzHFSNGGMq
 tpfOTJmpjFynCzfBN7Pua4HNHmsNTs2mpHtuKCKS1TbXQxO3lxd/8TElvv2YM6K48V
 6qVVzTG1M+2KA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Q9bJBS28
Subject: Re: [Intel-wired-lan] [PATCH] ice: Add check for devm_kzalloc()
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

This patch was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Fri, 31 Jan 2025 01:38:32 +0000 you wrote:
> Add check for the return value of devm_kzalloc() to guarantee the success
> of allocation.
> 
> Fixes: 42c2eb6b1f43 ("ice: Implement devlink-rate API")
> Signed-off-by: Jiasheng Jiang <jiashengjiangcool@gmail.com>
> ---
>  drivers/net/ethernet/intel/ice/devlink/devlink.c | 3 +++
>  1 file changed, 3 insertions(+)

Here is the summary with links:
  - ice: Add check for devm_kzalloc()
    https://git.kernel.org/netdev/net/c/a8aa6a6ddce9

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


