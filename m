Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KazOTORlGk9FgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 17:02:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE9614DD3F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Feb 2026 17:02:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D2C541B8B;
	Tue, 17 Feb 2026 16:02:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9opygdRI6VzF; Tue, 17 Feb 2026 16:02:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1AC041B87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771344170;
	bh=Z1wQylsFKpCWxfjELdrXsCCpGoyQpDAtFW4GOvcR7ko=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yi09U1FZp7XtMiimLkJ9D/mg9iYtViHKbZWXuzqkupUlYD/YYG80nPwkpaBzxuWn0
	 9I3HgW7GB7BQN+TVES9INvFUdY7rcwqgDVHXpftoZcnDeDdCmaWVMSe63dKKhlfFzX
	 FO8wCBB945ymWzudoJjVAIvbPTlBvRk1UOKR99Yg4PAxrTsYoRdEifBKn2jVKp53UT
	 6OHHQM0pa+gJwJhLNDy3TpsEBovC5qzmTVMPBf0fR70HpwJMru0xzxucvdQJYV28zC
	 v/LKpTZFEUzcW+qNKGb8W4UqAsG/STBwgMQdsWpm/NmVSnqVsKWKJSEbSPpXYSdz1G
	 ZKNHC8iRjF62g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1AC041B87;
	Tue, 17 Feb 2026 16:02:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 624DA1EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 16:02:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53A1B613ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 16:02:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4jIpySOPOl6Y for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Feb 2026 16:02:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B4A13613EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4A13613EA
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B4A13613EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 16:02:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0363843AA6;
 Tue, 17 Feb 2026 16:02:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11AAEC4CEF7;
 Tue, 17 Feb 2026 16:02:44 +0000 (UTC)
Date: Tue, 17 Feb 2026 16:02:42 +0000
From: Simon Horman <horms@kernel.org>
To: Kohei Enju <kohei@enjuk.jp>
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jedrzej.jagielski@intel.com, kohei.enju@gmail.com, kuba@kernel.org,
 mateusz.palczewski@intel.com, netdev@vger.kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com,
 przemyslawx.patynowski@intel.com, witoldx.fijalkowski@intel.com
Message-ID: <aZSRIh9Xz2q-PUaS@horms.kernel.org>
References: <aZMZTTXWtIO1ERpm@horms.kernel.org>
 <20260216144457.19871-1-kohei@enjuk.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260216144457.19871-1-kohei@enjuk.jp>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771344167;
 bh=hBEexpGsozqVjbTeslIcUOnyqc3sUtF0rSAocoEUWZI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=skTtScccmxAYc2fCV+llebuSnOH0aXB4HxnnZnEdamb3UR4gG7gtAWvMYoM4UbX5W
 uoCLUNq72Uf9ekmy60e8THR8p4Et9zHIZGJT7U4B9b468gkj0hziBJr7x7ZoyADwVf
 wyZay0v3Dzc0aV6Z7V8di1muRnRxXfndBhV/i2K8gO/Dkucu6yS/6iGN1LU5lFJ0k7
 J06TWLNb5PazNbXpOA3V0zZnO5f0oiwHLsw8sWXoYWPATqrUKNpbKdhGnn5ob175M5
 uOUxH7CPsX48s7FFKEj+iBEyzwmnIpjxP7ZXYBN4bO58+smjmbgHMVZ/Hl56LpNBiu
 eajpvZjA5EffQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=skTtSccc
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] iavf: fix out-of-bounds
 writes in iavf_get_ethtool_stats()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN_FAIL(0.00)[137.166.211.140.asn.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:jedrzej.jagielski@intel.com,m:kohei.enju@gmail.com,m:kuba@kernel.org,m:mateusz.palczewski@intel.com,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:przemyslawx.patynowski@intel.com,m:witoldx.fijalkowski@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lunn.ch,intel.com,davemloft.net,google.com,lists.osuosl.org,gmail.com,kernel.org,vger.kernel.org,redhat.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,horms.kernel.org:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 1AE9614DD3F
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 02:44:57PM +0000, Kohei Enju wrote:
> On Mon, 16 Feb 2026 13:19:09 +0000, Simon Horman wrote:
> 
> > > @@ -345,19 +344,19 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
> > >  	iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);
> > >  
> > >  	rcu_read_lock();
> > > -	/* As num_active_queues describe both tx and rx queues, we can use
> > > -	 * it to iterate over rings' stats.
> > > +	/* Use num_tx_queues to report stats for the maximum number of queues.
> > > +	 * Queues beyond num_active_queues will report zero.
> > >  	 */
> > > -	for (i = 0; i < adapter->num_active_queues; i++) {
> > > -		struct iavf_ring *ring;
> > > +	for (i = 0; i < netdev->num_tx_queues; i++) {
> > > +		struct iavf_ring *tx_ring = NULL, *rx_ring = NULL;
> > >  
> > > -		/* Tx rings stats */
> > > -		ring = &adapter->tx_rings[i];
> > > -		iavf_add_queue_stats(&data, ring);
> > > +		if (i < adapter->num_active_queues) {
> > 
> > Hi Enju-san,
> 
> Hi Horman-san, thank you for reviewing!
> 
> > 
> > If I understand things correctly, in the scenario described in the patch
> > description, num_active_queues will be 8 here.
> 
> Yes.
> 
> > 
> > Won't that result in an overflow?
> 
> I think it won't overflow.
> 
> In Thread 1, iavf_set_channels(), which allocates {tx,rx}_rings and
> updates num_active_queues, is executed under netdev lock. Therefore
> Thread 3, which is also executed under the netdev lock, sees updated
> num_active_queues and {tx,rx}_rings.
> 
> The scenario flow lacked netdev_(un)lock, my bad.
> 
> Thread 1 (ethtool -L)       Thread 2 (work)        Thread 3 (ethtool -S)
> netdev_lock()
> iavf_set_channels()
> ...
> iavf_alloc_queues()
> -> alloc {tx,rx}_rings
> -> num_active_queues = 8
> iavf_schedule_finish_config()
> netdev_unlock()
>                                                    netdev_lock()
>                                                    iavf_get_sset_count()
>                                                    real_num_tx_queues: 1
>                                                    -> buffer for 1 queue
>                                                    iavf_get_ethtool_stats()
>                                                    num_active_queues: 8
>                                                    -> out-of-bounds!
>                                                    netdev_unlock()
>                             iavf_finish_config()
>                             netdev_lock()
>                             -> real_num_tx_queues = 8
>                             netdev_unlock()

Thanks, and sorry for missing that the first time around.
With that clarified in my mind this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

