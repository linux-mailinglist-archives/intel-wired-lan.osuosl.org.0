Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC077DFB1F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Nov 2023 20:57:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC2B570730;
	Thu,  2 Nov 2023 19:57:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC2B570730
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698955020;
	bh=XY6h+R7rufVe9Qf7qYg+el5trFNEDmO3isCOd1ot94I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Gzbk56KV/1z2KB3P5L7CssVbx0i6TpzzoaNAg/GSoLCridD4EBW5bHlFE3v+Y0AMQ
	 suVL68VCmsxr8t6IOsyyRyBdXFYyTntsIQAXYcasCsEeb5DhTR2c7a/pQC1Em9ag5u
	 J2wwiBZ8FwGnCuKLBjwr61DOy1F7sT84dc2AzN+/MFJX0zLLHjuceeoCmBDZVaWTA8
	 w5TvMqsesoG1Hvkm0yoFcGSkgjnI8H0FamI9VTmL551hzCiT+jXBnCyx6NWCsVByIk
	 HO8y9/bGZhoaLFzbvMXUee8lqG2RUpL0rYjAJr2+RgCkrXhlGHTqrUcqsIKOmfZriL
	 8zm7zL7kC/2/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F2V4Txr09ffz; Thu,  2 Nov 2023 19:56:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F3C770726;
	Thu,  2 Nov 2023 19:56:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F3C770726
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C67CC1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 19:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AACDC4EEEA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 19:56:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AACDC4EEEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dx7M6Vk5sagA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Nov 2023 19:56:46 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6B5804EEBC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 19:56:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B5804EEBC
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1qydn8-000mGi-5t; Thu, 02 Nov 2023 20:55:46 +0100
Date: Thu, 2 Nov 2023 20:55:46 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: "Kiyanovski, Arthur" <akiyano@amazon.com>
Message-ID: <0df2daf8-9707-4859-b4c2-5c3c2ef2f8cd@lunn.ch>
References: <20231102-ethtool_puts_impl-v4-0-14e1e9278496@google.com>
 <20231102-ethtool_puts_impl-v4-3-14e1e9278496@google.com>
 <75bf36b5eef9487794c11a45cb25f155@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75bf36b5eef9487794c11a45cb25f155@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=AW0JKODqEk596T2QEg4UZ2eLMTRAd63PvmKSuulbUwQ=; b=ibpfBYhILmLn39D7AlH28340n3
 XLifNeoA3ngYepC9tqOP+n25UgJ1gaMVEaLMugYVPXmyavS2HYTe/AHVSWTa01L5LFC1qPjw1Htk/
 2KXsfghHYH4qrb5QS8256r06TCsUgebHwiX4EfUC7HcUBDNGaBmBPJBfX0AHR3/ikaTQ=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=ibpfBYhI
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/3] net: Convert some
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
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 Brett Creeley <brett.creeley@amd.com>, Ronak Doshi <doshir@vmware.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Alexei Starovoitov <ast@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Vladimir Oltean <olteanv@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Dagan,
 Noam" <ndagan@amazon.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Louis Peens <louis.peens@corigine.com>, Wei Liu <wei.liu@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Dexuan Cui <decui@microsoft.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Shenwei Wang <shenwei.wang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Landen Chao <Landen.Chao@mediatek.com>,
 "Agroskin, Shay" <shayagr@amazon.com>,
 Daniel Machon <daniel.machon@microchip.com>,
 Alvin =?utf-8?Q?=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
 Hauke Mehrtens <hauke@hauke-m.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 Sean Wang <sean.wang@mediatek.com>, Nathan Chancellor <nathan@kernel.org>,
 Joe Perches <joe@perches.com>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Wei Fang <wei.fang@nxp.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Andy Whitcroft <apw@canonical.com>,
 "drivers@pensando.io" <drivers@pensando.io>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Salil Mehta <salil.mehta@huawei.com>,
 "GR-Linux-NIC-Dev@marvell.com" <GR-Linux-NIC-Dev@marvell.com>,
 DENG Qingfang <dqfext@gmail.com>, Kees Cook <keescook@chromium.org>,
 =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
 Rasesh Mody <rmody@marvell.com>, "Arinzon, David" <darinzon@amazon.com>,
 "oss-drivers@corigine.com" <oss-drivers@corigine.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Daniel Golle <daniel@makrotopia.org>, "David S. Miller" <davem@davemloft.net>,
 Justin Stitt <justinstitt@google.com>, "Bshara, Saeed" <saeedb@amazon.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > + vmxnet3_rq_driver_stats[i].desc);
> >         }
> > 
> >         for (i = 0; i < ARRAY_SIZE(vmxnet3_global_stats); i++)
> > -               ethtool_sprintf(&buf, vmxnet3_global_stats[i].desc);
> > +               ethtool_puts(&buf, vmxnet3_global_stats[i].desc);
> >  }
> > 
> >  netdev_features_t vmxnet3_fix_features(struct net_device *netdev,
> > 
> > --
> > 2.42.0.869.gea05f2083d-goog
> 
> Thanks for submitting this.
> For ENA driver
> 
> Acked-by: Arthur Kiyanovski <akiyano@amazon.com> 

Hi Arthur

Please trim emails when replying.

       Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
