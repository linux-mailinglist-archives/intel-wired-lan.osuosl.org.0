Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCAD52F5B6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 May 2022 00:34:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35D8641192;
	Fri, 20 May 2022 22:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wl6AadwE8XoV; Fri, 20 May 2022 22:34:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DF0440236;
	Fri, 20 May 2022 22:34:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE5AD1BF33B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 22:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9BA39847C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 22:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3kpPqYVG-MAa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 22:34:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA2A4847BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 22:34:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 69C5FB82E17;
 Fri, 20 May 2022 22:34:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDA45C385A9;
 Fri, 20 May 2022 22:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1653086055;
 bh=DbazlJRizFZJpl6+kV15LEW7YI6oKNVAYZmeWUdZguo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=arEB1a1GgT+3brLyr5OFhU2w2r+fMfAjbHNZJnTGCX5eDRU18HSdgRHRPC2Y6Q/4X
 wd2ctSdCJCnnAtxrieJ4umUHMOIa1taspcKkP2DBXGgTYbIQdrG6kMh8XHdE+EpprV
 erc3pV0Xh2eia9ZCtnjcWmbSRbuKLCcCLV3pvcwxEB0vTl612Be5g04B4HVMUl4q33
 eoKtxhXQsweEprdPyBBiKy6NH4hWR+BdYRoMmk2ybF+9AaLGIwbV+zpYWoZvPMcLjd
 duqhsseg74do/Jx9Z0uZ71gz/KQoeg0QzFxs7PWcQsgi9GIip+b0EFT9LZQGEXH5S1
 Vq/tLaD/M9NHA==
Date: Fri, 20 May 2022 15:34:13 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20220520153413.16c6830b@kernel.org>
In-Reply-To: <20220520011538.1098888-1-vinicius.gomes@intel.com>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 00/11] ethtool: Add
 support for frame preemption
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
Cc: jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 boon.leong.ong@intel.com, xiyou.wangcong@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 19 May 2022 18:15:27 -0700 Vinicius Costa Gomes wrote:
> Changes from v4:
>  - Went back to exposing the per-queue frame preemption bits via
>    ethtool-netlink only, via taprio/mqprio was seen as too much
>    trouble. (Vladimir Oltean)
>  - Fixed documentation and code/patch organization changes (Vladimir
>    Oltean).

First of all - could you please, please, please rev these patches more
than once a year? It's really hard to keep track of the context when
previous version was sent in Jun 2021 :/

I disagree that queue mask belongs in ethtool. It's an attribute of 
a queue and should be attached to a queue. The DCBNL parallel is flawed
IMO because pause generation is Rx, not Tx. There is no Rx queue in
Linux, much less per-prio.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
