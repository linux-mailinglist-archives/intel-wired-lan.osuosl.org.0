Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F9BB14F13
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jul 2025 16:12:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9606A811A4;
	Tue, 29 Jul 2025 14:12:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0kvzX-QQ1U_D; Tue, 29 Jul 2025 14:12:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA9E78130C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753798321;
	bh=hGDwxRqu2TQfpwBCrX29WUZRJA0tBu5dVT8LhjMjgZo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bbzsjrkWfc8k3HNJ9bucGbeBibDbCatUpXIpeFzm0YHoEyz81kkm1zIcHd8ZH4PMU
	 Ve/YihbsowffEEgVOpuf0Ni5p1LWQ1I+a8vb5jyiGaU//CS5aGYBIc42f9CZ2wt3yu
	 gnAnUaykmCFRmB6Zk8OuT2riO+fsaT0YE9nXHunsuTJOWLA4+rjIyrWp0RWe85vfVz
	 Yyph2fZcX6h67ivZHAHbbMTu3eawT6yUSbEtMSgMUAwtYRY/oUVD4jUksl+rsPFrx1
	 6F88NcyCDNPr9fpZIRPeHgtu1/FTVYu8Co5cx4OdFSNyStyers92upX8gX8OJZ18Em
	 Cj6Gzntgm1c8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA9E78130C;
	Tue, 29 Jul 2025 14:12:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9832BD94
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 14:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E6F640DBB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 14:11:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gMHQbyJwX-nl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jul 2025 14:11:57 +0000 (UTC)
X-Greylist: delayed 1393 seconds by postgrey-1.37 at util1-new.osuosl.org;
 Tue, 29 Jul 2025 14:11:57 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5B89140C3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B89140C3E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5B89140C3E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 14:11:57 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ugkh0-003CKK-56; Tue, 29 Jul 2025 15:48:34 +0200
Date: Tue, 29 Jul 2025 15:48:34 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Vadim Fedorenko <vadfed@meta.com>
Cc: Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tariq Toukan <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <982c780a-1ff1-4d79-9104-c61605c7e802@lunn.ch>
References: <20250729102354.771859-1-vadfed@meta.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250729102354.771859-1-vadfed@meta.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=hGDwxRqu2TQfpwBCrX29WUZRJA0tBu5dVT8LhjMjgZo=; b=ZnEcNsLQzbJb8K9hzFKYK3h+dx
 XGq6q0s2eFNfYn+DRd2HIJIRxe9LjSESrva4iga7P4+pvF0cCAUHKXDG0nMAWyGvuKogWVNaT7brc
 VlwJ2P2HTG1NZvX34+CpgdXKaquUKMEzuZGJfdU5ax0zYcMi79FyciWn9ZIYb2Ypjt30=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=ZnEcNsLQ
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

> +        name: fec-hist-bin-low
> +        type: s32

Signed 32 bit

> +struct ethtool_fec_hist_range {
> +	s16 low;

Signed 16 bit.

> +		if (nla_put_u32(skb, ETHTOOL_A_FEC_STAT_FEC_HIST_BIN_LOW,
> +				ranges[i].low) ||

Unsigned 32 bit.

Could we have some consistency with the types.

	Andrew
