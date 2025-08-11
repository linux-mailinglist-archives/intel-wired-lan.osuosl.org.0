Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C67B211E8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 18:28:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48BE74140A;
	Mon, 11 Aug 2025 16:28:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tWtR2uXzCZMB; Mon, 11 Aug 2025 16:28:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA5B64140B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754929714;
	bh=NwmbUkUgL5DMkFILXXFXIxsHkXgpjTIjqTL5QZR9YZU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CHpa1195yhxdjbzQrrNCYgBanS1cVCWo14uSiSml+zy1S2eEnt5S7+Kt171l49I9l
	 ZphpsA/fDFBzbT+Hz4/FPMniBP2lDXvVNCq00Q4w/AnhPaOX9FpgpR8zmNvpqyYQly
	 GqXPI3JYL5JxqGvMcvKI6m1/xJJXZEYp5jte+dNskLzZWpbhoCXpSezouylOVSLT0s
	 WYPVxy7HvZu3tfbdetMyN2s3k7pfzUqMEYINvviCgVp753xrirN6+QQsSF0SvOv1Nc
	 P3A4Dap7tUrXpi3RsrEFy9HqgbBOzoF6+TmLq4aJrWcVM7+ewSGdgCOck91rse6Q87
	 afIk/HBT32/+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA5B64140B;
	Mon, 11 Aug 2025 16:28:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DC6B4138
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CDC1D83EB8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E_c62SzTFs-p for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 16:28:32 +0000 (UTC)
X-Greylist: delayed 406 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 11 Aug 2025 16:28:32 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 37B5C83EC3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37B5C83EC3
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37B5C83EC3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:28:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 86F8D60051;
 Mon, 11 Aug 2025 16:21:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB507C4CEED;
 Mon, 11 Aug 2025 16:21:42 +0000 (UTC)
Date: Mon, 11 Aug 2025 09:21:42 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
Message-ID: <20250811092142.5b9288d5@kernel.org>
In-Reply-To: <34da824b-1922-418f-953f-99287443b088@linux.dev>
References: <20250807155924.2272507-1-vadfed@meta.com>
 <20250808131522.0dc26de4@kernel.org>
 <ec9e7da6-30f0-40aa-8cb7-bfa0ff814126@linux.dev>
 <20250811084142.459a9a75@kernel.org>
 <34da824b-1922-418f-953f-99287443b088@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754929303;
 bh=TppvVuRqgbxW7gVpzMk+P0ZaW9d9lAQRUKQyT5Z2v1w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tCHyhKOOyF5jfDyd4f7gLKaTRa22khucAuazbs/JJoRwEFEWrpjyovdqZZxgwQPIR
 NYyrEmK/enM5DSfwlSL453C6X48a2bPq9lNx0e+XhzRP7xveA4HGoNAvXe/155VIHB
 iUvM63AZRadVkZNstmq2kKfClquu0JESlbmap5wumaVJoKuLiT+JxYq3ZXRw5dm5KC
 f9sJYxxWUK5ZD916wCc8w8VF5gesTixTx61okipCy4ZbRgwTkT29oM00PfVsLqmJ/F
 emQDqSAuS1skpGfFTv++fJxJeAWWShI7WlAu2aPmnoC20+tNejIFpYCtbMGgKma7ET
 CedIGlBjG+IIQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=tCHyhKOO
Subject: Re: [Intel-wired-lan] [RFC PATCH v4] ethtool: add FEC bins
 histogramm report
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

On Mon, 11 Aug 2025 17:08:34 +0100 Vadim Fedorenko wrote:
> On 11/08/2025 16:41, Jakub Kicinski wrote:
> > On Sun, 10 Aug 2025 11:52:55 +0100 Vadim Fedorenko wrote:  
> >> Well, the current implementation is straight forward. Do you propose to
> >> have drivers fill in the amount of lanes they have histogram for, or
> >> should we always put array of ETHTOOL_MAX_LANES values and let
> >> user-space to figure out what to show?  
> > 
> > Similar logic to what you have, you can move the put outside of the
> > loop, let the loop break or exit, and then @j will tell you how many
> > entries to fill..  
> 
> I see. Fair, I can do it. After this change there will be no need to
> change the code in the reply size calculation, right?

I think you need to split in two, one for the normal val and one for
the array.
