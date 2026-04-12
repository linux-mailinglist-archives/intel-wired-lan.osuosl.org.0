Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WA+tIlax22lkFAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Apr 2026 16:51:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABBF3E4608
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Apr 2026 16:51:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFA1F8446D;
	Sun, 12 Apr 2026 14:50:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0dcIdoCvOgPR; Sun, 12 Apr 2026 14:50:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CD778446E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776005459;
	bh=uT3jkQEWGfRe9a1eYcVLdjKJ46PzqgyIBTDWzxD0li4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jgq/pbZpqnMQpsUHtvmtvDq8GI8c3Tvz7z+VomSui5m+SA17se8rkP6SjY0cOMvix
	 cRJJl+pLmwQrKVSDDCRurySviTRKfM//YuWV7lISDORhgZck5hjPWYmw2yRvzvBkI8
	 QxCLBdF5r75gbnvYgVcmUGgMKfJuAvnAyE0j29KpR88R8phqxVPX1qHuxCaRyYv8MJ
	 ca+nsMJGHdft2rn2GL5yN/1dXEkkdCYhS2JIjVQ5+zWX/giXl8eBz8IevACQ5bwQ5O
	 Svv/VOGD+8CrVFkWWC7RysJmwSMNWlykc1ArEOWM1haheY1xRzkFhJhJ/1SreWngqs
	 NIRKqwHsNybgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CD778446E;
	Sun, 12 Apr 2026 14:50:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 453C1194
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2026 14:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E93240E59
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2026 14:50:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vFq7jcukX5zk for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Apr 2026 14:50:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4DBAB40E07
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DBAB40E07
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DBAB40E07
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2026 14:50:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9221D40AF7;
 Sun, 12 Apr 2026 14:50:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A897EC19424;
 Sun, 12 Apr 2026 14:50:54 +0000 (UTC)
Date: Sun, 12 Apr 2026 07:50:53 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
Message-ID: <20260412075053.23660721@kernel.org>
In-Reply-To: <IA1PR11MB62195E2AF6FE5B102B2EECD392272@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
 <20260406192312.0f7a2760@kernel.org>
 <IA1PR11MB621925C1718B838147404DC492582@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260409181041.395a0c37@kernel.org>
 <IA1PR11MB62194BF52262FCEB7FD5E76D92592@IA1PR11MB6219.namprd11.prod.outlook.com>
 <20260410133812.4cf9b090@kernel.org>
 <IA1PR11MB62195E2AF6FE5B102B2EECD392272@IA1PR11MB6219.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776005455;
 bh=S32mcILpghlDeygeLc6FWvgkzRilryCAAV2qjAvE7zU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qn/duyMbgo37GSHoV3G2LBAX/Q7Mg5TMfft/GqI9baJml7Kwngrxp/fKSpMtigjBU
 0RdXxHMONadZFd5hcDODRKBnRb1Z+LBlTCl+qA7Ki0xOOh/+9n6HMAeF/opCr577sK
 4+tTD7qROvuftcL1WMYzeOyQusfrjlpRmShhqMJMAEDWHabDrxj8NPTm44YAeI78DN
 WzDqZMWe4AtHofPAUKpyMjL4D5bIy4r+CuUtM7lBGNj79HsgP8DdQ5ve0NpmxRB+hc
 HIOEq/86m3ca2jWogZRdXjP6MgBducQ3TztjaXEN7BgRM/zXG8q7AattQu4ttOZGxu
 SPLb53CxJwrZA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qn/duyMb
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,google.com,vger.kernel.org,gmail.com,intel.com,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9ABBF3E4608
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, 12 Apr 2026 13:50:23 +0000 Nitka, Grzegorz wrote:
> > > Proposed solution just seems to be clean and fully reflects current
> > > connection topology.  
> > 
> > Do you have the link to the old proposal that was adding stuff to
> > rtnetlink? I remember some discussion long-ish ago, maybe I was wrong.
>
> This is the patch from the discussion I put the link in the cover letter:
> https://lore.kernel.org/netdev/20250828164345.116097-1-arkadiusz.kubalewski@intel.com/

Let's go back to something like that. But leave the OC info out of 
the XO, just ext-ref, dpll, xo? We can add the xo types later if really
needed. Sorry for the flip flop.
