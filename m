Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KErpIWBZi2ljUAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 17:14:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 036DB11CFB1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 17:14:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A38F40662;
	Tue, 10 Feb 2026 16:14:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t3y4zflEI8G7; Tue, 10 Feb 2026 16:14:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65EFD411F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770740060;
	bh=gchGUW1rkpuZA2Rc75u+DqHEmEZ2JQMqcNEoDXirPgQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nGj0dp7wdGOKls1clGQ9dNy8QzOv85ov15xr3hzh1WPXYlhTSoomQiYQo8SfJdSJK
	 lcwXEb15IMl3w7IRah+hX2qzw6ViNbKheLHsixCUrF42ZX1vGn0TpUP67ub1XnyuuV
	 Yzan8pmFP4M/2iNvbNfO77TZm9MU3nzPc5WPWJY0HARuczkgJJlAL/gt/rOk/i619m
	 LLoeL5TBkNYzIaCuitad7fdqB1h/j0L9TzUEg78Wf2SGJPkctCBZ++SvApk9UJ2rR4
	 8q0xuXCzPGDj6AB4J3STUqetFnThfgcw/inoRd3bW4xQpPUcPdIw57KCalBe+aQWQC
	 IePK3sqff+/Qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65EFD411F0;
	Tue, 10 Feb 2026 16:14:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 06466F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 16:14:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB88381387
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 16:14:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dvsczsWHMtGm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 16:14:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112d; helo=mail-yw1-x112d.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1478581346
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1478581346
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com
 [IPv6:2607:f8b0:4864:20::112d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1478581346
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 16:14:17 +0000 (UTC)
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-7962119ff2bso43700187b3.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 08:14:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770740057; x=1771344857;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-gg:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=gchGUW1rkpuZA2Rc75u+DqHEmEZ2JQMqcNEoDXirPgQ=;
 b=MYBOwxIQaVtwwCmLD89ARwJkJPBV2qabKdDDRVAz/bh7Z80t60MGhVQqYFDZPQpQBY
 0qtzh12lCWdhQ6jk5OzVW4qoC3yW0Zw++n8MItplo8Vxp0242pYf6iMfMOcLi25wv3ZA
 O7DObGFtm4Kes59nnnZoq24LK14qjkCDcotMBJumMhr8XFdDhc30ZQCBIDhqEq64R9Kw
 SKD2zfWsIfEKk2cIOBTDLfPFATdTVeB1bXag7LReGkSzVQxKEWGfhyntuc3Qf2HCterE
 Mbhq8zsHJ9fhk28hAGDFt9k4CgGI9WwrOM9wduLeIezXpTFOOkDA5cHSZ6r3FHWbCDHc
 aR9g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVEVBCw6U54mlzKMVeeROJpij6FN86G5KqAJs9smqLpvLJz8dloqn8PVnWsmB1xDGzUZP5LbhlHlpVBew6qyPU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwpVQVJ71hAE0MlAY0lpU9LFP3I8UxrmDeMd6nCGyJquXWrVps8
 F8WsNEgqtjoTdlvuFCzQUWrWVMwG3V1Y67OLPiTXQtLlUE1vyo4C2n6O
X-Gm-Gg: AZuq6aKyfkJvv7H2parwJtQoA/OBtqrWRzlKnRmHXz2GomEZE68mhb4ySnm/tNZyn28
 CWlLknOoB/mPeeGgj1GvyeKeih0mVHOVP0xIgDnIdiMqzaSnfM8aFLIOZ9HenuoFnnJMyqmzARV
 O438RLLK0m0D4XpoYF0AntbewC00X8BBCfUI7PflCSsCKdaY1QAj/6oB24d9X8IFfr636tIehh4
 7jGT42umGNFnxMGfcRAn70k6sDv+TvAxlH/dVjgD1vv6GX0XwdLSAGBzPHgutVKW8VRSfpMZIdx
 xVP/s5tE0bHqhN70DfTH8L8PpGPyE2WU49CJYqhK+eGNypw+Vm5WD5wAeEgyggbOEIRE4wnli1c
 6ERx9HSnoQzpjwsFFOncQSM4Gi1ERaT+KlpF6qvS8F2g5Lr2mvKK8z8x0+JvOk07GffE/7dwpVb
 yY/oId4V7TDVaflzf9VWV2Tk7ZmkQd/yBu4HAeKYCnFZWQjB+7gxSM3hKFo4reMJq74ePwK4M=
X-Received: by 2002:a05:690c:c50b:b0:796:2fde:5dbe with SMTP id
 00721157ae682-7962fde6696mr123516557b3.44.1770740056764; 
 Tue, 10 Feb 2026 08:14:16 -0800 (PST)
Received: from gmail.com (21.33.48.34.bc.googleusercontent.com. [34.48.33.21])
 by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-7964cd48badsm49249307b3.19.2026.02.10.08.14.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Feb 2026 08:14:15 -0800 (PST)
Date: Tue, 10 Feb 2026 11:14:15 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
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
Message-ID: <willemdebruijn.kernel.cceee43f5b9b@gmail.com>
In-Reply-To: <20260210121207.9kLHroS0@linutronix.de>
References: <20260205164341.pJvni8kA@linutronix.de>
 <76acd5cc-eb6f-4c56-a5e6-f6413736afbb@linux.dev>
 <willemdebruijn.kernel.459b2672b1e7@gmail.com>
 <601f0c4b-52d8-4b60-96bf-f2d65f8073d8@linux.dev>
 <willemdebruijn.kernel.bbdefedfb87e@gmail.com>
 <20260209090621.GiZqTiMJ@linutronix.de>
 <8e762437-69f9-40d7-bb75-3a45bef1d5d6@linux.dev>
 <20260209114836.GPU-vnnh@linutronix.de>
 <78e2af2c-40e6-43f1-9471-42f350e69389@linux.dev>
 <willemdebruijn.kernel.2e6213a98660b@gmail.com>
 <20260210121207.9kLHroS0@linutronix.de>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770740057; x=1771344857; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gchGUW1rkpuZA2Rc75u+DqHEmEZ2JQMqcNEoDXirPgQ=;
 b=nLwCuaaa8TMjXIfMO7dF+1GABsxq3079dkvZ/C/RCsJv8gO8Z7bA4jQkdTjoKAZf6e
 cek5SpE4z8TtjlvgUf0q9zuaGhCr5G3UKCbqyGkg5kvO89o+JmUmBKU/gANtqtAeHsog
 I4vnkJKguD92TA3BbUwDuRxQumV2qPKhXrcZPB7SXjZRxNvrB1Gr6PuxiUMzWIJaYyEv
 64o2B69xTfLiD6bx8ts65J8wzZGYrBBCT1RC0QO+Tu95DEBGCcxRfbdk7Im/4ILLs4G8
 pPAP8WXndcuZxRj1ac6WMZ7pl0b4rMp4qh3mNsdzpNJkL2Y+4XSclqFjA6UtES8KlM6L
 tY3Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=nLwCuaaa
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bigeasy@linutronix.de,m:willemdebruijn.kernel@gmail.com,m:vadim.fedorenko@linux.dev,m:willemb@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:jacob.e.keller@intel.com,m:willemdebruijnkernel@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linutronix.de,gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_FROM(0.00)[];
	FORGED_SENDER(0.00)[willemdebruijnkernel@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[willemdebruijnkernel@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[linux.dev,google.com,kernel.org,redhat.com,davemloft.net,intel.com,linutronix.de,molgen.mpg.de,vger.kernel.org,gmail.com,lunn.ch,lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 036DB11CFB1
X-Rspamd-Action: no action

Sebastian Andrzej Siewior wrote:
> On 2026-02-09 07:46:01 [-0500], Willem de Bruijn wrote:
> > > > Yeah, but what is the legacy user here? If you enable HW-timestamps but
> > > > never set OPT_TSONLY and the sysctl is also 0 then you reply on the
> > > > CAP_NET_RAW later on. Right?
> > > 
> > > Legacy users here means users of HW TX timestamps expecting full skb to 
> > > be returned back with the TX timestamp. Legacy here means that skb will 
> > > be returned with headers modified by stack, which is kind of exposure of
> > > data, which requires CAP_NET_RAW...
> 
> Ah okay. I assumed the err-queue was the standard way of receiving
> timestamps.

It is, for tx timestamps. The open question is whether they are queued
with or without packet payload.
 
> > > > I just try to justify the CAP_NET_RAW check and if it is required to
> > > > move it earlier (where HW timestamps are enabled). And if the sysctl
> > > > check is enough then maybe it is not needed.
> > > 
> > > Capabilities should not change during lifetime of the process, should be
> > > fine to move. On the other, sysctl can be changed system-wide which may 
> > > affect users.
> > 
> > Ignore the hardware configuration. That is entirely optional. Some
> > devices will timestamp every packet.
> > 
> > The capability check here is per-socket, independent from the system
> > hardware configuration.
> > 
> > I don't see how it could be moved.
> > 
> > Before OPT_TSONLY was introduced packets were always queued with their
> > payload. The sysctl check was added to optionally disallow this. The
> > check could arguably be moved earlier in the socket lifecycle and the
> > decision cached in the socket. But then flipping the sysctl would not
> > affect existing sockets, so that is a change in ABI behavior.
> 
> You could cache only the part under sk_callback_lock.

Can you elaborate a bit?

> Any other suggestions?
> The access from IRQ is quick and avoids any detours.
> The alternative would be to move the whole routine into an aux_worker.
> For every driver doing it from the IRQ handler.

Perhaps CAP_NET_RAW can be checked in a way that does not require this
specific lock.

See for instance other examples that instead use
sockopt_ns_capable(sock_net(sk)->user_ns, CAP_NET_RAW). Though that
uses current_cred() so probably won't work in interrupt context.

Changing the check may subtly change behavior. But that may be
acceptable as long as the consequences are clearly described.

An alternative would be to delay until dequeue. But that would wake
the reader and then drop the packets, so without any data to read. Not
practical.

The core issue seems to be that the ptp_tx_work is not scheduled
quickly enough. I wonder if that is the issue to be fixed. When/why
is this too slow?
