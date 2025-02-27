Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2492BA47C24
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 12:26:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F7364052A;
	Thu, 27 Feb 2025 11:26:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RYcWjxFas2Hm; Thu, 27 Feb 2025 11:26:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCFCA4052B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740655614;
	bh=x7njSNNZSzY8lLQ4FPMnOrCxGVEGUQs8aV7/9zpGlGs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tyNTPJFrp1zrfZLjcLLBjajVjIKt3INo34zTKHVbjUo2FadYAk8MSorA9D9bM7WUn
	 OVcHIO7DCt32FE4neIu0tGGMSlAbsSOzONRdbTCu5zgTf9UQbpeW2ffxEiBvT39+hj
	 xqfLBudoDA4LRw++7sAcmklhE7TvrYkvGd5mbHJc30xan+Xl2k6cLFE574cbUOn1Q5
	 Fy/44GswizdFrwvQb84iY23eniJDWZPExQHjAql5lzVJ9X1G4r5PZrT1izLPcSEm2V
	 FOq3VaL07/8ZLB8p13xSSv7HId/5LqT51GszZBJITJGTQgwn30S8t0yqRH0kJV0YO6
	 x8SefYQB9SdIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCFCA4052B;
	Thu, 27 Feb 2025 11:26:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D114069
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 11:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C00F3403DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 11:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I4R8Cr6qZkBt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 11:26:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 004F24052B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 004F24052B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 004F24052B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 11:26:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 003B05C4D91;
 Thu, 27 Feb 2025 11:26:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81A4FC4CEE8;
 Thu, 27 Feb 2025 11:26:49 +0000 (UTC)
Date: Thu, 27 Feb 2025 11:26:47 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20250227112647.GF1615191@kernel.org>
References: <20250224205924.2861584-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250224205924.2861584-1-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740655610;
 bh=joa65lQgJqepjK/oan+yreZVBckdZfznLoJjDlT+9+c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WO4VkYtbDvggp456HFQDWq+opgnr0uRB+sXmlxZC4c9FyKa0xULdPloHbUjSC0Fr5
 a6AgxefGgKtTmoyFfvol7YrlLLBwC3KMCCnOJUr8hEog+mUHGZIB5ZY/0PF4TcdQAQ
 7ZryLiw1CC36BMwf+/inL7cH73ps7uQCcn1lkWVePj4mYYacKXaFBidRAFgnkhI+51
 oeDD411JqxV/um6XzmqED41Q6GibghbsSMjs07/ITRjftrqEwkWwwMhYGZVTgfIrUV
 TZkHE9poo6c15xmK4x6leckJ4rrqAe8ScRFqXoedHY8MWZ05M5kI4LdQhmqRl4fKhH
 Y+8xXCCaHjRKg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WO4VkYtb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Allow 100M speed for
 E825C SGMII device
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

On Mon, Feb 24, 2025 at 09:59:24PM +0100, Grzegorz Nitka wrote:
> Add E825C 10GbE SGMII device to the list of devices supporting 100Mbit
> link mode. Without that change, 100Mbit link mode is ignored in ethtool
> interface. This change was missed while adding the support for E825C
> devices family.
> 
> Testing hints (please note, for previous version, 100baseT/Full entry
> was missing):
> [root@localhost]# ethtool eth3
> Settings for eth3:
>         Supported ports: [ TP ]
>         Supported link modes:   100baseT/Full
>                                 1000baseT/Full
>                                 10000baseT/Full
>         Supported pause frame use: Symmetric
>         Supports auto-negotiation: Yes
>         Supported FEC modes: None
>         Advertised link modes:  100baseT/Full
>                                 1000baseT/Full
>                                 10000baseT/Full
> 	...
> 
> Fixes: f64e189442332 ("ice: introduce new E825C devices family")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Reviewed-by: Simon Horman <horms@kernel.org>

