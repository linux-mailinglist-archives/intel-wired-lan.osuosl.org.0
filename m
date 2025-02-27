Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EC2A48691
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 18:27:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECB6C416AC;
	Thu, 27 Feb 2025 17:27:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ghNMQjMKvNee; Thu, 27 Feb 2025 17:27:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BC274076A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740677252;
	bh=a7wqzVe59zAy+kAO/b53mbZKci7qzZB1se5GRZqkV3g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GC+TYtBQfChXUDvZNtQuEAQV8AZIZEDfmtJl7oeDICA7/x45Ff71q9WuOhvGHj8zf
	 7BUnf1qk9ZS7x8l1sSQXZQMCUroybFmru2PqnCvhpUdI+g8c6G5PQKBdRayRnf1VDe
	 R0BtyWjcCRkbV+L+oggrU4KLEcInrIEgBcPSGrj68IoySVJNcwRyoxzg8aF70QB8/7
	 8mhDoNfKT5F7v1Em5iNX2e1uZ22NGegZ/cEOteUKss8dmF9Uvmg9m7aNwBH+CniRCh
	 4BkKtM6cpAy98uDTOmvMqfdhw5dMSB3nbJ20RdEOijPsGvsCy8uHK0OtWmyWcqUtzo
	 oQW8vhT8Vv3tQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BC274076A;
	Thu, 27 Feb 2025 17:27:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D97E968
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 17:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD87380A83
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 17:27:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yrph3abfmNXL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 17:27:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04::f03c:95ff:fe5e:7468; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1AB83802CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AB83802CB
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04::f03c:95ff:fe5e:7468])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1AB83802CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 17:27:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D032B61F3D;
 Thu, 27 Feb 2025 17:27:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA61EC4CEDD;
 Thu, 27 Feb 2025 17:27:25 +0000 (UTC)
Date: Thu, 27 Feb 2025 17:27:23 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Milena Olech <milena.olech@intel.com>
Message-ID: <20250227172723.GG1615191@kernel.org>
References: <20250221093949.2436728-1-grzegorz.nitka@intel.com>
 <20250225095021.GK1615191@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225095021.GK1615191@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740677247;
 bh=3rbgKRdPD57Q4504inUanYwfL6bZjk7Ar3Z9m1kYk8U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=enwMmSL1/rsdzfIYr8EZwClm9n5DN/KczIfu5ZOLTIJke0YNXaNWs8JQkh4gidrLr
 sgaqcHu5EYUf3T2noL7fw7ATnbwcRAUwPslurErbY0Vamw8d5XM2lMSyTNnJCATQe7
 4T8c4jLs2nXkqV9zAP+pGaPY9ZsO8d1aoa3orasd7YcdHKHI87usXvfsTrcBlksihu
 Na40zuhZSoiCHu+2Ed+IVNvfPfYuq9vmdkitoUrMEWvuUYZZPby0WA6cNCtaQiconA
 Pc+MrVdDLJ3BWanxm3sd4KKGiV29NefHy0x99lBoprjKbs8cg1bjJp2FBxGwe6ylHR
 JS5KTjT7zNzhg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=enwMmSL1
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix lane number
 calculation
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

On Tue, Feb 25, 2025 at 09:50:21AM +0000, Simon Horman wrote:
> On Fri, Feb 21, 2025 at 10:39:49AM +0100, Grzegorz Nitka wrote:
> > E82X adapters do not have sequential IDs, lane number is PF ID.
> > 
> > Add check for ICE_MAC_GENERIC and skip checking port options.
> 
> This I see.

Sorry, this was part of an earlier draft. Please ignore.

> 
> > 
> > Also, adjust logical port number for specific E825 device with external
> > PHY support (PCI device id 0x579F). For this particular device,
> > with 2x25G (PHY0) and 2x10G (PHY1) port configuration, modification of
> > pf_id -> lane_number mapping is required. PF IDs on the 2nd PHY start
> > from 4 in such scenario. Otherwise, the lane number cannot be
> > determined correctly, leading to PTP init errors during PF initialization.
> > 
> > Fixes: 258f5f9058159 ("ice: Add correct PHY lane assignment")
> > Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Milena Olech <milena.olech@intel.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>

I only meant to send this part :)
