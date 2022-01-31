Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B72E74A4DB5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 19:04:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 688D882883;
	Mon, 31 Jan 2022 18:04:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8NhadulSuChT; Mon, 31 Jan 2022 18:04:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7989E827AA;
	Mon, 31 Jan 2022 18:04:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 747A31BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 18:04:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6014360EA4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 18:04:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: invalid data)" header.d=pensando.io
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7arfMkYWHwmF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 18:04:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CED660C22
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 18:04:50 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 l24-20020a17090aec1800b001b55738f633so90269pjy.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 10:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=c4Q5GbHlG477GDu8eKVa3wxvGBbayrQI0q4Ora6UJKM=;
 b=tqRPGJPSBTirucVoZRcW3Pfn8BwsifiN/2zFudpAcytP87mX6mRx+Z2+R8wpSJO6rJ
 E21sG6i5x1UJi7SIERlnMvo8Jw0MLeFM6mvgDhxTj45ED5x+ylbmR3r1yaZ8mJx2fzpx
 udWsOYVxp3K/E4/g+A1Uv/ovIRjY7g5AdBlMS01qOGp/RnNoU+KHggkPTU0eVD0DU8s9
 0BeQOAnHzHWADyIK4Vu+WAIlTn0apQDnBPfgCcsWeZOXKK9/5IWZ2oh4MKVGtqnRvPWe
 5941r9GmvDJ9BaTRBHT9nHnwJ9e+INLC12aBfS+Ob2isiRQG967ObJegi9wJYUDWinQX
 qgZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=c4Q5GbHlG477GDu8eKVa3wxvGBbayrQI0q4Ora6UJKM=;
 b=QuWqWlSTLqBhozcMk8Izw4h7qK0KfZZxGfJg9dK+ZNnqE3GDgRQXTFf6jyIdWQilaZ
 u5Gi4OaD5vTXCq6nA1M4a+/VXv1kvqfisj/TvZKlpgBvCkHWLvA7ivBgToTp6JrCvYlD
 YWt6cNscluFKYXp/3Zhhz4i5mHQpBNL0qQ64dbd7Y2qnxsJXO/VqBot89p7KOmCvWpEt
 Mf7X1wfEmGLAhvdaqv+5BAGcagCZOaoCM48ZmaQemqmauSMvn18w8CQ8/voUhPye540t
 W53TRYrhngS/jwTn1A1i1lpLr0vfXWIgP4TqZEmShZX+SEididyo5s0SKf3SVRc603GQ
 qung==
X-Gm-Message-State: AOAM5335pIA2pr9MKq7fE7m3D3nmHfvvLhkFY0WxTtOgiwKrP6MzxYFR
 LkbflhS8Q1EmhRA7bWkvo0yRvw==
X-Google-Smtp-Source: ABdhPJwiCZ3y7ls9K5IfS1T6T0ClceNUAK7SZtIbNYVDQUzoxeIbETevQnD06wi4x9WLSkmqa1d5tw==
X-Received: by 2002:a17:902:d2c3:: with SMTP id
 n3mr21984876plc.45.1643652289541; 
 Mon, 31 Jan 2022 10:04:49 -0800 (PST)
Received: from [192.168.0.2] ([50.53.47.17])
 by smtp.gmail.com with ESMTPSA id y42sm19810173pfa.5.2022.01.31.10.04.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 31 Jan 2022 10:04:49 -0800 (PST)
Message-ID: <e9e124b0-4ea0-e84c-cd8e-1c6ad4df9d74@pensando.io>
Date: Mon, 31 Jan 2022 10:04:40 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.5.0
Content-Language: en-US
To: Saeed Mahameed <saeed@kernel.org>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <20220131172450.4905-1-saeed@kernel.org>
From: Shannon Nelson <snelson@pensando.io>
In-Reply-To: <20220131172450.4905-1-saeed@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: kbuild: Don't default
 net vendor configs to y
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 David Awogbemila <awogbemila@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, rafal@milecki.pl,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Andy Gospodarek <andy@greyhouse.net>, Edwin Peer <edwin.peer@broadcom.com>,
 Wei Liu <wei.liu@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>, linux-sunxi@lists.linux.dev,
 Jiri Pirko <jiri@resnulli.us>, l.stelmach@samsung.com,
 Shay Agroskin <shayagr@amazon.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Jon Mason <jdmason@kudzu.us>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Chris Snook <chris.snook@gmail.com>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 linux-stm32@st-md-mailman.stormreply.com, Gabriel Somlo <gsomlo@gmail.com>,
 Rain River <rain.1986.08.12@gmail.com>,
 Martin Habets <habetsm.xilinx@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Shai Malin <smalin@marvell.com>, Maxime Ripard <mripard@kernel.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, drivers@pensando.io,
 Omkar Kulkarni <okulkarni@marvell.com>, linux-arm-kernel@lists.infradead.org,
 Vegard Nossum <vegard.nossum@oracle.com>, David Arinzon <darinzon@amazon.com>,
 UNGLinuxDriver@microchip.com, linux-renesas-soc@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Catherine Sullivan <csully@google.com>, linux-hyperv@vger.kernel.org,
 oss-drivers@corigine.com, Noam Dagan <ndagan@amazon.com>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Steen Hegelund <steen.hegelund@microchip.com>,
 Dexuan Cui <decui@microsoft.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Joel Stanley <joel@jms.id.au>,
 Simon Horman <simon.horman@corigine.com>, Asmaa Mnebhi <asmaa@nvidia.com>,
 Arnd Bergmann <arnd@arndb.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 Liming Sun <limings@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Salil Mehta <salil.mehta@huawei.com>, Sergey Shtylyov <s.shtylyov@omp.ru>,
 Oleksij Rempel <linux@rempel-privat.de>, Edward Cree <ecree.xilinx@gmail.com>,
 Saeed Bishara <saeedb@amazon.com>, Mark Einon <mark.einon@gmail.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Slark Xiao <slark_xiao@163.com>, Gary Guo <gary@garyguo.net>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 Jeroen de Borst <jeroendb@google.com>, Lino Sanfilippo <LinoSanfilippo@gmx.de>,
 intel-wired-lan@lists.osuosl.org, Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Richard Cochran <richardcochran@gmail.com>, Marcin Wojtas <mw@semihalf.com>,
 David Thompson <davthompson@nvidia.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Saeed Mahameed <saeedm@nvidia.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMS8zMS8yMiA5OjI0IEFNLCBTYWVlZCBNYWhhbWVlZCB3cm90ZToKPiBGcm9tOiBTYWVlZCBN
YWhhbWVlZCA8c2FlZWRtQG52aWRpYS5jb20+Cj4KPiBORVRfVkVORE9SX1hZWiB3ZXJlIGRlZmF1
bHRlZCB0byAneScgZm9yIG5vIHRlY2huaWNhbCByZWFzb24uCj4KPiBTaW5jZSBhbGwgZHJpdmVy
cyBiZWxvbmdpbmcgdG8gYSB2ZW5kb3IgYXJlIHN1cHBvc2VkIHRvIGRlZmF1bHQgdG8gJ24nLAo+
IGRlZmF1bHRpbmcgYWxsIHZlbmRvcnMgdG8gJ24nIHNob3VsZG4ndCBiZSBhbiBpc3N1ZSwgYW5k
IGFsaWducyB3ZWxsCj4gd2l0aCB0aGUgJ25vIG5ldyBkcml2ZXJzJyBieSBkZWZhdWx0IG1lbnRh
bGl0eS4KPgo+IFNpZ25lZC1vZmYtYnk6IFNhZWVkIE1haGFtZWVkIDxzYWVlZG1AbnZpZGlhLmNv
bT4KPgoKSXMgdGhlcmUgYSBwYXJ0aWN1bGFyIHJlYXNvbiB0byBjaGFuZ2UgdGhpcz8KQnJva2Vu
IGNvbXBpbGVzP8KgIEJhZCBkcml2ZXJzP8KgIE92ZXItc2l6ZWQgb3V0cHV0PwoKc2xuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
