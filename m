Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B00329BA0FE
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Nov 2024 16:10:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1CCD60B23;
	Sat,  2 Nov 2024 15:10:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5VJ_Ui8Mcu2f; Sat,  2 Nov 2024 15:10:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D2636115D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730560242;
	bh=C2d7saqPvm8uuREUBszHzZgcVT1oS3UeMXMZ2CfR0Ss=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2KPVBb3gEdco7HlPaSXnpFrMlm8k+DoLxlUWdE9AXxRUDtep9WVaywO1k/PbBaaOw
	 68cJ3a3ngBt2itXeXKHq2nSDxWBKFaYmjidwj0/C+kWI4SFlB6GZtceYW8m8HT0A4g
	 ITDqHfY2RLSfk84frFJEJxx+MEvT7V29hC1t3BxSHcA3lHOhWmH34nlnBb+swK5lMK
	 Ppzm0a8P8ODDDAglImPLftCpjaa2nniPlYH1cbNnLFX0p6H4QS0iIzB1AdGf1jAVQa
	 S3pVDs3eT3U6lyL6t2a5JNHKzBtGk3GQ2RexTMT4HA6414tHszp3xeV4pgnPL3SFEn
	 e46R9MRXakAaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D2636115D;
	Sat,  2 Nov 2024 15:10:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CB8AA27E1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 15:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA5588134F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 15:10:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cym_cbWcGtqB for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Nov 2024 15:10:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 168A982053
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 168A982053
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 168A982053
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 15:10:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7E33E5C435C;
 Sat,  2 Nov 2024 15:09:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B2D1C4CEC3;
 Sat,  2 Nov 2024 15:10:36 +0000 (UTC)
Date: Sat, 2 Nov 2024 15:10:33 +0000
From: Simon Horman <horms@kernel.org>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20241102151033.GP1838431@kernel.org>
References: <20241028204543.606371-1-grzegorz.nitka@intel.com>
 <20241028204543.606371-3-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241028204543.606371-3-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730560238;
 bh=BRzbZbvrsonkgSCIr2qVQooEeByYk+usY3bS4Qx8zQw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K6+oBM5cE0qJwqVV0nahfYdSTaZElo0JurFanzJjXGeFn5ccVxPrTrPrxlU90cYrF
 30camoDKYiuGPLnhULPXCGPlcUgeB+gEoFaEh6pI0EKBRbpl420m/TFqSn9MF2DIrv
 a3GnbH+ZySPAqktmDDRhM2UNtJtDsH+QYCw94XsHlsHcB5lxD0aAAqKcuhtG3Y8UpK
 lsBCpXCKXzqzBdFUYMeGDcI+PHIjEKHl4kLve7P7Mh/SK3Q5ZZ7lLU7S/UyPUfVHGb
 SksoXeH+/MI1wAq7750kDgUyuU1rlsjS5DTCWRLojEr2Q46U+HeQaTh/SOR43PzxIH
 Fmz9jW3BnK8qQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=K6+oBM5c
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net 2/4] ice: Fix quad
 registers read on E825
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

On Mon, Oct 28, 2024 at 09:45:41PM +0100, Grzegorz Nitka wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Quad registers are read/written incorrectly. E825 devices always use
> quad 0 address and differentiate between the PHYs by changing SBQ
> destination device (phy_0 or phy_0_peer).
> 
> Add helpers for reading/writing PTP registers shared per quad and use
> correct quad address and SBQ destination device based on port.
> 
> Rename rmn_0 to phy_0 and remove rmn_1 and rmn_2 as E82X HW does not
> support it. Rename eth56g_phy_1 to phy_0_peer.
> 
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V2 -> V3: Replaced lower/upper_32_bits calls with lower/upper_16_bits
> V1 -> V2: Fixed kdoc issues
> 
>  drivers/net/ethernet/intel/ice/ice_common.c   |   2 +-
>  .../net/ethernet/intel/ice/ice_ptp_consts.h   |  75 ++----
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 237 +++++++++++-------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  37 ++-
>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   7 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 -
>  6 files changed, 177 insertions(+), 182 deletions(-)

This patch seems to mix bug fixes and cleanup.
Which leads to a rather large patch - larger than is desirable for stable IMHO.

Could we consider a more minimal fix for iwl-net.
And then follow-up with clean-ups for iwl?

...
