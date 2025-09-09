Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A05B49E67
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Sep 2025 03:00:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14227408A3;
	Tue,  9 Sep 2025 01:00:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FrqfNdyFRSN6; Tue,  9 Sep 2025 01:00:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D27F40CAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757379613;
	bh=EpMyaN1uMVaWvnMJ68WCZSDs90BQhe0eYPuoBaOoWYA=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SqmtKnx2V2S0/CywXMngqLawoDrFKWN6UTEF92EsAbm3tiFwy34QOPIYWIq+Dz5i8
	 lcFJvG5zOX8Eqf/EKBb7iVLyQAbGranweZYu55XPPq//xI67c74qmCakTdKNVynyU9
	 BXylkMEj4aMcuJoKF312WU7C1pJqLs6hmIebwYOF6hylQTy8UGMjadXT85P2Nlcq8q
	 xrlYabS0Fw0CMk/XDFLTyzYb3PnTEI1rvaunCLWujDsJtHIWrqB3QRd+UiHEuabBYV
	 60f9tHwJ74jeyJjsBOztLn9jwaI6iDZeIEb4iB/ijR0egsSkaFxc4Qg6Dt8fe6+o2x
	 ZrDHIjruY1Lew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D27F40CAC;
	Tue,  9 Sep 2025 01:00:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E71E0186
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 01:00:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CDE776116F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 01:00:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qgTxLWI2PFr9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Sep 2025 01:00:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2108B6116B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2108B6116B
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2108B6116B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 01:00:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id B0211601B0;
 Tue,  9 Sep 2025 01:00:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 532CDC4CEF1;
 Tue,  9 Sep 2025 01:00:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EAB9D383BF69; Tue,  9 Sep 2025 01:00:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175737961174.101810.14221689011233600458.git-patchwork-notify@kernel.org>
Date: Tue, 09 Sep 2025 01:00:11 +0000
References: <20250905163353.3031910-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20250905163353.3031910-1-alok.a.tiwari@oracle.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757379608;
 bh=Mg5IXjdCk71xFFqEH8eeO7+1a0x/JDcbE45m4ylLwow=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=YfyN31+rlVksq6aBCl9fCKQejeYoiycozBoz5/VRtNFaXxxNVe3fhl2phWQLLi0dN
 av3E31T/jKu7uj4aSMxKDwyr2PiN2mr6jd2ed8fEKbgimTRoFIYcZe8fJw2ib/6iIV
 xXwQT89KwS2+c8EZ3yFSeWiziILHJNVh34k4FAdPSfcC0g7MBIm5TLRz0CqSjjxrr2
 0w0S0Jf/2Ee8aD5C1Xg2/Z+OQO3RE64LW8+9Fb763iD0+j4qrI3ocFLaz7fZpbB3as
 3Wqzd3Np1oJJmXvZofizpRRbfJmCrp0h4dy21i1o7XZ9qnJYcjK/4qosejaQ671GSx
 ebYivSnVTJAdQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=YfyN31+r
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in function
 comment for ixgbe_get_num_per_func()
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

On Fri,  5 Sep 2025 09:33:49 -0700 you wrote:
> Correct a typo in the comment where "PH" was used instead of "PF".
> The function returns the number of resources per PF or 0 if no PFs
> are available.
> 
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Here is the summary with links:
  - [net-next] ixgbe: fix typo in function comment for ixgbe_get_num_per_func()
    https://git.kernel.org/netdev/net-next/c/abcf9f662bc7

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


