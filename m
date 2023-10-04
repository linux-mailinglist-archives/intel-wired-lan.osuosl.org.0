Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3848C7B813D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 15:46:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBA8C6140F;
	Wed,  4 Oct 2023 13:46:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBA8C6140F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696427174;
	bh=5sFweFRHCzBe4PKNv8pdEGBnj4gFtY/UEVj+OqgBFCM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a21suJfkrN1eOmhzicrzCe3nN7+rgPxkCZT+K8bllWFggZiWhG72dMGJdOkkjknVT
	 k/1yuAXe0rRTT1mzrMBx0ivdr8FHTVXeU5MKA4DVWVFis90kY8oB4uXGNZ/OZwTTit
	 7FYLilgwxYCjV0mwiQ0d2X6lUv1Gs2CTyhaudQmkmy61mCRk8x/bg35j8vpzjCRPtN
	 kv3X89QREEgaDz2BNe9r1mdoF+zIzidIRBAjOysbOYGpUMLRwOaCwoNMgJXnC78HtP
	 yeCLniwzihDWJMm0242SGtUZqmUie6skmXF6CCTzmqi5T3A+2oWP3KrcfoVKWMcF8U
	 GdEKruo0FfHTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YsaLEdtPS_iM; Wed,  4 Oct 2023 13:46:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBCB0607B5;
	Wed,  4 Oct 2023 13:46:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBCB0607B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 46F881BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 13:46:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B8D58266C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 13:46:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B8D58266C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eeT21DW6V3wF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 13:46:01 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7C9282662
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 13:46:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7C9282662
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4917961560;
 Wed,  4 Oct 2023 13:46:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB9B4C433C7;
 Wed,  4 Oct 2023 13:45:58 +0000 (UTC)
Date: Wed, 4 Oct 2023 15:45:56 +0200
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <ZR1slAb0AQ3ayARW@kernel.org>
References: <20231003183603.3887546-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231003183603.3887546-1-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696427159;
 bh=Y3BmwF1KMQTZaurfsApWQj9Ur5s5JXdDqe4t2kyvNuI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n8nrTJ/lUpQKP6UJMvOacIPHavv4eTu9mszLq6RJGnVUsAjrl+swqOEYEBnwyWrab
 HoYPKt7B6oFIRCJa910TZSCycFUmiAGqoGTv0ACsJsOkMtqUitFASU7UQ1+bpXDGZ/
 PJoaVxuX8uITj37dHRi37XIiariBrqwTK88Nml01Sv+vQ4uHUiZJBsjNjZNm+ZSBit
 vZ+foHIqOdEdUVT7C92sxAHeEOJSok7+sDWgm1zidKW9x+66shp0YZA/axwa4x1hNW
 GCfDF+zwZP3vq1JGEarRgde4RJP01+0Wt89k1znBpJhVTZ4/l51Scij81OIIisdFfO
 bXFhX+EsO2pxQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=n8nrTJ/l
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 0/2] intel: format
 specifier cleanups
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
Cc: netdev@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 03, 2023 at 11:36:01AM -0700, Jesse Brandeburg wrote:
> Clean up some warnings from the W=1 build which moves the intel
> directory back to "clean" state. This mostly involved converting to
> using ethtool_sprintf where appropriate and kasprintf in other places.
> 
> The second patch goes the extra mile and cleans up -Wformat=2 warnings
> as suggested by Alex Lobakin, since those flags will likely be turned on
> as well.
> 
> gcc-12 runs clean after these changes, and clang-15 still has some minor
> complaints as mentioned in patch-2.
> 
> Jesse Brandeburg (2):
>   intel: fix string truncation warnings
>   intel: fix format warnings
> 
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  6 ++-
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  8 ++--
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 22 ++++-------
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  7 ++--
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |  4 +-
>  drivers/net/ethernet/intel/igb/igb_ethtool.c  |  4 +-
>  drivers/net/ethernet/intel/igb/igb_main.c     | 37 +++++++++----------
>  drivers/net/ethernet/intel/igc/igc_ethtool.c  |  5 ++-
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  4 +-
>  9 files changed, 46 insertions(+), 51 deletions(-)

For series,


Reviewed-by: Simon Horman <horms@kernel.org>
Tested-by: Simon Horman <horms@kernel.org> # build-tested

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
