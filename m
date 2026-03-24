Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHmIDlQAw2nRngQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 22:21:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23ED331CCA1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 22:21:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3E42410BD;
	Tue, 24 Mar 2026 21:21:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3GJkwEnE6f2F; Tue, 24 Mar 2026 21:21:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39352413E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774387281;
	bh=HC6UnGTha55WhSG2IaiLgrKfIV4tJkaDLEE3yoCmMtw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a821xXln+zVZf96XAbv55jlqTFF5jSaVwsIKWZ1Uub7MUUQ7G4X3i+UAtsn1oGap0
	 8668MPUcn+tUwxsqLmD9kgbDkZB0cLQIw8ZBMgfMjXzFc6+rYFy/JslXdM56D4AE/2
	 YRU+Lh+EKPHIS+p/g3ew9SjGfLthyVcXhIEE6TUWgn29YorZyUgCAgwZMffvBk9Go2
	 tmJysjyZVLg/uvFLXJvUyk/KEp6u1LrHUGMwwE5c9ERNQbKoushC5NYUhOTzSU3Fb/
	 0gEmaNUXZu/3+hCYmIiIcTMojoguWchz//o0o9XfzMjITcnKgy3cTTuDqiSLQbOtmw
	 +bfFpRGhqtSEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39352413E9;
	Tue, 24 Mar 2026 21:21:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F0FC1D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 21:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 34D0E83CF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 21:21:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WlJMXBJeHFxv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 21:21:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 564BF83518
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 564BF83518
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 564BF83518
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 21:21:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3C49D600C4;
 Tue, 24 Mar 2026 21:21:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 467E9C19424;
 Tue, 24 Mar 2026 21:21:15 +0000 (UTC)
Date: Tue, 24 Mar 2026 14:21:14 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stanislav Fomichev <stfomichev@gmail.com>
Cc: Stanislav Fomichev <sdf@fomichev.me>, netdev@vger.kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 horms@kernel.org, corbet@lwn.net, skhan@linuxfoundation.org,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, saeedm@nvidia.com, tariqt@nvidia.com,
 mbloch@nvidia.com, alexanderduyck@fb.com, kernel-team@meta.com,
 johannes@sipsolutions.net, sd@queasysnail.net, jianbol@nvidia.com,
 dtatulea@nvidia.com, mohsin.bashr@gmail.com, jacob.e.keller@intel.com,
 willemb@google.com, skhawaja@google.com, bestswngs@gmail.com,
 aleksandr.loktionov@intel.com, kees@kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kselftest@vger.kernel.org, leon@kernel.org
Message-ID: <20260324142114.216fcb01@kernel.org>
In-Reply-To: <acLUMN1BYkIVyOk8@mini-arch>
References: <20260320012501.2033548-1-sdf@fomichev.me>
 <20260320012501.2033548-4-sdf@fomichev.me>
 <20260323162003.0d155055@kernel.org> <acLUMN1BYkIVyOk8@mini-arch>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774387276;
 bh=bN+zpILDmRdAJyoSgSd6M94WASWO6vtvLneiqPi/Tak=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GPxpDeHTRLLHKaMrMRhB7HRNMR0vz+D407bx9zvLOnTJbqqZwfjcVWSbRqeltmaXk
 U/jc0OvHw29QxROpi7/KR2iQfy/gTs99qOAsWHMNeSNW7mXTytQfOeJ0JePeYl8+9Y
 GCQH2vtDTDe2fFdbFORXB7fmH9UwxKQz+2+rkstQ76DtCwx8tGXeTwO6ll7Vhv3WP/
 PiD5yKwuyY3uLecx7KaywivjQshWNbFzJTYidBNzpT0X1/j9v+mpkubUwomd5VxAyV
 i1ek+xmL0NpeY5k6srstmCNWYqifsJse7cXPJHy5VEo72hxrqBILALL0I1HJo7XGsI
 esc9q6V430cAQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GPxpDeHT
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 03/13] net: introduce
 ndo_set_rx_mode_async and dev_rx_mode_work
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:stfomichev@gmail.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:aleksandr.loktionov@intel.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[fomichev.me,vger.kernel.org,davemloft.net,google.com,redhat.com,kernel.org,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,lists.osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[37];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 23ED331CCA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 24 Mar 2026 11:13:04 -0700 Stanislav Fomichev wrote:
> > > +		netif_addr_lock_bh(dev);
> > > +
> > > +		err = __hw_addr_list_snapshot(&uc_snap, &dev->uc,
> > > +					      dev->addr_len);
> > > +		if (!err)
> > > +			err = __hw_addr_list_snapshot(&uc_ref, &dev->uc,
> > > +						      dev->addr_len);
> > > +		if (!err)
> > > +			err = __hw_addr_list_snapshot(&mc_snap, &dev->mc,
> > > +						      dev->addr_len);
> > > +		if (!err)
> > > +			err = __hw_addr_list_snapshot(&mc_ref, &dev->mc,
> > > +						      dev->addr_len);  
> > 
> > This doesn't get slow with a few thousands of addresses?  
> 
> I can add kunit benchmark and attach the output? Although not sure where
> to go from that. The alternative to this is allocating an array of entries.
> I started with that initially but __hw_addr_sync_dev wants to kfree the
> individual entries and I decided not to have a separate helpers to
> manage the snapshots.

Let's see what the benchmark says. Hopefully it's fast enough and 
we don't have to worry. Is keeping these lists around between the
invocations of the work tricky?

> > Can we give the work a reference on the netdev (at init time) and
> > cancel + release it here instead of flushing / waiting?  
> 
> Not sure why cancel+release, maybe you're thinking about the unregister
> path? This is rtnl_unlock -> netdev_run_todo -> __rtnl_unlock + some
> extras.
> 
> And the flush is here to plumb the addresses to the real devices
> before we return to the callers. Mostly because of the following
> things we have in the tests:
> 
> # TEST: team cleanup mode lacp                                        [FAIL]
> #       macvlan unicast address not found on a slave
> 
> Can you explain a bit more on the suggestion?

Oh, I thought it's here for unregister! Feels like it'd be cleaner to
add the flush in dev_*c_add() and friends? How hard would it be to
identify the callers in atomic context?

> > >  	/* Wait for rcu callbacks to finish before next phase */
> > >  	if (!list_empty(&list))
> > >  		rcu_barrier();
> > > @@ -12099,6 +12173,7 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
> > >  #endif
> > >  
> > >  	mutex_init(&dev->lock);
> > > +	INIT_WORK(&dev->rx_mode_work, dev_rx_mode_work);
> > >  
> > >  	dev->priv_flags = IFF_XMIT_DST_RELEASE | IFF_XMIT_DST_RELEASE_PERM;
> > >  	setup(dev);
> > > @@ -12203,6 +12278,8 @@ void free_netdev(struct net_device *dev)
> > >  
> > >  	kfree(rcu_dereference_protected(dev->ingress_queue, 1));
> > >  
> > > +	cancel_work_sync(&dev->rx_mode_work);  
> > 
> > Should never happen so maybe wrap it in a WARN ?  
> 
> Or maybe just flush_workqueue here as well? To signal the intent that we
> are mostly waiting for the wq entry to be unused to be able to kfree it?
> 

