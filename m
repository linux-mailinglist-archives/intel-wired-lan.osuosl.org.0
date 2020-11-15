Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC582B370F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Nov 2020 18:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 62B7620369;
	Sun, 15 Nov 2020 17:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cekp4E3uSyVb; Sun, 15 Nov 2020 17:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8E62920385;
	Sun, 15 Nov 2020 17:24:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27B891BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Nov 2020 04:48:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 118478731E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Nov 2020 04:48:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QdWPOz57-sN0 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Nov 2020 04:48:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D98187312
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Nov 2020 04:48:38 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id u12so7487619wrt.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Nov 2020 20:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=1z3Klgi+UNsQizX/jU8tNiP98p7LLCRbWM8W3amBWTU=;
 b=NjCu6ZFdG/CJ9fFsRmipIdWI0ni4uC3GyZRSgX+1K7hSTy4+5o8eORYTtrGtNfFUPB
 taBUrC6vXhPN6bcbvB0ntjP8kOjRqIP9d8klPPSdZYKyjcDk84PwsokaFz50vAdL/+wo
 4W7+OWxTtpwW1Q8eA1XLwXZcfECHNl6SrTsHlR2DGTzZbZAb915ttxEwbw82YzdK75G4
 coCx4pcr/9c1ldM/pYBdTsJ6iVa6Tl2oT5R5mCe3HCcemeMg/RmVVDQG1zACqrKo5hT7
 DOr2UoICYF6XCVJwO22VXJWHvcCEbB6ypSEYhWSvHUxK/f3j3nNybHgUeXiiMsmrLOf5
 VghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1z3Klgi+UNsQizX/jU8tNiP98p7LLCRbWM8W3amBWTU=;
 b=cp0mvLnnUXAPP6EKDAJfA/ynKCsLTw0qap2E7Y7viM0AurhUBC46bNus3N9Xy2FeEg
 1nUlitbzWxV3unYN7QOHGJ4EIk/owvyc3flqIa6pmZOEPAuziOd1Vc9b5CEm5/7QXRPy
 lYsIyOgxJkj93klGrmq8gPajFh7LboHppz02DCiMl2t7nsWOPzs4PyAR0CH0xdhNo2fR
 +RTTxGaPXbMPMNWzbovIiz/Wz5os9/w3HWXV1jENsmKnw+a72Wlc/DLyVeddO1N9w3ju
 8HBqLOiGLvzufy5aC+K+vgo+sRV9gYPQ633DBx8vEvCb+F9lIxxkY9ozWfLeq/DqgmKI
 P/Bg==
X-Gm-Message-State: AOAM533MImmK3UQWVbKlsV4xVT657n95Z3jczC+Yc41sg8L3nLoacK5I
 +Qt+1pTGvjvGctj7v4zR1DJILw==
X-Google-Smtp-Source: ABdhPJwpDd4WM6FwdwodUf2sRoeinFwrmGTHLWZnsRKj9w9luXNPQbO+J0nfwEIen5oBgqAJPcavgA==
X-Received: by 2002:adf:e551:: with SMTP id z17mr12558344wrm.374.1605415716935; 
 Sat, 14 Nov 2020 20:48:36 -0800 (PST)
Received: from apalos.home (ppp-94-64-112-220.home.otenet.gr. [94.64.112.220])
 by smtp.gmail.com with ESMTPSA id
 89sm17673023wrp.58.2020.11.14.20.48.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Nov 2020 20:48:36 -0800 (PST)
Date: Sun, 15 Nov 2020 06:48:31 +0200
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>
Message-ID: <20201115044831.GA1304196@apalos.home>
References: <20201112114041.131998-1-bjorn.topel@gmail.com>
 <20201112114041.131998-7-bjorn.topel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201112114041.131998-7-bjorn.topel@gmail.com>
X-Mailman-Approved-At: Sun, 15 Nov 2020 17:24:29 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 6/9] xsk: propagate napi_id
 to XDP socket Rx path
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
Cc: mst@redhat.com, kda@linux-powerpc.org, ast@kernel.org, edumazet@google.com,
 thomas.petazzoni@bootlin.com, ioana.ciornei@nxp.com, ecree@solarflare.com,
 aelior@marvell.com, akiyano@amazon.com, sthemmin@microsoft.com,
 ruxandra.radulescu@nxp.com, maximmi@nvidia.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>, sgoutham@marvell.com,
 grygorii.strashko@ti.com, qi.z.zhang@intel.com, mcroce@microsoft.com,
 michael.chan@broadcom.com, magnus.karlsson@intel.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, tariqt@nvidia.com, netanel@amazon.com,
 jonathan.lemon@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 12, 2020 at 12:40:38PM +0100, Bj=F6rn T=F6pel wrote:
> From: Bj=F6rn T=F6pel <bjorn.topel@intel.com>
> =

> Add napi_id to the xdp_rxq_info structure, and make sure the XDP
> socket pick up the napi_id in the Rx path. The napi_id is used to find
> the corresponding NAPI structure for socket busy polling.
> =

> Signed-off-by: Bj=F6rn T=F6pel <bjorn.topel@intel.com>
> ---
>  drivers/net/ethernet/amazon/ena/ena_netdev.c  |  2 +-
>  drivers/net/ethernet/broadcom/bnxt/bnxt.c     |  2 +-
>  .../ethernet/cavium/thunder/nicvf_queues.c    |  2 +-
>  .../net/ethernet/freescale/dpaa2/dpaa2-eth.c  |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  2 +-
>  drivers/net/ethernet/intel/ice/ice_base.c     |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  2 +-
>  drivers/net/ethernet/intel/igb/igb_main.c     |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  2 +-
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  2 +-
>  drivers/net/ethernet/marvell/mvneta.c         |  2 +-
>  .../net/ethernet/marvell/mvpp2/mvpp2_main.c   |  4 ++--
>  drivers/net/ethernet/mellanox/mlx4/en_rx.c    |  2 +-
>  .../net/ethernet/mellanox/mlx5/core/en_main.c |  2 +-
>  .../ethernet/netronome/nfp/nfp_net_common.c   |  2 +-
>  drivers/net/ethernet/qlogic/qede/qede_main.c  |  2 +-
>  drivers/net/ethernet/sfc/rx_common.c          |  2 +-
>  drivers/net/ethernet/socionext/netsec.c       |  2 +-
>  drivers/net/ethernet/ti/cpsw_priv.c           |  2 +-
>  drivers/net/hyperv/netvsc.c                   |  2 +-
>  drivers/net/tun.c                             |  2 +-
>  drivers/net/veth.c                            |  2 +-
>  drivers/net/virtio_net.c                      |  2 +-
>  drivers/net/xen-netfront.c                    |  2 +-
>  include/net/busy_poll.h                       | 19 +++++++++++++++----
>  include/net/xdp.h                             |  3 ++-
>  net/core/dev.c                                |  2 +-
>  net/core/xdp.c                                |  3 ++-
>  net/xdp/xsk.c                                 |  1 +
>  29 files changed, 47 insertions(+), 33 deletions(-)
> =

 =

For the socionext driver

Acked-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
