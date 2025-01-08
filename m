Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2C9A05022
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2025 03:10:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88287403EB;
	Wed,  8 Jan 2025 02:10:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dVwDI_C6DGwE; Wed,  8 Jan 2025 02:10:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F02F403F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736302222;
	bh=sdv+sn+NaOxBl9CReFMVHwFY+9qBEOR7ZgCXUmsXupo=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=03W7fn8KJ3Iec8rUpx6OCPqZ64kKjVoS2V2MnQXkIplVkjMGEozQOy+cbynNLpUe3
	 uBpo8GVKfJ4/mlrDJ8fD/JPMzuJZB6YH8wt5rWHHC65bMf4PmOadMMHNfOl/87GePd
	 RIKg0S7NybMHH1s6xITWoHDtrnMgDs2gOGFlNzXFhC3l4lMqpOZSS1Ws+mI3G3tzZN
	 P2xFJ6DRLPeZpsa6iRBo48HkM3x92E7FpJP8W11AEZM9biQlzA7ArkhEeAn6LsU/Vs
	 Gc0BXGXaVVpXJ/VhAT1nOaAwWNOkDehZmJXe7M89GofAd0G8atvnHC4lkr/enGcec8
	 OsJwVd0vogakg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F02F403F1;
	Wed,  8 Jan 2025 02:10:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 355B96B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 02:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1DF776078A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 02:10:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8EGBqmuRdIJX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jan 2025 02:10:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4541E60643
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4541E60643
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4541E60643
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jan 2025 02:10:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id E3924A42067;
 Wed,  8 Jan 2025 02:08:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43024C4CED6;
 Wed,  8 Jan 2025 02:10:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 710DC380A97E; Wed,  8 Jan 2025 02:10:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <173630223899.165659.5290302899760343345.git-patchwork-notify@kernel.org>
Date: Wed, 08 Jan 2025 02:10:38 +0000
References: <20250105122847.27341-1-linux@treblig.org>
In-Reply-To: <20250105122847.27341-1-linux@treblig.org>
To: Dr. David Alan Gilbert <linux@treblig.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, kys@microsoft.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736302218;
 bh=zbi4gjTmy/ktub0hEOpA9+DNfAjJQzy3E1tq2ui7t7c=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=GHm0j8JIggSCnDSBqKUtTKKmhqP4mQRlamKSaxcJZUGdMx25bOb1gY+xf1FvmNr57
 TB5TRBbDwesvIpTpfVOd2KP+poonS/WcIj7UZ2IQy8JJenSyzaTf/tOmI1dta9NsJz
 t/RuGyVqPhHVJKokH7fTUG9e7EIXM/Bl5TBnknOtbKyHpx/FJnlU2qEbmJhzS8dYBy
 7MMVjrq+Grl8LbOHmzKUbpmJLbwewDy/jsbFRyr+bvC33ckTaBrfBnCGxkZXqkNZZo
 Zy16RnpDsr6i4UufdoUc25F5iC8nd8FoE/2LASNDPSwTNrPeMIrLQ36vc/qkf/hd4p
 Pi/Hz4QU92iOw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GHm0j8JI
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbevf: Remove unused
 ixgbevf_hv_mbx_ops
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

On Sun,  5 Jan 2025 12:28:47 +0000 you wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> The const struct ixgbevf_hv_mbx_ops was added in 2016 as part of
> commit c6d45171d706 ("ixgbevf: Support Windows hosts (Hyper-V)")
> 
> but has remained unused.
> 
> [...]

Here is the summary with links:
  - [net-next,v2] ixgbevf: Remove unused ixgbevf_hv_mbx_ops
    https://git.kernel.org/netdev/net-next/c/4ce1aeece911

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


