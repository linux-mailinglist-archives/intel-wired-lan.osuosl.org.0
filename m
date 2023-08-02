Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74C976D1CA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 17:24:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19CCD414C0;
	Wed,  2 Aug 2023 15:24:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19CCD414C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690989849;
	bh=xp74RxNx7IE7HQAm22PTtYJi6Zq+NOLob5yWvf4WEsQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cxAsSug+RkDTdUpTNtItatMr2M8oyTX74KofwKOO23s42YXlbcXSLAxVNIg1Lfhud
	 YSKm8Df9kTBm2Bu3wew9NMDQDQ/efkDVYFuvckm67Nvy0sm6txNXJr+8Vs4F2u7AL2
	 nFQpZAzvmAUMK4I0/qKWelrybnwdeiDHYReagXO0dkxLm2jygZ+oIDYNG+aGEMDESv
	 xmd1qIvhPAkbEmarc4fZaIE6l8lbuqekmUng/1iaGxe/TJp9AL1qUZHcMsL6zmzlC6
	 t327Os2XM5yjYkaEZYkzv4jD7HoEQlPMIpmGhXSgrVsAjqz0t0dFcJG60x9+4DdlPg
	 ZSE+W6FW0lV/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BvNAHCMwgtm3; Wed,  2 Aug 2023 15:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 989BB40502;
	Wed,  2 Aug 2023 15:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 989BB40502
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C3FD1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1ED70414C0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1ED70414C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jIcUXbDwQJiX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 15:23:37 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 64A7E40BFB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:23:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64A7E40BFB
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9E1C0619FC;
 Wed,  2 Aug 2023 15:23:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA495C433C7;
 Wed,  2 Aug 2023 15:23:33 +0000 (UTC)
Date: Wed, 2 Aug 2023 17:23:31 +0200
From: Simon Horman <horms@kernel.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID: <ZMp080Vxne1eKtdK@kernel.org>
References: <cover.1690938732.git.gustavoars@kernel.org>
 <52da391229a45fe3dbd5c43167cdb0701a17a361.1690938732.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52da391229a45fe3dbd5c43167cdb0701a17a361.1690938732.git.gustavoars@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690989816;
 bh=03Ss9QaH4LJUp+idfEBSD6LOlA3Q9HWXg0H9LoXdUeI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JdW/FfP2uNxyWqABdFtAYnBz/ABJ/a3oxBZbSM3N8PWw+wT4wJc1z/8C5t2lqDIdL
 IF2OHGj1eW+ion3J6Oq7RDPu+D6QH/N+fwLl75z7CQA5+GzjlAmLwNjCHtZsR9QlYq
 e0UG/mN9CU5+ZTiT3kx1Ocr9Fz839FcN6lr/2yMLru8Cy7V3sr0Jw5m2Or5zLleJwq
 DKNsmmH18x91M+m44Z5q7xqluiiLavHsPPh/nKVoCqZmLhLUD7yimWgzK2rC0FYOMQ
 F9anU5Ak36lnR+MeX7MjnbnSNw2PfANgkcLoyG1dS/ViXw5eatZF8FZmk0a66jfHw1
 Mw/Rjxcm3XxNw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JdW/FfP2
Subject: Re: [Intel-wired-lan] [PATCH 2/4][next] i40e: Replace one-element
 array with flex-array member in struct i40e_profile_segment
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

On Tue, Aug 01, 2023 at 11:05:59PM -0600, Gustavo A. R. Silva wrote:
> One-element and zero-length arrays are deprecated. So, replace
> one-element array in struct i40e_profile_segment with flexible-array
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
