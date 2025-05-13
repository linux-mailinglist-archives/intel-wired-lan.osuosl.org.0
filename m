Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0C9AB4854
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 02:16:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CEF960F58;
	Tue, 13 May 2025 00:16:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6jReEmzj6_AA; Tue, 13 May 2025 00:16:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC01A60EF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747095416;
	bh=nPnoc2UWJ6r91pUEL10JM0wjzE3YkaLqJPwreT7xLCg=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CRpWsape/aIk7Gm72PQoVYyhnrkVxt5I7JTK7AVqx4ApNLlL6zblXsEj2lyKXJsfg
	 KRmMTYkIkSlT6DHOlYpvV0PUjT+oc2b/1jCJMssrSIjYohbZ5CIbV/M+UOoWcs1Tp2
	 SxFCy0ntrDdzyXU2PAWLsYXScc7YcajFlk0wkxDZ+1XjKjpEboCV1UzzkbGyICJLyP
	 ZrDc84suG5DWQl+0mRjcPDBVbdbqIyn4AL5GKCRMsDAuwRrzK2q2PGBeR1aWgwYtSc
	 6CCaN7E9qSuG/Erz6DSUqpW2Q67nIRDeUx1+62wNypJS8zrjUFjQ18BtOKPnkZf+cr
	 YsReuSH3dzH/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC01A60EF9;
	Tue, 13 May 2025 00:16:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A149154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 00:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B2FF60EF9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 00:16:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RuOWUt-t5Wkb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 00:16:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9A9ED60640
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A9ED60640
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A9ED60640
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 00:16:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 118E349FDE;
 Tue, 13 May 2025 00:16:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89A19C4CEE7;
 Tue, 13 May 2025 00:16:53 +0000 (UTC)
Date: Mon, 12 May 2025 17:16:52 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>, <netdev@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, <intel-wired-lan@lists.osuosl.org>, Andrew
 Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Simon
 Horman" <horms@kernel.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Message-ID: <20250512171652.5bb0b0ee@kernel.org>
In-Reply-To: <6984e594-b5eb-43d7-9783-fca106f79d8a@intel.com>
References: <20250512160036.909434-1-vladimir.oltean@nxp.com>
 <f557afc2-32f5-4758-9c68-dd319ce508ba@intel.com>
 <20250512185346.zxy2nk3kexhqf2px@skbuf>
 <6984e594-b5eb-43d7-9783-fca106f79d8a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747095413;
 bh=0a9pTj1I0zcSvnLmyKAPHKJMfHoygCQQ1nfT1wpHaAI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eB4y8s6GhftRo+ddYXKh8wKqPmBN0NSbZyciPYW3/TFanHbeISvDqT4xdvS6mmA/8
 zvTUNusOStizHghPPvhIGpcAyJjT+V1B5PuDR/fdDtgGEPBhEQP4JnbDS5tsHaGJ+w
 W6nyua+q2SN6tj4ZkOuzRu20LcDKtwmy9Qs+pth3908S4j26KpfxhKCWAe9KrkHxOc
 CyfFDA1UwlGes4pyHhUs4oeKWZAKpeg1nPynsCzX9HBF4NZW6G1oSWZH4InL2pPhs4
 2CvugoGP4QwqQz1c+niyTBTIbNYtvQlAWpc1OW3l5nlKZz3C7zckIVDusWLkpXSQxq
 uONvRMqqPD7ZA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=eB4y8s6G
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 12 May 2025 12:06:56 -0700 Jacob Keller wrote:
> > Ok. I have 3 more Intel conversions pending (igb, ixgbe, i40e), but I've
> > put a stop for today. I assume it's fine to post these to net-next and
> > not to the iwl-next tree, or would you prefer otherwise?  
> 
> I think we typically prefer to go through iwl-next because that lets us
> run a validation test pass. I have no personal objection if the netdev
> maintainers want to take these directly.

The real question is whether you can get these back to the list before
Vladimir is done converting all drivers :) If yes - let's follow the
usual path and take these via iwl. If Vladimir can convert faster than
you can validate then we should take these direct..
