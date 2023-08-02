Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7440276D1CF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 17:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E61FC41550;
	Wed,  2 Aug 2023 15:24:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E61FC41550
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690989868;
	bh=814Pw089VqkbfA2KlC7/MTxJFIkx8eGmOSjI1Ai1wEc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=51s6ETuQ+CHMIOnMDoxCZhsBmr4XxoJIkZ1TTyK6s0w1hEL2wP8kLxzEL4JEAyLPp
	 zGBRHY+6YAkfvDJi87Qr9YQB7/zUElKPTUVCYykzAykWQugEa+Rd6FVj+FJ9RuhIOZ
	 CKT8y31vepKVbqUcLZ7mXAPeleDzThPZMHpIX5uiqBI9U/s3mbLnYusWS2E54eWjoy
	 p86MRP7ND0yOx+2nWe9QuYcwDlM4Cc/nMb+P+i0SAQ7PzfNzE1tIABqY3UbSwyB4mL
	 eIoq7UEskMqvmglM8xzeIkDzzo/A53WKeCRYEyAHdEm52kWbow4/6KRyRJeNbqCh2w
	 ZGbK1TO8fnMSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z1QfSPUXAMFs; Wed,  2 Aug 2023 15:24:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBE7940502;
	Wed,  2 Aug 2023 15:24:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBE7940502
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DF581BF982
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C791B80BA0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:23:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C791B80BA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E0-Ud5sR2qRU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 15:23:59 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 161CF80BBD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:23:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 161CF80BBD
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3E811619FC;
 Wed,  2 Aug 2023 15:23:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81936C433C7;
 Wed,  2 Aug 2023 15:23:55 +0000 (UTC)
Date: Wed, 2 Aug 2023 17:23:53 +0200
From: Simon Horman <horms@kernel.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID: <ZMp1CdK04+VYip0R@kernel.org>
References: <cover.1690938732.git.gustavoars@kernel.org>
 <ddc1cde5fe6cb6a0865ae96d0d064298e343720d.1690938732.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ddc1cde5fe6cb6a0865ae96d0d064298e343720d.1690938732.git.gustavoars@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690989837;
 bh=Zu3eb4D+Sy8IqrzR6uy0ZGNkiAJzPj6+/YJRPNDNgrU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gQvFB1gGB11rznAsCy+ANpuFzhCOrDwnKHDicTZqM3N0Dk1rcex2NgY6hiClsM8iM
 wVx45gdDSVbeYVkRq4sVhqOTqMLrulQzT3EhXMW0dtbWBHcI2hLlC5eZOniDg4Sjpr
 PxbKifbw9y0B8lw+hNTtPyKOi2WNjTWsj2qaZoMu0fWlIdmzApUlXe2J/8YI5i4rf4
 NAxFaNqTyM3sSg+z80PWxPjGbyuKtyreyCs+dcLitoz0y6DyR1/CPQFkYKbCre7I8Q
 8372h82JoQ+Kuc/aqZeOoxPsCQR8zsEq6PXHzl0d46OT6/WMu6xtZk3ul/8LjIVyyM
 9BlS1bvasXslA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gQvFB1gG
Subject: Re: [Intel-wired-lan] [PATCH 3/4][next] i40e: Replace one-element
 array with flex-array member in struct i40e_section_table
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
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-hardening@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 01, 2023 at 11:06:30PM -0600, Gustavo A. R. Silva wrote:
> One-element and zero-length arrays are deprecated. So, replace
> one-element array in struct i40e_section_table with flexible-array
> member.
> 
> This results in no differences in binary output.
> 
> Link: https://github.com/KSPP/linux/issues/335
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
