Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E09567DFB72
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Nov 2023 21:21:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CA0C7072B;
	Thu,  2 Nov 2023 20:21:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CA0C7072B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698956509;
	bh=SIJbKlU2DsORrIzE1LKnTWRtS+VFgqZYR5rksZPhU5A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iU7I5UwkHc5k3lBgzupIvJH6TAsUKb5vVllUPfh20Ibk9648c4ecfxWeiTgXxhcCh
	 6P3TFdf0VZGh5mt0JkLdF6dQLtFe+4sUrN0p13M3Z080P8pzg8+kIyvTTtl4N28XvS
	 xFjXFfYna5sZKa1t2f+RaMLWFbA5UEu5016P7Dk4ayTdR56OS42uByPkWCeOo9zMU7
	 KZ/yaPiT5npUEyXH6qwhgmCX3Ax86/NE+guLLgn8G5viYD/8Vt/b3Lr0B/vOErY9XT
	 wtSD3An7FP6e5+b7AEs3iJSEUMxp7il+1Xk66UHNu8dAzbjbm74CBB93lM9JAcdwb1
	 Ow2cJYvaA7bzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2C45wiBQqAjx; Thu,  2 Nov 2023 20:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F0CC70783;
	Thu,  2 Nov 2023 20:21:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F0CC70783
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2F881BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 19:32:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0E5247067F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 19:32:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E5247067F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hSM201v1cbfp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Nov 2023 19:32:40 +0000 (UTC)
X-Greylist: delayed 535 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 02 Nov 2023 19:32:40 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12BF27062E
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk
 [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 12BF27062E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Nov 2023 19:32:39 +0000 (UTC)
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:38784)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.96)
 (envelope-from <linux@armlinux.org.uk>) id 1qydGj-0004u7-19;
 Thu, 02 Nov 2023 19:22:17 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1qydGY-0007YK-66; Thu, 02 Nov 2023 19:22:06 +0000
Date: Thu, 2 Nov 2023 19:22:06 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <ZUP23ic6adijQ8U9@shell.armlinux.org.uk>
References: <20231102-ethtool_puts_impl-v4-0-14e1e9278496@google.com>
 <20231102-ethtool_puts_impl-v4-1-14e1e9278496@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231102-ethtool_puts_impl-v4-1-14e1e9278496@google.com>
X-Mailman-Approved-At: Thu, 02 Nov 2023 20:21:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GukiPnfP3Xe/TCueOvIoJT0OZefLfRkX+nqu8Htn41o=; b=wd8/C0aoENJPmgNQ8TeNa+MmYG
 pSMEdo/P+Z0QSaJHP/bMvwGnGVMqcS+OeNG69bQepqX5ysUypXD7SovHC+GJ00PLmtmZelmOy8nvk
 ZrRLMS9Z28fHf/QTaSOvJYdLMPCd3HKNqv4eUAQUIlKNjautWB33QlLRWR98IIqUX0hnEPRi7T5q9
 XnARcEGsrnG7AFikIYM4Y5CIR/aSgienYfitnY2PEKtu6LduA6Cix18Ne6qNA+8A0Azxiw7VJfZ/F
 wTk5UuGHldo8zXv5MoY9qnspZYB9g/mvvPxGYezIUdPAZAAdTtrIZkfnL8Vqw1dEVbB5F1xvdQA46
 ZtJdbomw==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk
 header.a=rsa-sha256 header.s=pandora-2019 header.b=wd8/C0ao
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/3] ethtool: Implement
 ethtool_puts()
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
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Vladimir Oltean <olteanv@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>, netdev@vger.kernel.org,
 Arthur Kiyanovski <akiyano@amazon.com>,
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

On Thu, Nov 02, 2023 at 06:55:42PM +0000, Justin Stitt wrote:
> +/**
> + * ethtool_puts - Write string to ethtool string data
> + * @data: Pointer to a pointer to the start of string to update
> + * @str: String to write
> + *
> + * Write string to *data. Update *data to point at start of
> + * next string.

A minor nit...

Sorry to jump in a bit late in this, but... concerning the use of "puts"
the userspace stdio version adds a trailing newline. Thus, to avoid any
confusion, I think the kerneldoc for this should explicitly state that
this does not add a newline.

 * Write string to *data without a trailing newline. Update *data to
 * point at the start of the next string.

This shouldn't be an issue, but it makes the behaviour of it plainly
obvious to the reader.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
