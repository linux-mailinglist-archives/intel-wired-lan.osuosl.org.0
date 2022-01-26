Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1E849D2F5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jan 2022 21:00:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 40ADC416DE;
	Wed, 26 Jan 2022 20:00:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MWNn7mjWnrff; Wed, 26 Jan 2022 20:00:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39194410B6;
	Wed, 26 Jan 2022 20:00:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FCC81BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 20:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5987060FAA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 20:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mag1ra2I_NPJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jan 2022 20:00:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3422960FB1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jan 2022 20:00:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 955C9B81AC2;
 Wed, 26 Jan 2022 20:00:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36F55C340E3;
 Wed, 26 Jan 2022 20:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643227200;
 bh=MCzNj8jUcxuRcAWIAa+PfeyM4MMgxGcPjMq9zrhpTGs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Q6JAEOTKnQwEt/yMI+BIzIdBzIY04wa8VhzSbZDTIBdtMEeeL6a5DXn2KRgQ+X/3w
 2rh+EJpNx2qUCh6eW9mHIZ1KCbXZ4cqBDu/dpQlPki4Rv/sUSjoWDDewCXfw6Oh8PU
 Nx6Y8b9u4LszWrPHCxtzWoavIe1SfDSgDZ+k6MraJlYr8pVBPiORIorjA7i8PM+q7/
 xRo+WhpH43GlXL73DpB0Aqhg5nE3eEtGVLqLiOIf2dIXWPsrMOHgirK/gjflOIwN+c
 iXGvVhgmnB1Mc5oFPNsl5+qi5uzp6WsVafjOE7Ln+mCcucZHJ4kHai3GYhvGsdh93f
 yckEbryYSLUVA==
Date: Wed, 26 Jan 2022 11:59:59 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20220126115959.56eee765@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <bb6675f9-63ce-77a2-e4fe-76cc592e5f41@intel.com>
References: <20220126185544.2787111-1-kuba@kernel.org>
 <bb6675f9-63ce-77a2-e4fe-76cc592e5f41@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: remove enum i40e_client_state
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
Cc: shiraz.saleem@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 26 Jan 2022 11:53:29 -0800 Jesse Brandeburg wrote:
> On 1/26/2022 10:55 AM, Jakub Kicinski wrote:
> > It's not used.  
> 
> minor nit, you didn't say if you wanted this to go to net or net-next or 
> add a Fixes: tag?

Right, I'm not targeting net or net-next directly. I should have put
something like "intel-next", probably.

> maybe:
> Fixes: e3219ce6a775 ("i40e: Add support for client interface for IWARP 
> driver")
> 
> > Signed-off-by: Jakub Kicinski <kuba@kernel.org>  
> 
> for the patch itself, it looks fine to me, so if you spin this
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
