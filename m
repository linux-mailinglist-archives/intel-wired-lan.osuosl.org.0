Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOQtOdHvrmkWKQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 17:05:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DB623C68E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Mar 2026 17:05:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA08F60B18;
	Mon,  9 Mar 2026 16:05:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id na-y9XDA5Hn0; Mon,  9 Mar 2026 16:05:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C80F60AC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773072335;
	bh=uhDmXOBdBP7yOM0CVnMxDeuC96/LIXfEFhiV8CFZ+Cg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HDEg/MYfBnhDZe2kz4y4gnkpPsGiuXpg9KlVZka7gQEnb612FOmZSD6RPDGQn6u1p
	 E4h4xqoEfsXVnqHfObsJ9IF6O/FpJpFbkIDCnjmOBmHSb88yP5L75SvAAwwOHfJ6SL
	 TNiAzutjarBidgrmULfkVtSroIe+XukTfhvGxyEm8tCWqBRsnEP9DHrsZJVC9jOLah
	 v5CX6+T8FjEZuIxFst2NwgGyQGEHMPNg+ADSzN4i56DljRDJASTNpNOm5IMrFbfUpw
	 0Bk7UDC5MCF9nFDTMh74mMXBq69/7wc+XtttzJ+JiaSgQjtGS7YK2dhYn+J5RHRGKf
	 J1tPyAmefDx2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C80F60AC9;
	Mon,  9 Mar 2026 16:05:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C7F2358
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 16:05:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0DEB1834DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 16:05:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iEJ3mK3kjvDP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Mar 2026 16:05:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mlichvar@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 01D91834E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01D91834E1
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 01D91834E1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Mar 2026 16:05:32 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-408-t-bDMbxUO5KiyD4s7tQu4g-1; Mon,
 09 Mar 2026 12:05:26 -0400
X-MC-Unique: t-bDMbxUO5KiyD4s7tQu4g-1
X-Mimecast-MFC-AGG-ID: t-bDMbxUO5KiyD4s7tQu4g_1773072323
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 2020A1800561; Mon,  9 Mar 2026 16:05:22 +0000 (UTC)
Received: from localhost (unknown [10.43.135.229])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 5C12530001A2; Mon,  9 Mar 2026 16:05:17 +0000 (UTC)
Date: Mon, 9 Mar 2026 17:05:15 +0100
From: Miroslav Lichvar <mlichvar@redhat.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Kurt Kanzenbach <kurt@linutronix.de>, Paul Menzel <pmenzel@molgen.mpg.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <aa7vuz-fSkwCB3To@localhost>
References: <20260303-igb_irq_ts-v4-1-cbae7f127061@linutronix.de>
 <9805389e-9ea4-4e7a-a122-65f733ead33c@molgen.mpg.de>
 <87qzq1rq2k.fsf@jax.kurt.home> <aaf8xVPWQ0-y1BnX@localhost>
 <ecacc5fd-b3b0-4d66-83ab-4152e4ed22b8@intel.com>
MIME-Version: 1.0
In-Reply-To: <ecacc5fd-b3b0-4d66-83ab-4152e4ed22b8@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-MFC-PROC-ID: TxqztFp34tMso6zYPSy8FNVwMxzPT4bNSDiwVbQnFfg_1773072323
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1773072330;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uhDmXOBdBP7yOM0CVnMxDeuC96/LIXfEFhiV8CFZ+Cg=;
 b=Kzuhz9NCgn7jgHqXInSdf1x362f0/mbIHpGpoAG9HYjQNQnSkJ4umO7ALkFYCEq+kDw8QP
 4qImsLbyh92SCSiMYajyjKo/0Y3lprSnNX6KydFY8MYqxpBf+MAuLv8kZyYGW2km8ognAy
 K8Z5qALXlmUu4ld1OYTwMCYYP7kJigs=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Kzuhz9NC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] igb: Retrieve Tx
 timestamp from BH workqueue
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
X-Rspamd-Queue-Id: 25DB623C68E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:kurt@linutronix.de,m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:vinicius.gomes@intel.com,m:bigeasy@linutronix.de,m:vadim.fedorenko@linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mlichvar@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mlichvar@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linutronix.de,molgen.mpg.de,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,linux.dev,lists.osuosl.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 01:37:54AM -0700, Jacob Keller wrote:
> On 3/4/2026 1:35 AM, Miroslav Lichvar wrote:
> > With the patch:
> > 150000   15000   5.11%   0.00%   0.00%  94.88%    +4426 +460642 +640884  83746
> > 157500   15750  11.54%   0.00%   0.26%  88.20%   +14434 +543656 +738355  30349
> > 165375   16384  15.61%   0.00%   0.31%  84.08%   +35822 +515304 +833859  25596
> > 173643   16384  19.58%   0.00%   0.37%  80.05%   +20762 +568962 +900100  28118
> > 182325   16384  23.46%   0.00%   0.42%  76.13%   +41829 +547974 +804170  27890
> > 191441   16384  27.23%   0.00%   0.46%  72.31%   +15182 +557920 +798212  28868
> > 201013   16384  30.51%   0.00%   0.49%  69.00%   +15980 +560764 +805576  29979
> > 211063   16384   0.06%   0.00%   0.00%  99.94%   +12668  +80487 +410555  62182
> > 221616   16384   2.94%   0.00%   0.05%  97.00%   +21587 +342769 +517566  23359
> > 232696   16384   6.94%   0.00%   0.10%  92.96%   +16581 +336068 +484574  18453
> > 244330   16384  11.45%   0.00%   0.14%  88.41%   +23608 +345023 +564130  19177
> > 
> 
> 
> With the fix, we have a higher lost percentage, which sounds bad to
> me..? And we have a higher response time (which also sounds bad??) and
> we have a much worse standard deviation across all the values from low
> to high rate.
> 
> I guess I just don't understand what these numbers mean and why its
> "better" with the patch. Perhaps its the naming? Or perhaps "xleave" is
> bad, and this is showing that with the patch we get less of that? But
> that looks like it gets consistently lower as the rate and number of
> clients goes up.

xleave is 100% when the server responds to all requests and all
responses are in the expected (interleaved) mode. That is the ideal
result.

The patch doesn't seem to change the absolute maximum rate of
responses, unlike with the previous versions, but at some lower rates
up to 30% responses are missing, apparently due to the kernel being
able to fetch HW timestamps from the NIC at a higher rate, i.e. the
driver is trading network traffic for HW timestamps.

> > At 211063 requests per second and higher the performance looks the
> > same. But at the lower rates there is a clear drop. The higher
> > mean response time (difference between server TX and RX timestamps)
> > indicates more of the provided TX timestamps are hardware timestamps
> > and the chrony server timestamp statistics confirm that.
> > 
> 
> 
> So you're saying a higher mean response time is.. better? What is it
> really measuring then? Oh. I see. it has a higher response time because
> it takes longer to get a Tx timestamp, but the provided timestamp is
> higher quality. While previously it was using software timestamps so it
> could reply faster (since it takes less time to get the software
> timestamp back out) but the quality is lower?
> 
> Ok. That makes a bit more sense...

A transmit HW timestamp is taken later than SW timestamp, so there
is a larger difference between the TX and RX timestamps. ntpperf can
also measure the accuracy of the TX timestamp directly, but it's a
more difficult test to set up as the HW clocks need be synchronized to
each other.

-- 
Miroslav Lichvar

