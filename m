Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 198AD7F724F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 12:02:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9B6E61511;
	Fri, 24 Nov 2023 11:02:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9B6E61511
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700823739;
	bh=iW9uhVpN0TnBVzt9wMz2pRoi86EKUkMg0yqXxBziWc8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5f9pHAkWn6S85s11twR1qkOuuF2NFqq/qdbBlpBUG+pVvuoAe+5dnzAHiXujUouv/
	 W+hEjWqorJoKA0ZnP7yBSVuH24qYAZuVZfYH+jL69+yPpQ13XqWd6N97k2voL/hyPL
	 4U9etHg8txJy5YrBj5BZiHpA1xQz8JS/FklkNm5g3OjS5mK36NRQrnuRZ9+I4h9An6
	 L/DmsiNsCF0WLXyRjHaA5iQHcPzZBYvO2L+P6viJVsmBKJV/4GLh6bY4q9TGaOGyF9
	 O2ZZpeB4r5p6hpugIlevraodsTJLjkjlrPyJc995xJ9evpjsFO5uBu+Y6RB8L9CWuI
	 XILKDPoXS5stw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VE9whF1ij6Q5; Fri, 24 Nov 2023 11:02:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9675E61502;
	Fri, 24 Nov 2023 11:02:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9675E61502
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 73EE01BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:02:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48512821E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:02:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48512821E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pu25YOSeZZpv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 11:02:12 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0AEB821C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:02:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0AEB821C5
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E25F762136;
 Fri, 24 Nov 2023 11:02:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F8F8C433C7;
 Fri, 24 Nov 2023 11:02:10 +0000 (UTC)
Date: Fri, 24 Nov 2023 11:02:07 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231124110207.GK50352@kernel.org>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-12-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231121211921.19834-12-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700823731;
 bh=TAuekQvbUIp2kEg0QV2/67OHSWj/+A92G8o3FKcZjl4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Xd57WlrC/NQSShYN73rii/vQvmF2T2EXZ2Y3G3MMxnBv64vDctYn5wm+Id0e1FC+A
 Qz+nvgEg09GvcoCoSfwaluYL3kUKv31ienO+tiszxqhKbQi5Bi0qDIaAn/UQf6CJ3f
 VXH+WvESKkeOjIyP++cY45AXIfG+t+xn/+IKJD0q6c/ego2sH0xptWVpL6yJG7ViQ5
 95tcT/D+1TIcM9iUv8DMZMWP7Tbt4gGmTMBD9qaqbLRhuQ028ezwFuUs06jijDjJbE
 4qf0eQKlvZP7XW4Oz75lfxN6Nzl9J4i+YAoCG3ddE+w+oGn1fRMZEx+q8Xvt7gMrlG
 GrJOXDkAPE22w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Xd57WlrC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 11/13] i40e: field get
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 21, 2023 at 01:19:19PM -0800, Jesse Brandeburg wrote:
> Refactor the i40e driver to use FIELD_GET() for mask and shift reads,
> which reduces lines of code and adds clarity of intent.
> 
> This code was generated by the following coccinelle/spatch script and
> then manually repaired.
> 
> While making one of the conversions, an if() check was inverted to
> return early and avoid un-necessary indentation of the remainder of the
> function. In some other cases a stack variable was moved inside the
> block where it was used while doing cleanups/review.
> 
> @get@
> constant shift,mask;
> metavariable type T;
> expression a;
> @@
> -(((T)(a) & mask) >> shift)
> +FIELD_GET(mask, a)
> 
> and applied via:
> spatch --sp-file field_prep.cocci --in-place --dir \
>  drivers/net/ethernet/intel/
> 
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
