Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D00E8A34177
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 15:12:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C9E681F35;
	Thu, 13 Feb 2025 14:12:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1kJfXQ4XDVI6; Thu, 13 Feb 2025 14:12:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9089681852
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739455965;
	bh=BzW+SUPbkzmDCTtzGAbH75OVDoj0R1lG79nB7e2KUr8=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OeUI95FpeJRUCSUqvC+RAgIDdYG2tSKa+CPn7qqp6ITBA8SshSuV6iwMzQqXG3AtE
	 +bmg+Zb7zHW2PTn5meGBoPBA35Moykv9S4vkv0XKQtG1RKHP1keTInMgqii9h16Wzs
	 Bi2tLPoGuLAhf3YRPuYa/NLMHi8/oP8OUvs5SnKQsOA0BcmFbozWQ7+SqjXiMrN8r2
	 g1dN3gjNOU4StLdON1tEc0OGB/q97iNXHY924lX1TJs2qXcgMp35t5hQU1wMw/5DrR
	 rJVEsK66c0ICn50N9/R1JI5lp4cFj6b8Eo9gRq//OarwfRzsPpBmy3pPPyglhBxfOq
	 5Bz8W87w6t85g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9089681852;
	Thu, 13 Feb 2025 14:12:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BD748199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 14:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACA8A40478
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 14:12:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id miFsDaLnVclw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 14:12:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 33F9B404EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33F9B404EB
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 33F9B404EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 14:12:42 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>, Vladimir
 Oltean <vladimir.oltean@nxp.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Simon Horman
 <horms@kernel.org>, Russell King <linux@armlinux.org.uk>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>, Russell King
 <rmk+kernel@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>, Suraj Jaiswal
 <quic_jsuraj@quicinc.com>, Kory Maincent <kory.maincent@bootlin.com>, Gal
 Pressman <gal@nvidia.com>, Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>, Choong Yong Liang
 <yong.liang.choong@linux.intel.com>, Kunihiko Hayashi
 <hayashi.kunihiko@socionext.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
In-Reply-To: <1c981aa1-e796-4c53-9853-3eae517f2f6d@linux.intel.com>
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250212220121.ici3qll66pfoov62@skbuf>
 <b19357dc-590d-458c-9646-ee5993916044@linux.intel.com>
 <87cyfmnjdh.fsf@kurt.kurt.home>
 <5902cc28-a649-4ae9-a5ba-83aa265abaf8@linux.intel.com>
 <20250213130003.nxt2ev47a6ppqzrq@skbuf>
 <1c981aa1-e796-4c53-9853-3eae517f2f6d@linux.intel.com>
Date: Thu, 13 Feb 2025 15:12:35 +0100
Message-ID: <877c5undbg.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739455957;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BzW+SUPbkzmDCTtzGAbH75OVDoj0R1lG79nB7e2KUr8=;
 b=NKCF61zds30qngIyng+oc5y0lDPbl/kQvL/oPHzrRxyQdo0qUFGV3iUaHUI9pqAFxDBN0j
 8WxBzE7tYHvxVYcuStC9AIdYqKcuTP7iDB3hwZJ8rsavtdjMhMwXTtXOgmzV2ni0S/6zpc
 0nXOV5mbs2sY2X+swrupaNMzinYeYT/csqmFkzhLisp0Hqn4U9v6tNC46LsUoVXfwlkcVD
 +zWg4zrHq5LWSdjY5jcWKZcljSGQGncBHzFDm6EOkVl1TcIqaz5MbHrgsB4f4ARzrynwSd
 KwEDSUPSGHc3VBHXkwkFABtwUD05jpVtvbV3bqD4lLkINJr28B2kRhmsGtxamg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739455957;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BzW+SUPbkzmDCTtzGAbH75OVDoj0R1lG79nB7e2KUr8=;
 b=uTTjkpO/ZnaEGhucyOJmim3FeReC/SHMv/5yuThYmbR8aubDStcpBh4+GwNGlZpkQIoTTY
 Tokwx+8vylKv7GDQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=NKCF61zd; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=uTTjkpO/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/9] igc: Add support for
 Frame Preemption feature in IGC
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

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Thu Feb 13 2025, Abdul Rahim, Faizal wrote:
> On 13/2/2025 9:00 pm, Vladimir Oltean wrote:
>> On Thu, Feb 13, 2025 at 08:54:18PM +0800, Abdul Rahim, Faizal wrote:
>>>> Well, my idea was to move the current mqprio offload implementation fr=
om
>>>> legacy TSN Tx mode to the normal TSN Tx mode. Then, taprio and mqprio
>>>> can share the same code (with or without fpe). I have a draft patch
>>>> ready for that. What do you think about it?
>>>
>>> Hi Kurt,
>>>
>>> I=E2=80=99m okay with including it in this series and testing fpe + mqp=
rio, but I=E2=80=99m
>>> not sure if others might be concerned about adding different functional
>>> changes in this fpe series.
>>>
>>> Hi Vladimir,
>>> Any thoughts on this ?
>>=20
>> Well, what do you think of my split proposal from here, essentially
>> drawing the line for the first patch set at just ethtool mm?
>> https://lore.kernel.org/netdev/20250213110653.iqy5magn27jyfnwh@skbuf/
>>=20
>
> Honestly, after reconsidering, I=E2=80=99d prefer to keep the current ser=
ies as is=20
> (without Kurt=E2=80=99s patch), assuming you=E2=80=99re okay with enablin=
g mqprio + fpe=20
> later rather than at the same time as taprio + fpe. There likely won=E2=
=80=99t be=20
> any additional work needed for mqprio + fpe after Kurt=E2=80=99s patch is=
 accepted,=20
> since it will mostly reuse the taprio code flow.

I think so. After switching the Tx mode mqprio will basically be a
special case of taprio with a dummy Qbv schedule. Also the driver
currently rejects mqprio with hardware offloading and preemptible_tcs
set. So, I do not see any issues in merging your fpe series first. I can
handle the mqprio part afterwards.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmet/dMTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzguJiEACFtqLdMYECmeOz/p8OxgK9pkkB3GjE
/ne59xGsryfADF8D4kteIgxdZSEh/EFP7Rx3QFpoDLRtDYcjVzoQ7acJi+TlV50M
UalDx0SMG+0kbdtONmX7L0J5f6Z0PoMNwaF5skFbYqhkzai9Z9GK7B+OsNY8J/uQ
aSPAOrykNyHbqGH2MKsAfNRIhwO0HFIwZPxCFKvuc6He4uhNaoW+vOXmd/UMi6Ht
i7xQRrfR/D9e0oEKpbse2CDmsiQ1i5pC9xwyvMnCcfhsxZ+ERB1AG3IvP3pJn8Qk
P3jcsgqmQ2loVOli8ezx1DphWU5UJ4GacQcdgggwlhBYSBH2TnV8MQAFYIGlLycQ
EBY2NxIOY0UXfRA5+lDf3seCF7Os6T7R790hLo3ZWIVGPnkuXYLZYvDkJ/eD1Sm6
MM6p5IxpsrR6XhZnUu+mmHs8J8iUj4xN8zFUKwYuWjC+neCIsjLQJtP7wPANKPgi
0I2RXRut1MuSm7lrQMoD+n75oomFOqURsVm0WyrAiw7vAGNSsjqL1aIx0YIzHDs2
mOwt1mPgHd21wTjjNfDt4z6MhLh5DaTLqZ8xyYju57Oa97gtsDZLXbUfytxjWaFm
6+UOjgo/gCNday3bkXsvtrveLRdc+Ng6Ymb3bD5/M4cBO6K2irngg3R7uXXOB5Pm
t1avzPuL0QscCw==
=1mRZ
-----END PGP SIGNATURE-----
--=-=-=--
