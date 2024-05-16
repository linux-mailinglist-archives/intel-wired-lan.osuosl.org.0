Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEB48C7341
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 10:51:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F9D140B75;
	Thu, 16 May 2024 08:51:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FikHL2W3zdaL; Thu, 16 May 2024 08:51:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EBDD40BBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715849488;
	bh=NnO74Es/k3Niomce8jHHMGiVNTC4P+TIY3r7FTAtuXE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7or39bfV2/0NTh+M3pPZATgHSNu6JOWpT/eayTv0t1FgOVee5S8gieT5mWuX/I3XF
	 XqX5fY6R8WuEOkXn4QCBfHYX9HgrMldMgWgYSQ24MMw14irdNB6j1TKq+BSQmIV1jw
	 /90oYu58oAHK3ukPxBC2CIn8gTurzC/x7/PkbSd4dILW56S0g+2t174TRQi8Vo2dUa
	 vKeWz4Ind1oE2nOiAx5GtTYEqpkWHV1e9a+byy6lEG5VW6TElt8/fm/Rm7XQQ6TxlF
	 8/qH3gov/r8RqI35zn8dtW2PDSyKAsReQPOzepHDJsiVaH1a9PdXV0nPdG6bRmm6bE
	 yN+6xSrEthB+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7EBDD40BBE;
	Thu, 16 May 2024 08:51:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34E741BF855
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:51:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2ED0D60E22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:51:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tw-eEmyJpW8j for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 08:51:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9BA7D60E21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BA7D60E21
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9BA7D60E21
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:51:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9D5CB61683;
 Thu, 16 May 2024 08:51:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEAFFC32786;
 Thu, 16 May 2024 08:51:21 +0000 (UTC)
Date: Thu, 16 May 2024 09:51:19 +0100
From: Simon Horman <horms@kernel.org>
To: Thinh Tran <thinhtr@linux.ibm.com>
Message-ID: <20240516085119.GH179178@kernel.org>
References: <20240515210705.620-1-thinhtr@linux.ibm.com>
 <20240515210705.620-3-thinhtr@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240515210705.620-3-thinhtr@linux.ibm.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1715849484;
 bh=I5XT4HQfyi/PAmbRApUltU4BvP++sYH39v7g9t/4tII=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DxUsmz7FK+7WpvKJ9zX9pZcHYj9fzzbFyG0beyeCnBdvIFGE3KcZiegr/rG6otBwV
 RrZenC5yfVcMu7IAg33D/xOM5ebHTTJlt/TLOFWvNJb9pE/NkPWKyjIrxdw/clMPtu
 UFkA6MuryDIEpzIfbaCPxYSb7nU4kYUOCf+2yevR7Bmo3qrvlaWcXHLgUG3m/kDPO1
 qBuYg82rgcK0WrE5rdid0fwKDVhVG1iXAgxR1ssK9NE1q5rhLBz/eOihq8kcj9uYCW
 +m0TSxhambgZ9yjlIMwRyAzgkCT9TuXTaOCeOd9Vk6lqQLbRIhJmVrss1l4izBhYQL
 d2T7fcLv8y5xw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DxUsmz7F
Subject: Re: [Intel-wired-lan] [PATCH iwl-net V4,
 2/2] i40e: Fully suspend and resume IO operations in EEH case
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, rob.thomas@ibm.com,
 aleksandr.loktionov@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 15, 2024 at 04:07:05PM -0500, Thinh Tran wrote:
> When EEH events occurs, the callback functions in the i40e, which are
> managed by the EEH driver, will completely suspend and resume all IO
> operations.
> 
> - In the PCI error detected callback, replaced i40e_prep_for_reset()
>   with i40e_io_suspend(). The change is to fully suspend all I/O
>   operations
> - In the PCI error slot reset callback, replaced pci_enable_device_mem()
>   with pci_enable_device(). This change enables both I/O and memory of
>   the device.
> - In the PCI error resume callback, replaced i40e_handle_reset_warning()
>   with i40e_io_resume(). This change allows the system to resume I/O
>   operations
> 
> Fixes: a5f3d2c17b07 ("powerpc/pseries/pci: Add MSI domains")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Tested-by: Robert Thomas <rob.thomas@ibm.com>
> Signed-off-by: Thinh Tran <thinhtr@linux.ibm.com>

Reviewed-by: Simon Horman <horms@kernel.org>
