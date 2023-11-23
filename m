Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C28A7F63EB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Nov 2023 17:27:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A93A42029;
	Thu, 23 Nov 2023 16:27:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A93A42029
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700756871;
	bh=MabD/YuRBHWnsC2wUud2+fKH1yuAq3PkulGE6b4AFU0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KHGt5Gs8hPbLFLFoso4XU15WhmFkoPAgZpNVm6urEO4dvBW8yLMaiiAPoodRUlUHQ
	 j7D+21GktyD1vd4rULYMw1gB1yhMhGOrXEXpP2YF8YGAUk1fp4AoiJrRm/NnKD5XxS
	 AUBHtfKTAjQSucETR772CcSmrEsX7Hm2d1Xps/0YeU8r4uNTwQ3GUnW/Le+ijp0OS6
	 42RvEoWsYkahHUKWmnj1KyVphqWonL0f4waYRsHo5wK6YvTSL/j7kwpYzBU0p81Dvi
	 gePOShyy57N07mJnu/bEkaO6hcbcKpem7bPuYSrdmed/DH3iyFtF6vyZ3zNWPLqfac
	 bflCnY/fBqhEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id flAX4XAmEDBn; Thu, 23 Nov 2023 16:27:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 128CB41FDC;
	Thu, 23 Nov 2023 16:27:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 128CB41FDC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F18541BF316
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 16:27:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C5739820DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 16:27:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5739820DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GbZZgnpaD79k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Nov 2023 16:27:44 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0307C8202C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Nov 2023 16:27:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0307C8202C
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id D5BBFCE2AE2;
 Thu, 23 Nov 2023 16:27:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28EB7C433C7;
 Thu, 23 Nov 2023 16:27:38 +0000 (UTC)
Date: Thu, 23 Nov 2023 08:27:37 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Gal Pressman <gal@nvidia.com>
Message-ID: <20231123082737.471727c0@kernel.org>
In-Reply-To: <96d16597-12a7-4574-9c22-98a1b70bc21a@nvidia.com>
References: <20231120205614.46350-1-ahmed.zaki@intel.com>
 <20231120205614.46350-3-ahmed.zaki@intel.com>
 <20231121153358.3a6a09de@kernel.org>
 <96d16597-12a7-4574-9c22-98a1b70bc21a@nvidia.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700756858;
 bh=wVpcKEukuhQXLMX9GwSa/WB7vbnjtJeSjgYXrT7QprQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iZ3njrX2vdIERXA1O9SLwM8vaKmHgvRv/BcDebBRtBRvYUvcTJ6w4E/Jz4WCzl1NC
 +pAzEdxmZbtrgiIN4jdKdkHqpYrfiajD4MPcMRcQVFZAwuxoj11x2Miqd5G7h2KzX3
 /TMbssJ2arDIJbWxI/L0MnX/3Dw34KdgPUyBRJhy8OQqSuJDHHM/8ncrbKmxgzaisF
 X9U64xNH8/akOJY38HkXP1NQcKDZ3VrYuByEuwyU2/kCmCvB49H0RhG95kC5/r8XKS
 aIhfHONjU/HgDNo9VqkYOCciant6YcueLKjp6gbc1YOdFaJQ0LmvBVEyvfwZmRIH+d
 /ImJYTTrucdNA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=iZ3njrX2
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/7] net: ethtool: add
 support for symmetric-xor RSS hash
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, vladimir.oltean@nxp.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 23 Nov 2023 15:33:04 +0200 Gal Pressman wrote:
> On 22/11/2023 1:33, Jakub Kicinski wrote:
> > Last but not least please keep the field check you moved to the drivers
> > in the core. Nobody will remember to check that other drivers added the
> > check as well.  
> 
> The wording of this sentence is a bit confusing, so I might be repeating
> what you already said, but this patchset needs to make sure that drivers
> that do not support the new symmetric flag return an error instead of
> silently ignoring it.

Ah, good point! That, too.

I was referring to what changed in v5, from the change long:

  v5: move sanity checks from ethtool/ioctl.c to ice's and iavf's rxfnc
      drivers entries (patches 5 and 6).
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
