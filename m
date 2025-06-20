Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20171AE1532
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jun 2025 09:46:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 655E940B91;
	Fri, 20 Jun 2025 07:45:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VtdlJotxuFwo; Fri, 20 Jun 2025 07:45:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9E2240C26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750405553;
	bh=yiOx0UJc6/4EKhHUrNBpnoe5RzXYaQsljD5jorHuO9U=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z2npoFSdP3mubv6KAMVeSHD5ATh+xtNoJgPnBH76upR8yZeGeGOkrVX2PbE31vP7g
	 emv+HG4Vt9gojtz4UDeoLZxbi46kZZqhV0NYP39+6+PpWyQ3VZXHLFIRuj/r02d0FK
	 3sDWzBh7qvoZEPxUQstBT0ibpAhGhOqctGGw/sX+T9qUFVMPyuPNrBy4fbEXeNBNyb
	 sQoFmVE5SzhU3Y0c0YB6BcJBE2zsyM23rXnu7GI6T7UqkLOdHmNgBrq5ZMntbG4pjG
	 MBjEa5/oDgzyz7YySvlxeB4upfV2LQ9x9lmMByqR6P3F7viNfBP/XIAAEBO8u170aN
	 uQ3klF+cTc9eA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9E2240C26;
	Fri, 20 Jun 2025 07:45:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E71B316B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 07:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C922C40061
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 07:45:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PKaYNqytpfRJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jun 2025 07:45:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C243540056
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C243540056
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C243540056
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 07:45:50 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Song Yoong Siang <yoong.siang.song@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, Alexei Starovoitov <ast@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Jonathan Corbet <corbet@lwn.net>, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>, Shinas Rasheed
 <srasheed@marvell.com>, Kevin Tian <kevin.tian@intel.com>, Brett Creeley
 <brett.creeley@amd.com>, Blanco Alcaine Hector
 <hector.blanco.alcaine@intel.com>, Joshua Hay <joshua.a.hay@intel.com>,
 Sasha Neftin <sasha.neftin@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Jacob Keller <jacob.e.keller@intel.com>, Wojciech
 Drewek <wojciech.drewek@intel.com>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <20250619153738.2788568-1-yoong.siang.song@intel.com>
References: <20250619153738.2788568-1-yoong.siang.song@intel.com>
Date: Fri, 20 Jun 2025 09:45:42 +0200
Message-ID: <8734bux3dl.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1750405544;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yiOx0UJc6/4EKhHUrNBpnoe5RzXYaQsljD5jorHuO9U=;
 b=fcR2AwBfoJuarhXpV1pAN5qQaHOipR3HK/EyhllabDDjEDaA7FR8QoqR1zzakUuFtSFevU
 12/cTQFHmNuLal8bg5Q1QrRgNb3NLshTlXzw2yQHo/7JKQgzZEE2Cx/r6k8mzbMPerRBxH
 iwzGfJJai3NDQsDtH+aLY4J0YaH31ll8AsZlDi0fesj8oVnnSiApOX7qFz1np6JqRQZptl
 kK/+tfdHPSbIjitbXKYv+fZJDEuGmXssd/y3KGacea55/GuFQqIxoqqTV55OACUCXMLX18
 UtW7kBR6nOksyZkuQ0lwBDPkm86+f7f/dytdB0RLYliWkxUv7DPEyVFT5PFaVQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1750405544;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yiOx0UJc6/4EKhHUrNBpnoe5RzXYaQsljD5jorHuO9U=;
 b=5KX7HbriTjtu5BozbLOQv3iJmoMYE97BbpEOOj0WHHXHajNS8xQGCx+I/x2fRMUCv+rvcP
 upkDcLbTGDSYlyAw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=fcR2AwBf; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=5KX7Hbri
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v2 1/1] igc: Add wildcard rule support to ethtool NFC using Default
 Queue
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

On Thu Jun 19 2025, Song Yoong Siang wrote:
> Introduce support for a lowest priority wildcard (catch-all) rule in
> ethtool's Network Flow Classification (NFC) for the igc driver. The
> wildcard rule directs all unmatched network traffic, including traffic not
> captured by Receive Side Scaling (RSS), to a specified queue. This
> functionality utilizes the Default Queue feature available in I225/I226
> hardware.
>
> The implementation has been validated on Intel ADL-S systems with two
> back-to-back connected I226 network interfaces.
>
> Testing Procedure:
> 1. On the Device Under Test (DUT), verify the initial statistic:
>    $ ethtool -S enp1s0 | grep rx_q.*packets
>         rx_queue_0_packets: 0
>         rx_queue_1_packets: 0
>         rx_queue_2_packets: 0
>         rx_queue_3_packets: 0
>
> 2. From the Link Partner, send 10 ARP packets:
>    $ arping -c 10 -I enp170s0 169.254.1.2
>
> 3. On the DUT, verify the packet reception on Queue 0:
>    $ ethtool -S enp1s0 | grep rx_q.*packets
>         rx_queue_0_packets: 10
>         rx_queue_1_packets: 0
>         rx_queue_2_packets: 0
>         rx_queue_3_packets: 0
>
> 4. On the DUT, add a wildcard rule to route all packets to Queue 3:
>    $ sudo ethtool -N enp1s0 flow-type ether queue 3
>
> 5. From the Link Partner, send another 10 ARP packets:
>    $ arping -c 10 -I enp170s0 169.254.1.2
>
> 6. Now, packets are routed to Queue 3 by the wildcard (Default Queue) rule:
>    $ ethtool -S enp1s0 | grep rx_q.*packets
>         rx_queue_0_packets: 10
>         rx_queue_1_packets: 0
>         rx_queue_2_packets: 0
>         rx_queue_3_packets: 10
>
> 7. On the DUT, add a EtherType rule to route ARP packet to Queue 1:
>    $ sudo ethtool -N enp1s0 flow-type ether proto 0x0806 queue 1
>
> 8. From the Link Partner, send another 10 ARP packets:
>    $ arping -c 10 -I enp170s0 169.254.1.2
>
> 9. Now, packets are routed to Queue 1 by the EtherType rule because it is
>    higher priority than the wildcard (Default Queue) rule:
>    $ ethtool -S enp1s0 | grep rx_q.*packets
>         rx_queue_0_packets: 10
>         rx_queue_1_packets: 10
>         rx_queue_2_packets: 0
>         rx_queue_3_packets: 10
>
> 10. On the DUT, delete all the NFC rules:
>     $ sudo ethtool -N enp1s0 delete 63
>     $ sudo ethtool -N enp1s0 delete 64
>
> 11. From the Link Partner, send another 10 ARP packets:
>     $ arping -c 10 -I enp170s0 169.254.1.2
>
> 12. Now, packets are routed to Queue 0 because the value of Default Queue
>     is reset back to 0:
>     $ ethtool -S enp1s0 | grep rx_q.*packets
>          rx_queue_0_packets: 20
>          rx_queue_1_packets: 10
>          rx_queue_2_packets: 0
>          rx_queue_3_packets: 10
>
> Co-developed-by: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>
> Signed-off-by: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmhVEaYTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgmuJEACJBgobj3CkAve16FGrjD3Zh4+IiYSY
J/o1/mJPvAyf5YhYEgQBOdqAn+w8jGBapT+RZ5ZlykRmPhjHcXIoxdi3Z7g6+u3K
gG1ymQZVbFT3NcPv5+AZHzd5825wUJJkYrJoX4MpouK6hCmw5dDPK/Eu7yg6qmhj
6bh43bt7LeZSL7KSDfGJXagYLhzVuFUI63/HSTICQz7mpd0/6qhEPW9qf4TEZZVV
bZXXO2UYJvmc01VFiEk0nFyPKEMYMW1VUvPeAZn+Y6FpvkqGj5iyKgktbiqHwuYn
BT3dEr3Io03pZn7ceuiOXF5eSGaTYvECeAx50vHvjIXwzITF9mqiNLQiEXA/hpHy
D0RlenWbdauzgaB7gDVxt2Z+FhH9MhSmTWblFeVlFgKcZt+Oz+bQwEsIlzsnhi/z
MaendoQO12/HMPRBx5LCzEwxxd+/jxUYullWCS9IYvwTErojLYCtTSsZ98XbqBd8
AsXfOuDvKGNUt6/AL5H6shQWk2l8RUUPcP58W9CnO4eo+BQqQ2x5P0HxhsqTK8SS
pU7de1jVOAsffe3D/Ee+t0/n2NFFWjIcQ2P45jLtDXsCeXVCo2hdHlL2VIkvGNiJ
rKUWejs6zdwUg5Q3D+SX1yvi2TXaFZ30X95RYwiP8uzX+Hui5HwZcHtO5VAd2VCi
hIODG5E/V6fKqA==
=SVhz
-----END PGP SIGNATURE-----
--=-=-=--
