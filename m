Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD2E905D70
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 23:09:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82FE441309;
	Wed, 12 Jun 2024 21:09:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m0rAZcNjjUu5; Wed, 12 Jun 2024 21:09:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FC1141373
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718226584;
	bh=kh7se2gWuulaBsIutEyjxwWg50MN3CFzzOM60suOp0I=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ywk+t8Ccnn7fDGFQh804kjf9JAo1HAyQA+dwJ6PfcV7tp7s52BfdhOMZ0j5efRoNO
	 HvA7Q4ao+p8UaqF2Bro763Pp8tDt8fVr2eRkyDXRl/96gUsUsEGFb9ZxZjhOBCVYNn
	 BFV0VMAzgfw4CnaNolTGNmFyJveIhCtOn1BiCSVtQXTQ6YIJHRTztJt6EAOMb3+X3Z
	 Kmx8UBAih72qqJlhhmQzHV9B5g4gx/59pRLjYDqF1PbkIULgwLHc9eU5Nag5DLiZpz
	 EzVE445pIDeqBFHOOqUW3YXc9TIU6vEVW7fp+0wF/ISajSZM4ogitxxoYOnOYSyAzT
	 MqSBG2Nx/E6DA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FC1141373;
	Wed, 12 Jun 2024 21:09:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F6C81BF366
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 21:09:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EEC596076D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 21:09:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7y-bab0A_9jn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 21:09:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0384F6072C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0384F6072C
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0384F6072C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 21:09:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 06CD6CE22D5;
 Wed, 12 Jun 2024 21:09:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5B25C116B1;
 Wed, 12 Jun 2024 21:09:35 +0000 (UTC)
Date: Wed, 12 Jun 2024 14:09:35 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <20240612140935.54981c49@kernel.org>
In-Reply-To: <ZmlGppe04yuGHvPx@lzaremba-mobl.ger.corp.intel.com>
References: <20240610153716.31493-1-larysa.zaremba@intel.com>
 <20240611193837.4ffb2401@kernel.org>
 <ZmlGppe04yuGHvPx@lzaremba-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718226576;
 bh=p/mXOYAvIuYsfLPdV+2dCK5EknA6B/HSfkaHVfEQato=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QlF6deoALi2EBQ2PTzXnxcW3NEVc0zVQd6HRY4xR0lmS9aEe8hLk2Ts1HsmpkWiU5
 2QFRDPyjhEIsalGkDUptUPth0v0OAvQzUHgJ99JOUk43vxydLlE41GbbNm4skSYcrL
 cjx59AuIscyowaGkOG9fFfR8jdc+axYmC2qXLpfOqPj0aUBj32b6SyTpuP/rjzoYgR
 J3W3ba3cpScjDHqBVKeNdYx0jPkX7iFlhbQFOXJaokA7bLqjzyMqnE1vKpkRy4RXhB
 v/ZO5W/iA0H8239PHoU6jp2gn0zIkIYuKG7zHrOA2qJZ3Nje6po+zF0BIhic4FG577
 oWuNO3YPD1ifQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QlF6deoA
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] ice: fix synchronization
 between .ndo_bpf() and reset
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
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, magnus.karlsson@intel.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 12 Jun 2024 08:56:38 +0200 Larysa Zaremba wrote:
> On Tue, Jun 11, 2024 at 07:38:37PM -0700, Jakub Kicinski wrote:
> > On Mon, 10 Jun 2024 17:37:12 +0200 Larysa Zaremba wrote:  
> > > Fix the problems that are triggered by tx_timeout and ice_xdp() calls,
> > > including both pool and program operations.  
> > 
> > Is there really no way for ice to fix the locking? :(
> > The busy loops and trylocks() are not great, and seem like duct tape.
> 
> The locking mechanisms I use here do not look pretty, but if I am not missing 
> anything, the synchronization they provide must be robust.

Robust as in they may be correct here, but you lose lockdep and all
other infra normal mutex would give you.

> A prettier way of protecting the same critical sections would be replacing 
> ICE_CFG_BUSY around ice_vsi_rebuild() with rtnl_lock(), this would eliminate 
> locking code from .ndo_bpf() altogether, ice_rebuild_pending() logic will have 
> to stay.
> 
> At some point I have decided to avoid using rtnl_lock(), if I do not have to. I 
> think this is a goal worth pursuing?

Is the reset for failure recovery, rather than reconfiguration? 
If so netif_device_detach() is generally the best way of avoiding
getting called (I think I mentioned it to someone @intal recently).
