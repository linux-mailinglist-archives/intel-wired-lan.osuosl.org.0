Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKp6CQ5+uWmxHAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 17:15:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B152ADBCA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 17:15:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70A5183EC8;
	Tue, 17 Mar 2026 16:15:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dEB_4AgE1GhN; Tue, 17 Mar 2026 16:15:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9BD383ECB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773764105;
	bh=1LPbmIeE/6NB19Hxz/LqwQIO3wVXrbIUvY0tYLYooLc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=afs5L5kMLpbJJHFLo44YS36QP6LRJTlPbBvnHSqMffUUGgI7JkFcWhrZXs/PAfpoB
	 rPvKokP6Cxyhx5zwzL72lQiTDBxcUCExaixysbx6aYoYyzLO+bQclgBW3kQR1eW8aw
	 byp6fp0jf76TzsA6q1nmiWsZNF5vjUbuS5L+lv+1MkQRFUQ7M8eGNEgCANhIl0qNB7
	 n4wLJuLl6wDNBjLxACyNXqTKmh1mSGNG438ktVwEltMdnxUFUU7/gS7uE0FwSIkciJ
	 X8cj9UZuDGjqrlLMTDjU3HVpPoFB6d1N/53QHFu3oeGu8dsDi0sD5FyAyk7vabWrnY
	 5o8SlHwVU3lgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9BD383ECB;
	Tue, 17 Mar 2026 16:15:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BB656D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 16:15:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0B3F83EC5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 16:15:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mlRwkndAUD7s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Mar 2026 16:15:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DE6BC83EC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE6BC83EC4
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE6BC83EC4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 16:15:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 21BEE437B1;
 Tue, 17 Mar 2026 16:15:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30E54C4CEF7;
 Tue, 17 Mar 2026 16:15:01 +0000 (UTC)
Date: Tue, 17 Mar 2026 09:15:00 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: I Viswanath <viswanathiyyappan@gmail.com>
Cc: stfomichev@gmail.com, horms@kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 eperezma@redhat.com, xuanzhuo@linux.alibaba.com, jasowang@redhat.com,
 mst@redhat.com, przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, ronak.doshi@broadcom.com, pcnet32@frontier.com,
 bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 virtualization@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Message-ID: <20260317091500.3b3488d4@kernel.org>
In-Reply-To: <CAPrAcgMBQsVAG3utAD=7dp5tU1jjEBPO5QQGpMUrDu+rMrDJaA@mail.gmail.com>
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
 <20260314130601.0ec7a534@kernel.org>
 <CAPrAcgMBQsVAG3utAD=7dp5tU1jjEBPO5QQGpMUrDu+rMrDJaA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773764102;
 bh=UphfycUSWzpIkA6CM6q6KSYT3Kt5Z/+FEK5eSxrCnWw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=d1BxvLWAsohB++QNIhLN1YFQxrt4XnXj1JFsUQfvSoT0fFAnVztCTtpfjx7vKPnxk
 6qGdhQo7nzE4F/mNL5Q0sRYKWEabLJX9GtIKERlnnLmzq8mMQj9bDY61FQ9eqlW3Tj
 f5igX67Ru650I2e+gbseyqLyoGULpN4rj+znIUcrTwIcRzHzO3e9JfKhSfEuLpsCWC
 Pqb8ttQoAR4pBXYhDFNJskQm1sAqZGUNGp1d8CbcljJ5uraC0X5mW23HaLS4sIxBwv
 0nJp+xPBBBUq5MbgvSXUtiH6VYxzrFIJYnFvfcigqDjLGn7XX5B9KSqtUwO/MGZIWm
 D8oyPcOa6WzTg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=d1BxvLWA
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 0/7] Introduce async
 callback ndo_set_rx_mode_async
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:viswanathiyyappan@gmail.com,m:stfomichev@gmail.com,m:horms@kernel.org,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:eperezma@redhat.com,m:xuanzhuo@linux.alibaba.com,m:jasowang@redhat.com,m:mst@redhat.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:ronak.doshi@broadcom.com,m:pcnet32@frontier.com,m:bcm-kernel-feedback-list@broadcom.com,m:netdev@vger.kernel.org,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,google.com,redhat.com,lunn.ch,davemloft.net,linux.alibaba.com,intel.com,broadcom.com,frontier.com,vger.kernel.org,lists.linux.dev,lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 14B152ADBCA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 15 Mar 2026 01:29:14 +0530 I Viswanath wrote:
> On Sun, 15 Mar 2026 at 01:36, Jakub Kicinski <kuba@kernel.org> wrote:
> > Stan is actively working on this:
> > https://lore.kernel.org/20260313145113.1424442-1-sdf@fomichev.me
> > I feel like I spent enough time reviewing your attempts and Stan
> > will not need as much maintainer attention to bring this to
> > a closure so let him cook. Sorry.  
> 
> Honestly, I should be thanking you for not throwing it out sooner. I
> don't think I was skilled/experienced to actually make it work and
> someone more qualified should handle this. On the bright side, That
> means I am now much better at solving regular boring bugs and I think
> that's what matters. Cheers

Thank you for the understanding!
