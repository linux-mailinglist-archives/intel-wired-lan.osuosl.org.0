Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6EA7089A0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 22:36:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4168984544;
	Thu, 18 May 2023 20:36:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4168984544
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684442197;
	bh=5l0Mgb7keMiIll5TqxW4OLPyF4hNXKICSepIT3MPnJU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rMcL8txfQHhoN6VChDcKaQLFGPW/S5eZO7JZU10zhscA2Mk074hhCe5sAVKpvR55Z
	 on809ykqoSXTV6WonIhqzc6o9KZnKvKlWZRCyts/JtgUeqxsN0f5/9lGht4pv6YIwJ
	 PHJaFx9/1hibMec/pmgjZnnnx/DPjYXvQxTQZOWXctzUdFLhIGg+2pEzN5gO+vKm1x
	 o6TLXkb8V2eMXNQGSRfrtJta/6wluIPRnpVBdDBSKZPkmZDvF6vlJ2zRoqZ54EYTJy
	 Aga17cH8go4hEOhEJXeWuwlhIWnidaiZxIk9c96j+RUD2PfhugbAMb3PmH6T1UZdIG
	 yo0e7icWlC5fg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M5w6aASlv_c9; Thu, 18 May 2023 20:36:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D8FE84527;
	Thu, 18 May 2023 20:36:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D8FE84527
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66A521BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 20:36:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 459BD8453B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 20:36:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 459BD8453B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Of6HZcdeUMCx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 20:36:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A53E084527
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A53E084527
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 20:36:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9C7C3651FF;
 Thu, 18 May 2023 20:36:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91A18C433D2;
 Thu, 18 May 2023 20:36:28 +0000 (UTC)
Date: Thu, 18 May 2023 13:36:27 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20230518133627.72747418@kernel.org>
In-Reply-To: <0dfa36f1-a847-739e-4557-fc43e2e8c6a7@intel.com>
References: <20230516161841.37138-1-aleksander.lobakin@intel.com>
 <20230516161841.37138-8-aleksander.lobakin@intel.com>
 <20230517211211.1d1bbd0b@kernel.org>
 <9feef136-7ff3-91a4-4198-237b07a91c0c@intel.com>
 <20230518075643.3a242837@kernel.org>
 <0dfa36f1-a847-739e-4557-fc43e2e8c6a7@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1684442189;
 bh=gywY8PWGZ7qWr4FaAteCVzU5t3a/2TpXuUzZ7c29shY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Br1Udi1ECQB0WIbtiCJSMtyrZ0ZMFtG5MnIzFiC83U6jaNH+WQmSY8dQfH8tL7j8Q
 +0jP+65qMGvOW7lyq3wUg7Ji2WecBWrOGFcQSUJZ1GEfYww5ZVUZwDLnUTrwMc6fP2
 gzGp6ZPJpizh1bBzEmvKKr6i6zHmy1H6059ZwMLX/IBnjc5Po3kGx41TypwI5GbomU
 BqSj57ihQq/jIN4FWXdaEKo6fxDk5jRQpfJ0J72FUWhTRv//5QOEh1F9SdnsTgTxOf
 znbu4msMs3yeBVq2ASblyBUHLNTQ209fzRG4urAWuyupdzax7Gzhm5OWwsdeoeGymA
 c2csTSZrjFl/w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Br1Udi1E
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/11] net: page_pool: add
 DMA-sync-for-CPU inline helpers
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Christoph
 Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 18 May 2023 17:41:52 +0200 Alexander Lobakin wrote:
> > Or maybe we can do both? I think that separating types, defines and
> > simple wrappers from helpers should be considered good code hygiene.  
> 
> I'll definitely take a look, I also like the idea of minimalistic and
> lightweight headers.
> page_pool.h and page_pool_drv.h? :D

What I've been doing lately is split like this:

include/net/something.h           (simply includes all other headers)
include/net/something/types.h     (structs, defines, enums)
include/net/something/functions.h (inlines and function declarations)

If that's reasonable -- we should put the helpers under

include/net/page_pool/functions.h ?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
