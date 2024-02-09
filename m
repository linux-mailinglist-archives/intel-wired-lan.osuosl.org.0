Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B30884FB25
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 18:38:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2764341D94;
	Fri,  9 Feb 2024 17:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PlWS8PrK5M8P; Fri,  9 Feb 2024 17:38:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA70941DAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707500328;
	bh=DG2WHeJau3ZS6nua2SHtQcUTlmHlZBdMsHr/53YpF2Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zXcCl6HpnPdjfrqF3cJwoYoG6FdgFFxa9E686OhD3fQPloIjV7CnNyLhHLEcTE0zJ
	 LJ/sI8LDYg/SvpJo1w7VKqNyOfunJ60mTswUfpkOR2yqibE4UANv0lg/5hkZpJpR6q
	 Ey9D8Vr7TllaN1sTSHQ7GGAyKCEFVDTVLy8lQORA/u1rg1UbA/WQQK6WRuBxPxXClR
	 AgfXlQKOEMoou5b+DXi/IWwKMa5IjELgFE84b7oDNNi8q0L3IvntfMFf4ZHfNoF2MP
	 aucvin7i0ajVGfWMGo/X/ewsfOwEBd8+MMT/HNKQd9LvEtZn51Q+TeScV8Oofw8ePe
	 BqN5sr9zSIJKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA70941DAF;
	Fri,  9 Feb 2024 17:38:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 61A4F1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4CF654256B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QecPe7HiYesg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 17:38:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 81E0342514
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81E0342514
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 81E0342514
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 17:38:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A51FA62097;
 Fri,  9 Feb 2024 17:38:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 712F2C433F1;
 Fri,  9 Feb 2024 17:38:41 +0000 (UTC)
Date: Fri, 9 Feb 2024 17:38:38 +0000
From: Simon Horman <horms@kernel.org>
To: Takeru Hayasaka <hayatake396@gmail.com>
Message-ID: <20240209173838.GH1533412@kernel.org>
References: <20240131134621.1017530-1-hayatake396@gmail.com>
 <20240131131258.47c05b7e@kernel.org>
 <CADFiAc+y_SXGtVqZkLoiWw-YBArMovMkuWw3X596QDwEtdBJ2g@mail.gmail.com>
 <CADFiAcK_XjLNjzZuF+OZDWjZA4tFB8VgeYXVJHR8+N3XryGxwA@mail.gmail.com>
 <20240208072351.3a806dda@kernel.org>
 <CADFiAc+i9i29SL0PM8gzmDG6o=ARS6fSrTPKNyqh9RLmWWB78A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADFiAc+i9i29SL0PM8gzmDG6o=ARS6fSrTPKNyqh9RLmWWB78A@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1707500324;
 bh=HravDwgHEdCMpMGa6CrqloF7sVySm2L8D8y1O2Do7lc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kerfjuN5jyjh7Iq+1DOcDabahKbMAmoRDLrtb30fs4WS1zuswq4yoePYrSk7sLA5B
 ABE3qeI81FOY0b3nQF3bBfYoTzpxXpxvOvvVZZY+tKW3Iqcb8FEurBWf8UOkQqkpsF
 hvUcYu6Al9JHWShocndQW1QrIOYHqdhJ22jeSiZKaw/3hvAnljZJVrgVBd8SX6K6YD
 RK+e0HrHMlpB1/dNfmnLLHbm2mKCcjaj1xBakrPbywxz1VQO0UTm+ZTBgtrKnSvQR2
 Jv/pTzO/mhp5gmKijD4th/XDi81p8TaNWTeXTLjRptBuYqz0jb0yTQWdwi80RAKVH4
 4AnarJn9OZzbg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kerfjuN5
Subject: Re: [Intel-wired-lan] [PATCH net-next v6] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: Jonathan Corbet <corbet@lwn.net>, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 laforge@gnumonks.org, linux-kernel@vger.kernel.org, vladimir.oltean@nxp.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 09, 2024 at 02:25:50AM +0900, Takeru Hayasaka wrote:
> Hi Jakub-san
> 
> Thank you for your reply.
> 
> > We're expecting a v7 with the patch split into two.
> 
> I see, I had not informed you that we have released v7. My apologies.
> The split patch for v7 has already been submitted. Could you please
> check this link?
> https://patchwork.kernel.org/project/netdevbpf/patch/20240201033310.1028154-1-hayatake396@gmail.com/
> https://patchwork.kernel.org/project/netdevbpf/patch/20240201033310.1028154-2-hayatake396@gmail.com/

Hi Hayasaka-san,

It appears that the series at the link above has been marked as
"Changes Requested" in patchwork. Although I am unsure why.

I would suggest reposting it, say with the tags supplied by Marcin Szycik
as [PATCH net-next v8].

Also, please don't top-post on the Kernel MLs [1]

[1] https://www.kernel.org/doc/html/latest/process/submitting-patches.html#use-trimmed-interleaved-replies-in-email-discussions
