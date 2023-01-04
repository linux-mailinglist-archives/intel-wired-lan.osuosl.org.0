Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 225AC65CE1F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jan 2023 09:15:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 886024181C;
	Wed,  4 Jan 2023 08:15:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 886024181C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672820152;
	bh=D4DEQIg6wKHZjtoy1Cq1q9ZBdahw2Zxze6FOJcl6SIQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sLaO1lg50dCie9RDcH0M01x/z0vuybBJRlAcATlHxGG1p/DkuhWmWI4DEayqENmDL
	 wuaCnKTWI1eQaD7IsiuGE6xL/E0grkVnXyllQZZCzyeVyKsuOa5SKiVxa3ZhtqbrNP
	 /STmiFikCtwI/XneZO21+scQmkHGfmxb6Z0EH0EOHAHt2Ydc8SnPRixRBqcF5FK1K/
	 veFIashWtRIbxzBkkKcls995X/03U6AD+5Y2tCbdWR+1THUnUqsnlzxE3NY9x7vKNN
	 6FpKldkUpMDAdkN7YGb/J8Un1+WvfQMa3sRuEkhT9hlveq6yPg1sa/ZPY5TLUbLRzy
	 9NSrUJPaPgKaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wc3wjGnzpp4f; Wed,  4 Jan 2023 08:15:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1698241822;
	Wed,  4 Jan 2023 08:15:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1698241822
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 569921BF31D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 08:15:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FD2561013
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 08:15:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FD2561013
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fQkJ_wCndE7A for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jan 2023 08:15:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A74061012
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A74061012
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 08:15:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="323872155"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="323872155"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 00:15:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="685679320"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="685679320"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 00:15:29 -0800
Date: Wed, 4 Jan 2023 09:15:24 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Message-ID: <Y7U1nMkH+v0ANPFF@localhost.localdomain>
References: <20230103052401.488013-1-michal.swiatkowski@linux.intel.com>
 <20230103132637.3910851-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230103132637.3910851-1-alexandr.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672820145; x=1704356145;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SMaMmNDrGQREStJ5JF1Fre27zE1tbptBNp8vMgsxUio=;
 b=S0oktuhvJx26BgJKKKB67gXs7UEnTV0e4fP0XOSBJnBVQc/pi668K/ZO
 aG6ttsPzE6qDk3eAp7I5vebyGbRSRn2eef2CLWzGFxUwvctm6m2jofcLo
 m+Eu0ccOrOzCASUIT6fbtIWKtAtAsCs8NLPuYB81z73vU38p2U8o8xoJ3
 FefngLt5jpDjZdgddwP/qy6RINGKhaqTlu0UGWyD+ku5g84kKgFWsQpRI
 qFS7PPGhOQmQqr0jIiRIM9qmMVD66aw8AbZsqW8mM7I4jnxbKC1yD2UMk
 0EwZrZPeLGZcAecVWNU8xNKhIPCyjY9lm1CsHxuBofxUSeDBvMIo1piX+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S0oktuhv
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix out-of-bounds KASAN
 warning in virtchnl
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
Cc: pmenzel@molgen.mpg.de, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 03, 2023 at 02:26:37PM +0100, Alexander Lobakin wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Date: Tue, 3 Jan 2023 06:24:01 +0100
> 
> > KASAN reported:
> > [ 9793.708867] BUG: KASAN: global-out-of-bounds in ice_get_link_speed+0x16/0x30 [ice]
> [...]
> 
> > The ICE_AQ_LINK_SPEED_UNKNOWN define is BIT(15). The value is bigger
> > than both legacy and normal link speed tables. Add one element (0 -
> > unknown) to both tables. There is no need to explicitly set table size,
> > leave it empty.
> > 
> > Fixes: 1d0e28a9be1f ("ice: Remove and replace ice speed defines with ethtool.h versions")
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > ---
> > v1 --> v2:
> >  * follow Alex sugestions and remove all zero records from link speed
> >    tables and add validation for the index
> >  * fix commit message
> > ---
> > ---
> 
> Super-nit: redundant double '---', one is enough.
> 
> >  drivers/net/ethernet/intel/ice/ice_common.c |  9 ++++-----
> >  drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 18 +++++++-----------
> >  2 files changed, 11 insertions(+), 16 deletions(-)
> 
> [...]
> 
> > @@ -71,21 +67,21 @@ static const u32 ice_legacy_aq_to_vc_speed[15] = {
> >   */
> >  u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed)
> >  {
> > -	u32 speed;
> > +	/* convert a BIT() value into an array index */
> > +	u32 index = fls(link_speed) - 1;
> >  
> >  	if (adv_link_support) {
> > -		/* convert a BIT() value into an array index */
> > -		speed = ice_get_link_speed(fls(link_speed) - 1);
> > -	} else {
> > +		return ice_get_link_speed(index);
> > +	} else if (index < ARRAY_SIZE(ice_legacy_aq_to_vc_speed)) {
> >  		/* Virtchnl speeds are not defined for every speed supported in
> >  		 * the hardware. To maintain compatibility with older AVF
> >  		 * drivers, while reporting the speed the new speed values are
> >  		 * resolved to the closest known virtchnl speeds
> >  		 */
> > -		speed = ice_legacy_aq_to_vc_speed[fls(link_speed) - 1];
> > +		return ice_legacy_aq_to_vc_speed[index];
> >  	}
> 
> Breh, I've just realized that the branches are now oneliners, so {}s
> around them are not needed anymore. Could you please send a v3
> without them and with my
> 
> Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> 
> added?
> 
Sure, thanks for review. I will fix it and also remove double "---".

> >  
> > -	return speed;
> > +	return VIRTCHNL_LINK_SPEED_UNKNOWN;
> >  }
> >  
> >  /* The mailbox overflow detection algorithm helps to check if there
> > -- 
> > 2.36.1
> 
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
