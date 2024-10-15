Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DDC99E0F2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 10:24:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2FEBE409C7;
	Tue, 15 Oct 2024 08:24:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E92FCha2UZ_T; Tue, 15 Oct 2024 08:24:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62DB4409D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728980682;
	bh=BOSY1EHrJeXNmzx89nDXmqgGe4JMv5qmBdHfV0YO9ps=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YG7lH715aoDhaKEftLyu7gr8V/oFXSHs0hc2J8kO+a1P5KcEoGgB4d9pLAUXSu4Qo
	 CyG7qE4DtcIMEs14eGneaGr3YKOnPjwHKGu5GgwUq52TbABWFZQTwCvuWj+optYF4E
	 GVFpc7otzr3dLWnbCKxhRKcrOvL+R1KviODu8bZVizOdQ5zIwZN5uBlyF09NtjFPRT
	 wI+jLLz6GRPpyz2LVRw+0W9ZD2FGCpWfQYL5bPPf6rxEyFtnB9OL7TiIc4J4kaZnyR
	 R/ozdtEjKnnl2dIP7qMOtf1iiTvIP2M2SsL/jv67JO6NZaNYSnAKtdx4yRp2qNbB/h
	 IHpi+fwdNhedA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62DB4409D6;
	Tue, 15 Oct 2024 08:24:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC6731BF41C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 08:24:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5834409C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 08:24:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nahV9XSknXsQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2024 08:24:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5645A40181
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5645A40181
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5645A40181
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 08:24:37 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6AB4461E5FE05;
 Tue, 15 Oct 2024 10:24:20 +0200 (CEST)
Message-ID: <011cfa1f-d7df-4d38-ba5d-7820176ebf8b@molgen.mpg.de>
Date: Tue, 15 Oct 2024 10:24:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20241015070450.1572415-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20241015070450.1572415-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix "Error
 I40E_AQ_RC_ENOSPC adding RX filters on VF" issue
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
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Aleksandr,


Thank you for your patch. For the summary I’d make it more about the 
action of the patch like “Add intermediate filter to …”.


Am 15.10.24 um 09:04 schrieb Aleksandr Loktionov:
> Fix a race condition in the i40e driver that leads to MAC/VLAN filters
> becoming corrupted and leaking. Address the issue that occurs under
> heavy load when multiple threads are concurrently modifying MAC/VLAN
> filters by setting mac and port VLAN.
> 
> 1. Thread T0 allocates a filter in i40e_add_filter() within
>          i40e_ndo_set_vf_port_vlan().
> 2. Thread T1 concurrently frees the filter in __i40e_del_filter() within
>          i40e_ndo_set_vf_mac().
> 3. Subsequently, i40e_service_task() calls i40e_sync_vsi_filters(), which
>          refers to the already freed filter memory, causing corruption.
> 
> Reproduction steps:
> 1. Spawn multiple VFs.
> 2. Apply a concurrent heavy load by running parallel operations to change
>          MAC addresses on the VFs and change port VLANs on the host.

It’d be great if you shared your commands.

> 3. Observe errors in dmesg:
> "Error I40E_AQ_RC_ENOSPC adding RX filters on VF XX,
>   please set promiscuous on manually for VF XX".

I’d indent it by eight spaces and put it in one line.

> The fix involves implementing a new intermediate filter state,
> I40E_FILTER_NEW_SYNC, for the time when a filter is on a tmp_add_list.
> These filters cannot be deleted from the hash list directly but
> must be removed using the full process.

Please excuse my ignorance. Where is that done in the diff? For me it 
looks like you only replace `I40E_FILTER_NEW` by `I40E_FILTER_NEW_SYNC` 
in certain places, but no new condition for this case.

> Fixes: 278e7d0b9d68 ("i40e: store MAC/VLAN filters in a hash with the MAC Address as key")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e.h         |  2 ++
>   drivers/net/ethernet/intel/i40e/i40e_debugfs.c |  2 ++
>   drivers/net/ethernet/intel/i40e/i40e_main.c    | 12 ++++++++++--
>   3 files changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index 2089a0e..a1842dd 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -755,6 +755,8 @@ enum i40e_filter_state {
>   	I40E_FILTER_ACTIVE,		/* Added to switch by FW */
>   	I40E_FILTER_FAILED,		/* Rejected by FW */
>   	I40E_FILTER_REMOVE,		/* To be removed */
> +	/* RESERVED */

Why the reserved comment? Please elaborate in the commit message.

> +	I40E_FILTER_NEW_SYNC = 6,	/* New, not sent, in sync task */
>   /* There is no 'removed' state; the filter struct is freed */
>   };
>   struct i40e_mac_filter {
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index abf624d..1c439b1 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -89,6 +89,8 @@ static char *i40e_filter_state_string[] = {
>   	"ACTIVE",
>   	"FAILED",
>   	"REMOVE",
> +	"<RESERVED>",
> +	"NEW_SYNC",
>   };
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 25295ae..55fb362 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -1255,6 +1255,7 @@ int i40e_count_filters(struct i40e_vsi *vsi)
>   
>   	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
>   		if (f->state == I40E_FILTER_NEW ||
> +		    f->state == I40E_FILTER_NEW_SYNC ||
>   		    f->state == I40E_FILTER_ACTIVE)
>   			++cnt;
>   	}
> @@ -1441,6 +1442,8 @@ static int i40e_correct_mac_vlan_filters(struct i40e_vsi *vsi,
>   
>   			new->f = add_head;
>   			new->state = add_head->state;
> +			if (add_head->state == I40E_FILTER_NEW)
> +				add_head->state = I40E_FILTER_NEW_SYNC;
>   
>   			/* Add the new filter to the tmp list */
>   			hlist_add_head(&new->hlist, tmp_add_list);
> @@ -1550,6 +1553,8 @@ static int i40e_correct_vf_mac_vlan_filters(struct i40e_vsi *vsi,
>   				return -ENOMEM;
>   			new_mac->f = add_head;
>   			new_mac->state = add_head->state;
> +			if (add_head->state == I40E_FILTER_NEW)
> +				add_head->state = I40E_FILTER_NEW_SYNC;
>   
>   			/* Add the new filter to the tmp list */
>   			hlist_add_head(&new_mac->hlist, tmp_add_list);
> @@ -2437,7 +2442,8 @@ static int
>   i40e_aqc_broadcast_filter(struct i40e_vsi *vsi, const char *vsi_name,
>   			  struct i40e_mac_filter *f)
>   {
> -	bool enable = f->state == I40E_FILTER_NEW;
> +	bool enable = f->state == I40E_FILTER_NEW ||
> +		      f->state == I40E_FILTER_NEW_SYNC;
>   	struct i40e_hw *hw = &vsi->back->hw;
>   	int aq_ret;
>   
> @@ -2611,6 +2617,7 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>   
>   				/* Add it to the hash list */
>   				hlist_add_head(&new->hlist, &tmp_add_list);
> +				f->state = I40E_FILTER_NEW_SYNC;
>   			}
>   
>   			/* Count the number of active (current and new) VLAN
> @@ -2762,7 +2769,8 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>   		spin_lock_bh(&vsi->mac_filter_hash_lock);
>   		hlist_for_each_entry_safe(new, h, &tmp_add_list, hlist) {
>   			/* Only update the state if we're still NEW */
> -			if (new->f->state == I40E_FILTER_NEW)
> +			if (new->f->state == I40E_FILTER_NEW ||
> +			    new->f->state == I40E_FILTER_NEW_SYNC)
>   				new->f->state = new->state;
>   			hlist_del(&new->hlist);
>   			netdev_hw_addr_refcnt(new->f, vsi->netdev, -1);


Kind nregards,

Paul
