Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3546A024F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Feb 2023 06:17:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2EBA4015E;
	Thu, 23 Feb 2023 05:17:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2EBA4015E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677129474;
	bh=wi1RViKl+pqjbg542XTRUkkemOeit1JwC8XMeVYsDus=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B/0HIFYs74i+G18gsnfBGzOe/X7sMXsV4jyyfPEXiGURtQkpWNLgI4+4rIs+Y8LCs
	 OqcSpVH0M/PzuVGi2aiviUJfddQtZuuFrrQE5RR6MAaPfavcTSCelCI/j3Ttv3ziZz
	 RqltmNaNDlP2JyIgZ4nJB46xDFahg1BGNfIPH2WBcPo44DuycQ9kozqcs1eLy/Ce2r
	 dd83cUoptzlwBNQce0RN6g04yH3bIcW/VKN1gcviV+8iXjjd6hzFYr0VO+0Bt3ExVR
	 usLIylkXePf9840a9sTj8QocV9Koi3dCHUioxUEjlmtaO2MKyWJbvcrPbk5eDNazXh
	 lCqhIAkqe6OvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UErVvDOf5XB3; Thu, 23 Feb 2023 05:17:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88C2140141;
	Thu, 23 Feb 2023 05:17:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88C2140141
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 122F51BF844
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 05:17:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAF3A812EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 05:17:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAF3A812EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rlKXPHVsyDGm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Feb 2023 05:17:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21615812E1
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21615812E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 05:17:48 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 9E385B818F2;
 Thu, 23 Feb 2023 05:17:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7DB2C433EF;
 Thu, 23 Feb 2023 05:17:43 +0000 (UTC)
Date: Wed, 22 Feb 2023 21:17:42 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20230222211742.4000f650@kernel.org>
In-Reply-To: <20230222223558.2328428-1-jacob.e.keller@intel.com>
References: <20230222223558.2328428-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677129464;
 bh=RUHLDq+BwbTgrH2AUtwXvSW4iEa6Ln7BXuRs6xH1iSw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=g0elYqauO5caCzGeCrmOL4AtbSzAa9qSJNFIanZxRVXSKMvFkMvgil8FdqSqSNQnK
 tT1axI8lp+SmKfvxmoI/OU3ZadX7PvD47Tl28v/FacYNAf8yBffOsWLyy9seguwZ0N
 K7NXR0exlvQ7jNlOCUoewMbNzCLd32lpKsFIjJG2zZwi7e2XOW/NB1Gckz6XGYsffk
 l4ZF8HMuhyauCYBM4vvjqJTEKm0dov7XTL0St9LoJE7fldX6KupnEEmOcOzEdizDVc
 QPsTSyJB7YazscZDa8ZH5yoZ3AeHYhpPrkH9YIXo1s9UWi2wSuzsvlfRdRw9FH9IMC
 m9CpNVRlxlK3g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=g0elYqau
Subject: Re: [Intel-wired-lan] [intel-net] ice: remove unnecessary
 CONFIG_ICE_GNSS
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
Cc: netdev@vger.kernel.org, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 22 Feb 2023 14:35:58 -0800 Jacob Keller wrote:
> I'm sending to both Intel-wired-lan and netdev lists since this was
> discussed publicly on the netdev list. I'm not sure how we want to queue it
> up, so I currently have it tagged as intel-net to go through Tony's IWL
> tree. I'm happy however it gets pulled. I believe this is the best solution
> as the total number of #ifdefs is the same as with CONFIG_ICE_GNSS, as is
> the Makefile line. As far as I can tell the Kbuild just does the right thing
> here so there is no need for an additional flag.
> 
> I'm happy to respin with a "depends" check if we think the flag has other
> value.

Sorry for late response. Do you mean depends as in keeping the separate
Kconfig? IS_REACHABLE() is a bit of a hack, makes figuring out what
gets built a lot harder for users. How about we keep the IS_ENABLED()
but add a dependency to ICE as a whole?

I mean instead of s/IS_ENABLED/IS_REACHABLE/ do this:

index 3facb55b7161..198995b3eab5 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -296,6 +296,7 @@ config ICE
        default n
        depends on PCI_MSI
        depends on PTP_1588_CLOCK_OPTIONAL
+       depends on GNSS || GNSS=n
        select AUXILIARY_BUS
        select DIMLIB
        select NET_DEVLINK

Or do you really care about building ICE with no GNSS.. ?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
