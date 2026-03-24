Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAdDOBWzwmmRkwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 16:51:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 964FB31864E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 16:51:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BDA140FF3;
	Tue, 24 Mar 2026 15:51:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nje-OugJi3Xp; Tue, 24 Mar 2026 15:51:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA4EE40FFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774367505;
	bh=IyIHHCs1gptqdva+jDdfKsXvYoOq14Vk1L+dpI9vWGk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hhH6tVt23t+mpP4zTktKyXhKhXuAtejAAGkL+XFvka1EYLdkbU35uUTjY8n3Z3nUv
	 QIUTo3nq1mKJPk5138MykRkoM+LQ3qw0vLNVKUKaxMc0ZXtSGTshv8j7lizgO3PDWN
	 UIYCsO6LTxh3L0/wgWQ/KwdLsA5EvHwnJruEWMPk8hChFVuItKzIkCT+HqGIEhA0ap
	 Aa35GvuUibfcuXQsHXE1cLe23RUOcJ8RuOR4lmwc2dITb5Jv+tqLDEnc67PF/3lURQ
	 4AHn1SgJa/Yq3loBwWYnY2KJ5bDslwt2GMuVyqMQJ3GpsQ9VAt2JxjruMuhcxRQcZ3
	 BvuC/fNSztWow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA4EE40FFB;
	Tue, 24 Mar 2026 15:51:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 13D1B1D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 15:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED6FF60DA4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 15:51:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EBP1_FBbQJ_d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 15:51:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4F1A160D72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F1A160D72
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F1A160D72
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 15:51:41 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4AAE94C2C37F04;
 Tue, 24 Mar 2026 16:51:13 +0100 (CET)
Message-ID: <ee24874c-fa9f-4685-9ca9-dc2fbadb581f@molgen.mpg.de>
Date: Tue, 24 Mar 2026 16:51:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Paul Greenwalt <paul.greenwalt@intel.com>,
 Simon Horman <horms@kernel.org>
References: <20260324153542.674859-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260324153542.674859-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: add 200G_AUI8 PHY
 type definitions and wire them up
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,m:horms@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 964FB31864E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dear Aleksandr,


Thank you for your patch.

Am 24.03.26 um 16:35 schrieb Aleksandr Loktionov:
> ice_link_mode_str_high[] lacks entries for phy_type_high bits 5-14
> (all 200G PHY types on E825C); ice_dump_phy_type() prints nothing for
> them when ICE_DBG_LINK is set (e.g. 'ethtool -s ethX msglvl 0x10').
> The loop also iterates all 64 bits against a 5-entry array - undefined
> behaviour for any matched bit beyond the end.  Add strings for bits
> 5-14 and guard the loop with ARRAY_SIZE(), falling back to "unknown"
> for unrecognised bits.
> 
> ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC (bit 13) and 200G_AUI8 (bit 14)
> were absent from ice_adminq_cmd.h; ICE_PHY_TYPE_HIGH_MAX_INDEX capped
> at 12 caused ice_update_phy_type() to skip them entirely, leaving both
> invisible to 200G speed requests.  Add the definitions and bump
> MAX_INDEX to 14.
> 
> Wire the two new types throughout the driver:
> - ice_get_media_type(): handle all ten 200G phy_type_high values so
>    E825C ports no longer return ICE_MEDIA_UNKNOWN.  AOC_ACC interfaces
>    map to FIBER; bare AUI4/AUI8 to DA with cage, else BACKPLANE
>    (matching existing AUI2/CAUI2 logic); CR4_PAM4 to DA; SR4/FR4/LR4/
>    DR4 to FIBER; KR4_PAM4 to BACKPLANE.
> - ice_get_link_speed_based_on_phy_type(): return ICE_AQ_LINK_SPEED_200GB
>    for both new types so ice_update_phy_type() enables them correctly.
> - phy_type_high_lkup[13,14]: AUI8 is 8-lane 25G-per-lane; no
>    200000baseSR8/CR8 ethtool modes exist yet, so approximate with
>    SR4_Full/CR4_Full - matching AUI4 at indices 11-12.  FIXME once
>    those link modes land upstream.
> - ICE_PHY_TYPE_HIGH_MASK_200G: add bits 13-14 for the minimum-speed
>    floor in ice_mask_min_supported_speeds().
> 
> Suggested-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Cc: Simon Horman <horms@kernel.org>
> Cc: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
> v3 -> v4: add ARRAY_SIZE() OOB guard in ice_dump_phy_type(); cover all
>            ten 200G phy_type_high values in ice_get_media_type(); add FIXME
>            to lkup[13..14] for missing SR8/CR8 modes; rename subject
>            fix subject; fix debug enable example (ethtool, not modprobe);
>            add AUI8 speed mapping, lkup[13-14], MASK_200G bits 13-14,
>            and AUI8->SR4/CR4 approximation comment
> v1 -> v2: add ICE_PHY_TYPE_HIGH_MAX_INDEX update
> ---
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  4 ++-
>   drivers/net/ethernet/intel/ice/ice_common.c   | 31 ++++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_ethtool.c  |  4 ++-
>   drivers/net/ethernet/intel/ice/ice_ethtool.h  |  8 +++++
>   4 files changed, 44 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 859e9c6..efe985c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1044,7 +1044,9 @@ struct ice_aqc_get_phy_caps {
>   #define ICE_PHY_TYPE_HIGH_200G_KR4_PAM4		BIT_ULL(10)
>   #define ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC	BIT_ULL(11)
>   #define ICE_PHY_TYPE_HIGH_200G_AUI4		BIT_ULL(12)
> -#define ICE_PHY_TYPE_HIGH_MAX_INDEX		12
> +#define ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC	BIT_ULL(13)
> +#define ICE_PHY_TYPE_HIGH_200G_AUI8		BIT_ULL(14)
> +#define ICE_PHY_TYPE_HIGH_MAX_INDEX		14
>   
>   struct ice_aqc_get_phy_caps_data {
>   	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index ce11fea..2f3a268 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -84,6 +84,16 @@ static const char * const ice_link_mode_str_high[] = {
>   	[2] = "100G_CAUI2",
>   	[3] = "100G_AUI2_AOC_ACC",
>   	[4] = "100G_AUI2",
> +	[5] = "200G_CR4_PAM4",
> +	[6] = "200G_SR4",
> +	[7] = "200G_FR4",
> +	[8] = "200G_LR4",
> +	[9] = "200G_DR4",
> +	[10] = "200G_KR4_PAM4",
> +	[11] = "200G_AUI4_AOC_ACC",
> +	[12] = "200G_AUI4",
> +	[13] = "200G_AUI8_AOC_ACC",
> +	[14] = "200G_AUI8",
>   };
>   
>   /**
> @@ -107,9 +117,14 @@ ice_dump_phy_type(struct ice_hw *hw, u64 low, u64 high, const char *prefix)
>   	ice_debug(hw, ICE_DBG_PHY, "%s: phy_type_high: 0x%016llx\n", prefix, high);
>   
>   	for (u32 i = 0; i < BITS_PER_TYPE(typeof(high)); i++) {
> -		if (high & BIT_ULL(i))
> +		if (!(high & BIT_ULL(i)))
> +			continue;
> +		if (i < ARRAY_SIZE(ice_link_mode_str_high))
>   			ice_debug(hw, ICE_DBG_PHY, "%s:   bit(%d): %s\n",
>   				  prefix, i, ice_link_mode_str_high[i]);
> +		else
> +			ice_debug(hw, ICE_DBG_PHY, "%s:   bit(%d): unknown\n",
> +				  prefix, i);
>   	}
>   }
>   
> @@ -605,13 +620,25 @@ static enum ice_media_type ice_get_media_type(struct ice_port_info *pi)
>   		switch (hw_link_info->phy_type_high) {
>   		case ICE_PHY_TYPE_HIGH_100G_AUI2:
>   		case ICE_PHY_TYPE_HIGH_100G_CAUI2:
> +		case ICE_PHY_TYPE_HIGH_200G_AUI4:
> +		case ICE_PHY_TYPE_HIGH_200G_AUI8:
>   			if (ice_is_media_cage_present(pi))
>   				return ICE_MEDIA_DA;
>   			fallthrough;
>   		case ICE_PHY_TYPE_HIGH_100GBASE_KR2_PAM4:
> +		case ICE_PHY_TYPE_HIGH_200G_KR4_PAM4:
>   			return ICE_MEDIA_BACKPLANE;
>   		case ICE_PHY_TYPE_HIGH_100G_CAUI2_AOC_ACC:
>   		case ICE_PHY_TYPE_HIGH_100G_AUI2_AOC_ACC:
> +		case ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC:
> +		case ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC:
> +			return ICE_MEDIA_FIBER;
> +		case ICE_PHY_TYPE_HIGH_200G_CR4_PAM4:
> +			return ICE_MEDIA_DA;
> +		case ICE_PHY_TYPE_HIGH_200G_SR4:
> +		case ICE_PHY_TYPE_HIGH_200G_FR4:
> +		case ICE_PHY_TYPE_HIGH_200G_LR4:
> +		case ICE_PHY_TYPE_HIGH_200G_DR4:
>   			return ICE_MEDIA_FIBER;
>   		}
>   	}
> @@ -3493,6 +3520,8 @@ u16 ice_get_link_speed_based_on_phy_type(u64 phy_type_low, u64 phy_type_high)
>   	case ICE_PHY_TYPE_HIGH_200G_KR4_PAM4:
>   	case ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC:
>   	case ICE_PHY_TYPE_HIGH_200G_AUI4:
> +	case ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC:
> +	case ICE_PHY_TYPE_HIGH_200G_AUI8:
>   		speed_phy_type_high = ICE_AQ_LINK_SPEED_200GB;
>   		break;
>   	default:
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 301947d..beb638c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -2057,7 +2057,9 @@ ice_get_ethtool_stats(struct net_device *netdev,
>   					 ICE_PHY_TYPE_HIGH_200G_DR4 | \
>   					 ICE_PHY_TYPE_HIGH_200G_KR4_PAM4 | \
>   					 ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC | \
> -					 ICE_PHY_TYPE_HIGH_200G_AUI4)
> +					 ICE_PHY_TYPE_HIGH_200G_AUI4 | \
> +					 ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC | \
> +					 ICE_PHY_TYPE_HIGH_200G_AUI8)
>   
>   /**
>    * ice_mask_min_supported_speeds
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.h b/drivers/net/ethernet/intel/ice/ice_ethtool.h
> index 23b2cfb..c4732a3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.h
> @@ -153,6 +153,14 @@ phy_type_high_lkup[] = {
>   	[10] = ICE_PHY_TYPE(200GB, 200000baseKR4_Full),
>   	[11] = ICE_PHY_TYPE(200GB, 200000baseSR4_Full),
>   	[12] = ICE_PHY_TYPE(200GB, 200000baseCR4_Full),
> +	/* 200G_AUI8_AOC_ACC and 200G_AUI8 are 8-lane 25G-per-lane interfaces.
> +	 * The kernel has no 200000baseSR8/CR8 modes yet; map to the closest
> +	 * available 4-lane equivalents so ethtool reports 200G as supported.
> +	 * FIXME: replace with 200000baseSR8_Full / 200000baseCR8_Full once
> +	 * those ethtool link modes are defined upstream.
> +	 */
> +	[13] = ICE_PHY_TYPE(200GB, 200000baseSR4_Full),
> +	[14] = ICE_PHY_TYPE(200GB, 200000baseCR4_Full),
>   };
>   
>   #endif /* !_ICE_ETHTOOL_H_ */

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
