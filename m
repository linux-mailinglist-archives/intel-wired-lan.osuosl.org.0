Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DslKdba42l2LgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Apr 2026 21:26:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF84422147
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Apr 2026 21:26:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF2CE80F49;
	Sat, 18 Apr 2026 19:26:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5HgsgZcEc78f; Sat, 18 Apr 2026 19:26:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20AF080F31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776540370;
	bh=Zgo17xfkAIdR2A8xb/CQQeq2ygVWHbmUq6Z63yxq2S8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6n1UGjkU/CZWbEK1ldG4Ztofufc2vt0Fj0qYKvNOiHsZTk8aKnf5ru8Rw9cyYhXXN
	 BhBDyh/TluqTYTYQ8Qo58FJdXZK50hUsLlFKeL0CBsnu0B5LoOzwTygPWpKv0PVfcR
	 QaXl3d100V4cIDDoruoSKtb8S32MRSou8XW0PYSG0vVlBiN1YeRnKb/1/BB62v2u6S
	 NJCy/129WwqiAdFfRqaeSma5RehoOhWVYVDK6E1zDB5BzCggeYjVtFo5LVn6TxMbX+
	 SKl5NXmuSUiRcHSrJ4Nu6RnVfOO2a4ZoQ40L9Uj0ojXmVoVrxj7I5rsDkdSuC5nM8G
	 KTpgRReaEybBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20AF080F31;
	Sat, 18 Apr 2026 19:26:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2FC98347
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 19:26:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1580960BC0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 19:26:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kQLmizJCR-T8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Apr 2026 19:26:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5AC3860BB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AC3860BB8
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5AC3860BB8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2026 19:26:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7374E60145;
 Sat, 18 Apr 2026 19:26:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E2B9C2BCB3;
 Sat, 18 Apr 2026 19:26:04 +0000 (UTC)
Date: Sat, 18 Apr 2026 12:26:03 -0700
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
Message-ID: <20260418122603.06d12715@kernel.org>
In-Reply-To: <IA0PR11MB7378CF62D86454916AE8F9D79B202@IA0PR11MB7378.namprd11.prod.outlook.com>
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
 <20260416180447.1a3c5c87@kernel.org>
 <IA0PR11MB7378CF62D86454916AE8F9D79B202@IA0PR11MB7378.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776540365;
 bh=N6BBecO9cG16wcouNfFoexu4GIU7PV9h4BUU/bLKA5I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KWkCmBh/IXy2bwCc9rqIyI6Ug+caXS8YQZDDCNwKMhhhrBW2E1knxKyzwKofn5O1Z
 bn+a6EHUxVpN0fMce1Jzc+gO8dTodl382YbcJHLSk+jgj1w0mW+6CMtzEIvcmBROEH
 Ok4Xjf5ZWhjEBkIOdRQ/dol+mLmOb3pyX2FAV8pStk0HfgMijO67aMsl8AlVWgUVFJ
 P4EDoZOfv2Dt9iEG1IX7k1KBN4fKc5HIZc19xVL1qyNiF83OpKkeiLao0YmQmIwYzA
 JSPzMey2IPJlaGPREjeUBPF0rbnoozB2tcngF95fG+NBKRAh5mogHAHmVZENUfHkye
 m2+jf2nPmTWhg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KWkCmBh/
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
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,google.com,vger.kernel.org,gmail.com,davemloft.net,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,intel.com,resnulli.us];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:arkadiusz.kubalewski@intel.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:davem@davemloft.net,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:jiri@resnulli.us,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6CF84422147
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 17 Apr 2026 12:22:05 +0000 Kubalewski, Arkadiusz wrote:
> >> I was thinking that this is more like a purpose specific DPLL device, if
> >> someone would want something similar we would have to review it, right?  
> >
> >We would if it was a Ethernet MAC PLL, but if someone wanted to expose
> >whether some random PLL in their ASIC locks - are we adding a new type
> >for each one of those?  
> 
> Yes, that was the implicit intention within those patches, if other purpose
> specific PLL would have to be present for whatever HW design and user
> control over it would be required, then that would be the easiest to
> maintain in the long term? Multiple types and each have own function/purpose.
> 
> It would be good as long as there is one PLL for a function per board, once
> there could be multiple ones for single function, we would have to add some
> enumeration (labels, etc.)

Defer on adding identifiers. User knows which driver and bus device
spawned the pll and more importantly what the pin topology is.
Naming in the kernel is rarely a good idea.

> >> It depends, TX clock has one of external pins connected to external
> >> DPLL,
> >> but second is a board-level pin with ability to provide some external
> >> clock signal, the user would have to determine that purpose just based
> >> on the topology of one of the pins, which seems a bit problematic?
> >> I.e. if at some point there would be HW with only external non-DPLL
> >> connected pins?  
> >
> >Not sure I follow, TBH. To me the function of the "MAC PLL" is fairly
> >obvious from the fact that it has a pin exposed via rtnetlink. So it's
> >obviously a DPLL which can drive the Tx clock?
> 
> I am lost a bit now too. You mean clock recovery pin? And EEC type dpll?
> In this solution the 'MAC'/EEC is external and it doesn't drive TX clocks
> directly.

MAC == "tspll" == TXC in this series. On Grzegorz's diagram the new PLL
was in the MAC, which makes sense since it's a pll in the same ASIC as
the MAC.

I'm saying that the function of that pll is obvious since its pin will
plug into the netdev / rtnetlink.

> >It's the function / relation / linking to the EEC DPLL that may not
> >be obvious. But user can see how the pins connect they can get some
> >LLM to draw a diagram of a live system.. et voila :)
> 
> Yes, correct it would work for this particular HW, but adding a variant
> without a external EEC-connected pin in the picture would be problematic
> to understand 'generic' dpll purpose, pointing to the labels later.

The function of the "MAC/tspll" is still obvious. The clarity of the
external PLL is not helped by naming the "MAC/tspll".

> Just to make it clear. I believe that generic type dpll could be used in
> any HW and for any purpose, so after all each such usage could possibly
> introduce entropy and confusion on the user side.
> 
> But if you are fine with that, then sure, we can live with generic
> purpose dpll.

Considering all the imperfect options - generic / unnamed type would be
my preference.
