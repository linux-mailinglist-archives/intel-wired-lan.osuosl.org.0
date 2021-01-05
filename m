Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 398862EA641
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 09:02:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDA0C85D44;
	Tue,  5 Jan 2021 08:02:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lFR8M-lbQYrc; Tue,  5 Jan 2021 08:02:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0BC3E85C9D;
	Tue,  5 Jan 2021 08:02:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC6EB1BF387
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 08:02:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B574120372
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 08:02:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n3Q30kMlbqOD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 08:02:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by silver.osuosl.org (Postfix) with ESMTPS id EF4C020366
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 08:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1609833765;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ABx/OSg3lJ1F5Z1ixgcuWVjdb94+MzZAeOWPpSiTPxM=;
 b=FbrevepUWXevwd3Qe+E18HBc+IdmGnhlVQ8i06VXya0nVXvuB/q0IyqN/9gl9rPtS8DZRq
 7cjv/jzr0UeQ+cJCzzcj5AS9S5paBrnd9yGhx9zsNQOZT1e3gUt9FMSkCAYDhuwgRoMA3i
 lXfjHu8UrmJ1CQVq/qzWcwylfiBQqiM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-484-n9vuYZzPPAqnpQCrUCcs5w-1; Tue, 05 Jan 2021 03:02:43 -0500
X-MC-Unique: n9vuYZzPPAqnpQCrUCcs5w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B33E107ACE8;
 Tue,  5 Jan 2021 08:02:42 +0000 (UTC)
Received: from p50.fritz.box (ovpn-113-23.ams2.redhat.com [10.36.113.23])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F8B5608BA;
 Tue,  5 Jan 2021 08:02:40 +0000 (UTC)
Date: Tue, 5 Jan 2021 09:02:39 +0100
From: Stefan Assmann <sassmann@redhat.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Message-ID: <20210105080239.5d3tvbjymk32iymp@p50.fritz.box>
References: <20201230144255.2687-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
In-Reply-To: <20201230144255.2687-1-mateusz.palczewski@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sassmann@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix setting PF MAC
 filters when changing MAC address
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2020-12-30 14:42, Mateusz Palczewski wrote:
> When changing PFs MAC address the old MAC filter was not removed
> due to incorrect order of copying MAC from netdev and deleting
> the old MAC filter.
> Changed how the old MAC filter is removed to remove the proper
> filter.
> 
> Fixes: 158daed16efb("i40e: fix mac filter delete when setting mac address")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 630258e..de5e0fb 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -1561,6 +1561,7 @@ int i40e_del_mac_filter(struct i40e_vsi *vsi, const u8 *macaddr)
>  static int i40e_set_mac(struct net_device *netdev, void *p)
>  {
>  	struct i40e_netdev_priv *np = netdev_priv(netdev);
> +	struct sockaddr addr_tmp = {0};
>  	struct i40e_vsi *vsi = np->vsi;
>  	struct i40e_pf *pf = vsi->back;
>  	struct i40e_hw *hw = &pf->hw;
> @@ -1591,8 +1592,11 @@ static int i40e_set_mac(struct net_device *netdev, void *p)
>  	 * - Copy new address
>  	 * - Add new address to MAC filter
>  	 */
> +
> +	ether_addr_copy(addr_tmp.sa_data, netdev->dev_addr);
> +
>  	spin_lock_bh(&vsi->mac_filter_hash_lock);
> -	i40e_del_mac_filter(vsi, netdev->dev_addr);
> +	i40e_del_mac_filter(vsi, addr_tmp.sa_data);
>  	ether_addr_copy(netdev->dev_addr, addr->sa_data);
>  	i40e_add_mac_filter(vsi, netdev->dev_addr);
>  	spin_unlock_bh(&vsi->mac_filter_hash_lock);

Could you please point out what exactly goes wrong in the original code
and how this patch does correct that? I fail to understand either.

  Stefan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
