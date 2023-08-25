Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC670789284
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Aug 2023 01:51:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2535C83ECF;
	Fri, 25 Aug 2023 23:51:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2535C83ECF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693007492;
	bh=4I6qaCetLM+pDKagi7fFgnTmWGPcoL6wYr3EwVptinU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0gF7BjNopELx+9nNN8qKKDEA7oTfSwZRFs8jLUcktVlyFUIvxmV0IU6HDCLrIYcXO
	 fzxIqhQG5lrDCyk3GWJCpRzGNZqgqjOH+M+SvZYqRgDGufNYDGuO4KhizrIEwYBSzu
	 1JcNO+fnbFnfeaVzByfHiWzI+Hmvdk+VjFnsi/g0v7g2pzysWHvd7Hc8P30h8dvBiD
	 juIl8jMqRnRqbbq7PmA3l9z2neJpExmSziU7TRiFBZbsZvbucKJG1IiGOBTXpth1zt
	 RR0mXhQ/42iBlW/0GVRHMtvY0BZznQHp2ir0fX9Y2BY2a3n+JMyqcm/P7+U52BXjzi
	 oCGE31O5aGpSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j3Ufnve4e_cH; Fri, 25 Aug 2023 23:51:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 275FC83EBD;
	Fri, 25 Aug 2023 23:51:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 275FC83EBD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 666241BF59C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 23:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 351E083EBD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 23:51:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 351E083EBD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1eK27EoM2XYC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 23:51:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A5BB983EBC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 23:51:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5BB983EBC
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="373699373"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="373699373"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 16:51:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="911446172"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="911446172"
Received: from rtallon-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.111.120])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 16:51:17 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Ferenc Fejes <ferenc.fejes@ericsson.com>, "jesse.brandeburg@intel.com"
 <jesse.brandeburg@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "sasha.neftin@intel.com"
 <sasha.neftin@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "anthony.l.nguyen@intel.com"
 <anthony.l.nguyen@intel.com>
In-Reply-To: <87ttsmohoe.fsf@intel.com>
References: <0caf33cf6adb3a5bf137eeaa20e89b167c9986d5.camel@ericsson.com>
 <87ttsmohoe.fsf@intel.com>
Date: Fri, 25 Aug 2023 16:51:16 -0700
Message-ID: <87o7iuof4b.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693007484; x=1724543484;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YI8Mb/8zWyLdXKtk/iagfKn58875Yl9J3N5bmaD7nOE=;
 b=fA+439vWYNOngQL8z8/65w+ypwkeLx3RgaCCg6bTMJzyoDnmMcS4mHQJ
 wdXUDZoC1c057Pyx7dlQoEkRs7izegU/6lGEzIl979W27K7x/CYB9ZmiC
 xrs6vK5pWXGek+k9cBSFw0kwKuccp809igTUGAWBtDKEBUXhQ6B76rzxl
 Huqm0/Ti18dGcWFAUs+7QWMxnfplvb4QfEgOoNF0novENaDh09EQhhaXE
 OfCNmEwfpGXRyIePb4vhrIrK3MrVlhuimy7nyEAMp2IwrASDEz7XzNHMA
 PBZ6N0DsGQUMbCXaiEJ5dkIc1KNU0xOcxW+laHixh/jbf03IzWXWeirBi
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fA+439vW
Subject: Re: [Intel-wired-lan] BUG(?): igc link up and XDP program init fails
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
Cc: "hawk@kernel.org" <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Ferenc,

Vinicius Costa Gomes <vinicius.gomes@intel.com> writes:

> Hi Ferenc,
>
> Ferenc Fejes <ferenc.fejes@ericsson.com> writes:
>

[...]

> I don't think there's anything wrong with your setup.
>
> I am considering this a bug, I don't have any patches from the top of my
> head for you to try, but taking a look.
>

See if the following patch works. Doesn't look too bad, but I have to
think a bit more about it.

--8<---------------cut here---------------start------------->8---
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index e7701866d8b4..d1b3c897c3ac 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6462,7 +6462,7 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
 	struct igc_ring *ring;
 	int i, drops;
 
-	if (unlikely(test_bit(__IGC_DOWN, &adapter->state)))
+	if (unlikely(!netif_carrier_ok(dev)))
 		return -ENETDOWN;
 
 	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
--8<---------------cut here---------------end--------------->8---

Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
