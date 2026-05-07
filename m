Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBGeCYKC/GmOQwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 14:16:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8E34E8154
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 14:16:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9E5361019;
	Thu,  7 May 2026 12:15:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V0nTVEpuws_2; Thu,  7 May 2026 12:15:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0665D61020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778156159;
	bh=k3DI5VHNsX2dtInGmX3aR5Hyj7MlF2pGpMlNqzUivf8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tr9Ez8VrcdWOf3L/PAZbIDvx/hcJVaJptdK2AAYVAqEEb7Zrwhp9hM9BM7TYmJ0VL
	 dh6z4pDPqoFIcp13ZJC3U/1x0Xsy1psPsLE9jP8Nz3hd/+8e7O4A1E/2VhlCMUOq3B
	 KgFGl2l3DLF3KTOhIZ9aDoC3d1XgfOExd4lCuHT2rAk57H6FS2u7XjrnfW2sN6wuPR
	 iLwVuD1TQJOwXq9vYRQm8OpvEAj0Z71g33Ak+RiUPxELXb9FE8/5MhOwBWkE2Kvatr
	 lQTFFcZ2Q7O6MZe6qMXN/hPPqfJ79sbFBkyaACCB8JQIKEpWMbpkbBEyCSMnJi2UyP
	 wLKruD3rvor5A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0665D61020;
	Thu,  7 May 2026 12:15:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9EA99317
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 12:15:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8FBC06101D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 12:15:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7v4mP3IPdTUj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 12:15:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6174561019
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6174561019
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6174561019
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 12:15:56 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1wKxdh-001o9u-9v; Thu, 07 May 2026 14:15:37 +0200
Date: Thu, 7 May 2026 14:15:37 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
Cc: David Laight <david.laight.linux@gmail.com>,
 KhaiWenTan <khai.wen.tan@linux.intel.com>,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 faizal.abdul.rahim@intel.com, hong.aun.looi@intel.com,
 khai.wen.tan@intel.com, hector.blanco.alcaine@intel.com
Message-ID: <a74089d5-1b27-4d05-bd8c-9ec2226667be@lunn.ch>
References: <20260428060009.311393-1-khai.wen.tan@linux.intel.com>
 <20260430154105.505739ac@pumpkin>
 <63b186e0-046d-496e-8ae4-d68cd5eb5817@linux.intel.com>
 <20260506104053.7a4f5bf5@pumpkin>
 <78e48cc4-759f-46e1-83c7-1c9442308ae3@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <78e48cc4-759f-46e1-83c7-1c9442308ae3@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=k3DI5VHNsX2dtInGmX3aR5Hyj7MlF2pGpMlNqzUivf8=; b=MvG1GfRfk8yPoSwjN4if1WBYr7
 uAOS9Oxk/4pLC4AqlwuIGpKPaCLF4vPWHlY31q/mU4dnmdaeDsHwZaJ6t6dLT0wbD8bVA1haBle/3
 bvyc/NMBTWqn6TpqhJ8RUcmYxbUdNbdyYw93LjwJ7s7QfjOXTzAPr4pGtifjReRzwiH0=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=MvG1GfRf
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/3] igc: add support for
 forcing link speed without autonegotiation
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
X-Rspamd-Queue-Id: 3E8E34E8154
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lunn.ch : SPF not aligned (strict), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:faizal.abdul.rahim@linux.intel.com,m:david.laight.linux@gmail.com,m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:khai.wen.tan@intel.com,m:hector.blanco.alcaine@intel.com,m:davidlaightlinux@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

> I agree that for normal Ethernet use, auto-negotiation on both link
> partners is safer and avoids the issues you mentioned.
> 
> The reason for this patch is the more specific PROFINET Fast Start Up
> (FSU) use case. For FSU, the requirement is different from normal Ethernet
> use. It is intended for deterministic startup, for example in industrial
> robot/tool-change applications.
> 
> One of the startup optimizations is to use "fixed transmission parameters"
> instead of automatic detection in the profinet specification:
>   https://us.profinet.com/profinet_tech/fast-start-up/

Automotive also have similar requirements. For them, Autoneg is slow,
takes around 1 second, where as a fixed link is operative very
fast. There are even some automotive ethernet devices which don't even
support autoneg.

So this use case makes sense to me, for embedded systems. If the
hardware can do it, any most PHYs can, i see no reason not to support
it. And anything using phylib gets it for free.

	Andrew
