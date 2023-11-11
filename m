Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 360EA7E8C2C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Nov 2023 19:41:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDE2941E50;
	Sat, 11 Nov 2023 18:41:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDE2941E50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699728072;
	bh=Rx324LH4Q9ZeJMW3FJHt/iVk1cf5LqmGLCJQZEdmJ3w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uhprBAbMEHi8l7IwcQGH8/IwInS0fz+6wbUrUl09lHJInyg2N+GhQ1e6JxqJBFsZZ
	 jarAjNSWkzaYRBEwG0Ly4xWaDw+stwWwNQvskvI/5N5IGA2BkCLY8TVs1VtQrHjoNB
	 JwbmzsUb651lz7SvR23kJJrSj+BauZfV3SCFcVBOqeLWZgjqdEQbtlAq4mrmUWsaVq
	 SECNKYtOji6hR9uoRo8gUP6zv8bQ3QR3eU5Fbw8IIo/e9BveGiWUPk+70gxFg/cnXB
	 Pl6QzlyW1x/+yjZJFb1GXWGXaZll+EoDIZDqcJLyiyK8luPIuv9tHBBVRBuz5dHU8K
	 WxK5Ds9glC0sQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YFdhRHHZbWNi; Sat, 11 Nov 2023 18:41:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4BB941DCE;
	Sat, 11 Nov 2023 18:41:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4BB941DCE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 558D11BF36A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Nov 2023 18:41:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28CAA82321
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Nov 2023 18:41:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28CAA82321
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p8j7Iuxv21yp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Nov 2023 18:41:05 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 788FF8231E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Nov 2023 18:41:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 788FF8231E
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 6A80FB80B6F;
 Sat, 11 Nov 2023 18:41:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3757C433C7;
 Sat, 11 Nov 2023 18:40:59 +0000 (UTC)
Date: Sat, 11 Nov 2023 18:40:52 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231111184052.GA705326@kernel.org>
References: <20231110081209.189481-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231110081209.189481-1-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1699728062;
 bh=RX3cBdIDKqcF57RnJqTIKKb8tzO0jX/53K43wpZkfaM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JX9ST7pmqRLghGLS7zyNC/HocKeBpovpuRqw2Jz/p4XuyrOJsalbi4mZAUH6uMJIb
 PnOlPrZFvJjmwcOB/NioYCw3uHkliZo6fxI07BuFd1hGgL36EsGTrnd0tEzjcU4s/V
 rqRPeAXjS5dz6OASQzkqo6NeXtvogL7YYeL3TzuR9/UMJx898K+9nKemVYLo2piWAA
 1pp7Mt46U53NRvaIf9Ixp26m58ew93Tw00a6QorCxFgI+XsAG/W+Yq0l5qVbxzTsAW
 WRda9xI6nX3+Yk3tzHYCDYeFAfWHPEDa4Qs+qP/njhdzwNIrMqJBCJ0+Y8GNuwi1bC
 OxqSHSguRaqxQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JX9ST7pm
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix unexpected MFS
 warning message
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 Todd Fujinaka <todd.fujinaka@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 10, 2023 at 09:12:09AM +0100, Ivan Vecera wrote:
> Commit 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set") added
> a warning message that reports unexpected size of port's MFS (max
> frame size) value. This message use for the port number local
> variable 'i' that is wrong.
> In i40e_probe() this 'i' variable is used only to iterate VSIs
> to find FDIR VSI:
> 
> <code>
> ...
> /* if FDIR VSI was set up, start it now */
>         for (i = 0; i < pf->num_alloc_vsi; i++) {
>                 if (pf->vsi[i] && pf->vsi[i]->type == I40E_VSI_FDIR) {
>                         i40e_vsi_open(pf->vsi[i]);
>                         break;
>                 }
>         }
> ...
> </code>
> 
> So the warning message use for the port number indext of FDIR VSI
> if this exists or pf->num_alloc_vsi if not.
> 
> Fix the message by using 'pf->hw.port' for the port number.
> 
> Fixes: 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Thanks Ivan,

I agree with your analysis that this change corrects the port number
printed. And that the problem is introduced in the cited commit.

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
