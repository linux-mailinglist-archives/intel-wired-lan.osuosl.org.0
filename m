Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D9321871B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 14:23:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B0998654E;
	Wed,  8 Jul 2020 12:23:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zos8HOJkPIyl; Wed,  8 Jul 2020 12:23:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B24E0868D3;
	Wed,  8 Jul 2020 12:23:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 90FF01BF276
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 12:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 88F9788A65
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 12:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5t2weg9b9fbd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 12:22:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C193F888F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 12:22:59 +0000 (UTC)
IronPort-SDR: couSW4f0fnXv5NQb+meraZq5/GK6bdEJztMjCib3eJSPUZGCgU61ikX788Mh0rkjOx2D6ZSHy2
 CM/WxPSNQCag==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="165856284"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="165856284"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 05:22:59 -0700
IronPort-SDR: krV80ZIai1AC2z8fE80XLrbJN26S+qH081J5pu1S1AHXR5nnxJkMy8cRC1tYjxIfJaMYIxlQ8u
 K+qfdzR0d8Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="483407464"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.254.156.2])
 ([10.254.156.2])
 by fmsmga006.fm.intel.com with ESMTP; 08 Jul 2020 05:22:58 -0700
To: dan.carpenter@oracle.com
References: <20200708114751.GA11509@mwanda>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <ee80dbd3-0042-0c1f-de92-9df65e376ee0@intel.com>
Date: Wed, 8 Jul 2020 15:22:57 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200708114751.GA11509@mwanda>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [bug report] igc: Add initial LTR support
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

On 7/8/2020 14:47, dan.carpenter@oracle.com wrote:
> Hello Sasha Neftin,
> 
> The patch 707abf069548: "igc: Add initial LTR support" from Jun 2,
> 2020, leads to the following static checker warning:
> 
> 	drivers/net/ethernet/intel/igc/igc_mac.c:424 igc_check_for_copper_link()
> 	error: uninitialized symbol 'link'.
> 
> drivers/net/ethernet/intel/igc/igc_mac.c
>     363  s32 igc_check_for_copper_link(struct igc_hw *hw)
>     364  {
>     365          struct igc_mac_info *mac = &hw->mac;
>     366          s32 ret_val;
>     367          bool link;
>                  ^^^^^^^^^
I will release patch to fix this static checker warning.
> 
>     368
>     369          /* We only want to go out to the PHY registers to see if Auto-Neg
>     370           * has completed and/or if our link status has changed.  The
>     371           * get_link_status flag is set upon receiving a Link Status
>     372           * Change or Rx Sequence Error interrupt.
>     373           */
>     374          if (!mac->get_link_status) {
>     375                  ret_val = 0;
>     376                  goto out;
>                          ^^^^^^^^
> 
>     377          }
>     378
>     379          /* First we want to see if the MII Status Register reports
>     380           * link.  If so, then we want to get the current speed/duplex
>     381           * of the PHY.
>     382           */
>     383          ret_val = igc_phy_has_link(hw, 1, 0, &link);
>     384          if (ret_val)
>     385                  goto out;
>     386
>     387          if (!link)
>     388                  goto out; /* No link detected */
>     389
>     390          mac->get_link_status = false;
>     391
>     392          /* Check if there was DownShift, must be checked
>     393           * immediately after link-up
>     394           */
>     395          igc_check_downshift(hw);
>     396
>     397          /* If we are forcing speed/duplex, then we simply return since
>     398           * we have already determined whether we have link or not.
>     399           */
>     400          if (!mac->autoneg) {
>     401                  ret_val = -IGC_ERR_CONFIG;
>     402                  goto out;
>     403          }
>     404
>     405          /* Auto-Neg is enabled.  Auto Speed Detection takes care
>     406           * of MAC speed/duplex configuration.  So we only need to
>     407           * configure Collision Distance in the MAC.
>     408           */
>     409          igc_config_collision_dist(hw);
>     410
>     411          /* Configure Flow Control now that Auto-Neg has completed.
>     412           * First, we need to restore the desired flow control
>     413           * settings because we may have had to re-autoneg with a
>     414           * different link partner.
>     415           */
>     416          ret_val = igc_config_fc_after_link_up(hw);
>     417          if (ret_val)
>     418                  hw_dbg("Error configuring flow control\n");
>     419
>     420  out:
>     421          /* Now that we are aware of our link settings, we can set the LTR
>     422           * thresholds.
>     423           */
>     424          ret_val = igc_set_ltr_i225(hw, link);
>                                                 ^^^^
> Uninitialized.
> 
>     425
>     426          return ret_val;
>     427  }
> 
> regards,
> dan carpenter
> 
Thanks Dan for point us on this problem. This patch discover legacy code 
problem. I will process another patch to fix that.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
