Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 594B8899285
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 02:15:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94CE860676;
	Fri,  5 Apr 2024 00:15:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id olDa2Et3Ui5r; Fri,  5 Apr 2024 00:15:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66D3F60683
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712276102;
	bh=Sg6FigPSRg2LO/3Pa8k8Utz36GrQl4kebMVYdmtR2f0=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a6k30FWwupIj1ZTpzA22g4aj/ExKeuFL5jAjG+tUfO/VmjB021LTmmKZ3CTTVO8W9
	 EJxH4IDSulZMyHGeM0NOBL6/l2STU+Rzzgu9qT6yRsnLHRGCJZkd8RTFL3uAZFCakk
	 HaFftW0QL1idlvO3lhMWKLn7m0X3IvNVH/4+ij86LziZF4ChRwij3UGjVw31Puo+kL
	 e90AqihnIx085aWhxnC8ESisoei//SNSq/j1PMYi3eymYO6xRgpZwEW5aZG4yTscxj
	 rdft40dfaNko/+yAqvwnvnTOS0JsLxtKn63tG3oLE11YW3X2xtZ6SkphKsjT6h7Y21
	 rqfEaC7cMVIlg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66D3F60683;
	Fri,  5 Apr 2024 00:15:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 545C11BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 00:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F9B3401A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 00:15:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZrLcQzm3z0NT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 00:14:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8E3E64019E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E3E64019E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E3E64019E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 00:14:58 +0000 (UTC)
X-CSE-ConnectionGUID: eydBd/6SR6SnK7dv2eo7EA==
X-CSE-MsgGUID: HKHQfbYLRO6g5+xtyo/7ZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7437168"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7437168"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 17:14:58 -0700
X-CSE-ConnectionGUID: bX4iwGqcTh2NWHL0xPOMMQ==
X-CSE-MsgGUID: s90ctnXpSm+GRPJlvGhiCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="23449022"
Received: from vcostago-mobl3.jf.intel.com (HELO vcostago-mobl3)
 ([10.241.228.254])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 17:14:58 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20240327155422.25424-4-piotr.kwapulinski@intel.com>
References: <20240327155422.25424-1-piotr.kwapulinski@intel.com>
 <20240327155422.25424-4-piotr.kwapulinski@intel.com>
Date: Thu, 04 Apr 2024 17:14:57 -0700
Message-ID: <87r0fkbr7i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712276098; x=1743812098;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lhXrrKk3jui/IPf1Wm9PfMRztmR64UbYlM8a8dUK8O8=;
 b=RwHgrJWhZNBMfj9pFm6kpn3mAfNl8NP0Y57dXQ87/yOAqNCYXic7rYiL
 b+XkU6MNVOyreH//8KEgFAaajWSBRXx9GYke+amYUio61wG8dUQ5WfgdG
 inaCBypDYUq1+XMUTw3T8tpUPVH/SXXSDKGOaC1LawI2MDsJ9I1YuxTgW
 Z4eYDngMLwWSifY7+kA0m94dr4gGPn7lpxYb/+n4HFfCyFfwPajABEcYy
 6OrfeJqBQHBs6RSsEnt/aQn9LXHZr/Fdc1gPkJ2VWZzQ9H4IbSkgsc4jo
 rJYgqvYZ6o77XCInNKGyXyKPx0M/7OkOfDpUmIp8/rl8UyX7Csg3M8Ur0
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RwHgrJWh
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/5] ixgbe: Add link
 management support for E610 device
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>, netdev@vger.kernel.org,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>, Jan Glaza <jan.glaza@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Piotr Kwapulinski <piotr.kwapulinski@intel.com> writes:

> Add low level link management support for E610 device. Link management
> operations are handled via the Admin Command Interface. Add the following
> link management operations:
> - get link capabilities
> - set up link
> - get media type
> - get link status, link status events
> - link power management
>
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---

[...]

> +/**
> + * ixgbe_update_link_info - update status of the HW network link
> + * @hw: pointer to the HW struct
> + *
> + * Update the status of the HW network link.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_update_link_info(struct ixgbe_hw *hw)
> +{
> +	struct ixgbe_link_status *li;
> +	int err;
> +
> +	if (!hw)
> +		return -EINVAL;
> +
> +	li = &hw->link.link_info;
> +
> +	err = ixgbe_aci_get_link_info(hw, true, NULL);
> +	if (err)
> +		return err;
> +
> +	if (li->link_info & IXGBE_ACI_MEDIA_AVAILABLE) {
> +		struct ixgbe_aci_cmd_get_phy_caps_data __free(kfree) *pcaps;
> +
> +		pcaps =	kzalloc(sizeof(*pcaps), GFP_KERNEL);
> +		if (!pcaps)
> +			return -ENOMEM;
> +

Seems that 'pcaps' is leaking here.

> +		err = ixgbe_aci_get_phy_caps(hw, false,
> +					     IXGBE_ACI_REPORT_TOPO_CAP_MEDIA,
> +					     pcaps);
> +
> +		if (!err)
> +			memcpy(li->module_type, &pcaps->module_type,
> +			       sizeof(li->module_type));
> +	}
> +
> +	return err;
> +}
> +
[...]

> +/**
> + * ixgbe_get_media_type_e610 - Gets media type
> + * @hw: pointer to the HW struct
> + *
> + * In order to get the media type, the function gets PHY
> + * capabilities and later on use them to identify the PHY type
> + * checking phy_type_high and phy_type_low.
> + *
> + * Return: the type of media in form of ixgbe_media_type enum
> + * or ixgbe_media_type_unknown in case of an error.
> + */
> +enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw)
> +{
> +	struct ixgbe_aci_cmd_get_phy_caps_data pcaps;
> +	int rc;
> +
> +	rc = ixgbe_update_link_info(hw);
> +	if (rc)
> +		return ixgbe_media_type_unknown;
> +
> +	/* If there is no link but PHY (dongle) is available SW should use
> +	 * Get PHY Caps admin command instead of Get Link Status, find most
> +	 * significant bit that is set in PHY types reported by the command
> +	 * and use it to discover media type.
> +	 */
> +	if (!(hw->link.link_info.link_info & IXGBE_ACI_LINK_UP) &&
> +	    (hw->link.link_info.link_info & IXGBE_ACI_MEDIA_AVAILABLE)) {
> +		u64 phy_mask;
> +		u8 i;
> +
> +		/* Get PHY Capabilities */
> +		rc = ixgbe_aci_get_phy_caps(hw, false,
> +					    IXGBE_ACI_REPORT_TOPO_CAP_MEDIA,
> +					    &pcaps);
> +		if (rc)
> +			return ixgbe_media_type_unknown;
> +
> +		/* Check if there is some bit set in phy_type_high */
> +		for (i = 64; i > 0; i--) {
> +			phy_mask = (u64)((u64)1 << (i - 1));
> +			if ((pcaps.phy_type_high & phy_mask) != 0) {
> +				/* If any bit is set treat it as PHY type */
> +				hw->link.link_info.phy_type_high = phy_mask;
> +				hw->link.link_info.phy_type_low = 0;
> +				break;
> +			}
> +			phy_mask = 0;
> +		}
> +
> +		/* If nothing found in phy_type_high search in phy_type_low */
> +		if (phy_mask == 0) {
> +			for (i = 64; i > 0; i--) {
> +				phy_mask = (u64)((u64)1 << (i - 1));
> +				if ((pcaps.phy_type_low & phy_mask) != 0) {
> +					/* Treat as PHY type is any bit set */
> +					hw->link.link_info.phy_type_high = 0;
> +					hw->link.link_info.phy_type_low = phy_mask;
> +					break;
> +				}
> +			}
> +		}

These two look like they are doing something very similar to fls64().
Could that work?

> +
> +		/* Based on search above try to discover media type */
> +		hw->phy.media_type = ixgbe_get_media_type_from_phy_type(hw);
> +	}
> +
> +	return hw->phy.media_type;
> +}
> +


-- 
Vinicius
