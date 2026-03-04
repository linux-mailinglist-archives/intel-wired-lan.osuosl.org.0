Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eByoNtj8p2mlnAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 10:35:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F3C1FDAFD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 10:35:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09F2340838;
	Wed,  4 Mar 2026 09:35:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C7l6PJAtzsOi; Wed,  4 Mar 2026 09:35:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78B3540830
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772616918;
	bh=34x8dW+VODfI2RuFdRgreGOgi0nhsq6qAyMMwtOtc+0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mNjS1VReZjy5k8ImYHnB8HZTDuAprzCXwOPdG4+T8kESsCc3h6ueGW1jfA7D5lVm1
	 C1N9ZSH2edKSXTEbTByqhMZS6RJqmwf+t3qT38IC5QhrdRnPWvuryGqsvKr8HX+5Az
	 D6WNLufZSo93V9tqnSLJWCbPx9K0B6GWY35BSeq6ee3LavO5yI59HAgw4m91qsNfWD
	 GyXQzdlyd9lgmWawmnjdp3YpNMMvivZchn4pPzAUD7+++WSOaKXjPgHYnHUUFYEC7F
	 mHwwGcXkxGWf3lzAUx0S/9VXWrnQrl0hdC6R8KeGa0D3xF5rj29bRb7S2N81n71DnV
	 SymLEMJ32oAOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78B3540830;
	Wed,  4 Mar 2026 09:35:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C0C11EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 09:35:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6DC8D403AB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 09:35:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MfzSk34RHQMb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 09:35:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mlichvar@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 424E14023D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 424E14023D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 424E14023D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 09:35:15 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-224-Px0G-HPoO3GdBTa0AchyCA-1; Wed,
 04 Mar 2026 04:35:11 -0500
X-MC-Unique: Px0G-HPoO3GdBTa0AchyCA-1
X-Mimecast-MFC-AGG-ID: Px0G-HPoO3GdBTa0AchyCA_1772616909
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 567131800365; Wed,  4 Mar 2026 09:35:08 +0000 (UTC)
Received: from localhost (unknown [10.43.135.229])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 5086D180075F; Wed,  4 Mar 2026 09:35:03 +0000 (UTC)
Date: Wed, 4 Mar 2026 10:35:01 +0100
From: Miroslav Lichvar <mlichvar@redhat.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
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
 Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <aaf8xVPWQ0-y1BnX@localhost>
References: <20260303-igb_irq_ts-v4-1-cbae7f127061@linutronix.de>
 <9805389e-9ea4-4e7a-a122-65f733ead33c@molgen.mpg.de>
 <87qzq1rq2k.fsf@jax.kurt.home>
MIME-Version: 1.0
In-Reply-To: <87qzq1rq2k.fsf@jax.kurt.home>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: Yqfhu3rXSIPL_UpvLpn4bI_23XJdy6ZEfpvdy-dsQWE_1772616909
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1772616914;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=34x8dW+VODfI2RuFdRgreGOgi0nhsq6qAyMMwtOtc+0=;
 b=YDAClWq+16IWSAKh78s7HZ4PU60xbv1sLURKcV3zHwX6fvgKg7OxRRwCt91c/vDczYGIXO
 HstQ1coAwP1rFUAFdXjbhI0Y3ASVMkYT2d+dYSThauUKb7713Wx3NQa1BQjbxnfnHmCIj5
 e9BHMmQeRgKpSLKQE5JOUPhNqXCccH0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YDAClWq+
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
X-Rspamd-Queue-Id: 64F3C1FDAFD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[mlichvar@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kurt@linutronix.de,m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:vinicius.gomes@intel.com,m:bigeasy@linutronix.de,m:vadim.fedorenko@linux.dev,m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[molgen.mpg.de,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,linutronix.de,linux.dev,lists.osuosl.org,vger.kernel.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mlichvar@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 02:38:11PM +0100, Kurt Kanzenbach wrote:
> > It would be great, if you shared the numbers. Did Miroslav already test 
> > this?
> 
> Great question. I did test with ptp4l and synchronization looks fine <
> below 10ns back to back as expected. I did not test with ntpperf,
> because I was never able to reproduce the NTP regression to the same
> extent as Miroslav reported. Therefore, Miroslav is on Cc in case he
> wants to test it. Let's see.

I ran the same test with I350 as before and there still seems to be a
regression, but interestingly it's quite different to the previous versions of
the patch. It's like there is a load-sensitive on/off switch.

Without the patch:

               |          responses            |        response time (ns)
rate   clients |  lost invalid   basic  xleave |    min    mean     max stddev
150000   15000   0.00%   0.00%   0.00% 100.00%    +4188  +36475 +193328  16179
157500   15750   0.02%   0.00%   0.02%  99.96%    +6373  +42969 +683894  22682
165375   16384   0.03%   0.00%   0.00%  99.97%    +7911  +43960 +692471  24454
173643   16384   0.06%   0.00%   0.00%  99.94%    +8323  +45627 +707240  28452
182325   16384   0.06%   0.00%   0.00%  99.94%    +8404  +47292 +722524  26936
191441   16384   0.00%   0.00%   0.00% 100.00%    +8930  +51738 +223727  14272
201013   16384   0.05%   0.00%   0.00%  99.95%    +9634  +53696 +776445  23783
211063   16384   0.00%   0.00%   0.00% 100.00%   +14393  +54558 +329546  20473
221616   16384   2.59%   0.00%   0.05%  97.36%   +23924 +321205 +518192  21838
232696   16384   7.00%   0.00%   0.10%  92.90%   +33396 +337709 +575661  21017
244330   16384  10.82%   0.00%   0.15%  89.03%   +34188 +340248 +556237  20880

With the patch:
150000   15000   5.11%   0.00%   0.00%  94.88%    +4426 +460642 +640884  83746
157500   15750  11.54%   0.00%   0.26%  88.20%   +14434 +543656 +738355  30349
165375   16384  15.61%   0.00%   0.31%  84.08%   +35822 +515304 +833859  25596
173643   16384  19.58%   0.00%   0.37%  80.05%   +20762 +568962 +900100  28118
182325   16384  23.46%   0.00%   0.42%  76.13%   +41829 +547974 +804170  27890
191441   16384  27.23%   0.00%   0.46%  72.31%   +15182 +557920 +798212  28868
201013   16384  30.51%   0.00%   0.49%  69.00%   +15980 +560764 +805576  29979
211063   16384   0.06%   0.00%   0.00%  99.94%   +12668  +80487 +410555  62182
221616   16384   2.94%   0.00%   0.05%  97.00%   +21587 +342769 +517566  23359
232696   16384   6.94%   0.00%   0.10%  92.96%   +16581 +336068 +484574  18453
244330   16384  11.45%   0.00%   0.14%  88.41%   +23608 +345023 +564130  19177

At 211063 requests per second and higher the performance looks the
same. But at the lower rates there is a clear drop. The higher
mean response time (difference between server TX and RX timestamps)
indicates more of the provided TX timestamps are hardware timestamps
and the chrony server timestamp statistics confirm that.

So, my interpretation is that like with the earlier version of the
patch it's trading performance for timestamp quality at lower rates,
but unlike the earlier version it's not losing performance at the
higher rates. That seems acceptable to me. Admins of busy servers
might need to decide if they should keep HW timestamping enabled. In
theory, chrony could have an option to do that automatically.

Thanks,

-- 
Miroslav Lichvar

