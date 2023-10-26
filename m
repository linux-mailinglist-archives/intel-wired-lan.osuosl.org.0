Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6023C7DBCBC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:35:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E652870B8C;
	Mon, 30 Oct 2023 15:35:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E652870B8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680155;
	bh=alO0NHy7HEDkuB9pPaTzzDO0eu8nBWD8PpwuQtRH4+o=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TPGv3aK0O5/qYeBQRKZzCW8G5zWA9S3+Y1O8FnMU/1tMS+LXEywOFMAZbpf5uT6ow
	 fvrrDsINbBGks48KhPqSbrDWTaArLd0d9B+oq+U0vtpP2H47fqsnu4zRmL7rCrnYKu
	 nosHZ19k6kDSwzRYyDj81CDbVRwlv+u6LQa2SvjVE/6QcHvTmt+MEgG7rwzAM0N5/o
	 PKYpBI+MnA/ZFGMetMduqb8Ws3Vr+vjBIQ/ATpfcxjGu759aemMKll3I2BhXCk1MQO
	 JtalG6Ld77r6u6MK5a/CjBXdoaL4Lo2nzbNNP1Gu17SpGVzqDKfjoXLRxH3RLvNFo5
	 jGErAxCTatfcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cFyutVxE2Inr; Mon, 30 Oct 2023 15:35:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C20E7096E;
	Mon, 30 Oct 2023 15:35:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C20E7096E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF5971BF378
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:11:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 83CCB4303A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:11:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83CCB4303A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BlXy8RtivKcB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 22:11:43 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 16B5843026
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 22:11:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16B5843026
Received: by mail-lf1-x12d.google.com with SMTP id
 2adb3069b0e04-5079f3f3d7aso2241237e87.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 15:11:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698358301; x=1698963101;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=u7QyUigwL+AihRwuENBgL/lkTObabmHkjoTqFNGjpDU=;
 b=H2XjvCohXstTcXRMrJF6d31a32uFyfR2deWXCUPK1SZcHalPimtzpI8z+tLCfo7ktj
 QMsaxS9Xkf5ymIQuL4ZgxP75K035caFVREtpYtIBKCvw9uKrNvW/5J/UkEbxIn6xkOh0
 1+3aD7OtQhArzHqHlQG8nzvMbcxGIQ45ZQU7/EvVC7IaeL2DXJMArUDfxIYlTzQivcoo
 vEdh8TTrsF0Vm+RgiLgtz4MoP1wBIYSRSYjHPUE8UIGAbkGe79pjq9DwUICgaIKsATnw
 DKhJRyvxxpV48XNAPpYHJyg0DHnQbiJD0wOiJ1bIUh0ruXgSfU1iuBMGGOSN5Q15zdrc
 tVdw==
X-Gm-Message-State: AOJu0Yzl1/W9/ujQE+hknktWgj55hJLQOi/AvQW8QsQzkUZaalsHgRNF
 Asov2oSLoCNGRx9ws2MjCyP6pfUcixNBUJBR2ryMpA==
X-Google-Smtp-Source: AGHT+IHf/4g0ckl88vh8B7NAaPWRBEPuiUqA7RhSF/OaNkq65RrrqAUENIJx47f8YuoL+1dF/Uae/bzIzQfZl027bkI=
X-Received: by 2002:a19:ac0a:0:b0:4ff:a04c:8a5b with SMTP id
 g10-20020a19ac0a000000b004ffa04c8a5bmr431476lfc.47.1698358300700; Thu, 26 Oct
 2023 15:11:40 -0700 (PDT)
MIME-Version: 1.0
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <20231026-ethtool_puts_impl-v2-1-0d67cbdd0538@google.com>
 <20231026220248.blgf7kgt5fkkbg7f@skbuf>
 <CAFhGd8rWOE8zGFCdjM6i8H3TP8q5BFFxMGCk0n-nmLmjHojefg@mail.gmail.com>
In-Reply-To: <CAFhGd8rWOE8zGFCdjM6i8H3TP8q5BFFxMGCk0n-nmLmjHojefg@mail.gmail.com>
From: Justin Stitt <justinstitt@google.com>
Date: Thu, 26 Oct 2023 15:11:28 -0700
Message-ID: <CAFhGd8pJkdpF4BYDf_Ym-zsisAVzM06_4ba+_6Uca_2Xerp1Qg@mail.gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:35:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698358301; x=1698963101; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=u7QyUigwL+AihRwuENBgL/lkTObabmHkjoTqFNGjpDU=;
 b=tvTs8/JDzbhyDfhglN5cTZ/LBrb/ddWhFoD50TYKthaP8yxqvKw2AaGYtZFv6RlovS
 pw1jZuPE5nBm0AUqsSRfGfdS6NQbAMdt584DloAf9IuJk481anJKcWCgIt0GzUZj4QLE
 xF1iT69MM5HpU6IqI9boF1sua+CBcx87suaTO1p2G9IFWH/nf6QquJEd3DAdDjkULSX1
 j7gkNtEzY+shlFqNQoV7cj7KMBVgsYK2wRmO/A6UGp9qsCMl2HKMmCoSZTbZc3fHDprM
 9I2MvPxT8/76i4bVXjVNWylp//tXlIxnpa1+KXOV5tLzlYmPhTf/Ropt+fh9tZVfCjEd
 Ffvg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=tvTs8/JD
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

T24gVGh1LCBPY3QgMjYsIDIwMjMgYXQgMzowOeKAr1BNIEp1c3RpbiBTdGl0dCA8anVzdGluc3Rp
dHRAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIE9jdCAyNiwgMjAyMyBhdCAzOjAy4oCv
UE0gVmxhZGltaXIgT2x0ZWFuIDxvbHRlYW52QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gSGkg
SnVzdGluLAo+ID4KPiA+IE9uIFRodSwgT2N0IDI2LCAyMDIzIGF0IDA5OjU2OjA3UE0gKzAwMDAs
IEp1c3RpbiBTdGl0dCB3cm90ZToKPiA+ID4gVXNlIHN0cnNjcHkoKSB0byBpbXBsZW1lbnQgZXRo
dG9vbF9wdXRzKCkuCj4gPiA+Cj4gPiA+IEZ1bmN0aW9uYWxseSB0aGUgc2FtZSBhcyBldGh0b29s
X3NwcmludGYoKSB3aGVuIGl0J3MgdXNlZCB3aXRoIHR3bwo+ID4gPiBhcmd1bWVudHMgb3Igd2l0
aCBqdXN0ICIlcyIgZm9ybWF0IHNwZWNpZmllci4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTog
SnVzdGluIFN0aXR0IDxqdXN0aW5zdGl0dEBnb29nbGUuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGlu
Y2x1ZGUvbGludXgvZXRodG9vbC5oIHwgMzQgKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tLQo+ID4gPiAgbmV0L2V0aHRvb2wvaW9jdGwuYyAgICAgfCAgNyArKysrKysrCj4gPiA+ICAy
IGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+ID4gPgo+
ID4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9ldGh0b29sLmggYi9pbmNsdWRlL2xpbnV4
L2V0aHRvb2wuaAo+ID4gPiBpbmRleCAyMjZhMzZlZDVhYTEuLjcxMjlkZDJlMjI3YyAxMDA2NDQK
PiA+ID4gLS0tIGEvaW5jbHVkZS9saW51eC9ldGh0b29sLmgKPiA+ID4gKysrIGIvaW5jbHVkZS9s
aW51eC9ldGh0b29sLmgKPiA+ID4gQEAgLTEwNTMsMjIgKzEwNTMsMzQgQEAgc3RhdGljIGlubGlu
ZSBpbnQgZXRodG9vbF9tbV9mcmFnX3NpemVfbWluX3RvX2FkZCh1MzIgdmFsX21pbiwgdTMyICp2
YWxfYWRkLAo+ID4gPiAgICovCj4gPiA+ICBleHRlcm4gX19wcmludGYoMiwgMykgdm9pZCBldGh0
b29sX3NwcmludGYodTggKipkYXRhLCBjb25zdCBjaGFyICpmbXQsIC4uLik7Cj4gPiA+Cj4gPiA+
ICsvKioKPiA+ID4gKyAqIGV0aHRvb2xfcHV0cyAtIFdyaXRlIHN0cmluZyB0byBldGh0b29sIHN0
cmluZyBkYXRhCj4gPiA+ICsgKiBAZGF0YTogUG9pbnRlciB0byBzdGFydCBvZiBzdHJpbmcgdG8g
dXBkYXRlCj4gPiA+ICsgKiBAc3RyOiBTdHJpbmcgdG8gd3JpdGUKPiA+ID4gKyAqCj4gPiA+ICsg
KiBXcml0ZSBzdHJpbmcgdG8gZGF0YS4gVXBkYXRlIGRhdGEgdG8gcG9pbnQgYXQgc3RhcnQgb2Yg
bmV4dAo+ID4gPiArICogc3RyaW5nLgo+ID4gPiArICoKPiA+ID4gKyAqIFByZWZlciB0aGlzIGZ1
bmN0aW9uIHRvIGV0aHRvb2xfc3ByaW50ZigpIHdoZW4gZ2l2ZW4gb25seQo+ID4gPiArICogdHdv
IGFyZ3VtZW50cyBvciBpZiBAZm10IGlzIGp1c3QgIiVzIi4KPiA+ID4gKyAqLwo+ID4gPiArZXh0
ZXJuIHZvaWQgZXRodG9vbF9wdXRzKHU4ICoqZGF0YSwgY29uc3QgY2hhciAqc3RyKTsKPiA+ID4g
Kwo+ID4gPiAgLyogTGluayBtb2RlIHRvIGZvcmNlZCBzcGVlZCBjYXBhYmlsaXRpZXMgbWFwcyAq
Lwo+ID4gPiAgc3RydWN0IGV0aHRvb2xfZm9yY2VkX3NwZWVkX21hcCB7Cj4gPiA+IC0gICAgIHUz
MiAgICAgICAgICAgICBzcGVlZDsKPiA+ID4gKyAgICAgdTMyIHNwZWVkOwo+ID4gPiAgICAgICBf
X0VUSFRPT0xfREVDTEFSRV9MSU5LX01PREVfTUFTSyhjYXBzKTsKPiA+ID4KPiA+ID4gLSAgICAg
Y29uc3QgdTMyICAgICAgICpjYXBfYXJyOwo+ID4gPiAtICAgICB1MzIgICAgICAgICAgICAgYXJy
X3NpemU7Cj4gPiA+ICsgICAgIGNvbnN0IHUzMiAqY2FwX2FycjsKPiA+ID4gKyAgICAgdTMyIGFy
cl9zaXplOwo+ID4gPiAgfTsKPiA+ID4KPiA+ID4gLSNkZWZpbmUgRVRIVE9PTF9GT1JDRURfU1BF
RURfTUFQKHByZWZpeCwgdmFsdWUpICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4g
PiAteyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXAo+ID4gPiAtICAgICAuc3BlZWQgICAgICAgICAgPSBTUEVFRF8jI3Zh
bHVlLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gPiAtICAgICAuY2FwX2Fy
ciAgICAgICAgPSBwcmVmaXgjI18jI3ZhbHVlLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
XAo+ID4gPiAtICAgICAuYXJyX3NpemUgICAgICAgPSBBUlJBWV9TSVpFKHByZWZpeCMjXyMjdmFs
dWUpLCAgICAgICAgICAgICAgICAgXAo+ID4gPiAtfQo+ID4gPiArI2RlZmluZSBFVEhUT09MX0ZP
UkNFRF9TUEVFRF9NQVAocHJlZml4LCB2YWx1ZSkgICAgICAgICAgICAgICAgICAgICAgXAo+ID4g
PiArICAgICB7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXAo+ID4gPiArICAgICAgICAgICAgIC5zcGVlZCA9IFNQRUVEXyMjdmFsdWUs
IC5jYXBfYXJyID0gcHJlZml4IyNfIyN2YWx1ZSwgXAo+ID4gPiArICAgICAgICAgICAgIC5hcnJf
c2l6ZSA9IEFSUkFZX1NJWkUocHJlZml4IyNfIyN2YWx1ZSksICAgICAgICAgICAgXAo+ID4gPiAr
ICAgICB9Cj4gPiA+Cj4gPiA+IC12b2lkCj4gPiA+IC1ldGh0b29sX2ZvcmNlZF9zcGVlZF9tYXBz
X2luaXQoc3RydWN0IGV0aHRvb2xfZm9yY2VkX3NwZWVkX21hcCAqbWFwcywgdTMyIHNpemUpOwo+
ID4gPiArdm9pZCBldGh0b29sX2ZvcmNlZF9zcGVlZF9tYXBzX2luaXQoc3RydWN0IGV0aHRvb2xf
Zm9yY2VkX3NwZWVkX21hcCAqbWFwcywKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHUzMiBzaXplKTsKPiA+ID4gICNlbmRpZiAvKiBfTElOVVhfRVRIVE9PTF9IICovCj4g
Pgo+ID4gTWF5YmUgdGhpcyBpcyBkdWUgdG8gYW4gaW5jb3JyZWN0IHJlYmFzZSBjb25mbGljdCBy
ZXNvbHV0aW9uLCBidXQgeW91Cj4gPiBzaG91bGRuJ3QgaGF2ZSB0b3VjaGVkIGFueSBvZiB0aGUg
ZXRodG9vbCBmb3JjZSBzcGVlZCBtYXBzLgo+Cj4gQWgsIEkgZGlkIGhhdmUgYSBjb25mbGljdCBh
bmQgcmVzb2x2ZWQgYnkgc2ltcGx5IG1vdmluZyB0aGUgaHVua3MKPiBvdXQgb2YgZWFjaCBvdGhl
cidzIHdheS4gVHJpdmlhbCByZXNvbHV0aW9uLgo+Cj4gU2hvdWxkIEkgdW5kbyB0aGlzPyBJIHdh
bnQgbXkgcGF0Y2ggYWdhaW5zdCBuZXh0IHNpbmNlIGl0J3MgdGFyZ2V0aW5nCj4gc29tZSBzdHVm
ZiBpbi1mbGlnaHQgb3ZlciB0aGVyZS4gQlVULCBJIGFsc28gd2FudCBldGh0b29sX3B1dHMoKSB0
byBiZQo+IGRpcmVjdGx5IGJlbG93IGV0aHRvb2xfc3ByaW50ZigpIGluIHRoZSBzb3VyY2UgY29k
ZS4gV2hhdCB0byBkbz8KCk9oLCBJIGp1c3QgcmVhbGl6ZWQgbXkgYXV0byBmb3JtYXR0ZXIgaGFk
IGEgZmllbGQgZGF5IHdpdGggdGhhdCBmdW5jdGlvbi4KSSB3aWxsIHJlY3RpZnkgdGhpcyBpbiBh
IG5ldyB2ZXJzaW9uIGFmdGVyIHdhaXRpbmcgMjRocnMgZm9yIGNvbW1lbnRzIHRvCnRyaWNrbGUg
aW4gYXMgd2VsbC4KCj4KPiA+Cj4gPiBQbGVhc2Ugd2FpdCBmb3IgYXQgbGVhc3QgMjQgaG91cnMg
dG8gcGFzcyBiZWZvcmUgcG9zdGluZyBhIG5ldyB2ZXJzaW9uLAo+ID4gdG8gYWxsb3cgZm9yIG1v
cmUgY29tbWVudHMgdG8gY29tZSBpbi4KPgo+IE9rIDopCj4KPiBUaGFua3MKPiBKdXN0aW4KClRo
YW5rcwpKdXN0aW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
