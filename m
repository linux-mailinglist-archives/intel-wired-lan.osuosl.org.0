Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE17576702C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jul 2023 17:09:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6C4A614BD;
	Fri, 28 Jul 2023 15:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6C4A614BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690556955;
	bh=u09t3A7pYy/irs8CH4z2jQhQ7c4cLbJzOMrTcamYxqU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jXeOHGRqjZoWCgeCy/tvZCSl2jkUGbyNS//92F/ldidE2Bm9cTBCtLVoTL7X/rLPF
	 id7dPSNMuzDM7R7E1/A2/c+INg4Hh7n1EZIaPmW5ky4W+Fs65VOtRM37DN3EuB0dNm
	 31TjjIxqfNzfH/+h0Q2WFX2Frvg/tsbdOor/qOMKYGgXw+4u0yeUPRcU6CseI4W+9z
	 qgE+xvHRBGJo8TMjhmXHeCwcZI7QG6P7Gl4H7mgwW2o5fDMJ6PTznLEoKeWqGu2xS0
	 eeYHryhG+ZV6SG857zUYl4XZ9vQtzu00plmTr85V6XqIpeUd+o+4GoFiz9XkmcHJFv
	 aXnCIZEVDd8pg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IBufxyz30UgK; Fri, 28 Jul 2023 15:09:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4DE8614AF;
	Fri, 28 Jul 2023 15:09:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4DE8614AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43BCB1BF414
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 21:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28DF0613CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 21:16:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28DF0613CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 43v3dKOfnRDT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 21:16:57 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com
 [IPv6:2607:f8b0:4864:20::112f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA283613CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 21:16:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA283613CB
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-58451ecf223so14616827b3.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 14:16:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690492616; x=1691097416;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/uGRhmfCXLxN6YU1cWESg55BRtPox1xD8u6NHDhwMzU=;
 b=MTCDCoLeNOEePuXMxUumUYY6gbcO5gqDoXfzFasCw64PQWkB7UWYgiWdhq9PMfvhjt
 cMf/MZCzh2tfyXY+FbYxPiyoO6OKsUREbzAszewoXMpdGxAypvcQpTGNz8S7WLVLDxZL
 7JkyeSL/ZnVVPdVSM6ZKPb2hH1LsqRebMJqEiAl7PfOYhATrfyKnJK5JzJbcC1cSt4SN
 yqZ4xGQLa6zwILqEn3RsG1NpFMTyVR2CA4sZy6ChUo9H+F84TeVs+E8gPRM8tPV0KtI4
 YUZjb8aiaNMJD6IRcSghTmlYvGlnc20mpN4F/AfXweKBB9kgjjwGWZb1mdvsyNRNRNFk
 jRPw==
X-Gm-Message-State: ABy/qLZfv5V1+lti+VK08SVnHOXiPiTb6e8FlD6NnxuIocrTc7Oh7Muw
 GEyxW7QYizmquz3oGVNgG/mQWs3Kv18sZ/ANmJe50Q==
X-Google-Smtp-Source: APBJJlF/WP9UF5vhbN5Eh27rtP31+QJ0KngVSCOWM/D/823cWc4t3dHqdkGuZ+k5czJWqkSh0GU74FyljZsGrCSOQus=
X-Received: by 2002:a25:fe0f:0:b0:cfa:f7cb:be16 with SMTP id
 k15-20020a25fe0f000000b00cfaf7cbbe16mr513279ybe.49.1690492615774; Thu, 27 Jul
 2023 14:16:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <20230623123820.42850-8-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20230623123820.42850-8-arkadiusz.kubalewski@intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 27 Jul 2023 23:16:42 +0200
Message-ID: <CACRpkdar39x8nd5cWEDiFDHwLqHghUQZqkR0rEcv2-sZOZZ0KQ@mail.gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
X-Mailman-Approved-At: Fri, 28 Jul 2023 15:09:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1690492616; x=1691097416;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/uGRhmfCXLxN6YU1cWESg55BRtPox1xD8u6NHDhwMzU=;
 b=wswgZlkJ4NBe7/FtnWso7C3R/rqxZSJUmuWg9QHSi9JMGr8w9D2uQzTwgYsequJulq
 is/1hwyg+1vqmZ9shtq1fLohk50d+i8QBH94zB9Ej1yzYbUEOx8Q8l3bt0oVwirfr+xh
 AcGAad0J9UQ+W6bzboUyHjcJsZi+WSrDF+7OkvzGWimEu22FXf1MLJ5EWwQk8FgWWRli
 5nuxAenh9aEGSFI3R+2Wy25KS6nV9YXFHtJMJgUjRnHRAdpCMvCEBYpGfAgwwEMdv3tk
 6JayWaqklc5v3KEH7PSXfzGTJ/CMqnzNShHlNUjbz1y94StJOZzcLCOnavQ4iCJKf8+F
 iyZA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=wswgZlkJ
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 07/10] ice: add admin commands
 to access cgu configuration
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, jiri@resnulli.us, arnd@arndb.de,
 idosch@nvidia.com, richardcochran@gmail.com, claudiajkang@gmail.com,
 kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 airlied@redhat.com, nicolas.dichtel@6wind.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk, sj@kernel.org,
 vadim.fedorenko@linux.dev, linux@zary.sk, gregkh@linuxfoundation.org,
 ogabbay@kernel.org, nipun.gupta@amd.com, linux-kernel@vger.kernel.org,
 andy.ren@getcruise.com, tzimmermann@suse.de, jonathan.lemon@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net, milena.olech@intel.com,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgQXJrYWRpdXN6LAoKT24gRnJpLCBKdW4gMjMsIDIwMjMgYXQgMjo0NeKAr1BNIEFya2FkaXVz
eiBLdWJhbGV3c2tpCjxhcmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+IHdyb3RlOgoKPiAr
LyoqCj4gKyAqIGNvbnZlcnRfczQ4X3RvX3M2NCAtIGNvbnZlcnQgNDggYml0IHZhbHVlIHRvIDY0
IGJpdCB2YWx1ZQo+ICsgKiBAc2lnbmVkXzQ4OiBzaWduZWQgNjQgYml0IHZhcmlhYmxlIHN0b3Jp
bmcgc2lnbmVkIDQ4IGJpdCB2YWx1ZQo+ICsgKgo+ICsgKiBDb252ZXJ0IHNpZ25lZCA0OCBiaXQg
dmFsdWUgdG8gaXRzIDY0IGJpdCByZXByZXNlbnRhdGlvbi4KPiArICoKPiArICogUmV0dXJuOiBz
aWduZWQgNjQgYml0IHJlcHJlc2VudGF0aW9uIG9mIHNpZ25lZCA0OCBiaXQgdmFsdWUuCj4gKyAq
Lwo+ICtzdGF0aWMgczY0IGNvbnZlcnRfczQ4X3RvX3M2NChzNjQgc2lnbmVkXzQ4KQo+ICt7Cj4g
KyAgICAgICByZXR1cm4gc2lnbmVkXzQ4ICYgQklUX1VMTCg0NykgPwo+ICsgICAgICAgICAgICAg
ICBHRU5NQVNLX1VMTCg2MywgNDgpIHwgc2lnbmVkXzQ4IDogc2lnbmVkXzQ4Owo+ICt9CgpDYW4n
dCB5b3UganVzdCB1c2Ugc2lnbl9leHRlbmQ2NCgpIGZyb20gPGxpbnV4L2JpdG9wcy5oPgpwYXNz
aW5nIGJpdCA0OCBhcyBzaWduIGJpdCBpc3RlYWQgb2YgaW52ZW50aW5nIHRoaXM/CgpZb3VycywK
TGludXMgV2FsbGVpagpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
