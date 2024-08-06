Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CE79493E5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 16:55:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2006A60717;
	Tue,  6 Aug 2024 14:55:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KVnqLJl--Gh1; Tue,  6 Aug 2024 14:55:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72671606B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722956142;
	bh=7O1jbdZoOQw4mZ0D87RSFQxcBqiSkgrwaQlgXEWUDvo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QEM5yF4UeKivlc3igklt/o4lXDcJ+BHI787BRDFmbdxF8aGLQAWN2jDsLwdMkz2Sf
	 vlIhnjv7HwxSJ6j4qxeJ0MeqB0FJyYIb+SQ2vU9BdqzXt0Qj5iVRFSyD+/+C6Qc9IL
	 E+cb7Ny/9Vfdhn/YzLC+U1KLKkjZNukGem3oHEmYaRCqb27B4hkbR01M6rxW8l0+t/
	 qV3hUNtG+p/7PLeQkVSOVPSZlsPwtMoA9svwOdjSbVQDTTY0nIuYYAW6iR/nc6dJXV
	 Rq3tBrlSkACh6yko7Esb8N7+McJjisvHch5JM0CSLB0KNYN0nLz58jbHKJMvF5yrIL
	 ihvixxyLtFxDQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72671606B4;
	Tue,  6 Aug 2024 14:55:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C76E1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 14:55:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89439606F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 14:55:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gU3L7tOM64Ta for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 14:55:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B30CC606B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B30CC606B4
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B30CC606B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 14:55:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id D74EDCE0D85;
 Tue,  6 Aug 2024 14:55:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DFD0C32786;
 Tue,  6 Aug 2024 14:55:33 +0000 (UTC)
Date: Tue, 6 Aug 2024 15:55:31 +0100
From: Simon Horman <horms@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240806145531.GW2636630@kernel.org>
References: <20240805124651.125761-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240805124651.125761-1-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722956135;
 bh=cfLjLzytKWxZNDBT4m7gnseD/sS6bz7gYmCdZFohyLA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FDZXQJSIGYVVpwQTZ6eVZDsGpKSOMYlMv8/2gUBTk+A7FVbFNoXJI5a4ZMaIW+HzQ
 8Q3yZ/NxSuzxPma+I52OsJgvGn1qveWUa5rhMoPWyOOKCgMckGlYKNBl9cDCPy6UCS
 4/K/dxOXj/yf4EMSNhfQa6mcVUI1UqVdfyOvr+dGoIED7XNPvHJUmeZvLg+PKTJyAx
 VmMDNPW1+bfXm5z1BLFkgefSYhh54Sj2/I0H4qnMSgxoMQhcSyHQnBqLYNvO4oXXAq
 xDDasvEzggZxCf0f6WhXYhY+vUzDXgONZnL/6va4jhQ2BIN3wQwNA4GxPHFIJOF7er
 HGXlfNEkCDOTg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=FDZXQJSI
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Implement ethtool
 reset support
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
Cc: netdev@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 05, 2024 at 02:46:51PM +0200, Wojciech Drewek wrote:
> Enable ethtool reset support. Ethtool reset flags are mapped to the
> E810 reset type:
> PF reset:
>   $ ethtool --reset <ethX> irq dma filter offload
> CORE reset:
>   $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
>     offload-shared ram-shared
> GLOBAL reset:
>   $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
>     offload-shared mac-shared phy-shared ram-shared
> 
> Calling the same set of flags as in PF reset case on port representor
> triggers VF reset.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  .../device_drivers/ethernet/intel/ice.rst     | 28 +++++++
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 77 +++++++++++++++++++
>  2 files changed, 105 insertions(+)
> 
> diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> index 934752f675ba..c043164bfacc 100644
> --- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> +++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
> @@ -102,6 +102,34 @@ rx_bytes as "X", then ethtool (hardware statistics) will display rx_bytes as
>  "X+40" (4 bytes CRC x 10 packets).
>  
>  
> +ethtool reset
> +-------------
> +The driver supports 3 types of resets:
> +- PF reset - resets only components associated with the given PF, does not
> +  impact other PFs
> +- CORE reset - whole adapter is affected, reset all PFs
> +- GLOBAL reset - same as CORE but mac and phy components are also reinitialized

Hi Wojciech,

I'm not sure, but I think that Sphinx wants blank likes between these list
items.

Flagged by make: htmldocs SPHINXDIRS=networking

...
