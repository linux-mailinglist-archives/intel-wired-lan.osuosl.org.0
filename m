Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFB0AFAF13
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jul 2025 11:01:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05DB9415A0;
	Mon,  7 Jul 2025 09:01:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zqK_N5Mh5Tyh; Mon,  7 Jul 2025 09:01:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D880F4141F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751878874;
	bh=e9SWFcb0msrjB6idocXhvC6mvsfdigDERKcSsgUav9E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yrp5BX4RqlkVL+HhMgSFF2L4vD5BuXoMpnu4bUbyR2nFLKvEVns7B5SwE2WpjjO9n
	 aQESGnpSnKHfZ1gJACVVj3eDpHpgAUNDDbDX8rOSk+OdXpXia/9RdnTYtAzg33CJ9g
	 c+WNvnG9pyLF0MkKamL2+HMy2h8ytwCVr6wTV3/DGX23B5e5Y4Jt2eKMV2iRPkNcvY
	 6FovHWNDR0C+PANp64Kjuk2fVYIwI3mFzVBn3E+TRcIvYYQ4rW5pC1r+GIBnGHfBPH
	 N0U1eYlLnbyQYcPmHkl7W2IDvkXCtZMcyjv/GVgnIsnMpHRSVnS9waaSGD7gwZBgOt
	 OVcVW8zFRJ1nQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D880F4141F;
	Mon,  7 Jul 2025 09:01:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 90F9412E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:01:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7753A40C0E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:01:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BzwfA1n-yMKn for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 09:01:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 734BC4141F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 734BC4141F
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 734BC4141F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:01:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 962D861130;
 Mon,  7 Jul 2025 09:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1A0AC4CEE3;
 Mon,  7 Jul 2025 09:01:06 +0000 (UTC)
Date: Mon, 7 Jul 2025 10:01:04 +0100
From: Simon Horman <horms@kernel.org>
To: Haoxiang Li <haoxiang_li2024@163.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250707090104.GB89747@horms.kernel.org>
References: <20250703095232.2539006-1-haoxiang_li2024@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250703095232.2539006-1-haoxiang_li2024@163.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1751878869;
 bh=24gyF1taVTxprKDEd+rLNk+GtDDxWmbXhwmk849/WWI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cwuIO+MiSF26xvbooegOGFArbkFQbJeMsk1yK4RPMXoLyRDKVgFGsod9UHyUoiJlm
 mgweD/93f6A+xjoYBX8uTrg225ptbSCuzwSXViwV7ZWFrMnKFk/y9Hh0HOa2MdyL3T
 0VAXkNAJIBLEjY6DmMRE7GS0ZUQsF8P8FuvVXFR0s7taBMmHxLD+mZtb/9CSULctf2
 C9XOsddfAPrDx5PObrvCF+DuVpUUn56lMyNT/XVx3MEYHT0Pk2aGzDwmDIdCR7/lc9
 9jPaxE4TD4r5JkdOdwh9brdRrSv6CfnT1LCdLujxnJ2v92CeM5q1D2RfXjuiS9fljv
 w6gPVmTb0XxTQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=cwuIO+Mi
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Fix a null pointer
 dereference in ice_copy_and_init_pkg()
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

On Thu, Jul 03, 2025 at 05:52:32PM +0800, Haoxiang Li wrote:
> Add check for the return value of devm_kmemdup()
> to prevent potential null pointer dereference.
> 
> Fixes: c76488109616 ("ice: Implement Dynamic Device Personalization (DDP) download")
> Cc: stable@vger.kernel.org
> Signed-off-by: Haoxiang Li <haoxiang_li2024@163.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> Changes in v2:
> - modify the Fixes commit number. Thanks, Michal!

Reviewed-by: Simon Horman <horms@kernel.org>

