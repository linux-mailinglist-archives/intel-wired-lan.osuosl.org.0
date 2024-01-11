Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFD582AF44
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jan 2024 14:12:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3771183F80;
	Thu, 11 Jan 2024 13:12:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3771183F80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704978732;
	bh=oK+SZpxVP9dfPBRC2MhR/At6h6YXSK4ven1Z6Tfv30k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7SJeGOZlUCz1MatdeNlW/MKGKelD2QhJzm8cOuFrPOMwK4gIm3n7PN4lTk66Axo2e
	 ZSKtQxGyAdz/7qbVd9D80C7N1S76hy9NL5lBlvkRR+S4nJHLQn+crmANw1d/O3shcD
	 inydVE02llP+6+uhLi6HRkvJKMpC5vz58Q0LQt+kaAKPVWkPU7Z76aPc7afwZc7DD+
	 m7c8RSk6uKfw81fCYhzLnkFdYQfa0IJiaEL1x6ZMLHMCCkECr3UUONTqCrKV6tTIIw
	 1SPW/GQlLras/3kOXaXNFRDsJ7Wp9zwNoeh/FfwSjSQOiQEl4a3MrB9XcuRnwgbbMX
	 zCnHYm7ZXk+pQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K4XR_uMmnqEz; Thu, 11 Jan 2024 13:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21BED83F68;
	Thu, 11 Jan 2024 13:12:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21BED83F68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B36721BF990
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jan 2024 13:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 97D1E83F43
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jan 2024 13:12:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97D1E83F43
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ge0Z8z145xgB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jan 2024 13:12:03 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 390C583F3D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jan 2024 13:12:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 390C583F3D
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 1E264CE1FAC;
 Thu, 11 Jan 2024 13:11:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 094CBC43390;
 Thu, 11 Jan 2024 13:11:44 +0000 (UTC)
Date: Thu, 11 Jan 2024 13:11:42 +0000
From: Simon Horman <horms@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20240111131142.GA45291@kernel.org>
References: <20240111003927.2362752-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240111003927.2362752-1-anthony.l.nguyen@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1704978706;
 bh=dEUoOzbDSUs2ajAA/+VFBTHK/an89vyrW+ZYe9968ts=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=olppppiJwdWh9QNKijoUO5xiB1QNBaAzpx2fhXu6wY9rgbnfiUGNinohXzzdJ7Us3
 I7raQAFAkz8S6GFodC3upVdpqyRX3hOh58IPnArlpnbbTM/P+6IRaljZAho0KVceLZ
 pDH8IEFVYs8OjirJ3nbQiiM0W+X515VBo/A+EydDH1Eph2/8fZNZO8lF7a7xR+l8rm
 qTC7nVpWaZQKoh1o5qvu8YLNvt29031s/YIZ8KqnEc33Y1olBuqQ41PE/3MUY1RS+M
 NbeY2KaYs5tZk12maPdisQ4HNNz/WV5Ekb1q41TqqvOsvmnrS7trtRpbBP9rHZuQXq
 q3+GN9SphHZ0g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=olppppiJ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Include types.h to some
 headers
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Martin Zaharinov <micron10@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 10, 2024 at 04:39:25PM -0800, Tony Nguyen wrote:
> Commit 56df345917c0 ("i40e: Remove circular header dependencies and fix
> headers") redistributed a number of includes from one large header file
> to the locations they were needed. In some environments, types.h is not
> included and causing compile issues. The driver should not rely on
> implicit inclusion from other locations; explicitly include it to these
> files.
> 
> Snippet of issue. Entire log can be seen through the Closes: link.
> 
> In file included from drivers/net/ethernet/intel/i40e/i40e_diag.h:7,
>                  from drivers/net/ethernet/intel/i40e/i40e_diag.c:4:
> drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:33:9: error: unknown type name '__le16'
>    33 |         __le16 flags;
>       |         ^~~~~~
> drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:34:9: error: unknown type name '__le16'
>    34 |         __le16 opcode;
>       |         ^~~~~~
> ...
> drivers/net/ethernet/intel/i40e/i40e_diag.h:22:9: error: unknown type name 'u32'
>    22 |         u32 elements;   /* number of elements if array */
>       |         ^~~
> drivers/net/ethernet/intel/i40e/i40e_diag.h:23:9: error: unknown type name 'u32'
>    23 |         u32 stride;     /* bytes between each element */
> 
> Reported-by: Martin Zaharinov <micron10@gmail.com>
> Closes: https://lore.kernel.org/netdev/21BBD62A-F874-4E42-B347-93087EEA8126@gmail.com/
> Fixes: 56df345917c0 ("i40e: Remove circular header dependencies and fix headers")
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>

Hi Tony,

I agree this is a good change to make.
But I am curious to know if you were able to reproduce
the problem reported at the link above.
Or perhaps more to the point, do you have a config that breaks
without this patch?
