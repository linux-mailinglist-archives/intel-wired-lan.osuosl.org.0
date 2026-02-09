Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEeXHxXXiWnZCAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 13:46:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B1C10EEA3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 13:46:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF7F9837C4;
	Mon,  9 Feb 2026 12:46:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cyfLOXhmfIZo; Mon,  9 Feb 2026 12:46:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E59F837AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770641170;
	bh=QlrEMA6U+xP0E3BuDUykUYlfoN4reTbUOv4b0PXeCW4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NEtneF1LLlQgBe53Q1ahNCzwotkBqeqt8J/OeAVSDHAfKJQ8JsROR1Dl9vZ8HkzZj
	 X4YPbFOpaJeM87LJPDBzgVA+kmbd68ZIegNpsiXPKzF3iRKlDIixwAzjZ4GE8h0y/R
	 cEizUKzwU09umPf/cEwpT0UuAdrwcR97VB6awaSUEat/pjMaqxYygdeLLEU204hsMA
	 ZmUcRnIkpL0RdlBSf6+Dtny+FZu2Rv58vzS+Z6rkDqaO7Gk3C7zwecZKtVI3LjMJ4G
	 Bk92GJZpSyetML4JCS7mgtsZvxt9xD4pg3TTmvvjVUIFIgXKs8R6G5mgll6RtoUCsK
	 IgMMXbLcFQfeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E59F837AD;
	Mon,  9 Feb 2026 12:46:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0221B1A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 12:46:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D13CE837AD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 12:46:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HogElvYodlqb for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Feb 2026 12:46:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1131; helo=mail-yw1-x1131.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7EA21837AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EA21837AC
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com
 [IPv6:2607:f8b0:4864:20::1131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7EA21837AC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 12:46:05 +0000 (UTC)
Received: by mail-yw1-x1131.google.com with SMTP id
 00721157ae682-79430ef54c3so25509377b3.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Feb 2026 04:46:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770641164; x=1771245964;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-gg:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QlrEMA6U+xP0E3BuDUykUYlfoN4reTbUOv4b0PXeCW4=;
 b=fl9yR9d5qTv/TY5H5i2Gmmof8xBY9c9vFhvpCboW5uBu4CRmmEOo1ID+24GIjMiI/J
 YQWZKPnV9o0xAJmIK/aVlgGDMn0i69/FxOvRz00H12H1xQC2sgfW/NEn6xJQ+5czU+f2
 PRbNCDb8QVaR5PFo8qJKIo7AVlIsSEatOKHAtg7Afl4pCmm4RFPUfkI4WJd4yKQXUeTR
 7UEB939lPN3kFBiSYBEtQyXEcK5FaF7WNRSmlDP5l+JXC90QCbWFFm9W+Y7q1U63qXJU
 zKW44i7ttKgHw5e6jkHXOa6t9Da2DUSjXbvfUddnrhfS8EhzifoG8BUt8htloa48Xxjn
 3yvA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXnHe8dQUnMN9u2ACCYBrDwDQwmz1/FattmySvFj6KmssdpuL3iLxMTeHV3oQxqYJPqYKz14+0Dd9qchDKn2LA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzROSBUoVo18gnpon+OV2g5dbfsHfJuPUcNqszqyTT/VdePi3wx
 Ho4v/BJXzECd/G8xY9gWB+XS8G0YuB5nHx7voyJe8cABQM3YPX6CefMZ
X-Gm-Gg: AZuq6aIUGaZyAO1DmRPu4vR9utUO8ZO7fHgk9IOdyxXsn9uEeUrR/dPxWLrMTfGzOva
 sbCPwuh3CgCzRFQvms5dWcTYjCJ1yaGRJzzk5iR1zCNtk2DJQlm/0GlfvGOzGAoo4gi7oFO/0Bg
 4m01Yxr7C6SgR2pRsLjeX1rZMo35FjR8yuY+KJ8OzPOzMfV0huE2Z43vqG+csVhYzJucAzmlcSw
 m1fh//ajwXvKF79zu2cRBdqirbbFbif4E4+PaAXb0B96FS36a/UaR84zHoGZQWMSw9Z+itBS50J
 KgF1+yELntyJs5E4pj6IazCp3/8DSS4u4nsn9MQdRWJ4ap6UTev5s7O1PcdurS1i1cepfGgugCr
 j06c5HNb/Fu3axJPfx59OHWz6zSKr+v/I6reF9Ojy+djaamg6bElZ/febAdI6u3h+Pd+yT8Z4JQ
 cOjIGMgvCBwxRWs8pZ9pjME4WaeY+o2cNL3J2Sy9tdC4mkSJ/TS92tvFgiQOraPPWZA/8fEw==
X-Received: by 2002:a05:690c:9b0a:b0:794:a165:1c3b with SMTP id
 00721157ae682-7952aab650dmr91143427b3.30.1770641163990; 
 Mon, 09 Feb 2026 04:46:03 -0800 (PST)
Received: from gmail.com (21.33.48.34.bc.googleusercontent.com. [34.48.33.21])
 by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-79529e45621sm91555017b3.0.2026.02.09.04.46.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Feb 2026 04:46:03 -0800 (PST)
Date: Mon, 09 Feb 2026 07:46:01 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, 
 Willem de Bruijn <willemb@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>, 
 "David S. Miller" <davem@davemloft.net>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, 
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
Message-ID: <willemdebruijn.kernel.2e6213a98660b@gmail.com>
In-Reply-To: <78e2af2c-40e6-43f1-9471-42f350e69389@linux.dev>
References: <6a0f4cbb-e8b3-4f0e-b7f1-7f9ca5cba97d@linux.dev>
 <20260205145104.iWinkXHv@linutronix.de>
 <66925f09-ef9f-4401-baec-7d4c82a68ce3@linux.dev>
 <20260205164341.pJvni8kA@linutronix.de>
 <76acd5cc-eb6f-4c56-a5e6-f6413736afbb@linux.dev>
 <willemdebruijn.kernel.459b2672b1e7@gmail.com>
 <601f0c4b-52d8-4b60-96bf-f2d65f8073d8@linux.dev>
 <willemdebruijn.kernel.bbdefedfb87e@gmail.com>
 <20260209090621.GiZqTiMJ@linutronix.de>
 <8e762437-69f9-40d7-bb75-3a45bef1d5d6@linux.dev>
 <20260209114836.GPU-vnnh@linutronix.de>
 <78e2af2c-40e6-43f1-9471-42f350e69389@linux.dev>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770641164; x=1771245964; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QlrEMA6U+xP0E3BuDUykUYlfoN4reTbUOv4b0PXeCW4=;
 b=Ix4oAUKN753a8IhwAJsYPuHCa/rL+BkXHjXtpb26nk/+p53zyXwh1CI6P0T1IH8NDl
 ChPGK1niO1I46wLgSluv2QzMUnqfCnfDA9j6GxaBcGH/QZ7NE4rBwqRr1Y6nQGfKHWvc
 rxp3Kd4hJR3M+KnPuwwSDp7xz9ZZtXXHVBL6SEYqnb455ehOAycRGBGwEJ1fyqYXmiH2
 BGnrfaVErKCKl/5rlUaPB4DFxr6H+abz4stjlgfYVnsHFyWqZYv4U30IvibBJT1Cfmm7
 kUXsDbciC1Mt2HJOmUpkxZy71zNSObc6cDpJDAY8dAUNANOp45cmF5ROpZQoYpg86BrC
 V8WA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Ix4oAUKN
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vadim.fedorenko@linux.dev,m:bigeasy@linutronix.de,m:willemdebruijn.kernel@gmail.com,m:willemb@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:jacob.e.keller@intel.com,m:willemdebruijnkernel@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[willemdebruijnkernel@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[willemdebruijnkernel@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[gmail.com,google.com,kernel.org,redhat.com,davemloft.net,intel.com,linutronix.de,molgen.mpg.de,vger.kernel.org,lunn.ch,lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 71B1C10EEA3
X-Rspamd-Action: no action

Vadim Fedorenko wrote:
> On 09/02/2026 11:48, Sebastian Andrzej Siewior wrote:
> > On 2026-02-09 10:43:55 [+0000], Vadim Fedorenko wrote:
> >> On 09/02/2026 09:06, Sebastian Andrzej Siewior wrote:
> >>> On 2026-02-08 11:25:40 [-0500], Willem de Bruijn wrote:
> >>>>>>> But it's more like a question to maintainers whether it is acce=
ptable
> >>>>>>> way of "fixing" drivers or it's no-go solution
> >>>>>>
> >>>>>> Requiring OPT_TSONLY unless CAP_NET_RAW would break legacy users=
.
> >>>>>
> >>>>> Well, they are kinda broken already. Without OPT_TSONLY and CAP_N=
ET_RAW all TX
> >>>>> timestamps are silently dropped.
> >>>>
> >>>> Are you referring to sysctl_tstamp_allow_data?
> >>>>
> >>>> That is enabled by default.
> >>>
> >>> Yes. If so, then we don't need the check below which requires
> >>> sk_callback_lock.
> >>>
> >>> Are SIOCSHWTSTAMP the legacy users or the ones which do not set
> >>> OPT_TSONLY?
> >>>
> >>> I would suggest to move the CAP_NET_RAW check to the point where
> >>> timestamping is getting enabled.
> >>> Also if ndo_hwtstamp_set is the preferred method of getting things =
done,
> >>> I could check how many old ones are can be easily converted=E2=80=A6=

> >>
> >> Looks like you are mixing things. SIOCSHWTSTAMP/ndo_hwtstamp_set are=
 HW
> >> configuration calls while OPT_TSONLY is socket option, which is setu=
p via
> >> setsockopt, you can find points searching for
> >> SOF_TIMESTAMPING_OPT_TSONLY in the sources, basically
> >> sock_set_timestamping() is the function to check
> > =

> > Yeah, but what is the legacy user here? If you enable HW-timestamps b=
ut
> > never set OPT_TSONLY and the sysctl is also 0 then you reply on the
> > CAP_NET_RAW later on. Right?
> =

> Legacy users here means users of HW TX timestamps expecting full skb to=
 =

> be returned back with the TX timestamp. Legacy here means that skb will=
 =

> be returned with headers modified by stack, which is kind of exposure o=
f
> data, which requires CAP_NET_RAW...
> =

> > I just try to justify the CAP_NET_RAW check and if it is required to
> > move it earlier (where HW timestamps are enabled). And if the sysctl
> > check is enough then maybe it is not needed.
> =

> Capabilities should not change during lifetime of the process, should b=
e
> fine to move. On the other, sysctl can be changed system-wide which may=
 =

> affect users.

Ignore the hardware configuration. That is entirely optional. Some
devices will timestamp every packet.

The capability check here is per-socket, independent from the system
hardware configuration.

I don't see how it could be moved.

Before OPT_TSONLY was introduced packets were always queued with their
payload. The sysctl check was added to optionally disallow this. The
check could arguably be moved earlier in the socket lifecycle and the
decision cached in the socket. But then flipping the sysctl would not
affect existing sockets, so that is a change in ABI behavior.

