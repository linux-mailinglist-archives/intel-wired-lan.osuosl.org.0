Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLxRHf//4Gk7oQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 17:27:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3555410BEF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 17:27:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8349A60781;
	Thu, 16 Apr 2026 15:27:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kLVnl2_dt_2v; Thu, 16 Apr 2026 15:27:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D18F060784
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776353276;
	bh=kMFfslTsVwMdp5wDS9Rk1mEjuysY60n7U+9Ymnx8NPU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5xPh/tO757HBsON9vDAAt2qo4MWj22u+z4cLMuvTty/UK5TGAhawbaMQ27wtwZa8q
	 8/oTwUJw8qNGdyQ1mGmupGzoOihLU1YCc9xooJ4TtWXs4C/I5YzovwiR0Ek/JKWp6q
	 SZx2FncU8fV3pb+Rj3Ghe0gQSZKXpB+Nsi91UEXmSiEeVqNrl8IVR/bP7FWh0RPNB5
	 QKXCv17Tdg9Nrt29v3R68zDLlAMmFz2IuEt83fcapyf0DYOrDXt/rBWwiQN/e5ta5u
	 BVI3OD0S3e+dVynsj2Go2+zm78+/C+NCWbnCwuK8IPwihGLl9SV20n8a3WORJL6exT
	 fKOaXz8kEfIng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D18F060784;
	Thu, 16 Apr 2026 15:27:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DB97C2CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 15:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C19F96077F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 15:27:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JITRrD1yReqR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 15:27:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DECA76077A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DECA76077A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DECA76077A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 15:27:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3E3EC44313;
 Thu, 16 Apr 2026 15:27:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9452C2BCAF;
 Thu, 16 Apr 2026 15:27:52 +0000 (UTC)
Date: Thu, 16 Apr 2026 08:27:51 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <20260416082751.04782987@kernel.org>
In-Reply-To: <IA0PR11MB737842E2098D0952A8BA1FE29B222@IA0PR11MB7378.namprd11.prod.outlook.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
 <20260406192312.0f7a2760@kernel.org>
 <IA1PR11MB621925C1718B838147404DC492582@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260409181041.395a0c37@kernel.org>
 <IA1PR11MB62194BF52262FCEB7FD5E76D92592@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260410133812.4cf9b090@kernel.org>
 <IA0PR11MB737882B384AE7279EBCD05C79B242@IA0PR11MB7378.namprd11.prod.outlook.com>
 <20260414145835.07fbe355@kernel.org>
 <IA0PR11MB737842E2098D0952A8BA1FE29B222@IA0PR11MB7378.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776353274;
 bh=4fXMUoJoIQeZzLLE5RSP1lM+SSHeh6NAx/GPxmyTz5k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=airFqvSl/cX+SuylumDvltNarwmMKcCR7gnzpXdqvAz7HruwfyZAabP9tJ/2UhdB4
 8ZxmOwU10ljtDr5RmZFMpQfE2SLanKlNrSbEXmTORcHxgUqSrEqSt8FW80jMUyAcjq
 v2kDuoX2JL6tKOEBwJBw+Ve45kwSQpz38MCzw7cf0mEqRtacaAD1q+UQ5soky6a7DP
 WSbkSbFbU25DkaHatTXRMc7TIUweFJFlC53EvBqRMNwOnnGqUe9wzDyi+H+uCB8Aaa
 +pkUA+mGxXZQ/9ZP1/Fj4PR23T1kwf9F8YzM8fIpBC/yL5iNyHrBygA92dghllAhBW
 qFQqP8C5Ste6w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=airFqvSl
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,google.com,vger.kernel.org,gmail.com,davemloft.net,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,intel.com,resnulli.us];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:arkadiusz.kubalewski@intel.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:davem@davemloft.net,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:jiri@resnulli.us,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E3555410BEF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 15 Apr 2026 13:23:22 +0000 Kubalewski, Arkadiusz wrote:
> >> Well, the true is that we did not anticipated per-port control of the
> >> TX clock source, as a single DPLL device could drive multiple of such.
> >>
> >> This is not true, that we pretend there is a second PLL - there is a
> >> PLL on each TX clock, maybe not a full DPLL, but still the loop with
> >> a control over it's sources is there and it has the same 2 external
> >> sources + default XO.  
> >
> >Don't we put that MAC PLL into bypass mode if we feed a clock from
> >the EEC DPLL?  
> 
> This HW doesn't use EEC DPLL signal to feed MAC clock, as DPLL is
> external from NIC point of view. Only 2 signals from such external DPLL
> device are used by NIC:
> - synce (a single source for all those TXC per-port DPLL device)
> - time_ref (a source for the TS_PLL - which drives PTP timer)

No bypass? The PLL is actually in the loop? oof, this is beyond 
my understanding of clocks and signals :S

> >> A mentioned try of adding per port MUX-type pin, just to give some
> >>control
> >> to the user, is where we wanted to simplify things, but in the end the
> >>API
> >> would have to be modified in significant way, various paths related to
> >>pin
> >> registration and keeping correct references, just to make working case
> >> for the pin_on_pin_register and it's internals. We decided that the
> >>burden
> >> and impact for existing design was to high.
> >>
> >> And that is why the TXC approach emerged, the change of DPLL is minimal,
> >> The model is still correct from user perspective, SyncE SW controller
> >>shall
> >> anticipate possibility that per-port TXC dpll is there  
> >
> >We are starting to push into what was previously the domain of
> >drivers/clk, tho. IIUC the "ASIC PLL"s are usually integrated with
> >clock dividers. And cannot be "configured" after chip init / async
> >reset (which is why I presume you whack a reset in patch 7?).  
> 
> Well, we need CGU-dividers change for a frequency-compliance with lower
> link speeds, the link reset which is required as part of tx-clk switch
> and link establishment on a new clock.
> 
> >  
> >> This particular device and driver doesn't implement any EEC-type DPLL
> >> device, the one could think that we can just change the type here and
> >>use
> >> EEC type instead of new one TXC - since we share pins from external dpll
> >> driver, which is EEC type, and our DPLL device would have different
> >>clock_id
> >> and module. But, further designs, where a single NIC is having control
> >>over
> >> both a EEC DPLL and ability to control each source per-port this would
> >>be
> >> problematic. At least one NIC Port driver would have to have 2 EEC-type
> >>DPLLs
> >> leaving user with extra confusion.  
> >
> >The distinction between TXC and EEC dpll is confusing.
> >I thought EEC one _was_supposed_to_ drive the Tx clock?
> >What PPS means is obvious, what EEC means if not driving Tx clock is
> >unclear to me..
> >  
> 
> Yes, correct, EEC DPLL main task would be to drive TX clocks of NIC
> ports, but if there is a per-port control something extra is required.
> 
> >Let me summarize my concerns - we need to navigate the split between
> >drivers/clk and dpll. We need a distinction on what goes where, because
> >every ASIC has a bunch of PLLs which until now have been controlled by
> >device tree (if at all). If the main question we want to answer is
> >"which clock ref is used to drive internal clock" all we need is a MUX.
> >If we want to make dpll cover also ASIC PLLs for platforms without
> >device tree we need a more generic name than TXC, IMHO.  
> 
> Well, 'floating' MUX type pin not connected to any dpll would require a
> lot of additional implementations, just to allow source selection, as we
> have tried it already.
> 
> Wouldn't more generic name cause a DPLL purpose problem?

The old proposal in netdev family was to to have source selection
without creating a real mux. Not saying I'm dead set on that direction.

> We still want to make sure that given DPLL device would serve the role
> of source selection for particular port where a source pin should be an
> output either on EEC dpll or some external signal generator but somehow
> related to SyncE or similar solutions.

Right, but adding a new "type" per location of the PLL (especially if
we lean into covering any ASIC PLL) may not scale, and opens us up to
"vendor X calls it Y" and "in design A clock is fed by pll type X and
in design B by type Y".

IIUC you do provide "linking" of the pins? netdev will have the MAC pin
assigned. Is the pin that connects the PLLs also annotated so that user
knows what's on the "other side"? Maybe the topology would be clear
enough from just that, and we don't have to add a TXC type.
Call the PLL "integrated" or something generic. User should be able to
trace the path of the signals?
