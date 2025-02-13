Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC471A33EA9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 13:01:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AF09817B0;
	Thu, 13 Feb 2025 12:01:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id utyanwOWz2rA; Thu, 13 Feb 2025 12:01:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D70481E03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739448116;
	bh=pRi2by4hF7BVnwNBoTgAL9CtmnTqhyTscqUsWMsbLkE=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=270u7lX9gKnvXEnqxMIRE8ZIWka6dkGM61zPtrUHRDQ/OvVPcfOt4wcKpExpSQZ3n
	 7+8OJpccGLnkbgjA38/E+/toZe91zokLDx6YlNFaTPMfcsyVuQ0K67c0b74J5MlgyU
	 UgZHMRw3UziiOBUB/yUEJZuiqnXfqmcP6jVxIhwc31xSeThi+LGKjdbhkNJCMo4JJx
	 T3O420FbDN2MxOEccWIro4MdFyFlJHEJ8Cv2lIdU58dtOq5KYMvQBd72Ld2chVcsSa
	 KIGCMMYIJsezhwhfH0E4qXAidbCDDQ/7/WZhFnu6oSRSy1Y7ZpfM44CWBHqmpOSvTr
	 2aULosOqa3Yww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D70481E03;
	Thu, 13 Feb 2025 12:01:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B46612D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 12:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 05ACC815CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 12:01:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pCRMUZk2Dsv4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 12:01:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C7B8181174
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7B8181174
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7B8181174
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 12:01:52 +0000 (UTC)
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
In-Reply-To: <b19357dc-590d-458c-9646-ee5993916044@linux.intel.com>
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250212220121.ici3qll66pfoov62@skbuf>
 <b19357dc-590d-458c-9646-ee5993916044@linux.intel.com>
Date: Thu, 13 Feb 2025 13:01:46 +0100
Message-ID: <87cyfmnjdh.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739448108;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pRi2by4hF7BVnwNBoTgAL9CtmnTqhyTscqUsWMsbLkE=;
 b=gFnFW5UrQOTpQ94swvZhMjxhGMXUmdllUKHeuFDQK0Iv3lEv7WPpWaXIeU5VL+qcOcmSEn
 kGMFK7iK7mxHYqifI8t7JJaghZu2pWmuNoQZl0H/sS7hc2aAzfJY6uTiz/VUKKb7ufyDvV
 GekiQzi55/iKXCpEU4TxkCFiALIeyIQPOqcDMIikhz9AHKLpm+BCrMkwt7jpDMpW6HskPB
 hTRniWF9zZf9BG1JpYfgOZs2UR+ANvzHYViC0g9vGZOrDUFkZONfFBHYpZxzRzJbGw8yny
 M+2fk9vdaXEG3xtJ/5zxxLJkdMMQyeOe1ee5wJ8rxGbSPv4p9zhZC5qrn+aYNA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739448108;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pRi2by4hF7BVnwNBoTgAL9CtmnTqhyTscqUsWMsbLkE=;
 b=9+v/6FZN9iYWg8vy7Kso1fLjYJd3UKBNQLlk/DBk8uSIJsOASKi30BUOPU3IuSdJHsDXLY
 ZN2gspy0UDfIpSBw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=gFnFW5Ur; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=9+v/6FZN
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
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu Feb 13 2025, Abdul Rahim, Faizal wrote:
> On 13/2/2025 6:01 am, Vladimir Oltean wrote:
>> On Mon, Feb 10, 2025 at 02:01:58AM -0500, Faizal Rahim wrote:
>>> Introduces support for the FPE feature in the IGC driver.
>>>
>>> The patches aligns with the upstream FPE API:
>>> https://patchwork.kernel.org/project/netdevbpf/cover/20230220122343.115=
6614-1-vladimir.oltean@nxp.com/
>>> https://patchwork.kernel.org/project/netdevbpf/cover/20230119122705.730=
54-1-vladimir.oltean@nxp.com/
>>>
>>> It builds upon earlier work:
>>> https://patchwork.kernel.org/project/netdevbpf/cover/20220520011538.109=
8888-1-vinicius.gomes@intel.com/
>>>
>>> The patch series adds the following functionalities to the IGC driver:
>>> a) Configure FPE using `ethtool --set-mm`.
>>> b) Display FPE settings via `ethtool --show-mm`.
>>> c) View FPE statistics using `ethtool --include-statistics --show-mm'.
>>> e) Enable preemptible/express queue with `fp`:
>>>     tc qdisc add ... root taprio \
>>>     fp E E P P
>>=20
>> Any reason why you are only enabling the preemptible traffic classes
>> with taprio, and not with mqprio as well? I see there will have to be
>> some work harmonizing igc's existing understanding of ring priorities
>> with what Kurt did in 9f3297511dae ("igc: Add MQPRIO offload support"),
>> and I was kind of expecting to see a proposal for that as part of this.
>>
>
> I was planning to enable fpe + mqprio separately since it requires extra=
=20
> effort to explore mqprio with preemptible rings, ring priorities, and=20
> testing to ensure it works properly and there are no regressions.

Well, my idea was to move the current mqprio offload implementation from
legacy TSN Tx mode to the normal TSN Tx mode. Then, taprio and mqprio
can share the same code (with or without fpe). I have a draft patch
ready for that. What do you think about it?

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmet3yoTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgvLKD/9OQPyBrZSv022P25tXUsH7EuBaRKfA
aeLF85hUvtWB9bw1NihFYJsALhL8ouo+CTO9pvlnFlsgtgiB14KLrjShhefXZfTI
Prjpei01Kyb2te+XqjCBmnrz5DriDwUQjDVSxd8WlfuFhm/FquQCp3fATF083LBZ
T7fIsaLnoehBkUj5oMTgFu9EGRD+Pdnq9pQT94pHVPfSc1azLAU8LXzsXqOuCelK
VkM40CJm5hZwRAQz+rl2C6ji7qAukJ7tof61Cj6c6i7jTZAvbZ52QOUlubYNUNsL
yh4fGcYxLIJDp6yZz05Nf3KuEISjRcpxlEQxZF9vcfgSFa8cgwAZdnFdAnG9RH5F
BnO6hhrtoqi9jmDjQbnnROdxeK1zELqhRNmWe7aa6USiiziLg6OHVKBeB9gGQ0B6
F5XuwQjdfb96Mewy4S67FxwN0Ze53X7cqmUfk5WLESArCxrN2LMTuwOCsfYbBgpc
NXeqyFzLrHtvb7nMZkONVsXSAYDqsQ+Q3Ms9DLOUh5+jvn9c8XPEJkNNoG0sQznS
HSGN81QFGjkDACF/D7eiWrA7e6NoJoPMOdeyruHj2ejkZH+0FFA+p7qrWvwytOEx
rT4GG3JqWLcEs/W/1KZbNf7yioJf+kPIxbS7TxBxy+W+dy8DhDA6cJNEspn6uhqw
mbELAM6QhMYsxg==
=HZMH
-----END PGP SIGNATURE-----
--=-=-=--
