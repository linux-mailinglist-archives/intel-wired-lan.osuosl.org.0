Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMRtJj2H4WnbuQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 03:05:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A159D415E8E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 03:05:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E988C8052F;
	Fri, 17 Apr 2026 01:04:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mGJCTad4B-zQ; Fri, 17 Apr 2026 01:04:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4045E80531
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776387898;
	bh=gzWePiR4wJvav7DKNP0IvFVMtEhJxILYW4FQXkLO0yw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w+3CQDFUebJnU3lf77JzalQvJiaxMZ9e/TfnrhFxa1Q3kApSBzQNRh2VzopNeJMmn
	 ToggcPghr1r5F9ndKbwuQTESLFmKin2MSlvxmjKBl6X2SJ6Mu2lLD+06PwC/D9UexT
	 pMdObX7i2QMOA19AnFuL75zp2vE1HpjnBVB/HEHOdpr8AzLqWhBVQEEZjlhJAhAeVD
	 HBK7V2c0vRqDh6/A+i5qQHx4odwWBid6sccJpcyu3k06R0FK/NC/gQhqnx2z7yhIh6
	 RkWxUQMGKtFCiA9TbJD7ALaJKSoD791/Pp9+nrG8RKrzi1OguAnDjyDnCiAkvnhPaC
	 X3y6NDoCw6WUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4045E80531;
	Fri, 17 Apr 2026 01:04:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EC9DD396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 01:04:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE8E78052D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 01:04:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YYT7RJ-OCjNd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 01:04:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 186F380528
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 186F380528
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 186F380528
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 01:04:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7D1F36012B;
 Fri, 17 Apr 2026 01:04:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DBE1C2BCB5;
 Fri, 17 Apr 2026 01:04:53 +0000 (UTC)
Date: Thu, 16 Apr 2026 18:04:47 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Cc: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>
Message-ID: <20260416180447.1a3c5c87@kernel.org>
In-Reply-To: <IA0PR11MB7378FF7BF4EA32C1F89372C19B232@IA0PR11MB7378.namprd11.prod.outlook.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
 <20260406192312.0f7a2760@kernel.org>
 <IA1PR11MB621925C1718B838147404DC492582@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260409181041.395a0c37@kernel.org>
 <IA1PR11MB62194BF52262FCEB7FD5E76D92592@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260410133812.4cf9b090@kernel.org>
 <IA0PR11MB737882B384AE7279EBCD05C79B242@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260414145835.07fbe355@kernel.org>
 <IA0PR11MB737842E2098D0952A8BA1FE29B222@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260416082751.04782987@kernel.org>
 <IA0PR11MB7378FF7BF4EA32C1F89372C19B232@IA0PR11MB7378.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776387894;
 bh=uef/MQUFdwKWAzdRkfr82aSqXlQWMKmwRMGsFqVycJg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AFsF5VjnZpZMwUuZwG42cFUA/ApcxrnvS78EoSawtPVB7vXB5OsYtsPsoUBfsD+LZ
 4uvvqsFfa2V3CzfrIbE2d8UJs6sfgrhZuRBAMy7COZrKaDpmonM/krI3wBjkPB2zvj
 zmn/HQwr3IAc7vF+cehDG6tAHms7HikId8JNssgu8i+8Wv6UIxugG8+u3aof/hPWxL
 I4aOpVHJj1TAS354NCkazF+crkhVATK4607FwT2H/K4cZ69qq5DQsDWS/tWBybL2x1
 MtSqd3nUy1kvPw8p4/PWTngj2r7iAmATpWRDhYTItdG3iQDqSoca7Mmk4KhMLMGISk
 r7pinxcjTwhKw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=AFsF5Vjn
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 0/8] dpll/ice: Add TXC
 DPLL type and full TX reference clock control for E825
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
X-Spamd-Result: default: False [10.19 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:arkadiusz.kubalewski@intel.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:davem@davemloft.net,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:jiri@resnulli.us,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,google.com,vger.kernel.org,gmail.com,davemloft.net,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,intel.com,resnulli.us];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.512];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_ALLOW(0.00)[+mx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A159D415E8E
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On Thu, 16 Apr 2026 18:26:11 +0000 Kubalewski, Arkadiusz wrote:
> >> This HW doesn't use EEC DPLL signal to feed MAC clock, as DPLL is
> >> external from NIC point of view. Only 2 signals from such external DPLL
> >> device are used by NIC:
> >> - synce (a single source for all those TXC per-port DPLL device)
> >> - time_ref (a source for the TS_PLL - which drives PTP timer)  
> >
> >No bypass? The PLL is actually in the loop? oof, this is beyond
> >my understanding of clocks and signals :S
>
> TBH, I am not entirely sure what do you mean with MAC PLL into bypass
> mode, but the HW description I have provided is still true, the MAC is
> not fed with any DPLL provided signal here. Only port tx clocks PLLs and
> a timer PLL can use those.

The ASIC PLL IPs I managed to find had a bypass mode where the reference
/ input frequency still goes thru the dividers but the PLL circuit is
bypassed. I assumed that if we want to distribute a syntonized clock
across the network we would want as few PLL circuits in the paths as
possible and we'd use bypass (which would be relevant here since for
the target use case we wouldn't engage the PLL of the TXC). But this 
is 100% guesswork so I'm probably speaking gibberish.

> >> Well, 'floating' MUX type pin not connected to any dpll would require a
> >> lot of additional implementations, just to allow source selection, as we
> >> have tried it already.
> >>
> >> Wouldn't more generic name cause a DPLL purpose problem?  
> >
> >The old proposal in netdev family was to to have source selection
> >without creating a real mux. Not saying I'm dead set on that direction.
> 
> Yes, correct, it kept the list of dpll pins valid for source selection of
> tx clock within the netdev and control over it through RT netlink.
> That solution was rather simple but you requested to hack into dpll so we
> did here.
> 
> IMHO this is cleanest and simplest solution we could find to keep it
> within DPLL subsystem.
> 
> >> We still want to make sure that given DPLL device would serve the role
> >> of source selection for particular port where a source pin should be an
> >> output either on EEC dpll or some external signal generator but somehow
> >> related to SyncE or similar solutions.  
> >
> >Right, but adding a new "type" per location of the PLL (especially if
> >we lean into covering any ASIC PLL) may not scale, and opens us up to
> >"vendor X calls it Y" and "in design A clock is fed by pll type X and
> >in design B by type Y".
> 
> I was thinking that this is more like a purpose specific DPLL device, if
> someone would want something similar we would have to review it, right?

We would if it was a Ethernet MAC PLL, but if someone wanted to expose
whether some random PLL in their ASIC locks - are we adding a new type
for each one of those?

> >IIUC you do provide "linking" of the pins? netdev will have the MAC pin
> >assigned. Is the pin that connects the PLLs also annotated so that user
> >knows what's on the "other side"? Maybe the topology would be clear
> >enough from just that, and we don't have to add a TXC type.
> >Call the PLL "integrated" or something generic. User should be able to
> >trace the path of the signals?  
> 
> It depends, TX clock has one of external pins connected to external DPLL,
> but second is a board-level pin with ability to provide some external
> clock signal, the user would have to determine that purpose just based
> on the topology of one of the pins, which seems a bit problematic?
> I.e. if at some point there would be HW with only external non-DPLL
> connected pins?

Not sure I follow, TBH. To me the function of the "MAC PLL" is fairly
obvious from the fact that it has a pin exposed via rtnetlink. So it's
obviously a DPLL which can drive the Tx clock?

It's the function / relation / linking to the EEC DPLL that may not 
be obvious. But user can see how the pins connect they can get some
LLM to draw a diagram of a live system.. et voila :)

> I mean 'generic' type is something we could do, but as already mentioned,
> thought that we want a DPLL types specified/designed for some particular
> functions/tasks. 

I feel like we often get labels wrong the first time around, so if we
can defer adding them until later that'd make me happy..
