Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3881B475709
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Dec 2021 11:57:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E57260C2B;
	Wed, 15 Dec 2021 10:57:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pR-f4FH6Ka-K; Wed, 15 Dec 2021 10:57:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FA7F60B09;
	Wed, 15 Dec 2021 10:57:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 387ED1BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 10:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 262F660B09
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 10:57:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xn3vXzMp93at for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Dec 2021 10:57:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 542A560AFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 10:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639565867; x=1671101867;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vNdMJjQKjI/zMUgFypbeBynALd1nDuCPj3DLg0AhVTk=;
 b=Fig7tI4/478SnyPi/Va8REk5Jp4+ULj2zpCpiM/5QyLDMtPCQK5q8yQl
 wY4SUrjA4oMqgfRbQ42spg9Nyxy1kullwkc91JojDnj+JAyq2vmMLjTbQ
 AbTHO6Gs3P3rTMgOVibEYH6VVE6lbY8Dk8BO6QgGCwPbLSwt1Pq3MpXEm
 JHDQUSPA4HOM1FdLHqoeuhEcpmRePR4hZL34uIZzLDqgwjB4sTeZkd9iz
 pk0i4vrHKZSyyYRVfvvBG2wcvMObbqFj7opShclwGnFmtOvZsQ1inTVYA
 51rpge4t+No5zesNrk/HdNNfR0N+YFBRy0iDTFDURwgw/ZfJ2z9osKQHe g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="325481075"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="325481075"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 02:57:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="682448438"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga005.jf.intel.com with ESMTP; 15 Dec 2021 02:57:45 -0800
Date: Wed, 15 Dec 2021 11:57:44 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <YbnKKBspT3YqMgZP@boxer>
References: <20211215104554.31524-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211215104554.31524-1-jedrzej.jagielski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix incorrect netdev's
 real number of RX/TX queues
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
Cc: intel-wired-lan@lists.osuosl.org,
 Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 15, 2021 at 10:45:54AM +0000, Jedrzej Jagielski wrote:
> There was a wrong queues representation in sysfs during
> driver's reinitialization in case of online cpus number is
> less than combined queues. It was caused by stopped
> NetworkManager, which is responsible for calling vsi_open
> function during driver's initialization.
> In specific situation (ex. 12 cpus online) there were 16 queues
> in /sys/class/net/<iface>/queues. In case of modifying queues with
> value higher, than number of online cpus, then it caused write
> errors and other errors.
> Add updating of sysfs's queues representation during driver
> initialization.

Description is not very clear to me - how did you get the value of 16
queues? Do you have 16 cpu system and then modified the count of cpus
being online?

> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2:Fix "CHECK: Lines should not end with a '('" warning
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 4ff1c9b9217b..1b6f03cc41da 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -14074,6 +14074,22 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  	return NULL;
>  }
>  
> +/**
> + * i40e_netif_set_realnum_tx_rx_queues - Update number of tx/rx queues
> + * @vsi: vsi structure
> + *
> + * This updates netdev's number of tx/rx queues
> + *
> + * Returns status of setting tx/rx queues
> + **/
> +static int i40e_netif_set_realnum_tx_rx_queues(struct i40e_vsi *vsi)
> +{
> +	netif_set_real_num_rx_queues(vsi->netdev, vsi->num_queue_pairs);

Why return value of above is not checked?

Also would be good to convert the i40e_vsi_open() to make use of this
function you're introducing, I guess.

> +
> +	return netif_set_real_num_tx_queues(vsi->netdev,
> +					    vsi->num_queue_pairs);
> +}
> +
>  /**
>   * i40e_vsi_setup - Set up a VSI by a given type
>   * @pf: board private structure
> @@ -14203,6 +14219,9 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
>  	case I40E_VSI_MAIN:
>  	case I40E_VSI_VMDQ2:
>  		ret = i40e_config_netdev(vsi);
> +		if (ret)
> +			goto err_netdev;
> +		ret = i40e_netif_set_realnum_tx_rx_queues(vsi);
>  		if (ret)
>  			goto err_netdev;
>  		ret = register_netdev(vsi->netdev);
> -- 
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
