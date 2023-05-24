Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EE870FACC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 17:52:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 047F642544;
	Wed, 24 May 2023 15:52:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 047F642544
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684943530;
	bh=nzZVFvSxEriQkzO7AOlx38TEMiu9zYFdur5BKCkiJPM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cA9mnK7pY4Pf6YNnf1D5n4CvtEVvpWAA2yqJ1WeIe/bAc8On1PdQ9SkSU8oFwdOgn
	 vvWDccoVfNy+SndmLP0kYu+1ZdUZS85BTa8gJM8U3mwc3/BG3wJzvApxRqM+2g5DDW
	 +VE9RRDtEcoWJGfaGvFr7AlGckcLclsllfCy76/6nCxzHMwnIW5QZYX2w7FiKsiWkD
	 q3AtVEjeh+MaNTTfpHWupI5pgbaQeW5efY9DVOHvYrIH+itn2rIdTwfJRo1Ybw9bG+
	 Jc60GRFgKWsN7yQ8kusq2n5MPX4i2nTylsr081XderB3igUIGcwCLp507EHEMs8Je9
	 Ks+8Y3twLUZgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id njD8jw56Isbp; Wed, 24 May 2023 15:52:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 892FF41F48;
	Wed, 24 May 2023 15:52:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 892FF41F48
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B88851BF325
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 15:52:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90D9340420
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 15:52:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90D9340420
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id THMLDKSVT6L7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 15:52:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEAC4401AD
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AEAC4401AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 15:52:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9B4536311B;
 Wed, 24 May 2023 15:51:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A7C3C4339C;
 Wed, 24 May 2023 15:51:58 +0000 (UTC)
Date: Wed, 24 May 2023 08:51:57 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Message-ID: <20230524085157.59aeebea@kernel.org>
In-Reply-To: <20230524100203.28645-1-jiapeng.chong@linux.alibaba.com>
References: <20230524100203.28645-1-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1684943519;
 bh=XWnQo/qdI9QS7Vl/TkbgebkpbwZYMFbbX7jgoE+jOEU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oDrl9cg8f/SvTELCMV33pKctM2szKyacR/eO0Q1jQWAeWTh1hfYZQswJbhdxGIMUC
 0MSuSHsyWEV9Ug+dOST1xVUsLbbw02/1PSnW21LIURe5MvLfnGO5G9O3G4nWOwwfUg
 EYIUQpTzudn4A2vwvmDTC0nEFbHx0pcVCueQ6AE44lvgUEkhP3Ah6SfexPa9+rFgob
 c5DVRTFSSQTzSeyyAQZ7wXnt8BXSzxYSY/9fr96DZo3t0RaX3BZoSJ3vfpa5viqWHS
 p1tvAPVGKzt6wZnc3DALBTJvuA5CH8sRJGc01fmyWGO4iv37LtAu6cg1i//5ymOr72
 JtPRTaJ+jTKXQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oDrl9cg8
Subject: Re: [Intel-wired-lan] [PATCH v2] iavf: Remove useless else if
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
Cc: netdev@vger.kernel.org, Abaci Robot <abaci@linux.alibaba.com>,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 24 May 2023 18:02:03 +0800 Jiapeng Chong wrote:
> The assignment of the else and if branches is the same, so the if else
> here is redundant, so we remove it.
> 
> ./drivers/net/ethernet/intel/iavf/iavf_main.c:2203:6-8: WARNING: possible condition with no effect (if == else).
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Closes: https://bugzilla.openanolis.cn/show_bug.cgi?id=5255
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

Looking thru git history most of the patches you send for this check
are converting perfectly valid code. Please change the check to ignore

if (cond)
	/*A*/
else if (cond2)
	/*B*/
else
	/*B*/
-- 
pw-bot: reject
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
