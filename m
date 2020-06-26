Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C7620B156
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2020 14:25:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D8A2686243;
	Fri, 26 Jun 2020 12:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2pdCsNr_aDPm; Fri, 26 Jun 2020 12:25:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADE4286C28;
	Fri, 26 Jun 2020 12:25:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61D971BF339
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 12:25:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5DCF587E65
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 12:25:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6zC6U1IdmueG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2020 12:25:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE5D587E63
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 12:25:30 +0000 (UTC)
IronPort-SDR: pEL+bEc872VACkyoaCqr03sQa1hFv38hM4fXdH47ehGr6RnbMvla3eeFRSRoF+ZLrLWHsgoEXu
 ag5ZLZKLXfMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="133685275"
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="133685275"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 05:25:29 -0700
IronPort-SDR: NxQkWCXtrTxccnACygYrtrdJFBWqWBvu1keOQV5YI98kutSY3Eaw+nyaIztwog4xDhsD5HUqZQ
 c1Yo2sdCJSYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="479987201"
Received: from unknown (HELO s240.localdomain) ([10.237.94.19])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jun 2020 05:25:28 -0700
From: Piotr Skajewski <piotrx.skajewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Jun 2020 14:22:36 +0200
Message-Id: <20200626122236.26118-1-piotrx.skajewski@intel.com>
X-Mailer: git-send-email 2.22.0.rc3
In-Reply-To: <20200626050228.1287009-1-jeffrey.t.kirsher@intel.com>
References: <20200626050228.1287009-1-jeffrey.t.kirsher@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue] ixgbe: Add ethtool support to enable
 2.5 and 5.0 Gbps support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>> -----Original Message-----
>> 
>> From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Arthur F Mclean
>>     <arthur.f.mclean@intel.com>, Aleksandr Loktionov
>>     <aleksandr.loktionov@intel.com>
>> Subject: [Intel-wired-lan] [next-queue] ixgbe: Add ethtool support to
>>     enable 2.5 and 5.0 Gbps support
>> Message-ID: <20200626050228.1287009-1-jeffrey.t.kirsher@intel.com>
>> 
>> Update the ixgbe ethtool interface to support 2.5 and 5 GbE support by updated the getting and setting advertised and supported speed modes.
>> 
>> CC: Arthur F Mclean <arthur.f.mclean@intel.com>
>> CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
>> ---
>>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 234 ++++++++++++------
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   2 +
>>  2 files changed, 155 insertions(+), 81 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
>> index 8ae2c8c2f6a1..c4e4aa33c91d 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
>> @@ -149,28 +149,6 @@ static const char ixgbe_priv_flags_strings[][ETH_GSTRING_LEN] = {
>> 
...

>>     /* set the advertised speeds */
>>     if (hw->phy.autoneg_advertised) {
>> -		advertising = 0;
>> +		ethtool_link_ksettings_zero_link_mode(cmd, advertising);
>> 	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10_FULL)
>> -			advertising |= ADVERTISED_10baseT_Full;
>> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +							     10baseT_Full);
>> 	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_100_FULL)
>> -			advertising |= ADVERTISED_100baseT_Full;
>> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +							     100baseT_Full);
>> 	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_10GB_FULL)
>> -			advertising |= supported & ADVRTSD_MSK_10G;

we need to add advertised for KX4 and KR modes which was previous in ADVRTSD_MSK_10G
and which are already zeroed

>> +			ethtool_link_ksettings_add_link_mode(cmd, advertising,
>> +							     10000baseT_Full);
>> 	if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_1GB_FULL) {
 
...

>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> index 7515ed825fe2..0c7d208d9ab0 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -5512,6 +5512,8 @@ static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
>>     if (ret)
>> 	return ret;
>>  
>> +	speed &= ~(IXGBE_LINK_SPEED_5GB_FULL | IXGBE_LINK_SPEED_2_5GB_FULL);

this should be inside
if (!speed && hw->mac.ops.get_link_capabilities)
if not, then after ifdown/ifup all advertised speed will be available again

>> +
>>     if (hw->mac.ops.setup_link)
>> 	ret = hw->mac.ops.setup_link(hw, speed, link_up);
>>  
>> --
>> 2.26.2

we've worked on this upstream patch before, we wanted to publish it today
after some inside tests. Patch is already ready to publish.
Now we are going to publish a new patch wihh you in cc.

Piotr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
