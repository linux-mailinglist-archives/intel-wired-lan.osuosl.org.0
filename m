Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BC4B15119
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jul 2025 18:17:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7B5741721;
	Tue, 29 Jul 2025 16:17:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WT9zVFXv_jaT; Tue, 29 Jul 2025 16:17:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40C384171A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753805870;
	bh=qgrdYlAwq9qL1RZu7ItpFhufs6pqCuDanSXXOYAYdSo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uvS/SslmXv8aolcI6IRoYeHH8/GaaxdOsENM6r23s/G4dxmC3BfWz1zkSeiBvYjjJ
	 2WrZUzPzzKjaM6d320BL/j14mH1HZeteDydBWzmVfLkZti0tHg29Tn3EBj7KiBbXSl
	 LRR/6dTRYXZe2+BQ+vjSwZpsA0P8aR/sSVEkL8W0rwRciQMZGtyqIBfM9+OK/04ut7
	 pZRuVg3Aylfaiy9RxooEpB3CqsDvq4TGgNTBqaaUQBuiIOstu+SxTg8p29Ed8jCVhD
	 vOGpJBUiREH4JGY/vbrEbu6OedQ5rHidwxdFQK7y5ltFFPJUh4RNjGPWlNpjm2i7s9
	 kYRMcrRn5GuLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40C384171A;
	Tue, 29 Jul 2025 16:17:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AA89B1BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 16:17:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 902A981199
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 16:17:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LujcO_lT1Anl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jul 2025 16:17:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ADF1F80FD8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADF1F80FD8
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ADF1F80FD8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 16:17:47 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ugn1F-003D8K-SQ; Tue, 29 Jul 2025 18:17:37 +0200
Date: Tue, 29 Jul 2025 18:17:37 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tariq Toukan <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
Message-ID: <9c1c8db9-b283-4097-bb3f-db4a295de2a5@lunn.ch>
References: <20250729102354.771859-1-vadfed@meta.com>
 <982c780a-1ff1-4d79-9104-c61605c7e802@lunn.ch>
 <1a7f0aa0-47ae-4936-9e55-576cdf71f4cc@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1a7f0aa0-47ae-4936-9e55-576cdf71f4cc@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=qgrdYlAwq9qL1RZu7ItpFhufs6pqCuDanSXXOYAYdSo=; b=dw7oxMUbZlO9lcPni/j7pzg5wC
 wUni7kuJEwYeZOUEFeelyVOtzIW3E48cry+bMdNaORw9Od4vnqcKE35HIzabjX32yG3Vwp/NiAxHq
 47m8JjINfqu7Z4uFPllQ/IlvdEeg3NHzEJOWcAkP9fde4IUIQaD+uRFYC+hTInYpJEjw=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=dw7oxMUb
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

On Tue, Jul 29, 2025 at 05:01:06PM +0100, Vadim Fedorenko wrote:
> On 29/07/2025 14:48, Andrew Lunn wrote:
> > > +        name: fec-hist-bin-low
> > > +        type: s32
> > 
> > Signed 32 bit
> > 
> > > +struct ethtool_fec_hist_range {
> > > +	s16 low;
> > 
> > Signed 16 bit.
> > 
> > > +		if (nla_put_u32(skb, ETHTOOL_A_FEC_STAT_FEC_HIST_BIN_LOW,
> > > +				ranges[i].low) ||
> > 
> > Unsigned 32 bit.
> > 
> > Could we have some consistency with the types.
> 
> Yeah, it looks a bit messy. AFAIK, any type of integer less than 32 bits
> will be extended to 32 bits anyway,

sign extended, not just extended. That makes things more fun.

> so I believe it's ok to keep smaller
> memory footprint

 .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c
 .../ethernet/fungible/funeth/funeth_ethtool.c
 .../ethernet/hisilicon/hns3/hns3_ethtool.c   
 drivers/net/ethernet/intel/ice/ice_ethtool.c 
 .../marvell/octeontx2/nic/otx2_ethtool.c     
 .../ethernet/mellanox/mlx5/core/en_ethtool.c 
 drivers/net/ethernet/sfc/ethtool.c           
 drivers/net/ethernet/sfc/siena/ethtool.c

These are all huge drivers, with extensive memory footprint.  How many
bins are we talking about? 5? One per PCS? I suspect the size
difference it deep in the noise.

> for the histogram definition in the driver but still use
> s32 as netlink attr type. I'll change the code to use nla_put_s32()
> to keep sign info.

So bins can have negative low/high values?

	Andrew
