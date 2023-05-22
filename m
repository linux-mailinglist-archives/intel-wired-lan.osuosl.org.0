Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BF970B9B6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 12:14:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BD2140C5A;
	Mon, 22 May 2023 10:14:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BD2140C5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684750455;
	bh=fS0/R3CaYQlev+CPCL7NLrDwohro6Thiv8ia7Fwf38Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u7T7Lo0CGCd+LfoDEklpl/mwcUJ4lDOyLHcAXpXornfXNkH4d2rvrPHCc1Qu3RsVo
	 d+prduIox4bmcIdF5RrHCioZytUkZsVssTjFAhWWhXhhWTMz4BxGG1ErFlw7u05SZl
	 gn1kVPIdMui3SrtipS5Fr2D9u18U5s2PspOglL9k4i1wr+FggxuAB39ar67K36e0Jf
	 z7dKag0mLhcNwHZkR+DogGlt11qdcjaGwaXPyp9ogviV+uw29Y4rCN4auIIHLX+nMr
	 YM0XLyzxl/4w0Im7tELy5Si5vnnpIEtHsCEZIQ1Dl3WDtltgI8x5NXH2B0bu8TWGFo
	 j0zFZcU2L7qnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZ85gjSXBYOx; Mon, 22 May 2023 10:14:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC40D402CE;
	Mon, 22 May 2023 10:14:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC40D402CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E7241BF39D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 10:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64A6041688
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 10:14:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64A6041688
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UINW94lGeL2g for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 10:14:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0895041687
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0895041687
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 10:14:05 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9B4A761E4052B;
 Mon, 22 May 2023 12:13:39 +0200 (CEST)
Message-ID: <c883bf80-3110-79a4-617a-69566ba360c6@molgen.mpg.de>
Date: Mon, 22 May 2023 12:13:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20230522090542.45679-1-wojciech.drewek@intel.com>
 <20230522090542.45679-10-wojciech.drewek@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230522090542.45679-10-wojciech.drewek@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 09/10] ice: implement
 static version of ageing
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
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Wojciech, dear Michal,


Am 22.05.23 um 11:05 schrieb Wojciech Drewek:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Remove fdb entries always when ageing time expired.

Why is that a good thing to do?

> Allow user to set ageing time using port object attribute.

Maybe add the comment how to do it too?


Kind regards,

Paul


> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: use msecs_to_jiffies upon definition of
>      ICE_ESW_BRIDGE_UPDATE_INTERVAL
> ---
>   .../net/ethernet/intel/ice/ice_eswitch_br.c   | 48 +++++++++++++++++++
>   .../net/ethernet/intel/ice/ice_eswitch_br.h   | 10 ++++
>   2 files changed, 58 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> index 74857da6be9f..af3465b9699c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> @@ -8,6 +8,8 @@
>   #include "ice_vlan.h"
>   #include "ice_vf_vsi_vlan_ops.h"
>   
> +#define ICE_ESW_BRIDGE_UPDATE_INTERVAL msecs_to_jiffies(1000)
> +
>   static const struct rhashtable_params ice_fdb_ht_params = {
>   	.key_offset = offsetof(struct ice_esw_br_fdb_entry, data),
>   	.key_len = sizeof(struct ice_esw_br_fdb_data),
> @@ -443,6 +445,7 @@ ice_eswitch_br_fdb_entry_create(struct net_device *netdev,
>   	fdb_entry->br_port = br_port;
>   	fdb_entry->flow = flow;
>   	fdb_entry->dev = netdev;
> +	fdb_entry->last_use = jiffies;
>   	event = SWITCHDEV_FDB_ADD_TO_BRIDGE;
>   
>   	if (added_by_user) {
> @@ -836,6 +839,10 @@ ice_eswitch_br_port_obj_attr_set(struct net_device *netdev, const void *ctx,
>   		ice_eswitch_br_vlan_filtering_set(br_port->bridge,
>   						  attr->u.vlan_filtering);
>   		return 0;
> +	case SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME:
> +		br_port->bridge->ageing_time =
> +			clock_t_to_jiffies(attr->u.ageing_time);
> +		return 0;
>   	default:
>   		return -EOPNOTSUPP;
>   	}
> @@ -1007,6 +1014,7 @@ ice_eswitch_br_init(struct ice_esw_br_offloads *br_offloads, int ifindex)
>   	INIT_LIST_HEAD(&bridge->fdb_list);
>   	bridge->br_offloads = br_offloads;
>   	bridge->ifindex = ifindex;
> +	bridge->ageing_time = clock_t_to_jiffies(BR_DEFAULT_AGEING_TIME);
>   	xa_init(&bridge->ports);
>   	br_offloads->bridge = bridge;
>   
> @@ -1210,6 +1218,7 @@ ice_eswitch_br_offloads_deinit(struct ice_pf *pf)
>   	if (!br_offloads)
>   		return;
>   
> +	cancel_delayed_work_sync(&br_offloads->update_work);
>   	unregister_netdevice_notifier(&br_offloads->netdev_nb);
>   	unregister_switchdev_blocking_notifier(&br_offloads->switchdev_blk);
>   	unregister_switchdev_notifier(&br_offloads->switchdev_nb);
> @@ -1224,6 +1233,40 @@ ice_eswitch_br_offloads_deinit(struct ice_pf *pf)
>   	rtnl_unlock();
>   }
>   
> +static void ice_eswitch_br_update(struct ice_esw_br_offloads *br_offloads)
> +{
> +	struct ice_esw_br *bridge = br_offloads->bridge;
> +	struct ice_esw_br_fdb_entry *entry, *tmp;
> +
> +	if (!bridge)
> +		return;
> +
> +	rtnl_lock();
> +	list_for_each_entry_safe(entry, tmp, &bridge->fdb_list, list) {
> +		if (entry->flags & ICE_ESWITCH_BR_FDB_ADDED_BY_USER)
> +			continue;
> +
> +		if (time_is_after_eq_jiffies(entry->last_use +
> +					     bridge->ageing_time))
> +			continue;
> +
> +		ice_eswitch_br_fdb_entry_notify_and_cleanup(bridge, entry);
> +	}
> +	rtnl_unlock();
> +}
> +
> +static void ice_eswitch_br_update_work(struct work_struct *work)
> +{
> +	struct ice_esw_br_offloads *br_offloads;
> +
> +	br_offloads = ice_work_to_br_offloads(work);
> +
> +	ice_eswitch_br_update(br_offloads);
> +
> +	queue_delayed_work(br_offloads->wq, &br_offloads->update_work,
> +			   ICE_ESW_BRIDGE_UPDATE_INTERVAL);
> +}
> +
>   int
>   ice_eswitch_br_offloads_init(struct ice_pf *pf)
>   {
> @@ -1272,6 +1315,11 @@ ice_eswitch_br_offloads_init(struct ice_pf *pf)
>   		goto err_reg_netdev_nb;
>   	}
>   
> +	INIT_DELAYED_WORK(&br_offloads->update_work,
> +			  ice_eswitch_br_update_work);
> +	queue_delayed_work(br_offloads->wq, &br_offloads->update_work,
> +			   ICE_ESW_BRIDGE_UPDATE_INTERVAL);
> +
>   	return 0;
>   
>   err_reg_netdev_nb:
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
> index 72316ba8ff4d..93a8c23aa089 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
> @@ -5,6 +5,7 @@
>   #define _ICE_ESWITCH_BR_H_
>   
>   #include <linux/rhashtable.h>
> +#include <linux/workqueue.h>
>   
>   struct ice_esw_br_fdb_data {
>   	unsigned char addr[ETH_ALEN];
> @@ -30,6 +31,8 @@ struct ice_esw_br_fdb_entry {
>   	struct net_device *dev;
>   	struct ice_esw_br_port *br_port;
>   	struct ice_esw_br_flow *flow;
> +
> +	unsigned long last_use;
>   };
>   
>   enum ice_esw_br_port_type {
> @@ -59,6 +62,7 @@ struct ice_esw_br {
>   
>   	int ifindex;
>   	u32 flags;
> +	unsigned long ageing_time;
>   };
>   
>   struct ice_esw_br_offloads {
> @@ -69,6 +73,7 @@ struct ice_esw_br_offloads {
>   	struct notifier_block switchdev_nb;
>   
>   	struct workqueue_struct *wq;
> +	struct delayed_work update_work;
>   };
>   
>   struct ice_esw_br_fdb_work {
> @@ -89,6 +94,11 @@ struct ice_esw_br_vlan {
>   		     struct ice_esw_br_offloads, \
>   		     nb_name)
>   
> +#define ice_work_to_br_offloads(w) \
> +	container_of(w, \
> +		     struct ice_esw_br_offloads, \
> +		     update_work.work)
> +
>   #define ice_work_to_fdb_work(w) \
>   	container_of(w, \
>   		     struct ice_esw_br_fdb_work, \
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
