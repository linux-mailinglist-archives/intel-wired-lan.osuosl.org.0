Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 318D77FD964
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 15:29:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64748613C8;
	Wed, 29 Nov 2023 14:29:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64748613C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701268171;
	bh=Vyh/gLq0BEvC2hyMS2gIg+blnQq90/sk1NqeMAmB/tU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5AXpbWXhdWQxsvHNuktNm5e6T2BfKsLP8OVUB+QZaE9TXlvo2VeYg7lCQhF0BO/R6
	 IXoXtpmtB3ZVPPCtznmZVcG6TDLxsKLqiuO2SmgPss9WI0gwvD4Y/lGw/fOYy15bRJ
	 bu3azlylix46oan3DCB1x4h0xZTMpZS1Qhc6k0t0iA0wYy2+M3hW/VCnR4hc7/QOII
	 UVl5mBTpHKHZ5HzYAcbxv//eVzC4KAJuPMRNlFuQ/nsP9Q7AbgF2pS03TOR2pe5lSO
	 42L5riOu817Q74lsbMTA6+b5amHKU4y28l7EimahXJoYIlN/xWasDj9434uGWKUMaD
	 IMhbhZBVc5Nag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EtiPHfy2sqtu; Wed, 29 Nov 2023 14:29:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5939560ADC;
	Wed, 29 Nov 2023 14:29:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5939560ADC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09C6A1BF283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 14:29:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D53A5418A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 14:29:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D53A5418A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LinfOuOg_wa5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 14:29:23 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B9054030C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 14:29:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B9054030C
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id C8289CE1F13;
 Wed, 29 Nov 2023 14:29:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 382C7C433C9;
 Wed, 29 Nov 2023 14:29:15 +0000 (UTC)
Date: Wed, 29 Nov 2023 06:29:14 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20231129062914.0f895d1c@kernel.org>
In-Reply-To: <e43fc483-3d9c-4ca0-a976-f89226266112@intel.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <20231124154732.1623518-14-aleksander.lobakin@intel.com>
 <e43fc483-3d9c-4ca0-a976-f89226266112@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701268155;
 bh=TeXzHb7rxKXQGXucrw/Ty/eqYEy5dqm0uu/JKO7RDCs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=i3O7voHEX9nwvQnJXx+x/l0uWqkVQvdAG5q4p3bznL6GqphqcrWs3xFHrQ8QI/oPi
 lNmWjgwa9JSdXyIuoBuXqerZJuECGpkCKl+ZH+M4+4WdrDS6HtsTg176EV4ShNUCW5
 74vO/32ri773Hg8T1+F7X62xkD1hHHTvOHaVEMEz+B5Pu2Lc94AamDXFejMn5DgGVK
 74kTTH2DyszHJFugM9TQ9/a5NIFzY+8wnrbrtwAXkgCspTtViqeF+Mf1HxL2Bs4rzi
 K1XKEAxa6HRKtIqP31DRapZ0z0qUqTCdIRHAVe/eJoY6N8ZxHzb/zX810zld/zkWC3
 feN0/SCLMbyRw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=i3O7voHE
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 13/14] libie: add
 per-queue Page Pool stats
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Yunsheng Lin <linyunsheng@huawei.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David
 Christensen <drc@linux.vnet.ibm.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 29 Nov 2023 14:40:33 +0100 Alexander Lobakin wrote:
> > Expand the libie generic per-queue stats with the generic Page Pool
> > stats provided by the API itself, when CONFIG_PAGE_POOL_STATS is
> > enabled. When it's not, there'll be no such fields in the stats
> > structure, so no space wasted.  
> 
> Do I get it correctly that after Page Pool Netlink introspection was
> merged, this commit makes no sense and we shouln't add PP stats to the
> drivers private ones?

Yes, 100%.

FWIW I am aware that better tooling would be good so non-developers
could access to the PP Netlink :(  I'm thinking we should clean up 
YNL lib packaging a little and try to convince iproute2 maintainers 
to accept simple CLI built on top of it.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
