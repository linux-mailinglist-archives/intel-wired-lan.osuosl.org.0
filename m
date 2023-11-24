Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EABC7F7247
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 12:01:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA47A61502;
	Fri, 24 Nov 2023 11:01:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA47A61502
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700823689;
	bh=iQlHegbiMUlN+xOnsoV2e9t1piPBuT9IWWYc0YfG48Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9qN4vIFgEIQCO7rNpHQ6AllS59K68wfOuEAxwhbPEYvCsVePPp3tsCJZJe95UIZ4y
	 ggBM9dStaRqXoeZIDV8Ofpu4ToO4jeWQst2GDeBI4YiBxvG+810MGO/c1yQPNsjBin
	 c0Gfxlt2FXWOZxbTribHlrlOsrjdsXJ9NgRmYqo8kk4vimWuE2tAMlXBmJFTekVCRm
	 6ronBU6ZIWmDIAbYGqQeaDAdpSEyCfc9dw92CYPSzFFpHOCl2vp74xAi0/rjhKQ+2S
	 Hy+JG/YoV4h8MrFLQzcf/YfoxG68IbS1nzS70DbRFfdXQltVCw5iU7ndybfSOYNGgX
	 qybQ/j1CMyFQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qza4nPsvgjSx; Fri, 24 Nov 2023 11:01:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AF25614FF;
	Fri, 24 Nov 2023 11:01:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AF25614FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF4711BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98AD6420F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:01:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98AD6420F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gSZHwo0RYf7g for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 11:01:23 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F172D420F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:01:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F172D420F6
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 1DED9B83012;
 Fri, 24 Nov 2023 11:01:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 281B2C433C7;
 Fri, 24 Nov 2023 11:01:18 +0000 (UTC)
Date: Fri, 24 Nov 2023 11:01:16 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231124110116.GH50352@kernel.org>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-9-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231121211921.19834-9-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700823680;
 bh=qKEaRakOnMm1ojW/qLc+2HyU/B7ej1ewi3W5OWlhRtE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lBgYXgIbbQNpAC/f0WN07/m8TkUPwwuZe+AvW5WW+PWOGC3ju7WI8wGHHCFScepvr
 jiE8uT4gmm91GgwocZI8UYSRpMDjSWwmKIN73rZBVT4Ejc8S+S+dz03psFDbSaKDsW
 YP/da8J5nfIB9wod1uWSs+GN7SOUoOgJwScStp8kf4pt6/AHxKbjyH6Nirzndml0k9
 5ULBY7IFlrzUjTHpaksiZC7VPdK1ZB7dbAS/mEFUyDt0EzOrUac78YHx59/2Rxv6V9
 CG8IAAa31YxpRfuV2IM2m+zJrFecKigUDRE5WIOz4RXlE3mQeXzbOUPFg/Krcf6OTV
 RNjYsdsBfA0xg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lBgYXgIb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 08/13] igc: field prep
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 21, 2023 at 01:19:16PM -0800, Jesse Brandeburg wrote:
> Refactor igc driver to use FIELD_PREP(), which reduces lines of code
> and adds clarity of intent.
> 
> This code was generated by the following coccinelle/spatch script and
> then manually repaired in a later patch.
> 
> @prep@
> constant shift,mask;
> expression a;
> @@
> -((a << shift) & mask)
> +FIELD_PREP(mask, a)
> 
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Cc: Sasha Neftin <sasha.neftin@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
