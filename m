Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B676791D8C9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 09:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6145F81773;
	Mon,  1 Jul 2024 07:17:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 03C6q2A1mjAg; Mon,  1 Jul 2024 07:17:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC01281770
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719818248;
	bh=7xRrD/hXZ9B9ULlHr26dhCmFy3drFW4wirvlxOhXLBU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pfphFXbQ/gPdBuy+AN/3O4DQNRCsY4e9JbcLLxBeVHMy1ZtOzBtXyIIf+awsa0AWb
	 hwYfe29e/vQQwtZbm0CFUm4Au/bUbdnvLDoiZPPzI96kSWox7XeK7KHpuTd/M8TS51
	 Y/W+5qsONoJTt5GkHIQDsmDJtr6/ORauo0xp8JFv9e92glpL3yeO5ftkMKFl8VfBBM
	 FWg5fbUwnQOhZxJE2jxmT1LDjPlCHpsgIptsyDVZEd+Ku+ztXRqrX0sTgr6wxExDV8
	 XyfXYQvxGQmqPY5ViWopb4DCY01Pte7GsOCMo8+PbOljW0wnL4pzHLd+E4q6NqTM1z
	 8sjg4lBhSj6ug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC01281770;
	Mon,  1 Jul 2024 07:17:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 53B811BF340
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 07:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E497405BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 07:17:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id enLmpXP7210c for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 07:17:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4A3D74029F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A3D74029F
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A3D74029F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 07:17:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id C142ECE0F9C;
 Mon,  1 Jul 2024 07:17:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04AEDC116B1;
 Mon,  1 Jul 2024 07:17:20 +0000 (UTC)
Date: Mon, 1 Jul 2024 08:17:18 +0100
From: Simon Horman <horms@kernel.org>
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Message-ID: <20240701071718.GH17134@kernel.org>
References: <20240626125456.27667-1-sergey.temerkhanov@intel.com>
 <20240626125456.27667-3-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626125456.27667-3-sergey.temerkhanov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719818242;
 bh=nyfMjH+xq1DfvsjR8wyNnR+EV1kOCdQXGtlnpIKJCXg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dsPE8vfQYdbF3+EtbveaOSstpFBrBin2tEhbTfCLdJZYIWGLxFSkW8kfKaBME12uk
 XVK97o3oPw5pakEM1+TFmJNzeiFp7ZOpxTpebHlMGZQNROlsnfoEd5OB0Nw+gLQC0h
 ujOJASDWx5MHvVhu9jaf9cUFUKyhIbSdooET4/gaOhmDatKfMC3JFExnHSvyANPe93
 g6pivLQrsFzAd3IevKASJszwdfQkoRWbATLgwHe7bcWaaUzStnhmUifLgZRKGWmADc
 n9bHpSlVWKmojEzgjofqpDVD9j89c/iPizmTvR8X4hiwiykIrC/3eFdRqieMFjShDk
 ZtgR6CfhQ733Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dsPE8vfQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/4] ice: Add
 ice_get_ctrl_ptp() wrapper to simplify the code
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 26, 2024 at 02:54:54PM +0200, Sergey Temerkhanov wrote:
> Add ice_get_ctrl_ptp() wrapper to simplify the PTP support code
> in the functions that do not use ctrl_pf directly.
> Add the control PF pointer to struct ice_adapter
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

