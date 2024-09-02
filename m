Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B485968553
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Sep 2024 12:54:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26C486075B;
	Mon,  2 Sep 2024 10:54:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EndkkG3ZA89K; Mon,  2 Sep 2024 10:54:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C849E607D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725274468;
	bh=JVtktW2gD/YgtYvfOs5beDXR/pUTOi0OnshwF7wVGoM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p5LW9DWhennBOGtKxWIIU8XtMjLw9/80iI6C2O/kAx4YZYX/VK6d8dar8udrOIdfT
	 HlxgYD3WWELFuTQ4BgsT47siol4aN8EKDMXqk1rmXK5QaMnBY8b6ysydMSpK5KB9zV
	 FaAaJXnZduJP1v8vIooFnJfg/zho4ARGga9q6W3SAU6jIPVJPCG8fVqxQ2Lpu4Kewo
	 g9LBwk/cDCyGBv1sm3bRkoyvVFNz8v+md6I95G/TqfIS/ONzSXlxNQff1CrZaNsixE
	 qhyK/dVEGFqgyOGx3kGSmDvzBxChirDzexXqDNzd4Xr+WpOv7iO1bl7twu1J81Z9l7
	 ED6vaToQ3MPjw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C849E607D7;
	Mon,  2 Sep 2024 10:54:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6B481BF279
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 10:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 934B9605E6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 10:54:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Ry04cChfg6l for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Sep 2024 10:54:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6C02A605C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C02A605C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6C02A605C6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 10:54:25 +0000 (UTC)
X-CSE-ConnectionGUID: 0FDjjn4yQbOSnqJabdN0Ow==
X-CSE-MsgGUID: odhPCfdsSqOP+NKaxroN6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23804302"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23804302"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 03:54:25 -0700
X-CSE-ConnectionGUID: 8Do9u97wSAe6K19+Wlzz9A==
X-CSE-MsgGUID: Ylj5ZuI6RGeUkzBghnZv2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64931669"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 03:54:22 -0700
Date: Mon, 2 Sep 2024 12:52:21 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <ZtWY5ZJkAc3OGth0@mev-dev.igk.intel.com>
References: <20240902100652.269398-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240902100652.269398-1-mschmidt@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725274466; x=1756810466;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1ox6/8Pljv8b73NeRXJoFS9ibX5dEGrklAxOVjdb0xU=;
 b=Pbqh7McqCW85XCGdWNfDGwhPN0piy9sr43klN6I80Eftis899xmSqptC
 TNsBm6DzkEQyTnmanUSV9LV2GxsrtRoUD2AEwkN8oOxcd67K5D+DNJ4bi
 YSQuXSQ1dZwcBKTA0pxAJWmJnY6DTxd0RMLo4NnhxmEVL6H1fHzate/F3
 8UKRMeiT+F2TPITEAh1SkKzSsVmkZCNFApSYlsxoAczN2z4kXGYva1vq8
 4ruqLrHWxweCSa6zkAN6LJHhFtkz5LAcjeisDqV6zG+ywSgXUILHHPHwZ
 2u1+ljSI1fiOA5C0UrPZ79ic3anLD41qNYPak2TapWOkkltYTR5UUItYH
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Pbqh7Mcq
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix VSI lists confusion
 when adding VLANs
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Marcin Szycik <marcin.szycik@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Timothy Miskell <timothy.miskell@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Daniel Machon <daniel.machon@microchip.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 02, 2024 at 12:06:52PM +0200, Michal Schmidt wrote:
> The description of function ice_find_vsi_list_entry says:
>   Search VSI list map with VSI count 1
> 
> However, since the blamed commit (see Fixes below), the function no
> longer checks vsi_count. This causes a problem in ice_add_vlan_internal,
> where the decision to share VSI lists between filter rules relies on the
> vsi_count of the found existing VSI list being 1.
> 
> The reproducing steps:
> 1. Have a PF and two VFs.
>    There will be a filter rule for VLAN 0, refering to a VSI list
>    containing VSIs: 0 (PF), 2 (VF#0), 3 (VF#1).
> 2. Add VLAN 1234 to VF#0.
>    ice will make the wrong decision to share the VSI list with the new
>    rule. The wrong behavior may not be immediately apparent, but it can
>    be observed with debug prints.
> 3. Add VLAN 1234 to VF#1.
>    ice will unshare the VSI list for the VLAN 1234 rule. Due to the
>    earlier bad decision, the newly created VSI list will contain
>    VSIs 0 (PF) and 3 (VF#1), instead of expected 2 (VF#0) and 3 (VF#1).
> 4. Try pinging a network peer over the VLAN interface on VF#0.
>    This fails.
> 
> Reproducer script at:
> https://gitlab.com/mschmidt2/repro/-/blob/master/RHEL-46814/test-vlan-vsi-list-confusion.sh
> Commented debug trace:
> https://gitlab.com/mschmidt2/repro/-/blob/master/RHEL-46814/ice-vlan-vsi-lists-debug.txt
> Patch adding the debug prints:
> https://gitlab.com/mschmidt2/linux/-/commit/f8a8814623944a45091a77c6094c40bfe726bfdb
> 
> One thing I'm not certain about is the implications for the LAG feature,
> which is another caller of ice_find_vsi_list_entry. I don't have a
> LAG-capable card at hand to test.
> 
> Fixes: 25746e4f06a5 ("ice: changes to the interface with the HW and FW for SRIOV_VF+LAG")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
> index fe8847184cb1..4e6e7af962bd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -3264,7 +3264,7 @@ ice_find_vsi_list_entry(struct ice_hw *hw, u8 recp_id, u16 vsi_handle,
>  
>  	list_head = &sw->recp_list[recp_id].filt_rules;
>  	list_for_each_entry(list_itr, list_head, list_entry) {
> -		if (list_itr->vsi_list_info) {
> +		if (list_itr->vsi_count == 1 && list_itr->vsi_list_info) {
>  			map_info = list_itr->vsi_list_info;
>  			if (test_bit(vsi_handle, map_info->vsi_map)) {
>  				*vsi_list_id = map_info->vsi_list_id;
> -- 
> 2.45.2
> 

Thanks, it for sure looks correct. Reusing VSI list when the rule is new
seems like an error. I don't know why it was needed for LAG, probably
Dave will now.

You can add in the description that bug is caused because of reusing VSI
list created for VLAN 0. All created VFs VSIs are added to VLAN 0
filter. When none zero VLAN is created on VF which is already in VLAN 0
(normal case) the VSI list from VLAN 0 is reused. It leads to a problem
because all VFs (VSIs to be sepcific) that are subscribed to VLAN 0 will
now receive a new VLAN tag traffic. This is one bug, another is the bug
that you described. Removing filters from one VF will remove VLAN filter
from the previous VF. It happens in case of reset of VF.

For example:
- creation of 3 VFs
- we have VSI list (used for VLAN 0) [0 (pf), 2 (vf1), 3 (vf2), 4 (vf3)]
- we are adding VLAN 100 on VF1, we are reusing the previous list
  because 2 is there
- VLAN traffic works fine, but VLAN 100 tagged traffic can be received
  on all VSIs from the list (for example broadcast or unicast)
- trust is turing on on VF2, VF2 is resetting, all filters from VF2 are
  removed; the VLAN 100 filter is also remove because 3 is on the list
- VLAN traffic to VF1 isn't working anymore, there is a need to recreate
  VLAN interface to readd VLAN filter

In summary, I don't see the use case when reusing VSI list which more
than one VSI on it for new rule is valid scenario.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Thanks,
Michal 
