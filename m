Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1E38C44D6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 18:09:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 596254154E;
	Mon, 13 May 2024 16:09:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z2Io4r2eGRAi; Mon, 13 May 2024 16:09:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3AF441511
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715616595;
	bh=JMJocrkz4B26YKZa4KaxAL1IhW+xJQwUw4YBkRT7I9s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tuKAM9ohQhDca8iA3cToys+kIxPdh2JI6M24C9U/Cvodv82Upo3E7IqORZ/06UstX
	 +ewvclMJEPa1D7LICh9Ux8xe9k5FnxrOaQ8zVL86ptTEG9o5ozYN+6CfhHilRV0AyX
	 z5ziRWd+iAojdwATxle/84SIT6s/vE+KLk1BtiQZ25DWNl+FIVAluhcn286elCpwst
	 iQiS1w/+4Pm6SfWnT41NFqYE5rk68+NUH/fWwNIADVczPpxRB+gzq9muViWr0YwGDY
	 C2xvBEW3yY2yd6ZS/TxiUz1CrqJyJUzuvm/wpBG4KJX0eiTjknM4Npsz9tWVhhokFT
	 0ZUyq/PuCbWzA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3AF441511;
	Mon, 13 May 2024 16:09:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1AD831BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 16:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 06AE4827C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 16:09:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7BTl9Oy1auWG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 16:09:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 45B5A827A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45B5A827A0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45B5A827A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 16:09:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 71EE560EC4;
 Mon, 13 May 2024 16:09:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B874EC2BD11;
 Mon, 13 May 2024 16:09:49 +0000 (UTC)
Date: Mon, 13 May 2024 17:09:47 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240513160947.GQ2787@kernel.org>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
 <20240513083735.54791-9-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240513083735.54791-9-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1715616592;
 bh=cbtWqYrDgwnkSB19r6+N772IAd9Ks2qmFgoKuDX/Mck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=imdllbMDqD3BqHC47qwYsFHScle2A4eNPfcxNiIoTRhtI8hZoRzSW3Uf9Y7QXDiar
 QuwS1uprtgagrESOXzT2pd+xQzbrAIgi8xceDKcnd/FDB/D1zBvCe8cUdBvpY65ZT4
 VFjyvFMWdTCilXBxtiqTq1B3LqLiM32feUL1Yc6B54lOhfzYut9sSn3KCPoNlc2Zx/
 SChT3XLHUJaqme+4gbeHXfCNViMDP9zzr14VlrqrO9AI0lq10MECSRvLX8I8fMkBaW
 PRHx0ktZqmer+kcvXVfoyfJY0iVacLTfjuTvrFBrP6px3I222JivCbcDdDq0ThZwz1
 XsWQPFNfrhewQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=imdllbMD
Subject: Re: [Intel-wired-lan] [iwl-next v2 08/15] ice: make reprresentor
 code generic
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 13, 2024 at 10:37:28AM +0200, Michal Swiatkowski wrote:
> Keep the same flow of port representor creation, but instead of general
> attach function create helpers for specific representor type.
> 
> Store function pointer for add and remove representor.
> 
> Type of port representor can be also known based on VSI type, but it
> is more clean to have it directly saved in port representor structure.
> 
> Add devlink lock for whole port representor creation and destruction.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

nit: In subject, reprresentor -> representor

> ---
>  .../ethernet/intel/ice/devlink/devlink_port.h |  1 +
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  | 74 +++++++++++-----
>  drivers/net/ethernet/intel/ice/ice_eswitch.h  | 11 +--
>  drivers/net/ethernet/intel/ice/ice_repr.c     | 88 +++++++++----------
>  drivers/net/ethernet/intel/ice/ice_repr.h     | 16 +++-
>  drivers/net/ethernet/intel/ice/ice_sriov.c    |  4 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  4 +-
>  7 files changed, 121 insertions(+), 77 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> index e4acd855d9f9..6e14b9e4d621 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> @@ -23,6 +23,7 @@ struct ice_dynamic_port {
>  	struct devlink_port devlink_port;
>  	struct ice_pf *pf;
>  	struct ice_vsi *vsi;
> +	unsigned long repr_id;

nit: Please add an entry for repr_id to the Kernel doc for this structure.

     And also the attached field which is added by the last patch
     of this series.

>  	u32 sfnum;
>  };
>  

...
