Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6637DA7AB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Oct 2023 17:07:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CA456113D;
	Sat, 28 Oct 2023 15:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CA456113D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698505654;
	bh=csU8DJ7ehFNafMgNCZsEQsJL8nUBTdXSc+6HlZLMxzc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=taEe8FChRCAG/Pw/Rtlft+/ZxWUUINBwBi2CjNcDQ8zv4JD7RxLiMQoo9CzHpA2dA
	 +SbOXG8xBxLABTwl7mwhOQ24aCLdx///jDUThMwWM5mazwQXuS2UJ4bZGrAFh55w5g
	 frUUP9Vcs30ICN2XFQbXtK4l8P/foFhHySjSZtJkM221G2SO0nI+9zFSrY6KpOKMN5
	 DPZFvFAx1eqhsXXKg2iLDJewltqNWg/qeaBy7ohlzrkniogE5ejWh4jDddCmuwBDqS
	 NyVMdLLZWfGcPFzmDCSrWqdy+/zesUimF0OXTJCe2HrcprSxRSan04PAI6nqy1cdci
	 AtM7wq2xEEdwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U3dm-8QNh7_Y; Sat, 28 Oct 2023 15:07:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C55261107;
	Sat, 28 Oct 2023 15:07:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C55261107
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 46B2F1BF362
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Oct 2023 15:07:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2191542231
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Oct 2023 15:07:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2191542231
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jz-uAW1Yeriw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Oct 2023 15:07:28 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6AF6E42228
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Oct 2023 15:07:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AF6E42228
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1qwktF-000PNE-09; Sat, 28 Oct 2023 17:06:17 +0200
Date: Sat, 28 Oct 2023 17:06:16 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <c7fffb8e-3ca7-4a70-8c6a-0b9c3d6d96d1@lunn.ch>
References: <20231027-ethtool_puts_impl-v3-0-3466ac679304@google.com>
 <20231027-ethtool_puts_impl-v3-1-3466ac679304@google.com>
 <8ca4ba13-1bcf-4c7b-91b6-8c77fbe55b30@lunn.ch>
 <CAFhGd8p8mmGfR-eTu_g3k64Z79z=M1xfjTFDhmJ1XaszCtQx1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFhGd8p8mmGfR-eTu_g3k64Z79z=M1xfjTFDhmJ1XaszCtQx1w@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=amPD2Fv/HjzzurFL/5PbBJlVeFR9uLqmO4pACbtWeSM=; b=gh
 Z/6tGXugP/rUAK2/gcHRJsj10N/7Y7i8cEejJllfAcKBCjzDAdvPaG6z1hpubLIdwQVC161N9eff0
 pbyTRX8AAQe+6ngnAO0kTpFtj/d0L1+ADFaj9+GA7vZdzuelUfUTVkfuSdCBQWx0830yQjxzc2Swk
 TPr7a1OI5OFXX+s=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=ghZ/6tGX
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/3] ethtool: Implement
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBPY3QgMjcsIDIwMjMgYXQgMDY6MjA6MDhQTSAtMDcwMCwgSnVzdGluIFN0aXR0IHdy
b3RlOgo+IE9uIEZyaSwgT2N0IDI3LCAyMDIzIGF0IDQ6NDPigK9QTSBBbmRyZXcgTHVubiA8YW5k
cmV3QGx1bm4uY2g+IHdyb3RlOgo+ID4KPiA+ID4gKy8qKgo+ID4gPiArICogZXRodG9vbF9wdXRz
IC0gV3JpdGUgc3RyaW5nIHRvIGV0aHRvb2wgc3RyaW5nIGRhdGEKPiA+ID4gKyAqIEBkYXRhOiBQ
b2ludGVyIHRvIHN0YXJ0IG9mIHN0cmluZyB0byB1cGRhdGUKPiA+Cj4gPiBJc24ndCBpdCBhY3R1
YWxseSBhIHBvaW50ZXIgdG8gYSBwb2ludGVyIHRvIHRoZSBzdGFydCBvZiBzdHJpbmcgdG8KPiA+
IHVwZGF0ZT8KPiAKPiBJIHN1cHBvc2UuCgpJdHMga2luZCBvZiByZWxldmFudCBiZWNhdXNlIHlv
dSBpbmNyZW1lbnQgYnkgdGhlIGxlbmd0aCwgd2hpY2ggeW91CmNhbiBvbmx5IGRvIGJlY2F1c2Ug
aXQgaXMgKiouIEkgYWxzbyBmaW5kIGl0IGEgcHJldHR5IHN0cmFuZ2UgQVBJLCBzbwpkb2N1bWVu
dGluZyBpdCBjb3JyZWN0bHkgaXMgaW1wb3J0YW50IGZvciBtZS4KCj4gCj4gRldJVywgSSBqdXN0
IGNvcHktcGFzdGVkIHRoZSBzcHJpbnRmIGRvYyBhbmQgdHdlYWtlZDoKPiAvKioKPiAgKiBldGh0
b29sX3NwcmludGYgLSBXcml0ZSBmb3JtYXR0ZWQgc3RyaW5nIHRvIGV0aHRvb2wgc3RyaW5nIGRh
dGEKPiAgKiBAZGF0YTogUG9pbnRlciB0byBzdGFydCBvZiBzdHJpbmcgdG8gdXBkYXRlCgpTbyB0
aGF0IG5lZWQgZml4aW5nIGFzIHdlbGwuIEkgd2lsbCBjb29rIHVwIGEgcGF0Y2ggZm9yIHRoaXMg
b25lLgoKICAgQW5kcmV3Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
