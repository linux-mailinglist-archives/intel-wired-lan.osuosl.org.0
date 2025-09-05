Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AD1B457B0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 14:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C495481EBE;
	Fri,  5 Sep 2025 12:25:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l6b0dEyicEZf; Fri,  5 Sep 2025 12:25:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4CAB81F67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757075138;
	bh=O/NOqhRwWfT83nIeq5uLue7WuAKojE800JPWkik4GvA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dinKnjoNYeKAQY4DGYPM9r4Fo5nU2+LgNnX2QUfb6Hv2VXSpJizLDX0oAu5om2MLb
	 clTJ24//adYRchogCr1z9QyJwJeVq/4tBWOvTEsiHxkFvZSnSgAtzYNDHZmyfRnKpX
	 Ygd11ZiVXy0XeyRJhWk0TuKr9CCk80Ogtur5W6KgY5zb9Y6n13/QaiHx82dSXhwh10
	 yhC3S6JtO8IJAqY0qR15odOI753YhLyEo+PFxKDOypPGCDINHXB3U7SVRfLtUmv0Bm
	 5yx5cQS3Lmg9gR0sacOkCUFWs3QE5sBWmwgemRmLIA+Rdlv3W+VURO1l0fIO3rjPBo
	 pSZxHktjueXvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4CAB81F67;
	Fri,  5 Sep 2025 12:25:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 259B51E04
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 12:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 082CB40B1D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 12:25:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mA_hqYVyFHv7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 12:25:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F18FF4096B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F18FF4096B
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F18FF4096B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 12:25:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7626460262;
 Fri,  5 Sep 2025 12:25:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47F58C4CEF7;
 Fri,  5 Sep 2025 12:25:32 +0000 (UTC)
Date: Fri, 5 Sep 2025 13:25:30 +0100
From: Simon Horman <horms@kernel.org>
To: mheib@redhat.com
Cc: intel-wired-lan@lists.osuosl.org, przemyslawx.patynowski@intel.com,
 jiri@resnulli.us, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Message-ID: <20250905122530.GB553991@horms.kernel.org>
References: <20250903214305.57724-1-mheib@redhat.com>
 <20250903214305.57724-2-mheib@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250903214305.57724-2-mheib@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757075134;
 bh=k5NZk01dgW6yV3DnFqHfApW0WBrQ9Ru80qZ+VB3TejM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uZq3VoAmBmnVAfrbao+DbNHKxj4pCA84w4hEN8o/Bl3W99QBA3GlK+bPBybP6OZ9T
 ijhj+FiX7AmN87MnYDKI9HzKOjeuU8k0XTmEDfgYwqFXYt2voOOzfZJj3sAoYV9ayi
 +CwWyBVuKMI/XCADAvilzBq6bG5nUYEDMZPslYDW4IZc7YJ4ehUTnZXkoyz9SpuMNC
 Ev7J2xM/oNelITsvqus5OatpRxwDPi3Nlw0E/q691WL092B6oVAwk7Cj4iAyQp3Bnx
 gFg6aTGE92ceZlk4fgMZ+YiQ1uwO4uEP9yjihOxuKIKShp044JUzZ24OiX24xk0EZZ
 coZZItkD1qeag==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=uZq3VoAm
Subject: Re: [Intel-wired-lan] [PATCH net-next, v3,
 2/2] i40e: support generic devlink param "max_mac_per_vf"
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

On Thu, Sep 04, 2025 at 12:43:05AM +0300, mheib@redhat.com wrote:
> From: Mohammad Heib <mheib@redhat.com>
> 
> Currently the i40e driver enforces its own internally calculated per-VF MAC
> filter limit, derived from the number of allocated VFs and available
> hardware resources. This limit is not configurable by the administrator,
> which makes it difficult to control how many MAC addresses each VF may
> use.
> 
> This patch adds support for the new generic devlink runtime parameter
> "max_mac_per_vf" which provides administrators with a way to cap the
> number of MAC addresses a VF can use:
> 
> - When the parameter is set to 0 (default), the driver continues to use
>   its internally calculated limit.
> 
> - When set to a non-zero value, the driver applies this value as a strict
>   cap for VFs, overriding the internal calculation.
> 
> Important notes:
> 
> - The configured value is a theoretical maximum. Hardware limits may
>   still prevent additional MAC addresses from being added, even if the
>   parameter allows it.
> 
> - Since MAC filters are a shared hardware resource across all VFs,
>   setting a high value may cause resource contention and starve other
>   VFs.
> 
> - This change gives administrators predictable and flexible control over
>   VF resource allocation, while still respecting hardware limitations.
> 
> - Previous discussion about this change:
>   https://lore.kernel.org/netdev/20250805134042.2604897-2-dhill@redhat.com
>   https://lore.kernel.org/netdev/20250823094952.182181-1-mheib@redhat.com
> 
> Signed-off-by: Mohammad Heib <mheib@redhat.com>
> ---
>  Documentation/networking/devlink/i40e.rst     | 32 +++++++++++++
>  drivers/net/ethernet/intel/i40e/i40e.h        |  4 ++
>  .../net/ethernet/intel/i40e/i40e_devlink.c    | 48 ++++++++++++++++++-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 31 ++++++++----
>  4 files changed, 105 insertions(+), 10 deletions(-)
> 
> diff --git a/Documentation/networking/devlink/i40e.rst b/Documentation/networking/devlink/i40e.rst
> index d3cb5bb5197e..524524fdd3de 100644
> --- a/Documentation/networking/devlink/i40e.rst
> +++ b/Documentation/networking/devlink/i40e.rst
> @@ -7,6 +7,38 @@ i40e devlink support
>  This document describes the devlink features implemented by the ``i40e``
>  device driver.
>  
> +Parameters
> +==========
> +
> +.. list-table:: Generic parameters implemented
> +    :widths: 5 5 90
> +
> +    * - Name
> +      - Mode
> +      - Notes
> +    * - ``max_mac_per_vf``
> +      - runtime
> +      - Controls the maximum number of MAC addresses a VF can use
> +        on i40e devices.
> +
> +        By default (``0``), the driver enforces its internally calculated per-VF
> +        MAC filter limit, which is based on the number of allocated VFS.
> +
> +        If set to a non-zero value, this parameter acts as a strict cap:
> +        the driver will use the user-provided value instead of its internal
> +        calculation.
> +
> +        **Important notes:**
> +        - MAC filters are a **shared hardware resource** across all VFs.

Sorry for not noticing this before sending my previous response.

make htmldocs is unhappy about the line above. Could you look into it?

.../i40e.rst:33: ERROR: Unexpected indentation. [docutils]

> +          Setting a high value may cause other VFs to be starved of filters.
> +
> +        - This value is a **theoretical maximum**. The hardware may return
> +          errors when its absolute limit is reached, regardless of the value
> +          set here.
> +
> +        The default value is ``0`` (internal calculation is used).
> +
> +

...
