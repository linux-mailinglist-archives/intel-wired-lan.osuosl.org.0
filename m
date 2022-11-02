Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D5F61620E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Nov 2022 12:52:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A65A40983;
	Wed,  2 Nov 2022 11:52:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A65A40983
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667389957;
	bh=9Q2onQ3+aGtTQ475Am6TLfKdR+FNSfISZjgOCfbBs00=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DpCeJuvobXZHeS+rcAPm9hFZEAeWFueFdBT37r/XeXWHz/6WreMCVWLyZyGEH/9HL
	 od8BwOjWsxtGOr/fLqEDoFDKM8NHxAJFDzptlEDDw5d++1MUoy9RliOncw9FNHk6jY
	 VhFQ+YVgvmuWAP3o27kTF9DCju0mu5Hhblktn8DxvnviBf87xlUFnlTogXZTE7ncwU
	 YhSoJoWlwvsXPO0Oru+FImdEyoXlzQ68Win239/Bym0ukThN2w4c+J5QtueE5py3ti
	 q2jPB1bH2YSJQXewl+hqc74bUmA34jxRfvzf9JV/Vlsi3jjcKxyacl7tqGSEufphna
	 kheCYANZygThQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id do6noWisvTrx; Wed,  2 Nov 2022 11:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67820408BF;
	Wed,  2 Nov 2022 11:52:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67820408BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B914B1BF831
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 11:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A0B148175B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 11:52:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0B148175B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9lHVuJqXfoK0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Nov 2022 11:52:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC3E581340
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC3E581340
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Nov 2022 11:52:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="373609985"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="373609985"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 04:52:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="703240406"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="703240406"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 02 Nov 2022 04:52:28 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2A2BqRgd002771; Wed, 2 Nov 2022 11:52:27 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: "Staikov, Andrii" <andrii.staikov@intel.com>
Date: Wed,  2 Nov 2022 12:50:08 +0100
Message-Id: <20221102115008.3067605-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <PH0PR11MB5611A463FA999509D6CA914C85379@PH0PR11MB5611.namprd11.prod.outlook.com>
References: <20221025072705.1270255-1-andrii.staikov@intel.com>
 <20221026164445.56155-1-alexandr.lobakin@intel.com>
 <PH0PR11MB5611A463FA999509D6CA914C85379@PH0PR11MB5611.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667389950; x=1698925950;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pIy7yL0c6C0YkQntOv8trMu+Lr1Gb/Y46V98oHau+xk=;
 b=Xt/zTsrOhHwDHY5dxV2lvKA7dTYZ6ufvV+Qj2CArIzDvmRxZROdVpbls
 19IAPjaV/lXs29yRf7H39i5S4Oa2Jwj5oPQD6pld981yScW2/WvZNFooI
 4szzHlxFBUr3Ob/BnEkDR3GN5W9sVYkOItL+9o6Iml4TvioD5dAtIMlZS
 KoXsinFPWxniw1TAyqa/GrCvkEnqLt/0HYskZHNSfjGG97rY1LpmkuVtT
 N2BNqqkHVfO9ZwCkT+9FZFNYFGg1LUvETqYV+CMakLXSUQlwFqchv6av6
 3A0+FIOYLpLMGdvVnR2riMKhsAjNz5cUOh4FQBXRggsHxZS5biLJdEvRQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xt/zTsrO
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

> From: "Staikov, Andrii" <andrii.staikov@intel.com>
> Date: Mon, 31 Oct 2022 08:30:59 +0000
> 
> >From: Andrii Staikov <andrii.staikov@intel.com>
> >Date: Tue, 25 Oct 2022 09:27:05 +0200
> >
> >> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

[...]

> >> Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop 
> >> actions")
> >> Title: i40e: Fix crash when rebuild failed in i40e_xdp_setup
> >> Change-type: DefectResolution

Those two tags shouldn't be here BTW, only Fixes and SoBs.

> >> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> >> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> >> ---
> >>  drivers/net/ethernet/intel/i40e/i40e_main.c | 155 
> >> ++++++++++++++------
> >>  1 file changed, 112 insertions(+), 43 deletions(-)
> >
> >[...]
> >
> >-	old_prog = xchg(&vsi->xdp_prog, prog);
> >+	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
> >+		i40e_down(vsi);
> >
> >Please don't. Unconditional down-up was removed from i40e, we've made XDP hotswap in ice in our recent patch queue and now you're trying to effectively revert all that ._.
> >You don't need any interface actions when there is a prog and you want to install a new one as well, just RCU the pointers and that's it.
> >
> 
> Can you please elaborate on this. I am not an author of this commit so it's hard for me to grasp what you are talking about.
> Are you suggestion just leaving old_prog = xchg(&vsi->xdp_prog, prog); instread of the part that was added?

if (!!prog == !!old_prog), you shouldn't do any
resets/reallocatiions/etc, please leave it just how it was before
(when they were being done conditionally on (need_reset)).
Otherwise, you'll kill prog hotswapping by trying to fix this splat,
which would be a major regression.

> 
> >[...]
> >
> >> --
> >> 2.25.1
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
