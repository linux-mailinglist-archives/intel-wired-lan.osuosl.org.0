Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1200766AAE5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 11:23:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20277404E5;
	Sat, 14 Jan 2023 10:23:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20277404E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673691792;
	bh=X2N2fJBOIqBzIyhorwxo2pjlBXmSBpvna77a4vyHvUw=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vJzHpw2kvdsaIiKcyOQJp+BThEaB3iIzUelfnNlf1seivyjsCHDT2UiMD/tmceb7e
	 POfkMyKPNAT+ru/keRXENWnpld34jyiytbZajCC02U8I0QNtCs/SJF9yVRIqh90Xul
	 4XBDVOAepP8mGzt1D5y5/Av6xJEiNGITi96m8M5WnuynUVYC/ASdmR0cFGYLsT2A3Y
	 xvoJrUlT11r+2XGalP9G6r5Ih3ptf/5BSUpRzJiMXGdSc07MNaqTssMAsxIbRQ7esa
	 jN69dzHqJ0EHhhSF48ntn0cCKoyyoaZCKdzLtz7xdx5ssaECKKW8y6r8FfAKQ3OMXz
	 tK73pFV9uKFoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1cKVBjO5RUDp; Sat, 14 Jan 2023 10:23:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 293DC40199;
	Sat, 14 Jan 2023 10:23:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 293DC40199
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3EC6A1BF419
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 10:23:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1453440199
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 10:23:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1453440199
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lu3FOKDMA6Uv for <intel-wired-lan@osuosl.org>;
 Sat, 14 Jan 2023 10:23:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 340924012E
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 340924012E
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 10:23:05 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id br9so1140853lfb.4
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 02:23:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=j+91RhPGaVF8Yf1jNkoQS4ycf6wzMw7d/xxWOowXU/U=;
 b=j+yNaAuXpk85DL1lI8Q00OWNC3LHXFc4Nn8xziJDcVS+DgDqbfDUwb8SNQxudUnoeQ
 noOG1HA4UssLVqTdhXgKHEDKrx2qNULISvs/kya1p22w9yVmlHMoaNUoZCwZQa/7pdie
 hvkoI0Q9mHBgQ4YvoY21g0iGfjlJwoPhavuMZjj9mCBTbJaE5aM1Pdw4nwoKFuttdaRS
 S6wufFHfoQpUwS7BuOXLo6o/Bq5STTb1G+PA2g1T89BDC1LGOUjEclrRsTyRJbFUx8jQ
 IOeqg9qIJ2h3w8KkPzTksGW8KALCJz5iLqYd4FoUs7Q8vUYIfsGwEifUdHsaDIctBO1h
 B93Q==
X-Gm-Message-State: AFqh2kpKU9Matyz31lvkGv1yruPqBtGIwTVu9BlzB57rCyCJ9SClf8SX
 7pHD18H3xoYuJaOSGaiv2k1kJn2QwBM=
X-Google-Smtp-Source: AMrXdXt3DDXWu824QMfU+35fPJu7jwgc4J+DM4mWkhHCNBacb0FuaUXCQvAhHT3FJR+p6qoYSJ+pCw==
X-Received: by 2002:a05:6512:6cb:b0:4a4:68b7:e71a with SMTP id
 u11-20020a05651206cb00b004a468b7e71amr27728029lff.4.1673691782981; 
 Sat, 14 Jan 2023 02:23:02 -0800 (PST)
Received: from [10.0.1.21] ([91.231.125.82]) by smtp.gmail.com with ESMTPSA id
 t13-20020a19ad0d000000b004cc82b7080bsm3271527lfc.200.2023.01.14.02.23.02
 for <intel-wired-lan@osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 14 Jan 2023 02:23:02 -0800 (PST)
Message-ID: <d1530cba-1a72-cae8-6a04-ed8ec0f82e6e@gmail.com>
Date: Sat, 14 Jan 2023 11:23:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: pl
To: intel-wired-lan@osuosl.org
From: Bartek Kois <bartek.kois@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:subject:from:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=j+91RhPGaVF8Yf1jNkoQS4ycf6wzMw7d/xxWOowXU/U=;
 b=Tewox0yJzAiGdqnp6oxku7ekGbHRnBvGgyWuRpTv1tcOJ2iL55BfJZ6An588cXut/e
 uIVueqa4ch6K1wB4cDNgqqC9DHf8saibstKORbDzbL7ewhttdBGza4FgIOTdgu0QAjmg
 va+NZYhxoS7QDP6sd4nomOSi2s01J2g8p4reQVKEmVloFsOQTRXsWVU1hXpQ3O144Nzp
 jHLktcIPMwAER/SPByNr3WO6QZ5755Q+pGeCEaWQqJDKGzjJSANE1XmtX+LM5zA8CXzP
 E8BUzCFE4MtLK59J6LCvKr82Xs9/rvcoqG7DunMYAcyMITxouADGBJSLi5zkkiBXawxD
 dCYg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Tewox0yJ
Subject: [Intel-wired-lan] Supermicro AOC-STGN-I1S (Intel 82599EN based 10G
 adapter) - poor network perfomance after moving to Debian 11.5
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkKCkFmdGVyIG1vdmluZyBmcm9tIERlYmlhbiA5LjcgdG8gMTEuNSBhcyBzb29uIGFzIEkgcGVy
Zm9ybSAiaXAgbGluayBzZXQgCmVucDFzMCB1cCIgZm9yIG15IDEwRyBhZGFwdGVyIChBT0MtU1RH
Ti1JMVMgLSBJbnRlbCA4MjU5OUVOIGJhc2VkIDEwRyAKYWRhcHRlcikgSSBhbSBleHBlcmllbmNp
bmcgaGlnaCBjcHUgbG9hZCAoZXZlbiBpZiBubyB0cmFmZmljIGlzIHBhc3NpbmcgCnRocm91Z2gg
dGhlIGFkYXB0ZXIpIGFuZCBuZXR3b3JrIHBlcmZvcm1hbmNlIGlzIGxvdyAod2hlbiBuZXR3b3Jr
IGlzIApjb25uZWN0ZWQpLiBUaGUgY3B1IGxvYWQgaXMgb3NjaWxhdGlvbmcgYmV0d2VlbiAwLjEg
YW5kIDAuMyBvbiB2YW5pbGxhIApzeXN0ZW0gd2l0aCBubyBuZXR3b3JrIGF0dGFjaGVkLiBUaGUg
cHJvYmxlbSBjYW4gYmUgb2JzZXJ2ZWQgb24gdGhlIApmb2xsb3dpbmcgcGxhdGZvcm1zOiBTdXBl
cm1pY3JvIFg5U0NMIChJbnRlbCBDMjAyIFBDSCkgYW5kIFN1cGVybWljcm8gClgxMFNMTCstRiAo
SW50ZWwgQzIyMiBFeHByZXNzIFBDSCksIGJ1dCBmb3IgdGhlIFN1cGVybWljcm8gWDExU1NMLUYg
CihJbnRlbMKuIEMyMzIgY2hpcHNldCkgZXZlcnl0aW5nIGlzIHdvcmtpbmcgd2VsbC4KClRlc3Rl
ZCBlbnZpcm9tZW50czoKRGViaWFuIDkuNyAtIExpbnV4IDQuOS4wLTYtYW1kNjQgIzEgU01QIERl
YmlhbiA0LjkuODgtMStkZWI5dTEgCigyMDE4LTA1LTA3KSB4ODZfNjQgR05VL0xpbnV4IFthbGwg
cGxhdGZvcm1zIHdvcmtpbmcgd2VsbCB3aXRoIG5vIApwcm9ibGVtczogU3VwZXJtaWNybyBYOVND
TCAoSW50ZWwgQzIwMiBQQ0gpLCBTdXBlcm1pY3JvIFgxMFNMTCstRiAoSW50ZWwgCkMyMjIgRXhw
cmVzcyBQQ0gpLCBTdXBlcm1pY3JvIFgxMVNTTC1GIChJbnRlbMKuIEMyMzIgY2hpcHNldCldCkRl
YmlhbiAxMS41IC0gTGludXggNS4xMC4wLTE5LWFtZDY0ICMxIFNNUCBEZWJpYW4gNS4xMC4xNDkt
MiAKKDIwMjItMTAtMjEpIHg4Nl82NCBHTlUvTGludXjCoCBbb2xkZXIgcGxhdGZvcm1zOiBTdXBl
cm1pY3JvIFg5U0NMIChJbnRlbCAKQzIwMiBQQ0gpLCBTdXBlcm1pY3JvIFgxMFNMTCstRiAoSW50
ZWwgQzIyMiBFeHByZXNzIFBDSCkgYmVoYXZlIApwcm9ibGVtYXRpYyBhcyBkZXNjcmliZWQgYWJv
dmUgfCBuZXdlciBwbGF0Zm9ybTogU3VwZXJtaWNybyBYMTFTU0wtRiAKKEludGVswq4gQzIzMiBj
aGlwc2V0KSB3b3JraW5nIHdlbGwgd2l0aCBubyBwcm9ibGVtc10KClNvIGZhciB0byBzb2x2ZSB0
aGUgcHJvYmxlbSBJIHdhcyB0cnlpbmcgdG8gdXBncmFkZSBzeXN0ZW0gdG8gdGhlIG5ld2VzdCAK
c3RhYmxlIHZlcnNpb24sIHVwZ3JhZGUga2VybmVsIHRvIHZlcnNpb24gNi54LCB1cGdyYWRlIGl4
Z2JlIGRyaXZlciB0byAKdGhlIG5ld2VzdCB2ZXJzaW9uIGJ1dCB3aXRoIG5vIGx1Y2suCgpTdXBl
cm1pY3JvIHN1cHBvcnQgc3VnZ2VzdGVkIGFzIGZvbGxvd3M6Cml0IG1pZ2h0IGJlIGtlcm5lbCBy
ZWxldGVkIGRlYmlhbiAxMS41IGhhcyBrZXJuZWwgNS4xMCB3aGloY2ggaXMgYSAKcmVjZW50IGtl
cm5lbCBpdCBtaWdodCBub3QgcHJvcGVybHkgc3VwcG9ydCB0aGUgY2hpcHNldHMgZm9yIFg5IAp0
aGVyZWZvcmUgaSBzdWdnZXN0IHRvIHVzZSBSSEVMIG9yIENlbnRPUyBhcyB0aGV5IHVzZSBtdWNo
IG9sZGVyIGtlcm5lbCAKdmVyc2lvbnMuIEkgZXhwZWN0IHRoYXQgd2l0aCB1YnVudHUgMjAuMDQg
eW91IHNlZSB0aGUgc2FtZSBwcm9ibGVtIGl0IAp1c2VzIGtlcm5lbCA1LjQKCkJlc3QgcmVnYXJk
cwpCYXJ0ZWsgS29pcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
