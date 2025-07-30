Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 197B0B161B5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 15:44:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25EEB80DA2;
	Wed, 30 Jul 2025 13:44:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ElyzKtW3dGwW; Wed, 30 Jul 2025 13:44:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1238380E73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753883065;
	bh=jfnnXzsaHzN1asEOlm8OMFrmb6HGDOFmxm/7EHwsXLs=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MU/HEPa9Tz+LR8Fs9KygudTmMi86Kd9g+EkbOsbDDGUvbX06LW0bucNy3yexDwKN6
	 WINLe70SYYFMriHYJ+SqjzskEEIQ8rmR28byG+fvChHLVRLGOaI2dyclQOwUrwNkW0
	 jNlBpo2vubkZeIyXN+AihLzmKwPbwssNq34elW/m2nvNFDwbcT4rccGyidQqpw9S6Z
	 9qfqMl6KaY4jjQNqW3IGdjPuNgHoUEpCj6ERD6ML2BEBBSHgyaIGaqcMBAbMgvXLY3
	 XAjzSQg4gX20lZLUN8yXicLy7YUz9E2Biynl/5whHW87OfeWUNIt+vd27Lt3BvdzJK
	 5Sk45bM7b9rbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1238380E73;
	Wed, 30 Jul 2025 13:44:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 85842186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C1FF407B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:44:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aoR0VV__w4gB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 13:44:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5A16340F50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A16340F50
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A16340F50
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:44:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C56C6418D4;
 Wed, 30 Jul 2025 13:44:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4746EC4CEE7;
 Wed, 30 Jul 2025 13:44:20 +0000 (UTC)
Date: Wed, 30 Jul 2025 06:44:19 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald
 Hunter <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>, Simon
 Horman <horms@kernel.org>, netdev@vger.kernel.org
Message-ID: <20250730064419.2588a5e3@kernel.org>
In-Reply-To: <bb66c931-ac17-4a70-ba11-2a109794b9e2@linux.dev>
References: <20250729102354.771859-1-vadfed@meta.com>
 <982c780a-1ff1-4d79-9104-c61605c7e802@lunn.ch>
 <1a7f0aa0-47ae-4936-9e55-576cdf71f4cc@linux.dev>
 <9c1c8db9-b283-4097-bb3f-db4a295de2a5@lunn.ch>
 <4270ff14-06cd-4a78-afe7-1aa5f254ebb6@linux.dev>
 <c52af63b-1350-4574-874e-7d6c41bc615d@lunn.ch>
 <424e38be-127d-49d8-98bf-1b4a2075d710@linux.dev>
 <20250729185146.513504e0@kernel.org>
 <bb66c931-ac17-4a70-ba11-2a109794b9e2@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753883060;
 bh=cgP7ufEbc1fp1+482maor3B6Hqo7lhcA8bqWL0MDuCo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mTf3PAVgkEAh6b8AMNui+UNmqLyAXKG9tkrXugLGu25sGFNv4xZLxdFpg58hd6eOf
 KcmsurfVVJTJ5B3cSXGI1A1S8warGgiHekZOmKPd51G65bdk9LlQg65QpbF0cr1ViU
 WdPfCNw1GfGYZzvzXcoSdmLwQ0foi4xBfJ7XND23ys59XRHRt0PYsKSHO9M0ewp+g9
 8SNVe3CULazbokXl2GACVm4FoWFL/oXKwz3ZcJ8fV8+VxpvxEvaVkDv4dHm99dfe9E
 DV0P9qYD+5713vJ0iJoS0ITSqHgjHpmc1tFOFNOFmXb9vByiVP9JrWI5Y5ggpFde0Y
 +2yuhdP6x7FLg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mTf3PAVg
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

On Wed, 30 Jul 2025 10:18:46 +0100 Vadim Fedorenko wrote:
> > IDK, 0,0 means all symbols were completely correct.
> > It may be useful for calculating bit error rate?  
> 
> The standard doesn't have this bin, its value can be potentially
> deducted from all packets counter.

We have a number of counters outside of the standard. Here the
extension is pretty trivial, so I don't see why we'd deprive
the user of the information HW collects. The translation between
bytes and symbols is not exact. Not sure we care about exactness
but, again, trivial to keep the 0,0 bin.

> > A workaround for having the {-1, -1} sentinel could also be to skip
> > the first entry:
> > 
> > 	if (i && !ranges[i].low && !ranges[i].high)
> > 		break;  
> 
> I was thinking of this way, the problem is that in the core we rely on
> the driver to provide at least 2 bins and we cannot add any compile-time
> checks because it's all dynamic.

1 bin is no binning, its not a legit use of the histogram API. 
We have a counter for corrected symbols already, that's the "1 bin".
