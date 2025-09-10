Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20320B51693
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 14:13:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0CAF83FC4;
	Wed, 10 Sep 2025 12:13:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZleqhoXsHTyS; Wed, 10 Sep 2025 12:13:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3AA183FC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757506406;
	bh=RFNRSipOUOA1IT98Lv7j+IvQWZ2qbkr6+e/GL980Y4s=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j2DeiFfI8WaY7MvJ50IksIOaIxC7//5RqJQVTZDjMoY7JluNt9NcYLoVUeCT9w7AH
	 BFvbBSGBNV2oq6japs1puNbcXx1K4BPaHuvdyaYm+CNQFOrFi2hgt2jZJiIfC/MxQk
	 Y3zgACJfZe5IqC1ixWDFvf7WHP1iprjgWraL5Ksri71dt1ZCrPBmet81906SMSSUJo
	 fHFt4Wn7YkFYhxCNpxpdZVP4yecPXbRHYSgmzex1Cm6rSLjbc4xWA4G6tmHBBYAT4/
	 iGpBfj5TovVEM0pXrd9dmX6/ct7wXsOZEtBZ3Wv6SUn6KZSDELmrHflAMS2jU0zh0B
	 JmLlYWDnLv4fQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3AA183FC2;
	Wed, 10 Sep 2025 12:13:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D244410E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 12:13:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3FAD83E9A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 12:13:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XAJTXpMGtimP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 12:13:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F025783E98
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F025783E98
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F025783E98
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 12:13:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0D7B740815;
 Wed, 10 Sep 2025 12:13:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 154B7C4CEF0;
 Wed, 10 Sep 2025 12:13:21 +0000 (UTC)
Date: Wed, 10 Sep 2025 15:13:17 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Tatyana Nikolova <tatyana.e.nikolova@intel.com>, jiri@resnulli.us,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Mohammad Heib <mheib@redhat.com>
Message-ID: <20250910121317.GQ341237@unreal>
References: <20250904195719.371-1-tatyana.e.nikolova@intel.com>
 <20250909122051.GF341237@unreal>
 <33d327a0-72d3-4775-8842-6c4ceaff41e2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <33d327a0-72d3-4775-8842-6c4ceaff41e2@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757506402;
 bh=f3KbczFHpmwYU58la1F5EYlpqZP5oVM2bUX9Zue5rLg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EmXcCjLhq0PdiWqVXY25K8xURhXjqT6ThC7ByoWfW9BUsJvEKmXdaJN/+p1i+dpqo
 G6LeN42SXsZXbxWsa5j1I4aTv3w51AlJjisfB/cnpAvJPdMRfAcDV0li/ABwsdwkwi
 MougOHqDkAb+2xpLPsY+rX6clRWMi4QeMaInPDmHm3lacgAQ5vHkN+A9rVocef4SZ4
 h6NwMNQVH0UNLZto/rw9P83A74HSjnx+DiOaTYL9nMDR/KzWjbmsgK7N48ll8SlJ1u
 wdYvYUxZuyskqinghPjli5mpoag/3+3rMvddqjj/WwieOY6Fcec11GrRhD3LOjYFs6
 aSHjKVsPsl2ug==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=EmXcCjLh
Subject: Re: [Intel-wired-lan] [iwl-next] ice,
 irdma: Add rdma_qp_limits_sel devlink parameter for irdma
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

On Wed, Sep 10, 2025 at 09:41:14AM +0200, Przemek Kitszel wrote:
> On 9/9/25 14:20, Leon Romanovsky wrote:
> > On Thu, Sep 04, 2025 at 02:57:19PM -0500, Tatyana Nikolova wrote:
> > > Add a devlink parameter to switch between different QP resource profiles
> > > (max number of QPs) supported by irdma for Intel Ethernet 800 devices. The
> > > rdma_qp_limits_sel is translated into an index in the rsrc_limits_table to
> > > select a power of two number between 1 and 256 for max supported QPs (1K-256K).
> > > To reduce the irdma memory footprint, set the rdma_qp_limits_sel default value
> > > to 1 (max 1K QPs).
> > > 
> > > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > > Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
> > > ---
> > > Since the changes to irdma are minor, this is targeted to iwl-next/net-next.
> > 
> > <...>
> > 
> > >   #define DEVLINK_LOCAL_FWD_DISABLED_STR "disabled"
> > >   #define DEVLINK_LOCAL_FWD_ENABLED_STR "enabled"
> > >   #define DEVLINK_LOCAL_FWD_PRIORITIZED_STR "prioritized"
> > > @@ -1621,6 +1723,7 @@ enum ice_param_id {
> > >   	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> > >   	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
> > >   	ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
> > > +	ICE_DEVLINK_PARAM_ID_RDMA_QP_LIMITS_SEL,
> > >   };
> > 
> > I was under impression that driver-specific devlink knobs are not
> > allowed. Was this limitation changed for Intel?
> 
> I'm not aware of such limitation.

It is possible that my impression was wrong.

> It's always better to have generic params, but some knobs are not likely
> to be reused; anyway it would be easy to convert into generic.

Unlikely, you will need to keep old parameter and new at the same time
for backward compatibility reasons.

> 
> To have this particular param more generic-ready, we have converted from
> our internal format (values were 0...7, mapped into some powers of two)
> to what one could imagine other drivers would like to add at some point
> (perhaps multiplying the user-provided value by 1K is unnecessarily
> complicating adoption for small NICs, IDK?).
> 
> Do you believe this should be switched to generic now (instead of when
> there is a future user)?
> What about a name (this should be kept forever)?

mlx5 has .log_max_qp in mlx5_profile which looks similar to what you are
proposing here, so RDMA_QP_LIMITS sounds fine to me.

> 
> side note:
> We are also going to add yet another param, now used only by intel, but
> we do so as a generic one: "max number of MAC addrs for VF in i40e", see
> https://lore.kernel.org/intel-wired-lan/20250907100454.193420-1-mheib@redhat.com/T/#t
> 
> 
> > 
> > Thanks
> 
