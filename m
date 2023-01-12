Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3591A667ED5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 20:15:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5231A410B2;
	Thu, 12 Jan 2023 19:14:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5231A410B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673550898;
	bh=xz2CpaxkqUy1pe/m7fWvZtqQ55p6Ov/vk5e/aRh5L/g=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=awGnexTn629HaL3F/0hTw7AfoHah3w4tMJ8d5OZCqHtQlSNxuknl+j9891nbtpKht
	 AUKbhhZTUvkB/JfD5ORu91vqPLbNbSY+vKA9f3SOO2eHm2poT0e/EEkz5QQc8EkecE
	 S4Dfg/6sMi6h6RIn7ba0FiA0lzjUauI4CKu3mzVDH0+WSAuT1P+LqQg63mHHgNOBrU
	 kLok6ZnxJZzX+kseWOnjzLHVZ12x2klSoQAOOI40iUbcApewO6yarnsXqEHcEQgY+b
	 Fd0fP2X0pzze20qV7ZwvV8Y9URrhcBSmJWN1kqtuTZCIwrbwZGv9l3bkEQCefcCkwS
	 WtczdOYT0JLcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ayMEPhiylcos; Thu, 12 Jan 2023 19:14:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27B6C409EB;
	Thu, 12 Jan 2023 19:14:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27B6C409EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EBBBF1BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 19:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D25CC81F23
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 19:14:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D25CC81F23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VBPW7eoyAUmR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 19:14:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E2DC813A4
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E2DC813A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 19:14:52 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 74B9962167;
 Thu, 12 Jan 2023 19:14:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2192FC433EF;
 Thu, 12 Jan 2023 19:14:51 +0000 (UTC)
Date: Thu, 12 Jan 2023 11:14:50 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Message-ID: <20230112111450.2eefe7b6@kernel.org>
In-Reply-To: <DM4PR11MB5293E8540016AA8AB2E139F587FD9@DM4PR11MB5293.namprd11.prod.outlook.com>
References: <20230105120518.29776-1-mateusz.palczewski@intel.com>
 <20230105104517.79cd83ed@kernel.org>
 <DM4PR11MB5293E8540016AA8AB2E139F587FD9@DM4PR11MB5293.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1673550891;
 bh=saV/tQHscwTp/w0sksVXGA/Cjas4M75TH/eZPXFxs0E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RD0NuINsZub50eF9vyt2J/qoHyOAvTVyGS7AFlrck+s6ZbAQ7HtY+tn23UAJhzNZY
 9dhpBWfSbm1HuSvLMi7wTBo7h7Ol6rLplebMPIU4t45/iWOO69km8P5q82OALmPLKV
 4n3Or9IeLxelsy1sYX5TleGNtj9p00Aq/f0NTSFFa2ATosWY+KjBlrHxd3/s5pNoW8
 jd1mS+XOV0hkqGooXDaNfn+vXlvUMxc8YMmNYCgb/3y3z6Ip5y8cGPMWtx+XASaKOv
 mfonPHQT6/wyGlQ6R9zikoZdhIKkQ1YIsnj292wUzHN6DX6A0Qx9yiFMxyS9JIXuM3
 FbmQ8m7g1AMmA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RD0NuINs
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix deadlock on the
 rtnl_mutex
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "leon@kernel.org" <leon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 12 Jan 2023 13:31:06 +0000 Palczewski, Mateusz wrote:
> >Why do cases which jump to err_vectors no need any changes?  
>
> During my testing I saw no issues with cases when goto err_vectors
> were used. Did You manage to have other results? 

I'm just reviewing the code.

Exhaustively testing all the cases is probably very hard,
which is why we generally try to reason about the code
from first principles.

IOW "it didn't fail in my testing" is rarely a sufficient proof
upstream.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
