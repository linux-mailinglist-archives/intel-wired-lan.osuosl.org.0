Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70537808BC9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 16:28:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AF8E83AFA;
	Thu,  7 Dec 2023 15:28:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AF8E83AFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701962918;
	bh=GZcEFDeDi9Pgf4n/HLUHAqy+6BULW17bX4h5+Ldt8so=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vUgkbe3M4pZNON2FVCuYz08fvhdO1tK+bWAwH6pZXVRVgeh7wv0XbynttL+kRcwuI
	 /Pp2YkCxMejpCjF2rsjiW095ttqVUrn8d+Zl3jFUm5c6oTLA0knBMRMPKFS86+sipL
	 i40UqDCAUmZgMsShzi31W0yaeEXoUSi/Jo7mBBSUbm4VSUARfcR6ysBa9DOnYfSgm2
	 eol8JSEzSh9M7KxetEQNwpDf8HeYKQZj9JlSMkgXjs1ke1N+TJjlkpFmE8yzn7W68X
	 VCTvSfqT1XNgG4/J4JJ6GW8IzsWmaIv3xsQDQeTkWlDRk1xu73x27DnMCuKsQ2bnQM
	 e+EiJrfEJrsGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pv5yZfCgOl49; Thu,  7 Dec 2023 15:28:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D49083B22;
	Thu,  7 Dec 2023 15:28:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D49083B22
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD58A1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 15:28:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8EBF83A75
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 15:28:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8EBF83A75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gkl1Y9o8eD-4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 15:28:30 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B951583A73
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 15:28:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B951583A73
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rBGHc-002KGh-Uo; Thu, 07 Dec 2023 16:27:24 +0100
Date: Thu, 7 Dec 2023 16:27:24 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: justinstitt@google.com
Message-ID: <6a0340d5-20e0-40ab-822e-d9fc1ce360d9@lunn.ch>
References: <20231206-ethtool_puts_impl-v5-0-5a2528e17bf8@google.com>
 <20231206-ethtool_puts_impl-v5-1-5a2528e17bf8@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206-ethtool_puts_impl-v5-1-5a2528e17bf8@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=oSO91Zjek++1IKXEdE5RYlis15XBD+gc14pgxk+BMSU=; b=snOb9ecvdpUafV+1Kv8SNC57GJ
 x7/AZCiAkpE/XzFrf7+piCHYMPszK6iqkhe3XvlRx2yU5gcjm088FMML13QyMxSmUZgSzqvUmcNsI
 KZITbZYDmXgsQqEqy+L60UfhISdR1Cn92aavH1IjrN8ZR7hRCibS76yLWVKjjZLLvurs=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=snOb9ecv
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/3] ethtool: Implement
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
Cc: linux-hyperv@vger.kernel.org, Brett Creeley <brett.creeley@amd.com>,
 Ronak Doshi <doshir@vmware.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Alexei Starovoitov <ast@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Vladimir Oltean <olteanv@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>, netdev@vger.kernel.org,
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

On Wed, Dec 06, 2023 at 11:16:10PM +0000, justinstitt@google.com wrote:
> Use strscpy() to implement ethtool_puts().
> 
> Functionally the same as ethtool_sprintf() when it's used with two
> arguments or with just "%s" format specifier.
> 
> Signed-off-by: Justin Stitt <justinstitt@google.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
