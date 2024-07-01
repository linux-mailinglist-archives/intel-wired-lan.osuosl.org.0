Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD2D91D8C0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 09:16:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BDA581B14;
	Mon,  1 Jul 2024 07:16:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PJ8mM6avAEb8; Mon,  1 Jul 2024 07:16:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CADD48145A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719818209;
	bh=DRldpemcycMYj+eUcJwNh0ipJXhrZq899BkOutwc5DY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YvVzNkK6nN1JID0V/oydsLbXtKnUondtBH+btkLwmXUFXTsXB9Tvyuw8bim4t9Izv
	 atuBylCYjFGwKEseAFcshYK0p7kSEyQG3LUzLZIustjRjvwM1z3a1ifS7imCugs+NX
	 VvmxoRiVnDKfX4iodYH+hFEeI67nUUQqbpoDATDQXxn3GYYaJY0Ox9OeCt//48Eqgz
	 YcDF5AUD4CoalvAflC7K3o9tqs0CDozULdAEfZn6MPBzUoajeSoupqHcZQbkT4J940
	 ivRQjmk6z8BuVmu2IgyCaqTHvIC2lYYosBc4znh/Tm7tmVjO/zZyzfq5K7itHxJ3Pk
	 TLYr+ctFPDCMA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CADD48145A;
	Mon,  1 Jul 2024 07:16:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8FE401BF340
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 07:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DC366069B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 07:16:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZWIUkit-uzFt for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 07:16:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DA087600C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA087600C9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA087600C9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 07:16:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1640260EB9;
 Mon,  1 Jul 2024 07:16:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF4D1C116B1;
 Mon,  1 Jul 2024 07:16:43 +0000 (UTC)
Date: Mon, 1 Jul 2024 08:16:41 +0100
From: Simon Horman <horms@kernel.org>
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Message-ID: <20240701071641.GF17134@kernel.org>
References: <20240626125456.27667-1-sergey.temerkhanov@intel.com>
 <20240626125456.27667-5-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626125456.27667-5-sergey.temerkhanov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719818204;
 bh=CwosdTmAYfrtOMU/fdvpzzuGdoW7n1X4y02HIDFAEL4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pb/FWyH6pjUO16ee1W4XozfGGd50lCnl8zFxzXx14Cyw8K9BXj2xGIjyW9VYDHN1O
 KveIi0wooDPRK/Wu6bLhOSSYSHoQCDsaCq+MSA/quI5uxV+ktaEOlvARYdxmFtpmGh
 gxozjzpEbeDfEGOr0hiOYRH4DAWU2Z+MWsIfVz8lSwlZwuVu06vZymB7qboKYmqXVq
 K9sHhtQHmXcCynYf8aez+7fDCazqV0epDpBADiW+hKOiNngsadil4ks6ViRcwQcNa1
 FsT24E8XV90DJMeJZ81HleiS4MHYK8zmT4sM7Zi+au9HSl4kr1ml2YW6UYbneMGVWw
 v/htiufppz8sg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pb/FWyH6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/4] ice: Drop auxbus use
 for PTP to finalize ice_adapter move
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

On Wed, Jun 26, 2024 at 02:54:56PM +0200, Sergey Temerkhanov wrote:
> Drop unused auxbus/auxdev support from the PTP code due to
> move to the ice_adapter.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 252 -----------------------
>  drivers/net/ethernet/intel/ice/ice_ptp.h |  23 ---

Nice diffstat :)

Reviewed-by: Simon Horman <horms@kernel.org>
