Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155A255F54F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 06:39:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D65D405D6;
	Wed, 29 Jun 2022 04:39:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D65D405D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656477593;
	bh=lQsHNrrtbC4AsFanwyNoVrPM4k7pAWpV6/w1Pmq9pFI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ibUA63+Y6MhzlujM/G6JoIXAjtjgOy52PQeI6O916K6bj1CsqFd+0+adpJhX+wCBL
	 F4W/SpGmpHHKJepe6vfaYL3Y2Ao0v/fPYao7dsZE3UaL+831C07JVvjxJCrgx2rqUG
	 XLqzkZF1V4+T3TEE5Lvi0H2Dg3uL/gIlNxbySHPvZ06qHLQk34D/2Uuwenp95CiSCw
	 yUecRgyO7cyVO50kPCxeAk/8iLEXd1rLCyTZYoLS/3VJip+FKLUZoW9kh1RAo8M46M
	 VdhfFXUs9HUEmlQPj2aS2vJvrXhm8dCQRtHAlvke4x05tKLb+UxGSgwk7+QxtsmC+L
	 B/1ryx0MCPppQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b8yYlFthjpIH; Wed, 29 Jun 2022 04:39:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AAC8405EB;
	Wed, 29 Jun 2022 04:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AAC8405EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6512E1BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 04:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3BD4A82BEB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 04:39:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BD4A82BEB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3lQHUznuJTk5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 04:39:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89C2182BE5
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 89C2182BE5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 04:39:46 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3939E60F8F;
 Wed, 29 Jun 2022 04:39:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9279EC34114;
 Wed, 29 Jun 2022 04:39:43 +0000 (UTC)
Date: Tue, 28 Jun 2022 21:39:42 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220628213942.06210e78@kernel.org>
In-Reply-To: <20220628112918.11296-1-marcin.szycik@linux.intel.com>
References: <20220628112918.11296-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1656477584;
 bh=ToYVgHxUr2q1MypuuAGuqsYxH7HBrPqNKx+bYOmEhGM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bWtYWzH8HeicbyY/C9SAoXhsNzZA8O8//neTmPfJCjq+Dih126wTa9ttJaGM/Snic
 8vSXl+jc4M9sb4MGgB6d4ThcTgXvO0EC/FwE5DBvJpdFwdViqKWHnQ/qhYRdhnD/ap
 XoPUvAbRX4WDVdMeEX3GBUoRyFPYPZD5bcCDaBKWz7+ZI0e4kGsQD1fmMfB2JUUMR9
 zaYxEcTd75xKDAYfNnPNn7y7Qr3mRj/c1LjlkKOjk8yD+BFoXBM/IkHta7pN4u9vtu
 x8s2T9H7LLxd2mx47AXKByGAzZQbnTpHPpAZAJtWlMa2eQYm2ml7jSYjD2rsy/H7mU
 hgnhdRWqZCQJw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bWtYWzH8
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v2 0/4] ice: PPPoE
 offload support
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, paulb@nvidia.com,
 edumazet@google.com, boris.sukholitko@broadcom.com, jiri@resnulli.us,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 zhangkaiheb@126.com, pablo@netfilter.org, baowen.zheng@corigine.com,
 komachi.yoshiki@gmail.com, jhs@mojatatu.com, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, netdev@vger.kernel.org, gustavoars@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 28 Jun 2022 13:29:14 +0200 Marcin Szycik wrote:
> Add support for dissecting PPPoE and PPP-specific fields in flow dissector:
> PPPoE session id and PPP protocol type. Add support for those fields in
> tc-flower and support offloading PPPoE. Finally, add support for hardware
> offload of PPPoE packets in switchdev mode in ice driver.
> 
> Example filter:
> tc filter add dev $PF1 ingress protocol ppp_ses prio 1 flower pppoe_sid \
>     1234 ppp_proto ip skip_sw action mirred egress redirect dev $VF1_PR
> 
> Changes in iproute2 are required to use the new fields (will be submitted
> soon).
> 
> ICE COMMS DDP package is required to create a filter in ice.
> 
> Note: currently matching on vlan + PPPoE fields is not supported. Patch [0]
> will add this feature.

Please make sure to CC Guillaume Nault <gnault@redhat.com> 
and PPP folks from MAINTAINERS.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
