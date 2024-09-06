Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA5B96E746
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 03:25:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D406140902;
	Fri,  6 Sep 2024 01:25:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Id9iov8ZUsij; Fri,  6 Sep 2024 01:25:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 642E740908
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725585929;
	bh=QoDzFM0bfO/fKAgucyi0mTTN/nB7hiJl3qks6x7Nj1c=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4xPlyNEFJ/J5WmnDL85c2EIeoBQSJbDQ9+SQ+qdPMpDq9dSZlcK/52PToFTiQrsE1
	 TdEauJEBLhg7lAEao2CdjhCyJO39HuSLzoo7z+N+H3IyWNuL4GskrFic1QAaDjUlcm
	 tcgD8SKHQxOOzHdiaXoy+6g9sKLVoEwQ3J9oCVMvstPH4K8aRgBn4hcw+dwJlEU/oj
	 QKMhKAXmpm+nwjd2gEutjpiKBUmoWlGLNzEcna2M8n4QZR0+MfRCgo+mP5fwdwFr/d
	 ph65To4wn+c5bPkNVtuxfLxrPmORCs22xEd8N49gz8q9/1i8O4NqKL8asSlG7BtXEr
	 7bxsKSVyBF0IA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 642E740908;
	Fri,  6 Sep 2024 01:25:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 849561BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 01:25:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22B0840242
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 01:25:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6eJZxsjsBt1X for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 01:25:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 04153400DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04153400DA
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 04153400DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 01:25:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 3A524A444E3;
 Fri,  6 Sep 2024 01:25:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79C30C4CEC3;
 Fri,  6 Sep 2024 01:25:22 +0000 (UTC)
Date: Thu, 5 Sep 2024 18:25:21 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240905182521.2f9f4c1c@kernel.org>
In-Reply-To: <8fba5626-f4e0-47c3-b022-a7ca9ca1a93f@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
 <160421ccd6deedfd4d531f0239e80077f19db1d0.1725457317.git.pabeni@redhat.com>
 <20240904183329.5c186909@kernel.org>
 <8fba5626-f4e0-47c3-b022-a7ca9ca1a93f@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725585923;
 bh=P6bXWKTaCR/pN+LWeUeLyDHVBJzI92h7jxSDlvKveRg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SHFyVXFPMvi5IWC8kQmNeTEDvYiGsi6+8v5zJkRC4i2X2qZUrbJob4Bd6BuvALjIc
 DQaO7cb2WcmEEDrizwKEDCnzLYAVQ6kbb6IsfYjoFx7CcGSSIbGjo61c9siOlV3fDb
 J9XfasikF8adixh6EIetrqadgC9WVTlF6n9nNBTQ/B8tVDZRlr0tqJgvyeYUvVLIdH
 HMLgPN7iY4A35TXxYYtZfGCq6JhvwNfWr3pyH4be1q5O/xF/bQUhCqrL+AdUnqqRkA
 ad7I8dCuqHG3YNGJuB7zPDQA39yqExr+0KkhH8rtcysIg0P+oELUFpq0fJJbF3Jdxf
 q/uHaUIUBVStA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=SHFyVXFP
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 07/15] net-shapers:
 implement shaper cleanup on queue deletion
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 5 Sep 2024 20:02:38 +0200 Paolo Abeni wrote:
> > The dev->lock has to be taken here, around those three lines,
> > and then set / group must check QUEUE ids against
> > dev->real_num_tx_queues, no? Otherwise the work
> > net_shaper_set_real_num_tx_queues() does is prone to races?  
> 
> Yes, I think such race exists, but I'm unsure that tacking the lock 
> around the above code will be enough.

I think "enough" will be subjective. Right now patch 7 provides no real
guarantee.

> i.e. if the relevant devices has 16 channel queues the set() races with 
> a channel reconf on different CPUs:
> 
> CPU 1						CPU 2
> 
> set_channels(8)
> 
> driver_set_channel()
> // actually change the number of queues to
> // 8, dev->real_num_tx_queues is still 16
> // dev->lock is not held yet because the
> // driver still has to call
> // netif_set_real_num_tx_queues()
> 						set(QUEUE_15,...)
> 						// will pass validation
> 						// but queue 15 does not
> 						// exist anymore

That may be true - in my proposal the driver can only expect that once
netif_set_real_num_tx_queues() returns core will not issue rate limit
ops on disabled queues. Driver has to make sure rate limit ops for old
queues are accepted all the way up to the call to set_real and ops for
new queues are accepted immediately after.

Importantly, the core's state is always consistent - given both the
flushing inside net_shaper_set_real_num_tx_queues() and proposed check
would be under netdev->lock.

For the driver -- let me flip the question around -- what do you expect
the locking scheme to be in case of channel count change? Alternatively
we could just expect the driver to take netdev->lock around the
appropriate section of code and we'd do:

void net_shaper_set_real_num_tx_queues(struct net_device *dev, ...)
{
	...
	if (!READ_ONCE(dev->net_shaper_hierarchy))
		return;

	lockdep_assert_held(dev->lock);
	...
}

I had a look at iavf, and there is no relevant locking around the queue
count check at all, so that doesn't help..

> Acquiring dev->lock around set_channel() will not be enough: some driver 
> change the channels number i.e. when enabling XDP.

Indeed, trying to lock before calling the driver would be both a huge
job and destined to fail.

> I think/fear we need to replace the dev->lock with the rtnl lock to 
> solve the race for good.

Maybe :( I think we need *an* answer for:
 - how we expect the driver to protect itself (assuming that the racy
   check in iavf_verify_handle() actually serves some purpose, which
   may not be true);
 - how we ensure consistency of core state (no shapers for queues which
   don't exist, assuming we agree having shapers for queues which
   don't exist is counter productive).

Reverting back to rtnl_lock for all would be sad, the scheme of
expecting the driver to take netdev->lock could work?
It's the model we effectively settled on in devlink.
Core->driver callbacks are always locked by the core,
for driver->core calls driver should explicitly take the lock
(some wrappers for lock+op+unlock are provided).
