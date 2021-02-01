Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7A930ACE8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Feb 2021 17:47:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E63A863D9;
	Mon,  1 Feb 2021 16:47:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xtJy-Or8t41d; Mon,  1 Feb 2021 16:47:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D591686443;
	Mon,  1 Feb 2021 16:47:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 524D51BF35D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 16:47:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B98C851FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 16:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JY8qhJr5o8Rr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Feb 2021 16:47:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E670B851AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Feb 2021 16:47:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D8B8E64DA5;
 Mon,  1 Feb 2021 16:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612198069;
 bh=SVKQyodZbdFBbSqD3MZfgh+P6IpacQgIu1UoE/nVkww=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ftvAyXzW6YmC3158pQgLRMNSs7Vgg45mxODcnjMtUD5tO2S94dPqZxdRSCQt7pQXl
 hSYLOk9xWiLm4d29Hg33We5pRAUR8THv6Lp7ZUtQx3qurAN4lWR6I01j2cNen2zKbQ
 zY1nLwWTGomG9MKu+tYdFmMpllZOToKKQGIMd8rRJC7MpVosGLBCPcCAbCXJTQyp/X
 olsR6J+CQP6NRPmFeZEwS9q0pXJTsk6WeUybQwRQOrkAOV9a/YzIMo9aV07TdmGfoH
 WGBMSfpp9rdD0ocCpEieBnUMUzKZvvcFQTnjnFKwc6JQk6KVzEBQat+TwHTGPu2EkT
 bzNceKU57Dlog==
Date: Mon, 1 Feb 2021 08:47:47 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Matt Corallo <linux-wired-list@bluematt.me>
Message-ID: <20210201084747.2cb64c3f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <379d4ef3-02e5-f08a-1b04-21848e11a365@bluematt.me>
References: <20201221222502.1706-1-nick.lowe@gmail.com>
 <379d4ef3-02e5-f08a-1b04-21848e11a365@bluematt.me>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Enable RSS for Intel I211
 Ethernet Controller
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, Nick Lowe <nick.lowe@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, 31 Jan 2021 18:17:11 -0500 Matt Corallo wrote:
> Given this fixes a major (albeit ancient) performance regression, is
> it not a candidate for backport? It landed on Tony's dev-queue branch
> with a Fixes tag but no stable CC.

Tony's tree needs to get fed into net, then net into Linus's tree and
then we can do the backport :(
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
