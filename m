Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC7B99E3D2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 12:27:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEE4F60887;
	Tue, 15 Oct 2024 10:27:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u1c7BK6nk7FN; Tue, 15 Oct 2024 10:27:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B0EF60891
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728988029;
	bh=ZpIqGV3FZABzIvwPIJ5wx08SyD5BMrHZo4Js9GlnC54=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ciONPy3JjwyhNkNhu19XVcDaXcUYiV/XvTEI63El4lyAPUS+KGKj5hjtsVKcdYJQO
	 Su3IqFGBtUFDhZPVbXIQr7LhxjvYcXcSfO5skcEliqEaT6v3wasVZhHiyYDNE7aDtt
	 +zvb+RmmzcYC2jD/IaidmD08WSKjKLOV/UpihhPU05WNMd0HWkIDTQ++YvsOTzlxSs
	 dgz20jw4sefwZWQ9lozYnT9RiB5DWzGF/noT1fsaWjGFKiAQ8EQdNu0kZHS0e9kZfm
	 JmwYlZAQ2MQ6R7TRxyAl0/raF8jJZRa1slV9sFPueXFxeu+qw2l/Is7mpwLs6mC1v2
	 ofrr7uH62ryQQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B0EF60891;
	Tue, 15 Oct 2024 10:27:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C94D81BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 10:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B29C480E11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 10:27:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F1KgZ3HTXm3o for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 10:27:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 830DE80E01
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 830DE80E01
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 830DE80E01
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 10:27:06 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>, netdev@vger.kernel.org
In-Reply-To: <20241014213012.187976-3-jdamato@fastly.com>
References: <20241014213012.187976-1-jdamato@fastly.com>
 <20241014213012.187976-3-jdamato@fastly.com>
Date: Tue, 15 Oct 2024 12:27:01 +0200
Message-ID: <87h69d3bm2.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1728988023;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZpIqGV3FZABzIvwPIJ5wx08SyD5BMrHZo4Js9GlnC54=;
 b=B0/fQViYnGcwZkjQZs8vbCUqHVQOoQNorEgLOrCnMT3vYDGaR0Nn95bIYWFC1xtOzg+Rng
 wDIl46GY1RVTe6eAaTUVq5qsL9oB7kbUd2a2OgyGBonb2Ay6GaszVee+P+V176vZPYwmmS
 5ei7r6hiqvGM786Yp6uT3UF23VdR7s7uKctL0pMvp59t0O/MLl+2ltrBYl4OqFN+BgqEgq
 rO87KpZjg1HGHYOdJSL2WBgpk8+7gN1gXs8kOKTBC/uMvfcOClbZDNkYSgis6xWOjw3zyh
 xYWIcfCAU4QAonSwpCdUA9Faa3Sz3B/7DA8HxkkZwtuUpLFfjRexk+LBQqw07g==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1728988023;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZpIqGV3FZABzIvwPIJ5wx08SyD5BMrHZo4Js9GlnC54=;
 b=XNFspYlioZsgZddnrxGs0PI4T2EM6GhW1kvaym/ivzoAGUyjWZm91IPy6KSuszl8vAPU0I
 ciNVLtnKOz/v3TBQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=B0/fQViY; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=XNFspYli
Subject: Re: [Intel-wired-lan] [RFC net-next v2 2/2] igc: Link queues to
 NAPI instances
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, vinicius.gomes@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "open list:XDP \(eXpress Data Path\)" <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Mon Oct 14 2024, Joe Damato wrote:
> Link queues to NAPI instances via netdev-genl API so that users can
> query this information with netlink. Handle a few cases in the driver:
>   1. Link/unlink the NAPIs when XDP is enabled/disabled
>   2. Handle IGC_FLAG_QUEUE_PAIRS enabled and disabled
>
> Example output when IGC_FLAG_QUEUE_PAIRS is enabled:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump queue-get --json=3D'{"ifindex": 2}'
>
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
>  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
>  {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
>  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
>
> Since IGC_FLAG_QUEUE_PAIRS is enabled, you'll note that the same NAPI ID
> is present for both rx and tx queues at the same index, for example
> index 0:
>
> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>
> To test IGC_FLAG_QUEUE_PAIRS disabled, a test system was booted using
> the grub command line option "maxcpus=3D2" to force
> igc_set_interrupt_capability to disable IGC_FLAG_QUEUE_PAIRS.
>
> Example output when IGC_FLAG_QUEUE_PAIRS is disabled:
>
> $ lscpu | grep "On-line CPU"
> On-line CPU(s) list:      0,2
>
> $ ethtool -l enp86s0  | tail -5
> Current hardware settings:
> RX:		n/a
> TX:		n/a
> Other:		1
> Combined:	2
>
> $ cat /proc/interrupts  | grep enp
>  144: [...] enp86s0
>  145: [...] enp86s0-rx-0
>  146: [...] enp86s0-rx-1
>  147: [...] enp86s0-tx-0
>  148: [...] enp86s0-tx-1
>
> 1 "other" IRQ, and 2 IRQs for each of RX and Tx, so we expect netlink to
> report 4 IRQs with unique NAPI IDs:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump napi-get --json=3D'{"ifindex": 2}'
> [{'id': 8196, 'ifindex': 2, 'irq': 148},
>  {'id': 8195, 'ifindex': 2, 'irq': 147},
>  {'id': 8194, 'ifindex': 2, 'irq': 146},
>  {'id': 8193, 'ifindex': 2, 'irq': 145}]
>
> Now we examine which queues these NAPIs are associated with, expecting
> that since IGC_FLAG_QUEUE_PAIRS is disabled each RX and TX queue will
> have its own NAPI instance:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump queue-get --json=3D'{"ifindex": 2}'
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>  {'id': 0, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
>
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  v2:
>    - Update commit message to include tests for IGC_FLAG_QUEUE_PAIRS
>      disabled
>    - Refactored code to move napi queue mapping and unmapping to helper
>      functions igc_set_queue_napi and igc_unset_queue_napi
>    - Adjust the code to handle IGC_FLAG_QUEUE_PAIRS disabled
>    - Call helpers to map/unmap queues to NAPIs in igc_up, __igc_open,
>      igc_xdp_enable_pool, and igc_xdp_disable_pool
>
>  drivers/net/ethernet/intel/igc/igc.h      |  3 ++
>  drivers/net/ethernet/intel/igc/igc_main.c | 58 +++++++++++++++++++++--
>  drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 +
>  3 files changed, 59 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/=
intel/igc/igc.h
> index eac0f966e0e4..7b1c9ea60056 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -337,6 +337,9 @@ struct igc_adapter {
>  	struct igc_led_classdev *leds;
>  };
>=20=20
> +void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
> +			struct napi_struct *napi);
> +void igc_unset_queue_napi(struct igc_adapter *adapter, int q_idx);
>  void igc_up(struct igc_adapter *adapter);
>  void igc_down(struct igc_adapter *adapter);
>  int igc_open(struct net_device *netdev);
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethe=
rnet/intel/igc/igc_main.c
> index 7964bbedb16c..59c00acfa0ed 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -4948,6 +4948,47 @@ static int igc_sw_init(struct igc_adapter *adapter)
>  	return 0;
>  }
>=20=20
> +void igc_set_queue_napi(struct igc_adapter *adapter, int q_idx,
> +			struct napi_struct *napi)
> +{
> +	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS) {
> +		netif_queue_set_napi(adapter->netdev, q_idx,
> +				     NETDEV_QUEUE_TYPE_RX, napi);
> +		netif_queue_set_napi(adapter->netdev, q_idx,
> +				     NETDEV_QUEUE_TYPE_TX, napi);
> +	} else {
> +		if (q_idx < adapter->num_rx_queues) {
> +			netif_queue_set_napi(adapter->netdev, q_idx,
> +					     NETDEV_QUEUE_TYPE_RX, napi);
> +		} else {
> +			q_idx -=3D adapter->num_rx_queues;
> +			netif_queue_set_napi(adapter->netdev, q_idx,
> +					     NETDEV_QUEUE_TYPE_TX, napi);
> +		}
> +	}
> +}

In addition, to what Vinicius said. I think this can be done
simpler. Something like this?

void igc_set_queue_napi(struct igc_adapter *adapter, int vector,
			struct napi_struct *napi)
{
	struct igc_q_vector *q_vector =3D adapter->q_vector[vector];

	if (q_vector->rx.ring)
		netif_queue_set_napi(adapter->netdev, vector, NETDEV_QUEUE_TYPE_RX, napi);

	if (q_vector->tx.ring)
		netif_queue_set_napi(adapter->netdev, vector, NETDEV_QUEUE_TYPE_TX, napi);
}

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmcOQ3UTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzggP+EACbgGaNTWYbIcp1ENi3SQd4VQWHfX4P
NLZHtOiG+aBHjfLRpW+pHulbwJ4+fn/XOIoWc1HyoS3IjF95CKAiwK8SNPBivGb9
5zRmEqoz0yUZHJjdhZIboVwAZ9/1O92eE3gwtE++LW0oEoBcE4TqItDeZgQJ/jb8
zdmXp0pxQns7TEfFv5cDPTnnxZJgbbyDBHr9Le0jA27/hMwDzclgHqgpqyzoypdD
+B99POsjugofhiOVmzvWVYtTQ2Km/7Yt4pc45IAJG7M5sfqly8hfAmvutTuCeE0p
NGjW43qgpzCThQCWRL6QgiEqlDHndYAkLjrRxUNBEy2RwMvtZPJCFw54h3XrzfXB
/JXen5j1+gaFuFS/tF743VvLprsYPsKnKOa9sYU6ji7uKd6yKml8Rw8XUrWnPwjS
hpgzkewBeZVBYOJ/x+odtVMPBiFxhpoSmbhPnPNGs7P5SESJgPAtdkiQNqGzI81Z
mFgkNkRTkeyBiJ6NN43diLanEFeH5pGbFs8m7hrXBrAHxQP/c6A09KmCR5XS3Hra
dzG7EB+tvIrYfsQiEWwhZEC+j9m2MGT190NusYPX+Gv7d5RgL80vw7XGly5t91el
/SO30QNj8yItov0R//NqlZKx76hugTbW4NO+hJLqNCpU0woBG56v5N8y2VSuS4Fh
jQrQCDjVYZqMyg==
=yqMd
-----END PGP SIGNATURE-----
--=-=-=--
