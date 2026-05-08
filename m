Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGWqN3ez/WkXhwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 11:57:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 611F34F4933
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 11:57:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 644B4615B9;
	Fri,  8 May 2026 09:57:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dMuQ767Gr_1b; Fri,  8 May 2026 09:57:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2A24615B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778234228;
	bh=/WQPCH8rZZqCoWypgRIbKlEQrHxknclHn7hdoUhbb+0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DnozxMP3BMVFrOTmGUGYo0Ed9QT6XSEwfEAyCWXWSF++g3lVkiJV1zgig40DDFUH6
	 iObiEl6exMFU7CjsQK7uavy7Noh1S/8VjAWqyMSF/nA7fRlLRTgxbzxIZXdQngRz+A
	 RJ57tLbXn3+z3yZYN+OpAnfDnDz8R07qlh6ILA+TDrqtjItbsPYJmLG4DSO+OYiuoK
	 5EuWpjFbJxy9WZ8KHqFA1nMhDARdrbzTH1Lb6FAMWC4wepUcZQbYh5DA2/0wnXDa/L
	 YbGL5UsLhH3atpWPpe+5XNQURPsMkFy/H0l+9BsTq56wF1gvNRzibbtu1DOT1rwtVo
	 MHeCivJUfQKcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D2A24615B6;
	Fri,  8 May 2026 09:57:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5B562358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 09:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 415D561597
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 09:57:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YecAysLadmku for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 09:57:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 71D1C61565
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71D1C61565
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 71D1C61565
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 09:57:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C2A3E600AE;
 Fri,  8 May 2026 09:57:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B22CEC2BCB0;
 Fri,  8 May 2026 09:57:01 +0000 (UTC)
Date: Fri, 8 May 2026 10:56:59 +0100
From: Simon Horman <horms@kernel.org>
To: Felix Moessbauer <felix.moessbauer@siemens.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "Yan, Zheng" <zheng.z.yan@intel.com>, netdev@vger.kernel.org,
 vivek.behera@siemens.com, "Ertman, David M" <david.m.ertman@intel.com>,
 Sasha Neftin <sasha.neftin@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20260508095659.GM15617@horms.kernel.org>
References: <20260505101141.2657169-1-felix.moessbauer@siemens.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260505101141.2657169-1-felix.moessbauer@siemens.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778234224;
 bh=+NwiAjp9LkJwoEi3vGKUBZNVBjuSw+dVpFIiee9Ye9c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EdWPPXrL7pED8iv6835crYgOH6/eyXoe07Tf6JwRZ28D2ddwZu7UNIqV1PGrOwQEv
 sDc9PKi0mbl8QinlsmIDvy6OF7QRNBsJbUu2vQqCuuSFucKCK4d57Cfc/BU83kMJ3P
 pCgbiOHejrdtevNMIt1byNhGCmvBmBFjObIWOVl14jq2o/MZgRjQfhHIh/pRHWyPmY
 byJVgjZ1RVF0hJwEadxPlIhPr3QG+/Pe1VbYE2VIjIqeDTf2BvkazysNqZ6I+/tfLk
 wnlPdVNTNwKecaFB0zL7jDQlxdNX7auz9lwjJgK3vGOsJ6qpAmQeY6v43Jmo7OF4K9
 p7bvYpn+GEDUA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=EdWPPXrL
Subject: Re: [Intel-wired-lan] [PATCH net 1/1] igb: Return state in
 pm_runtime_idle instead of power-down
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
X-Rspamd-Queue-Id: 611F34F4933
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,vger.kernel.org,siemens.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[siemens.com:email,horms.kernel.org:mid];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:felix.moessbauer@siemens.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:zheng.z.yan@intel.com,m:netdev@vger.kernel.org,m:vivek.behera@siemens.com,m:david.m.ertman@intel.com,m:sasha.neftin@intel.com,m:hkallweit1@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

+ David Ertman, Sasha Neftin, Heiner Kallweit

On Tue, May 05, 2026 at 12:11:34PM +0200, Felix Moessbauer wrote:
> The PM runtime_idle API expects to get an indication if the device can
> be powered down. Instead of returning the appropriate state, we
> currently directly power down the device (if not active) and return
> that the device is busy.
> 
> We change this by making the function side-effect free and just return
> the state.
> 
> Fixes: 749ab2cd12704 ("igb: add basic runtime PM support")
> Signed-off-by: Felix Moessbauer <felix.moessbauer@siemens.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index ce91dda00ec0e..e8ab0b506a104 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -9652,7 +9652,7 @@ static int igb_runtime_idle(struct device *dev)
>  	struct igb_adapter *adapter = netdev_priv(netdev);
>  
>  	if (!igb_has_link(adapter))
> -		pm_schedule_suspend(dev, MSEC_PER_SEC * 5);
> +		return 0;
>  
>  	return -EBUSY;
>  }

Hi Felix,

I am not sure this is the right approach, are you seeing a behavioural
problem?


This pattern seems to also be present in at least e1000e, igc and r8169.

The igb and e1000e implementations seem to have co-evolved [1][2],
possibly in conjunction with OOT versions of each driver.
The igc implementation came later, perhaps copying e1000e or igb [3].

The git log for r8169 seems to provide a justification for why that
driver users this approach [4].

    - Let the idle notification check whether we can suspend and let it
      schedule the suspend. This way we don't need to have calls to
      pm_schedule_suspend in different places.

While the current e1000e implementation seems to address some reliability
issues [1], although it's not entirely clear to me how that relates to the
issue at hand.

    Fix issues with:
    RuntimePM causing the device to repeatedly flip between suspend and resume
    with the interface administratively downed.
    Having RuntimePM enabled interfering with the functionality of Energy
    Efficient Ethernet.

    Added checks to disallow functions that should not be executed if the
    device is currently runtime suspended

    Make runtime_idle callback to use same deterministic behavior as the igb
    driver.

[1] 63eb48f151b5 ("e1000e Refactor of Runtime Power Management")
    Fri Feb 14 07:16:46 2014 +0000
[2] 749ab2cd1270 ("igb: add basic runtime PM support")
    Wed Jan 4 20:23:37 2012 +0000
[3] 9513d2a5dc7f ("igc: Add legacy power management support")
    Thu Nov 14 09:54:46 2019 +020
[4] a92a08499b1f ("r8169: improve runtime pm in general and suspend unused ports")
    Mon Jan 8 21:39:13 2018 +0100
