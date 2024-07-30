Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B231940E6C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 11:58:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0B70608F0;
	Tue, 30 Jul 2024 09:58:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PK0fXCjEbA8t; Tue, 30 Jul 2024 09:58:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93F3E608F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722333522;
	bh=RGoEM2sBI9H+4jdzkqFA7zQ20wEq+y0hpMq3862q89o=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2TqElH5HoPQ1HigxG6JWvAfej/DNBAh/vZIy3WhZPssuC+lNb0aGU99Ft3oYQPnQ0
	 Dr0lpmP+tpfl+7YG70UEsAlkx0F3RKJ/1wpnNOegXMXzFpFMzPfDf4LAM9e6jLMsCK
	 DRIiq/bMu6pwQktIpNnc0mKiRPVolsXCEWY62TciexKr6PmLvDH1EDfj0VP5hQcurb
	 3teGa8iHzGo9mrRL4QFH28YlzsJP6ixbpXQh5ox5CCa2Ax9zcRdWc1JrBqhTwqEghw
	 ujHFOnFnVUSuVYreSWev8Z4mWope9b5IY0uNgIUovFJSLMwI2VM+xD475OPK14apPy
	 M/qJjhEcTp7eA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93F3E608F3;
	Tue, 30 Jul 2024 09:58:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D5A21BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:58:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0839F4025C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:58:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qIsEtmenMAhg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 09:58:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6EAB8400AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EAB8400AC
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6EAB8400AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 09:58:39 +0000 (UTC)
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
 Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <20240730012312.775893-1-yoong.siang.song@intel.com>
References: <20240730012312.775893-1-yoong.siang.song@intel.com>
Date: Tue, 30 Jul 2024 11:58:34 +0200
Message-ID: <87plqvjj5h.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1722333516;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RGoEM2sBI9H+4jdzkqFA7zQ20wEq+y0hpMq3862q89o=;
 b=uR0sgPqO4CkZIXC3qLkB1+lOBK+9HOm16MLEx8B+FIaE4W5QuWyc44hBBJ++xHLjrdjDTm
 R5IuH5iW7j70XU2Q3HgFoNYtJ8nskjskL5fdMD3sGiZijIYqoZ8pS6o9b6XHYx+N/nKbRE
 V+Y6HThiQMlnVbmJzm65d0qxzVOQosw5QZ/I1q3eUXDCth2hW8r460bc1bfbNVcnOPGd/A
 iskkM3RRSKYFcGbZAjlqmg7oOCWVEad/ILxPfDdcVTBvNXbavf2Y1sMKcHo26hV8a+huNq
 9fMzm2JZAKYTsS3crhhOi1N5FBINQBSJGdPM0n/PzyEpyZ4cG9oEiEe3+hVKyQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1722333516;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RGoEM2sBI9H+4jdzkqFA7zQ20wEq+y0hpMq3862q89o=;
 b=k4Js5UuQd4uIH5icrNshrFG5sJwDCLMzqjPnnBx9lE40D/UgblZ5kjap+oBRnQj9eCYa2i
 KXp+/I9hlX78TwBg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=uR0sgPqO; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=k4Js5UuQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v1 2/3] igc: Add default Rx queue configuration via sysfs
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue Jul 30 2024, Song Yoong Siang wrote:
> From: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>
>
> This commit introduces the support to configure default Rx queue during
> runtime. A new sysfs attribute "default_rx_queue" has been added, allowing
> users to check and modify the default Rx queue.
>
> 1. Command to check the currently configured default Rx queue:
>    cat /sys/devices/pci0000:00/.../default_rx_queue
>
> 2. Command to set the default Rx queue to a desired value, for example 3:
>    echo 3 > /sys/devices/pci0000:00/.../default_rx_queue
>
> Signed-off-by: Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>

[...]

> index e5b893fc5b66..df96800f6e3b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -63,6 +63,12 @@
>  /* RSS registers */
>  #define IGC_MRQC		0x05818 /* Multiple Receive Control - RW */
>=20=20
> +/* MRQC register bit definitions */

Nit: Now, the MRQC register definitions are scattered over two files:
igc_regs.h and igc.h. igc.h has

#define IGC_MRQC_ENABLE_RSS_MQ		0x00000002
#define IGC_MRQC_RSS_FIELD_IPV4_UDP	0x00400000
#define IGC_MRQC_RSS_FIELD_IPV6_UDP	0x00800000

Maybe combine them into a single location?

> +#define IGC_MRQC_ENABLE_MQ		0x00000000
> +#define IGC_MRQC_ENABLE_MASK		GENMASK(2, 0)
> +#define IGC_MRQC_DEFAULT_QUEUE_MASK	GENMASK(5, 3)
> +#define IGC_MRQC_DEFAULT_QUEUE_SHIFT	3

Nit: FIELD_GET() and FIELD_PREP() can help to get rid of the manual
shifting. See below.=20

> +
>  /* Filtering Registers */
>  #define IGC_ETQF(_n)		(0x05CB0 + (4 * (_n))) /* EType Queue Fltr */
>  #define IGC_FHFT(_n)		(0x09000 + (256 * (_n))) /* Flexible Host Filter */
> diff --git a/drivers/net/ethernet/intel/igc/igc_sysfs.c b/drivers/net/eth=
ernet/intel/igc/igc_sysfs.c
> new file mode 100644
> index 000000000000..34d838e6a019
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/igc/igc_sysfs.c
> @@ -0,0 +1,156 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2024 Intel Corporation */
> +
> +#include <linux/device.h>
> +#include <linux/kobject.h>
> +#include <linux/module.h>
> +#include <linux/netdevice.h>
> +#include <linux/sysfs.h>
> +#include <linux/types.h>
> +
> +#include "igc.h"
> +#include "igc_regs.h"
> +#include "igc_sysfs.h"
> +
> +/**
> + * igc_is_default_queue_supported - Checks if default Rx queue can be co=
nfigured
> + * @mrqc: MRQC register content
> + *
> + * Checks if the current configuration of the device supports changing t=
he
> + * default Rx queue configuration.
> + *
> + * Return: true if the default Rx queue can be configured, false otherwi=
se.
> + */
> +static bool igc_is_default_queue_supported(u32 mrqc)
> +{
> +	u32 mrqe =3D mrqc & IGC_MRQC_ENABLE_MASK;
> +
> +	/* The default Rx queue setting is applied only if Multiple Receive
> +	 * Queues (MRQ) as defined by filters (2-tuple filters, L2 Ether-type
> +	 * filters, SYN filter and flex filters) is enabled.
> +	 */
> +	if (mrqe !=3D IGC_MRQC_ENABLE_MQ && mrqe !=3D IGC_MRQC_ENABLE_RSS_MQ)
> +		return false;
> +
> +	return true;
> +}
> +
> +/**
> + * igc_get_default_rx_queue - Returns the index of default Rx queue
> + * @adapter: address of board private structure
> + *
> + * Return: index of the default Rx queue.
> + */
> +static u32 igc_get_default_rx_queue(struct igc_adapter *adapter)
> +{
> +	struct igc_hw *hw =3D &adapter->hw;
> +	u32 mrqc =3D rd32(IGC_MRQC);
> +
> +	if (!igc_is_default_queue_supported(mrqc)) {
> +		netdev_warn(adapter->netdev,
> +			    "MRQ disabled: default RxQ is ignored.\n");
> +	}
> +
> +	return (mrqc & IGC_MRQC_DEFAULT_QUEUE_MASK) >>
> +		IGC_MRQC_DEFAULT_QUEUE_SHIFT;

Nit: return FIELD_GET(IGC_MRQC_DEFAULT_QUEUE_MASK, mrqc);

> +}
> +
> +/**
> + * igc_set_default_rx_queue - Sets the default Rx queue
> + * @adapter: address of board private structure
> + * @queue: index of the queue to be set as default Rx queue
> + *
> + * Return: 0 on success, negative error code on failure.
> + */
> +static int igc_set_default_rx_queue(struct igc_adapter *adapter, u32 que=
ue)
> +{
> +	struct igc_hw *hw =3D &adapter->hw;
> +	u32 mrqc =3D rd32(IGC_MRQC);
> +
> +	if (!igc_is_default_queue_supported(mrqc)) {
> +		netdev_err(adapter->netdev,
> +			   "Default RxQ not supported. Please enable MRQ.\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	if (queue > adapter->rss_queues - 1) {
> +		netdev_err(adapter->netdev,
> +			   "Invalid default RxQ index %d. Valid range: 0-%u.\n",
> +			   queue, adapter->rss_queues - 1);
> +		return -EINVAL;
> +	}
> +
> +	/* Set the default Rx queue */
> +	mrqc =3D rd32(IGC_MRQC);
> +	mrqc &=3D ~IGC_MRQC_DEFAULT_QUEUE_MASK;
> +	mrqc |=3D queue << IGC_MRQC_DEFAULT_QUEUE_SHIFT;

Nit: mrqc |=3D FIELD_PREP(IGC_MRQC_DEFAULT_QUEUE_MASK, queue);

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmaouUoTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgtBQEACSIf0aYuaOphs8JPYmE2MJMfO+x270
iNE9MGJpBgiso4SlT3dNT05mFcKNDVQW/azmtJDRlgMSf3xBlbdexN2Gag/PK4Ah
lJATYGUABykY3ThNAAhMUV4YbzcAa0r0C34oorr3s+mIGh4k0xeRbAaAF12tTezN
asnXQ5tFLlCMfi3uKK7y+YW4SENhnDMbw4QEPzN8xqoU1gfVSVSZHdlE2E7aGx2r
GTIdo3gNiYwplUZo4zPQfC9v02XGzM73bYNs7mNBlktnxn9Tn5GH+TmNxFbDgroI
kQaw2ytg9X+b+9TSGkCCvCzFv2fH4DmRPMshOetPnrHhKm9VYTkGhbvdr4k9jZUi
EG72L1w+8YBy8UG+bo63bjhFRnIP+7N7YVYVZBrUBmBFtdHyWIE8vG2IppUWUw+r
8UChtvhhmRjmyTTbKE4YvdFOu2u4EF9a3ex0s/4sMN86pjegqZFm8qBlWbjIh+B1
O6iyzKkWHBtrUJZYHto8xM+1nwkz1+Ny5muGhqZh6AHKZItDsrbwwWJYeLd/ovmX
oiGRoQ5XSDBlZaV9PE6LmZnfE616UgbSuLfIfF4yQxrbCa4BGe9SaawBX4aiB/kG
qL+xJUKR98cjwmCKSYQvGOHyAno4HWv3tgCP8oz0LZyUs6/hxs461S/biL87c58R
yCkNyHwZ0+2zWg==
=vGQh
-----END PGP SIGNATURE-----
--=-=-=--
