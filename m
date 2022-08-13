Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B1A5917BA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Aug 2022 02:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D06C41918;
	Sat, 13 Aug 2022 00:06:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D06C41918
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660349163;
	bh=ZiwLGSxrjVshFT11sFrEQhWbrANF1Qwveg302jQlgsQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pUiUsD1j50UUQeDe6zopUjoUXTKvoHvp0HcgOQccPmMtaI+ZrdHCrmPQOyP8b7jR4
	 jnB5mbzFuZrCvikYRbPx4T9BkN/3XauZPC3DvPu5XghQseRa7Krs8wA7NkbH9NXyGt
	 cZIfdJHaGMqs04pLyNi1d0x6BuxOzPeM6RYQKPMrD1Ki2jGSMaW24J7SwNdQChBH8g
	 p4Fw6mCZj87SJngnHkv9g0rIhei3cXpDH2V7eHNjE0d0cpYCcFiNBPlDy8qw1pZaQ1
	 z6gz6huSyDw53S/zE7pmRHjQSGtVvQ4kdies1Zr7FWSSe5MYQ+hWpmlfKuugL35+wh
	 xm0R86aH7I8rQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9jYXmUn2RvZg; Sat, 13 Aug 2022 00:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C137418D2;
	Sat, 13 Aug 2022 00:06:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C137418D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1FB081BF27A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Aug 2022 00:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E4EF383490
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Aug 2022 00:05:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4EF383490
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q1V1y9KFiC6w for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Aug 2022 00:05:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D59C583409
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D59C583409
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Aug 2022 00:05:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="289280228"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="289280228"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 17:05:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="933897974"
Received: from vedsingh-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.2.208])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 17:05:52 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: James Hogan <jhogan@kernel.org>
In-Reply-To: <4759452.31r3eYUQgx@saruman>
References: <20220811151342.19059-1-vinicius.gomes@intel.com>
 <20220811202524.78323-1-vinicius.gomes@intel.com>
 <4759452.31r3eYUQgx@saruman>
Date: Fri, 12 Aug 2022 21:05:41 -0300
Message-ID: <87o7wpxb1m.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660349154; x=1691885154;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/unn/GWSSxZQI3S+V3HdZHplY4oCOpStK/WAzsbYOiU=;
 b=atm2TGLlNvcdZTAdN2SOqKYmtLRXPB3S9BP7v/tbaQ3FyV+W3oO4g+1D
 IjVUSd3lV2nCUb7cEzBMVsSMlzVpGXC/FSgQ8bEw3ouuYKa4Ru6L87+l1
 hz3Pg5ICt3i7m4P2b9d916/PW5DKart26t7HyNc0AmyKRLjwpj9rw077B
 TxGM81MmwLi8D0U1Kl18G0fVi+aJjxYuSGlmawCz87lfkLO0qfAEs5xJf
 wnH0MJJHztEVu9hjIoGu2/OB6LqQnzBPTnOKv10LptaZbNkzY742ObdjY
 MzpEaDZv60MS193UtFOkFtGlo+xy1LX/i+zXcgOSHtwSlcYFC040fM6iQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=atm2TGLl
Subject: Re: [Intel-wired-lan] [WIP v2] igc: fix deadlock caused by taking
 RTNL in RPM resume path
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi James,

James Hogan <jhogan@kernel.org> writes:

> On Thursday, 11 August 2022 21:25:24 BST Vinicius Costa Gomes wrote:
>> It was reported a RTNL deadlock in the igc driver that was causing
>> problems during suspend/resume.
>> 
>> The solution is similar to commit ac8c58f5b535 ("igb: fix deadlock
>> caused by taking RTNL in RPM resume path").
>> 
>> Reported-by: James Hogan <jhogan@kernel.org>
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> ---
>> Sorry for the noise earlier, my kernel config didn't have runtime PM
>> enabled.
>
> Thanks for looking into this.
>
> This is identical to the patch I've been running for the last week. The 
> deadlock is avoided, however I now occasionally see an assertion from 
> netif_set_real_num_tx_queues due to the lock not being taken in some cases via 
> the runtime_resume path, and a suspicious rcu_dereference_protected() warning 
> (presumably due to the same issue of the lock not being taken). See here for 
> details:
> https://lore.kernel.org/netdev/4765029.31r3eYUQgx@saruman/

Oh, sorry. I missed the part that the rtnl assert splat was already
using similar/identical code to what I got/copied from igb.

So what this seems to be telling us is that the "fix" from igb is only
hiding the issue, and we would need to remove the need for taking the
RTNL for the suspend/resume paths in igc and igb? (as someone else said
in that igb thread, iirc)


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
