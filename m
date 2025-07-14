Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACAAB03E84
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 14:21:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0979F40AE4;
	Mon, 14 Jul 2025 12:21:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gh2p9Dee99Pb; Mon, 14 Jul 2025 12:21:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DADD40AFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752495689;
	bh=PUhNkhnJM9LJg+lJ4kHUKdCxmecqnhP8vLoEyt2XIgA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ShgD27q0YA8iag/GMqjT2Dty7vM5OYGEsu6m7UEyX8oxHMTMvzHOMlPGpRdl1Q1/O
	 S4PNy8mffBlvrfLcvQOMBUPQwAc4SYwqGBEzZzCFYviHmaXU1KjJ4diEOYNzk+sbbt
	 6k4fWbi9A9liObume+qCPb7tAqZGFN3h1M7vOgh7K3ybe3wddsPBG5Jn3Xp2GKWgi3
	 FnZtViUIkihsPxQZPEdCm4jv/zKHtyq5qVYat7OXBHNs2pYIEzNxQvGSaDp2olqcO9
	 Fw44N5LnxC5pYmq6CQ38JdVSJ+r9qILqP9VJDqdOREpXzd6ewX27ywkGB4m9SQDSez
	 F9fBpzMbi9caQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DADD40AFA;
	Mon, 14 Jul 2025 12:21:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 41DF35E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:21:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2392060AA4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:21:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vWHMilZ0lINn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 12:21:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42f; helo=mail-wr1-x42f.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5F9ED6083E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F9ED6083E
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F9ED6083E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:21:27 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-3a4fd1ba177so2766453f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 05:21:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752495685; x=1753100485;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PUhNkhnJM9LJg+lJ4kHUKdCxmecqnhP8vLoEyt2XIgA=;
 b=KxY9lFH37VC8DAwYL0jivWf5iVOPNGrwjsANzrcy4iFoRUDfglPtBY3Y03zLlMEFqt
 PCuiFaspvas7cRrBFerFxZLHxfDMyM8aD+oWdIYvpHDmQqSp726sTV7QSi8aUfo129o0
 EZ74IJUMZ7IOqSE/b991Ix4jrEhQw95bVFlTsluILa/x6KmGFQ6mmlhQXDB7/FoHcdTh
 kojWjKE1BH8GkInqPeqX1VMdmwqQFr23m41juI+PdH73yjbpoo34JnZM4ap5+Zdpqutb
 I2vd9l5pY6VKeJTB0yyKZzANGZ1/RTQ0P6QTLn3PTD07Aa4woi5pnanYSk/u3+cVakjH
 i7MA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUDGKXUpU97F0L71llT8gaXivpG5k3xcsO3AR06dWlBLuE4WIjdTvzVheBh6BAdm0BPSsU6YKGyP3oJ7VR8gi0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyTcN9u/IaA9nBAd7rV5XQ7QDTmUdC8pDg4QdolUlq4Um2gTdmU
 xLL5KAQx8RdRjl8g1EVXpvnhBJyALh6VfWVgUPD/JICG5CSWlXQxjLnN
X-Gm-Gg: ASbGnctI7zE3YQkdCi8TLfB5LjRaNJ+/NMkbd2i2HkVfe+BtlW9gaNG8PlxWsWVfgqb
 Opl4D4Hd+BFBjU4v6Dh7azgTHSOt7mHdNGInO/hjw4diLW/YjHE12YM30IRh3ZrHbdwvfY2CDv7
 QUy9Wv0LwL3Z0oEYTusZ2mayvXfPkG6b1EENFRDSgVC18yliBaym1z5i2lCgCuSB2Upq9kXEKcD
 BUU53yT78geFCcUCLIaVI4t07Dn6i3hb6P4FW/kaHEEtVbGrudrBQhBGA1fJ8EkUllBZ6I5laO7
 n1w4M6PKLmPa8lYuw5opdl/3Z7QwqqnTI0QUylRkaXsciGSfG/uvfixO154/jfpBQwYZJqaM0EK
 V1bTAPAt8DMtkXtN2SRGGK8Zl2Bo2mNp4Qb1Kiuf3M++JVTNRjZz+RBFk1GfM
X-Google-Smtp-Source: AGHT+IFPob/ovid7y6X6Qrgj4BNMpAVrprUu4PpYPUCrQ6SCsUTGZL+60GqaHj6ms6E+U4jzYhkbhQ==
X-Received: by 2002:a05:6000:1acf:b0:3a5:1388:9a55 with SMTP id
 ffacd0b85a97d-3b5e7f0a33emr13049731f8f.5.1752495685046; 
 Mon, 14 Jul 2025 05:21:25 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3b5e8bd1997sm12502206f8f.10.2025.07.14.05.21.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Jul 2025 05:21:24 -0700 (PDT)
Date: Mon, 14 Jul 2025 13:21:14 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Simon Horman <horms@kernel.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250714132114.70feff08@pumpkin>
In-Reply-To: <522a1e9d-0453-447b-b541-86b76fa245bd@jacekk.info>
References: <b4ee0893-6e57-471d-90f4-fe2a7c0a2ada@jacekk.info>
 <e199da76-00d0-43d3-8f61-f433bc0352ad@jacekk.info>
 <20250708190635.GW452973@horms.kernel.org>
 <522a1e9d-0453-447b-b541-86b76fa245bd@jacekk.info>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1752495685; x=1753100485; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PUhNkhnJM9LJg+lJ4kHUKdCxmecqnhP8vLoEyt2XIgA=;
 b=IArJ91ZgjgA4/L4E9Z6E/bCDnoP9VVEcMXbzOyjUA866Snxqz1SW0FpNc10EzWrMjP
 Lj4zmrbai4vP5XAybh5IoNYo/YniYrPsLsXZbYPJ0VHgyu0zdmmWLvYIO1JE5N3u61VY
 Rkn2eVyHnr1lmjRtV9pYElYfiVsYKi+SfG1TKNZnQE4sVOer7bwa2uH+6Efic333XPpW
 WnpEZbeDxsmSfBeJSgL8gQUbWTttmuVr7Zb2S/v0PloKON4To1ANuWs20n7VOtCzZG8O
 eTcY/jNQp+iX9MUGECAP5lefiL+Wz4+NRo6f4SolbbJC0EaKF9bpICKI0fsZYA3bWkHd
 aDxw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=IArJ91Zg
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/5] e1000: drop
 unnecessary constant casts to u16
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

On Tue, 8 Jul 2025 21:40:12 +0200
Jacek Kowalski <jacek@jacekk.info> wrote:

> >> -		if ((old_vid != (u16)E1000_MNG_VLAN_NONE) &&
> >> +		if ((old_vid != E1000_MNG_VLAN_NONE) &&  
> >
> > Ditto.
> >
> > But more importantly, both Clang 20.1.7 W=1 builds (or at any rate,
> > builds with -Wtautological-constant-out-of-range-compare), and Smatch
> > complain that the comparison above is now always true because
> > E1000_MNG_VLAN_NONE is -1, while old_vid is unsigned.

I'm guessing 'old_vid' is actually u16 (or the compiler knows the
value came from a u16).

In either case the compiler can 'know' that the condition is always
true - but a 'u16 old_vid' is promoted to 'signed int' prior to
the compare with -1, whereas if a 'u32 old_vid' is known to contain
a 16bit value it is the -1 that is converted to ~0u.

> 
> You are right - I have missed that E1000_MNG_VLAN_NONE is negative.
> Therefore (u16)E1000_MNG_VLAN_NONE has a side effect of causing a 
> wraparound.
> 
> It's even more interesting that (inadvertently) I have not made a 
> similar change in e1000e:
> 
> ./drivers/net/ethernet/intel/e1000e/netdev.c:
> if (adapter->mng_vlan_id != (u16)E1000_MNG_VLAN_NONE) {
> 
> 
> > Perhaps E1000_MNG_VLAN_NONE should be updated to be UINT16_MAX?  
> 
> There's no UINT16_MAX in kernel as far as I know. I'd rather leave it as 
> it was or, if you insist on further refactoring, use either one of:
> 
> #define E1000_MNG_VLAN_NONE (u16)(~((u16) 0))
> mimick ACPI: #define ACPI_UINT16_MAX                 (u16)(~((u16) 0))
> 
> #define E1000_MNG_VLAN_NONE ((u16)-1)
> move the cast into the constant
> 
> #define E1000_MNG_VLAN_NONE 0xFFFF
> use ready-made value

Possibly better is 0xFFFFu.
Then 'u16 old_val' is first promoted to 'signed int' and then implicitly
cast to 'unsigned int' prior to the comparison.

Remember C does all maths as [un]signed int (except for types bigger than int).
Local variables, function parameters and function results should really
be [un]signed int provided the domain of value doesn't exceed that of int.
Otherwise the compile is forced to generate explicit instructions to mask
the result of arithmetic operations to the smaller type.

	David 

> 
> (parentheses left only due to the constant being "(-1)" and not "-1").
> 

