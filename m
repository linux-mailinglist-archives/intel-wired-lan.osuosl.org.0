Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DB485BBF4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 13:24:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9DDC406EC;
	Tue, 20 Feb 2024 12:24:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4NuPNwdZBePq; Tue, 20 Feb 2024 12:24:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 139B340164
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708431880;
	bh=o+4UZpRoG+pfAj7R4sV0GGBfc7VJ8gf/qpqQ0VZ8BzU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W8B0kU+gD0i/JgXrte3WTbctUr5bx1EgskELbcbf/F8I7zRTdzYQCRccqbMsDuwPd
	 TufJ9M3WTDJOx3kBYSBaapLtRLl9llQXHYkYh19WenhsnCelMGnVebAVT7wooMKz85
	 RIUvZdwF5+2Vb0xK5CfAsq1EN77Njgb5zep9EFwQLNP05GM+j7ECKTCsvqKcsdpUWt
	 HgbwcPBzb42RWYgxDNcd5VxF1N42Nv6itS7Gvybj8YwWAgn/izHfphKo7aXUoG7i78
	 svtxvsFHvA2ufKSMbhPGOwJ/MZkZpH2R/gYr074eNlskCKxVtQ4PW835FCZLKPcBRC
	 6ReORu7gCtc0A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 139B340164;
	Tue, 20 Feb 2024 12:24:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C92831BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C2012401D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bl39moX8gWtb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 12:24:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8673640164
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8673640164
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8673640164
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 12:24:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="13942159"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="13942159"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 04:24:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="42258584"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 04:24:33 -0800
Date: Tue, 20 Feb 2024 13:24:29 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <ZdSZ/ZWKXidgHkAB@mev-dev>
References: <20240220105950.6814-1-michal.swiatkowski@linux.intel.com>
 <20240220105950.6814-2-michal.swiatkowski@linux.intel.com>
 <30416589-7340-4ad3-8749-bef1f82743cb@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <30416589-7340-4ad3-8749-bef1f82743cb@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708431878; x=1739967878;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dsiLJ11h741l5GbdJat1YmQ4KzPfYnGD2H8KwKTyIaQ=;
 b=CSShEnXFJnXoMydfyxRjojbbrr970RHkORPCMxxT7Fn8WN45UwLh7CH3
 SXurGjAcaA2QOunCdbfHu70Se/5hQg+LTawSvRvAWwCmf16gGia7lrpM/
 2TfAilXlV6LMpcZLPVeKthcHnFoPCgAyd8jFFIm4QV+Zhb11eQcbsaSJU
 DHGd3liyGQxcMFv6s6hAbSzqDKLXb3k7bj2VmLxFXj/WXKqiaA45Lu5TW
 tGohGN9UiIGK07qs0nGq6EcHJTnOuhnJOIR8nezflD178EPgPMi8BwUNp
 d4acYBc6VMy+HyMPtypkdGk5mJ+LFqZkTwMFN2mkfK8+iVWBSyL3YU//Y
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CSShEnXF
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/2] ice: tc: check src_vsi in
 case of traffic from VF
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 sridhar.samudrala@intel.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 20, 2024 at 12:23:11PM +0100, Paul Menzel wrote:
> Dear Michal,
> 
> 
> Thank you for the patch.
>

Thanks for the review.

> Am 20.02.24 um 11:59 schrieb Michal Swiatkowski:
> > In case of traffic going from the VF (so ingress for port representor)
> > there should be a check for source VSI. It is needed for hardware to not
> > match packets from different port with filters added on other port.
> 
> … from different port*s* …?
> 

Will fix it.

> > It is only for "from VF" traffic, because other traffic direction
> > doesn't have source VSI.
> 
> Do you have a test case to reproduce this?
>

I can add tc fileter call in v2. In short, any redirect from VF0 to
uplink should allow going packets only from VF0, but currently it is
also matching traffic from other VFs (like VF1, VF2, etc.)

> > Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> > Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_tc_lib.c | 8 ++++++++
> >   1 file changed, 8 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> > index b890410a2bc0..49ed5fd7db10 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> > @@ -28,6 +28,8 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
> >   	 * - ICE_TC_FLWR_FIELD_VLAN_TPID (present if specified)
> >   	 * - Tunnel flag (present if tunnel)
> >   	 */
> > +	if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS)
> > +		lkups_cnt++;
> 
> Why does the count variable need to be incremented?
>
AS you wrote belowe it is needed to add another lookup.

> >   	if (flags & ICE_TC_FLWR_FIELD_TENANT_ID)
> >   		lkups_cnt++;
> > @@ -363,6 +365,11 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
> >   	/* Always add direction metadata */
> >   	ice_rule_add_direction_metadata(&list[ICE_TC_METADATA_LKUP_IDX]);
> > +	if (tc_fltr->direction == ICE_ESWITCH_FLTR_EGRESS) {
> > +		ice_rule_add_src_vsi_metadata(&list[i]);
> > +		i++;
> > +	}
> > +
> >   	rule_info->tun_type = ice_sw_type_from_tunnel(tc_fltr->tunnel_type);
> >   	if (tc_fltr->tunnel_type != TNL_LAST) {
> >   		i = ice_tc_fill_tunnel_outer(flags, tc_fltr, list, i);
> > @@ -820,6 +827,7 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
> >   	/* specify the cookie as filter_rule_id */
> >   	rule_info.fltr_rule_id = fltr->cookie;
> > +	rule_info.src_vsi = vsi->idx;
> 
> Besides the comment above being redundant (as the code does exactly that),
> the new line looks like to belong to the comment. Please excuse my
> ignorance, but the commit message only talks about adding checks and not
> overwriting the `src_vsi`. It’d be great, if you could elaborate.
>

I will rephrase commit message to mark that it is not checking in code,
but matching in hardware, thanks.

> >   	ret = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, &rule_added);
> >   	if (ret == -EEXIST) {
> 
> 
> Kind regards,
> 
> Paul
