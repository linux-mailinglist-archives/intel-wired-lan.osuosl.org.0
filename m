Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 473257D8B9A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 00:21:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7D194BDD5;
	Thu, 26 Oct 2023 22:21:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7D194BDD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698358876;
	bh=MYqLQuI8Z5z/aZxijtdxz/iWkMUkfwTPcWjwsnbXR+Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LPeSs8ZTeZ6ndh3VikAWvO6lrsir2+66yovvC8n+3/cSXCv8gqBr1/W7Yf1Ii6obJ
	 I12WGde8S93FRfgEcof6mnHtDMkw9ZkP9R+uHBGdcSjXiO+Ni87ogIfgg/rrSWLkms
	 ZvsdiBzEIWzGSMP1t6OLVsWfiiyDh4/uZexctM4PCe4pguRD5zWwKhHZc1Ia1r5tkf
	 aSmHSmEVvtsLm5+mY7TgIuLD1G7uqhaokytVedKbbwFjx2JMOcc7N9XlYOdt/ZC6f5
	 KNtKPOfw/MnOdK8305qo2TaOeKwq1zRDQ1iWqFdyEencO2Zi2RN/DR0AV/sb0a3MuC
	 yGKCOLUfKdVew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MStdskTstnxL; Thu, 26 Oct 2023 22:21:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88F814BB4C;
	Thu, 26 Oct 2023 22:21:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88F814BB4C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEEB71BF364
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:21:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6B664BDD5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:21:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6B664BDD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y9VFpnRiiwgu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 22:21:08 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 617A14BD65
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:21:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 617A14BD65
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-40859c466efso11025435e9.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 15:21:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698358866; x=1698963666;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BZVyVYzi+6QbDuBCDPXiv+7wbOfcRmZKqyElOZWrfZc=;
 b=FiWpG0nb3UMUpOyto0uwSS/ZfYbKsopFAEw1OeqgI4FB2Cv3sejbQ0oQcerH5NqsEB
 2J9jIzDqAwY0G9KsBzwBW6Ue4PVlVTkcO5fwfGtDxLqgEJ9wFhtPL4MtBNQEo6D/qRvi
 pi3mttlm/itHFGmpQImMfRKbZyBCYcx8CkfGU3ZcrEnSTkFO5awtyfFsPcacwFjp1uNs
 2G+fXy0G3NekHp1aCYepufZLj2qyKvt1sWL4JveDA5HnWKnZ56NHyPFbASJivV/sYVcU
 sOSbn6GYAirT01OT0ff/EXCTAC2wfkrElPaOLd34CJpzBI+qZnhUfyGzQ0z2q/6V0gF+
 dlzw==
X-Gm-Message-State: AOJu0Ywp6WNXkjAAWGt9fLBtEBOp4u9PhM6DDUfuXhBfqGpXz9m/U8xa
 Kdk/VN+PiS5/sFJ+eGc0aOE=
X-Google-Smtp-Source: AGHT+IEKimHb5xke6jH18TsHWKRxjcjGmlx0/kFhipt1/3/BG8Q2ivqVE2EsAdNFToNo9uL7wPtB6A==
X-Received: by 2002:a05:600c:3c9a:b0:409:1d9a:1dec with SMTP id
 bg26-20020a05600c3c9a00b004091d9a1decmr908421wmb.35.1698358866086; 
 Thu, 26 Oct 2023 15:21:06 -0700 (PDT)
Received: from skbuf ([188.26.57.160]) by smtp.gmail.com with ESMTPSA id
 hg10-20020a05600c538a00b0040775fd5bf9sm148982wmb.0.2023.10.26.15.21.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Oct 2023 15:21:05 -0700 (PDT)
Date: Fri, 27 Oct 2023 01:21:00 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <20231026222100.yrjsdlq47djaurjf@skbuf>
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-1-0d67cbdd0538@google.com>
 <20231026220248.blgf7kgt5fkkbg7f@skbuf>
 <CAFhGd8rWOE8zGFCdjM6i8H3TP8q5BFFxMGCk0n-nmLmjHojefg@mail.gmail.com>
 <CAFhGd8pJkdpF4BYDf_Ym-zsisAVzM06_4ba+_6Uca_2Xerp1Qg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFhGd8pJkdpF4BYDf_Ym-zsisAVzM06_4ba+_6Uca_2Xerp1Qg@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698358866; x=1698963666; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=BZVyVYzi+6QbDuBCDPXiv+7wbOfcRmZKqyElOZWrfZc=;
 b=RaMGR8goNLRrKFtEOwmRgJVPAvtXwMZwk3EaFDNgxIv6bBtw0N9hp4UuU3KLQ2hTZ8
 8oRStfqgJnh4ry8MdwsABXoclWs2i7YQT99N1OIrctxbX/dH1Dj8pBXNURWsgq2/wD+v
 5XqTebS7bTTGTMaGUhE/CHoznOyybssE4JpjAmN40a8WInJ2SO2k7oTdZjNI4mNOTG71
 bV/7p83PP3ELlhAa4rz43tOhPsuk5GzxchS6CwpeDWN/0okbEEi2D2Vvq0oLblgEBc+e
 VXA+UWv3VR0rfKwF0CLzT1fxRYFIUP8bAi1EE7VvUnPTBwtzuKdsKEOsCZj6mA7pmj78
 YULQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=RaMGR8go
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

T24gVGh1LCBPY3QgMjYsIDIwMjMgYXQgMDM6MTE6MjhQTSAtMDcwMCwgSnVzdGluIFN0aXR0IHdy
b3RlOgo+IE9uIFRodSwgT2N0IDI2LCAyMDIzIGF0IDM6MDnigK9QTSBKdXN0aW4gU3RpdHQgPGp1
c3RpbnN0aXR0QGdvb2dsZS5jb20+IHdyb3RlOgo+ID4gT24gVGh1LCBPY3QgMjYsIDIwMjMgYXQg
MzowMuKAr1BNIFZsYWRpbWlyIE9sdGVhbiA8b2x0ZWFudkBnbWFpbC5jb20+IHdyb3RlOgo+ID4g
PiBNYXliZSB0aGlzIGlzIGR1ZSB0byBhbiBpbmNvcnJlY3QgcmViYXNlIGNvbmZsaWN0IHJlc29s
dXRpb24sIGJ1dCB5b3UKPiA+ID4gc2hvdWxkbid0IGhhdmUgdG91Y2hlZCBhbnkgb2YgdGhlIGV0
aHRvb2wgZm9yY2Ugc3BlZWQgbWFwcy4KPiA+Cj4gPiBBaCwgSSBkaWQgaGF2ZSBhIGNvbmZsaWN0
IGFuZCByZXNvbHZlZCBieSBzaW1wbHkgbW92aW5nIHRoZSBodW5rcwo+ID4gb3V0IG9mIGVhY2gg
b3RoZXIncyB3YXkuIFRyaXZpYWwgcmVzb2x1dGlvbi4KPiA+Cj4gPiBTaG91bGQgSSB1bmRvIHRo
aXM/IEkgd2FudCBteSBwYXRjaCBhZ2FpbnN0IG5leHQgc2luY2UgaXQncyB0YXJnZXRpbmcKPiA+
IHNvbWUgc3R1ZmYgaW4tZmxpZ2h0IG92ZXIgdGhlcmUuIEJVVCwgSSBhbHNvIHdhbnQgZXRodG9v
bF9wdXRzKCkgdG8gYmUKPiA+IGRpcmVjdGx5IGJlbG93IGV0aHRvb2xfc3ByaW50ZigpIGluIHRo
ZSBzb3VyY2UgY29kZS4gV2hhdCB0byBkbz8KPiAKPiBPaCwgSSBqdXN0IHJlYWxpemVkIG15IGF1
dG8gZm9ybWF0dGVyIGhhZCBhIGZpZWxkIGRheSB3aXRoIHRoYXQgZnVuY3Rpb24uCj4gSSB3aWxs
IHJlY3RpZnkgdGhpcyBpbiBhIG5ldyB2ZXJzaW9uIGFmdGVyIHdhaXRpbmcgMjRocnMgZm9yIGNv
bW1lbnRzIHRvCj4gdHJpY2tsZSBpbiBhcyB3ZWxsLgoKTm90aGluZyBvdGhlciB0aGFuIGV0aHRv
b2xfcHV0cygpIHNob3VsZCBhcHBlYXIgaW4gdGhlIHBhdGNoIGRlbHRhLgoKcHctYm90OiBjcgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
