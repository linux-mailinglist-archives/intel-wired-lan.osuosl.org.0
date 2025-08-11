Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA373B21985
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 01:48:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C5D061784;
	Mon, 11 Aug 2025 23:48:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rD5IatTIOguA; Mon, 11 Aug 2025 23:48:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 396AC61788
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754956094;
	bh=U4XRSLXmEMw0woCxwm1Fun/oPeKwzB3yukJjNW3UI7g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nvt1j60+3su5YypUzaos6dZwJuBhdR4oZ48i3GDbre5m1xUezz4lIAUV+31v9MEia
	 rWwFvlhqtBeuAPpIMYcS+PVdGa2vsIhDApGlPkWXUKUBrVMhP9tRFHJXhVaSh+nA+u
	 fkjQFL3K5zsyGeBtl55v8QBV3jf32lVo4HzDzSyjhz01CmeFApGMPmoHc2o8GrIeYg
	 LiOxmjQDHmIgWpbifpuXw5000sEYe8BcGzkwq72FsJEOIwRod9qf7qb9dX+ZDTQVdO
	 BrydO9SEW/09lcd2uc0wDPcfSyJRKWL+/Uq13/gpAc6CD0U6oVHULtNhvge7QGLbMb
	 6ahHyr1XkyEZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 396AC61788;
	Mon, 11 Aug 2025 23:48:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BA194183
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 23:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ABE1884260
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 23:48:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XmLkH_-C8lYw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 23:48:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 20D3584244
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20D3584244
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 20D3584244
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 23:48:10 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-24099fade34so35367375ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:48:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754956090; x=1755560890;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=U4XRSLXmEMw0woCxwm1Fun/oPeKwzB3yukJjNW3UI7g=;
 b=a2mtWb3BXx9YbhXy/n6CKIiku6bunFJYJ3petXsVwfRzA+SkdCTXP5omaLbqQR45Gs
 bX/AINghRaFCFsU+bfvWOPQesapeHGkx4MOyIuhQckGTWSOL/6LCHnle8xx9ixvJYGm6
 NGioEbxzSnrqr5Fn7BAb3SinXXYMg4j3Qdi7qwq9kajgz9OLH6FSd/5f/4DxlhARxudw
 2Ji7DRfzSKYutBPCO4FDskpYfoWUV2JeT1rdvZRPc3ojKQqVyqxLz/CmkrGVv9ochGXj
 XF0OqBK2HgxQh+MsNLZ68MTS5D64BZdr3cjnOfpmaI120n43hf7gz/kmQgX9ElSI2Oup
 Sp2g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVTxe2nuTzDTnmDplK/nTPWAu4f0qBQvUWzj3CWZcju5B2i66HzEeVmW2xEVy0IqPh0IAsG9h6dZWSSThiX00Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw9nJygn8HKuvKyaqtiG5HD+inzDNcwehLpyieHV1Tx34vZvN3p
 o6gULcalBT+Qeamvf7yxxmkbFvV0TZtHblO+JUKbb47keXXIrQP6jFUIJbfzb/8cW+Y=
X-Gm-Gg: ASbGnctowmLjNkdG5SC0SO904+fRqnjdZzlOAnVcqsTUrp0/TkZ/DKCNhLxWhHkWZAU
 rWSt8mjppbNgTLhIYb6W9nrqwKhYxy4t8YlrJHP5WLY3FFL47f29yme6NhDHZpAyAatXY2a0NAr
 jNb57vnATJAVH8bWucAVNpZPUovtmNdQmqM7aKxeQmronz5WPp6Z/CjgxfhDtNkzSXR2wiMilLg
 nAD07fJXZBif87Z/7NWMXxm5zPbG5RMMnrzx+2CMB+Gw0odFacus+g/DEOrAjA4fqKF9ubn8obo
 4OK8L0/HS+DhsPPq2vss5mZ73eu5BQHKuvkFLDVaAh6hQd9H5GKlLW9mW0UzOJJmU3FdIGSuJKk
 kS23896r0aPHCHB5mfAOx1pHhF5tJskr53parn/aSjtkzDbSAIKYj8gD30t1Lu8DtuUU=
X-Google-Smtp-Source: AGHT+IG07aJWSFz0EKwHxV+0m672OZTjD+dXJRBt0J7U3ZDXaKrxKPz/mMfIbtp585GM0LtN28ugxQ==
X-Received: by 2002:a17:903:1ae6:b0:240:981d:a4f5 with SMTP id
 d9443c01a7336-242fc357fc0mr20275505ad.42.1754956090207; 
 Mon, 11 Aug 2025 16:48:10 -0700 (PDT)
Received: from MacBook-Air.local (c-73-222-201-58.hsd1.ca.comcast.net.
 [73.222.201.58]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2423783a84bsm252085905ad.51.2025.08.11.16.48.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Aug 2025 16:48:09 -0700 (PDT)
Date: Mon, 11 Aug 2025 16:48:07 -0700
From: Joe Damato <joe@dama.to>
To: Tianyu Xu <xtydtc@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, sdf@fomichev.me,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, tianyxu@cisco.com
Message-ID: <aJqBN0xtMzt_cA87@MacBook-Air.local>
Mail-Followup-To: Joe Damato <joe@dama.to>, Tianyu Xu <xtydtc@gmail.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, sdf@fomichev.me,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, tianyxu@cisco.com
References: <20250811114153.25460-1-tianyxu@cisco.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811114153.25460-1-tianyxu@cisco.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20230601.gappssmtp.com; s=20230601; t=1754956090; x=1755560890;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=U4XRSLXmEMw0woCxwm1Fun/oPeKwzB3yukJjNW3UI7g=;
 b=hgkLULaJLIj1hoUOxB52w7SQvujbnVGz2jkYeQVJWaGrFyQ7jSRlsLFzbORorKncRE
 pjS+l5yMfUdQpVCzAb+bDdXMnsgFFVivor9TeN+6d4MRWAIdiIYVHDsZq3ZdrxnHXAyS
 D1ealB21SVGx1Fpnaz9f4mVHjlDKeouzCBl2VmW2L86y9QCtgkBoQLZ22DJaKZfNLRKw
 M+q6oNWEXd6cd4DdWpRi+uvJTLan0Z5APQPkbc53GOYIDdN8QihL9z8LFQh0I1Od9iP2
 rNV83wGoV3QGp1IAlmDHE+7qQJ9960xmC0kYsBNuFbx4t9kdLOIl8tl9ujvsO5XKnwn0
 AsQw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20230601.gappssmtp.com
 header.i=@dama-to.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=hgkLULaJ
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix NULL pointer dereference in
 ethtool loopback test
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

On Mon, Aug 11, 2025 at 07:41:53PM +0800, Tianyu Xu wrote:
> The igb driver currently causes a NULL pointer dereference
> when executing the ethtool loopback test. This occurs because
> there is no associated q_vector for the test ring when it is
> set up, as interrupts are typically not added to the test rings.
> 
> Since commit 5ef44b3cb43b removed the napi_id assignment in
> __xdp_rxq_info_reg(), there is no longer a need to pass a napi_id.
> Therefore, simply use 0 as the final parameter.
> 
> Signed-off-by: Tianyu Xu <tianyxu@cisco.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index a9a7a94ae..453deb6d1 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4453,8 +4453,7 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
>  	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
>  		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
>  	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
> -			       rx_ring->queue_index,
> -			       rx_ring->q_vector->napi.napi_id);
> +			       rx_ring->queue_index, 0);
>  	if (res < 0) {
>  		dev_err(dev, "Failed to register xdp_rxq index %u\n",
>  			rx_ring->queue_index);

This LGTM but will probably need to be re-sent with a Fixes tag.

See: https://www.kernel.org/doc/html/v6.16/process/maintainer-netdev.html#tl-dr

If you repost, feel free to add:

Reviewed-by: Joe Damato <joe@dama.to>
