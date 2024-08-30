Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EAF966923
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 20:48:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A441C42588;
	Fri, 30 Aug 2024 18:48:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U3XiGuxnCSQW; Fri, 30 Aug 2024 18:48:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF102424AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725043737;
	bh=Pkz/XjtuONpYcWN7n9hJB1ExcezdgYE7uuRQrjCbxeM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rl/QgJ/qKCWus+/32EtreLxLFJcc2qxjB/G/NtZxLMac5Zm5wNUQE8uz3ZNZxtYct
	 7kloKVpO+siUFjhLLmq8SMa7Yy3uXL/J5gVY+4NO82edD3/i3AOG/vw7Ib+Ddg2tzq
	 z9KhMU0Q1S4s9PwaaKUT15ldHUf0mhk6oJTUQiVuAvK4GxWami7+VayDTy2TLlI2sE
	 dKs28w/OwPKTQvi//ZVT9vZ7/1N3QxcnezAi7+7lDzRt9Tb679X5ZUwz3HFh9I9fFg
	 s6tZjoRbn26jDwgL2jrsy7QtdlIFd6nepbhVqRt3/Z3Rv+cLAJg8IdVjsXCC1VlCOR
	 uYIRO488mh18Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF102424AC;
	Fri, 30 Aug 2024 18:48:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9E781BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 18:48:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A2C7F40DC9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 18:48:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5vendXrSxTwG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 18:48:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 93A19401DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93A19401DD
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93A19401DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 18:48:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 94425A44C28;
 Fri, 30 Aug 2024 18:48:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC1A7C4CEC2;
 Fri, 30 Aug 2024 18:48:52 +0000 (UTC)
Date: Fri, 30 Aug 2024 11:48:51 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240830114851.58cd02c4@kernel.org>
In-Reply-To: <d0244464-0596-4309-89ff-d8dcd9aa3d35@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
 <f67b0502e7e9e9e8452760c4d3ad7cdac648ecda.1724944117.git.pabeni@redhat.com>
 <20240829190445.7bb3a569@kernel.org>
 <d0244464-0596-4309-89ff-d8dcd9aa3d35@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725043733;
 bh=gkEM9qoL4YZzmRpGtgnNAQ0bHBjwyWWJntONBu2fqGg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Segi2mHSA4w5a5emnsbM+O658y4prhoUp3XtS1qA6ekyijRmpCPxABpQoC1oFjBeH
 k59B1e13rlJKmMhDY4TDWvhzuWNqU0IryUGT80/7MpcO+HwAzZRVBqv9xZXhxXyhS/
 PWYzA0bfDiipPhihH97UGzy3GBXe2lmm745PCmodwV/h3ZwE2+0ZI6Wss9VL8k58Fs
 YXDcFkfUPalpNaE6WVpSrZEJzCDn3bDjvrd7Oi1aaLOPVtIJ6Y9mCITCz1ikRE5u26
 By8hmaH51rqealXSwWtthsh+eMeF+kJe80jEVMafohCcuihfudpkvm8EU3vro1xPG0
 Qfdhyj+59MOXw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Segi2mHS
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 04/12] net-shapers:
 implement NL group operation
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

On Fri, 30 Aug 2024 18:48:41 +0200 Paolo Abeni wrote:
> >> +	const struct net_shaper_ops *ops = net_shaper_binding_ops(binding);
> >> +	struct net_shaper_info *parent = NULL;
> >> +	struct net_shaper_handle leaf_handle;
> >> +	int i, ret;
> >> +
> >> +	if (node_handle->scope == NET_SHAPER_SCOPE_NODE) {
> >> +		if (node_handle->id != NET_SHAPER_ID_UNSPEC &&
> >> +		    !net_shaper_cache_lookup(binding, node_handle)) {
> >> +			NL_SET_ERR_MSG_FMT(extack, "Node shaper %d:%d does not exists",
> >> +					   node_handle->scope, node_handle->id);  
> > 
> > BAD_ATTR would do?  
> 
> We can reach here from the delete() op (next patch), there will be no 
> paired attribute is such case. Even for the group() operation it will 
> need to push here towards several callers additional context to identify 
> the attribute, it should be quite ugly, can we keep with ERR_MSG_FMT here?

Alright. But TBH I haven't grasped the semantics of how you use UNSPEC.
So I reserve the right to complain again in v6 if I think of a better
way ;)

> >> +	if (ret < 0)
> >> +		goto free_shapers;
> >> +
> >> +	ret = net_shaper_group_send_reply(info, &node_handle);
> >> +	if (ret) {
> >> +		/* Error on reply is not fatal to avoid rollback a successful
> >> +		 * configuration.  
> > 
> > Slight issues with the grammar here, but I think it should be fatal.
> > The sender will most likely block until they get a response.
> > Not to mention that the caller will not know what the handle
> > we allocated is.  
> 
> You mean we should return a negative error code, and _not_ that we 
> should additionally attempt a rollback, right? The rollback will be very 
> difficult at best: at this point destructive action have taken place.

net_shaper_group_send_reply() does a bit too much, TBH.
Given the rollback complexity propagating the failure just
from genlmsg_reply() is fine. I think the only case it fails
is if the socket is congested, which is in senders control.
But genlmsg_new() can be done before we start. And we should 
size the skb so that nla_puts sever fail (just pop a WARN_ON()
on their error path, to make sure we catch it if they grow,
I don't think they can fail with your current code).
