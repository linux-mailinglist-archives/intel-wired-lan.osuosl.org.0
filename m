Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 963AC7DBCBE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:36:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2286B70BA8;
	Mon, 30 Oct 2023 15:36:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2286B70BA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680164;
	bh=y9BH6vC1VtM5xr1WtK2EoKH4ejdSj2Eym4YOmAL4kdU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Qp9M9vwQ0IbykMo3meb9EJCrctfTjcyxVcie7VOq95FPld0fNXJf2NtiDcSej6Mu
	 Z0i96dn6dYTGVbbgOmBCqIFdLUg/fxXHtMQetFlMwRbRLebZ7AL9gHwzVa/YCQOvId
	 o69j69EdspkiLhlUA/4wodhx8DaLJR2lojSVdcz+eVXN/YMN0P3Ghfe30d1M4wGtH6
	 pqJ1Zmr8+4WMX9sh6JZmedD9chbj2oGjyzXFkoUtq4X5z9UgS++Odf9CCdrE/b5SGu
	 I4SzTR4J393PVu9aSO4QhVlt9mmQdA8Cib/ShVGHTCCYLIg7HY203BLi86EX7cs46j
	 3v4sIyKBftm6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eL7pOobyTblh; Mon, 30 Oct 2023 15:36:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 084A2709B2;
	Mon, 30 Oct 2023 15:36:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 084A2709B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C91591BF318
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 19:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A0AC38502E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 19:32:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0AC38502E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hq3xk0Btum1K for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Oct 2023 19:32:37 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ECED085025
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 19:32:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECED085025
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-9d10972e63eso62074466b.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 12:32:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698435155; x=1699039955;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZWT6rg+UcGuVHCGktF1X9nMLt5S5rmKf4Xsx5qvsANI=;
 b=QnYmYzg489VK3QPpx7Msv/mzYPWx/e2h4XIF/lDWJX2Xw5brYEXsB03jeAfwqbj0yA
 x59kcQmzHlzI6+8tAkAOKV7WEUuYfBCsQoh88MUlQE6TROzD+u25sgvcJRPZTPXee8Tn
 zEoMKosfOe83TjbChlbIt8JUO4AfFmP6BuWLrb+4OvI3YJEiEsspySAXacuGludkJgWc
 EmgoZDWRWaRdfQvPUhm5bNXx+6bPqeqd6V8jW2dyr6xoI6tfpjDxttKkd1hMfFRCv+Cp
 NXZ0CsonyaY7x1W7oiOQWgwhVu+ANUx3taDtZPhndwgvwerGYdIIUkXqZjsKxs5OLE/N
 ijcA==
X-Gm-Message-State: AOJu0YySyYLEmNTCB1TAgejgZLpqbO9ZFfDWG878tDGB7r0s38uJG/dI
 jyp+LYN1iVlWrbOiwpbyQ1TbxFtEsfYkFOVRsr/vmQ==
X-Google-Smtp-Source: AGHT+IHAODo9hINKXNlQvGgAqxNPpRnNjd4AA89Jgp1KLx343fQyHwwoszpkk3UnOGcXvbD6V54sQTKCIm/OR/KX2/4=
X-Received: by 2002:a17:907:a0a:b0:9bf:b129:5984 with SMTP id
 bb10-20020a1709070a0a00b009bfb1295984mr2459494ejc.77.1698435154557; Fri, 27
 Oct 2023 12:32:34 -0700 (PDT)
MIME-Version: 1.0
References: <20231026-ethtool_puts_impl-v2-0-0d67cbdd0538@google.com>
 <eda2f651-93f7-46c5-be7e-e8295903cc1e@lunn.ch>
In-Reply-To: <eda2f651-93f7-46c5-be7e-e8295903cc1e@lunn.ch>
From: Justin Stitt <justinstitt@google.com>
Date: Fri, 27 Oct 2023 12:32:22 -0700
Message-ID: <CAFhGd8rSw7RRXTh0XE6EekPKeka34k5RT93gzqvP8s=PntCdsA@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:35:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698435155; x=1699039955; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZWT6rg+UcGuVHCGktF1X9nMLt5S5rmKf4Xsx5qvsANI=;
 b=UVfAatbpOe6xYwBshNPyT57ECaB7dP4ftZmk1ftEfXMnesbj9Y9iVE2nh4mlvlt34l
 8q1irWUaHDppKoOeo5YnjsQ95sOj/Ig9ECidr8m66CGJ3GxjdIaOXkw8ZMo7IPL9ciAd
 hizt9sKPaGeMO2ew/p0CpWGNV9IjuI6N+ZCOTRfDG2rdEVA5n8UDqpBbN3vaRCktrkYt
 6RJjbD+7M+7m6WETuhokalzWs7qd229Ts0Zf7XzG3E6y4auuBe5AMhtSwIv2ZaBv41Ob
 mhKyayRXp5JU4rE9/nmOS7pOFXslr37Lmxv0k7FndEfq6TQKcQQYFPX1DV8da76+s9TH
 NtwA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=UVfAatbp
Subject: Re: [Intel-wired-lan] [PATCH next v2 0/3] ethtool: Add
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

T24gVGh1LCBPY3QgMjYsIDIwMjMgYXQgNToyNeKAr1BNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiA+IENoYW5nZXMgaW4gdjI6Cj4gPiAtIHdyYXAgbGluZXMgYmV0dGVy
IGluIHJlcGxhY2VtZW50ICh0aGFua3MgSm9lLCBLZWVzKQo+ID4gLSBhZGQgLS1maXggdG8gY2hl
Y2twYXRjaCAodGhhbmtzIEpvZSkKPiA+IC0gY2xlYW4gdXAgY2hlY2twYXRjaCBmb3JtYXR0aW5n
ICh0aGFua3MgSm9lLCBldCBhbC4pCj4gPiAtIHJlYmFzZSBhZ2FpbnN0IG5leHQKPgo+IFBsZWFz
ZSBjb3VsZCB5b3UgZXhwbGFpbiB0aGUgcmViYXNlIGFnYWluc3QgbmV4dD8gQXMgVmxhZGltaXIg
cG9pbnRlZAo+IG91dCwgYWxsIHRoZSBwYXRjaGVzIGFyZSB0byBkcml2ZXJzL25ldCwgc28gYW55
dGhpbmcgaW4gZmxpZ2h0IHNob3VsZAo+IGJlIGluIG5ldC1uZXh0LCBtZXJnZWQgYnkgdGhlIG5l
dGRldiBNYWludGFpbmVycy4KCk9LLCBzaG91bGQgdjMgYmUgYWdhaW5zdCBuZXQtbmV4dD8gSSBv
cHRlZCBmb3IgbmV4dCBhcyBhIGNhdGNoLWFsbC4KCj4KPiAgICAgQW5kcmV3CgpUaGFua3MKSnVz
dGluCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
