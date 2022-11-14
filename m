Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5339627AFC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 11:50:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B11B814A0;
	Mon, 14 Nov 2022 10:50:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B11B814A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668423028;
	bh=UCNzSmJI902WwZG8oq8QTJs76eH7zz/BJ4oqRP+LONM=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qFkoASEB7H89ofF0py8UsHoZSkm2Hp4AloS8nWbwtmc72kJd5jiWishfD8vAndzNQ
	 ViT31Z1AsgXgOljlOxJ7FalnWjal1hPq9NV9l87QyK1Y6++fHIdONncoMTPN35kb1e
	 3jrdvPp9lzCD9cxn/9E7FiwuvpRdPQh00XVA/+q8h6xDDF8oIdC/maNVYLPssDV0xX
	 b+3nnwdQEPizHGj2rdjnh9zsdAwPab5bSyTpKrM5+1K49HvznJQjkF/Bk0I3jBYCNV
	 5SnJGUrTdZgYKvu0+3A4JGO/WmUWm5ydu6RkDxQqY8CDuow/otKp1yAFcs7sdBX1p5
	 qECPg3KA4ic/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MLMOOGKSmSN3; Mon, 14 Nov 2022 10:50:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B7418144F;
	Mon, 14 Nov 2022 10:50:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B7418144F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45C951BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 10:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C89760BEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 10:50:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C89760BEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ob2h6WTC8L_i for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 10:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FCEA607F6
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9FCEA607F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 10:50:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 237E8B80DD7;
 Mon, 14 Nov 2022 10:50:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC28C4347C;
 Mon, 14 Nov 2022 10:50:15 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 58F28E270C2; Mon, 14 Nov 2022 10:50:15 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <166842301536.7392.6054904257341453301.git-patchwork-notify@kernel.org>
Date: Mon, 14 Nov 2022 10:50:15 +0000
References: <20221110130353.3040-1-wojciech.drewek@intel.com>
In-Reply-To: <20221110130353.3040-1-wojciech.drewek@intel.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1668423015;
 bh=X11wx0DILXEm4mgENNlU+bY2jT8UlIax54MU/oc7Prs=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Xj+4dBFOpHPNNQYmyVhbbdIwlHrtA8NUgRvViF3zbR+6hAWl5CS8qi6OL8fbyooB9
 1mZjeggQdx4IeWF53DNG1YcycnlIG6GbiyRnCUp9l81C+nyl9ZOWqdehS324lrNtFl
 L1dzqqH5ARb85dniDyjhXyueE2RPXJtLXwCmcblhQhujYH6mpcZ4y7kmBqUTZhIpBI
 NiPyDl/kbnqy1shUemyKgw11neA2nTowtJ/I2VBwAw5GpV5enhtNp3ydjGxqHcgVCh
 G+K8Bo82SIaYQL99BAmTLf4Cg9VLTOV/GiJBV1rNXWYyfxnX8d6YfzzbJDfmuTz3lF
 VTO05knhzLVmQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Xj+4dBFO
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: virtchnl rss hena
 support
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Thu, 10 Nov 2022 14:03:53 +0100 you wrote:
> From: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>
> 
> Add support for 2 virtchnl msgs:
> VIRTCHNL_OP_SET_RSS_HENA
> VIRTCHNL_OP_GET_RSS_HENA_CAPS
> 
> The first one allows VFs to clear all previously programmed
> RSS configuration and customize it. The second one returns
> the RSS HENA bits allowed by the hardware.
> 
> [...]

Here is the summary with links:
  - [net-next] ice: virtchnl rss hena support
    https://git.kernel.org/netdev/net-next/c/e384cf35bf0c

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
