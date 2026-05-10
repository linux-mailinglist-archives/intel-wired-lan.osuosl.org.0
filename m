Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAiOCKJIAGqnFwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 May 2026 10:58:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EE45033F7
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 May 2026 10:58:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CD7C4263A;
	Sun, 10 May 2026 08:58:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j3q4ZqVM_lCs; Sun, 10 May 2026 08:58:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 511F542635
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778403484;
	bh=zY++E4FhEK3P4NljR1mt89AKg/LOOjUeVMCkqHGX+Ms=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bnGist8OS3FfD8rNKo2Tt6m5XaPlAYqlIZKo14QDwAeW6ZRKPGrV3c4RpVp5ZOoZW
	 pGQyKvUQXKNLCIR021N70ZnZaC0ECh72tsyg/dmlmoDfjmkNw4iXveXPeP2fknBtbd
	 meATy+/6JZalOrXHS+8/CRpYmvck4LgC4PDNxVQKO+vz1LrRVSjTcCQ1Ki7lnu89tM
	 tcQviNdnOydVQG4sZHiLxUfGN8mYytW5pCOVMwthJk4hPxfF+S0oGO/55ZmGEM5P4i
	 5UtWIf2oCILI1Z7C/DkDEw3+9rcHksSXxyvn8LnNrGL39SGcse+hEeH1JDOkzGOUOz
	 OzYl/GRS5sP9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 511F542635;
	Sun, 10 May 2026 08:58:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A42FE173
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 May 2026 08:58:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95A3D842F6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 May 2026 08:58:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mQUw58P3Rb_q for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 May 2026 08:58:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 930068117C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 930068117C
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 930068117C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 May 2026 08:58:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id CDEBB6132E;
 Sun, 10 May 2026 08:57:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8DF3C2BCB8;
 Sun, 10 May 2026 08:57:56 +0000 (UTC)
Date: Sun, 10 May 2026 09:57:54 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, kohei@enjuk.jp, jacob.e.keller@intel.com,
 aleksandr.loktionov@intel.com,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20260510085754.GT15617@horms.kernel.org>
References: <20260505152923.1040589-4-aleksander.lobakin@intel.com>
 <20260508132827.1183079-3-horms@kernel.org>
 <5eab9525-6fbd-46ae-8464-12ca9472bea1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5eab9525-6fbd-46ae-8464-12ca9472bea1@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778403479;
 bh=FNDuC7oCPX7tr3C9D3AUsfZHOsDaY4QftAvCxL6a95g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lJU25zPkezZNxxAKPS1UvRg+V7DIGwXfisFOCqjmw/qj1GeoYKUn6rxhHw1/S6u1D
 az8zl5uJ7f1q9lsoXL0k37wZTz1ClmGlNb32ouyushLCOGNCmCyvQhRg50QTKv8Tfe
 jQpHysclDUYd+s0RGHhFzLqdVUbDDqHoFJuyqBs+WzIfe01lghkRhy5Q4IIMyHjc/S
 89XYsukKapzYhYw9Z8U+wV2ZAQGebMJKNMXHZuEPZgI2EUExzq+ojjEz8bGiiyzuco
 iDABmf2ooHrQgARfZ7wheBHg0TUuS7amjZPtQUaPkzxaCENFJ55JbwvCGKFgZclNWR
 z33jWLBdN8m8w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=lJU25zPk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 3/5] ice: migrate to
 netdev ops lock
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
X-Rspamd-Queue-Id: 38EE45033F7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei@enjuk.jp,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[horms.kernel.org:mid,sashiko.dev:url,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 03:57:25PM +0200, Alexander Lobakin wrote:
> From: Simon Horman <horms@kernel.org>
> Date: Fri,  8 May 2026 14:28:29 +0100
> 
> > From: 'Simon Horman' <horms@kernel.org>
> > 
> > This is an AI-generated review of your patch. The human sending this
> > email has considered the AI review valid, or at least plausible.
> > Full review at: https://sashiko.dev
> > ---
> >     ice: migrate to netdev ops lock
> > 
> > This commit migrates queue management operations to use netdev locking.
> > It updates several NAPI and VSI configuration functions to use their
> > _locked variants to avoid deadlocks, taking the lock manually where needed.
> > 
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> >> index 16aa255351523..7d89c0acc5d8d 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> >> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> > [ ... ]
> >> @@ -1107,7 +1106,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
> >>  
> >>  	rtnl_lock();
> >>  	/* disable VSIs affected by DCB changes */
> >> -	ice_dcb_ena_dis_vsi(pf, false, true);
> >> +	ice_dcb_ena_dis_vsi(pf, false);
> >>  
> >>  	ret = ice_query_port_ets(pi, &buf, sizeof(buf), NULL);
> >>  	if (ret) {
> >> @@ -1119,7 +1118,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
> >>  	ice_pf_dcb_recfg(pf, false);
> >>  
> >>  	/* enable previously downed VSIs */
> >> -	ice_dcb_ena_dis_vsi(pf, true, true);
> >> +	ice_dcb_ena_dis_vsi(pf, true);
> >>  unlock_rtnl:
> >>  	rtnl_unlock();
> >>  out:
> > 
> > This wasn't introduced by this patch, but does this error path leave VSIs
> > permanently disabled?
> > 
> > If ice_query_port_ets() fails, the code jumps to unlock_rtnl, bypassing the
> > call to ice_dcb_ena_dis_vsi(pf, true). This seems to leave the affected VSIs
> > (including the main PF interface) in a disabled state (ICE_VSI_DOWN) with
> > ICE_VSI_NEEDS_RESTART set, which could result in a denial of service.
> > 
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> >> index 2e4f0969035f7..af0cc77fbf718 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> >> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> >> @@ -23,10 +23,16 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
> >>  	struct net_device *netdev = uplink_vsi->netdev;
> >>  	bool if_running = netif_running(netdev);
> >>  	struct ice_vsi_vlan_ops *vlan_ops;
> >> +	int ret;
> >> +
> >> +	if (if_running && !test_and_set_bit(ICE_VSI_DOWN, uplink_vsi->state)) {
> >> +		netdev_lock(netdev);
> >> +		ret = ice_down(uplink_vsi);
> >> +		netdev_unlock(netdev);
> >>  
> >> -	if (if_running && !test_and_set_bit(ICE_VSI_DOWN, uplink_vsi->state))
> >> -		if (ice_down(uplink_vsi))
> >> +		if (ret)
> >>  			return -ENODEV;
> >> +	}
> > 
> > Simon says: It seems that the topic of locks in this patch has come up
> >             again ¯\_(ツ)_/¯
> > 
> > Does manipulating the state bit outside of netdev_lock create a race
> > condition with interface teardown?
> > 
> > If the interface is concurrently brought down, ndo_stop (which holds
> > netdev_lock) would call ice_vsi_close(). Because ICE_VSI_DOWN is already
> > set by the test_and_set_bit() call above, ice_vsi_close() would skip calling
> > ice_down() and immediately proceed to free the Tx/Rx rings.
> > 
> > This would leave the hardware queues active and performing DMA operations into
> > freed memory, potentially causing a use-after-free.
> 
> I ran Sashiko internally a couple times and it hasn't found these =\
> 
> Anyway, now that I anyway need to adjust the series after
> .ndo_set_rx_mode_asyn() landed, I'll take a look at this, too.
> 
> (I hate this series already. I feel like if Sashiko was alive when other
>  vendors were switching to the netdev lock, they'd have the same drama)

Life is certainly different with Sashiko.
No question about it.

> 
> (I was planning to add devmem/io_uring support to idpf after this lands,
>  but given that idpf is way more confusing and inconsistent in locking,
>  I'm not sure I'll have enough patience :D)
> 
> Thanks,
> Olek
