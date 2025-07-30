Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CD7B160DA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 14:59:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5759C613C5;
	Wed, 30 Jul 2025 12:59:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V9Wfoj_EF1hL; Wed, 30 Jul 2025 12:59:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70FFE613BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753880369;
	bh=iADRZ//WWXRXjGs7WIF2HBGPV2WioKL2v6FOCPlk2wo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=91TUy9k2c9APejyrDEbpSnVxXXV+3YvnXzH1snE9YB2/6cfpzQj4/Tcv+wTj+UcPQ
	 nybyynYppSHWl0djcwMhE6hisXvvDfnfNfZTGw9LdZfzYuXBqAjazUcxqTRe+Jq7Zd
	 iEeKC+SXYaCtJa/ujWqXc1EdH0OKkgt2i5I2mFU3gDuENLfkuhOzgMQYcqbdj7OW63
	 X3PYSMdhtNorAoRvywKdLIST7Lxj0F7vm5AYb6WW5zW7HJ43xBQDPJeN8QIhYbk5ba
	 X1ulNH/9D0NUDHrLvrOlYx+aMyTQx//HbV+h38BX2SiVbxxnyufTJurmYIJ1NA/a+b
	 lDxK9/ADsS40g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70FFE613BA;
	Wed, 30 Jul 2025 12:59:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 44B6B186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 12:59:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B41F400AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 12:59:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jer1AxMMuZUM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 12:59:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6CD0F40877
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CD0F40877
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6CD0F40877
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 12:59:26 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1uh6Or-003HN0-9y; Wed, 30 Jul 2025 14:59:17 +0200
Date: Wed, 30 Jul 2025 14:59:17 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Gal Pressman <gal@nvidia.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tariq Toukan <tariqt@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
Message-ID: <459b5f33-ccb2-4392-9833-f67fcedeaead@lunn.ch>
References: <20250729102354.771859-1-vadfed@meta.com>
 <982c780a-1ff1-4d79-9104-c61605c7e802@lunn.ch>
 <1a7f0aa0-47ae-4936-9e55-576cdf71f4cc@linux.dev>
 <9c1c8db9-b283-4097-bb3f-db4a295de2a5@lunn.ch>
 <4270ff14-06cd-4a78-afe7-1aa5f254ebb6@linux.dev>
 <c52af63b-1350-4574-874e-7d6c41bc615d@lunn.ch>
 <424e38be-127d-49d8-98bf-1b4a2075d710@linux.dev>
 <20250729185146.513504e0@kernel.org>
 <b16f0738-9b73-46f4-93ba-edcf84eb961a@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b16f0738-9b73-46f4-93ba-edcf84eb961a@nvidia.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=iADRZ//WWXRXjGs7WIF2HBGPV2WioKL2v6FOCPlk2wo=; b=TMVBu5NEEdA129a6t06UhmSCIZ
 AtodenEp2SxCUhmZHVV/sJ/952omEbbUaRRigTXa1EdkLUL4wwhVZhJ2M59S0S0ybJRWplvXl7S+b
 anB1aEU79TnMXfKK6qEDo2ck2EwnJTAn8Ga3qehVpRzn8JUv2S1A6LQEBpAyjQbzgNT4=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=TMVBu5NE
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

On Wed, Jul 30, 2025 at 08:39:25AM +0300, Gal Pressman wrote:
> On 30/07/2025 4:51, Jakub Kicinski wrote:
> > On Tue, 29 Jul 2025 19:07:59 +0100 Vadim Fedorenko wrote:
> >> On 29/07/2025 18:31, Andrew Lunn wrote:
> >>>> The only one bin will have negative value is the one to signal the end
> >>>> of the list of the bins, which is not actually put into netlink message.
> >>>> It actually better to change spec to have unsigned values, I believe.  
> >>>
> >>> Can any of these NICs send runt packets? Can any send packets without
> >>> an ethernet header and FCS?
> >>>
> >>> Seems to me, the bin (0,0) is meaningless, so can could be considered
> >>> the end marker. You then have unsigned everywhere, keeping it KISS.  
> >>
> >> I had to revisit the 802.3df-2024, and it looks like you are right:
> >> "FEC_codeword_error_bin_i, where i=1 to 15, are optional 32-bit
> >> counters. While align_status is true, for each codeword received with
> >> exactly i correctable 10-bit symbols"
> >>
> >> That means bin (0,0) doesn't exist according to standard, so we can use
> >> it as a marker even though some vendors provide this bin as part of
> >> histogram.
> > 
> > IDK, 0,0 means all symbols were completely correct.
> > It may be useful for calculating bit error rate?
> 
> Exactly. mlx5 will use (0, 0) for sure.

Sorry, i did not spend time to read the standard and issued this was
related to frame length somehow, like the RMON statistics which have
bins for packet length counts.

	Andrew
