Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D60C495FF1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 04:30:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E25480E85;
	Tue, 27 Aug 2024 02:30:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i-IbRL3pVFbW; Tue, 27 Aug 2024 02:30:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1463580E86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724725835;
	bh=bTzB6wcRmc1Vn9Bh6F58aJ+FMAKMHjA6UG6kHf2vF9Y=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DV+YPml9U3pBAevNKclOfZFOxwKcl8hlZNaYJjFIqxeQDzbDGKbZF8fpJu6px+ca2
	 FDQAr/fvXT2Grmj5sFc4FZ/1DtZeCgACR593vG7llEqrXOK6Kgf7KIK5kzZdwPsI1C
	 DCkZLTB64SSxp0GhGZd1ybjUutbj+jGGpZxq1Vj6Yh+JP9evqRlhFoXoSN/1QPLWr0
	 KZ+V2GoATEtaVEQOq9M6LSXE5pqqhqc4z+wlODdBqh0ja3OwLdwjukmOn2CdS/2JjT
	 kKB6BX8vZH/rLNZdGq3K0gjJ3eXjZg4jcFCLBPS4zpyUW3OAFk7/YM+pMmMQ9UD3F+
	 3BfJJVhLI8b8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1463580E86;
	Tue, 27 Aug 2024 02:30:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D10071BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 02:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD13180E78
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 02:30:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eXMZcfcBqvU7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 02:30:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=patchwork-bot+netdevbpf@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CA21680E75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA21680E75
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA21680E75
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 02:30:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 64226A40A73;
 Tue, 27 Aug 2024 02:30:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA728C8B7A4;
 Tue, 27 Aug 2024 02:30:30 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 33E523806660; Tue, 27 Aug 2024 02:30:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <172472583073.186086.6173747037683312916.git-patchwork-notify@kernel.org>
Date: Tue, 27 Aug 2024 02:30:30 +0000
References: <20240822222513.255179-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20240822222513.255179-1-arkadiusz.kubalewski@intel.com>
To: Kubalewski@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org,
 Arkadiusz <arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724725831;
 bh=96aPBM1prgnl1Trwv1kDI7urETSSeh6JFCVzKGEBwOE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=UID67CP7WsLrT3RsC/iK+4OOP992y+UqZ2MwdiSGm7zt9jaKcN/cy4qWxVGCwcdB0
 0nzrTyZL2kgZBt0lVURgJps+vzb4YGdpDdcYBNL9ClpPplKK2xJYSuTgy/pSiMIlwl
 ZPLEndwMnzmrMJSBkalIkKAPECxF1FgerWTOp8ZlU3go3W/QgaH87N5S22U8st8SXo
 u698FDFS/GvTzTKGvkilRj0wmnw682ujMP52OhBHZOs3srGxRBJYdq+6N0DonplqUi
 rfnkPwae+4dm3ZqRUT+DTBOYeX/87zAGZ7CkFqEkwKin+39gJ1RGaL5sZVFnesaT5W
 xd4+8BFiD/5hQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=UID67CP7
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/2] Add Embedded SYNC
 feature for a dpll's pin
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
Cc: jiri@resnulli.us, corbet@lwn.net, netdev@vger.kernel.org,
 donald.hunter@gmail.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, przemyslaw.kitszel@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 vadim.fedorenko@linux.dev, pabeni@redhat.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Fri, 23 Aug 2024 00:25:11 +0200 you wrote:
> Introduce and allow DPLL subsystem users to get/set capabilities of
> Embedded SYNC on a dpll's pin.
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> 
> Arkadiusz Kubalewski (2):
>   dpll: add Embedded SYNC feature for a pin
>   ice: add callbacks for Embedded SYNC enablement on dpll pins
> 
> [...]

Here is the summary with links:
  - [net-next,v3,1/2] dpll: add Embedded SYNC feature for a pin
    https://git.kernel.org/netdev/net-next/c/cda1fba15cb2
  - [net-next,v3,2/2] ice: add callbacks for Embedded SYNC enablement on dpll pins
    https://git.kernel.org/netdev/net-next/c/87abc5666ab7

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


