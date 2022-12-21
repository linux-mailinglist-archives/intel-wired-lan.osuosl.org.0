Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A49653660
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 19:30:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CFE881C18;
	Wed, 21 Dec 2022 18:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CFE881C18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671647410;
	bh=UnA/AQ/il+13HMEos5EoJTShh1bfuEK7PqiNkykTM0w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PqRQvk9LLuLCCwioXJRH467CaL/vzKxW+16lTeXkrc5fELbCSxeAfQRaMlbhTSSY6
	 A21Da2H7nqFNBzkm6X4UWEGkxiza0qbrqWbcfmGFSXRu0EQ6yiaEe1ovdVtJREc3Hj
	 kj90NB2iHToBW1y+rPI70FqGQKHg0DWG/RN3Y28Bh8ORIcc3MrH+XBIk4nrNK1G5D5
	 zYibEbU7qYEJpBhtRwWo8/w5GgZGbXudfV7pqrSBZ0mymF++NYltJGJQ3o7N+eWHeZ
	 LjCvlA1ciPlVUWVtSMxiM4LdqMyaV639YvbevvtO5kY3ofUqKYvewitdNTCtMXGzUd
	 qfY7ppB9WeuZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MnbS4kQsOjPf; Wed, 21 Dec 2022 18:30:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2062481ABB;
	Wed, 21 Dec 2022 18:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2062481ABB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D38B91BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 18:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACE9D40441
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 18:30:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACE9D40441
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TvoIE1_2D0tQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 18:30:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47611400A6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47611400A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 18:30:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="321859575"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="321859575"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 10:29:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="651496238"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="651496238"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 10:29:41 -0800
Date: Wed, 21 Dec 2022 19:29:37 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Message-ID: <Y6NQkSUumJY5lJjV@localhost.localdomain>
References: <20221221092746.39234-1-michal.swiatkowski@linux.intel.com>
 <20221221163726.1189622-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221221163726.1189622-1-alexandr.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671647403; x=1703183403;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=o0T7fEa4BFjY9aJrHYnlZTnN2gBl4bUxn8WXwSDtCZo=;
 b=JC3YSi1R0f/MYJvWUFxGituu8n/CcRsTGC81blYfvl8Hp3As8zXXPesq
 j8yfVAiPWwQhPzFxQhHgfEz/Q1k++E3H34docvz/Le0LlgxW4i2xuF0l+
 pq+PY830uMIQGO3IiexFamDqaaMaVJkiv94uYxA0bBok50CWMjpkX5miL
 niNHuxlXv5TyDSUKR6DYlw0ccHiXA7Iwaz/QdrKHiE+q1jG9yOuPISPNY
 STFNcXmLl9vWCd3SFnFSTaEs3b0V0LV4lHph1bUjRI1kf1jiN7rr78vI6
 fRpDqBhH9LzUqqSVazma+/YZEhDG6nGK4vxod2/JYe0OXgq+YgJtJ4GRc
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JC3YSi1R
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix out-of-bounds KASAN
 warining in virtchnl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 21, 2022 at 05:37:26PM +0100, Alexander Lobakin wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Date: Wed, 21 Dec 2022 10:27:46 +0100
> 
> > KASAN reported:
> > [ 9793.708867] BUG: KASAN: global-out-of-bounds in ice_get_link_speed+0x16/0x30 [ice]
> > [ 9793.709205] Read of size 4 at addr ffffffffc1271b1c by task kworker/6:1/402
> > 
> > [ 9793.709222] CPU: 6 PID: 402 Comm: kworker/6:1 Kdump: loaded Tainted: G    B      OE      6.1.0+ #3
> > [ 9793.709235] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.00.01.0014.070920180847 07/09/2018
> > [ 9793.709245] Workqueue: ice ice_service_task [ice]
> 
> [...]
> 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> > index 4b78bfb0d7f9..a24b5cb95039 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_common.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> > @@ -5562,7 +5562,7 @@ bool ice_fw_supports_report_dflt_cfg(struct ice_hw *hw)
> >   * returned by the firmware is a 16 bit * value, but is indexed
> >   * by [fls(speed) - 1]
> >   */
> > -static const u32 ice_aq_to_link_speed[15] = {
> > +static const u32 ice_aq_to_link_speed[] = {
> >  	SPEED_10,	/* BIT(0) */
> >  	SPEED_100,
> >  	SPEED_1000,
> > @@ -5577,7 +5577,8 @@ static const u32 ice_aq_to_link_speed[15] = {
> >  	0,
> >  	0,
> >  	0,
> > -	0		/* BIT(14) */
> > +	0,
> > +	0		/* BIT(15) */
> >  };
> 
> I warned Jesse that no index check might cause out-of-bounds walks
> and here they are. I suggested the following back then:
> 
> 1) Don't define any zeroed elements and elements with
>    %VIRTCHNL_LINK_SPEED_UNKNOWN. Don't define explicit array bounds.
> 
> 2) In ice_get_link_speed():
> 
> 	if (index >= ARRAY_SIZE(ice_aq_to_link_speed))
> 		return 0;
> 
> 	return ice_aq_to_link_speed[index];
> 
> 3) Same in ice_conv_link_speed_to_virtchnl():
> 
> 	u32 index = fls(link_speed) - 1;
> 
> 	if (adv_link_support)
> 		return ice_get_link_speed(index);
> 	else if (index < ARRAY_SIZE(ice_legacy_aq_to_vc_speed))
> 		return ice_legacy_aq_to_vc_speed[index];
> 	else
> 		return VIRTCHNL_LINK_SPEED_UNKNOWN;
> 
> This could go as a fix to net with no problems.
> 

Sounds reasonable, I will do it in next version, thanks.
> >  
> >  /**
> > diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> > index d4a4001b6e5d..5f754d41f345 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
> 
> [...]
> 
> > -- 
> > 2.36.1
> 
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
