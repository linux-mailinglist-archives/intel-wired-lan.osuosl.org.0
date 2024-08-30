Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B108966961
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 21:14:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C005B42598;
	Fri, 30 Aug 2024 19:14:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PCIr4MhC2F8M; Fri, 30 Aug 2024 19:14:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7BC6425A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725045264;
	bh=lD5b6RVQ076/9VwJIi2BTcx7i1lFUTXZ2u5x81MeTok=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pq9BfFVYPWowuKE4xYtIGTtuCiXKrKWPQB7DbdnfZVmIXponI2gbxA8M0dapCaOXB
	 xpNYZmWyxi3lcMQC0HCLHWk7uJr0ITl7dpvM92FtI77iw3E62XOewF9cKCGKbf83zk
	 QkdDocyLfdB4JzB+Pcaxhzj5lAAWBe+ctAjKsmS10h1mC06Yrd52X+XljhIe6XSHeQ
	 Ouniu2vjXT+cE4ryhd+JDPRbZlRpddR3uRpSbTwXq95WiPbEexUITLD/PdO03uAoPx
	 +PSwpGd1e2bnDtemFJn1AiH2fpJpKmrTs9e9jgdQnmigTVxJ3/7mYm8+sG0xSo/e1b
	 672ktfqIJA2jg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7BC6425A4;
	Fri, 30 Aug 2024 19:14:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BBD8A1BF275
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 19:14:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A64D184525
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 19:14:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6KNwiNuwPmO8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 19:14:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C22A58451D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C22A58451D
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C22A58451D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 19:14:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 865F0A44CB2;
 Fri, 30 Aug 2024 19:14:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B39FEC4CEC2;
 Fri, 30 Aug 2024 19:14:19 +0000 (UTC)
Date: Fri, 30 Aug 2024 12:14:18 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240830121418.39f3e6f8@kernel.org>
In-Reply-To: <58730142-2064-46cb-bc84-0060ea73c4a0@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
 <53077d35a1183d5c1110076a07d73940bb2a55f3.1724944117.git.pabeni@redhat.com>
 <20240829182019.105962f6@kernel.org>
 <58730142-2064-46cb-bc84-0060ea73c4a0@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725045260;
 bh=wGhBMBgM0ROt6ktM3GMH2VAMYqx4ySKxfA5iIFGOMnI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fh71pGo0uOIsf7HRT0sPNEkWLzYikwDWdmqnrGx7mnrKLFUkL6Sidd5bluyulcB1O
 jWmx3z3ssVpnAoW3UVfTTpiWKBbSA8kuG96Gq1/4dtGqHMbDmRh6TrVBPckikNEmpA
 EbtqnQpKb1ay0vMSlFYJ1AHzof3VZ/0MtGds0rtAjOGKCbItPktDI/Raf2lT+IdK0+
 ay72xAGbKKotXkaVYDfAmqdvtdP9+W4o/kdvRH3EI8tB2/x5nzTy16xIWQ8agPuyE+
 YxYjqs7tFKz7xWsk2Wn/pyCSmFEnxE0iDCDf8Z0y3gSGghHJ8CKLruEIRvkVHXkKfe
 +H3mOwsNENHNw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fh71pGo0
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 02/12] net-shapers:
 implement NL get operation
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 30 Aug 2024 17:43:08 +0200 Paolo Abeni wrote:
> Please allow me to put a few high level questions together, to both=20
> underline them as most critical, and keep the thread focused.
>=20
> On 8/30/24 03:20, Jakub Kicinski wrote:
>  > This 'binding' has the same meaning as 'binding' in TCP ZC? :( =20
>=20
> I hope we can agree that good naming is difficult. I thought we agreed=20
> on such naming in the past week=E2=80=99s discussion. The term 'binding' =
is=20
> already used in the networking stack in many places to identify=20
> different things (i.e. device tree, socket, netfilter.. ). The name=20
> prefix avoids any ambiguity and I think this a good name, but if you=20
> have any better suggestions, this change should be trivial.

Ack. Maybe we can cut down the number of ambiguous nouns elsewhere:

maybe call net_shaper_info -> net_shaper ?

maybe net_shaper_data -> net_shaper_hierarchy ?

>  > I've been wondering if we shouldn't move this lock
>  > directly into net_device and combine it with the RSS lock.
>  > Create a "per-netdev" lock, instead of having multiple disparate
>  > mutexes which are hard to allocate? =20
>=20
> The above looks like a quite unrelated refactor and one I think it will=20
> not be worthy. The complexity of locking code in this series is very=20
> limited, and self-encapsulated. Different locks for different things=20
> increases scalability. Possibly we will not see much contention on the=20
> same device, but some years ago we did not think there would be much=20
> contention on RTNL...

We need to do this, anyway. Let me do it myself, then.

> Additionally, if we use a per _network device_ lock, future expansion of=
=20
> the core to support devlink objects will be more difficult.

You parse out the binding you can store a pointer to the right mutex.

> [about separate handle from shaper_info arguments]
>  > Wouldn't it be convenient to store the handle in the "info"
>  > object? AFAIU the handle is forever for an info, so no risk of it
>  > being out of sync=E2=80=A6 =20
>=20
> Was that way a couple of iterations ago. Jiri explicitly asked for the=20
> separation, I asked for confirmation and nobody objected.

Could you link to that? I must have not read it.
You can keep it wrapped in a struct *_handle, that's fine.
But it can live inside the shaper object.

> Which if the 2 options is acceptable from both of you?
>=20
> [about queue limit and channel reconf]
>  > we probably want to trim the queue shapers on channel reconfig,
>  > then, too? :( =20
>=20
> what about exposing to the drivers an helper alike:
>=20
> 	net_shaper_notify_delete(binding, handle);
>=20
> that tells the core the shaper at the given handle just went away in the=
=20
> H/W? The driver will call it in the queue deletion helper, and such=20
> helper could be later on used more generically, i.e. for vf/devlink port=
=20
> deletion.

We can either prevent disabling queues which have shapers attached,=20
or auto-removing the shapers. No preference on that. But put the
callback in the core, please, netif_set_real_num_rx_queues() ?
Why not?

>  > It's not just for introspection, it's also for the core to do
>  > error checking. =20
>=20
> Actually, in the previous discussions it was never mentioned to use=20
> capabilities to fully centralize the error checking.
>=20
> This really looks like another feature, and can easily be added in a=20
> second time (say, a follow-up series), with no functionality loss.
>=20
> I (or anybody else) can=E2=80=99t keep adding new features at every itera=
tion.=20
> At some point we need to draw a line, and we should agree that the scope=
=20
> of this activity has already expanded a lot in the past year. I would=20
> like to draw such a line here.

I can help you. Just tell me which parts you want me to take care of.
