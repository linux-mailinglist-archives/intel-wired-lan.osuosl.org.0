Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9698485BA61
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 12:23:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA595411A2;
	Tue, 20 Feb 2024 11:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WccN0jKNXpwV; Tue, 20 Feb 2024 11:23:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6BA340A16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708428219;
	bh=GkYRs+ZrkCyfcwM4Fcc+EfYu+LrCfxypFZxXQ8DmMiA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W+Z5bAAg1fpNE8Go0opCeuXQNVpIpAJi7pp7loHCiR96JHtG1/48meEKv1MLoN+A4
	 wx7PuOJue7jH6n4yLFBo5Wh5VdPXy2lpBTyHIZ+XySmDTGcqoMrh2hkqNIiDVO77/g
	 1Ve5ijA8U6/S4L/KVSzZMtNENfDtBNydL84FyVzhiuujGfJvrE/zCfBNl0dptFqoEp
	 P4HmLIUeflOAtNi0EpAY67RZMHScdscf4xQ7NAYD9rhKRJZWGCZRPH62qfXjwJJxZ9
	 iAvbOeMlWBQRTZCJ3+Tz8LvMWXUkBRBTcnkRNb3svHXxXfD6JoxnND/XIVbLSSjFd2
	 a0n/1fmiWsmZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6BA340A16;
	Tue, 20 Feb 2024 11:23:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A949B1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 11:23:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AAEA40737
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 11:23:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bfkC0lhqFVOC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 11:23:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 410874072B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 410874072B
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 410874072B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 11:23:33 +0000 (UTC)
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id BA81C61E5FE01;
 Tue, 20 Feb 2024 12:23:11 +0100 (CET)
Message-ID: <30416589-7340-4ad3-8749-bef1f82743cb@molgen.mpg.de>
Date: Tue, 20 Feb 2024 12:23:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20240220105950.6814-1-michal.swiatkowski@linux.intel.com>
 <20240220105950.6814-2-michal.swiatkowski@linux.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240220105950.6814-2-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
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

Dear Michal,


Thank you for the patch.

Am 20.02.24 um 11:59 schrieb Michal Swiatkowski:
> In case of traffic going from the VF (so ingress for port representor)
> there should be a check for source VSI. It is needed for hardware to not
> match packets from different port with filters added on other port.

… from different port*s* …?

> It is only for "from VF" traffic, because other traffic direction
> doesn't have source VSI.

Do you have a test case to reproduce this?

> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_tc_lib.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index b890410a2bc0..49ed5fd7db10 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -28,6 +28,8 @@ ice_tc_count_lkups(u32 flags, struct ice_tc_flower_lyr_2_4_hdrs *headers,
>   	 * - ICE_TC_FLWR_FIELD_VLAN_TPID (present if specified)
>   	 * - Tunnel flag (present if tunnel)
>   	 */
> +	if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS)
> +		lkups_cnt++;

Why does the count variable need to be incremented?

>   	if (flags & ICE_TC_FLWR_FIELD_TENANT_ID)
>   		lkups_cnt++;
> @@ -363,6 +365,11 @@ ice_tc_fill_rules(struct ice_hw *hw, u32 flags,
>   	/* Always add direction metadata */
>   	ice_rule_add_direction_metadata(&list[ICE_TC_METADATA_LKUP_IDX]);
>   
> +	if (tc_fltr->direction == ICE_ESWITCH_FLTR_EGRESS) {
> +		ice_rule_add_src_vsi_metadata(&list[i]);
> +		i++;
> +	}
> +
>   	rule_info->tun_type = ice_sw_type_from_tunnel(tc_fltr->tunnel_type);
>   	if (tc_fltr->tunnel_type != TNL_LAST) {
>   		i = ice_tc_fill_tunnel_outer(flags, tc_fltr, list, i);
> @@ -820,6 +827,7 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
>   
>   	/* specify the cookie as filter_rule_id */
>   	rule_info.fltr_rule_id = fltr->cookie;
> +	rule_info.src_vsi = vsi->idx;

Besides the comment above being redundant (as the code does exactly 
that), the new line looks like to belong to the comment. Please excuse 
my ignorance, but the commit message only talks about adding checks and 
not overwriting the `src_vsi`. It’d be great, if you could elaborate.

>   	ret = ice_add_adv_rule(hw, list, lkups_cnt, &rule_info, &rule_added);
>   	if (ret == -EEXIST) {


Kind regards,

Paul
