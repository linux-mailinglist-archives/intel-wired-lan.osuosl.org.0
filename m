Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706018FF474
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 20:14:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90EE241917;
	Thu,  6 Jun 2024 18:14:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6M_Sd7i1oDhA; Thu,  6 Jun 2024 18:14:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF84840567
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717697666;
	bh=QcDw2jc2BfZ+k/TbM/vd1C8TAW70hXP/jfMovjQ+yG0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZXdvtEYr+O/j5WEnhETFOW2oa+tq4BSHK1JMyOj9vy+E0tnshn3VeVF7YUFzfSg4h
	 /IYT/G6ojnZSCWarsLjDWccq8aGoFPMLQoLSJLnyAH5kzkqe/t/54dD/3dqstTez2m
	 SS6Emzc+jMNCXdelUbrHX5Hd9LWooGZciWEGDwm/bOa9c0zqsee0u3+2SLIuL+iLdI
	 ddoJyDWcRqQE1LOU7V16eqOcClyLS5BmwvJVBcJi/Sid7BEsRzE2B+aHS3QNNJ0JjN
	 LCHBzc2pSUYRIW2A/x1LRNwco2J1DBxCUIVX9ozQMtJgXF8W8TFUj9Wyq4QG6rpsww
	 RlYGuS/IEKt9A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF84840567;
	Thu,  6 Jun 2024 18:14:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A6CE1BF584
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 15:52:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14FA883503
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 15:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4MZ0PEgOUeIZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 15:52:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.17.20;
 helo=mout.gmx.net; envelope-from=schaecsn@gmx.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A4D33834F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4D33834F4
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A4D33834F4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 15:52:46 +0000 (UTC)
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.209] ([173.228.106.93]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M5wLT-1sM60x1tYB-00AKLE; Thu, 06
 Jun 2024 17:47:04 +0200
Message-ID: <70d92f17-d9aa-48c0-a132-506faf6f94dd@gmx.net>
Date: Thu, 6 Jun 2024 08:46:58 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ying Hsu <yinghsu@chromium.org>
References: <20230518072657.1.If9539da710217ed92e764cc0ba0f3d2d246a1aee@changeid>
 <5184214b-22ed-41cf-a1b0-6db2d4ff324c@gmx.net>
 <CAAa9mD1HGJDKzoLoqZzyrR5wsk_6voWs+VmoZoo9ZontyvjUww@mail.gmail.com>
Content-Language: en-US
From: Stefan Schaeckeler <schaecsn@gmx.net>
In-Reply-To: <CAAa9mD1HGJDKzoLoqZzyrR5wsk_6voWs+VmoZoo9ZontyvjUww@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:RmkEobG8qViO5ZiTlBvaeaBpYAXSsAocvTIYWQATG91O5FsnEPF
 naNXMtLGd0+K0AIT0P4dEDFW1lysZS7X3IZ/cSfR24LbftzMuQlFsNIgy1Hety/+P2WyutL
 o5o98aBKQ3lwBnyrFnDVDxVoLlT0QMr1qq7+wbY/C5ffqYlxOwQiBa+ptFFFDFG0vPPrqPW
 XdgK+alTkrPl3ZKcwo3Mg==
UI-OutboundReport: notjunk:1;M01:P0:GLCrRHIgbg0=;hZP2oD6FT8KMFOcpICXRxm7wCGT
 fSZGD3MKY9IxhQimLzdAvN9XRi84rVjKt74gRGI1c5kiJCWdGi/PETu71KmMEawuu3mVe3s8w
 sA6S62lH7ed29HakFYwxgIAJlnrr5yc75pxojPhL5UI5w/fnfI8vnWcPJ740uAa3VDZ8Ws9nc
 Vc9aA4Cp72XdJg0CQrkgs1SMd8/6wU2H9/x791Vjqkog1p6SuXnjyaMet46GeiZePJyaZO9Y7
 31o5abbCpEeb8VsLo8aU9LYpfut9jVAH5SzcNio+W/+X7zgB11BCOOojBP5/S54j8LcZnLrec
 8XoJ+29vQ9q0Wk60747GO3caESD0A6NoQRVgtX1Nw7uUqs6E5OKFK6L4P3tAtqavCs325ivGx
 P8Ahy8YYDP7tE7b7576xqcxEXkwSAtaduwWbR/eNDzE0tZoZ6TluX6D9LzGT/+t8MYx2TCe6+
 BUrrrJddBT41HBzzpVTS+ISmKuDHiW+p6eTqMnPvwCYeCBI2JCHutRldtB6I461ztG+xBs5ED
 CLkd1mrimAa76iXMBToH0VCtOZk1jrlqCOBSd+cspmPPfOFLbOek0kaSLHrI+lZe2KvRZGRXI
 1C7aoC+KCbUrCQfHbonn3lP2g/3oEZp5GaOAznMh48C5B2vxVTkL7xwN2wCaGFSDkqmIX2ZCq
 2tbHeYtfGwc+6YDUiyGKquHBrSo2vlv/RPCzoaQc+zeDjAmsU+zo5LA50uEeA1BHMXAn/iS1H
 hPPJr/fo/z83snGsIgdC2IsWpmZ0kPzDW/zLesH0E3Ent61speNUpjwY+dL+GAn2yKwNOWFR7
 fUogITdR9KX+n9CTb2LRQOJzbBApzhsMDweQA34oGrfGQ=
X-Mailman-Approved-At: Thu, 06 Jun 2024 18:14:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmx.net; 
 s=s31663417; t=1717689162; x=1718293962; i=schaecsn@gmx.net;
 bh=QcDw2jc2BfZ+k/TbM/vd1C8TAW70hXP/jfMovjQ+yG0=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To:Content-Type:
 Content-Transfer-Encoding:cc:content-transfer-encoding:
 content-type:date:from:message-id:mime-version:reply-to:subject:
 to;
 b=kdBactfmSKOGXXibegQ3YsjIJ1b5Nr7BjDuRcrfhsIvsNX7qmD40pgVx7dFlvAXZ
 9S/cEyXeKflGYnev9Qld++VvjbwJCIokKof3vVP24cd0LnWpJgRVpojyd7lIVWuDd
 +FSXN729n9PJhqL421Aw1/VI1p+6++ZPKoP3oqHLaXH6uVak4YA+4ivTXkxZXRb+g
 QHakGEAHvgshhbpncH5/+D0smNpzl+yg0L7h5R1rkwPwUlXjF8NqXccSzo2YygAOF
 PHl1rcFXcWRgw0d84cmH/e9b8JTOOxO1Wbco4aTSbA9YU8cqGkIowZWKLDddRD0KI
 5kF+x90KB7WWp3aOmg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=gmx.net
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmx.net header.i=schaecsn@gmx.net
 header.a=rsa-sha256 header.s=s31663417 header.b=kdBactfm
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix igb_down hung on surprise
 removal
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: grundler@chromium.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Ying,

On 6/6/24 01:03, Ying Hsu wrote:
> On the CalDigit Thunderbolt Station 3 Plus, we've encountered an issue
> when the USB downstream display connection state changes. The
> problematic sequence observed is:
> ```
> igb_io_error_detected
> igb_down
> igb_io_error_detected
> igb_down
> ```
>
> The second igb_down call blocks at napi_synchronize.

=46rom the backtrace in your commit message, I gain the impression you get=
 a hotplug event for removing the ethernet device. From your commit messag=
e I gain the impression you get an AER as well which is handled in igb_io_=
error_detected()/igb_io_resume(). The problem lies IMHO in the interaction=
 of both.


> Simply avoiding redundant igb_down calls makes the Ethernet of the thund=
erbolt dock unusable.

I'm not too sure if the current code is even perfect in your use-case. Wha=
t happens when you get an AER on the ethernet device (without plugging it =
out at the same time)?

Can you try to AER inject a completion timeout into your ethernet device, =
similar how I showed it in my previous message? Just replace the bdf 09:00=
.0 with the bdf of your ethernet device. I expect a kernel crash like we s=
ee that on our embedded system.


> If Intel can identify when an Ethernet device is within a Thunderbolt
> tunnel, the patch can be more specific.

 Stefan
