Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C30C9E0844
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Dec 2024 17:19:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D469681FD2;
	Mon,  2 Dec 2024 16:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nuSPH9lbH_al; Mon,  2 Dec 2024 16:19:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00C9E81FAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733156346;
	bh=+lZDk59n4UHv5yZ4bNmxMnAKZtUzjiM3soOA0zJRIR8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Prlhq/I3w5m1aYFUWWMMQW8G/TCRdmFf7FU1Vq5dV63IMu8MRbCFsEETnT/ipUMjO
	 KLZNNOyhIRkd0aR3GeaBPWKRi0NWsv5mh0zlXk5hlnWZQmz59SKWsrM2Wcbs4u7+tr
	 ojsWHSu7JdL/FbEF6oVNC6End+vm5vfsiGjexEMt5KnqN/nIspfGBL364UCHyIp/CW
	 hhSsmZDprnBuy/aE+svwBkHqEpDb5/tZQhenTAw89iMn29uQt8sKieyJScNOocUJa2
	 ZZp257f0AkI2v6LqPKeTAVNkGPLDFWOOSu4m+rGQOgC3dkTUGuQKIcFxlUka48l7Ze
	 3nrWgrAaE1dfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00C9E81FAE;
	Mon,  2 Dec 2024 16:19:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EA75E60
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 23:03:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7F94403D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 23:03:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pv-ob3HQ-cdq for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Nov 2024 23:03:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b35; helo=mail-yb1-xb35.google.com;
 envelope-from=andrew@andrewstrohman.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BCCA5403DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCCA5403DE
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com
 [IPv6:2607:f8b0:4864:20::b35])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BCCA5403DE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 23:03:35 +0000 (UTC)
Received: by mail-yb1-xb35.google.com with SMTP id
 3f1490d57ef6-e3970ac2dddso2348974276.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 15:03:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733007814; x=1733612614;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+lZDk59n4UHv5yZ4bNmxMnAKZtUzjiM3soOA0zJRIR8=;
 b=PdjJ/x4Lw0nEy8KyvRFIKGiq5osbks8XLTrIHZzsJe3NCIob3HLJLtmeymfeYQTdb8
 8XQZTX25Rz1uvi5TQg7PYYCZ4vcoLaqO2VfhQPci5tdXxvLTiwJOSdQHaR2Zm5YhlblO
 2PgpLOolY49DpzYFYB/V/b8QHb3TC+eGnE2byiJmG3GQJSG5Xdi5hDFgn205K2xFUrA1
 TK7De5nUko2wtuWxO2shSsGI1tzPHs1H9vH5ho3lM/IrPrhBwESBqtsRyQPNTEoE98Rh
 o4f1YJw1om4a1UIxz/HSn2QmbTv5A/sGn034htNYBHfzpnv7FuVP5oQSpZmE7dq4mBZJ
 Xu+w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWENh5sL0E+2l3GDfPu74aqa5mvqTp7YNd1Sv5gqlboNyMSxGiuQ5dLEwBgODCSsxT8AGHgtW6lwzBUNS681GA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YygxYECtIyIkScHTBh8OiHG76Fx8gCOVUof6gZMslYrT0P+v1Tl
 SmhY+x9kABU5OWM1ytDDL048iFNu5Xvw+MjHIQIGSaY+WJuF7kgeDOZyGGCG/dcY8LOxcQSn+3P
 DbjjUndNFGfmYKrs5Z3nJIg9POkLRRUonEz3NEQ==
X-Gm-Gg: ASbGncs0jJ1aWza+iqUTJCJt/pImTMqfsmYlgEnMjHfWIG/EVNZ0N/G2uf3XvTCZZ1V
 Z3mrOmxIxsvpzZSnIdOKPYC2/gFLV6KI=
X-Google-Smtp-Source: AGHT+IH81R4XFg2CPj0gwX0HCIBF9TK4lO6eQU9i9Eh6UvUy1XLoSg/49272JtHDhspwSlHmAL7DhLTLqjgun/Hp2yM=
X-Received: by 2002:a05:6902:1549:b0:e38:c692:14a4 with SMTP id
 3f1490d57ef6-e395b93b17dmr15727852276.36.1733007813990; Sat, 30 Nov 2024
 15:03:33 -0800 (PST)
MIME-Version: 1.0
References: <20241130000802.2822146-1-andrew@andrewstrohman.com>
 <Z0s3pDGGE0zXq0UE@penguin> <20241130160815.4n5hnr44v6ea3m44@skbuf>
In-Reply-To: <20241130160815.4n5hnr44v6ea3m44@skbuf>
From: Andrew Strohman <andrew@andrewstrohman.com>
Date: Sat, 30 Nov 2024 15:03:23 -0800
Message-ID: <CAA8ajJ=Grm47nKZ+Yp-TEXAFfyoDOkJ9Kbc+NnUOx6ehg0o=vg@mail.gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Ido Schimmel <idosch@nvidia.com>, 
 Petr Machata <petrm@nvidia.com>, Claudiu Manoil <claudiu.manoil@nxp.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, UNGLinuxDriver@microchip.com,
 Shahed Shaikh <shshaikh@marvell.com>, Manish Chopra <manishc@marvell.com>,
 GR-Linux-NIC-Dev@marvell.com, 
 Simon Horman <horms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Roopa Prabhu <roopa@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
 bridge@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 02 Dec 2024 16:19:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=andrewstrohman-com.20230601.gappssmtp.com; s=20230601; t=1733007814;
 x=1733612614; darn=lists.osuosl.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=+lZDk59n4UHv5yZ4bNmxMnAKZtUzjiM3soOA0zJRIR8=;
 b=F7lkmAmhvY3LiqM98eYoBkERmOorkv4NVrYO7BfrZQMXvaE+fGUn2aHwgfHzER/wnd
 rkZc96QkwtJfBBcsew2ld/3L0VjEXk4lf7HOFgzCtnSUctIdfJMHyosOiZGgJhx3GNb3
 dt+aNqpucpWAGT1/SGAJjzcNH9gbBpgdsvoKuVe+zINGWCZNRnknrl+dM+8BAoVjTJ5k
 yjCOgP/b6OfiVbzbLkQawPAHLr9eQ77/o9b9CDP/RPsuLP3vsL67Ti/c4U0IsTkyNB7y
 YvTH9CwcBl4mo9OaP9x0/mS5cU66xNjxq1xUhC6+X2jjEHIJjL4VTyzTZmaACCO/9XVN
 j25w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=andrewstrohman.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=andrewstrohman-com.20230601.gappssmtp.com
 header.i=@andrewstrohman-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=F7lkmAmh
Subject: Re: [Intel-wired-lan] [PATCH net-next] bridge: Make the FDB
 consider inner tag for Q-in-Q
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

Hi Vladimir,

 Thanks for the review.

> I was also going to plan asking Andy what is his plan on making
> switchdev digest this.

Since switchdev switches don't seem to support this, I wasn't planning on
making switchdev digest this. I was thinking that it should just
be disabled for those hardware switches.


>The switch ASICs I'm most familiar with can learn
> on inner VID or outer VID, but not both.

I don't know of a switch ASIC that supports this.

Is that a problem? I thought that it would be OK to add features to
a software bridge that don't exist in any hardware bridge.

I've tried to see if anyone else was facing this same problem.
All I found were concerns about the fact that the provider bridge
needed to learn all the customer's MACs.  As a result, it looks
like 802.1Qay was created.

It seems that 802.1Qay is primarily addressing a concern about TCAM
limitations, and decoupling the provider and customer networks.
I think it's possible that 802.1Qay has inadvertently
fixed this issue for provider backbone bridges. But for my use case,
I'm not concerned about TCAM usage. I just want isolation between
the inner vlans.
