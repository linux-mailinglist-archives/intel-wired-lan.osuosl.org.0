Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8D37DA2B5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 23:57:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A903707C9;
	Fri, 27 Oct 2023 21:57:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A903707C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698443866;
	bh=UrnIgbAVfHKzrQE7lsIBb8fLRCwedS37YLNZH18xz6Y=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nhYwPq9mcqarw2pl9sib54fzlGpXO6ZwUHMRT/oqkqDXJtwDQXaMWyEblbkCvle8f
	 DeyhmZfMpfbtAG56IUC/uS+2V7qNY0qgONTxcXc1IIRmc9NiXDFswZ5LXNrng5Lkrx
	 bXjhGtTU8DJaR3vGmiAo3CpzXNUAbURbNw5Kr4WfqQzEXU5xEuEbKWW0o9VLkenMjN
	 8w2NiKF749UTvVVUHKy5xC+b90/W1BEATFuYJklrpo8wNOHBqwP5AM1yRdFairzcVb
	 fnBAjdWKYGuXHCmcONyUAdtPSHOM7S4zpOum/Hgiul+odIxsXuPxlIJ64vGcX/Bpjr
	 zrQu38yaA+BIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZIbaicJ7zDDH; Fri, 27 Oct 2023 21:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A4DD705B6;
	Fri, 27 Oct 2023 21:57:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A4DD705B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 211631BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 21:57:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED31F85350
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 21:57:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED31F85350
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qW8oJ4y3H2Am for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Oct 2023 21:57:40 +0000 (UTC)
Received: from relay.hostedemail.com (smtprelay0012.hostedemail.com
 [216.40.44.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2047B8534C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 21:57:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2047B8534C
Received: from omf05.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay07.hostedemail.com (Postfix) with ESMTP id E464C1608D4;
 Fri, 27 Oct 2023 21:57:34 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf05.hostedemail.com (Postfix) with ESMTPA id 8C4C420010; 
 Fri, 27 Oct 2023 21:57:11 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 27 Oct 2023 14:57:11 -0700
From: Joe Perches <joe@perches.com>
To: Justin Stitt <justinstitt@google.com>
In-Reply-To: <CAFhGd8p9ytqbRuqgWmKe=zCg7Nhft0NMvbuuEyjAQHNAcBedaQ@mail.gmail.com>
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-2-0d67cbdd0538@google.com>
 <8521c712250bcffce5c71e8d2b2574de786d4572.camel@perches.com>
 <CAFhGd8p9ytqbRuqgWmKe=zCg7Nhft0NMvbuuEyjAQHNAcBedaQ@mail.gmail.com>
Message-ID: <b24803fe577b5b6637688d53fc316ddf@perches.com>
X-Sender: joe@perches.com
X-Rspamd-Queue-Id: 8C4C420010
X-Rspamd-Server: rspamout02
X-Stat-Signature: m1pbwndhwam5b1ag1hju7qk35oscyikg
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+TLe8vtqI1bKTGsQAk37rK7o0vYU0SCtE=
X-HE-Tag: 1698443831-782705
X-HE-Meta: U2FsdGVkX1+7OJ/aFWnkB1RSMYVx1/89hz0EtWGLmwlCSeRDArhrzCUyZnrWEkVwtCbR2zisjeu8Ak7YA/Z5oSNwmQqruchMId5hTfou6k5Nlx/UjmhgdhpIoFd7/sQe3f4pmdR63PJ4Y71c3CQurETODWjnWAXybZT0GbrbJBBQ3DrLip5C3y4b7gPpFcJUebManYXF8YpkYxCkdDnoKrKkALXKALqGtOYGLfNf6T5gYPqL/7FppGaVaEcqUnARFt3VnXsUDFxFbDiIz0Eipg==
Subject: Re: [Intel-wired-lan] [PATCH next v2 2/3] checkpatch: add
 ethtool_sprintf rules
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
 =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
 Hauke Mehrtens <hauke@hauke-m.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 Sean Wang <sean.wang@mediatek.com>, Nathan Chancellor <nathan@kernel.org>,
 DENG Qingfang <dqfext@gmail.com>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Wei Fang <wei.fang@nxp.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, drivers@pensando.io,
 intel-wired-lan@lists.osuosl.org, Lars Povlsen <lars.povlsen@microchip.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-arm-kernel@lists.infradead.org, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Kees Cook <keescook@chromium.org>,
 =?UTF-8?Q?Ar=C4=B1n=C3=A7_=C3=9CN?= =?UTF-8?Q?AL?= <arinc.unal@arinc9.com>,
 Rasesh Mody <rmody@marvell.com>, David Arinzon <darinzon@amazon.com>,
 oss-drivers@corigine.com, Nick Desaulniers <ndesaulniers@google.com>,
 Daniel Golle <daniel@makrotopia.org>, "David S. Miller" <davem@davemloft.net>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Saeed Bishara <saeedb@amazon.com>,
 linux-mediatek@lists.infradead.org, bpf@vger.kernel.org,
 Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>, UNGLinuxDriver@microchip.com,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023-10-27 12:40, Justin Stitt wrote:

> Yeah you can push it but it's not really a standalone so perhaps I'll
> just steal the diff and
> wrap into v3?

Fine by me.
No need for my sign off.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
