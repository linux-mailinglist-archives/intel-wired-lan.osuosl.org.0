Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A3B7A93C1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 13:09:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF71383BE2;
	Thu, 21 Sep 2023 11:09:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF71383BE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695294566;
	bh=GwfrzqgttNPIWoX2cWx1vgQTbPOlBQrzM4Pl309/q8E=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VSGK/x7rmT3FZ2oCMnB3UtYxIpBVvs3o6Acockp6qv4lDuGpstO/SzVnriYUiGBqW
	 nnxX/0/ZEzg6vN3tln3wyRDRjpzHQRgmHK7ShsoRMUCzafUVxtvJr+EFBNyHBhQx12
	 WLHGCb1lkcfQQL/NYFOu7ZcEfBGQotLcUBHqCSX0XbPv6KmZEDRf0IyF0DsIzzXu5I
	 /FMjMeoYTJZB+XeQp+y+D3dxxUKS4iywlwm+Wa7RwCwtBCrrzBwFbDfgDLAQnOeEf3
	 CBAzjhSuGSM7JcskIiZb05cuIAVNWaWKf4ChTvrD11radClsCnPJZy82y8vOIvlDjz
	 0E4hRnt4qAUTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P5qASfrcSpmm; Thu, 21 Sep 2023 11:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4F6083BE0;
	Thu, 21 Sep 2023 11:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4F6083BE0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B7A31BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 11:09:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7BE260B50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 11:09:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7BE260B50
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6SHP7qOVcw1B for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Sep 2023 11:09:19 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93C8C607D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 11:09:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93C8C607D6
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6B16E61E79;
 Thu, 21 Sep 2023 11:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E967DC4AF6F;
 Thu, 21 Sep 2023 11:09:14 +0000 (UTC)
Date: Thu, 21 Sep 2023 12:09:11 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20230921110911.GJ224399@kernel.org>
References: <20230912115626.105828-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230912115626.105828-1-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1695294557;
 bh=2kCSV6P6YfeKSmCvyz6qPCQfpRAvSYHPQsHOVANhBmg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W76eLcPAw4H/BBi1wsSNGxZjZFUI3sArOoZWHS+54hEC0lrQ0mn+HZUhhD8bddLl3
 vzsdCSFXS0E3diGzNDIUcTsOcTDN4aR1RccVZZEDtJepz0vIXJVtjHzC0qSaRmCuvJ
 NTIlJoXiIHSrs42tUlRzfiZGrW3Xk6Z164Vfsjt6HV0rP9096saieHSLRW8IMmTEqq
 X+GgsgNB2o3Owq4bRZzrYLaLfvnKNkcbaEiedgx4M7gYJkCdYWiIyIxzoUPbz9uwqH
 UE/0/hy5KPo5ry9BXXh+GLc58TUBkRUy/xECrNjb4XqwWJoQwbR1RinkJOD18trAUk
 njLkZPgI38MCQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=W76eLcPA
Subject: Re: [Intel-wired-lan] [PATCH] [PATCH iwl-next v2] ice: store VF's
 pci_dev ptr in ice_vf
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
Cc: leon@kernel.org, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 12, 2023 at 07:56:26AM -0400, Mateusz Polchlopek wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Extend struct ice_vf by vfdev.
> Calculation of vfdev falls more nicely into ice_create_vf_entries().
> 
> Caching of vfdev enables simplification of ice_restore_all_vfs_msi_state().
> 
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
