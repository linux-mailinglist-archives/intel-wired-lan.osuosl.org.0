Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 587F1AC27C7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 18:42:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDC6341C2D;
	Fri, 23 May 2025 16:42:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PpaSd5w9vLKN; Fri, 23 May 2025 16:42:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFE2941C18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748018528;
	bh=8ou1hprUM55W6alIfCZ5jKlFd1kfNwRV+g441aKqk40=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bouq983+By/Tf5cIbIQX7Jv0VMFaEva/mRa4/QtFDDB+JZj9rd/Vo/EBUI8iwt6Xt
	 eNrWEV1g9SSckoMVwwDUAZXln4u6C2QCSH2VvP2HNgkfHONR4bjiTze85ADsvgdYoJ
	 Mvnl5+/cTWj7Yka/3udrJJHC6mVXONQFFOHuHKHV9nb2a1GEBYLtPJ43NJ8jcNuEdq
	 TU6DpRDkKPfbOgO5Evm+cAg7kkN+3lINskWCXBTRWPWvmTGArSIjNVJ62/235DIXMB
	 xdewc7H3Upy43t+6Zzdd8+fB9J3K3gJUq7k78fC0wR5MiXWMYVPV1nfkEEjQ39BanW
	 fvFZH+VrcS9RA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFE2941C18;
	Fri, 23 May 2025 16:42:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6034D68
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 16:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46A0F83C3B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 16:42:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XfTyBSM8QuPk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 16:42:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=85.10.215.232;
 helo=dediextern.your-server.de;
 envelope-from=marcus.wichelmann@hetzner-cloud.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BE2FA83C22
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE2FA83C22
Received: from dediextern.your-server.de (dediextern.your-server.de
 [85.10.215.232])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE2FA83C22
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 16:42:03 +0000 (UTC)
Received: from sslproxy04.your-server.de ([78.46.152.42])
 by dediextern.your-server.de with esmtpsa (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.94.2) (envelope-from <marcus.wichelmann@hetzner-cloud.de>)
 id 1uIVSy-000NZD-Hd; Fri, 23 May 2025 18:41:52 +0200
Received: from localhost ([127.0.0.1])
 by sslproxy04.your-server.de with esmtpsa (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.96) (envelope-from <marcus.wichelmann@hetzner-cloud.de>)
 id 1uIVSy-000HYh-0z; Fri, 23 May 2025 18:41:52 +0200
Message-ID: <52d2e85a-6d79-468e-a86c-444e71811dfc@hetzner-cloud.de>
Date: Fri, 23 May 2025 18:41:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, michal.kubiak@intel.com,
 =?UTF-8?Q?Tobias_B=C3=B6hm?= <tobias.boehm@hetzner-cloud.de>
References: <20250429155205.1444438-1-maciej.fijalkowski@intel.com>
Content-Language: en-US
From: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
Autocrypt: addr=marcus.wichelmann@hetzner-cloud.de; keydata=
 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
 wySmewx3h/yfMh0aFxHhvLPxrO2IEQ==
In-Reply-To: <20250429155205.1444438-1-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Authenticated-Sender: marcus.wichelmann@hetzner-cloud.de
X-Virus-Scanned: Clear (ClamAV 1.0.7/27646/Fri May 23 10:35:45 2025)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=hetzner-cloud.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ixgbe: fix ndo_xdp_xmit()
 workloads
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

Am 29.04.25 um 17:52 schrieb Maciej Fijalkowski:
> Currently ixgbe driver checks periodically in its watchdog subtask if
> there is anything to be transmitted (consdidering both Tx and XDP rings=
)
> under state of carrier not being 'ok'. Such event is interpreted as Tx
> hang and therefore results in interface reset.
>=20
> This is currently problematic for ndo_xdp_xmit() as it is allowed to
> produce descriptors when interface is going through reset or its carrie=
r
> is turned off.
>=20
> Furthermore, XDP rings should not really be objects of Tx hang
> detection. This mechanism is rather a matter of ndo_tx_timeout() being
> called from dev_watchdog against Tx rings exposed to networking stack.
>=20
> Taking into account issues described above, let us have a two fold fix =
-
> do not respect XDP rings in local ixgbe watchdog and do not produce Tx
> descriptors in ndo_xdp_xmit callback when there is some problem with
> carrier currently. For now, keep the Tx hang checks in clean Tx irq
> routine, but adjust it to not execute it for XDP rings.
>=20
> Cc: Tobias B=C3=B6hm <tobias.boehm@hetzner-cloud.de>
> Reported-by: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
> Closes: https://lore.kernel.org/netdev/eca1880f-253a-4955-afe6-732d7c69=
26ee@hetzner-cloud.de/
> Fixes: 6453073987ba ("ixgbe: add initial support for xdp redirect")
> Fixes: 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 34 ++++++-------------=

>  1 file changed, 11 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/ne=
t/ethernet/intel/ixgbe/ixgbe_main.c
> index 467f81239e12..21bfea8aeb67 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -966,10 +966,6 @@ static void ixgbe_update_xoff_rx_lfc(struct ixgbe_=
adapter *adapter)
>  	for (i =3D 0; i < adapter->num_tx_queues; i++)
>  		clear_bit(__IXGBE_HANG_CHECK_ARMED,
>  			  &adapter->tx_ring[i]->state);
> -
> -	for (i =3D 0; i < adapter->num_xdp_queues; i++)
> -		clear_bit(__IXGBE_HANG_CHECK_ARMED,
> -			  &adapter->xdp_ring[i]->state);
>  }
> =20
>  static void ixgbe_update_xoff_received(struct ixgbe_adapter *adapter)
> @@ -1263,10 +1259,13 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_v=
ector *q_vector,
>  				   total_bytes);
>  	adapter->tx_ipsec +=3D total_ipsec;
> =20
> +	if (ring_is_xdp(tx_ring))
> +		return !!budget;
> +
>  	if (check_for_tx_hang(tx_ring) && ixgbe_check_tx_hang(tx_ring)) {
>  		/* schedule immediate reset if we believe we hung */
>  		struct ixgbe_hw *hw =3D &adapter->hw;
> -		e_err(drv, "Detected Tx Unit Hang %s\n"
> +		e_err(drv, "Detected Tx Unit Hang\n"
>  			"  Tx Queue             <%d>\n"
>  			"  TDH, TDT             <%x>, <%x>\n"
>  			"  next_to_use          <%x>\n"
> @@ -1274,16 +1273,14 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_v=
ector *q_vector,
>  			"tx_buffer_info[next_to_clean]\n"
>  			"  time_stamp           <%lx>\n"
>  			"  jiffies              <%lx>\n",
> -			ring_is_xdp(tx_ring) ? "(XDP)" : "",
>  			tx_ring->queue_index,
>  			IXGBE_READ_REG(hw, IXGBE_TDH(tx_ring->reg_idx)),
>  			IXGBE_READ_REG(hw, IXGBE_TDT(tx_ring->reg_idx)),
>  			tx_ring->next_to_use, i,
>  			tx_ring->tx_buffer_info[i].time_stamp, jiffies);
> =20
> -		if (!ring_is_xdp(tx_ring))
> -			netif_stop_subqueue(tx_ring->netdev,
> -					    tx_ring->queue_index);
> +		netif_stop_subqueue(tx_ring->netdev,
> +				    tx_ring->queue_index);
> =20
>  		e_info(probe,
>  		       "tx hang %d detected on queue %d, resetting adapter\n",
> @@ -1296,9 +1293,6 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vec=
tor *q_vector,
>  		return true;
>  	}
> =20
> -	if (ring_is_xdp(tx_ring))
> -		return !!budget;
> -
>  #define TX_WAKE_THRESHOLD (DESC_NEEDED * 2)
>  	txq =3D netdev_get_tx_queue(tx_ring->netdev, tx_ring->queue_index);
>  	if (!__netif_txq_completed_wake(txq, total_packets, total_bytes,
> @@ -7791,12 +7785,9 @@ static void ixgbe_check_hang_subtask(struct ixgb=
e_adapter *adapter)
>  		return;
> =20
>  	/* Force detection of hung controller */
> -	if (netif_carrier_ok(adapter->netdev)) {
> +	if (netif_carrier_ok(adapter->netdev))
>  		for (i =3D 0; i < adapter->num_tx_queues; i++)
>  			set_check_for_tx_hang(adapter->tx_ring[i]);
> -		for (i =3D 0; i < adapter->num_xdp_queues; i++)
> -			set_check_for_tx_hang(adapter->xdp_ring[i]);
> -	}
> =20
>  	if (!(adapter->flags & IXGBE_FLAG_MSIX_ENABLED)) {
>  		/*
> @@ -8011,13 +8002,6 @@ static bool ixgbe_ring_tx_pending(struct ixgbe_a=
dapter *adapter)
>  			return true;
>  	}
> =20
> -	for (i =3D 0; i < adapter->num_xdp_queues; i++) {
> -		struct ixgbe_ring *ring =3D adapter->xdp_ring[i];
> -
> -		if (ring->next_to_use !=3D ring->next_to_clean)
> -			return true;
> -	}
> -
>  	return false;
>  }
> =20
> @@ -10742,6 +10726,10 @@ static int ixgbe_xdp_xmit(struct net_device *d=
ev, int n,
>  	if (unlikely(test_bit(__IXGBE_DOWN, &adapter->state)))
>  		return -ENETDOWN;
> =20
> +	if (!netif_carrier_ok(adapter->netdev) ||
> +	    !netif_running(adapter->netdev))
> +		return -ENETDOWN;
> +
>  	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
>  		return -EINVAL;
> =20

Hi,

thank you very much for this patch.

We have done more tests now in a production-like environment and I can co=
nfirm again
that this solves our issue and no more interface resets occur.

Tested-by: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>

Kind regards,
Marcus
