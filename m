Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAAiH9BclWmsPgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 07:31:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6541536F4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 07:31:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D8516075D;
	Wed, 18 Feb 2026 06:31:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nkR6ug0jmDFA; Wed, 18 Feb 2026 06:31:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DC4660752
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771396300;
	bh=KsvKsqG0ZGQHHD8pKdr61ytdZ0EagShQ8nJeP8O0BRI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TR721stN8KGWvJt21Vibg0DKVVR1+GBoK55Iar+Yd/qHEy2k9SNzMSUvlCv115tQS
	 fPs+91xwt2dgmkqXGb2zNvhBS3ZDHOhrmxfyGm1sVYw5KoniFcDLP64/Q/AYoC5iCU
	 uAzZkYwwihAvklmCLZY87pTSS2wiv6nRiSM4xjEgjsPf4CMVicHmd8TUF2alg4TWQO
	 g4rKb9okWYaJAUKREWH3QD6huZkJwlwDiYn/9FJai+r2zQADjIunf9iy51jFIXfgfj
	 ri2yek2kj9R57QM9l61keOW8m6w5Sw/4/t/EWNaXK2jgV/3E8YbDzubJtGS9+YnS9j
	 Dn/6T8Zbx1MBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6DC4660752;
	Wed, 18 Feb 2026 06:31:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6DB58270
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 06:31:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5368280F4F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 06:31:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id si0fpRJ-iUcm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Feb 2026 06:31:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1A2EC80F4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A2EC80F4B
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A2EC80F4B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Feb 2026 06:31:36 +0000 (UTC)
Received: from ms-a2 (54.52.30.125.dy.iij4u.or.jp [125.30.52.54])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 61I6V3kH014987
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 18 Feb 2026 15:31:04 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: przemyslaw.kitszel@intel.com
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jedrzej.jagielski@intel.com, kohei.enju@gmail.com, kohei@enjuk.jp,
 kuba@kernel.org, netdev@vger.kernel.org, pabeni@redhat.com
Date: Wed, 18 Feb 2026 06:31:03 +0000
Message-ID: <20260218063103.10265-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <234a3e23-590e-4e55-a242-41a2fb377d22@intel.com>
References: <234a3e23-590e-4e55-a242-41a2fb377d22@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=KsvKsqG0ZGQHHD8pKdr61ytdZ0EagShQ8nJeP8O0BRI=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1771396265; v=1;
 b=CXHyHB7F2w+xJag89PIZ6Vk+5kghA6Oa9FP/3B382Ws2eYUMhFZ/HuStNEsB0KpZ
 oXr8PjSG+BOZ9hrbYzQOZrHO8vYp+AhPz7b/bG5yctf1n0/5da8kvN5rcnTBdSQk
 jjskegzia4/xLac5lJEJWDcbJlOiYQ7cuoaPSjz6Z5cER1nHC5pJqmtGG+RotAUm
 z5KKMNyNVYM7MMXlYeoYrq/H3EGI+OKo8AwOA7E3IPUAEi+lzulCjWwmnq3pBpiC
 pSpNY3D+CF7Nv8hiroqcx1EHVjjqFJCNW1nGusut9h9PA/dWFKmdrP24psp6BcpP
 J0PdnuE72nrLC973NPT51Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=CXHyHB7F
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
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:jedrzej.jagielski@intel.com,m:kohei.enju@gmail.com,m:kohei@enjuk.jp,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:mid,enjuk.jp:email,osuosl.org:dkim,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 4A6541536F4
X-Rspamd-Action: no action

On Wed, 18 Feb 2026 06:39:43 +0100, Przemek Kitszel wrote:

> On 2/14/26 20:14, Kohei Enju wrote:
> > iavf incorrectly uses real_num_tx_queues for ETH_SS_STATS. Since the
> > value could change in runtime, we should use num_tx_queues instead.
> > 
> 
> [...]
> 
> > Use immutable num_tx_queues in all related functions to avoid the issue.
> > 
> > [1]
> >   BUG: KASAN: vmalloc-out-of-bounds in iavf_add_one_ethtool_stat+0x200/0x270
> 
> [...]
> 
> Thank you very much Enju-san,
> this is a nice improvement!
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Side note: I'm working on enabling 256 queues for iavf, what means

Cool, and thank you for reviewing!

> changing the reported max number of queues, what finally means screens
> of zero stats printed, unfortunate, but better be correct that pretty ;)

Indeed.

> 
> > 
> > Fixes: 64430f70ba6f ("iavf: Fix displaying queue statistics shown by ethtool")
> > Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> > ---
> >   .../net/ethernet/intel/iavf/iavf_ethtool.c    | 31 +++++++++----------
> >   1 file changed, 15 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> > index 6ff3842a1ff1..98bec3afc200 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> > @@ -313,14 +313,13 @@ static int iavf_get_sset_count(struct net_device *netdev, int sset)
> >   {
> >   	/* Report the maximum number queues, even if not every queue is
> >   	 * currently configured. Since allocation of queues is in pairs,
> > -	 * use netdev->real_num_tx_queues * 2. The real_num_tx_queues is set
> > -	 * at device creation and never changes.
> > +	 * use netdev->num_tx_queues * 2. The num_tx_queues is set at
> > +	 * device creation and never changes.
> >   	 */
> >   
> >   	if (sset == ETH_SS_STATS)
> >   		return IAVF_STATS_LEN +
> > -			(IAVF_QUEUE_STATS_LEN * 2 *
> > -			 netdev->real_num_tx_queues);
> > +		       (IAVF_QUEUE_STATS_LEN * 2 * netdev->num_tx_queues);
> >   	else
> >   		return -EINVAL;
> >   }
> > @@ -345,19 +344,19 @@ static void iavf_get_ethtool_stats(struct net_device *netdev,
> >   	iavf_add_ethtool_stats(&data, adapter, iavf_gstrings_stats);
> >   
> >   	rcu_read_lock();
> > -	/* As num_active_queues describe both tx and rx queues, we can use
> > -	 * it to iterate over rings' stats.
> > +	/* Use num_tx_queues to report stats for the maximum number of queues.
> > +	 * Queues beyond num_active_queues will report zero.
> 
> <rambling>
> zeroing inactive stats is bad behavior, not introduced by you of course, 
> but worth to fix (as a followup, not necessarily by you)

I agree.

> 
> unrelated to the prev paragraph,
> even if we remove explicit = 0 from the driver, ethtool userspace will
> still print (lots of) zeroes for "under-reported" stats, thanks to
> multi-syscall stats retrieval, that could be "fixed" in ethtool, but
> perhaps does not matter, as users use wrappers anyway
> </rambling>

The root cause of the OOB this time is that iavf_get_sset_count() uses
real_num_tx_queues for allocating buffers, and iavf_get_ethtool_stats()
uses num_active_queues for writing [1].

This may warrant more thought, but I was thinking that using
num_active_queues in all related functions would also be acceptable.

That's because, thanks to netdev_lock(), we can ensure num_active_queues
is unchanged within each ioctl call (ETHTOOL_GSSET_INFO,
ETHTOOL_GSTRINGS, ETHTOOL_GSTATS).
In other words, num_active_queues is effectively immutable for the
duration of a single ioctl, avoiding OOB.

[1] 
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
