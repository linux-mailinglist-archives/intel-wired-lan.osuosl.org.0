Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNwUMncOhWms7wMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 22:41:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D09FF7BAB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 22:41:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD23783C34;
	Thu,  5 Feb 2026 21:41:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xg6WCi2mI-k6; Thu,  5 Feb 2026 21:41:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCEEF83C4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770327668;
	bh=xMi3TMTzHre49/W9FbMfovBthku/tyd5plmAYzO1SQM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iQn2z7bzpuF975o79Eom4QulMr8H2meesdG7fu/Vc/6HVO7VUaYUuJutusdgkyEDs
	 0FKty5V8/F92tp+htBfYMd6+S7Q/6PyjK/vJyr+dIJwrUnF3/jNaebTdXns+gmPL2c
	 2x9iNjqzHX/WxxwbRh8a3N+3L4vmhYP7TOYJzRzJjbaIUGbH+DILZkiH/uhEBS7cs4
	 8A7q45xu/BfKSeMszcT/fH6ZVzyT34OeUzUCfWayywMtfql+D9nxe2dAor6dWmqtl8
	 mbcY/qeNf5nw7q1AGgBz3jWni1RnsUmyerS9ogZgXfkERvaxZhi9NMl6bqDHaz9L8C
	 YYQWuwXEz6Zzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCEEF83C4B;
	Thu,  5 Feb 2026 21:41:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B0CBF173
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 21:41:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 951B74084C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 21:41:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8JrSX7fuUrNh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 21:41:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1135; helo=mail-yw1-x1135.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C253340175
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C253340175
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com
 [IPv6:2607:f8b0:4864:20::1135])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C253340175
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 21:41:05 +0000 (UTC)
Received: by mail-yw1-x1135.google.com with SMTP id
 00721157ae682-7948e902fadso14230897b3.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Feb 2026 13:41:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770327664; x=1770932464;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-gg:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xMi3TMTzHre49/W9FbMfovBthku/tyd5plmAYzO1SQM=;
 b=jdgiL0gKgBtGHYyXPcFQQZxh5pR4eLVz/BdjA7zcZRCy2e1ms+WLXQdNKsDX8mO+Kp
 /mspvfU35eGlb6q4BV13lo2cUMhCrBSsc5diA6sScgDgAA9imbGcF24KF+Bo/lhnTJz3
 PxLgRnz8wZEyc/VHTj2opt5icqF1OfsJ5ELC0HH0SrC4Vj6lj1TunTrCFZ1I1DKdDVFe
 9OJw+IvCJpkdC9BZ6R1yzepmhil1VBWmFVSpivIEJhsxXHVPAjj7yoIfCin570xm9Xvw
 fQ0tMeCrizQrvQs+RJ8dc1nhnI0QzY4w5EP08QB3+tMgLdxD2sNnJak71gyX+2mXB2Tq
 jvfg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVAk6HkW6N4oWNMIiQsDe+TuxhbXjIaClq6IgUNUcDtKu3lfsVOAVpEyhQ5CgVzCRoq2kXBpY0KmTpecpKfn6I=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwMG8qmN5Ax6JjHVL+2jqyLDr4cerfasylCgzVdU4ivyAWKCrP3
 sA/cOAM5ET8wvQijZH4wxRiY11Omkfq3RHVyKmIaXUx2qg9oKd50yvU+
X-Gm-Gg: AZuq6aIKD7EfvXuZtgyGtO9BTWCIWNeG5B2ieqRBC6/kIPGjYmN+g2FSH3RZAmfmtNM
 U31v192NjTgkHlU2nhcCB5WqtSwMciEQ4l2682CBv7+GuCHjwNn7C8UMUq/mNE9Wlii2MIkGSY1
 ruNQbUtEUVnz0BGLlpTuwwL2MsNTzj0nfQbJjRPptP/bE1BC6tKTfb119K27I7em4om8rpdRgIn
 y8G73/Znlfztw8L4v5xskd4n8p8xBNRl7mWGvp4NlGP1ovehI5Ce5HFIA5/L7HdbA7pc0tq0xbK
 PFfI9FLdxRIdnF7yDxP6he0Jvhifqb5RxSaQEsD+An4sXCUWbf6qEpEnNpbZWwNPGv65WBeQsdU
 tK1/J39syB5yIBZAVwXBn/jKU6NcHSuzSSyZi306B1RAMVesaCalWQSU51RL88mL30/gVxM1xJC
 3k6Z4e8wURPkTW+l9fbKAYIuxcQ0mymDy2DRihjCY43/QMlevJaB1KVCgV+So=
X-Received: by 2002:a05:690c:67c2:b0:794:84c1:9c9f with SMTP id
 00721157ae682-7952ab99bc2mr5236527b3.66.1770327664378; 
 Thu, 05 Feb 2026 13:41:04 -0800 (PST)
Received: from gmail.com (21.33.48.34.bc.googleusercontent.com. [34.48.33.21])
 by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-7952a246cbcsm6412237b3.46.2026.02.05.13.41.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Feb 2026 13:41:03 -0800 (PST)
Date: Thu, 05 Feb 2026 16:41:03 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
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
Message-ID: <willemdebruijn.kernel.459b2672b1e7@gmail.com>
In-Reply-To: <76acd5cc-eb6f-4c56-a5e6-f6413736afbb@linux.dev>
References: <20260205-igb_irq_ts-v3-1-2efc7bc4b885@linutronix.de>
 <IA3PR11MB898652699383BA265C5747A5E599A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260205100347.ssTBDAI_@linutronix.de>
 <IA3PR11MB89865B46DCBEB496BE28703BE599A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <6a0f4cbb-e8b3-4f0e-b7f1-7f9ca5cba97d@linux.dev>
 <20260205145104.iWinkXHv@linutronix.de>
 <66925f09-ef9f-4401-baec-7d4c82a68ce3@linux.dev>
 <20260205164341.pJvni8kA@linutronix.de>
 <76acd5cc-eb6f-4c56-a5e6-f6413736afbb@linux.dev>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770327664; x=1770932464; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xMi3TMTzHre49/W9FbMfovBthku/tyd5plmAYzO1SQM=;
 b=emwP/LAv9p6T6gwnah2cUWRb42/Sep7RxEbg/f36lbrcjKtql6eQG3hHZPbdrn3ur5
 wq1Z3ggQfPXOH92wnOvsIG8bGT3YT0ubxWHgsQPVxpEEr4LR01TyNExjzRwhr52+x+g+
 55HCK1mc2w4x4SGBndBR7MAed5ANPk8ru8L5WOMrGI4+6OKCLqbnOouOsuUCvflJ962t
 TTxrR+7dW/LFMK6l/DoV4iy63398nUNygUV4o74j6OC6zGbZHrkcreLL1bUsJ41OgKCj
 fWgENrOwPmY5xZwlGM7et138Cmb1nvwmQSOl0Y5tzyolwm5Nn0vwydVJLxQD2Vgl/Zc1
 ti6g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=emwP/LAv
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:vadim.fedorenko@linux.dev,m:bigeasy@linutronix.de,m:willemb@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:jacob.e.keller@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[willemdebruijnkernel@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linutronix.de,molgen.mpg.de,vger.kernel.org,gmail.com,lunn.ch,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[willemdebruijnkernel@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0D09FF7BAB
X-Rspamd-Action: no action

Vadim Fedorenko wrote:
> On 05/02/2026 16:43, Sebastian Andrzej Siewior wrote:
> > On 2026-02-05 16:27:03 [+0000], Vadim Fedorenko wrote:
> >>> So the only thing that bothers me is the read_lock_bh() in
> >>> skb_may_tx_timestamp() which deadlocks if the socket is write-locke=
d on
> >>> the same CPU.
> >>
> >> Alright. Now you make me think whether we should enforce OPT_TSONLY
> >> option on socket which doesn't have CAP_NET_RAW? Then we can get rid=
 of this
> >> check, and in case sysctl was flipped off - drop TX timestamps as
> >> it's done now?
> > =

> > This would "fix" this problem for all users which do deliver the
> > timestamp from their IRQ handler instead of napi. There are a few of
> > those=E2=80=A6
> > This would be considered stable material, right? (despite the fact th=
at
> > we have it for quite some time and nobody complained so far).
> =

> cc: Willem as he is the author of the check introduced back in 2015.
> =

> But it's more like a question to maintainers whether it is acceptable
> way of "fixing" drivers or it's no-go solution

Requiring OPT_TSONLY unless CAP_NET_RAW would break legacy users.=
