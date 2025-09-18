Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CB7B87374
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 00:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A79FA828F2;
	Thu, 18 Sep 2025 22:18:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F-uhCDY7NiKW; Thu, 18 Sep 2025 22:18:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29AD58294A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758233931;
	bh=o+sBj79zY5hCx+88U/ExjvmJ4tra8PIAx1eTe3BLW/k=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Nq4rxkE+sXdZC1o6g6ExRTbRsrfu3s525VlypSnXpHDnALq79wkHV/StNWUesE4HM
	 z/V/Z0Ujr/R/CZtWLVe+z5XYsIBLPKaebBFZ6387fMIGPCIpoHSWmuv7uD/Lm4erAB
	 KyDmO2qHgjp5QajC91IULgyc+cvtKC0zNP7vFRNa60BiuoL7AQQ1twjpaBYTs5OD6K
	 J9rlIY3FWEQt7XvINUhf5ldsF9VJ/MSkaaeojlfUt8n7G8Dl8Y3CwPxg3ssra77057
	 pPrNXYqUCKVa9sgp6ATRyaaAMAUTrPqadkXHws6m5v9HDBaHps+M0fBbE1xJlDeN/l
	 2TZ6JNRdTHJmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29AD58294A;
	Thu, 18 Sep 2025 22:18:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AA368E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 22:18:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9BE7660631
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 22:18:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Lc2BkLMIsHa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 22:18:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F13386059E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F13386059E
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F13386059E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 22:18:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3183E408DC;
 Thu, 18 Sep 2025 22:18:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66EABC4CEE7;
 Thu, 18 Sep 2025 22:18:46 +0000 (UTC)
Date: Thu, 18 Sep 2025 15:18:45 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Carolina Jubran <cjubran@nvidia.com>
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Andrew Lunn
 <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>, Pavan Chebbi
 <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>, Gal Pressman
 <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald Hunter
 <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, netdev@vger.kernel.org, Yael Chemla
 <ychemla@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>
Message-ID: <20250918151845.32a90e3e@kernel.org>
In-Reply-To: <f84efe86-098f-4783-85af-4289f62804e9@nvidia.com>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-4-vadim.fedorenko@linux.dev>
 <20250917174638.238fa5fc@kernel.org>
 <4d3a0a08-bda4-483f-a120-b1f905ec0761@nvidia.com>
 <20250918073551.782c5c25@kernel.org>
 <76611a9c-4c53-40a2-96c1-e1cf5b211611@nvidia.com>
 <20250918084000.1b4fb4f4@kernel.org>
 <f84efe86-098f-4783-85af-4289f62804e9@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758233927;
 bh=S6cIfV3T6k8+3VMZBUVzQqrY5IhvkrDooFRPwjjtCPU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=q32kYSOXxzxLlz0upe7KosjBb9q9nMnAau2u0ARjeXnZV0xduHoLPycwuCIRWv6uf
 eqzTsQkv+6QaZVx7liZaVcFRp5MmxSBETHGsQxGOwKDfZ6KucSbLaLTkgMl0mRP5l/
 p9IpK/fYNE2/lJ7N/Lb6LClEC6H7ukFFHa/fTsohbkbdqLUEqiI+LzZzIOhHLC+cO3
 ekNCuQbFhJzOFSANznI1njrFi5yEOqJFgR6JTd/g96ANjzbfPwLdMLEEQuOBmSdHxo
 IFcKs86NESoCPfydY3u5PiN4ZgeuKMmr07nxC98YVgAEfezQI81lJSEw2ybfPIUP88
 A1F19eHifi8aw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=q32kYSOX
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/4] net/mlx5e: Add logic
 to read RS-FEC histogram bin ranges from PPHCR
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

On Thu, 18 Sep 2025 22:41:38 +0300 Carolina Jubran wrote:
> On 18/09/2025 18:40, Jakub Kicinski wrote:
> > I understand that the modes should not be exposed.
> > I don't get why this has anything to do with the number of bins.
> > Does the FW hardcode that the non-Ethernet modes use bins >=16?
> > When you say "internal modes that can report more than 16 bins"
> > it sounds like it uses bins starting from 0, e.g. 0..31.  
> 
> The FW hardcodes that Ethernet modes report up to 16 bins,
> while non-Ethernet modes may report up to 19.
> And yes, those modes use bins starting from 0, e.g. 0..18.

Which means that the number of bins doesn't really matter.
You're purely using the bin count as a second order check
to catch the device being in the wrong mode (and I presume
you think that device in the wrong mode should never enter 
the function given the WARN_ON_ONCE()).

Please check the mode directly or remove the check completely.
