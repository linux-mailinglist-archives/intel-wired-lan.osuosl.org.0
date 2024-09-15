Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 499F39797AD
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Sep 2024 18:01:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F9C6405DE;
	Sun, 15 Sep 2024 16:01:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6pTXT_LhsF1e; Sun, 15 Sep 2024 16:01:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 991DC405B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726416094;
	bh=/NNhaHzQBauPsaq1t4Fo6jnVfYcvm+wrZ1HxJR6xdAs=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AxliORynkXz4w9QSTYgL0wTKu32mo2B5ZUdKw+fp2/d06symBNwkUGZMzCg3jeLf+
	 q7r9DGjQyidpzwfTk4vzVtZipmovyNH89Bl2wFt8VXRET9pG6n/8vyi8qtnUqeKQvl
	 MycNHakJ7SV8Kes6mYXB4dg7znjO33ZZVcfnopv4vHnpGmaC03/EGBex5Hq5LN7p3Z
	 Ho9WYzTRIVywV4C6CcYhYA9eJCd9zl11Q+NGMa6rDxYXM3mbLx9YQCf5OUDZ4jj1YK
	 ZyfewxRTxidNTUibQOR9qUug1ku3aTk8+M07Ph9v9THuvcRaHyKPvtHU7cyGjWodHJ
	 mIZ4nMsx5/YUA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 991DC405B8;
	Sun, 15 Sep 2024 16:01:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8DF7B1BF282
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 16:01:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7CDE580A4D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 16:01:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cEqAHR8Qz8QR for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Sep 2024 16:01:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 88F5D80844
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88F5D80844
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 88F5D80844
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Sep 2024 16:01:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 920AE5C59DE;
 Sun, 15 Sep 2024 16:01:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07DD7C4CED0;
 Sun, 15 Sep 2024 16:01:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 AE2D93804C85; Sun, 15 Sep 2024 16:01:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <172641609027.3111582.15058524738519708008.git-patchwork-notify@kernel.org>
Date: Sun, 15 Sep 2024 16:01:30 +0000
References: <6951d217-ac06-4482-a35d-15d757fd90a3@stanley.mountain>
In-Reply-To: <6951d217-ac06-4482-a35d-15d757fd90a3@stanley.mountain>
To: Dan Carpenter <dan.carpenter@linaro.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726416089;
 bh=x20z1uut2Av/47Ndzmv3VV1AWvA7tpBOUumR1sOmFNU=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=GABdhnkGIM3DwqQVfR+ZEerRt0iFtHYWmEM8U7s+D2zbL1hpd/DwMI74vD4fL2Loi
 2t0fFkLsFO4h60pZbTNi4eatqK6yU+Jl/U3o1oUDj9WGOjrYFZmcQWdIe0i0M2VYMp
 iiwFbRN5HL+jTUtJFsIbty64KHxNCdL/u1Pa50Uob8wKWCqrjPvnK4FxHXMpqSLC52
 OZyyDFaGZMBy34lK1U5U2JhAxBcnJu3uAv+D0NeyPBJ08yBoPQEAZ5Fizu3o66fLx7
 ypyTX1DGznA8RV+DxnfOLWRlANfdp25VqulIMDZhNT2dNgWJ0sCURh/f/jbtKCRk3f
 39jhKPhqMiXFA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GABdhnkG
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix a NULL vs IS_ERR()
 check in probe()
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
Cc: jiri@resnulli.us, przemyslaw.kitszel@intel.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 horms@kernel.org, michal.swiatkowski@linux.intel.com, kuba@kernel.org,
 pabeni@redhat.com, piotr.raczynski@intel.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Sat, 14 Sep 2024 12:57:56 +0300 you wrote:
> The ice_allocate_sf() function returns error pointers on error.  It
> doesn't return NULL.  Update the check to match.
> 
> Fixes: 177ef7f1e2a0 ("ice: base subfunction aux driver")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_sf_eth.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Here is the summary with links:
  - [net-next] ice: Fix a NULL vs IS_ERR() check in probe()
    https://git.kernel.org/netdev/net-next/c/472d455e7c6f

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


