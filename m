Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656057CBF08
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 11:26:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4A2E40949;
	Tue, 17 Oct 2023 09:26:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4A2E40949
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697534797;
	bh=3QRGMQzw8zEviNtJvFZRntl5gbi9wm+mGXvMdE8f1Zc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UNtidZVQ4CUsDEt/HGtnKP0tljGPOrEYDMCImjlXQnfEoVkwWYEQXTQZI7vuC1XIY
	 4icRiHpfCzyFUoscLweSLvjR1E+POAcVIPhqv02tgZClfSQCYE5bOlsfF5BF2sCFKr
	 Nz64drK3lgvNZ+TfCf83+v5k6mf9+rzJNGLeve9InabnsEc84WCBvmcMZpYRNOm3Rt
	 mKRAKpkEpbs3pE03yS5EhxPSP3VIcF1y19t8bsLf99xYjt5cYZcANV+nK0QHcJ4hv7
	 ElrIwVdF2VlOcYT9kSZiQAF+soOlmilugAqCuvF/E25xmVvGX+o1IPZa2MEZnIP/0S
	 Vvq1H3p9e5CSA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i0x-QsCHzUCQ; Tue, 17 Oct 2023 09:26:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A82D40438;
	Tue, 17 Oct 2023 09:26:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A82D40438
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 130941BF30C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D704D81A50
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:26:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D704D81A50
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YfSGN7RHExYo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 09:26:30 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F085B81799
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:26:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F085B81799
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id CE4AAB81B66;
 Tue, 17 Oct 2023 09:26:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EFEBC433C8;
 Tue, 17 Oct 2023 09:26:23 +0000 (UTC)
Date: Tue, 17 Oct 2023 11:26:22 +0200
From: Simon Horman <horms@kernel.org>
To: Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <20231017092622.GT1751252@kernel.org>
References: <20231015234304.2633-1-paul.greenwalt@intel.com>
 <20231015234304.2633-2-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231015234304.2633-2-paul.greenwalt@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697534787;
 bh=3I2isP02DUWWgaL03Ie7ZnapruJ85XiGI+EyBpLF3HE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CTABAXgEgWhUnCG8Thm/YSTajtSZUU3GrEftgaJFm9yB1fpHAsLcVnEo2D+YJQyjN
 BXoQcPtfwyeXDBP2zkR8npidKN+p2V0O4jVk8Gmhv7twyGH3Q3bL1EuyPQto8CTii+
 F+UCV19SkiQjDHidJsd8ogdeEkQciLbsKftZt5hrbA4ih03TbK2HJFcq/+RXen4dAA
 Jk9bOYTN1WiEtlZrSzAmMvIUuuXOJTLK5+I+0DL98K8H2tQVulkhmbNvrI7p0/lRHO
 Xiaibqj4GhNB3kbbKp87tIYAeENKca78e4zUXUNFZOD6QLWuKU2SbCioBvwINxiTjA
 JvIsJ8cP9i6WA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CTABAXgE
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/3] ethtool: Add forced
 speed to supported link modes maps
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
Cc: jiri@resnulli.us, andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 vladimir.oltean@nxp.com, jdamato@fastly.com, pawel.chmielewski@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, kuba@kernel.org,
 d-tatianin@yandex-team.ru, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Oct 15, 2023 at 07:43:02PM -0400, Paul Greenwalt wrote:
> The need to map Ethtool forced speeds to Ethtool supported link modes is
> common among drivers. To support this, add a common structure for forced
> speed maps and a function to init them.  This is solution was originally
> introduced in commit 1d4e4ecccb11 ("qede: populate supported link modes
> maps on module init") for qede driver.
> 
> ethtool_forced_speed_maps_init() should be called during driver init
> with an array of struct ethtool_forced_speed_map to populate the mapping.
> 
> Definitions for maps themselves are left in the driver code, as the sets
> of supported link modes may vary between the devices.
> 
> Suggested-by: Andrew Lunn <andrew@lunn.ch>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

Thanks Paul,

I verified that this duplicates infrastructure added by the commit quoted
above. And splits adding the new from removing the old into separate
patches as suggested by Jiri in his review of v2.

This leads to nice code reuse in patch 3/3
and makes for a nicely constructed patchset.

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
