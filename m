Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4191AA8628C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 17:59:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8322280DBA;
	Fri, 11 Apr 2025 15:59:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3PAXwpvuuwdZ; Fri, 11 Apr 2025 15:59:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB5208448B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744387183;
	bh=CP5qrtYDfyGtwn/g+wei5CjbxUc9TBWhOCtxssRA4ek=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GMRbcsiF0+W99xbMKpqIp54ZXT0QowX/cOSiLshIDkr+vS+31/f7nieM3aUGzOWLf
	 GBQqeHWVMtTXCv0BBo4SOCxKvxMR5jBA07LKllHCHbgcNSPPg23dimtcsnnXIeUsvq
	 jQAo7v1ZmNcm6/VMOu+fqsw+3y/abkxFQdYYqc1x/jaO3heWw9mBsVvQMBI1uUX7M0
	 YvU9FyQGdiudio/xoAaHBNSUWY3O/S5ULMVRXn6VRoNpreZR3zAow4PknEIrpXEYco
	 QXMe215NOvb/Pkp6Av6ZEXNfpEbSgmS4aC3PV7X93sz6bDsaWl7T9Q/7+TIEprkn3g
	 kYRqXua7xX7Tw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB5208448B;
	Fri, 11 Apr 2025 15:59:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4492A108
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 15:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 26033404D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 15:59:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lYgIf4hoX1qC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 15:59:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A5643405FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5643405FD
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5643405FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 15:59:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E4CFC49FC0;
 Fri, 11 Apr 2025 15:51:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8737AC4CEE2;
 Fri, 11 Apr 2025 15:51:46 +0000 (UTC)
Date: Fri, 11 Apr 2025 16:51:44 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250411155144.GJ395307@horms.kernel.org>
References: <20250404105421.1257835-1-michal.swiatkowski@linux.intel.com>
 <20250407104350.GA395307@horms.kernel.org>
 <Z/ij+J8kGYM5ezC/@mev-dev.igk.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z/ij+J8kGYM5ezC/@mev-dev.igk.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744386707;
 bh=WUlpEvUyYqtQN+coMNo0xuXkthk/nI+QBNZ5QVY2IEI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AJV8RtgEypwQNef0ye9KfcaXQa74Cyotrouoa9xRTpGTPIktpvkSgg/SvTfwtLUxL
 OvN/DGKSindUTGn6KcSxn4KEugaGYVF/ZzV4wK/aLvKDOAEMdjut80+Qqzq18pPg9F
 AF5bm28C1IQ238e7uudusF32MBNI7+1pZ2RrPTWm4JxJQ37IZyJ9PTmaZ6qZlDGme/
 F7Lp+DIvvALwhv6yG6yD8Q+SOHD4yNFQ+EGDxRhhYQeRF4wFrL8Ue5ZXqfEN00VNno
 yRkvfwMwpp+JD2N/nvtP9seuU1wY852N0rN5YMMUIUwVherOjE9WXQb2C5TZWIJL9H
 kKiSpzbR+uyyg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=AJV8RtgE
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] idpf: fix potential memory
 leak on kcalloc() failure
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

On Fri, Apr 11, 2025 at 07:09:12AM +0200, Michal Swiatkowski wrote:
> On Mon, Apr 07, 2025 at 11:43:50AM +0100, Simon Horman wrote:
> > On Fri, Apr 04, 2025 at 12:54:21PM +0200, Michal Swiatkowski wrote:
> > > In case of failing on rss_data->rss_key allocation the function is
> > > freeing vport without freeing earlier allocated q_vector_idxs. Fix it.
> > > 
> > > Move from freeing in error branch to goto scheme.
> > > 
> > > Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")
> > 
> > Hi Michal,
> > 
> > WRT leaking q_vector_indxs, that allocation is not present at
> > the commit cited above, so I think the correct Fixes tag for
> > that problem is the following, where that allocation was added:
> > 
> > Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
> 
> Thanks for checking that. I agree, my fixes is wrong.
> 
> > 
> > I do note that adapter->vport_config[idx] may be allocated but
> > not freed on error in idpf_vport_alloc(). But I assume that this
> > is not a leak as it will eventually be cleaned up by idpf_remove().
> 
> Right, it will be better to free it directly for better readable.
> Probably candidate for net-next changes.

Thanks, that does sound like a nice idea.

...
