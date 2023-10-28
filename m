Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD57C7DBCC8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:36:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D96770BF6;
	Mon, 30 Oct 2023 15:36:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D96770BF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680195;
	bh=lF1JTcwh5EMbVkbicp4y8REC79vY93gLdv6mDFKCggw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YapnKqBKdtAf3HqBc18h2Zoan82XQaJyEJJ90r0qT/6Xm6s7qhlT5cCZK5Btnu/wN
	 Pch4XpJhEPYgOflroHSHJijfyCfNzFCDrfRW+5bX83tvixUWCewIiXfMZlHS5ExW+z
	 MXSBCgTTekLQSatIxQO6S8+FJiPck6clI6wZL+hi5mL/4jLlDakQSVdGfi4NW4OAve
	 /HdhXVMHpbEkbs12Jt6/9APHw9b5Kty1uxeAXWfZn2pq+wr30prsftycc3BKSP1QBI
	 n06n12nzal3sJ5/oz0AH+fcZsS8L0JR1YL1qIu+/ylkyidx5VWFLngSINxiyPqyMf5
	 2h06dVz7KBEiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4KRWu-2qzjdh; Mon, 30 Oct 2023 15:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7E5070925;
	Mon, 30 Oct 2023 15:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7E5070925
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 952921BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Oct 2023 01:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73CB182052
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Oct 2023 01:20:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73CB182052
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id poiUaITa3Qkz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Oct 2023 01:20:22 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9702482050
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Oct 2023 01:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9702482050
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-9b1ebc80d0aso394531866b.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 18:20:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698456020; x=1699060820;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0g5kyZ0hA+DlGKnaeXH//43ksUqY7YG+r7+U+dNLRdo=;
 b=Zc9KvnJC1R4tOJlcLN4GFYeKphzzHD3FfXq9yanolYE9vyrLNX79tcKMzgSH55S1CR
 nuLhYMgSNox1FyJa9hNFZL0FafUdhjBnlNXVSBnU1geozCsw5hOnVD6RYNbTug8JO54C
 yUBH3s03Xp4/17wXrXi7tJw0R8E8iX4Cz7XV2aZeixfDDy6My2h/Fw8S/LUhsUBjlI8g
 aS1rJBDYOpNdRNaYJd7/dpHg6H0qFpxT1kOnf26ZSfp3SDpaOBzhuDF7vLqjJI9V9SxO
 vd+/BnGzWBqbbTwmGWB20knKxZ5nned0JYtbHlwDPXKvVTjBtPtGA0dHmDUL/Hr0vjk1
 EcoQ==
X-Gm-Message-State: AOJu0YxJM9qlb4ndNzSan67W6tySsqrRvMmQ0wY/nZKQNKJlObs7mfEv
 DmHiA/C+0s2jsjGjGvNQ3MCf0g4xO4ch9Ccr6sQZjA==
X-Google-Smtp-Source: AGHT+IHxolWSAC4XvBLAiS8bNkb50iFHz5nOkd4FFLXw/+WDrtcRsN44VBQ67SWxWTbp7GfzFR6SM97u7XxM3x0zW6s=
X-Received: by 2002:a17:906:fe46:b0:9c3:b3cb:29b2 with SMTP id
 wz6-20020a170906fe4600b009c3b3cb29b2mr3275410ejb.42.1698456020364; Fri, 27
 Oct 2023 18:20:20 -0700 (PDT)
MIME-Version: 1.0
References: <20231027-ethtool_puts_impl-v3-0-3466ac679304@google.com>
 <20231027-ethtool_puts_impl-v3-1-3466ac679304@google.com>
 <8ca4ba13-1bcf-4c7b-91b6-8c77fbe55b30@lunn.ch>
In-Reply-To: <8ca4ba13-1bcf-4c7b-91b6-8c77fbe55b30@lunn.ch>
From: Justin Stitt <justinstitt@google.com>
Date: Fri, 27 Oct 2023 18:20:08 -0700
Message-ID: <CAFhGd8p8mmGfR-eTu_g3k64Z79z=M1xfjTFDhmJ1XaszCtQx1w@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:35:00 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698456020; x=1699060820; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0g5kyZ0hA+DlGKnaeXH//43ksUqY7YG+r7+U+dNLRdo=;
 b=R7ABnodTryy7fudoFDujCq9dg5OK0QsgfvBwcUODxt/DdI2GdWji24b6Ggi0wAEJfd
 5pA9U2pLp8Q416bwElpEAtyyQSTGk9/owj2cS5l710Sv5VcLCPnZy9dnlbPP/Jnxg4qM
 onoFT47UPE/mfxLXDrHIVDT98/EE2a/cUHYUDSUAXkT8NijwF7jYuMZ1stAgl1NvwnGA
 jm14ic9ClCRT5q4ZEXKSWubSlB3cOyGzT7oFh+VB7EW1NBrexjPlqZQIAPt/Si4EbI24
 +BuPIdxVKYcjZBOzmcnNdo6YvUTFB1Sxje9W0nZ9/jk8VNj6e0weWcYvz/gz0B5oGBN3
 GO2g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=R7ABnodT
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

T24gRnJpLCBPY3QgMjcsIDIwMjMgYXQgNDo0M+KAr1BNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiA+ICsvKioKPiA+ICsgKiBldGh0b29sX3B1dHMgLSBXcml0ZSBzdHJp
bmcgdG8gZXRodG9vbCBzdHJpbmcgZGF0YQo+ID4gKyAqIEBkYXRhOiBQb2ludGVyIHRvIHN0YXJ0
IG9mIHN0cmluZyB0byB1cGRhdGUKPgo+IElzbid0IGl0IGFjdHVhbGx5IGEgcG9pbnRlciB0byBh
IHBvaW50ZXIgdG8gdGhlIHN0YXJ0IG9mIHN0cmluZyB0bwo+IHVwZGF0ZT8KCkkgc3VwcG9zZS4K
CkZXSVcsIEkganVzdCBjb3B5LXBhc3RlZCB0aGUgc3ByaW50ZiBkb2MgYW5kIHR3ZWFrZWQ6Ci8q
KgogKiBldGh0b29sX3NwcmludGYgLSBXcml0ZSBmb3JtYXR0ZWQgc3RyaW5nIHRvIGV0aHRvb2wg
c3RyaW5nIGRhdGEKICogQGRhdGE6IFBvaW50ZXIgdG8gc3RhcnQgb2Ygc3RyaW5nIHRvIHVwZGF0
ZQogKiBAZm10OiBGb3JtYXQgb2Ygc3RyaW5nIHRvIHdyaXRlCiAqCiAqIFdyaXRlIGZvcm1hdHRl
ZCBzdHJpbmcgdG8gZGF0YS4gVXBkYXRlIGRhdGEgdG8gcG9pbnQgYXQgc3RhcnQgb2YKICogbmV4
dCBzdHJpbmcuCiAqLwoKCj4KPiA+ICtleHRlcm4gdm9pZCBldGh0b29sX3B1dHModTggKipkYXRh
LCBjb25zdCBjaGFyICpzdHIpOwo+Cj4gICAgICAgICBBbmRyZXcKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
