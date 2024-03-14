Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F87587BBA1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 11:59:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AF9860E0F;
	Thu, 14 Mar 2024 10:59:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BtXMnnByP2Lr; Thu, 14 Mar 2024 10:59:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5705B60E02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710413982;
	bh=hvNJiDPZUykeV3X8uBB9zFYGmn7m9CQJFxotag9a6/A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WaUIloudRYbLLA23mAYL7z0NOYHFBc8QbtFCYQvD3UIAm5HZFbdDFRVOq73gIsoxN
	 Q6sJhyvCpj5tXV3YUFl0WB5hNI2tF5C+XPYH0g//d/OoiEGPBJQzh+aTmyeeE6Jr/J
	 S6+anHcQMR0aICnC0FOYXTaHVsuEXiCiqCy5oR8olh1vtssiEnVewVsGeCW30Ftexh
	 mBlnogYMClzqkuJ3f+itjIRqR51U2bnvpW6+nPmcAe3Q5iAfLzSqvvmLmiyB/T87Tj
	 MrJmnf7epZwCmYqGwC79tfQ3pzl/qOqNn8A0F96JxvjyL5eS+dqsZVjR442vj6Rh4j
	 p2YEsPsB2O/ew==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5705B60E02;
	Thu, 14 Mar 2024 10:59:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BAD3E1BF232
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 10:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B35AE40327
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 10:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6RDO8lNWBBEb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 10:59:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A93FD402EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A93FD402EB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A93FD402EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 10:59:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="30663934"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="30663934"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 03:59:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="12267805"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 03:59:33 -0700
Date: Thu, 14 Mar 2024 11:59:23 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Simon Horman <horms@kernel.org>
Message-ID: <ZfLYfpsVP32uJA9P@mev-dev>
References: <20240222123956.2393-1-michal.swiatkowski@linux.intel.com>
 <20240222123956.2393-2-michal.swiatkowski@linux.intel.com>
 <20240226133448.GD13129@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240226133448.GD13129@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710413976; x=1741949976;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LV2n7ZJ4SfgnAUxyrx7AXuTeLXof0s93S4VFQYctrSM=;
 b=V/rtriV4T7cNBwi1O2f1MJ4ftw9NHvh2Diq3VGewxFrT0A7a54r5NAWw
 vjoFc2+dX53M6eL/BH3tZ0lESWXzUoF5UR1k3vKID6jn2anOGehw5Eatv
 QLWy3ZZU9SI7JGYDgny6HTfwa2C5JrKc+U8Lgay5BkHFqxhgE2nb3qHb4
 3c+FMsUSLKRsvncwNB3NWEYQIQeTPUU2TIcWkmRsrqsHg6mujXOm+6GOr
 qPc9UY/aXXm+h62ELgIXald4R6/9e832H4YfDgj2EMKnaIkxB+UiIur/f
 CTIaCWDYnYIJ2M2qm1Ak5ygHoXmEkmDnwIcIFcn3vGg0721JtNHpcd4us
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V/rtriV4
Subject: Re: [Intel-wired-lan] [iwl-next v2 1/2] ice: tc: check src_vsi in
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
Cc: pmenzel@molgen.mpg.de, wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, sridhar.samudrala@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 26, 2024 at 01:34:48PM +0000, Simon Horman wrote:
> On Thu, Feb 22, 2024 at 01:39:55PM +0100, Michal Swiatkowski wrote:
> > In case of traffic going from the VF (so ingress for port representor)
> > source VSI should be consider during packet classification. It is
> > needed for hardware to not match packets from different ports with
> > filters added on other port.
> > 
> > It is only for "from VF" traffic, because other traffic direction
> > doesn't have source VSI.
> > 
> > Set correct ::src_vsi in rule_info to pass it to the hardware filter.
> > 
> > For example this rule should drop only ipv4 packets from eth10, not from
> > the others VF PRs. It is needed to check source VSI in this case.
> > $tc filter add dev eth10 ingress protocol ip flower skip_sw action drop
> > 
> > Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> > Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Hi Michal,
> 
> Should this be treated as a fix: have a Fixes tag; be targeted at 'iwl'?
> 
> That notwithstanding, this look good to me.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> ...

Thanks Simon, you are right, it will go to net with correct fixes tag.

Thanks,
Michal
