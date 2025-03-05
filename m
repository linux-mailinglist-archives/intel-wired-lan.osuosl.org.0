Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C6AA4FD5C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 12:16:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1006381A58;
	Wed,  5 Mar 2025 11:16:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wg6wZnqhRgwi; Wed,  5 Mar 2025 11:16:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 754B1819F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741173402;
	bh=7r5z4+EHgkc99Yzd3mpW4+ITJJoBQ/NjVnbvaj4lB3c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bj7thuzZ+5zzFNT0vvVb4Sy0j/4hGIvGWVfzyaCM+5nnA0utqi4fpHulm4IYUIh+C
	 8P40WyBr7lFOWmPODitiBQkKxNYk9PGH8oUX4jLv5uyp4jxO0bIlEMwMHgfHxsyk7W
	 Ock2tdD0BlACz0m+8lPQR73CPbGcKvGTA0xWtBvNUWjbjj3gaWjmEskVfBONkQyCMz
	 BgqcnBICYAIM3oXcWQ7lnaXsNAEivm3ufnkLnAYgevA3FLUSkTwFL48A8dPiGGnfsL
	 zwqXt/jDH927V3a7q7It4fH/d2TfT9dAcmUnnJjAZfdYW5059ff1L8irJYaKUu3QIe
	 lglSE/7XR8ubA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 754B1819F3;
	Wed,  5 Mar 2025 11:16:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0439A194
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DCC3D607AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:16:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sjoQJXMJEczS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 11:16:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3FF0B6066E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FF0B6066E
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3FF0B6066E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:16:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id F24F4A45586;
 Wed,  5 Mar 2025 11:11:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7D3CC4CEE2;
 Wed,  5 Mar 2025 11:16:36 +0000 (UTC)
Date: Wed, 5 Mar 2025 11:16:34 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, andrew@lunn.ch, pmenzel@molgen.mpg.de,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250305111634.GK3666230@kernel.org>
References: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
 <20250303120630.226353-3-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303120630.226353-3-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1741173398;
 bh=baRZN0nr+QTo0b8GA5u5nvHO938y61aBV3RNzqP/6l4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UmjsPKN7tT8THH1wOV98bi/x7dum6ulkLT7VmXa8w3+UjsMwxf3N/K5M44tvF73nf
 oQ6+x98m8EoTNw+wozzlNXjBMXZ76umqeRjn7XjxB2qeONbNFogP349tuNP97Aqq11
 q3QgvXrY36ZU36RNfMt3uVKGjnEAkBZM9o37UfkO7PpHpZsg4FEFEH8F+BfBV/d8YC
 mdbUsZKx0pzbtThiBkKJSug1QTv2H50qiFpSFXH7vcVFKh405tNTVivCl2OS4V9zr0
 phyCbzcPGHN+DHntQpyGSbwW0b/jqJ65yfzRtKQWb/PEhp045Wa3bch+RuLm+a2RfG
 cC0qibdO6roCA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=UmjsPKN7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/4] ixgbe: add support
 for ACPI WOL for E610
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

On Mon, Mar 03, 2025 at 01:06:28PM +0100, Jedrzej Jagielski wrote:
> Currently only APM (Advanced Power Management) is supported by
> the ixgbe driver. It works for magic packets only, as for different
> sources of wake-up E610 adapter utilizes different feature.
> 
> Add E610 specific implementation of ixgbe_set_wol() callback. When
> any of broadcast/multicast/unicast wake-up is set, disable APM and
> configure ACPI (Advanced Configuration and Power Interface).
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

