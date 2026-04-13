Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DezCLAq3WmVaQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 19:41:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F07E83F1995
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 19:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59ADE60E72;
	Mon, 13 Apr 2026 17:41:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id La9cgsr8ghdc; Mon, 13 Apr 2026 17:41:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 574C360EA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776102060;
	bh=8NVZHjJJ8Ti3/rzf64rVwbWLd/Gp+JvomI+ZyLe9mdU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mL/ofod06qcIwyJB+AiaokCDV6ekNk15jV0MWryqzbCGMwuJ0w/Jz/ye+fb8qzqzy
	 WBKZLEOS3UUsIqWfLhIBHqNswqxLZBuGAw+GsgtjZFwZhHPuyjvLReYnKwYyb5nLy3
	 4oqXMSdCxvxotoPfvWpOZgQwARlAeuu9VLeZvOUUCr5hpN3UlhMb0K/mbaT2j1UMEz
	 U4XnsJtOicr7TWE84SL6ZhhWZCq8r5QC1JaconvGnzi2cj7Ep4u1/esdYRgzrgThnO
	 HTjjQiP6IAH0w6rUG4Vi1/ZLR9mU5AqUalg2i6+1MzGNJ8BwvbZaQQMRjrFhysfpyO
	 Cf8PH6PyZWVnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 574C360EA2;
	Mon, 13 Apr 2026 17:41:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C4A6196
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 17:40:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3DBD94016B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 17:40:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5SvAls9m9Mer for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 17:40:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 08D94400B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08D94400B7
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08D94400B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 17:40:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C6AAE6183C;
 Mon, 13 Apr 2026 17:40:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D7FDC2BCAF;
 Mon, 13 Apr 2026 17:40:54 +0000 (UTC)
Date: Mon, 13 Apr 2026 10:40:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <20260413104048.4ebd7170@kernel.org>
In-Reply-To: <IA0PR11MB737882B384AE7279EBCD05C79B242@IA0PR11MB7378.namprd11.prod.outlook.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
 <20260406192312.0f7a2760@kernel.org>
 <IA1PR11MB621925C1718B838147404DC492582@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260409181041.395a0c37@kernel.org>
 <IA1PR11MB62194BF52262FCEB7FD5E76D92592@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260410133812.4cf9b090@kernel.org>
 <IA0PR11MB737882B384AE7279EBCD05C79B242@IA0PR11MB7378.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776102055;
 bh=0N4BCYvO1+Hekbec44W1YKBqMvRW8D/6DQUbra7OWXM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=X5kp8GuU2+Zb0pS0yNLjVoEp8rBKG3Q21yTnrDjIY7ZM2U+9a+hi4HgHm/lMr8UNI
 vpjDIGFcNffSiLj01LAL6dAQrdQuu9D/ho7gPuGDN9CypsV7Mnp38ZILUsegyf3hzZ
 D0ItKRXD8uJieku1w25W3QWiuPcur5ly+IqpAgOszAt2q8rubZHwDu+YgOXE63XbRQ
 Nbx0wDj6GIzmz+69rPLCt3/uXfDKW8v0wtyl8fW81+KEKRGvOQQvwJU0RfJK7qnac9
 Qfio15bMQbzyGgSERwSEB1LloUuayrwOIagCS3S7sQBrc373RREfluQCgEFDlpimNh
 0rMQ3+hCW8EMQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=X5kp8GuU
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "jiri@resnulli.us" <jiri@resnulli.us>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,google.com,vger.kernel.org,gmail.com,davemloft.net,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,intel.com,resnulli.us];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
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
	NEURAL_HAM(-0.00)[-0.989];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F07E83F1995
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 13 Apr 2026 08:19:30 +0000 Kubalewski, Arkadiusz wrote:
> >My concern is that I think this is a pretty run of the mill SyncE
> >design. If we need to pretend we have two DPLLs here if we really
> >only have one and a mux - then our APIs are mis-designed :(  
> 
> Well, the true is that we did not anticipated per-port control of the
> TX clock source, as a single DPLL device could drive multiple of such.
> 
> This is not true, that we pretend there is a second PLL - there is a
> PLL on each TX clock, maybe not a full DPLL, but still the loop with
> a control over it's sources is there and it has the same 2 external
> sources + default XO.

Let me dig around and see if I can find any docs for PLL IPs
that get integrated into ASICs. The DPLL subsystem has implicitly
focused on standalone, timing related PLLs. Every ASIC out there 
has a bunch of PLLs to generate the clock signals. It's not clear
to me that DPLL subsystem is the right fit for this. Ping me if
I don't get back to this by the end of the week please. I'll need
to wrap up net-next and send the PR first..

> A mentioned try of adding per port MUX-type pin, just to give some control
> to the user, is where we wanted to simplify things, but in the end the API
> would have to be modified in significant way, various paths related to pin
> registration and keeping correct references, just to make working case
> for the pin_on_pin_register and it's internals. We decided that the burden
> and impact for existing design was to high.
> 
> And that is why the TXC approach emerged, the change of DPLL is minimal,
> The model is still correct from user perspective, SyncE SW controller shall
> anticipate possibility that per-port TXC dpll is there 
> 
> This particular device and driver doesn't implement any EEC-type DPLL
> device, the one could think that we can just change the type here and use
> EEC type instead of new one TXC - since we share pins from external dpll
> driver, which is EEC type, and our DPLL device would have different clock_id
> and module. But, further designs, where a single NIC is having control over
> both a EEC DPLL and ability to control each source per-port this would be
> problematic. At least one NIC Port driver would have to have 2 EEC-type DPLLs
> leaving user with extra confusion.
