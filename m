Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 897F07DBCBD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:36:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A37B70B9E;
	Mon, 30 Oct 2023 15:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A37B70B9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680160;
	bh=6y/bEkUNcICwCld6F/aTDHvOQgcrjpK9XHWvwGL50zI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WJHEkfJSDLLHNSfhLO+YCScXJU7GvX+eTb+6wu09ULqVGeifee4kAYfJun1RFReKX
	 wSOsbDAzRZxEGC65x+4rgERqNhwUo+g+2izl+OfWFSryd4vy6mgekm2bSLRkVkl4R5
	 5/8aizMWKXiVQqOIJsRFCYufb0s4jJEOmbCJvZoILr/27M1NS5sGarqMwmy64ilUy/
	 di3djedIsxxBmYIzdlAWuMoVf9jlllmKiG9OMS/C4Q9kpn8cj8XmYQmBzC3tF7n6ga
	 Q1P4WChuMV045SgtUsH6VQiSyD332806cwz6abz2Ld22QpeHhjpzZg7cR6kNl7s2yM
	 SSgU4cvt2s3yA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U88Qc5BSeXjR; Mon, 30 Oct 2023 15:35:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEFE17097E;
	Mon, 30 Oct 2023 15:35:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEFE17097E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4838C1BF364
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:25:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E2C541B33
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:25:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E2C541B33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bd_oMZqGbYZw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 22:25:09 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E638141B8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:25:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E638141B8C
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-9c603e235d1so231422866b.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 15:25:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698359107; x=1698963907;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YeD8ayoKI+cNQ+dfy3v3WycX2QANJHfshgC8v+Kwnbw=;
 b=c4DsKkjuCAuLHwM0XKip/GA42n8XDEH5QIewaxtUrJFvsbh/AYAY0KmmvBpf2oPPsQ
 MZIfDlB5TBZeFHFaLTjp55K+oYPABGDdR+n/z026DG7PlhUmGaq7KxRfH2T7a7wnsnuO
 9z/mo66NUcCxAmRxQ/hb7TCHGlkvRBgy6ElSCOljgq0lQJNtfHsDlLyt6UhDRkA67mxc
 eqpIXeOBV5DvPG6HQ9MDIbWqu2cm82dtY0vqQllqaUFzCf7V1vjVXhWQKb/+OHQqBtAG
 np6w/hGF7ouu92UOQbYa0N5TUflFSiLejL4Kda4SHSVt07iI4G0THYa4aY2tu9n6E3o+
 MgVA==
X-Gm-Message-State: AOJu0YyjH2hpughaUv0NOMqD5V2i0hjK6AActoDjY2BsqzFNwEMTByq9
 B0HgikfWdAtnccE/NEykNvXZnuN4Dw/yA9wKZXoA4A==
X-Google-Smtp-Source: AGHT+IEDCJBHZUfT8pOveWHXKzhM9wbznVGkZxbqGNmoGRYpA7P/cGpiYUPu1qoNnYeFP4ggNqE2H/AXW9GW4yBSvD0=
X-Received: by 2002:a17:907:928b:b0:9ae:46c7:90fe with SMTP id
 bw11-20020a170907928b00b009ae46c790femr740516ejc.72.1698359106926; Thu, 26
 Oct 2023 15:25:06 -0700 (PDT)
MIME-Version: 1.0
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-2-0d67cbdd0538@google.com>
 <20231026221206.52oge3a5w4uxkkd5@skbuf>
In-Reply-To: <20231026221206.52oge3a5w4uxkkd5@skbuf>
From: Justin Stitt <justinstitt@google.com>
Date: Thu, 26 Oct 2023 15:24:54 -0700
Message-ID: <CAFhGd8r-u193pBk2+WWF+sHWEo5ixxEiT=fcSYiuy5W+aWDsbg@mail.gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:35:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698359107; x=1698963907; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YeD8ayoKI+cNQ+dfy3v3WycX2QANJHfshgC8v+Kwnbw=;
 b=EFF228aaVjIE49UsWwUhdxD4FFj365tTWaaX76nnHVVaL5z0F7Zs8HpXC9m0r5bgXP
 pi/8e9thljNUY3L3N0bcfyVTacNaE4AtiffFG+eHnPMa9eFtFoO+5hqlZy/+eLhTrHA8
 g9cQITGlq7+P1WrrjCe6bwqfQS/Fj4AbKY+FJZ5viav8eWRzx9Ak7OroInbTfE5VAWX5
 7ZtuRXsdNif9TTx+RF29oWCs0evAkfxQ5Haigwjznk2T+RZYSFZzxbONoHIxZpyu5HL6
 nmjZVvIXOwhsLPCbgUlLwIz9G8X+1Pna+izAg6MnheqrRLRJJyZC5eijPAroX0Oi74xL
 54EQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=EFF228aa
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
 =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
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
 =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
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

T24gVGh1LCBPY3QgMjYsIDIwMjMgYXQgMzoxMuKAr1BNIFZsYWRpbWlyIE9sdGVhbiA8b2x0ZWFu
dkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCBPY3QgMjYsIDIwMjMgYXQgMDk6NTY6MDhQ
TSArMDAwMCwgSnVzdGluIFN0aXR0IHdyb3RlOgo+ID4gQWRkIHNvbWUgd2FybmluZ3MgZm9yIHVz
aW5nIGV0aHRvb2xfc3ByaW50ZigpIHdoZXJlIGEgc2ltcGxlCj4gPiBldGh0b29sX3B1dHMoKSB3
b3VsZCBzdWZmaWNlLgo+ID4KPiA+IFRoZSB0d28gY2FzZXMgYXJlOgo+ID4KPiA+IDEpIFVzZSBl
dGh0b29sX3NwcmludGYoKSB3aXRoIGp1c3QgdHdvIGFyZ3VtZW50czoKPiA+IHwgICAgICAgZXRo
dG9vbF9zcHJpbnRmKCZkYXRhLCBkcml2ZXJbaV0ubmFtZSk7Cj4gPiBvcgo+ID4gMikgVXNlIGV0
aHRvb2xfc3ByaW50ZigpIHdpdGggYSBzdGFuZGFsb25lICIlcyIgZm10IHN0cmluZzoKPiA+IHwg
ICAgICAgZXRodG9vbF9zcHJpbnRmKCZkYXRhLCAiJXMiLCBkcml2ZXJbaV0ubmFtZSk7Cj4gPgo+
ID4gVGhlIGZvcm1lciBtYXkgY2F1c2UgLVdmb3JtYXQtc2VjdXJpdHkgd2FybmluZ3Mgd2hpbGUg
dGhlIGxhdHRlciBpcyBqdXN0Cj4gPiBub3QgcHJlZmVycmVkLiBCb3RoIGFyZSBzYWZlbHkgaW4g
dGhlIGNhdGVnb3J5IG9mIHdhcm5pbmdzLCBub3QgZXJyb3JzLgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IEp1c3RpbiBTdGl0dCA8anVzdGluc3RpdHRAZ29vZ2xlLmNvbT4KPiA+IC0tLQo+ID4gIHNj
cmlwdHMvY2hlY2twYXRjaC5wbCB8IDE5ICsrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9zY3JpcHRzL2No
ZWNrcGF0Y2gucGwgYi9zY3JpcHRzL2NoZWNrcGF0Y2gucGwKPiA+IGluZGV4IDI1ZmRiN2ZkYTEx
Mi4uMjJmMDA3MTMxMzM3IDEwMDc1NQo+ID4gLS0tIGEvc2NyaXB0cy9jaGVja3BhdGNoLnBsCj4g
PiArKysgYi9zY3JpcHRzL2NoZWNrcGF0Y2gucGwKPiA+IEBAIC03MDExLDYgKzcwMTEsMjUgQEAg
c3ViIHByb2Nlc3Mgewo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIlByZWZlciBzdHJz
Y3B5LCBzdHJzY3B5X3BhZCwgb3IgX19ub25zdHJpbmcgb3ZlciBzdHJuY3B5IC0gc2VlOiBodHRw
czovL2dpdGh1Yi5jb20vS1NQUC9saW51eC9pc3N1ZXMvOTBcbiIgLiAkaGVyZWN1cnIpOwo+ID4g
ICAgICAgICAgICAgICB9Cj4gPgo+ID4gKyMgZXRodG9vbF9zcHJpbnRmIHVzZXMgdGhhdCBzaG91
bGQgbGlrZWx5IGJlIGV0aHRvb2xfcHV0cwo+ID4gKyAgICAgICAgICAgICBpZiAoJGxpbmUgPX4g
L1xiZXRodG9vbF9zcHJpbnRmXHMqXChccyokRnVuY0FyZ1xzKixccyokRnVuY0FyZ1xzKlwpLykg
ewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlmKFdBUk4oIkVUSFRPT0xfU1BSSU5URiIsCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgIlByZWZlciBldGh0b29sX3B1dHMgb3ZlciBldGh0
b29sX3NwcmludGYgd2l0aCBvbmx5IHR3byBhcmd1bWVudHNcbiIgLiAkaGVyZWN1cnIpICYmCj4g
PiArICAgICAgICAgJGZpeCkgewo+ID4gKyAgICAgICAgICRmaXhlZFskZml4bGluZW5yXSA9fiBz
L2V0aHRvb2xfc3ByaW50ZlxzKlwoL2V0aHRvb2xfcHV0c1woLzsKPiA+ICsgICAgICAgfQo+ID4g
KyAgICAgICAgICAgICB9Cj4gPiArCj4gPiArICAgICAgICAgICAgICMgdXNlICRyYXdsaW5lIGJl
Y2F1c2UgJGxpbmUgbG9zZXMgJXMgdmlhIHNhbml0aXphdGlvbiBhbmQgdGh1cyB3ZSBjYW4ndCBt
YXRjaCBhZ2FpbnN0IGl0Lgo+ID4gKyAgICAgICAgICAgICBpZiAoJHJhd2xpbmUgPX4gL1xiZXRo
dG9vbF9zcHJpbnRmXHMqXChccyokRnVuY0FyZ1xzKixccypcIlwlc1wiXHMqLFxzKiRGdW5jQXJn
XHMqXCkvKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgaWYoV0FSTigiRVRIVE9PTF9TUFJJ
TlRGIiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAiUHJlZmVyIGV0aHRvb2xfcHV0cyBv
dmVyIGV0aHRvb2xfc3ByaW50ZiB3aXRoIHN0YW5kYWxvbmUgXCIlc1wiIHNwZWNpZmllclxuIiAu
ICRoZXJlY3VycikgJiYKPiA+ICsgICAgICAgICAkZml4KSB7Cj4gPiArICAgICAgICAgJGZpeGVk
WyRmaXhsaW5lbnJdID1+IHMvZXRodG9vbF9zcHJpbnRmXHMqXChccyooLio/KSwuKj8sKC4qPylc
KS9ldGh0b29sX3B1dHNcKCQxLCQyKS87Cj4gPiArICAgICAgIH0KPiA+ICsgICAgICAgICAgICAg
fQo+ID4gKwo+ID4gKwo+ID4gICMgdHlwZWNhc3RzIG9uIG1pbi9tYXggY291bGQgYmUgbWluX3Qv
bWF4X3QKPiA+ICAgICAgICAgICAgICAgaWYgKCRwZXJsX3ZlcnNpb25fb2sgJiYKPiA+ICAgICAg
ICAgICAgICAgICAgIGRlZmluZWQgJHN0YXQgJiYKPiA+Cj4gPiAtLQo+ID4gMi40Mi4wLjgyMC5n
ODNhNzIxYTEzNy1nb29nCj4gPgo+Cj4gSSBkb24ndCByZWFsbHkga25vdyBQZXJsLCBidXQgZG9l
cyB0aGUgaW5kZW50YXRpb24gYW5kIGNvZGluZyBzdHlsZSBoZXJlCj4gY29uZm9ybSB0byBhbnkg
cnVsZXMsIG9yIGlzIGl0IGp1c3QgZnJlZS1mb3JtPyBUaGUgcmVzdCBvZiB0aGUgc2NyaXB0Cj4g
bG9va3MgYWxtb3N0IGFzIHlvdSdkIGV4cGVjdCBmcm9tIEMuIFRoaXMgaXMgdW5yZWFkYWJsZSB0
byBtZS4KClRoZXJlIHdhcyBzb21lIGRpc2N1c3Npb24gaGVyZSBbMV0gYnV0IEFGQUlDVCBJIG5l
ZWQgdG8gdXNlIEVNQUNTCm9yIGNvbmZpZ3VyZSBteSB2aW0gaW4gYSB2ZXJ5IHBhcnRpY3VsYXIg
d2F5IHRvIGdldCB0aGUgc2FtZSBmb3JtYXR0aW5nCgpCdXQgeWVhaCwgbG9vayBhcm91bmQgbGlu
ZSA3MDAwIC0tIGxvdHMgb2YgdGhpcyBwYXR0ZXJuIG1hdGNoaW5nIGNvZGUgaXMKcHJldHR5IGhh
cmQgdG8gcmVhZC4gTm90IHN1cmUgdGhlcmUncyBtdWNoIHRvIGJlIGRvbmUgYXMgZmFyIGFzIHJl
YWRhYmlsaXR5CmlzIGNvbmNlcm5lZC4KClsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzEzN2EzMDliMzEzY2M4YTI5NWYzYWZmYzcwNGYwZGEwNDlmMjMzYWEuY2FtZWxAcGVyY2hlcy5j
b20vCgpUaGFua3MKSnVzdGluCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
