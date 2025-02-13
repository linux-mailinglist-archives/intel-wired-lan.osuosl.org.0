Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 579DFA33770
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 06:46:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA4C584A9C;
	Thu, 13 Feb 2025 05:46:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oqTk0dsP0wcG; Thu, 13 Feb 2025 05:46:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C40184A8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739425602;
	bh=FKIkEzClPH7qKxai1WAldfW+aCDVGO1E4hKardEhU1Q=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d5w1c1dBJl954DwEU4hS11402QRkiy8xMSOu0g4R5WiRIs7UNVaF+7Lb2lO4Qv7Pb
	 BTgJUzp3xr7H8gD/YgUgcpODEA+PmWv1tSr9fJ5P+yEZ7v8cNBsYzLkl0mCSG8maBK
	 7GHA9KxsTXVENvrTf7yLaxLtvrMFdY8TOheRBKd7eNoYqh/ye+fSxw8qEDls6SQxm+
	 DpVghtnaTxtwT51PEEll7dA90M0AiXVXjWM8NRi8n3L0V4O4IdPnCu95idZ+jo/TBU
	 lUZCrMZyGr+q85gJ/iHS0n/CswqbkSHL2su5/ywRLBx3YGV2wXvoMq1oHtxC3utcq5
	 zFDYPM8GS7AGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C40184A8E;
	Thu, 13 Feb 2025 05:46:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8FF791A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 05:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6AE2240E52
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 05:46:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5LZ_yi7WLGaQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 05:46:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7F4CD41249
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F4CD41249
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F4CD41249
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 05:46:38 +0000 (UTC)
X-CSE-ConnectionGUID: 1NT9oyb5S4+W0DNFnuLdZA==
X-CSE-MsgGUID: y5fjnJ1LSdyi2ZAwmHdtaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50759323"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50759323"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 21:46:38 -0800
X-CSE-ConnectionGUID: Ehqxx3epQAqWCOvT9B475Q==
X-CSE-MsgGUID: +1XcehPlTYSICABEwY7chg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113565134"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 21:46:34 -0800
Date: Thu, 13 Feb 2025 06:43:02 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Jakub Kicinski <kuba@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Message-ID: <Z62GZkcQ5TnKBc2O@mev-dev.igk.intel.com>
References: <14ebc311-6fd6-4b0b-b314-8347c4efd9fc@stanley.mountain>
 <f66b15a3-1d83-43f9-8af2-071b76b133c0@intel.com>
 <20250212175901.11199ce1@kernel.org>
 <d6eaa268-e4ef-4d90-bb1e-37a7f546da93@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d6eaa268-e4ef-4d90-bb1e-37a7f546da93@stanley.mountain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739425599; x=1770961599;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XpQbPKI9igVHpQ1tZ0XhK2uclZOpgu9lc0//4ojmblA=;
 b=HVUc8IalV33nO9hp3Dza/O8tQUBeFP3NzaMaY3fx0ko6hO8DDgXVQVCp
 fTkieZciUfQV4xhXTK3dxbc4YCafJL5UKhjVjv5TXFrtnWpIXrRU+Pu2d
 oTrDkmzTgqh+e5999LmnVYYHJHiiTlHNf73cTw2PQlKbVvP5BN7zESfa9
 J8JOlS01v4e3BExn6hh1Jpbv8YI/i1fLFD05Mwp6+AVN6+73SdTx5rS2J
 CyrLzwdn1GEyquYkpBPLMAT+ri26hGlIJNeYqVw7BnC0amZiu8MyEXZ2n
 Y59YYs5inp3hRHQR2Y5PiwTPoxq2SPCggqU5T/FR8wk+0UE9qOFbA0FGS
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HVUc8Ial
Subject: Re: [Intel-wired-lan] [PATCH next] ice: Fix signedness bug in
 ice_init_interrupt_scheme()
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

On Thu, Feb 13, 2025 at 08:26:09AM +0300, Dan Carpenter wrote:
> On Wed, Feb 12, 2025 at 05:59:01PM -0800, Jakub Kicinski wrote:
> > On Wed, 12 Feb 2025 17:46:54 +0100 Alexander Lobakin wrote:
> > > > [PATCH next] ice: Fix signedness bug in ice_init_interrupt_scheme()  
> > > 
> > > I believe it should be "PATCH net" with
> > > 
> > > > If pci_alloc_irq_vectors() can't allocate the minimum number of vectors
> > > > then it returns -ENOSPC so there is no need to check for that in the
> > > > caller.  In fact, because pf->msix.min is an unsigned int, it means that
> > > > any negative error codes are type promoted to high positive values and
> > > > treated as success.  So here the "return -ENOMEM;" is unreachable code.
> > > > Check for negatives instead.
> > > > 
> > > > Fixes: 79d97b8cf9a8 ("ice: remove splitting MSI-X between features")  
> > > 
> > > a 'Stable:' tag here.
> > 
> > Bug only exists in net-next if it comes from commit under Fixes.
> > So I think the patch is good as is.
> 
> I want to resen this.  My scripts should have put a net-next in the
> subject and I think that changing:
> 
> -		return -ENOMEM;
> +		return vectors;
> 
> actually does fall within the scope of the patch so I want to change
> that as well.  There is no point in really breaking that into a separate
> patch from a practical perspective.

Thanks for fixing, I blindly followed scheme from idpf (there is the
same issue). However in ice it was done correctly before my patch.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

> 
> regards,
> dan carpenter
