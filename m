Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGanKw25iGnLvAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 08 Feb 2026 17:25:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABD11096D5
	for <lists+intel-wired-lan@lfdr.de>; Sun, 08 Feb 2026 17:25:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6695409B2;
	Sun,  8 Feb 2026 16:25:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FBK69_D45duv; Sun,  8 Feb 2026 16:25:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25EB5409AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770567946;
	bh=gYJHp2AKkiikWxkde6LvTz6NpVp4MFyOmDirl7s3n+I=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tSSl+UnoARLjtb19ItcMdsVk+PR2VXzLIAMUCyED/EXqCnK3fOYc0VJ7jTwhITkiw
	 j+Ktb+gCzs9UIltZu8mHK/7Dq0K2ac7Mpfoiydz9Hbt+MnecD2bNpiU/EK/DkqCSPh
	 rnTpvAGdqR4pSAy3vRg5yIVXe9sA3FGgh76SSizIFdRnKJg9vrQrZbGNX60zoOmmBg
	 Ekhofos+Hb4yXSQhMmJKxwLPTNCkCWwSLhrzrw2kVzd+Wbydvdvyv9FBiXpkNigTVd
	 vM4b9rBvgNu45fc5lgf4QpTdBVx515lV5F8yuLk6KRpp7Ud7EhZHTdtc5iNC19EnID
	 +p1AwBSUy6fkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25EB5409AB;
	Sun,  8 Feb 2026 16:25:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CCB18219
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 16:25:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C67528222F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 16:25:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u9WBRVGgyjlj for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Feb 2026 16:25:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1136; helo=mail-yw1-x1136.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0BAF482214
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BAF482214
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com
 [IPv6:2607:f8b0:4864:20::1136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0BAF482214
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 16:25:42 +0000 (UTC)
Received: by mail-yw1-x1136.google.com with SMTP id
 00721157ae682-790992528f6so33088977b3.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 08 Feb 2026 08:25:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770567941; x=1771172741;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-gg:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gYJHp2AKkiikWxkde6LvTz6NpVp4MFyOmDirl7s3n+I=;
 b=Y6fYvWq59nn2jBwKjMs56wkg5DshcMZpWefNixwiHKxxAYIZdhWrepRA1hxUauzb3i
 UkQRazrkhpYkY6ZWrK4F8OWJXQWPAn8+SolTncp97QMbAS1hdF85Q5x1Un7iwcDuj/KG
 HWt34rBLL83sh0+IdR8ZNgZajqLb3mTZ8fuRTLcPNmu4WGE2GZwXbzTHa8UZdL90AMlO
 7+DzLi61bYglyohq/3HR5gIGfzldDeYGDaEKiVtEXpIKbgfXie3DMZn5sMleM57pgPd/
 SlvGKKfuWvoNEWgVvilPupD6lsxtidXDRMZGHhVQHI9NW4rvRA8+fUifoJz9MVrGJj8Z
 QRNA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWBopZbYcs6AJHU21TLVVCQ7UzgTh+oFX6q7zqS30fg7kgeL09AlVBMPqh5ca6zBMLWPep2J0/DRv4NgOuwW1I=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwuYn4ifC8Gw7aegpMWpakkhedFdVhBGRWNOZeIifg1NkX935Nu
 7WVyiCbRizvzRO1PP03tcOigxKECWtzml2UHv8E7eLgnvH0HtXiiXrhV
X-Gm-Gg: AZuq6aKsBRUqmaqYTY9IFp/7rgUjnds1E/CzOxnTNkovZYx80gdHnmFN/kqy8dhjBVP
 3Jizoiw8jpUKtEnx9u1/y5FX8axstugE+5uItHI5hAIJ6MFkJC8ZD+3wbwPFjYskm/W+oS6KOhE
 cPk/G3u6jEP2pHWRCVONsGXBVX/lnPbkFORqL+ymBeSZYPcjx5xxD8Wsfm4c/rnu5/7KoKzly9l
 Ug2dI9hhwtFRzuCjAnOBETRGuLONcw/GKVTnrywcOFdBY5ZJFwcM+ciuKKoxUwAnSWnmrlr96Sw
 IVhMfja/5elAGRqAcON3j7IYu3j/p7QtHteK+Z/lL4Df32d4rguLRRuGES7SIdSN787FwKXEXtd
 f4884eGuFzdDNWBP+W1PHOJadWkogKjevmcHFSt3F+K3LPggbhy4vFVe3EVgrvJkWQnlmaeMHRl
 9/2kWsZV6nu8EpeqQXNHvPff+f3hKyIBFQ+VMBjDH1nfB0xbKUZRuyQ3ltOnE=
X-Received: by 2002:a05:690c:3584:b0:795:19c9:4389 with SMTP id
 00721157ae682-7952aa72ddfmr83159157b3.25.1770567941578; 
 Sun, 08 Feb 2026 08:25:41 -0800 (PST)
Received: from gmail.com (21.33.48.34.bc.googleusercontent.com. [34.48.33.21])
 by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-7952a085999sm70633397b3.25.2026.02.08.08.25.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Feb 2026 08:25:40 -0800 (PST)
Date: Sun, 08 Feb 2026 11:25:40 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Willem de Bruijn <willemb@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>, 
 "David S. Miller" <davem@davemloft.net>
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, 
 Kurt Kanzenbach <kurt@linutronix.de>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 Paul Menzel <pmenzel@molgen.mpg.de>, 
 "Gomes, Vinicius" <vinicius.gomes@intel.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <willemdebruijn.kernel.bbdefedfb87e@gmail.com>
In-Reply-To: <601f0c4b-52d8-4b60-96bf-f2d65f8073d8@linux.dev>
References: <20260205-igb_irq_ts-v3-1-2efc7bc4b885@linutronix.de>
 <IA3PR11MB898652699383BA265C5747A5E599A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260205100347.ssTBDAI_@linutronix.de>
 <IA3PR11MB89865B46DCBEB496BE28703BE599A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <6a0f4cbb-e8b3-4f0e-b7f1-7f9ca5cba97d@linux.dev>
 <20260205145104.iWinkXHv@linutronix.de>
 <66925f09-ef9f-4401-baec-7d4c82a68ce3@linux.dev>
 <20260205164341.pJvni8kA@linutronix.de>
 <76acd5cc-eb6f-4c56-a5e6-f6413736afbb@linux.dev>
 <willemdebruijn.kernel.459b2672b1e7@gmail.com>
 <601f0c4b-52d8-4b60-96bf-f2d65f8073d8@linux.dev>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770567941; x=1771172741; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gYJHp2AKkiikWxkde6LvTz6NpVp4MFyOmDirl7s3n+I=;
 b=c0ScXVXXImTwt0IepSsUcz+wpDEPR7+RKOt9XoVKeQuoo+8tELl5JFWL56mPSVawp9
 1xY0V916IEURQ++f/PShGmeAhwr58f6eozA7m6XhYIXwq4rE5nIGWOMBsFg+F/XatAY/
 NF12VsywyRS5tOYyHwC8UAtDKv8AxzkHNQ0DH/4/yfGy78EdUUCVTs3tgD11SxSXbqbX
 jRgS5hZr8Yydu0Yi+UXe49r3bRa/q+eakPUgNpQIDKZ+a1tIxy4uNKvMTkgB3rcHTYJZ
 vRgL7xVH1s8l/r3psgXYGd/4vpRCQ0ZufYtegDORutMporbrjHLRKTDGUeId7ia8w7qX
 73cw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=c0ScXVXX
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx
 timestamp directly from interrupt for i210
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vadim.fedorenko@linux.dev,m:willemdebruijn.kernel@gmail.com,m:bigeasy@linutronix.de,m:willemb@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:jacob.e.keller@intel.com,m:willemdebruijnkernel@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linux.dev,gmail.com,linutronix.de,google.com,kernel.org,redhat.com,davemloft.net];
	FORGED_SENDER(0.00)[willemdebruijnkernel@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TAGGED_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[willemdebruijnkernel@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linutronix.de,molgen.mpg.de,vger.kernel.org,gmail.com,lunn.ch,lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9ABD11096D5
X-Rspamd-Action: no action

Vadim Fedorenko wrote:
> On 05.02.2026 21:41, Willem de Bruijn wrote:
> > Vadim Fedorenko wrote:
> >> On 05/02/2026 16:43, Sebastian Andrzej Siewior wrote:
> >>> On 2026-02-05 16:27:03 [+0000], Vadim Fedorenko wrote:
> >>>>> So the only thing that bothers me is the read_lock_bh() in
> >>>>> skb_may_tx_timestamp() which deadlocks if the socket is write-loc=
ked on
> >>>>> the same CPU.
> >>>>
> >>>> Alright. Now you make me think whether we should enforce OPT_TSONL=
Y
> >>>> option on socket which doesn't have CAP_NET_RAW? Then we can get r=
id of this
> >>>> check, and in case sysctl was flipped off - drop TX timestamps as
> >>>> it's done now?
> >>>
> >>> This would "fix" this problem for all users which do deliver the
> >>> timestamp from their IRQ handler instead of napi. There are a few o=
f
> >>> those=E2=80=A6
> >>> This would be considered stable material, right? (despite the fact =
that
> >>> we have it for quite some time and nobody complained so far).
> >>
> >> cc: Willem as he is the author of the check introduced back in 2015.=

> >>
> >> But it's more like a question to maintainers whether it is acceptabl=
e
> >> way of "fixing" drivers or it's no-go solution
> > =

> > Requiring OPT_TSONLY unless CAP_NET_RAW would break legacy users.
> =

> Well, they are kinda broken already. Without OPT_TSONLY and CAP_NET_RAW=
 all TX
> timestamps are silently dropped.

Are you referring to sysctl_tstamp_allow_data?

That is enabled by default.

> To receive these timestamps users have to get
> CAP_NET_RAW permission, and it will work with the updated logic as well=
...
