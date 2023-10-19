Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A20557CF3BE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 11:15:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EBD183B90;
	Thu, 19 Oct 2023 09:15:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EBD183B90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697706933;
	bh=8SIjYCcKmaHxu9hCCsAd5338bBqdWh7r7BMWODqwwOY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bqsi1h223QehcxEDaHw0bFboo7dVOhEd/3R4INMCF9eMKMUjBxrttKIFYsjhIsGY4
	 LRty8Sxw3thXqrR7HghAsNf/28fOVHzf1LyqCjv/eDVK0Hufq5jTX+6KW+BBdVkxMN
	 AizDbOkXS9jNM6vBxAnezcgmx4tFl097JEf25CgcRqrnFTP54czpWZSdsnXeCkWFHr
	 VnRY0vPKU3tlMMhQ1Yd4Wnt1Ys5yxzxZqlK3u+OMlRfNZp6DmeEeAyqpzEqjxVbZkd
	 ig/3pE2LK85gRZxCUmum5FO2Uts6kIkcTi8CrW7KX9VRbr4aXEwXYvUv7LVZ1ve0jA
	 h05WchJSo3+8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rZ9XtVDhvRFq; Thu, 19 Oct 2023 09:15:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B68783B7E;
	Thu, 19 Oct 2023 09:15:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B68783B7E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C11801BF479
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 09:15:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91F5E4214D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 09:15:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91F5E4214D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ai3kJQi6ANbp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 09:15:25 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4828B4214B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 09:15:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4828B4214B
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 8FD51B82737;
 Thu, 19 Oct 2023 09:15:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1780C433C9;
 Thu, 19 Oct 2023 09:15:19 +0000 (UTC)
Date: Thu, 19 Oct 2023 11:15:17 +0200
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231019091408.GA2100445@kernel.org>
References: <20231018112621.463893-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231018112621.463893-1-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697706921;
 bh=2akR1+SpClZT3e4hW3GUBKo4hbbNfLPH+FJFcgjS+bQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NDw9mOxaxTwpIG2OLQXoJ0CTEuTsLDqvqLHgBr9mmasIrMuTajY6NHR2Lyp8kgko6
 d4U8sANg22+MMNy2oqQ2OSdIgdmMJamlgzMkYRMyp1LiPWEsQFCCXrYG+KB9s9ROA6
 xrGm9sIN/VYicmTIOc2PRrZHF0zprsL+JeaHthvLwlsKzaB7CqNBLgHapoVQ0xfmNS
 fEpb0MVH2Rxi8hOXbP4pIFEwrbKXxQorzEod3798LFEhxycRFVGFPYJO2X/E3npYjx
 /veSJeNpceDqBEWxRwbj3qneTmQEmzUOwpDBaggyRdFFT7LeLAZjB0uzOvwZ8xtJ3D
 LHb3jjr7cIK7g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NDw9mOxa
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix
 I40E_FLAG_VF_VLAN_PRUNING value
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 18, 2023 at 01:26:20PM +0200, Ivan Vecera wrote:
> Commit c87c938f62d8f1 ("i40e: Add VF VLAN pruning") added new
> PF flag I40E_FLAG_VF_VLAN_PRUNING but its value collides with
> existing I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED flag.
> 
> Move the affected flag at the end of the flags and fix its value.
> 
> Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Hi Ivan,

I agree with the correctness of this patch and that it was
introduced by the cited commit.

However, I do wonder if, as a fix for 'net':

1) The patch description could include some discussion of
   what problem is resolved, and, ideally, how I user might
   get into such a situation.

2) The following fixes tag is appropriate.

Fixes: c87c938f62d8 ("i40e: Add VF VLAN pruning")

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
