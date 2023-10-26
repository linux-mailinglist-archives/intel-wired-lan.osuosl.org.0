Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C097DBCBB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:35:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F81570972;
	Mon, 30 Oct 2023 15:35:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F81570972
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680151;
	bh=sfo59ox0PsOQraERrQBsidD84qUE99akflTT0cVXr6A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1ElJcVBjuSEnjry1GHF68S7rY66Ht+TpehvTWmFrqVkRtruGlhwKOQguLU6Jk5UBZ
	 WqV1FLI+uQ+lbHHiFO3HB0wmYlBsZQL+ZUsLKHRvHDVAZngFG7JQnT4i6a7xmsXqCS
	 8v0rEv3EoA3RK6L4kMQgBt0sQYSRlkl6r8Zepo2/UV7H7v8up1VnY/mLPfRA3tO3z+
	 t+PvdBCpPLqKoQZ8UIjyG+krkiKg7Hk+5lqjqq3wC4qNetczbgAOIlDzORRzxaVcDq
	 4+568FBO/u/YRZPsR6Qk3yGXeSdGcNiKzAHG58mpoy91dojrYlvSKMOmu+ME4uGy46
	 MpPBF5Gu4kaKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C4QQnP6CC3Cb; Mon, 30 Oct 2023 15:35:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F2C570925;
	Mon, 30 Oct 2023 15:35:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F2C570925
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECE9F1BF378
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CEE5643038
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:10:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEE5643038
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IS8-Pbw86a1E for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 22:10:14 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D4DA43026
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:10:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D4DA43026
Received: by mail-ed1-x52f.google.com with SMTP id
 4fb4d7f45d1cf-53fc7c67a41so5341036a12.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 15:10:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698358212; x=1698963012;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VYkYcPfrdjdF13EUZZ4eE7TIV+DAr//+SL8WC077uOs=;
 b=l6K+WX+gb4lCWiRy/fvSuIXUoVHHwoe4PY46UL69+sJjzLEb4YdkPl3k3fKnAkNFA7
 kF4cWI8CahF9Jfme6t32rbKwQ+qkhgXigBVZ/xjOMYPHBrHEC65Odz4WbXqy6WrdHJe0
 dIB1sk0ZUqYsy+2XWistxP3rK2k04UcwnW8kLWoNrBLyY2NgVEBXSTVv/Q4cV1AY+mHB
 8QMGR4J5fJ/pk12VA2eMJf6kSROVs3DqzYvBrwZZMzqeuPHRTKZ1ZWzQwGGxHcNH/Cin
 6yacnikDUiwZqx1POidBYXguN5P471JJcJSEdGLkIfdB3Lel02c3qRl1BtOJTNczraOK
 e52g==
X-Gm-Message-State: AOJu0Ywt9PDDuYtvpa0thZb3L7DAOkVEb5WCxzRx4Qgprzw94pX/BSVa
 cWdrCC9tNZYaGI9916Zdt8E6F7FrwCEVU2MO8pQGDA==
X-Google-Smtp-Source: AGHT+IHuRGkSLp8NehiD60eytlHzZjcZDIT/jEslbKqr0KO3Wpe3LN4KZHOprmb19kQBB0q3jCL/Ej5UEDw1oqFqc4o=
X-Received: by 2002:a50:fa83:0:b0:52a:38c3:1b4b with SMTP id
 w3-20020a50fa83000000b0052a38c31b4bmr1216507edr.15.1698358211957; Thu, 26 Oct
 2023 15:10:11 -0700 (PDT)
MIME-Version: 1.0
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-1-0d67cbdd0538@google.com>
 <20231026220248.blgf7kgt5fkkbg7f@skbuf>
In-Reply-To: <20231026220248.blgf7kgt5fkkbg7f@skbuf>
From: Justin Stitt <justinstitt@google.com>
Date: Thu, 26 Oct 2023 15:09:59 -0700
Message-ID: <CAFhGd8rWOE8zGFCdjM6i8H3TP8q5BFFxMGCk0n-nmLmjHojefg@mail.gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:35:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698358212; x=1698963012; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VYkYcPfrdjdF13EUZZ4eE7TIV+DAr//+SL8WC077uOs=;
 b=UcA5tDpi30pKjQa4KVNnoJ/GrLINuu+DUH8eQJDLf3eeGRohMuJxNzDxAC2RPV8Yhy
 madpnhQHwESMJw6ErxyY5fHivb1ylO3r2giMvRRzHLcbr/1ABSKqG+SD9vRwN4CrWjtL
 nA5i9ytfIHb/KZyRCiaRoB7Y0eKvKOggM6ItTcwu26T+ITMl0vXVlG6EoyGwF+8P4VMF
 AQ2Eq2Jxn8/oF6RJXJzFExWALG9NeRRpicVUnspNoUZgFmadonVhMi55BpIFSAcs9bKb
 UIeGGlniJ96tsyfucM3ogVvgpE18CpvcSLgZcACPt/JfzP/4eoZVjTQohSu6dQKrFf+a
 pUnA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=UcA5tDpi
Subject: Re: [Intel-wired-lan] [PATCH next v2 1/3] ethtool: Implement
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

T24gVGh1LCBPY3QgMjYsIDIwMjMgYXQgMzowMuKAr1BNIFZsYWRpbWlyIE9sdGVhbiA8b2x0ZWFu
dkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkgSnVzdGluLAo+Cj4gT24gVGh1LCBPY3QgMjYsIDIw
MjMgYXQgMDk6NTY6MDdQTSArMDAwMCwgSnVzdGluIFN0aXR0IHdyb3RlOgo+ID4gVXNlIHN0cnNj
cHkoKSB0byBpbXBsZW1lbnQgZXRodG9vbF9wdXRzKCkuCj4gPgo+ID4gRnVuY3Rpb25hbGx5IHRo
ZSBzYW1lIGFzIGV0aHRvb2xfc3ByaW50ZigpIHdoZW4gaXQncyB1c2VkIHdpdGggdHdvCj4gPiBh
cmd1bWVudHMgb3Igd2l0aCBqdXN0ICIlcyIgZm9ybWF0IHNwZWNpZmllci4KPiA+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKdXN0aW4gU3RpdHQgPGp1c3RpbnN0aXR0QGdvb2dsZS5jb20+Cj4gPiAtLS0K
PiA+ICBpbmNsdWRlL2xpbnV4L2V0aHRvb2wuaCB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysr
LS0tLS0tLS0tLS0KPiA+ICBuZXQvZXRodG9vbC9pb2N0bC5jICAgICB8ICA3ICsrKysrKysKPiA+
ICAyIGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+ID4K
PiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2V0aHRvb2wuaCBiL2luY2x1ZGUvbGludXgv
ZXRodG9vbC5oCj4gPiBpbmRleCAyMjZhMzZlZDVhYTEuLjcxMjlkZDJlMjI3YyAxMDA2NDQKPiA+
IC0tLSBhL2luY2x1ZGUvbGludXgvZXRodG9vbC5oCj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L2V0
aHRvb2wuaAo+ID4gQEAgLTEwNTMsMjIgKzEwNTMsMzQgQEAgc3RhdGljIGlubGluZSBpbnQgZXRo
dG9vbF9tbV9mcmFnX3NpemVfbWluX3RvX2FkZCh1MzIgdmFsX21pbiwgdTMyICp2YWxfYWRkLAo+
ID4gICAqLwo+ID4gIGV4dGVybiBfX3ByaW50ZigyLCAzKSB2b2lkIGV0aHRvb2xfc3ByaW50Zih1
OCAqKmRhdGEsIGNvbnN0IGNoYXIgKmZtdCwgLi4uKTsKPiA+Cj4gPiArLyoqCj4gPiArICogZXRo
dG9vbF9wdXRzIC0gV3JpdGUgc3RyaW5nIHRvIGV0aHRvb2wgc3RyaW5nIGRhdGEKPiA+ICsgKiBA
ZGF0YTogUG9pbnRlciB0byBzdGFydCBvZiBzdHJpbmcgdG8gdXBkYXRlCj4gPiArICogQHN0cjog
U3RyaW5nIHRvIHdyaXRlCj4gPiArICoKPiA+ICsgKiBXcml0ZSBzdHJpbmcgdG8gZGF0YS4gVXBk
YXRlIGRhdGEgdG8gcG9pbnQgYXQgc3RhcnQgb2YgbmV4dAo+ID4gKyAqIHN0cmluZy4KPiA+ICsg
Kgo+ID4gKyAqIFByZWZlciB0aGlzIGZ1bmN0aW9uIHRvIGV0aHRvb2xfc3ByaW50ZigpIHdoZW4g
Z2l2ZW4gb25seQo+ID4gKyAqIHR3byBhcmd1bWVudHMgb3IgaWYgQGZtdCBpcyBqdXN0ICIlcyIu
Cj4gPiArICovCj4gPiArZXh0ZXJuIHZvaWQgZXRodG9vbF9wdXRzKHU4ICoqZGF0YSwgY29uc3Qg
Y2hhciAqc3RyKTsKPiA+ICsKPiA+ICAvKiBMaW5rIG1vZGUgdG8gZm9yY2VkIHNwZWVkIGNhcGFi
aWxpdGllcyBtYXBzICovCj4gPiAgc3RydWN0IGV0aHRvb2xfZm9yY2VkX3NwZWVkX21hcCB7Cj4g
PiAtICAgICB1MzIgICAgICAgICAgICAgc3BlZWQ7Cj4gPiArICAgICB1MzIgc3BlZWQ7Cj4gPiAg
ICAgICBfX0VUSFRPT0xfREVDTEFSRV9MSU5LX01PREVfTUFTSyhjYXBzKTsKPiA+Cj4gPiAtICAg
ICBjb25zdCB1MzIgICAgICAgKmNhcF9hcnI7Cj4gPiAtICAgICB1MzIgICAgICAgICAgICAgYXJy
X3NpemU7Cj4gPiArICAgICBjb25zdCB1MzIgKmNhcF9hcnI7Cj4gPiArICAgICB1MzIgYXJyX3Np
emU7Cj4gPiAgfTsKPiA+Cj4gPiAtI2RlZmluZSBFVEhUT09MX0ZPUkNFRF9TUEVFRF9NQVAocHJl
Zml4LCB2YWx1ZSkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gPiAteyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXAo+ID4gLSAgICAgLnNwZWVkICAgICAgICAgID0gU1BFRURfIyN2YWx1ZSwgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIFwKPiA+IC0gICAgIC5jYXBfYXJyICAgICAgICA9IHByZWZp
eCMjXyMjdmFsdWUsICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gPiAtICAgICAuYXJy
X3NpemUgICAgICAgPSBBUlJBWV9TSVpFKHByZWZpeCMjXyMjdmFsdWUpLCAgICAgICAgICAgICAg
ICAgXAo+ID4gLX0KPiA+ICsjZGVmaW5lIEVUSFRPT0xfRk9SQ0VEX1NQRUVEX01BUChwcmVmaXgs
IHZhbHVlKSAgICAgICAgICAgICAgICAgICAgICBcCj4gPiArICAgICB7ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gKyAgICAg
ICAgICAgICAuc3BlZWQgPSBTUEVFRF8jI3ZhbHVlLCAuY2FwX2FyciA9IHByZWZpeCMjXyMjdmFs
dWUsIFwKPiA+ICsgICAgICAgICAgICAgLmFycl9zaXplID0gQVJSQVlfU0laRShwcmVmaXgjI18j
I3ZhbHVlKSwgICAgICAgICAgICBcCj4gPiArICAgICB9Cj4gPgo+ID4gLXZvaWQKPiA+IC1ldGh0
b29sX2ZvcmNlZF9zcGVlZF9tYXBzX2luaXQoc3RydWN0IGV0aHRvb2xfZm9yY2VkX3NwZWVkX21h
cCAqbWFwcywgdTMyIHNpemUpOwo+ID4gK3ZvaWQgZXRodG9vbF9mb3JjZWRfc3BlZWRfbWFwc19p
bml0KHN0cnVjdCBldGh0b29sX2ZvcmNlZF9zcGVlZF9tYXAgKm1hcHMsCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdTMyIHNpemUpOwo+ID4gICNlbmRpZiAvKiBfTElOVVhf
RVRIVE9PTF9IICovCj4KPiBNYXliZSB0aGlzIGlzIGR1ZSB0byBhbiBpbmNvcnJlY3QgcmViYXNl
IGNvbmZsaWN0IHJlc29sdXRpb24sIGJ1dCB5b3UKPiBzaG91bGRuJ3QgaGF2ZSB0b3VjaGVkIGFu
eSBvZiB0aGUgZXRodG9vbCBmb3JjZSBzcGVlZCBtYXBzLgoKQWgsIEkgZGlkIGhhdmUgYSBjb25m
bGljdCBhbmQgcmVzb2x2ZWQgYnkgc2ltcGx5IG1vdmluZyB0aGUgaHVua3MKb3V0IG9mIGVhY2gg
b3RoZXIncyB3YXkuIFRyaXZpYWwgcmVzb2x1dGlvbi4KClNob3VsZCBJIHVuZG8gdGhpcz8gSSB3
YW50IG15IHBhdGNoIGFnYWluc3QgbmV4dCBzaW5jZSBpdCdzIHRhcmdldGluZwpzb21lIHN0dWZm
IGluLWZsaWdodCBvdmVyIHRoZXJlLiBCVVQsIEkgYWxzbyB3YW50IGV0aHRvb2xfcHV0cygpIHRv
IGJlCmRpcmVjdGx5IGJlbG93IGV0aHRvb2xfc3ByaW50ZigpIGluIHRoZSBzb3VyY2UgY29kZS4g
V2hhdCB0byBkbz8KCj4KPiBQbGVhc2Ugd2FpdCBmb3IgYXQgbGVhc3QgMjQgaG91cnMgdG8gcGFz
cyBiZWZvcmUgcG9zdGluZyBhIG5ldyB2ZXJzaW9uLAo+IHRvIGFsbG93IGZvciBtb3JlIGNvbW1l
bnRzIHRvIGNvbWUgaW4uCgpPayA6KQoKVGhhbmtzCkp1c3RpbgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
