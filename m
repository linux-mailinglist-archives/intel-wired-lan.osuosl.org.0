Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1322619CC6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 17:14:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12EA74189B;
	Fri,  4 Nov 2022 16:14:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12EA74189B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667578476;
	bh=4yfPQL+joQui8XB0ARcmihlKXCjdCw55zvqBuh9wupM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hNiPmpajbqpbN2SoCnOI0QDCYkXIOHMzvEzvtdYcZKJKue43xQa0fZF4qBlBuRmPQ
	 J7Dt5c8iEhkvYTHOBXqJU5onjUV8Wz2tsn9zYrjmfb6H828ls3Lnlt/pvVPmLJwU5i
	 gwdPN4sTCGazYxhO7+bZRu6cL4f9A/ls6q+vODkO+jr2GNfvC9Loi8pwKwk34ZngzK
	 KmegkOF7LicPjVJXbccbsyfr7izePhGVAuEEu9lj6n8C7TKKAnge026ld9B5rST3H9
	 rsVco78GDiZSIyuXAwRaL2cXJugvn8LceKIVH1HSPYJs2QOoMiExX8I8kfjKzKRnY9
	 zQ8GTagezt5NA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wzBbsY9zZyAp; Fri,  4 Nov 2022 16:14:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B989C41944;
	Fri,  4 Nov 2022 16:14:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B989C41944
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8A1CE1BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 16:14:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7173261130
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 16:14:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7173261130
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tYkmr6Knwm23 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 16:14:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8C5C61123
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8C5C61123
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 16:14:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="290395662"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="290395662"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 09:13:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="740676006"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="740676006"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 04 Nov 2022 09:13:11 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2A4GDANB005967; Fri, 4 Nov 2022 16:13:10 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>
Date: Fri,  4 Nov 2022 17:10:19 +0100
Message-Id: <20221104161019.2385204-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <PH0PR11MB561148FC5F7A5E6AE10C1FA385399@PH0PR11MB5611.namprd11.prod.outlook.com>
References: <20221025072705.1270255-1-andrii.staikov@intel.com>
 <20221026164445.56155-1-alexandr.lobakin@intel.com>
 <PH0PR11MB5611A463FA999509D6CA914C85379@PH0PR11MB5611.namprd11.prod.outlook.com>
 <20221102115008.3067605-1-alexandr.lobakin@intel.com>
 <PH0PR11MB561148FC5F7A5E6AE10C1FA385399@PH0PR11MB5611.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667578468; x=1699114468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TkQ/jh6TgZ8LhgiDxFfXNlHPpwm9AqN5YLhRdeN1Bic=;
 b=U1TxgsXwiZLSxiiAQSAJz8C0uTV98EO5P4MATjHA0i68cS9zE3NpZi1z
 v+efZV/+7Oxp+ybwU5nMT/fVfH+fJl1xPB5NILldQJchANyyTJVQQL8CA
 qhgRxDTAqnI2rM4pOev2B2rBPcNcvwv5zPMygAdxFSFbujxy5pRaZhiIb
 UXqlKrY6sl1SvLOcdIS6YOWG8a7RGMxFV+sEoyPNg0kR00SOrjq79SYeG
 oQBVnV81DmoAeXsrpTgTOloqzlcDEWia60FGZ7syCMgt9toNsn2f4xhOm
 oCX3fqlWx0FI+inJ1QoWwgnD/+E4hnl9/kSsCZCimNa4aAcaJzsITUL3Y
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U1TxgsXw
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix crash when rebuild
 failed in i40e_xdp_setup
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Staikov, Andrii" <andrii.staikov@intel.com>
Date: Wed, 2 Nov 2022 14:04:43 +0000

> >> From: "Staikov, Andrii" <andrii.staikov@intel.com>
> >> Date: Mon, 31 Oct 2022 08:30:59 +0000
> >> 
> >> >From: Andrii Staikov <andrii.staikov@intel.com>
> >> >Date: Tue, 25 Oct 2022 09:27:05 +0200
> >> >
> >> >> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> >
> >[...]
> >
> >> >> Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop
> >> >> actions")
> >> >> Title: i40e: Fix crash when rebuild failed in i40e_xdp_setup
> >> >> Change-type: DefectResolution
> >
> >Those two tags shouldn't be here BTW, only Fixes and SoBs.
> >
> >> >> Signed-off-by: Sylwester Dziedziuch 
> >> >> <sylwesterx.dziedziuch@intel.com>
> >> >> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> >> >> ---
> >> >>  drivers/net/ethernet/intel/i40e/i40e_main.c | 155
> >> >> ++++++++++++++------
> >> >>  1 file changed, 112 insertions(+), 43 deletions(-)
> >> >
> >> >[...]
> >> >
> >> >-	old_prog = xchg(&vsi->xdp_prog, prog);
> >> >+	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
> >> >+		i40e_down(vsi);
> >> >
> >> >Please don't. Unconditional down-up was removed from i40e, we've made XDP hotswap in ice in our recent patch queue and now you're trying to effectively revert all that ._.
> >> >You don't need any interface actions when there is a prog and you want to install a new one as well, just RCU the pointers and that's it.
> >> >
> >> 
> >> Can you please elaborate on this. I am not an author of this commit so it's hard for me to grasp what you are talking about.
> >> Are you suggestion just leaving old_prog = xchg(&vsi->xdp_prog, prog); instread of the part that was added?
> >
> >if (!!prog == !!old_prog), you shouldn't do any resets/reallocatiions/etc, please leave it just how it was before (when they were being done conditionally on (need_reset)).
> >Otherwise, you'll kill prog hotswapping by trying to fix this splat, which would be a major regression.
> 
> Sorry, but it's still not clear for me what changes you are asking for.
> In your email you are refering to this part only:
> -	old_prog = xchg(&vsi->xdp_prog, prog);
> +	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
> +		i40e_down(vsi);
> 
> Are you requesting reverting changes of the whole i40e_xdp_setup function or some specific ones related to (need_reset)?

It's a reference to that you now perform resets unconditionally, not
to a particular piece of code. I guess the best and quickest way for
you is to contact the author and let him fix this and publish to the
upstream MLs.

> 
> >> 
> >> >[...]
> >> >
> >> >> --
> >> >> 2.25.1
> >> >
> >> >Thanks,
> >> >Olek
> >> >
> >> 
> >> Regards,
> >> Staikov Andrii
> >
> >Thanks,
> >Olek
> >
> 
> Regards,
> Staikov Andrii

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
