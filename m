Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C20BAAE8AEC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 19:01:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1957E417AF;
	Wed, 25 Jun 2025 17:01:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FYZqS-SWO6mz; Wed, 25 Jun 2025 17:00:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F79E41241
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750870859;
	bh=IVUa4HYHkFsWbax1oxxhfJb8ticqVHfLg/sIEtL9ofA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yYUAXEpxhpXGjCV8amUArAXUIkjM5keg7PqEBQinLSdYVXJ5s6+mv9l55wb7RE0+C
	 PNKc0RZq0oKVZ/2aW6u2DTIfZzkpb/t1e7Vh/2TQiHS2aorXFWixRBo7GBx6iwpdtd
	 hYzI7vSMmYXwaNpnRiloAv14Cl/ip44LMPEGrIyFDP7M4FT8DO2xdAp1Tlcg71wMZL
	 tajFGQxgTLgGpN3G4/ZAmvBH/ecE/eHwF+qRRAir6ovZDGZP8NcPJDgrc568yQp6tj
	 6p6Gr2TLCr/+Hm2bZ4WH9hMTeLU8uRwY2NjRCA/HVLmh1ysGIfPPVdoJhWkKv5RFJY
	 Ic8/GT8n+MV+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F79E41241;
	Wed, 25 Jun 2025 17:00:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D3C53154
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 17:00:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C515840401
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 17:00:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4YGqups13RZD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 17:00:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ECE4140111
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECE4140111
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ECE4140111
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 17:00:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 373875C5AB8;
 Wed, 25 Jun 2025 16:58:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 180A5C4CEEA;
 Wed, 25 Jun 2025 17:00:51 +0000 (UTC)
Date: Wed, 25 Jun 2025 18:00:50 +0100
From: Simon Horman <horms@kernel.org>
To: Vlad URSU <vlad@ursu.me>
Cc: Jacek Kowalski <jacek@jacekk.info>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250625170050.GJ1562@horms.kernel.org>
References: <91030e0c-f55b-4b50-8265-2341dd515198@jacekk.info>
 <5c75ef9b-12f5-4923-aef8-01d6c998f0af@jacekk.info>
 <20250624194237.GI1562@horms.kernel.org>
 <0407b67d-e63f-4a85-b3b4-1563335607dc@jacekk.info>
 <20250625094411.GM1562@horms.kernel.org>
 <613026c7-319c-480f-83da-ffc85faaf42b@jacekk.info>
 <eb418aae-c0d4-438f-9b3b-fcb870387b1a@ursu.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eb418aae-c0d4-438f-9b3b-fcb870387b1a@ursu.me>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750870854;
 bh=sV4Z0ubPWbCvivHS7xiJTDANUW3GSypskarbYGUfU5Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vLSr3SodfBFHXLPE0oP7krUvDl54AWbcRgXX6JAoA8kqCZNlpjFmyq5slqvGogvfy
 6S3GpHspF9Tle2Pl4EQ0/kYQU6SPHqFf07MBSceXAaVY8S01D3oPN7bh2+SzAAmcVh
 6FNlgYjd8PEKfMNKDPQh8NC171TYeHKCY7Tt2jsmDwKGDXnNzIJtTvdnn7uCnjEN6X
 O9iXYLTfDisifWP4bXP3adwuirJL8JFu0XTtSTVEan9y484fQ1ieK63UZoscAUubd4
 IRBkDfajXOuoKfkCdIyb6WCtw25Hdp3dWbU3pIJVzsX3U0q/QapjrU/fGC20xliwHm
 VwAC7VPUPlpyQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=vLSr3Sod
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

On Wed, Jun 25, 2025 at 05:06:44PM +0300, Vlad URSU wrote:
> On 25.06.2025 16:05, Jacek Kowalski wrote:
> > > > > > +#define NVM_CHECKSUM_FACTORY_DEFAULT 0xFFFF
> > > > > 
> > > > > Perhaps it is too long, but I liked Vlad's suggestion of naming this
> > > > > NVM_CHECKSUM_WORD_FACTORY_DEFAULT.
> > 
> > So the proposals are:
> > 
> > 1. NVM_CHECKSUM_WORD_FACTORY_DEFAULT
> > 2. NVM_CHECKSUM_FACTORY_DEFAULT
> > 3. NVM_CHECKSUM_INVALID
> > 4. NVM_CHECKSUM_MISSING
> > 5. NVM_CHECKSUM_EMPTY
> > 6. NVM_NO_CHECKSUM
> > 
> > Any other contenders?
> > 
> 
> For reference, I called it "CHECKSUM_WORD" in my proposal because that's
> what it's refered to as in the intel documentation (section 10.3.2.2 - http://www.intel.com/content/dam/www/public/us/en/documents/datasheets/ethernet-connection-i219-datasheet.pdf)
> 

FWIIW, I'd vote for 1.
