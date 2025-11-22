Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C70C7C16E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Nov 2025 02:23:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12F5C42A7D;
	Sat, 22 Nov 2025 01:23:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zwXSHG7yG5bK; Sat, 22 Nov 2025 01:23:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A49242A65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763774587;
	bh=juOfjEdZVlfrT/eHWYpZGP74NLdOn3RSmp8Oyk34w3w=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DRPcknBUrJczzoNfBx04LBo4LK3ZWfH1Ii9prMDA9JneGIaoaU8bUAjKLBLNg8Q48
	 XvoF1qe0hOvYyLYX/naYg8m47JK4Yu7L8OB1EAoaZisy5kZFC/nPSIJn77z0UQpUHY
	 CJ4VY1MO1jx1Z70M3o58d0XMCZJ3DepHfD9AY6pwzpaIGYznRW0Cr00ua9pdDWk5NQ
	 MTqYsyFHh4p6S4mP7QZ6+aj8lV1noCRwIbm0TvbLaLOJXSaodOok0GzfRl/D3rmMLl
	 2164kkQPsureaOqSCiPwux4dr/W1fqB9C9ptVXikMnbP53zteD9cTKZv3RZINGxYo0
	 MqpTySaRHTltw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A49242A65;
	Sat, 22 Nov 2025 01:23:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 65E0A34E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Nov 2025 01:23:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 440D240273
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Nov 2025 01:23:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IMf_vUB9TUbz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Nov 2025 01:23:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 57C534024D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57C534024D
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 57C534024D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Nov 2025 01:23:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6EBED40F59;
 Sat, 22 Nov 2025 01:23:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C24A4C4CEF1;
 Sat, 22 Nov 2025 01:23:02 +0000 (UTC)
Date: Fri, 21 Nov 2025 17:23:01 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, Mohammad Heib
 <mheib@redhat.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew
 Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <kernel-janitors@vger.kernel.org>
Message-ID: <20251121172301.3f488693@kernel.org>
In-Reply-To: <d396e86c-e466-4630-8b1f-7f5b640d88a5@intel.com>
References: <aSBqjtA8oF25G1OG@stanley.mountain>
 <d396e86c-e466-4630-8b1f-7f5b640d88a5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1763774583;
 bh=OIsLl4+xHKtTwnUmzVpR5Rzu4f8fsJsjrkR1+Cjih9U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HfMWG4t5gt+T6/6yNhtWcFTs/GLDnnr66XggzEAN4FkIx4KjTu3d6dHaNx2/coe0a
 2fWAsJVAaK/HgV32keh29Kjta89SHQpZji9W7DIJsjEu0yq2pYwmF10SSXBqRzCH+c
 eN9ntTgpdILgWh0dt8KOVclCWm6BFVhWIfPpkWipfNsFdHxNCiVSTAL9+lGsYJipBX
 /g9NKu/fqkyo4x4k/JOl415/vt78jD/AVNta2cdFoduGhLHggp5UncnPI+BvGVaUvT
 d2+5nFVal04Xe/Z/X0MyrySVkb5C3Lvs33vpPKHSmPXhb3TgL8+e7NIzwwz1ZkNVFP
 /VZ1qu3fIsZDg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=HfMWG4t5
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: delete a stray tab
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 21 Nov 2025 14:35:07 -0800 Tony Nguyen wrote:
> On 11/21/2025 5:35 AM, Dan Carpenter wrote:
> > This return statement is indented one tab too far.  Delete a tab.
> > 
> > Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>  
> 
> netdev maintainers. This seems straightforward enough, did you want to 
> take this directly?

Will, do!
 
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

