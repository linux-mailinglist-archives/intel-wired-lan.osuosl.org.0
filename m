Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD2D90119F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2024 15:00:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C769882235;
	Sat,  8 Jun 2024 13:00:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id elEBFFkB1wEf; Sat,  8 Jun 2024 13:00:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2EA288222B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717851626;
	bh=ghI1OljmAmzFWjZdVLdE4X91OoXMQlXyJYlG7Xe4k4w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vBsD4ZyKCbLvzd+zlF9hHDe3iW60RQVIAB6oQB5L3foMTta3UwE0tTdI/3/4vyY4b
	 TuGq/LYsow09564B3i03keJ6JkwDiWRA2Uc3wGPf4k+LXmsTMT04/LU+kuGgHuCXuW
	 9GxRDZQSzFrtBwKltfI2eiNUX1v4NNxv5jo2SyDAbMlAPa0drGUvGaH6G30r50YgxI
	 +ws3vPOQNzHKRPJllOh8qCoc3eWgX6vTK0MlQNJqSeYMSfPexGoJry4fXkSLu4vGij
	 F2819Lu9iRz/qcjyqt8zR/2Zahf8hw3PfxjACrIOqUEke77gr4aj9LgqPWQDsymycX
	 7GrbkDzfSKf5A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EA288222B;
	Sat,  8 Jun 2024 13:00:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE0D11BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 13:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AAD7F426E0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 13:00:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gg5g9m8zmyDX for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jun 2024 13:00:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DE411426DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE411426DD
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DE411426DD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 13:00:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2E9E6614C9;
 Sat,  8 Jun 2024 13:00:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5514CC2BD11;
 Sat,  8 Jun 2024 13:00:21 +0000 (UTC)
Date: Sat, 8 Jun 2024 14:00:19 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240608130019.GE27689@kernel.org>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-13-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604131400.13655-13-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717851622;
 bh=7PfiwW4bAJ/Eo5hqFsyp1HnntREE7yvPLc6uJlfo4vM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=egyGoVA24hS9jzoXgR5kog999cSAlF2mBgWN4bxHaZt3bWJ/rVuHZPIwlLeOiIwP+
 thzwO6pAGSL2L4LBiSYm+kYgkcRLZqJxLYnB/HiC/AvUMuOlXSMIAy4cbpeXTPzZkC
 oTE3IsH3ubvj22LfKyvYedl2ROAe/Y4XIu+2ucG70wso2TRcEff3Ofb62QdyVFdGSr
 uHhVsykm3Fg/KHSapUjqU1s28dFoKAXkIqnJbagJ6RZBPJpGDW65QrLa8xUi67BWOV
 EzSuQpWRmz9c7WQbLUBeJLLbR0DhmPBoDIz8y7DNe+R6HrMZuigYHQRW2szxNtXm2g
 h8XJFiztXadpw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=egyGoVA2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 12/12] iavf: add support
 for Rx timestamps to hotpath
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 Sunil Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 04, 2024 at 09:14:00AM -0400, Mateusz Polchlopek wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add support for receive timestamps to the Rx hotpath. This support only
> works when using the flexible descriptor format, so make sure that we
> request this format by default if we have receive timestamp support
> available in the PTP capabilities.
> 
> In order to report the timestamps to userspace, we need to perform
> timestamp extension. The Rx descriptor does actually contain the "40
> bit" timestamp. However, upper 32 bits which contain nanoseconds are
> conveniently stored separately in the descriptor. We could extract the
> 32bits and lower 8 bits, then perform a bitwise OR to calculate the
> 40bit value. This makes no sense, because the timestamp extension
> algorithm would simply discard the lower 8 bits anyways.
> 
> Thus, implement timestamp extension as iavf_ptp_extend_32b_timestamp(),
> and extract and forward only the 32bits of nominal nanoseconds.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Sunil Goutham <sgoutham@marvell.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

