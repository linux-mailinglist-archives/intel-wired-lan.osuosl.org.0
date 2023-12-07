Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AC5808728
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 12:58:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42A3583A77;
	Thu,  7 Dec 2023 11:58:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42A3583A77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701950288;
	bh=KoYJ/+nyRvC3zDAl8KzMGLlEuTvtuHodPFcQ0LFM600=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zvwRcPu84qssGadWgHI1n9r/RU1WVs3xcB57p8yjcbDSNoHQ5r5dGDf+pEpIL/EMq
	 yonEGFVDPgOGWGYB60KM+IVfFo8sWIsXNwUywO/mb/pJ+dbkl6RSpWj5lVBKGlpZzD
	 tj5cMWEXQ5uMDVMleR++HceY3sgOqgD4324gm1sv5Ak2fvhMwgNN2lYsWg7bCSaSbM
	 bt3BJ9BJ0XJL+7gmweDdwJRfXzMoqypJ+tyG7ntnngNexaM1ebV5PjTfW152hLBnyj
	 7FVPqWAsX2D2uJupAkH5/5TlogoSlzpje5xUe4D8jtDF6uEAUOTFkQmV56KvjWoQY5
	 03i90tjmbyNZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Filb9urALof; Thu,  7 Dec 2023 11:58:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B7628352B;
	Thu,  7 Dec 2023 11:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B7628352B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 073E81BF398
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 11:58:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6D8540407
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 11:58:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6D8540407
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LRBcFpoO7pXs for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 11:58:00 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43181402F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 11:58:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43181402F6
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 383F2B826C5;
 Thu,  7 Dec 2023 11:57:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61DB6C433C8;
 Thu,  7 Dec 2023 11:57:54 +0000 (UTC)
Date: Thu, 7 Dec 2023 11:57:51 +0000
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20231207115751.GG50400@kernel.org>
References: <20231201143821.1091005-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231201143821.1091005-1-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701950276;
 bh=ZadLVg2xVw24qHq11LzSKHwhUbpz7A2+VUUzqsY+gLI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g4JRmYPDzmJcuIpWDoFr/AgUuC/LimYiBWcKw4SKa/rIIAtvW5457js1EIRnSAKp9
 oiaGYfk70CtpyYTBw7P9x+5nAzh8+51Ivyiep0AfKrmW2Ww+vIRA8i6a0rtKk3weII
 o+wouwc0EAcKUT2uFS0BbXEm0oLi8+yTfqEBSPcHVKvp0TBzTatvJnyQkTFJsHDZbF
 xHeb6fw4PLDs0XjSz73zpfC5U4skvJPyA4sKyyFciJECWNNLeAmY2NZ28yHa/wwV2j
 gky0Np8hxDExwZzEjtV/D0cvI8PYHhAobsq0ipFtKJxLs4lGyDG49/GfnvnDYedEEg
 VsCQ/2YvkuYgw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=g4JRmYPD
Subject: Re: [Intel-wired-lan] [PATCH iwl] idpf: fix corrupted frames and
 skb leaks in singleq mode
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 01, 2023 at 03:38:21PM +0100, Alexander Lobakin wrote:
> idpf_ring::skb serves only for keeping an incomplete frame between
> several NAPI Rx polling cycles, as one cycle may end up before
> processing the end of packet descriptor. The pointer is taken from
> the ring onto the stack before entering the loop and gets written
> there after the loop exits. When inside the loop, only the onstack
> pointer is used.
> For some reason, the logics is broken in the singleq mode, where the
> pointer is taken from the ring each iteration. This means that if a
> frame got fragmented into several descriptors, each fragment will have
> its own skb, but only the last one will be passed up the stack
> (containing garbage), leaving the rest leaked.
> Just don't touch the ring skb field inside the polling loop, letting
> the onstack skb pointer work as expected: build a new skb if it's the
> first frame descriptor and attach a frag otherwise.
> 
> Fixes: a5ab9ee0df0b ("idpf: add singleq start_xmit and napi poll")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
