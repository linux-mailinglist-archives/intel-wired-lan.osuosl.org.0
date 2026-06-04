Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O1VZCSoCImo0RgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 00:54:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 185A1643E00
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 00:54:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=fNjNaJ0m;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A8DF80DC4;
	Thu,  4 Jun 2026 22:54:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cDcQh1D4zra2; Thu,  4 Jun 2026 22:54:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD3B380DD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780613668;
	bh=3lMPwTETgOHXdjVrbiyEjoY0H3xuhL5jFk2nN61vumk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fNjNaJ0mvEr505oDONjAiKXz7Z8qvsT0Rz67/JbWpv9TfXO1xBo8vP7s8lA+9biU8
	 QfYPdy74+plP0Up+rlRXV5rY6arSdZd9gOGkJQ4dqqh1v+zDLmpEzskqgb3eVfU7Jg
	 YzVRy21gWFDKRCFr9uZveRDnxS0nwQeblOQIiSmb6UUJvd/xsny67wFPHlROahxa4f
	 M03fdj2tYn1QfXfSAnq6RK96HjzBxnXtGAT0+W7SVbkPZPbCWhKnmNQpENMPYSyWvS
	 fc1wzO7mchxk+A31HKtPU7j2ls+ZKKGsqboI+ZVuJAfR/DBdujjtTI/G7G23VNVuCy
	 Z2++wvnIH4HXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD3B380DD9;
	Thu,  4 Jun 2026 22:54:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6528D26A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2026 22:54:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56358429E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2026 22:54:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zoS1rRTpa5PY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2026 22:54:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 80FBC40B3D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80FBC40B3D
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80FBC40B3D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2026 22:54:26 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 20AB160052;
 Thu,  4 Jun 2026 22:54:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E76051F00893;
 Thu,  4 Jun 2026 22:54:23 +0000 (UTC)
Date: Thu, 4 Jun 2026 15:54:22 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
Message-ID: <20260604155422.167314ff@kernel.org>
In-Reply-To: <IA1PR11MB62197FC8E64BE92FBC108E6992102@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260529142628.1678955-1-grzegorz.nitka@intel.com>
 <20260603183036.7c4762d2@kernel.org>
 <IA1PR11MB62197FC8E64BE92FBC108E6992102@IA1PR11MB6219.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1780613664;
 bh=3lMPwTETgOHXdjVrbiyEjoY0H3xuhL5jFk2nN61vumk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=mWqVhDtl9S6NhuYYXnbfYOKqCQPIW+Ht1cApg/HEDqr1C792kFVYvQx9S0hUdEyRx
 4DlsmC/nV1JjporWCyz4mimRtjEgUv4woONpG1J5QuYaJXXFMPqxZJNl9XXn9M8oTR
 YmdudMQhInteUeITIoxa6pfFhK7D/vzKPaY1hyWVM4KW3i9aH7NoUkps3rGZ1OjXUo
 YoiRNk0LxO4kYy63w183d3gvSayScBFJiWD9i2UsI+pzas/CUgy2hX1LE32dXqZjDL
 tjZi7sInI33fhlM3jeukZY3un7hHLzOefigz4G8URTjoGQrtgFhfBDVKrEQNDFVaA0
 AGIsuZuYEVK7Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=mWqVhDtl
Subject: Re: [Intel-wired-lan] [PATCH v12 net-next 0/8] dpll/ice: Add
 generic DPLL type and full TX reference clock control for E825
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
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,google.com,vger.kernel.org,gmail.com,intel.com,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:from_smtp,osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 185A1643E00

On Thu, 4 Jun 2026 20:05:54 +0000 Nitka, Grzegorz wrote:
> > On Fri, 29 May 2026 16:26:20 +0200 Grzegorz Nitka wrote:  
> > > NOTE: This series is intentionally submitted on net-next (not
> > > intel-wired-lan) as early feedback of DPLL subsystem changes is
> > > welcomed. In the past possible approaches were discussed in [1].  
> > 
> > I dug into 3 of the issues reported by Claude here and I think all
> > are really preexisting. But I don't see why we wouldn't fix those
> > first, and have a clean AI scan. Please send the fixes ASAP if you
> > have them, if they are trivial they may make it for tomorrow's PR.  
> 
> Thanks for your feedback.
> I'm not sure if I can identify exact 3 issues you mentioned above.
> I see couple pre-existing issues reported in
> https://sashiko.dev/#/patchset/20260529142628.1678955-1-grzegorz.nitka%40intel.com
>   - 3 issues reported in [PATCH v12 net-next 3/8] dpll: extend pin notifier with notification source ID
>   - 2 issues reported in [PATCH v12 net-next 5/8] ice: introduce TXC DPLL device and TX ref clock pin framework for E825
>     The first one is false positive in my opinion.
> 
> Did you mean those from patch 3/8?
> It should be rather simple ones. Shall I submit it as a part of this series?
> Or a new patch/patchset? (against next or net?)

Ugh, I think I missed that the caller looks at the ICE_FLAG_DPLL flag.
So most of the deinit bugs are not actually bugs.

You can add the fixes to this series.
