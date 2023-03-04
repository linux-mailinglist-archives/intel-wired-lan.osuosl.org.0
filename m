Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B35D56AAC0C
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Mar 2023 20:06:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA82D41602;
	Sat,  4 Mar 2023 19:06:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA82D41602
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677956815;
	bh=3hx5RukyXhymUZNLHjIlY9nbE147YC3nljWx3yKEj4U=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AMOjLXTvMQQTnJHYtQW3OMXOXJKuwc8qs4+4H2s7irFqx4PMwo+Lrgp8JDzpdyZX/
	 cpBmfX4Hu0gz1hI/hivG1pADs37maSkoBdKHwEiZKpAABz0+06qwENZK+pceJ8bT7h
	 5TqJly8Eh+Yr8ByKJCbblX8/ZE4Ap62MwviIC2SrZYQudKI6pXaw8n0w6FamCtrxeY
	 LTCsAtk/kMGPuBrYKM8yTPpQnrv5XBiJEqb/IQxUgPFRVnHs0YZ8DOjSWXbwIktnCl
	 DPiJtFPuDi7meSM50L6WJXq/yPO7bilHRqlI0C4dyngNGwU4lE4WxPhbjbGN/n5vY0
	 5CYDGBpwTnA7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FKHRUEBr4hVD; Sat,  4 Mar 2023 19:06:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7888415FF;
	Sat,  4 Mar 2023 19:06:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7888415FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 384961BF337
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 19:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D08F81EAF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 19:06:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D08F81EAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ndnRcVPqoFtY for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Mar 2023 19:06:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D7FB81EAD
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1D7FB81EAD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Mar 2023 19:06:47 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id CC54FB80861;
 Sat,  4 Mar 2023 19:06:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B347C433D2;
 Sat,  4 Mar 2023 19:06:42 +0000 (UTC)
Date: Sat, 4 Mar 2023 11:06:41 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
Message-ID: <20230304110641.6467996b@kernel.org>
In-Reply-To: <20230304115626.215026-1-vincenzopalazzodev@gmail.com>
References: <20230304115626.215026-1-vincenzopalazzodev@gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677956802;
 bh=llPqKaSk8yrwRDfiaCFBbc4Rc64fzYfNkvIE/ve5xro=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CuynGzRaIPdUnKhPurzae1GC70tRn7poznmyzlKkq2GwcBTieSBASVphWX5zAvxW2
 bd4eqRcEMJ4AQnxp1jqFIxuoHJgYAEoOSVQCxQnnxqEkn3bXFlLRw+wV+BkYXU1Aup
 fQxmFuoTjMqvbPFPkd2jJt+pOPOR/6uCTFivTmDAtE2xXRUmX4OZUd0c0oaI8lc+Jb
 E51W9h5kd1QX4kX4bOpwgXkFS13iZ0NS/1IhZNM6FBVjemIOCY5/0Dt63HaaVIOkUF
 YCPlnPVQwraH0CYW/jl+/IcQu9PzD+0yg56xbRLH83F5qqRAQAUUj6K4mYabsM7Wvk
 RyVvAvGYjjHNQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CuynGzRa
Subject: Re: [Intel-wired-lan] [PATCH v3] netdevice: use ifmap instead of
 plain fields
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, khc@pm.waw.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat,  4 Mar 2023 12:56:26 +0100 Vincenzo Palazzo wrote:
> clean the code by using the ifmap instead of plain fields,
> and avoid code duplication.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Link: https://lore.kernel.org/oe-kbuild-all/202303041847.nRrrz1v9-lkp@intel.com/
> Signed-off-by: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>

Please don't, as already explained it's not worth the code churn.

Nacked-by: Jakub Kicinski <kuba@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
