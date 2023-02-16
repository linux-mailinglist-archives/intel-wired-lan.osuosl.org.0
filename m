Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD05699033
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 10:40:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5ECD5611C8;
	Thu, 16 Feb 2023 09:40:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5ECD5611C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676540426;
	bh=c/wtdTVg0QUfuf/KBwKvF5PMMc5BDteh8rOHpemzC5Q=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QWRqEaOWrqSGaM5e7Bt7ddkqmqr0dE8JokkIwAJ15qq7p1svXfraAlV+kOdBVmyfp
	 uiKnpNCkY21fzwDgSEVwNrKKAFN8T50UX5GRi1MKmIdS597aYr0P0akvOJfIj19pHn
	 nOhbyh9VApP6wyvJ0nJcVF61z0orCjVdUJ6H9uWWOrXvY1w94QEs0IP8G+tFE+PG4d
	 WcuB6splrJbbNEsnLNoaBiottv7xWIgbe9RCRlOqONo7BmPdmwEx5Wt8k8jyBPZD65
	 A+dySBAMFWG69gOEupN8DcIvIUMXJU0yPwM5ljxgGjsWF5HEtgyuETLnaYeGq4+Z4X
	 UYqYy5JXoTsog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wkbcbyrQUU83; Thu, 16 Feb 2023 09:40:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5823260742;
	Thu, 16 Feb 2023 09:40:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5823260742
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 941E01BF82D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 09:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CD7382023
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 09:40:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CD7382023
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7o3fFnmWTfpg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 09:40:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 869BE82021
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 869BE82021
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 09:40:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 718DE61F2B;
 Thu, 16 Feb 2023 09:40:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE37C4339B;
 Thu, 16 Feb 2023 09:40:17 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 ABBF8E68D2E; Thu, 16 Feb 2023 09:40:17 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167654041768.15687.3979753210870532003.git-patchwork-notify@kernel.org>
Date: Thu, 16 Feb 2023 09:40:17 +0000
References: <20230214210117.23123-1-jesse.brandeburg@intel.com>
In-Reply-To: <20230214210117.23123-1-jesse.brandeburg@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1676540417;
 bh=Fru8R9LwtPC7ZVQpPPl2ET3Dv7GzCC59kTl/d6Cl7xs=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=Ns32gCzvrLWn3CyRn3D+JxD8pv0x3iAERbSMKR1apzF7qqw+fsA7xlIjNHHzhYru3
 lE7kDDCNddEkAAt+wMSY2xhmRlMqZIfUWbRECWYH1uk5nUrXpnSN9vIW9aZFf6yFTn
 DXjN1JJysHiB1zyiRmy9hlk6EiOyWB8fsmpgQm99fdw+vCraFRCd50Mu18HmsP7kkk
 DDz51qJ75r5KhhfwzP8cj4+f1tNNUBdMeiHsjAmvupTeWk2w7Z6fGuoBM0lBRe7Ip4
 W2sKw2Uh5/61ln6BCJ4Nqk9VnvrlBrdDl5gvCUW8PQ68hIkLVnLyB3a6qmUWvPX+su
 nONjnC8/4HhAw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Ns32gCzv
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 0/2] net/core: commmon
 prints for promisc
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
Cc: netdev@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (master)
by Paolo Abeni <pabeni@redhat.com>:

On Tue, 14 Feb 2023 13:01:15 -0800 you wrote:
> Add a print to the kernel log for allmulticast entry and exit, and
> standardize the print for entry and exit of promiscuous mode.
> 
> These prints are useful to both user and developer and should have the
> triggering driver/bus/device info that netdev_info (optionally) gives.
> 
> Jesse Brandeburg (2):
>   net/core: print message for allmulticast
>   net/core: refactor promiscuous mode message
> 
> [...]

Here is the summary with links:
  - [net-next,v1,1/2] net/core: print message for allmulticast
    https://git.kernel.org/netdev/net-next/c/802dcbd6f30f
  - [net-next,v1,2/2] net/core: refactor promiscuous mode message
    https://git.kernel.org/netdev/net-next/c/3ba0bf47edf9

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
