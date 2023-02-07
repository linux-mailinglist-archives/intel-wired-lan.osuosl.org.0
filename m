Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F317768CF8C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 07:39:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B07E60E11;
	Tue,  7 Feb 2023 06:39:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B07E60E11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675751964;
	bh=Jth2y9IVhuRS2yW6hEhjpIaTRzLAtda5uKRlNSkMQJQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CKy6vQ7oSaZZ8qV5614qMpaoDTN9XFwJpOJJaSBK4x+E7DQ55A1rBI+9n3g1BpT1A
	 GjrxRO4pyKn5Kpne5yJSsRuSO6K7NNDhR0MXNZwJ1Bo3YtnVRWs+7R5nO22JJdh9dc
	 qCv3XdLxtUz6GiN6V3fLJtTKG0Eg7WwEJAEpMgCbZxBaiccxOmCC2Z0SzEtc3/ymAn
	 rIcDk/f8IbKURFf1ukJnGUqS1Wkj0y3H1TJxXbvbn6c1THOFVF7YSQ8rbZ0xPL7LvV
	 0ADY30NCb7Bvek0xV1vZb93v9Ev+45HuPeFqX52OlIUS5PaQ3ISHZctcUW7yhNjpc+
	 WZ5PiWC+nC49w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xTPDPXafl8SC; Tue,  7 Feb 2023 06:39:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6AF360DC2;
	Tue,  7 Feb 2023 06:39:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6AF360DC2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A8C21BF36B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 06:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1261081C0A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 06:39:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1261081C0A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tmOxSsNqjllR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 06:39:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BF3081BCB
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BF3081BCB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 06:39:15 +0000 (UTC)
Received: from [192.168.0.233] (ip5f5aeaed.dynamic.kabel-deutschland.de
 [95.90.234.237])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id F0F6761CC457B;
 Tue,  7 Feb 2023 07:39:12 +0100 (CET)
Message-ID: <9a4bfdd2-14aa-33ed-3386-e4a80f03db7d@molgen.mpg.de>
Date: Tue, 7 Feb 2023 07:39:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast
 packets in promisc mode
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Jesse,


Thank you for your patch.

Am 07.02.23 um 00:54 schrieb Jesse Brandeburg:
> There was a problem reported to us where the addition of a VF with an IPv6
> address ending with a particular sequence would cause the parent device on
> the PF to no longer be able to respond to neighbor discovery packets.
> 
> In this case, we had an ovs-bridge device living on top of a VLAN, which
> was on top of a PF, and it would not be able to talk anymore (the neighbor
> entry would expire and couldn't be restored).
> 
> The root cause of the issue is that if the PF is asked to be in IFF_PROMISC
> mode (promiscuous mode) and it had an ipv6 address that needed the
> 33:33:ff:00:00:04 multicast address to work, then when the VF was added
> with the need for the same multicast address, the VF would steal all the
> traffic destined for that address.
> 
> The ice driver didn't auto-subscribe a request of IFF_PROMISC to the
> "multicast replication from other port's traffic" meaning that it won't get
> for instance, packets with an exact destination in the VF, as above.
> 
> The VF's IPv6 address, which adds a "perfect filter" for 33:33:ff:00:00:04,
> results in no packets for that multicast address making it to the PF (which
> is in promisc but NOT "multicast replication").
> 
> The fix is to enable "multicast promiscuous" whenever the driver is asked
> to enable IFF_PROMISC, and make sure to disable it when appropriate.

Do you have the commands to easily reproduce this?

Maybe also mention the new debug messages?

> Fixes: e94d44786693 ("ice: Implement filter sync, NDO operations and bump version")
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: added fixes
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 26 +++++++++++++++++++++++
>   1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 5f86e4111fa9..3a5f9c15b69c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -275,6 +275,8 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
>   	if (status && status != -EEXIST)
>   		return status;
>   
> +	netdev_dbg(vsi->netdev, "set promisc filter bits for VSI %i: 0x%x\n",
> +		   vsi->vsi_num, promisc_m);
>   	return 0;
>   }
>   
> @@ -300,6 +302,8 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
>   						    promisc_m, 0);
>   	}
>   
> +	netdev_dbg(vsi->netdev, "clear promisc filter bits for VSI %i: 0x%x\n",
> +		   vsi->vsi_num, promisc_m);
>   	return status;
>   }
>   
> @@ -414,6 +418,16 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>   				}
>   				err = 0;
>   				vlan_ops->dis_rx_filtering(vsi);
> +
> +				/* promiscuous mode implies allmulticast so
> +				 * that VSIs that are in promiscuous mode are
> +				 * subscribed to multicast packets coming to
> +				 * the port
> +				 */
> +				err = ice_set_promisc(vsi,
> +						      ICE_MCAST_PROMISC_BITS);
> +				if (err)
> +					goto out_promisc;
>   			}
>   		} else {
>   			/* Clear Rx filter to remove traffic from wire */
> @@ -430,6 +444,18 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>   				    NETIF_F_HW_VLAN_CTAG_FILTER)
>   					vlan_ops->ena_rx_filtering(vsi);
>   			}
> +
> +			/* disable allmulti here, but only if allmulti is not
> +			 * still enabled for the netdev

Above you write *allmulticast*. Should you use it here for consistency?

> +			 */
> +			if (!(vsi->current_netdev_flags & IFF_ALLMULTI)) {
> +				err = ice_clear_promisc(vsi,
> +							ICE_MCAST_PROMISC_BITS);
> +				if (err) {
> +					netdev_err(netdev, "Error %d clearing multicast promiscuous on VSI %i\n",
> +						   err, vsi->vsi_num);
> +				}
> +			}
>   		}
>   	}
>   	goto exit;


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
