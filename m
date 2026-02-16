Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFuIGpQtk2mZ2AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 15:45:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61970144CB2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Feb 2026 15:45:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C24160B9B;
	Mon, 16 Feb 2026 14:45:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OL8fj_zQe9Iv; Mon, 16 Feb 2026 14:45:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2BDB60BA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771253136;
	bh=5bCpWiEp9VW4lJCKmXR8/tiro6CGPU2d80FCuwGyxp4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EeudodlKPTVo6DC9XeoHk2rCmym2DXBN8AXMzZD5KrkTBKGJ5BvQp7ezv5OJUuPpp
	 UC0UbsBz3ZhIxa6PhZmAEhzxDp93HQx4MbvPH4O1fG6f21dQ2GDPC/6QsAoNctU/ur
	 Qj1naIPXmV/vLsXBAw9RLkI6r5qzA+FF38gaN63EU9oioRY5ACoCFRSkBXa6VxOMGw
	 aJD86eCqm29MvnxPZIMt0yuuHs3LfpGVBsqveqxZWCuc3XvznuIQliWxaC1n2/24mw
	 OC/+QHFwBW9f+9XewZpBFt7oVRs8CH5Ss0OxG9V3e6w2TC+vJzzvAd25NLg9qnzCoN
	 pdKqOtre6PzPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2BDB60BA4;
	Mon, 16 Feb 2026 14:45:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 036DF270
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 14:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB3D181545
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 14:45:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gfFQ7ctzmacW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Feb 2026 14:45:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8E0598191E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E0598191E
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E0598191E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Feb 2026 14:45:33 +0000 (UTC)
Received: from ms-a2 (211.4.31.150.dy.iij4u.or.jp [150.31.4.211])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 61GEivIf039544
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 16 Feb 2026 23:44:58 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: horms@kernel.org
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jedrzej.jagielski@intel.com, kohei.enju@gmail.com, kohei@enjuk.jp,
 kuba@kernel.org, mateusz.palczewski@intel.com, netdev@vger.kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com,
 przemyslawx.patynowski@intel.com, witoldx.fijalkowski@intel.com
Date: Mon, 16 Feb 2026 14:44:57 +0000
Message-ID: <20260216144457.19871-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <aZMZTTXWtIO1ERpm@horms.kernel.org>
References: <aZMZTTXWtIO1ERpm@horms.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=5bCpWiEp9VW4lJCKmXR8/tiro6CGPU2d80FCuwGyxp4=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1771253098; v=1;
 b=uk0EZKepyhoHCuCSYFHOAEXm3SaFQfKqYZwpfRbilHzr5nML3QJXHKYbBNkpCPKi
 b3lcq+F+L/ISLXFyxcb2ADT300oOk5I7ZtLU26mSj5RqtUnNAtKTfk+DlzJy2BWI
 ML5EZZC3pykXxc+u/A6C+3LNW4dShQrIfPi7l5wP7B06UvTa+4MYRc5NBGoe2jYj
 BCpkhKYn+mPjw7HMyed/pag/uSgCku6pLstqihuzHh58nyjmENdhpRIu5TChXt7z
 yTykj11LKe3vtjTxXeaSJ3y+eWQSJ0rfvF2qbwALdu+/PGJp2wvdwFKCdu737HyL
 W8k1OOIyAq3zr2YOerIP7Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=uk0EZKep
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
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:jedrzej.jagielski@intel.com,m:kohei.enju@gmail.com,m:kohei@enjuk.jp,m:kuba@kernel.org,m:mateusz.palczewski@intel.com,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:przemyslawx.patynowski@intel.com,m:witoldx.fijalkowski@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,intel.com,davemloft.net,google.com,lists.osuosl.org,gmail.com,enjuk.jp,kernel.org,vger.kernel.org,redhat.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:mid,osuosl.org:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 61970144CB2
X-Rspamd-Action: no action

On Mon, 16 Feb 2026 13:19:09 +0000, Simon Horman wrote:

> > @@ -345,19 +344,19 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
> >  	iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);
> >  
> >  	rcu_read_lock();
> > -	/* As num_active_queues describe both tx and rx queues, we can use
> > -	 * it to iterate over rings' stats.
> > +	/* Use num_tx_queues to report stats for the maximum number of queues.
> > +	 * Queues beyond num_active_queues will report zero.
> >  	 */
> > -	for (i = 0; i < adapter->num_active_queues; i++) {
> > -		struct iavf_ring *ring;
> > +	for (i = 0; i < netdev->num_tx_queues; i++) {
> > +		struct iavf_ring *tx_ring = NULL, *rx_ring = NULL;
> >  
> > -		/* Tx rings stats */
> > -		ring = &adapter->tx_rings[i];
> > -		iavf_add_queue_stats(&data, ring);
> > +		if (i < adapter->num_active_queues) {
> 
> Hi Enju-san,

Hi Horman-san, thank you for reviewing!

> 
> If I understand things correctly, in the scenario described in the patch
> description, num_active_queues will be 8 here.

Yes.

> 
> Won't that result in an overflow?

I think it won't overflow.

In Thread 1, iavf_set_channels(), which allocates {tx,rx}_rings and
updates num_active_queues, is executed under netdev lock. Therefore
Thread 3, which is also executed under the netdev lock, sees updated
num_active_queues and {tx,rx}_rings.

The scenario flow lacked netdev_(un)lock, my bad.

Thread 1 (ethtool -L)       Thread 2 (work)        Thread 3 (ethtool -S)
netdev_lock()
iavf_set_channels()
...
iavf_alloc_queues()
-> alloc {tx,rx}_rings
-> num_active_queues = 8
iavf_schedule_finish_config()
netdev_unlock()
                                                   netdev_lock()
                                                   iavf_get_sset_count()
                                                   real_num_tx_queues: 1
                                                   -> buffer for 1 queue
                                                   iavf_get_ethtool_stats()
                                                   num_active_queues: 8
                                                   -> out-of-bounds!
                                                   netdev_unlock()
                            iavf_finish_config()
                            netdev_lock()
                            -> real_num_tx_queues = 8
                            netdev_unlock()

> 
> > +			tx_ring = &adapter->tx_rings[i];
> > +			rx_ring = &adapter->rx_rings[i];
> > +		}
> >  
> > -		/* Rx rings stats */
> > -		ring = &adapter->rx_rings[i];
> > -		iavf_add_queue_stats(&data, ring);
> > +		iavf_add_queue_stats(&data, tx_ring);
> > +		iavf_add_queue_stats(&data, rx_ring);
> >  	}
> >  	rcu_read_unlock();
> >  }
> 
> ...
