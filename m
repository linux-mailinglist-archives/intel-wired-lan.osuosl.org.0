Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A159B770CE6
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Aug 2023 03:10:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C172080E44;
	Sat,  5 Aug 2023 01:10:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C172080E44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691197834;
	bh=IBvGkUnbWWhU7Ya1vWeA4R0dUpnKG1xD1iNJO1c/TZ4=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FbrzXkgyQxVoI+n0D/Vw2fLDgm7s4J4Oxx1CGP4EfIlyYJp7AF8SN+evObQH6OiwF
	 KjG6iKRLDhNGQq67VwxXJQSVkxnmp0rR3fBJNL/etZetDMyyYBHzlGf6EvHL5DPt0w
	 Fk/puXTxY9bx/XdkOx0dZsN2E8p2qgf4zpqTnF+DUTsU6EUMHQDdVvj+OmDetyNZiJ
	 cpSyQnkYQPieWLfRJC2H3FGifqxEGTUhfIyktHLNZcLi6jvWiTHHynz9h1oD6nLHfN
	 NyAqJgDysPvezBsCFWrXRjcdwHSe3EM6qjqDW/IrlsaZ016fJISVYuVrcu0SlanHsy
	 d9zyCFc4VpHwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 07GvkQwGUZE7; Sat,  5 Aug 2023 01:10:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0CB380EAC;
	Sat,  5 Aug 2023 01:10:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0CB380EAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1CA101BF616
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 01:10:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 57B214023B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 01:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57B214023B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qAvXXGZFecFt for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Aug 2023 01:10:25 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BB8F4013F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 01:10:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BB8F4013F
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4EC666218F;
 Sat,  5 Aug 2023 01:10:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AB36C433CD;
 Sat,  5 Aug 2023 01:10:23 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 6941CC595C3; Sat,  5 Aug 2023 01:10:23 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169119782342.10230.7904066616600128243.git-patchwork-notify@kernel.org>
Date: Sat, 05 Aug 2023 01:10:23 +0000
References: <20230803141904.15316-1-yuehaibing@huawei.com>
In-Reply-To: <20230803141904.15316-1-yuehaibing@huawei.com>
To: Yue Haibing <yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691197823;
 bh=Hqo3DsAo56JepYRA2MoZ45lxliYcx61bW+6Dmqy7gnY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=SRcDk8dPmDomNVARvwytXKhaa0dKgEPgfTHsas1IhMKuGBisBmKgvTNApM1QWFP0p
 IWpn9tfjpQlaBBOiney5TNq9pd5kHYgfT10Bmb/nMnivLL6Vi2Q+tlJbWX8RvTt+zo
 N92Yk85D/9tS/tIr6lzrhZIi4MYnhYTgtLhJhysfqYyuaxsbH0L9q3IACatxijBW3N
 sO3jQDann/l5e1ZnQZmKrvOxFfXO0ra35z4fS7O/FnVgUkSJjI7+z+po1VWDq1And2
 EK5qAjau/fm9xl6NuqlZsxgN26ZO0nfVMrgYIdsdl1/xXZgK02oyZHg5bhU43IYu7F
 MS88+O45M1Oqw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SRcDk8dP
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbevf: Remove unused
 function declarations
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 3 Aug 2023 22:19:04 +0800 you wrote:
> ixgbe_napi_add_all()/ixgbe_napi_del_all() are declared but never implemented in
> commit 92915f71201b ("ixgbevf: Driver main and ethool interface module and main header")
> 
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf.h | 3 ---
>  1 file changed, 3 deletions(-)

Here is the summary with links:
  - [net-next] ixgbevf: Remove unused function declarations
    https://git.kernel.org/netdev/net-next/c/f5f2d9bb52f9

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
