Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDn0MYcStGlkgwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 14:35:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA584283FC2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 14:35:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEEE7812ED;
	Fri, 13 Mar 2026 13:35:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HeqGsGLshecS; Fri, 13 Mar 2026 13:35:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEB16812EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773408899;
	bh=JP5PwWlPxnEL2bRhMkKaL63NQURYu2sRI0dD/eCJGdQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rde86gmzBFYF+ous24wChq+VRM3EmLYvQPhKhtc2H7qL6kCIphikq4+CuXx4dF7lu
	 T3soXefBvnrs0vIk0BYEqcbL9O6BLV99PHAt4X4dJne3YIgm41EHF0Cj65EThc5Z8k
	 LMJWBkDUl4cLEfB30fI/as37R2XEaLDj17zx1904JO2VXoO2PpMXog7AEVbhkOYX6P
	 QDyK5XKADjZtpi+vrvIjOnx432KMrmP4I3PcMkzcqbQioqznP+rEneKdLk157Lf+Co
	 Dez4skzy8Ll11lhlPqIiRIHdcyu3VDnDFQb4eIBKbDWNTSAJGSAgV8tYCExoL1+FZi
	 VRT6VFNF8tzIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEB16812EB;
	Fri, 13 Mar 2026 13:34:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 04BE31AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 13:34:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D5FFF40B0D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 13:34:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k-ZngLTGdh5r for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Mar 2026 13:34:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 72FEA40B00
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72FEA40B00
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72FEA40B00
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 13:34:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C4A6F43B45;
 Fri, 13 Mar 2026 13:34:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57F81C19421;
 Fri, 13 Mar 2026 13:34:54 +0000 (UTC)
Date: Fri, 13 Mar 2026 13:34:51 +0000
From: Simon Horman <horms@kernel.org>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <20260313133451.GZ461701@kernel.org>
References: <20260309141220.343224-1-przemyslaw.korba@intel.com>
 <20260310182458.GQ461701@kernel.org>
 <PH0PR11MB49044CA89B5D8780D477561D9447A@PH0PR11MB4904.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PH0PR11MB49044CA89B5D8780D477561D9447A@PH0PR11MB4904.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773408895;
 bh=90zTevJdzu6deh7sGl/tQMJmAekN5bujMcUwaYFzm0U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oZJFFGODrGFjZfTI78cukJYH9nCTl70Nhlfep/6evq0ipXyIcAZsklsedjWx3yVpp
 Ykch0ynhqDRalKtgLfA8W2acek6+ri/g3/NnrIsFP2VxUEtmkIhamQYdejvcSLYdTA
 NmYwtzVXg5K7j/843T62Ej/WSbhtg82SKcTh74cTOAAHmCheZjRj/kIVa+JaZwIy9V
 xw2ohNR236NogKdOJ0uXfZ+hCdIkHUpdkz6/wNUGXRDx7xJmhJudRPBWJ+BwEmmYbf
 q5/marx+kVbAZi7BAqx1zOsAAZyIItt7STh/1YFMU7MS8oCyvghWdfUMH1ELjdvhD4
 9M9I4KWRti+wA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oZJFFGOD
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: PTP: set supported
 flags in ptp_clock_info
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AA584283FC2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 12:42:10PM +0000, Korba, Przemyslaw wrote:
> > -----Original Message-----
> > From: Simon Horman <horms@kernel.org>
> > Sent: Tuesday, March 10, 2026 7:25 PM
> > To: Korba, Przemyslaw <przemyslaw.korba@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>
> > Subject: Re: [PATCH iwl-next] i40e: PTP: set supported flags in ptp_clock_info
> > 
> > + Jacob
> > 
> > On Mon, Mar 09, 2026 at 03:11:51PM +0100, Przemyslaw Korba wrote:
> > > Since upstream commit d9f3e9ecc456 ("net: ptp: introduce
> > > .supported_perout_flags to ptp_clock_info") and commit 7c571ac57d9d ("net:
> > > ptp: introduce .supported_extts_flags to ptp_clock_info"), kernel core
> > > now requires that the driver set the .supported_perout_flags and
> > > .supported_extts_flags fields in PTP clock info. Otherwise, the
> > > additional flags will be rejected by the kernel automatically.
> > >
> > > i40e does not support perout flags, so reject any request with perout
> > > flags.
> > >
> > > Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 12 +++++++++++-
> > >  1 file changed, 11 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > index 7bcea7d9720f..8d7958692235 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > @@ -601,10 +601,18 @@ static int i40e_ptp_feature_enable(struct ptp_clock_info *ptp,
> > >  	/* TODO: Implement flags handling for EXTTS and PEROUT */
> > >  	switch (rq->type) {
> > >  	case PTP_CLK_REQ_EXTTS:
> > > +		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
> > > +					PTP_RISING_EDGE |
> > > +					PTP_FALLING_EDGE |
> > > +					PTP_STRICT_FLAGS))
> > > +			return -EOPNOTSUPP;
> > > +
> > >  		func = PTP_PF_EXTTS;
> > >  		chan = rq->extts.index;
> > >  		break;
> > >  	case PTP_CLK_REQ_PEROUT:
> > > +		if (rq->perout.flags)
> > > +			return -EOPNOTSUPP;
> > >  		func = PTP_PF_PEROUT;
> > >  		chan = rq->perout.index;
> > >  		break;
> > 
> > I am a little confused.
> > 
> > My understanding of the cited patches is that they add checking of flags to the code. So code like the above isn't needed in drivers.
>  
> Hi Simon, thank you very much for the review. My understanding is that the driver needs to set the supported flags field, otherwise requests won't go through kernel. The test I've been doing confirm my theory. Here's also example patch, that adds supported flags to drivers: https://lore.kernel.org/intel-wired-lan/20250414-jk-supported-perout-flags-v2-1-f6b17d15475c@intel.com/

Sorry for the slow response.

My understanding is that the hunk above is not required.
But the hunk below is.

> 
> > > @@ -1340,7 +1348,9 @@ static int i40e_init_pin_config(struct i40e_pf *pf)
> > >  	pf->ptp_caps.n_ext_ts = 2;
> > >  	pf->ptp_caps.pps = 1;
> > >  	pf->ptp_caps.n_per_out = 2;
> > > -
> > > +	pf->ptp_caps.supported_extts_flags = PTP_RISING_EDGE |
> > > +					     PTP_FALLING_EDGE |
> > > +					     PTP_STRICT_FLAGS;
> > >  	pf->ptp_caps.pin_config = kzalloc_objs(*pf->ptp_caps.pin_config,
> > >  					       pf->ptp_caps.n_pins);
> > >  	if (!pf->ptp_caps.pin_config)
> > >
> > > base-commit: d5fbc991435eac7a1ead7cd2ddb5a743528718bb
> > > --
> > > 2.43.0
> > >
