Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD1A7D8B94
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 00:18:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5251E4B795;
	Thu, 26 Oct 2023 22:18:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5251E4B795
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698358681;
	bh=12CUnRY9ow18Mlnb3sGSqOV7vhRLxs47zg2uhpm+yB0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vEVrMdMpP5Q1xDQMs1wDrTQyy2lKSwLgH8HqsHq3vRNNwj4FH4IokRh5t7XW37LMG
	 VaPFpY/03ZjZLJDlqzGJPUQzx2dhdTuIQ76aY2kVthageUrZ3o0nb5PJfbcg3UtUgk
	 +jLSiLt4O+laAzzthp6Hgw9ehqqnE+CQPyk4Uix8xuCDIKFsZ55sFMQ738/AejLlwz
	 co99QDLAVyJJ+10JGlM/lXnli4oV3eVz/ZtjUVUaQwuGIp6j8Iqi4sFVTSFoj2QRJX
	 li0r9SzjMqEjz9DcvttTy9Ebo8C8ptCRMlMTc1X+PkrHu3uaJhT1DAaY9HeXmlgv7s
	 8AxfPmVK3HjQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ziMCNPAbpFj0; Thu, 26 Oct 2023 22:18:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AABF4B739;
	Thu, 26 Oct 2023 22:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AABF4B739
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF4051BF378
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:17:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ACD1D43052
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:17:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACD1D43052
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f8tJeMJ_rXYf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 22:17:53 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3751843026
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:17:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3751843026
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-4083f61312eso10957005e9.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 15:17:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698358671; x=1698963471;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=J6aQzvymgnykTJYyUNqos0M7PldrCbODsxg27QrFdA8=;
 b=msVJE2q4s0KmBWBX/NFxFj/Fa+film335xNNLzgMBtRI36ibm3VrqSOD6bFRg84RfC
 kyqVVIJcS2Q2Mev4ENy/RBQunksQ7JaIbEZx17n8IBg6lvMWYsWJmxyMZ0QGoZMc35+M
 FMjYCOx2ZADAWOkpEQwL1IHNd8hJgCRSqbMxBu+DP9lhHQ3TpO/EaB6I1NLYu51MiNyE
 YmNSGKJsB61lE2hNEHOR8WPtii+cuKRxHk6MD/gME/NhNMp8oppGoP0pbgajrK3BXa/e
 zDLt//STdRr2mtj982aQIOOoZX1VEq6D+XAgohxlLYJR4iqXAD/RH4D61uW+B32deYMl
 25fg==
X-Gm-Message-State: AOJu0YxsE+N1Y7cHGmbgTVRH6ATVhmx6EKLzHCsymiko+EusavpYXYuT
 i0cQscHzdetubyN0PMhCRDs=
X-Google-Smtp-Source: AGHT+IEXk7wu+BWH5PuNjLGzYfglJqQqyr64jFKw9mM2T6j/NSdcIcGUsTFFoYUci+YzMymGrg+hrA==
X-Received: by 2002:a05:600c:1d18:b0:408:4475:8cc1 with SMTP id
 l24-20020a05600c1d1800b0040844758cc1mr930072wms.35.1698358671120; 
 Thu, 26 Oct 2023 15:17:51 -0700 (PDT)
Received: from skbuf ([188.26.57.160]) by smtp.gmail.com with ESMTPSA id
 v3-20020a05600c428300b0040596352951sm3541734wmc.5.2023.10.26.15.17.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Oct 2023 15:17:50 -0700 (PDT)
Date: Fri, 27 Oct 2023 01:17:45 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <20231026221745.uiqvn6avvcruyafx@skbuf>
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-3-0d67cbdd0538@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231026-ethtool_puts_impl-v2-3-0d67cbdd0538@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698358671; x=1698963471; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=J6aQzvymgnykTJYyUNqos0M7PldrCbODsxg27QrFdA8=;
 b=GAfcGodjJTiWRoaHlcemJwq+71Jk8dXIc53g4OraNbr3w4rsRYq0am0vsy2OCCMUpY
 uFhN4ZoR4iVzOPzY45lA4m91NH9rtwswB+1Ciw4IpmwOY+11ZP+yYqV/r6p9iUo0SV7D
 jhJ5uGk2wFW5wlP7RlWhqqKt/CM2H2U6NICZbXQWCo2ZGWRUXgJVsyAdCy2CruDIpUkG
 Kcml8s572kEQbRcC+PlK/EMRU/i2PZuO8fy2zjACyql2mCUulghYBjio8mMeSnQUOHc9
 8DXBzYoz78XLMjYph/3kjHlBI7X5ZzGr8UOE7WA7FKZBVG2L5Sc5FXt0Gf26N/d0KPwp
 F+5g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=GAfcGodj
Subject: Re: [Intel-wired-lan] [PATCH next v2 3/3] treewide: Convert some
 ethtool_sprintf() to ethtool_puts()
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-hyperv@vger.kernel.org,
 Brett Creeley <brett.creeley@amd.com>, Ronak Doshi <doshir@vmware.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Alexei Starovoitov <ast@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, linux-kernel@vger.kernel.org,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Louis Peens <louis.peens@corigine.com>, Wei Liu <wei.liu@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Dexuan Cui <decui@microsoft.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Noam Dagan <ndagan@amazon.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Shenwei Wang <shenwei.wang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Landen Chao <Landen.Chao@mediatek.com>,
 Shay Agroskin <shayagr@amazon.com>,
 Daniel Machon <daniel.machon@microchip.com>,
 Alvin =?utf-8?Q?=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
 Hauke Mehrtens <hauke@hauke-m.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 Sean Wang <sean.wang@mediatek.com>, Nathan Chancellor <nathan@kernel.org>,
 Joe Perches <joe@perches.com>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Wei Fang <wei.fang@nxp.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, drivers@pensando.io,
 intel-wired-lan@lists.osuosl.org, Lars Povlsen <lars.povlsen@microchip.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-arm-kernel@lists.infradead.org, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, DENG Qingfang <dqfext@gmail.com>,
 Kees Cook <keescook@chromium.org>,
 =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
 Rasesh Mody <rmody@marvell.com>, David Arinzon <darinzon@amazon.com>,
 oss-drivers@corigine.com, Nick Desaulniers <ndesaulniers@google.com>,
 Daniel Golle <daniel@makrotopia.org>, "David S. Miller" <davem@davemloft.net>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Saeed Bishara <saeedb@amazon.com>,
 linux-mediatek@lists.infradead.org, bpf@vger.kernel.org,
 Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>, UNGLinuxDriver@microchip.com,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 26, 2023 at 09:56:09PM +0000, Justin Stitt wrote:
> This patch converts some basic cases of ethtool_sprintf() to
> ethtool_puts().
> 
> The conversions are used in cases where ethtool_sprintf() was being used
> with just two arguments:
> |       ethtool_sprintf(&data, buffer[i].name);
> or when it's used with format string: "%s"
> |       ethtool_sprintf(&data, "%s", buffer[i].name);
> which both now become:
> |       ethtool_puts(&data, buffer[i].name);
> 
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
>  drivers/net/dsa/lantiq_gswip.c                     |  2 +-
>  drivers/net/dsa/mt7530.c                           |  2 +-
>  drivers/net/dsa/qca/qca8k-common.c                 |  2 +-
>  drivers/net/dsa/realtek/rtl8365mb.c                |  2 +-
>  drivers/net/dsa/realtek/rtl8366-core.c             |  2 +-
>  drivers/net/dsa/vitesse-vsc73xx-core.c             |  8 +--
>  drivers/net/ethernet/amazon/ena/ena_ethtool.c      |  4 +-
>  drivers/net/ethernet/brocade/bna/bnad_ethtool.c    |  2 +-
>  drivers/net/ethernet/freescale/fec_main.c          |  4 +-
>  .../net/ethernet/fungible/funeth/funeth_ethtool.c  |  8 +--
>  drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c |  2 +-
>  .../net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c    |  2 +-
>  drivers/net/ethernet/hisilicon/hns/hns_ethtool.c   | 65 +++++++++++-----------
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c     |  6 +-
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c     |  3 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c       |  9 +--
>  drivers/net/ethernet/intel/idpf/idpf_ethtool.c     |  2 +-
>  drivers/net/ethernet/intel/igb/igb_ethtool.c       |  6 +-
>  drivers/net/ethernet/intel/igc/igc_ethtool.c       |  6 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c   |  5 +-
>  .../net/ethernet/microchip/sparx5/sparx5_ethtool.c |  2 +-
>  .../net/ethernet/netronome/nfp/nfp_net_ethtool.c   | 44 +++++++--------
>  drivers/net/ethernet/pensando/ionic/ionic_stats.c  |  4 +-
>  drivers/net/ethernet/wangxun/libwx/wx_ethtool.c    |  2 +-
>  drivers/net/hyperv/netvsc_drv.c                    |  4 +-
>  drivers/net/phy/nxp-tja11xx.c                      |  2 +-
>  drivers/net/phy/smsc.c                             |  2 +-
>  drivers/net/vmxnet3/vmxnet3_ethtool.c              | 10 ++--
>  28 files changed, 100 insertions(+), 112 deletions(-)

What's the "next" branch that you expect this to be applied through, and
why is the patch "treewide"? It only affects networking drivers (I see
nothing outside of drivers/net/) - so it's "net: Convert ..." and it
should go through the "net-next.git" tree. The patch should be formatted
as "PATCH net-next" not "PATCH next", to make this absolutely clear.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
