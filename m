Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5138F566EAE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 14:51:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CA4AA40A96;
	Tue,  5 Jul 2022 12:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA4AA40A96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657025481;
	bh=w8hyAUZWn2wxIOqNJlwYOJg7ldG8aBAinpbFwVQVFDk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jp2fFs5b8jJnHiyxa3zwoDpKmDX2f8SKfd1jpqLZV3Nmn0AIuusH+3YOFk+udev3V
	 VlQDIGA8MHjVwPl/WRAT6RxeHrXlq6MeZ1C7bIXipp8NjUZiKFaw9WvJ69T7FkQO5N
	 isNz3S4ryOI3vX5fE9BFm4I2MrrHYuft76Sitgnme/nfeiZLqLzLEC2V4HQrHdPIdk
	 O50ruQIQjzHwiUv1hcD3NN7SvEPKtmDHi6cL5QCgD0Ffmnp4GRLXbyrvHB0tVYcFQ5
	 tXhUY3Dq+QlJmNqn9jOB9WGsR9kW/3IZodTTv6KSClKaZJjIP56sZdKShTwmzjh7Kn
	 Kf8tpsjYdeFtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uCOmK2ESSpi3; Tue,  5 Jul 2022 12:51:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8417A40A67;
	Tue,  5 Jul 2022 12:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8417A40A67
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF9311BF38E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 18:13:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 92CDD40533
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 18:13:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92CDD40533
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5FbMgg3IAOdz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 18:13:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D0EA40286
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D0EA40286
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 18:13:42 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id z19so27591015edb.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 11:13:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8glAiFvvYAhfMI+vcfTy74bCy0VAErz9qlw2gOrB7qA=;
 b=NvsTnqGgSlYgeZV7KZ28utZBGkwy0C4Fp5Sfbirr8ZCRcd0ox1L0zH5vbNsW/ljjnZ
 Lp6+EF2k3Hvh/h/XbtlPylQ2GFfvrbiW5Sigz1ZdJ3TzQOrdrRypd4qgk8xC+9DP397v
 a7UIvFX6fT8DtX66Z56qP23yquPaV7fmXRHh76xh9/0k/AO8kCwTrqnFncE6EqLcQ+w7
 /EYeTF2BX+bWjYXBC70PWCS/LTqA1YIwasysgNOnvFjZt4viqApBTfbi7eaRAyPpzNfn
 hJ+CJmlTjxD7pDNC+ETDgcRTFaZ8n6edRtvtgAuBE1HlIGn175HrdjtVdffDhdlXaqTb
 DmWA==
X-Gm-Message-State: AJIora8dd3GkEkYOlS7tbfyp5IYHpESrZOJfcNn166zxNC3rvuZxD81C
 iS+OZDGmjyFuJoALSobyRV8=
X-Google-Smtp-Source: AGRyM1tRbV9myCID4do+RE+BD6VuESTf79GpY37rWF1nuOjpF2gsd4l25Fxd/4Kig/NcRnR7mdixUA==
X-Received: by 2002:a05:6402:26d6:b0:435:ba41:dbb0 with SMTP id
 x22-20020a05640226d600b00435ba41dbb0mr13327972edd.242.1656612820518; 
 Thu, 30 Jun 2022 11:13:40 -0700 (PDT)
Received: from opensuse.localnet (host-87-6-98-182.retail.telecomitalia.it.
 [87.6.98.182]) by smtp.gmail.com with ESMTPSA id
 p5-20020a17090653c500b00722e8c47cc9sm1833654ejo.181.2022.06.30.11.13.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jun 2022 11:13:38 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 30 Jun 2022 20:13:37 +0200
Message-ID: <12017329.O9o76ZdvQC@opensuse>
In-Reply-To: <CAKgT0UfGM8nCZnnYjWPKT+JXOwVJx1xj6n7ssGi41vH4GrUy0Q@mail.gmail.com>
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <Yr12jl1nEqqVI3TT@boxer>
 <CAKgT0UfGM8nCZnnYjWPKT+JXOwVJx1xj6n7ssGi41vH4GrUy0Q@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jul 2022 12:51:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8glAiFvvYAhfMI+vcfTy74bCy0VAErz9qlw2gOrB7qA=;
 b=l1r+1Vmf9q2oWvjMcHJzsqJnIeHo07Lf7an896wGvxkwuV/81/9kjyXcVpowrnWjQR
 MebPRwlejspQtTlgWcn6o56P0UE9VvteQLMMl153TNVbdz3gnJurMJCXzIV31PI9f3Gy
 +LsuxTKlXXI3+buzGcTM0g9BN49+68ylLEbbQovNwqhHwMFaFnB1VL8mE/Cesmwq7RWw
 w7MHT1YsfBSOYyRXOaoseLr8ybSjV+UhnJC0OkCsWNmyGRAgpQR3e8C+LMj+4S9UO4gm
 fm1ma4xUoIcEn6Rwa4zlti9dlk2NSt+9w82HeC4rueqqWCPMsgeEzo7+9g5osgVQ7q4W
 x00Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=l1r+1Vmf
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ira Weiny <ira.weiny@intel.com>,
 "David S. Miller" <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gZ2lvdmVkw6wgMzAgZ2l1Z25vIDIwMjIgMTc6MTc6MjQgQ0VTVCBBbGV4YW5kZXIgRHV5Y2sg
d3JvdGU6Cj4gT24gVGh1LCBKdW4gMzAsIDIwMjIgYXQgMzoxMCBBTSBNYWNpZWogRmlqYWxrb3dz
a2kKPiA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gV2Vk
LCBKdW4gMjksIDIwMjIgYXQgMTA6NTg6MzZBTSArMDIwMCwgRmFiaW8gTS4gRGUgRnJhbmNlc2Nv
IHdyb3RlOgo+ID4gPiBUaGUgdXNlIG9mIGttYXAoKSBpcyBiZWluZyBkZXByZWNhdGVkIGluIGZh
dm9yIG9mIGttYXBfbG9jYWxfcGFnZSgpLgo+ID4gPgo+ID4gPiBXaXRoIGttYXBfbG9jYWxfcGFn
ZSgpLCB0aGUgbWFwcGluZyBpcyBwZXIgdGhyZWFkLCBDUFUgbG9jYWwgYW5kIG5vdAo+ID4gPiBn
bG9iYWxseSB2aXNpYmxlLiBGdXJ0aGVybW9yZSwgdGhlIG1hcHBpbmcgY2FuIGJlIGFjcXVpcmVk
IGZyb20gYW55IApjb250ZXh0Cj4gPiA+IChpbmNsdWRpbmcgaW50ZXJydXB0cykuCj4gPiA+Cj4g
PiA+IFRoZXJlZm9yZSwgdXNlIGttYXBfbG9jYWxfcGFnZSgpIGluIGl4Z2JlX2NoZWNrX2xidGVz
dF9mcmFtZSgpIApiZWNhdXNlCj4gPiA+IHRoaXMgbWFwcGluZyBpcyBwZXIgdGhyZWFkLCBDUFUg
bG9jYWwsIGFuZCBub3QgZ2xvYmFsbHkgdmlzaWJsZS4KPiA+Cj4gPiBIaSwKPiA+Cj4gPiBJJ2Qg
bGlrZSB0byBhc2sgd2h5IGttYXAgd2FzIHRoZXJlIGluIHRoZSBmaXJzdCBwbGFjZSBhbmQgbm90
IHBsYWluCj4gPiBwYWdlX2FkZHJlc3MoKSA/Cj4gPgo+ID4gQWxleD8KPiAKPiBUaGUgcGFnZV9h
ZGRyZXNzIGZ1bmN0aW9uIG9ubHkgd29ya3Mgb24gYXJjaGl0ZWN0dXJlcyB0aGF0IGhhdmUgYWNj
ZXNzCj4gdG8gYWxsIG9mIHBoeXNpY2FsIG1lbW9yeSB2aWEgdmlydHVhbCBtZW1vcnkgYWRkcmVz
c2VzLiBUaGUga21hcAo+IGZ1bmN0aW9uIGlzIG1lYW50IHRvIHRha2UgY2FyZSBvZiBoaWdobWVt
IHdoaWNoIHdpbGwgbmVlZCB0byBiZSBtYXBwZWQKPiBiZWZvcmUgaXQgY2FuIGJlIGFjY2Vzc2Vk
Lgo+IAo+IEZvciBub24taGlnaG1lbSBwYWdlcyBrbWFwIGp1c3QgY2FsbHMgdGhlIHBhZ2VfYWRk
cmVzcyBmdW5jdGlvbi4KPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qv
c291cmNlL2luY2x1ZGUvbGludXgvaGlnaG1lbS1pbnRlcm5hbC5oI0w0MAoKUGxlYXNlIHRha2Ug
YSBsb29rIGF0IGRvY3VtZW50YXRpb24gKGhpZ2htZW0ucnN0KS4gSSd2ZSByZWNlbnRseSByZXdv
cmtlZCAKaXQgYW5kIGFkZGVkIGluZm9ybWF0aW9uIGFib3V0IGttYXBfbG9jYWxfcGFnZSgpCgpU
aGFua3MsCgpGYWJpbwoKPiAKPiBUaGFua3MsCj4gCj4gLSBBbGV4Cj4gCgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
