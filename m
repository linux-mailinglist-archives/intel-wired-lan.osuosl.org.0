Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 579D17B8C57
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 21:18:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA1B542208;
	Wed,  4 Oct 2023 19:18:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA1B542208
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696447090;
	bh=fIPGKbIjiqSERRQEBVGDsp9uPv2RtZZmPWMidyvhLTQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uhiy2Bs/Aoue7hMSfrTh9niyodZNxm0ys9WE2w8ZIkSLiD2J/gxQquRRjO897aQWl
	 YtQ5kGKt4kXibYRjlqN0q6Ys8/9OKMGrSnMRk2cBhoVihfKJ3sEZGuQGfgszQRJrHu
	 JavTWP3jAHFKlHmAewo3Wd8R6mPcgyMxf2tK/pO9hQ4EJiTQ6oMRPSYujceVIZeo3x
	 MuwAvMW9btVxjkLuZM4XqYDh8ZLBxh9AVJMbGOJHn5QV4aNXtSrA+lAYxSItGV3wC/
	 lDABbxYM8Lu5BXdYtJtqUPj0tYdT44TN82w5AbqxvIsubkHLpDqupGcxPpw9uG3Goh
	 JTx4cMUfdOuuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qXH8Z0_k5g5H; Wed,  4 Oct 2023 19:18:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 694F8421FF;
	Wed,  4 Oct 2023 19:18:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 694F8421FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68AE21BF41F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 19:18:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3FF8360BDB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 19:18:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FF8360BDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C1zJ6AxOJ1-N for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 19:18:02 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C9C660BD1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 19:18:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C9C660BD1
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 6314CB82053;
 Wed,  4 Oct 2023 19:17:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AD31C433C8;
 Wed,  4 Oct 2023 19:17:58 +0000 (UTC)
Date: Wed, 4 Oct 2023 12:17:57 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>
Message-ID: <20231004121757.6812fe64@kernel.org>
In-Reply-To: <95a7c916-dd15-624e-3cd4-f9225324df72@intel.com>
References: <20230927083135.3237206-1-ivecera@redhat.com>
 <95a7c916-dd15-624e-3cd4-f9225324df72@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696447078;
 bh=1dS0Z9ElgIFUBEHsLYVsPlKwiqE6Sp4y8ahK1w2rhBg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=prcOQ5bRe94hF2LvEsWOm0VuelDW8/mBkP8Okukn2ssJRhwJjqE30UhiqCuDZE3h7
 pQEHJcFCeaHbR4KIYSTzPB4zeSjnlfVxQaR+FbFqbc0EPwQfzYX8hY9XHz9f4KfDYL
 OE82WHKyKMNOJmzVe4eRjsSPAxe8LUFiTmZtORhvO+7N812m4FehZLYLL9Rtl7/vYE
 /jCgQe9sFSTCGLHzM1qhKkSe23eQWGKcDUE7C9co0Afh8UJ73N0ipk9kdL/15rQpX/
 KgbssMrWq06wN7lSaesnPhHwDmeUYZucNW34YYKLmeEOPL314Sy/ICCqtGEYgdNIgg
 ExBBIRZd+Rqjw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=prcOQ5bR
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/9] i40e: House-keeping
 and clean-up
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 edumazet@google.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 28 Sep 2023 15:12:09 -0700 Jesse Brandeburg wrote:
> On 9/27/2023 1:31 AM, Ivan Vecera wrote:
> > The series makes some house-keeping tasks on i40e driver:
> > 
> > Patch 1: Removes unnecessary back pointer from i40e_hw
> > Patch 2: Moves I40E_MASK macro to i40e_register.h where is used
> > Patch 3: Refactors I40E_MDIO_CLAUSE* to use the common macro
> > Patch 4: Add header dependencies to <linux/avf/virtchnl.h>
> > Patch 5: Simplifies memory alloction functions
> > Patch 6: Moves mem alloc structures to i40e_alloc.h
> > Patch 7: Splits i40e_osdep.h to i40e_debug.h and i40e_io.h
> > Patch 8: Removes circular header deps, fixes and cleans headers
> > Patch 9: Moves DDP specific macros and structs to i40e_ddp.c
> > 
> > Changes:
> > v2 - Fixed kdoc comment for i40e_hw_to_pf()
> >     - Reordered patches 5 and 7-9 to make them simplier  
> 
> spelling: simpler
> 
> Thanks for this cleanup series, the changes all seem sane.
> 
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

I'm marking as "awaiting upstream" but feel free to ask for these
to be applied directly to net-next if you prefer.
-- 
pw-bot: au
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
