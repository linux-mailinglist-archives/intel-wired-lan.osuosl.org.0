Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A4CA82D5D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 19:12:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F3936118E;
	Wed,  9 Apr 2025 17:12:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GmnwEe4C0Ycc; Wed,  9 Apr 2025 17:12:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A58666176B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744218749;
	bh=AJLZOgy1a9fC4F6fvN4tXie0Zbz0JA3M1aeEZzpxVoM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e2YwgnhrEh4Rguc8hcBBsHa1Er7sLAnH/sBDdOG4/QhyGy9Z6SVeDsDU6xbCIICiU
	 EGS8zTBMPnuZoqmiBwLJ4VHFJMIPh43M4ehpXqbSGAE5UMxnYY++wdDboqmTh0QsXC
	 lSIlvguLTdCIUxNvW9P9w6yBQaoFPa5eAI/yxvwUYMdGrDrbv1Jjf1ecuqdP2Tzwj9
	 8TdsdWx/ui6hmShp8dDInbRp+fNqCL45oeQs29Hn2MCDG3fKky2nRaElXmMe6t+Bwo
	 xwAEGT0C6/hkQWvgYvDoAL34JM7r8PhJi/1p/HXnM73lsqPd4O/IfYpRRp6qp221cT
	 fAb1thhMMfNLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A58666176B;
	Wed,  9 Apr 2025 17:12:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 678F0108
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 17:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58E386176B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 17:12:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5NZc6q8Kq3MH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 17:12:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C64D760E6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C64D760E6B
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C64D760E6B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 17:12:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 2FCEFA49AD9;
 Wed,  9 Apr 2025 17:06:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26810C4CEE8;
 Wed,  9 Apr 2025 17:12:21 +0000 (UTC)
Date: Wed, 9 Apr 2025 18:12:19 +0100
From: Simon Horman <horms@kernel.org>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250409171219.GQ395307@horms.kernel.org>
References: <20250321-igc_mqprio_tx_mode-v4-0-4571abb6714e@linutronix.de>
 <20250321-igc_mqprio_tx_mode-v4-1-4571abb6714e@linutronix.de>
 <20250407124741.GJ395307@horms.kernel.org>
 <87mscqsvui.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87mscqsvui.fsf@jax.kurt.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744218744;
 bh=JIZFCjcTXRdnW6c6x5d8dJNp8rrFEgq4XX8fK7te02w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i7+aRtmyOE2VQQk0xZhoUORYDK+6GU8sRnNbKqbeTnWMd4EYZhlKK1lYd06UMD0Ym
 BjxS02lO6IE8Oac+FzF72keKwK0OFTG8XG3K/2M1hIw8QrBLxo1YfgR/uMTQgFcJ9G
 n53zPZiol1fkdF24YznvJqhZnR6dvYebIb0rviBzo5V0UQzex90XJo+U5m+S+PsYUx
 lUN3z3/XLficvL0WxA18EgOg1/2Rp5h+oBsDQ7rgxDT/qC0+HEL5yp6rg8X+Eo0TJ7
 AmHjnUnyXFFHLP3Aipcg4BniesanVqb6iyv5r/G2lSbc/FSQ/bwJD5v8xRwgACc9oR
 BXvz9m120TuCQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=i7+aRtmy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/2] igc: Limit netdev_tc
 calls to MQPRIO
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

On Tue, Apr 08, 2025 at 02:04:21PM +0200, Kurt Kanzenbach wrote:
> On Mon Apr 07 2025, Simon Horman wrote:
> > On Fri, Mar 21, 2025 at 02:52:38PM +0100, Kurt Kanzenbach wrote:
> >> Limit netdev_tc calls to MQPRIO. Currently these calls are made in
> >> igc_tsn_enable_offload() and igc_tsn_disable_offload() which are used by
> >> TAPRIO and ETF as well. However, these are only required for MQPRIO.
> >> 
> >> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> >
> > Hi Kurt,
> >
> > Thanks for the update. And I apologise that I now have question.
> >
> > I see that:
> >
> > * This patch moves logic from igc_tsn_disable_offload()
> >   and igc_tsn_enable_offload() to igc_tsn_enable_mqprio().
> >
> > * That both igc_tsn_disable_offload() and igc_tsn_enable_offload()
> >   are only called from igc_tsn_reset().
> >
> > * And that based on the description, this looks good for the case
> >   where igc_tsn_reset() is called from igc_tsn_offload_apply().
> >   This is because igc_tsn_offload_apply() is called from
> >   igc_tsn_enable_mqprio().
> >
> > All good so far.
> >
> > But my question is about the case where igc_tsn_reset() is called from
> > igc_reset(). Does the logic previously present in igc_tsn_enable_offload()
> > and igc_tsn_disable_offload() need to run in that case?
> 
> This patch moves the netdev_tc calls only. These do not have to run in
> this case. The hardware configuration is still applied in
> igc_tsn_enable_offload() and igc_tsn_disable_offload().

Thanks for clarifying, in that case this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>


