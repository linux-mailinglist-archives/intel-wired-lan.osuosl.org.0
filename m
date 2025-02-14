Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2E5A35978
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 09:56:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB7D340826;
	Fri, 14 Feb 2025 08:56:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qJWBtXABLYXn; Fri, 14 Feb 2025 08:56:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE9D540827
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739523399;
	bh=k0/rnce+Rd2CzFJn7uWLGWjtLuFwcjvq8VkWuHMSEk0=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iwcZsldZRJ5w4SQRFjZYpcWNGuFFhyjZJKC90+ShSDFhafEdIi4fwrrgsSo+t/e4H
	 w+UjQhZaRNuQccT59I5/6zmAhyT5cnfzlpGF3mjx2itSf2eeZb9iw0Qxm0Kqj58sQv
	 udFIo+ocTty7DuppvXlftQEbeAy3eSM7PuATxekQFEkEKiDz+0kfqMdQFwiD7qc19v
	 L/CcGA3eZAIwFdhkn+WF8LuHJ8qi/Az2dBfQtXDc2YPjik5kk6BOEAglW5TY0wA53u
	 jJdT9klV6HkCxLMNFsFOJ+oxRamvPmv8IMquMkh1x/7xwxnaNVNiVhEf71ukZf5rLz
	 ErgOeZbOFX6eA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE9D540827;
	Fri, 14 Feb 2025 08:56:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4116FC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 08:56:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 23FB340817
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 08:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 52pQGDl-X2X5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 08:56:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E00984065C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E00984065C
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E00984065C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 08:56:35 +0000 (UTC)
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
In-Reply-To: <b7740709-6b4a-4f44-b4d7-e265bb823aca@linux.intel.com>
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250212220121.ici3qll66pfoov62@skbuf>
 <b19357dc-590d-458c-9646-ee5993916044@linux.intel.com>
 <87cyfmnjdh.fsf@kurt.kurt.home>
 <5902cc28-a649-4ae9-a5ba-83aa265abaf8@linux.intel.com>
 <20250213130003.nxt2ev47a6ppqzrq@skbuf>
 <1c981aa1-e796-4c53-9853-3eae517f2f6d@linux.intel.com>
 <877c5undbg.fsf@kurt.kurt.home> <20250213184613.cqc2zhj2wkaf5hn7@skbuf>
 <87v7td3bi1.fsf@kurt.kurt.home>
 <b7740709-6b4a-4f44-b4d7-e265bb823aca@linux.intel.com>
Date: Fri, 14 Feb 2025 09:56:29 +0100
Message-ID: <874j0wrjk2.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739523392;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=k0/rnce+Rd2CzFJn7uWLGWjtLuFwcjvq8VkWuHMSEk0=;
 b=y10N4J9imkiBtiYErNuQfAugaMY9dHIlTa6jk8nKosC2v3SJXWJPHGe0xyePWHxt5jNQ6T
 L/ztRknGyeA7Ns0IJ6FPBweOlUPBYXdwQ22t13502qrl/DYm+97dI93sRuilT2WFHVC/EX
 er0YaIC3PVdb575p/Y3t+1pBXzT9ZJIp5kXqP5muSZ5gkhkgdbv92HWqI5qkQ4gl1QdOsu
 VAZKX5eFMzikPH2LlvgnyCY4Ir85tRH4gO7C7O9Q0qVCZxV/BChg8B08D0Xc0TyLLwbXF3
 UXNEo+jwiwNye1bUL3UQYINieP08qiLR9RH4GvRI8adb8RWPMDzevf+2L7L4AA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739523392;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=k0/rnce+Rd2CzFJn7uWLGWjtLuFwcjvq8VkWuHMSEk0=;
 b=LDC6z2ymJ85I5KfU1stXIGjBN0B1fRLsUag1totGNYe1kesSKGeCfmxgBkcQVb3dce2pYR
 Xvz4tS+FkQBIsZDQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=y10N4J9i; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=LDC6z2ym
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

On Fri Feb 14 2025, Abdul Rahim, Faizal wrote:
> On 14/2/2025 3:12 am, Kurt Kanzenbach wrote:
>> On Thu Feb 13 2025, Vladimir Oltean wrote:
>>> So, confusingly to me, it seems like one operating mode is fundamentally
>>> different from the other, and something will have to change if both will
>>> be made to behave the same. What will change? You say mqprio will behave
>>> like taprio, but I think if anything, mqprio is the one which does the
>>> right thing, in igc_tsn_tx_arb(), and taprio seems to use the default Tx
>>> arbitration scheme?
>>=20
>> Correct. taprio is using the default scheme. mqprio configures it to
>> what ever the user provided (in igc_tsn_tx_arb()).
>>=20
>>> I don't think I'm on the same page as you guys, because to me, it is
>>> just odd that the P traffic classes would be the first ones with
>>> mqprio, but the last ones with taprio.
>>=20
>> I think we are on the same page here. At the end both have to behave the
>> same. Either by using igc_tsn_tx_arb() for taprio too or only using the
>> default scheme for both (and thereby keeping broken_mqprio). Whatever
>> Faizal implements I'll match the behavior with mqprio.
>>=20
>
> Hi Kurt & Vladimir,
>
> After reading Vladimir's reply on tc, hw queue, and socket priority mappi=
ng=20
> for both taprio and mqprio, I agree they should follow the same priority=
=20
> scheme for consistency=E2=80=94both in code and command usage (i.e., tapr=
io,=20
> mqprio, and fpe in both configurations). Since igc_tsn_tx_arb() ensures a=
=20
> standard mapping of tc, socket priority, and hardware queue priority, I'l=
l=20
> enable taprio to use igc_tsn_tx_arb() in a separate patch submission.

There's one point to consider here: igc_tsn_tx_arb() changes the mapping
between priorities and Tx queues. I have no idea how many people rely on
the fact that queue 0 has always the highest priority. For example, it
will change the Tx behavior for schedules which open multiple traffic
classes at the same time. Users may notice.

OTOH changing mqprio to the broken_mqprio model is easy, because AFAIK
there's only one customer using this.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmevBT0THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgsbpD/9AxFeEEq8XNrGj2pz6LdoAUuyEQfHj
t+9vHsspGPBsJxkOhM3JG10feAFjH823FcdQIruXggTynYrEO8GZH+G5a1qa24dh
6QAhDEi5ALUqVUD65fdIddO/wfEdDzSQj81bkkehRPqJ5V5bkaGGV9EJ6OYCEREE
L0PJ7rmipFvhZkbZ/1AKmO6U2yB8qDh2lwfAAKCYStjQDn7XdKrDhZVHAgxVn7UJ
rlxoaRVV9a419VYNs8lyeOkBrANThzcX4UPv8gs0ar6PtgDriPrVpeHa6wvFa+xl
/s1b9FtCHwZGjhaQVlRSMYuSF4N4TqBW9aXsCW81hJb2wka+MV8PTtGntss/yv6k
WU5dso/sCDXTD/4r4AQiS2p9w5exEIgNkcT55/0mnjiJNJ2Lzk+0ikrEC6LLnfZj
0UME5TLxP09SOIa68d5wHzi4JRKr+NTwcEevieGsxS78sC1UYvMi2jWiUa6C9fdz
TPU8/YpJ4Mw/8orXm/1Dkb5XKd3ef5/RF5uFG5Cu3vem7SJJJya8BrTqiUDesuy0
n3Wgx2CUBZ/sl1qssCGu2HwOfU/EeWtc4Pxr7UE9WKPc+aeMmJMt0qONmPYln/iJ
dPr18MvJNHlWM1NFmuAEV6ZJoo/LzvWEbvwNlJmKb8GodD4To4YEk5/iGWncaXkP
noqBzMdqbY5wEw==
=EOqX
-----END PGP SIGNATURE-----
--=-=-=--
