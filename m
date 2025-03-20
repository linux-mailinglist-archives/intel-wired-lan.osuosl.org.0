Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB92A6A157
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Mar 2025 09:28:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A40966076C;
	Thu, 20 Mar 2025 08:28:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6E9FiChROjTx; Thu, 20 Mar 2025 08:28:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B29B6070D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742459335;
	bh=Ono7OgBysxHAOX4y7j7li1sT4U3HyMQhunUJbxOvWeU=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZdiOwjUndPk8MilV1uTTegSLU41nHI/KiMX4hB9mu3ucBV+fqwTaimeLlGLi8UAFR
	 qipXGAh3iBDCXaweovF6+um1lh9aGUX9qgv4Up4lT3sEkdzZb2PJPTG4tAePznS1+t
	 +8zaTKUYGAnfxiY154fJhTaZylMUgK5aA082NhJwYOTSQ9SqSsey39I2D5jSQC2dPZ
	 8uv8r9Ct7pTdfxU8WeddEpS6EzSzLHZm0LsjS/JVfN4yE07tVfNUxZ8v07uFu9noG4
	 l3+NQa3EzQ3dWbkoWCk3OfN817v81EQt2BSuaDltFH4f57gMk+Hf/tesvqL+/z5rN6
	 jrchN85kQwSGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B29B6070D;
	Thu, 20 Mar 2025 08:28:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 144571A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 08:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B77640623
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 08:28:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kpeuw_JSv5z0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Mar 2025 08:28:52 +0000 (UTC)
X-Greylist: delayed 532 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 20 Mar 2025 08:28:52 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 137CF405F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 137CF405F2
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 137CF405F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 08:28:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9AF1F43C40;
 Thu, 20 Mar 2025 08:19:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E95F0C4CEDD;
 Thu, 20 Mar 2025 08:19:59 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EB4863806654; Thu, 20 Mar 2025 08:20:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <174245883577.1343567.2281095132838177451.git-patchwork-notify@kernel.org>
Date: Thu, 20 Mar 2025 08:20:35 +0000
References: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
In-Reply-To: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, richardcochran@gmail.com,
 kernel.hbk@gmail.com, paul.barker.ct@bp.renesas.com,
 niklas.soderlund@ragnatech.se, bryan.whitehead@microchip.com,
 UNGLinuxDriver@microchip.com, florian.fainelli@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, andrew@lunn.ch, hkallweit1@gmail.com,
 linux@armlinux.org.uk, jonathan.lemon@gmail.com, l@ssejohnsen.me,
 vadim.fedorenko@linux.dev, michal.swiatkowski@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1742458800;
 bh=L9bS85dMXhR005G+CyHV4zLNHJwm5OXSjWXaoXSNV6c=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=deEnrTxt+byCfMrdbqUE3JJUt/DoAyx8nGVpM+2GxsKOpIFpuiIkhS3K4LH1PVZBV
 XARlk6KdZNLR4FRgi82bKIvWY18ex3mpS7/Bgzzm4I/izn3ApdOZBpnyL5dJo+lEf6
 xhl+4B6ZyVk5tvUx8vuM3tWn+j3Emvv49ZJc+R4R11Nw8JRK8l67ITd3fnnMUPA5Qn
 vtH3XfzNnmegi/0atWYQd2RWysd7z8rIXvvzIX8HpcI47cKHs5vVL+823yVLAu29cy
 CXi/nZ4LYw/K6PrHJxyeCpKMALg+QM9Jw8fLtRX87xbtB8/5JjIKX2u0VeyLa+WKws
 hZpRyS62mDWfA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=deEnrTxt
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/5] net: ptp: fix egregious
 supported flag checks
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

This series was applied to netdev/net-next.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Wed, 12 Mar 2025 15:15:49 -0700 you wrote:
> In preparation for adding .supported_extts_flags and
> .supported_perout_flags to the ptp_clock_info structure, fix a couple of
> places where drivers get existing flag gets grossly incorrect.
> 
> The igb driver claims 82580 supports strictly validating PTP_RISING_EDGE
> and PTP_FALLING_EDGE, but doesn't actually check the flags. Fix the driver
> to require that the request match both edges, as this is implied by the
> datasheet description.
> 
> [...]

Here is the summary with links:
  - [net,v2,1/5] igb: reject invalid external timestamp requests for 82580-based HW
    https://git.kernel.org/netdev/net-next/c/5eada2aabf13
  - [net,v2,2/5] renesas: reject PTP_STRICT_FLAGS as unsupported
    https://git.kernel.org/netdev/net-next/c/51d58c0c7921
  - [net,v2,3/5] net: lan743x: reject unsupported external timestamp requests
    https://git.kernel.org/netdev/net-next/c/c0b4ddd30871
  - [net,v2,4/5] broadcom: fix supported flag check in periodic output function
    https://git.kernel.org/netdev/net-next/c/af2b428f7992
  - [net,v2,5/5] ptp: ocp: reject unsupported periodic output flags
    https://git.kernel.org/netdev/net-next/c/8dcfc910a81d

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


