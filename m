Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8739A99C9B2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 14:08:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFFD760609;
	Mon, 14 Oct 2024 12:08:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xtYLXH1l2eJk; Mon, 14 Oct 2024 12:08:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B09660750
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728907723;
	bh=gEcJR/qQYI7JBHCDG5kvF4CZ4xrhEgVc83vGvWKLtEU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fEKMDgYHh//ZNxGOBSCtvFiYYilgNE+RCyEE/rdFJnZGrCjoygazat3jAbZyO+jIl
	 kcu8wu9PjiSz2ZAjyWN7Ud71jYY3LOnXRNRrwwY3QmUOUT6yNhkacrrYDShPUGtsMj
	 GKpObWPGtvJ+YvGzBzmlxpyfqUZDqm7i1D/Uz/0tlsAD4CCOlGtIKQlu+I6k8iC+Ya
	 U/dXTziuLZDzIfySJ4guUjx6jTPVxA0eBJjPbcFGRXzXfwEHpP5DnK9/cCxraIHOPW
	 hMNRiuZvo9oFg4OiPG966RTnrvN4RDauFfkZtcS7tpMc3dkMHsuUbdYzci3W94TWDf
	 Ubs0/xAJp4S5w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B09660750;
	Mon, 14 Oct 2024 12:08:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 701071BF303
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 12:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B38C605D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 12:08:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NnLoBHrT8GMl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 12:08:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 08CF6605D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08CF6605D1
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 08CF6605D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 12:08:39 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>
In-Reply-To: <ZwnXuSUbaFiyGn52@LQ3V64L9R2>
References: <20241003233850.199495-1-jdamato@fastly.com>
 <20241003233850.199495-3-jdamato@fastly.com>
 <87msjg46lw.fsf@kurt.kurt.home> <Zwa3sW-4s7oqktX3@LQ3V64L9R2>
 <87wmig3063.fsf@kurt.kurt.home> <ZwnXuSUbaFiyGn52@LQ3V64L9R2>
Date: Mon, 14 Oct 2024 14:08:34 +0200
Message-ID: <87zfn6c2f1.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1728907716;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gEcJR/qQYI7JBHCDG5kvF4CZ4xrhEgVc83vGvWKLtEU=;
 b=JfC55cLQE21yNRRGy8L6KJTgjXE/lFCHHYGV9LC58B/hIRGwr+0ihe1918BJlUpYLPVzpu
 QJZkwYtoDpOjA06ZLKcvYosEy3LXF58PAu5hNqjvstONTAn0jT9E8O6zQNwt1GzdxVwZ6e
 OAJKImax+Gqr6G8gqWqUJizOy/A2lDrL3nYtctVRXlNuQWpNGbI+0/ETJzLfQolMiCtU4k
 Lrz/66OPjzfmNAxYGcsSMDIMU19FiJygwcogz1ji5JU0TJ+bpEa68x1xiuMxYjcR3yadh7
 lTM7kacXImPmGtMUtR0DYnHyQzq4029N8HIrF4s+quXpM8YlLawB5gf3AnSqhQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1728907716;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gEcJR/qQYI7JBHCDG5kvF4CZ4xrhEgVc83vGvWKLtEU=;
 b=BfGevVBGI4KMq+TlAwIDcMsUEF7NJNpO2YwmCGoRB+sdcTi4l8gVeS/X+SNUfNlfBb3gLT
 YA4IN5uYWOKCuvBg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=JfC55cLQ; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=BfGevVBG
Subject: Re: [Intel-wired-lan] [RFC net-next 2/2] igc: Link queues to NAPI
 instances
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, "moderated list:INTEL
 ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri Oct 11 2024, Joe Damato wrote:
>> > 16 core Intel(R) Core(TM) i7-1360P
>> >
>> > lspci:
>> > Ethernet controller: Intel Corporation Device 125c (rev 04)
>> >                      Subsystem: Intel Corporation Device 3037
>> >
>> > ethtool -i:
>> > firmware-version: 2017:888d
>> >
>> > $ sudo ethtool -L enp86s0 combined 2
>> > $ sudo ethtool -l enp86s0
>> > Channel parameters for enp86s0:
>> > Pre-set maximums:
>> > RX:		n/a
>> > TX:		n/a
>> > Other:		1
>> > Combined:	4
>> > Current hardware settings:
>> > RX:		n/a
>> > TX:		n/a
>> > Other:		1
>> > Combined:	2
>> >
>> > $ cat /proc/interrupts | grep enp86s0 | cut --delimiter=3D":" -f1
>> >  144
>> >  145
>> >  146
>> >  147
>> >  148
>> >
>> > Note that IRQ 144 is the "other" IRQ, so if we ignore that one...
>> > /proc/interrupts shows 4 IRQs, despite there being only 2 queues.
>> >
>> > Querying netlink to see which IRQs map to which NAPIs:
>> >
>> > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yam=
l \
>> >                          --dump napi-get --json=3D'{"ifindex": 2}'
>> > [{'id': 8200, 'ifindex': 2, 'irq': 148},
>> >  {'id': 8199, 'ifindex': 2, 'irq': 147},
>> >  {'id': 8198, 'ifindex': 2, 'irq': 146},
>> >  {'id': 8197, 'ifindex': 2, 'irq': 145}]
>> >
>> > This suggests that all 4 IRQs are assigned to a NAPI (this mapping
>> > happens due to netif_napi_set_irq in patch 1).
>> >
>> > Now query the queues and which NAPIs they are associated with (which
>> > is what patch 2 adds):
>> >
>> > $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yam=
l \=20
>> >                          --dump queue-get --json=3D'{"ifindex": 2}'
>> > [{'id': 0, 'ifindex': 2, 'napi-id': 8197, 'type': 'rx'},
>> >  {'id': 1, 'ifindex': 2, 'napi-id': 8198, 'type': 'rx'},
>> >  {'id': 0, 'ifindex': 2, 'napi-id': 8197, 'type': 'tx'},
>> >  {'id': 1, 'ifindex': 2, 'napi-id': 8198, 'type': 'tx'}]
>> >
>> > As you can see above, since the queues are combined and there are
>> > only 2 of them, NAPI IDs 8197 and 8198 (which are triggered via IRQ
>> > 145 and 146) are displayed.
>>=20
>> Is that really correct?
>
> So I definitely think the case where IGC_FLAG_QUEUE_PAIRS is enabled is
> correct, that case is highlighted by the original commit message.

Yes.

>
> I think IGC_FLAG_QUEUE_PAIRS disabled was buggy, as you pointed out, and =
I've
> made a change I'll include in the next RFC, which I believe fixes it.

Great, thanks :).

>
> Please see below for the case where IGC_FLAG_QUEUE_PAIRS is disabled and a
> walk-through.
>
>> There are four NAPI IDs which are triggered by
>> the four IRQs.
>
> I'm not an IGC expert and I appreciate your review/comments very much, so=
 thank
> you!
>
> I don't think the number of queues I create with ethtool factors into whe=
ther
> or not IGC_FLAG_QUEUE_PAIRS is enabled or not.

igc_ethtool_set_channels() sets adapter->rss_queues and calls
igc_set_flag_queue_pairs(). So, ethtool should influence it.

> Please forgive me for the length of my message, but let me walk
> through the code to see if I've gotten it right, including some debug
> output I added:
>
> In igc_init_queue_configuration:
>
> max_rss_queues =3D IGC_MAX_RX_QUEUES (4)
>
> and
>
> adapter->rss_queues =3D min of 4 or num_online_cpus
>
> which I presume is 16 on my 16 core machine, so:
>
> adapter->rss_queues =3D 4 (see below for debug output which verifies this)
>
> In igc_set_flag_queue_pairs, the flag IGC_FLAG_QUEUE_PAIRS is set only if:
>
> (adapter->rss_queues (4) > max_rss_queues(4) / 2) which simplifies
> to (4 > 2), meaning the flag would be enabled regardless of the
> number of queues I create with ethtool, as long as I boot my machine
> with 16 cores available.
>
> I verified this by adding debug output to igc_set_flag_queue_pairs and
> igc_init_queue_configuration, which outputs:
>
> igc 0000:56:00.0: IGC_FLAG_QUEUE_PAIRS on
> igc 0000:56:00.0: max_rss_queues: 4, rss_queues: 4
>
> That's at boot with the default number of combined queues of 4 (which is =
also
> the hardware max).
>
> The result of IGC_FLAG_QUEUE_PAIRS on was the result posted in the
> original commit message of this patch and I believe that to be
> correct.
>
> The only place I can see that IGC_FLAG_QUEUE_PAIRS has any impact
> (aside from ethtool IRQ coalescing, which we can ignore) is
> igc_set_interrupt_capability:
>
>   /* start with one vector for every Rx queue */
>   numvecs =3D adapter->num_rx_queues;
>=20=20=20
>   /* if Tx handler is separate add 1 for every Tx queue */
>   if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS))
>     numvecs +=3D adapter->num_tx_queues;
>
> In this case, the flag only has impact if it is _off_.
>
> It impacts the number of vectors allocated, so I made a small change
> to the driver, which I'll include in the next RFC to deal with the
> IGC_FLAG_QUEUE_PAIRS off case.
>
> In order to get IGC_FLAG_QUEUE_PAIRS off, I boot my machine with the grub
> command line option "maxcpus=3D2", which should force the flag off.
>
> Checking my debug output at boot to make sure:
>
> igc 0000:56:00.0: IGC_FLAG_QUEUE_PAIRS off
> igc 0000:56:00.0: max_rss_queues: 4, rss_queues: 2
>
> So, now IGC_FLAG_QUEUE_PAIRS is off which should impact
> igc_set_interrupt_capability and the vector calculation.
>
> Let's check how things look at boot:
>
> $ ethtool -l enp86s0 | tail -5
> Current hardware settings:
> RX:		n/a
> TX:		n/a
> Other:		1
> Combined:	2
>
> 2 combined queues by default when I have 2 CPUs.
>
> $ cat /proc/interrupts  | grep enp
>  127:  enp86s0
>  128:  enp86s0-rx-0
>  129:  enp86s0-rx-1
>  130:  enp86s0-tx-0
>  131:  enp86s0-tx-1
>
> 1 other IRQ, and 2 IRQs for each of RX and TX.
>
> Compare to netlink:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                        --dump napi-get --json=3D'{"ifindex": 2}'
> [{'id': 8196, 'ifindex': 2, 'irq': 131},
>  {'id': 8195, 'ifindex': 2, 'irq': 130},
>  {'id': 8194, 'ifindex': 2, 'irq': 129},
>  {'id': 8193, 'ifindex': 2, 'irq': 128}]
>
> So the driver has 4 IRQs linked to 4 different NAPIs, let's check queues:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump queue-get --json=3D'{"ifindex": 2}'
>
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>  {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
>
> In this case you can see that each RX and TX queue has a unique NAPI.
>
> I think this is correct, but slightly confusing :) as ethtool
> reports n/a for RX and TX and only reports a combined queue count,
> but you were correct that there was a bug for this case in the code
> I proposed in this RFC.
>
> I think this new output looks correct and will include the adjusted
> patch and a detailed commit message in the next RFC.
>
> Let me know if you think the output looks right to you now?

Looks good to me now.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmcNCcITHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgmfuD/9PLA6H/l3Onsm204kSaDJQkhAj8/qf
nBm0wqMs1nw/DmpJAfb8WaaZpYgPhMQNYzRCgZBTMDBStG1dvPudanxeVzDfoHfh
TAJa4SDjzqryywCDRCf7kmmsltVnbc6Zyv9rWunNuQFjdcOSQHV9aRBE7IKZ/DiX
nrKLQpmK77KiIrMFxv3q/H6pz2pItlJrTmofUe9kXEcYZgLNDidBPZuQR5tX9ny5
bzr2tTnd9O7zmTnpHA4FYhaGpDStS0k7wzcodbI4AXI4THHx6g6M1Yj8ZWG9LxpZ
LhKUA86wF5URlwR0gJxUXOS4PT9gQb9loiOmgWVqYqvfL8uToql6Mwf//NSXY4bb
MS71auFDnqkbLnXd5MhXIb9J5QboEjP4yfK4EgRFjdBZFGKflXFJe25/5JssZmDq
Zv+rcSQBGa09WcxcIHdRsYllTXK0pUEKMoLuFux3nlV2mhaygPy/KTSM01VWRmo/
LfD15FJbdJLErM7QuowaSJ+t2B8RqVNNuEHYohAY1btK1MWcsbuIHz1weInCnEIl
o3XSJKvwfyDotnwhhclr+DN4QBi/ispbJHRJPZlFtCJ+8qUp20PbH8h1FOj5JWh6
VYrGcLg8bR9LcdqgDs1jiugmUgfk5wn7OKtbViVFrGSMrTtG/NaEi6O1gnHdzh9D
YyYzJufnkRqXqA==
=vwnG
-----END PGP SIGNATURE-----
--=-=-=--
