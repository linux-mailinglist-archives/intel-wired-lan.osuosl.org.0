Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6399AC01A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 09:21:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF832607ED;
	Wed, 23 Oct 2024 07:21:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TxLKBUO_jz35; Wed, 23 Oct 2024 07:21:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 111B8607C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729668069;
	bh=QVVcZwrVjUVWbfniFPEjiSQ6O/gs10nhs/MXCGuEhrw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cu2CeUnDm1rWA6QXnuqCqNBBulsCKQG/TLuz58Ib6XSQMW5fggNuWUrC2R7fepF8v
	 +u3208VcMn5lWGn/HKcma2DoNN/T+GWzVzph6YnLDagcZE8g6Sjf33gXRYbnhaLBua
	 sPPV+JkBfr7HUMlveji/AVFv217buXt8HIbZA8bHsjcdKxzBEzfqBg9PDeuyx0SDCp
	 Lt0dGzBvVwXbzug1Df+ZteXjkOeyY1DlfKXwI7QUsmaj/OWqda7MlaUavbxsZvptLa
	 fNGqhnglNYQgSaFpDR8yf2UggMJDJqB/LYaV2yrio98vL+yRB+VB7aK8CGeM146Kb7
	 W8STyCpTfRjUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 111B8607C7;
	Wed, 23 Oct 2024 07:21:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 76DF24C2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 07:21:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6627240979
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 07:21:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WOw1yDZs-NF8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 07:21:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 14E5B40976
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14E5B40976
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 14E5B40976
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 07:21:02 +0000 (UTC)
X-CSE-ConnectionGUID: +0ECbeaEQlyrnqkVFIxjoQ==
X-CSE-MsgGUID: /iqpTHegQBOavJpDJe/+sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32935698"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32935698"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 00:19:36 -0700
X-CSE-ConnectionGUID: lk1904+xSmWQ/pdMWDShpw==
X-CSE-MsgGUID: 4j4Fdq5JQZixQ9GuuxUnWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="80522555"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 00:19:32 -0700
Date: Wed, 23 Oct 2024 09:17:03 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: David Laight <David.Laight@aculab.com>, Simon Horman <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pawel.chmielewski@intel.com" <pawel.chmielewski@intel.com>,
 "sridhar.samudrala@intel.com" <sridhar.samudrala@intel.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>,
 "konrad.knitter@intel.com" <konrad.knitter@intel.com>,
 "marcin.szycik@intel.com" <marcin.szycik@intel.com>,
 "wojciech.drewek@intel.com" <wojciech.drewek@intel.com>,
 "nex.sw.ncis.nat.hpm.dev@intel.com" <nex.sw.ncis.nat.hpm.dev@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>
Message-ID: <Zxii7w4TpJGBL4g3@mev-dev.igk.intel.com>
References: <20240930120402.3468-1-michal.swiatkowski@linux.intel.com>
 <20240930120402.3468-4-michal.swiatkowski@linux.intel.com>
 <20241012151304.GK77519@kernel.org>
 <636e511e-055d-4b7d-8fdb-13e546ff5b90@intel.com>
 <3e015d17e53f4cdd813c88c93b966810@AcuMS.aculab.com>
 <534ab479-29a1-4a95-a9e1-d068b5290ebd@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <534ab479-29a1-4a95-a9e1-d068b5290ebd@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729668064; x=1761204064;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9lEGaxY+Lh9tuFwrLh09Xs9uWI18TVqbHDoQNZ6hhmo=;
 b=Z8ZJ7nWmTN6VNWqO7m2rqproTXu4yq/WL0twe9U8wEFRPp6q1+AdH0f6
 Bu6pQRPgJ4xquTaqIEqpYWfSGXJE0nvjN5d4QofK9vYqSbrMw/z+RCS7V
 sAgI8ZLqiG2UbsROk51gNzHZrB9wrTCm0dFv3oUmO/uCXKafIsVQD9Rbp
 L8KnVU441nyKy4RjdNnZYf9/rDTDYWG5cDgR62pm+WqI+MGmpC1hEXm8j
 I174WXOgTCBWNDJkVEaQZzaOzV97MXpiF78WyF8xh+MWzRbJaZ+OocDtR
 GorWYSdK+F0CFY/PVwLsM3sWkXARZ8HKNk+eO+R3oh3Ei9jKvI5SwBHiJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z8ZJ7nWm
Subject: Re: [Intel-wired-lan] [iwl-next v4 3/8] ice: get rid of
 num_lan_msix field
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

On Mon, Oct 14, 2024 at 03:23:49PM -0700, Jacob Keller wrote:
> 
> 
> On 10/14/2024 12:04 PM, David Laight wrote:
> > From: Jacob Keller
> >> Sent: 14 October 2024 19:51
> >>
> >> On 10/12/2024 8:13 AM, Simon Horman wrote:
> >>> + David Laight
> >>>
> >>> On Mon, Sep 30, 2024 at 02:03:57PM +0200, Michal Swiatkowski wrote:
> >>>> Remove the field to allow having more queues than MSI-X on VSI. As
> >>>> default the number will be the same, but if there won't be more MSI-X
> >>>> available VSI can run with at least one MSI-X.
> >>>>
> >>>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >>>> ---
> >>>>  drivers/net/ethernet/intel/ice/ice.h         |  1 -
> >>>>  drivers/net/ethernet/intel/ice/ice_base.c    | 10 +++-----
> >>>>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  8 +++---
> >>>>  drivers/net/ethernet/intel/ice/ice_irq.c     | 11 +++------
> >>>>  drivers/net/ethernet/intel/ice/ice_lib.c     | 26 +++++++++++---------
> >>>>  5 files changed, 27 insertions(+), 29 deletions(-)
> >>>>
> >>>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> >>>> index cf824d041d5a..1e23aec2634f 100644
> >>>> --- a/drivers/net/ethernet/intel/ice/ice.h
> >>>> +++ b/drivers/net/ethernet/intel/ice/ice.h
> >>>> @@ -622,7 +622,6 @@ struct ice_pf {
> >>>>  	u16 max_pf_txqs;	/* Total Tx queues PF wide */
> >>>>  	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
> >>>>  	struct ice_pf_msix msix;
> >>>> -	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
> >>>>  	u16 num_lan_tx;		/* num LAN Tx queues setup */
> >>>>  	u16 num_lan_rx;		/* num LAN Rx queues setup */
> >>>>  	u16 next_vsi;		/* Next free slot in pf->vsi[] - 0-based! */
> >>>
> >>> ...
> >>>
> >>>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> >> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> >>>> index 85a3b2326e7b..e5c56ec8bbda 100644
> >>>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> >>>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> >>>> @@ -3811,8 +3811,8 @@ ice_get_ts_info(struct net_device *dev, struct kernel_ethtool_ts_info *info)
> >>>>   */
> >>>>  static int ice_get_max_txq(struct ice_pf *pf)
> >>>>  {
> >>>> -	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
> >>>> -		    (u16)pf->hw.func_caps.common_cap.num_txq);
> >>>> +	return min_t(u16, num_online_cpus(),
> >>>> +		     pf->hw.func_caps.common_cap.num_txq);
> >>>
> >>> It is unclear why min_t() is used here or elsewhere in this patch
> >>> instead of min() as it seems that all the entities being compared
> >>> are unsigned. Are you concerned about overflowing u16? If so, perhaps
> >>> clamp, or some error handling, is a better approach.
> >>>
> >>> I am concerned that the casting that min_t() brings will hide
> >>> any problems that may exist.
> >>>
> >> Ya, I think min makes more sense. min_t was likely selected out of habit
> >> or looking at other examples in the driver.
> > 
> > My 'spot patches that use min_t()' failed to spot that one.
> > 
> > But it is just plain wrong - and always was.
> > You want a result that is 16bits, casting the inputs is wrong.
> > Consider a system with 64k cpus!
> > 
> 
> Yea, that makes sense. This is definitely not going to behave well in
> the event that one of the values is above 16-bit.
> 

I blindly copied that, thanks for pointing it, will fix in next version.

Thanks,
Michal

> > Pretty much all the min_t() that specify u8 or u16 are likely to
> > be actually broken.
> > Most of the rest specify u32 or u64 in order to compare (usually)
> > unsigned values of different sizes.
> > But I found some that might be using 'long' on 64bit values
> > on 32bit (and as disk sector numbers!).
> > 
> > In the current min() bleats, the code is almost certainly awry.
> > 
> > 	David
