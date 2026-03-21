Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEldAoxivmnDOAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 10:19:08 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7866F2E4583
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 10:19:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA9B941E56;
	Sat, 21 Mar 2026 09:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3PQQrD07Os9h; Sat, 21 Mar 2026 09:19:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B48141E58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774084745;
	bh=B5fqRTE3+6Q5vPw/H8P3cKvWg0vP2lU4Sc7A2SSL70I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lCVVaCznRfnclM5mIkbzfxleI5znr2RVKi38YtjIqBB8v9sl4g7sjtoj2UFXkzSi8
	 tU8MbX82mOCV+LmScXnTIPyOeaL5RkU0XQfrreAdqqEUuvEhBVF3ixnYCuMGoowGqo
	 In9sEUlDaV6PcTR+Pk6oB+Sv22v9fUlm6qZ1k3+BQMYLHSQekQOsRGDd2RrCnycqst
	 WKSx3uOtFTsvtrOZEFNKz5QR5RkxQrS2QFkjQlfs1/d4hpSOADPM6dN+7dTykIknt+
	 mcraR0GIuorAN9dbu96Kq5dDSYYjQG/3bDGUD6sEbiqoA0rItXFN5FfEWon5lJqQhe
	 NFbTI8WQioHxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B48141E58;
	Sat, 21 Mar 2026 09:19:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8AC3934C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 09:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 70CAB84112
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 09:19:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qG5s84UNyx-J for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Mar 2026 09:19:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 99345840F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99345840F5
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99345840F5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 09:19:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6646360054;
 Sat, 21 Mar 2026 09:19:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22E2DC19421;
 Sat, 21 Mar 2026 09:18:59 +0000 (UTC)
Date: Sat, 21 Mar 2026 09:18:57 +0000
From: Simon Horman <horms@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: aleksandr.loktionov@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Message-ID: <20260321091857.GU74886@horms.kernel.org>
References: <20260320050525.422403-1-aleksandr.loktionov@intel.com>
 <20260320193314.171338-1-horms@kernel.org>
 <c1731a39-bcb1-408a-9630-f8878c270d05@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c1731a39-bcb1-408a-9630-f8878c270d05@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774084741;
 bh=+PT2Ef3M/EjliKhKgDJD4Sx3IT5CPfpBTznnG/+7vHk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=olTX/WolFzZ4TWAxYX/Rb+2iYgz/gE4jTXBWYe6j7SgwGPgFLNax5HcBUSGZpomzT
 U6VVJtcA7GqvwZ3sg8HUhsBy802+46Rs15UqsMbtnOv+hg013HiFtydbFbqQg+l4xD
 pt1ILCGuFxkNdyGlGl8RL4Qq5lTMYasJECGq4OqCEYzWy9mVP0Exax9T49zR+xJ4VE
 p8lYCFnBzzLJM5xvnJ8pDeVpeyW55qmmIDCXXGWgAbylPm5y+nFZFbzxV8JFpoVjYQ
 W+zFc6xqVvPxTqZ3u6gvJDKmbEHNzRhcTv4+z8NqnCqk5dS98IKB0e9SOezNsjI5cg
 HVjb6B5K+zp1g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=olTX/Wol
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: do not carry link
 status over to link event data
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,osuosl.org:dkim,linux.dev:url,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7866F2E4583
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 03:05:24PM -0700, Tony Nguyen wrote:
> 
> 
> On 3/20/2026 12:33 PM, Simon Horman wrote:
> > This is an AI-generated review of your patch. The human sending this
> > email has considered the AI review valid, or at least plausible.
> > 
> > For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
> > ---
> > ice: do not carry link status over to link event data
> > 
> > This patch removes code that updated the link_up parameter with the
> > current firmware state after calling ice_update_link_info().
> > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> > > index e7308e381e2f..348c86b7328d 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > > @@ -1127,12 +1127,6 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
> > > 
> > >   	ice_check_link_cfg_err(pf, pi->phy.link_info.link_cfg_err);
> > > 
> > > -	/* Check if the link state is up after updating link info, and treat
> > > -	 * this event as an UP event since the link is actually UP now.
> > > -	 */
> > > -	if (phy_info->link_info.link_info & ICE_AQ_LINK_UP)
> > > -		link_up = true;
> > > -
> > 
> > Could removing this check create a race condition with stale link events?
> 
> This was a part of other changes that allows this to happen. By itself, as
> evidenced here, it does not.

Thanks for the clarification, much appreciated.
