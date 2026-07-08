Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Pb+eKJaXTmp4QAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 20:31:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA8A72985C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 20:31:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=qrfsJOLp;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C67D6083B;
	Wed,  8 Jul 2026 18:31:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bdmg7bPBZbDD; Wed,  8 Jul 2026 18:31:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6FA26066B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783535506;
	bh=vnpc+0AH8CrNGReb0Fv2l86Pm0BA12D/xz718fUUFis=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qrfsJOLpv17zyD1Qr66E9HtJ8ZodDS5SdUOFxjNkYVBhW02DGpd3Z/rxmmtj6tQw/
	 ItM7ACaZMyYREF5oXhjqsf8ZeE2jew01ft/Vm+Y/40lJJ3P36H687DHabwRRsUSguQ
	 lM0nLVNfvCrlVZesHQwYa2L/LTN5IWzDdjAXk0VkwLTTGe0IXTkuQbQQkDKlnzi/uH
	 U+EEGxtZ2rc8Ak7n7LQXcKUi3A3ps8FKXXF6gNXY8diflfEPLR3Jg3xSLm13H15D/m
	 zwKogo7dMDjx6K3nGNQjOk3OOl2pwRdxeO+VsAYLF5MWe7AsYgOWdxRlZSXrr4+Vxa
	 NPCrH8IX5rsUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6FA26066B;
	Wed,  8 Jul 2026 18:31:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F11815C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 18:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 852E840A39
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 18:31:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ag7lqXwy9dDq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 18:31:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A4B4A40A3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4B4A40A3E
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4B4A40A3E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 18:31:44 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 17D54405B8;
 Wed,  8 Jul 2026 18:31:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 594061F000E9;
 Wed,  8 Jul 2026 18:31:42 +0000 (UTC)
Date: Wed, 8 Jul 2026 19:31:40 +0100
From: Simon Horman <horms@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 magnus.karlsson@intel.com, kuba@kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com
Message-ID: <20260708183140.GK1364329@horms.kernel.org>
References: <20260701124524.13644-3-maciej.fijalkowski@intel.com>
 <20260708150455.1498611-2-horms@kernel.org>
 <ak6HOhJh/pxdloEs@boxer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ak6HOhJh/pxdloEs@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1783535504;
 bh=vnpc+0AH8CrNGReb0Fv2l86Pm0BA12D/xz718fUUFis=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=gUp7BK0ujx+doynC8fr9Y2IoyLR39ZswQnALsAFA+3S76GspsHGBf2WklNckinVpC
 z7tNPdpZUx213yND5uuvZHcj+n3Lnov8XEVid8uvUx9pyldh0PEEJtIqdsii2ijKLb
 gAHkM81CJbbtgDNgm7dz+NrKjzLukl+lMmVL7Sp8VyAWmV9V6Ew/35P/h9Nw4rtcX0
 XuRY8AZfiK8H5LhXNJ4UfFr1C9EGGzqnt0aF2hNY38qI42KdLIKHaB0vCsK/HOzBZ3
 kJEfbAKi0nL3VoAo7K8bZX+Wb2hhing81BXVCrOGjTGUSx7OU8Z8jugeWE8KYtHze8
 W0CmfAvymaPPw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=gUp7BK0u
Subject: Re: [Intel-wired-lan] [PATCH v5 net 2/7] i40e: avoid null ptr
 dereference in i40e_ptp_stop()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:netdev@vger.kernel.org,m:magnus.karlsson@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,sashiko.dev:url,osuosl.org:from_smtp,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6EA8A72985C

On Wed, Jul 08, 2026 at 07:22:02PM +0200, Maciej Fijalkowski wrote:
> On Wed, Jul 08, 2026 at 04:04:56PM +0100, Simon Horman wrote:
> > This is an AI-generated review of your patch. The human sending this
> > email has considered the AI review valid, or at least plausible.
> > Full review at: https://sashiko.dev
> > ---
> > i40e: avoid null ptr dereference in i40e_ptp_stop()
> >     
> > Check if main_vsi is not null before calling dev_info() to avoid a null
> > pointer dereference when i40e_vsi_clear() frees the main VSI during rebuild.
> > 
> > > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > index ff62b5f2c8150..ca93df4d67859 100644
> > > --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > > @@ -1556,8 +1556,9 @@ void i40e_ptp_stop(struct i40e_pf *pf)
> > >  	if (pf->ptp_clock) {
> > >  		ptp_clock_unregister(pf->ptp_clock);
> > >  		pf->ptp_clock = NULL;
> > > -		dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n", __func__,
> > > -			 main_vsi->netdev->name);
> > > +		if (main_vsi)
> > > +			dev_info(&pf->pdev->dev, "%s: removed PHC on %s\n", __func__,
> > > +				 main_vsi->netdev->name);
> > 
> > [Severity: High]
> > This isn't a bug introduced by this patch, but this lockless check appears
> > to introduce a time-of-check to time-of-use race condition.
> 
> Thanks Simon I saw these, however since all of the issues are classified
> as pre-existing issues IMHO these changes are okay to be taken and then
> we could go with another round of fixes.

Yes, agreed. Sorry about the noise.
