Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB853BFC9B4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 16:42:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 440A483BF3;
	Wed, 22 Oct 2025 14:42:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pI9VzSo7qg7E; Wed, 22 Oct 2025 14:42:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC04E83BE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761144158;
	bh=iACSy1Zv4mJhXmD8zz1FoT6j5F2y3WenC7iNPhdkYKQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gYAWDDmoLtnqPl9XlyPqfu53enMkAAxlrJv6E6roOY0iQGe7grPKnMRuukg5S6Ejm
	 eMbaYWHSma/K/gmyGI0fXPF/onC6L3W50G1jvY9YG0qazBthQBuZ31DvEmuTnlx3qc
	 lUcyvWfPZXZcnwHZet2Yvlx9TAq3+q3pFOBppzZ2hXAhs0iAn1eGGX99flA6fG8Jo9
	 GKtRG7RhFMF1nIW3xtYbneN6PLjJ2oRHSW+M2dmjf9PMWBuAGtPXYvdpuUrN/Rrwwb
	 NhE4UtNZqJJNLOFmY+vRk2oATR9urWW47LJqPoV8rDMaSF3yOSNON3wHdyzEI86SkY
	 sdOrXDe+5DZMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC04E83BE2;
	Wed, 22 Oct 2025 14:42:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C6729DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 14:42:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C41854044F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 14:42:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6SAwxRb828kq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 14:42:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3D3B74044E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D3B74044E
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3D3B74044E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 14:42:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id ACB984459E;
 Wed, 22 Oct 2025 14:42:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64BD4C4CEE7;
 Wed, 22 Oct 2025 14:42:34 +0000 (UTC)
Date: Wed, 22 Oct 2025 15:42:32 +0100
From: Simon Horman <horms@kernel.org>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 alok.a.tiwarilinux@gmail.com
Message-ID: <aPjtWJVm9G3ObdbJ@horms.kernel.org>
References: <20251021191216.2392501-1-alok.a.tiwari@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251021191216.2392501-1-alok.a.tiwari@oracle.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761144156;
 bh=rVtb9fcn7aUQD7lTkG3m9gca0zlP71v4qpLaES49Xk8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tVAxDHhi1z4FV+HOdPBne4X7YSW7RpqQFgt+0HVR7aIxccTPqfDfbnnHUeAZ/0iea
 Uco2GtGI7/QgD3CB8LcD+MfTaQk/YpwqA0KLTLDJ27avy8kgbCkOT2yrOKwK0f49wT
 /S/kgOA301xiPOGGN6np8wXPhx47jJmkHOU1J37wF06kY0ugDco7JRIXo+utcRP6QM
 MBIqgt+4653WqPFf7/pbEKM/lwNOXTEZOIbTMI83FbrAriE5gxaX6n9+dnJ95V3xti
 f9jPV9yxoBYBCfF0XeemHLFFHuobeMUbmSBVi91DxWmhk+m2dYqndIDDW+rkfzaR0h
 uVpIlVOO+fXJw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=tVAxDHhi
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typos in ixgbe
 driver comments
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

On Tue, Oct 21, 2025 at 12:12:14PM -0700, Alok Tiwari wrote:
> Corrected function reference:
>  - "proc_autoc_read_82599" -> "prot_autoc_read_82599"
> Fixed spelling of:
>  - "big-enian" -> "big-endian"
>  - "Virtualiztion" -> "Virtualization"
> 
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>

Reviewed-by: Simon Horman <horms@kernel.org>

