Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 901487DBCC2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:36:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C39370B70;
	Mon, 30 Oct 2023 15:36:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C39370B70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680173;
	bh=PYz+LF67SiGScj3D+49wDizlwUxtX8g4OvrJqYBm8GA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ddE9I/A2NqXsbFYBrDdSzmEmuHFBVzU4X5+ZlB5Nyr8b0BZCoQ5fDWn6ToXkkP5SU
	 YLzNeX76FcDdE17PGyTbuc2t8teh/C8xjIvaI/4yaLK8Qi//uUavN2+as6GT6UdIiC
	 78M7JJ/SIQyHaYhskelKH/9uKtFYNS+RjDe4McMSHqycvuGfZnynMINWOgoTgzojb+
	 3jIe1mcy1BNXQHomCLgFXS73VOloM1U33BYQBlyQk5UKIFDK5GEPhuJ6cnZaLfQuHt
	 I4uVLL+hRlRvaCGbqQsx9UsPi6pemDvNFG5LJiAm0YqQiuP/iq4PfooM/51wYU2isJ
	 1wxNXLiYEZcVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1JqO2AwxTDNm; Mon, 30 Oct 2023 15:36:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8014770925;
	Mon, 30 Oct 2023 15:36:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8014770925
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2266C1BF318
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 19:40:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE0797086D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 19:40:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE0797086D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id puOJmth6TSBR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Oct 2023 19:40:54 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF57370869
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 19:40:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF57370869
Received: by mail-ej1-x631.google.com with SMTP id
 a640c23a62f3a-9c3aec5f326so747735466b.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 12:40:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698435651; x=1699040451;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xzKQXsJ9PPJ95N5huUjFyALdgbkkeZmKhRTaQ99Yt+o=;
 b=ed+npppM7dqvgqAMDZmiuP1kNUrkbBd8UlCiCMWwurcyep6OBwlX6z5jZ9YVivxGts
 pNJzIqrmUBlysY2SzUTONlQk8lRbnDE316ZNH6WqW7LdIZoyX02escQU8AhaW32VW6J8
 ji1peTP51p4FZa2gy51ejSF/v9ka4cmtkOL2sPrFoXO6EjKzkRWwZKGIc1a551nY7m5F
 nT5Fk8ge4YXID0Gi7NVHwPC77VJxAWdh81yxNt2i/immUYBIMahVln2yG4UWJL94cXFT
 GE3AzrOgAEW799jjbGU+G/YVYQMVkVVc+jtOkGcZZUCMHLMQnrvOmEzM8F2vntVEiufj
 iqAQ==
X-Gm-Message-State: AOJu0YxB6taKvOBN+UR7QqdbMNM/qYS8rzmwzRc/DNVITkGz00+cGWur
 b3nlqOa3dA2Xp5g3t9lss2cekExqyhY0lQoY80JZew==
X-Google-Smtp-Source: AGHT+IEPfEM/trnfZm6cOr0U7cu+iGr19zJct2V4K5qR5GqFK9SelPMa/Z/9udzIJpJO7oi3U+zFq2t/7LTPw2L/vcI=
X-Received: by 2002:a17:907:2da3:b0:9c3:97d7:2c67 with SMTP id
 gt35-20020a1709072da300b009c397d72c67mr3978966ejc.25.1698435651329; Fri, 27
 Oct 2023 12:40:51 -0700 (PDT)
MIME-Version: 1.0
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-2-0d67cbdd0538@google.com>
 <8521c712250bcffce5c71e8d2b2574de786d4572.camel@perches.com>
In-Reply-To: <8521c712250bcffce5c71e8d2b2574de786d4572.camel@perches.com>
From: Justin Stitt <justinstitt@google.com>
Date: Fri, 27 Oct 2023 12:40:39 -0700
Message-ID: <CAFhGd8p9ytqbRuqgWmKe=zCg7Nhft0NMvbuuEyjAQHNAcBedaQ@mail.gmail.com>
To: Joe Perches <joe@perches.com>
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:35:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698435651; x=1699040451; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xzKQXsJ9PPJ95N5huUjFyALdgbkkeZmKhRTaQ99Yt+o=;
 b=4nDtVNVeTU24B6IWrmkbXRHwZk7fS46qbkVUk0LHKsDQ0Gk0SrWbqaUT1AqvHOfv8q
 YPNfGhYuaZ3xBu+rE1xUcdTGd3u/NKaLgU7MY+tLD1Im0neL+WQKGe32Uhe4Lo+yYKB1
 gSgSmGzK0lEuIBIzCPgfeu9B5yJBHZGR2ptPuglv1ruSrvBI0dltCAowVU4+0onMz8Gh
 4lIfaiuYBpr6gyil2lxGxuuPgw6cHrxxZCIzUSchn9b8pkjaGQrwU0rSV52Qzwljm3Rq
 amfVZ3vQZLrXJNwCOMdAZ92Avlxrd4MVN3eY8DkLME00bXrk0MIOegMeUI9hjVvEoeZa
 VT/A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=4nDtVNVe
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

T24gVGh1LCBPY3QgMjYsIDIwMjMgYXQgMzozOeKAr1BNIEpvZSBQZXJjaGVzIDxqb2VAcGVyY2hl
cy5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCAyMDIzLTEwLTI2IGF0IDIxOjU2ICswMDAwLCBKdXN0
aW4gU3RpdHQgd3JvdGU6Cj4gPiBBZGQgc29tZSB3YXJuaW5ncyBmb3IgdXNpbmcgZXRodG9vbF9z
cHJpbnRmKCkgd2hlcmUgYSBzaW1wbGUKPiA+IGV0aHRvb2xfcHV0cygpIHdvdWxkIHN1ZmZpY2Uu
Cj4gW10KPiA+IGRpZmYgLS1naXQgYS9zY3JpcHRzL2NoZWNrcGF0Y2gucGwgYi9zY3JpcHRzL2No
ZWNrcGF0Y2gucGwKPiBbXQo+ID4gQEAgLTcwMTEsNiArNzAxMSwyNSBAQCBzdWIgcHJvY2VzcyB7
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAiUHJlZmVyIHN0cnNjcHksIHN0cnNjcHlf
cGFkLCBvciBfX25vbnN0cmluZyBvdmVyIHN0cm5jcHkgLSBzZWU6IGh0dHBzOi8vZ2l0aHViLmNv
bS9LU1BQL2xpbnV4L2lzc3Vlcy85MFxuIiAuICRoZXJlY3Vycik7Cj4gPiAgICAgICAgICAgICAg
IH0KPiA+Cj4gPiArIyBldGh0b29sX3NwcmludGYgdXNlcyB0aGF0IHNob3VsZCBsaWtlbHkgYmUg
ZXRodG9vbF9wdXRzCj4gPiArICAgICAgICAgICAgIGlmICgkbGluZSA9fiAvXGJldGh0b29sX3Nw
cmludGZccypcKFxzKiRGdW5jQXJnXHMqLFxzKiRGdW5jQXJnXHMqXCkvKSB7Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgaWYoV0FSTigiRVRIVE9PTF9TUFJJTlRGIiwKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAiUHJlZmVyIGV0aHRvb2xfcHV0cyBvdmVyIGV0aHRvb2xfc3ByaW50ZiB3
aXRoIG9ubHkgdHdvIGFyZ3VtZW50c1xuIiAuICRoZXJlY3VycikgJiYKPiA+ICsgICAgICAgICAk
Zml4KSB7Cj4gPiArICAgICAgICAgJGZpeGVkWyRmaXhsaW5lbnJdID1+IHMvZXRodG9vbF9zcHJp
bnRmXHMqXCgvZXRodG9vbF9wdXRzXCgvOwo+ID4gKyAgICAgICB9Cj4gPiArICAgICAgICAgICAg
IH0KPiA+ICsKPiA+ICsgICAgICAgICAgICAgIyB1c2UgJHJhd2xpbmUgYmVjYXVzZSAkbGluZSBs
b3NlcyAlcyB2aWEgc2FuaXRpemF0aW9uIGFuZCB0aHVzIHdlIGNhbid0IG1hdGNoIGFnYWluc3Qg
aXQuCj4gPiArICAgICAgICAgICAgIGlmICgkcmF3bGluZSA9fiAvXGJldGh0b29sX3NwcmludGZc
cypcKFxzKiRGdW5jQXJnXHMqLFxzKlwiXCVzXCJccyosXHMqJEZ1bmNBcmdccypcKS8pIHsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICBpZihXQVJOKCJFVEhUT09MX1NQUklOVEYiLAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICJQcmVmZXIgZXRodG9vbF9wdXRzIG92ZXIgZXRodG9vbF9z
cHJpbnRmIHdpdGggc3RhbmRhbG9uZSBcIiVzXCIgc3BlY2lmaWVyXG4iIC4gJGhlcmVjdXJyKSAm
Jgo+ID4gKyAgICAgICAgICRmaXgpIHsKPiA+ICsgICAgICAgICAkZml4ZWRbJGZpeGxpbmVucl0g
PX4gcy9ldGh0b29sX3NwcmludGZccypcKFxzKiguKj8pLC4qPywoLio/KVwpL2V0aHRvb2xfcHV0
c1woJDEsJDIpLzsKPgo+IFRoYW5rcywgYnV0Ogo+Cj4gVGhpcyBmaXggd291bGRuJ3Qgd29yayBp
ZiB0aGUgZmlyc3QgYXJndW1lbnQgd2FzIGl0c2VsZiBhIGZ1bmN0aW9uCj4gd2l0aCBtdWx0aXBs
ZSBhcmd1bWVudHMuCj4KPiBBbmQgdGhpcyBpcyB3aGl0ZXNwYWNlIGZvcm1hdHRlZCBpbmNvcnJl
Y3RseS4KPgo+IEl0Ogo+Cj4gbyBuZWVkcyBhIHNwYWNlIGFmdGVyIGlmCj4gbyBuZWVkcyBhIHNw
YWNlIGFmdGVyIHRoZSBjb21tYSBpbiB0aGUgZml4Cj4gbyBuZWVkcyB0byB1c2UgdGhlIGFwcHJv
cHJpYXRlIGFtb3VudCBhbmQgdGFicyBmb3IgaW5kZW50YXRpb24KPiBvIG5lZWRzIGFsaWdubWVu
dCB0byBvcGVuIHBhcmVudGhlc2VzCj4gbyB0aGUgYmFja3NsYXNoZXMgYXJlIG5vdCByZXF1aXJl
ZCBpbiB0aGUgZml4IGJsb2NrCj4KPiBEbyB5b3Ugd2FudCBtZSB0byBwdXNoIHdoYXQgSSB3cm90
ZSBpbiB0aGUgbGluayBiZWxvdz8KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzdlZWM5
MmQ5ZTcyZDI4ZTdiNTIwMmY0MWIwMmEzODNlYjI4ZGRkMjYuY2FtZWxAcGVyY2hlcy5jb20vCgpB
aCwgSSBkaWRuJ3Qgc2VlIHlvdSBwcm92aWRlZCBhIGRpZmYgaW4gcHJldmlvdXMgdGhyZWFkLgoK
WWVhaCB5b3UgY2FuIHB1c2ggaXQgYnV0IGl0J3Mgbm90IHJlYWxseSBhIHN0YW5kYWxvbmUgc28g
cGVyaGFwcyBJJ2xsCmp1c3Qgc3RlYWwgdGhlIGRpZmYgYW5kCndyYXAgaW50byB2Mz8KCj4KPiA+
ICsgICAgICAgfQo+ID4gKyAgICAgICAgICAgICB9Cj4gPiArCj4gPiArCj4gPiAgIyB0eXBlY2Fz
dHMgb24gbWluL21heCBjb3VsZCBiZSBtaW5fdC9tYXhfdAo+ID4gICAgICAgICAgICAgICBpZiAo
JHBlcmxfdmVyc2lvbl9vayAmJgo+ID4gICAgICAgICAgICAgICAgICAgZGVmaW5lZCAkc3RhdCAm
Jgo+ID4KPgoKVGhhbmtzCkp1c3RpbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
