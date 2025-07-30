Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 073B7B16274
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 16:16:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB2DD83CF4;
	Wed, 30 Jul 2025 14:15:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DizBLY46hpEo; Wed, 30 Jul 2025 14:15:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F32382FD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753884959;
	bh=E9hDhVgXJHwfV9NmtWD61ZbLsyi76zmAdJnE8IHVA3E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eXpufYhuYhS5/heW2n5BFoAkNTfgLs106S88KnrjjA6uD5R4p9XU7AZtUeh6qryH9
	 ol+5MfjZr09A+5CbIHWbUiYGeIH7muyqxsllv/pQDOWePMkU9DU2TIl1USu08my+n2
	 6pthE8lcPLWet9G50vo49DF5s48DQZBUgOazuqM/cXYzgXySSD099FVCe23fHDdKgw
	 LaicHbVJxr0kk+cLKGNIoE3yre0Dpoj92ni55q57WxnQ12ttQbxeY3a+JMBa4wPQja
	 P5CpECxcyg5icqv/oGs5Lnr002q1RLFOSd5EwU1lILJBCXtzcdii2bClFoMA2ExgYN
	 s1WQRGZ7XerXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F32382FD7;
	Wed, 30 Jul 2025 14:15:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A14ED16B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:15:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8258C827DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:15:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p8EbvYKa9wDB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 14:15:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C145382309
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C145382309
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C145382309
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:15:56 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1uh7au-003HjN-0j; Wed, 30 Jul 2025 16:15:48 +0200
Date: Wed, 30 Jul 2025 16:15:47 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Gal Pressman <gal@nvidia.com>
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tariq Toukan <tariqt@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
Message-ID: <9703dd41-e1e6-42d8-a43b-01db7b38d11c@lunn.ch>
References: <20250729102354.771859-1-vadfed@meta.com>
 <041f79a2-5f96-4427-b0e2-6a159fbec84a@nvidia.com>
 <1129bf26-273e-4685-a0b8-ed8b0e4050f3@linux.dev>
 <3e84a20e-87ea-413c-9e9d-950605a55bf6@nvidia.com>
 <8b22e9d3-e4d2-4726-9622-28881b2cd406@linux.dev>
 <2dc1fc35-a906-461b-b8c1-857c240604a3@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2dc1fc35-a906-461b-b8c1-857c240604a3@nvidia.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=E9hDhVgXJHwfV9NmtWD61ZbLsyi76zmAdJnE8IHVA3E=; b=Pw9pGtHb8aTDSTeOr3ahT8l9Xl
 6fO1fTx2y3ciw5ThZ9asqm/d/v3oH86rIZZAs2zata90mpPzAVoi1VZy+PfNW0mXVti2+VFdYGbmu
 36K01u/msab3sxHAAKRT+Ap9vgyHEDZCPJanveGzrNFhSBQkoxUnYz3OJLYXB5KWPwjc=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=Pw9pGtHb
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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

> Or just let the driver fill the netlink attributes directly? Not sure if
> we have precedent for that.

A variant on that exists, for cable testing. For BaseT, you can have
1, 2 or 4 pairs. Hence you need 1, 2 or 4 test results. There are
helpers which a driver can use to add test results. You can call them
as many times as you want.

The thing about cable testing is that it is not standardised in any
way, so vendors get to use there imagination. However, there are only
a limited number of ways a cable can be broken, and you can measure
the distance to the break, but not too much more. So i provided a set
of helpers to add well defined nested attributes, and it is up to user
space to handle whatever it receives, which might or might not include
all pairs, might have the length attribute or not, etc.

However, it seems like this is well defined in the standard, so i
don't think you need such flexibility. A single helper is all that
should be needed to add a bin.

So it does exist, but this does go against the general pattern.

	Andrew

