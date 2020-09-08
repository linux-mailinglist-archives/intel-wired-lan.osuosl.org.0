Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAE0260EF5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 11:45:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 986D685D6E;
	Tue,  8 Sep 2020 09:45:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id egf5pqPWT_nC; Tue,  8 Sep 2020 09:45:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A513B85D87;
	Tue,  8 Sep 2020 09:45:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8947D1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 09:45:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8031E87267
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 09:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z37+12Kjb7bT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 09:45:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 968A687265
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 09:45:21 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id t10so18435402wrv.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Sep 2020 02:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IbF4MU0tO5pswZ6Pf+mZyMeSB7RqS4XxH2UG10CWEPo=;
 b=vSOqIB7TrF49RNzF6LTLMvuhqUHbu8pPkNld+Ur5otxVnKNYsiB1iNOCtJGl+Q36A+
 NKd9Yro0J90rkuTvX3Op+Q8U455lgryWCQXRDQC5tW+252tWx+Bg69jbPsGfYqbnWXHq
 lsqX+O7hXeK8th7dl0rhZaXJte3OVd49hBoEMFe5hDvd6IVmY08C8+g75Ovmt/tG3o5B
 SOG0zRcUJSD6N9wLqVPOBmTAcLIR2U35k8GO5saXaHZMyupT5GJ50BPj+DFoNyyukIwt
 K/Uj41EYey5yLcAGPdzh3BdM/GAELuBQWQdUdkzz7af2ohKcg/Dc9PNi4xXkayaFNChZ
 Ywmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IbF4MU0tO5pswZ6Pf+mZyMeSB7RqS4XxH2UG10CWEPo=;
 b=gnOAKoKWaMh0zlWIJACicZCnO2PlEQc3Q9pXn6tmTL3STlO3sU+zjJtgKt+G4ePGCV
 6qQq8tARXj7VL0g13Axe3jrKyxSuA5MsV0RIgs1Kx2gmt6qjWgC6nf2h/rLKZKPMRJoC
 qNvEFkHjlOCj/Xtdq80NGy3Cq1NIhSYvx6ftq0DnwSAiPBM9ll6gnB9RRWh9I6+UlidF
 5fYSSWffNl1pYiEqdzQBAp1aTvw6gVQsUBblJESHBCiD1GsE1eF3sowYak7j83EDiViO
 7QhaJf13VBUr2UvFlc1tuTqWvPaWzAXVaVrajbERiHckhz32UGLNVH8P8tjLUKpH2hx/
 +Nmw==
X-Gm-Message-State: AOAM5333zvHs0XWFAD8kVARLbA/YhV46HvGaraMupGgqFiT9QDOtr/Fc
 az0YsLWOVrAxUjHf8MY3mv/diorzYCQ=
X-Google-Smtp-Source: ABdhPJxUlZ5lo45dizuZCwuKoIJvidv7xhWhsQPD4SzFzSoSVpatc9q0HJU6UuhnfmNdW5wMVzvisg==
X-Received: by 2002:adf:eb86:: with SMTP id t6mr19271165wrn.411.1599558319684; 
 Tue, 08 Sep 2020 02:45:19 -0700 (PDT)
Received: from [192.168.8.147] ([37.172.73.222])
 by smtp.gmail.com with ESMTPSA id v204sm31915261wmg.20.2020.09.08.02.45.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Sep 2020 02:45:19 -0700 (PDT)
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>, ast@kernel.org, 
 daniel@iogearbox.net, netdev@vger.kernel.org, bpf@vger.kernel.org
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
 <20200907150217.30888-5-bjorn.topel@gmail.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <6bbf1793-d2be-b724-eec4-65546d4cbc9c@gmail.com>
Date: Tue, 8 Sep 2020 11:45:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200907150217.30888-5-bjorn.topel@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 4/4] ixgbe,
 xsk: use XSK_NAPI_WEIGHT as NAPI poll budget
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
Cc: kuba@kernel.org, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA5LzcvMjAgNTowMiBQTSwgQmrDtnJuIFTDtnBlbCB3cm90ZToKPiBGcm9tOiBCasO2cm4g
VMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4gCj4gU3RhcnQgdXNpbmcgWFNLX05BUElf
V0VJR0hUIGFzIE5BUEkgcG9sbCBidWRnZXQgZm9yIHRoZSBBRl9YRFAgUngKPiB6ZXJvLWNvcHkg
cGF0aC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hz
ay5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2suYwo+
IGluZGV4IDM3NzE4NTdjZjg4Ny4uZjMyYzFiYTBkMjM3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jCj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPiBAQCAtMjM5LDcgKzIzOSw3IEBAIGlu
dCBpeGdiZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGl4Z2JlX3FfdmVjdG9yICpxX3ZlY3RvciwK
PiAgCWJvb2wgZmFpbHVyZSA9IGZhbHNlOwo+ICAJc3RydWN0IHNrX2J1ZmYgKnNrYjsKPiAgCj4g
LQl3aGlsZSAobGlrZWx5KHRvdGFsX3J4X3BhY2tldHMgPCBidWRnZXQpKSB7Cj4gKwl3aGlsZSAo
bGlrZWx5KHRvdGFsX3J4X3BhY2tldHMgPCBYU0tfTkFQSV9XRUlHSFQpKSB7Cj4gIAkJdW5pb24g
aXhnYmVfYWR2X3J4X2Rlc2MgKnJ4X2Rlc2M7Cj4gIAkJc3RydWN0IGl4Z2JlX3J4X2J1ZmZlciAq
Ymk7Cj4gIAkJdW5zaWduZWQgaW50IHNpemUKClRoaXMgaXMgYSB2aW9sYXRpb24gb2YgTkFQSSBB
UEkuIElYR0JFIGlzIGFscmVhZHkgZGl2ZXJnaW5nIGEgYml0IGZyb20gYmVzdCBwcmFjdGljZXMu
CgpUaGVyZSBhcmUgcmVhc29ucyB3ZSB3YW50IHRvIGNvbnRyb2wgdGhlIGJ1ZGdldCBmcm9tIGNh
bGxlcnMsCmlmIHlvdSB3YW50IGJpZ2dlciBidWRnZXQganVzdCBpbmNyZWFzZSBpdCBpbnN0ZWFk
IG9mIHVzaW5nIHlvdXIgb3duID8KCkkgd291bGQgcmF0aGVyIHVzZSBhIGdlbmVyaWMgcGF0Y2gu
CgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9uZXRkZXZpY2UuaCBiL2luY2x1ZGUvbGludXgv
bmV0ZGV2aWNlLmgKaW5kZXggN2JkNGZjZGQwNzM4YTcxOGQ4YjBmNzEzNDUyM2NkODdlNGRjZGI3
Yi4uMzNiY2JkYjZmZWY0ODg5ODM0MzhjNjU4NGUzY2JiMGE0NGZlYmIxYSAxMDA2NDQKLS0tIGEv
aW5jbHVkZS9saW51eC9uZXRkZXZpY2UuaAorKysgYi9pbmNsdWRlL2xpbnV4L25ldGRldmljZS5o
CkBAIC0yMzExLDExICsyMzExLDE0IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCAqbmV0ZGV2X3ByaXYo
Y29uc3Qgc3RydWN0IG5ldF9kZXZpY2UgKmRldikKICAqLwogI2RlZmluZSBTRVRfTkVUREVWX0RF
VlRZUEUobmV0LCBkZXZ0eXBlKSAgICAgICAoKG5ldCktPmRldi50eXBlID0gKGRldnR5cGUpKQog
Ci0vKiBEZWZhdWx0IE5BUEkgcG9sbCgpIHdlaWdodAotICogRGV2aWNlIGRyaXZlcnMgYXJlIHN0
cm9uZ2x5IGFkdmlzZWQgdG8gbm90IHVzZSBiaWdnZXIgdmFsdWUKLSAqLworLyogRGVmYXVsdCBO
QVBJIHBvbGwoKSB3ZWlnaHQuIEhpZ2hseSByZWNvbW1lbmRlZC4gKi8KICNkZWZpbmUgTkFQSV9Q
T0xMX1dFSUdIVCA2NAogCisvKiBEZXZpY2UgZHJpdmVycyBhcmUgc3Ryb25nbHkgYWR2aXNlZCB0
byBub3QgdXNlIGJpZ2dlciB2YWx1ZSwKKyAqIGFzIHRoaXMgbWlnaHQgY2F1c2UgbGF0ZW5jaWVz
IGluIHN0cmVzcyBjb25kaXRpb25zLgorICovCisjZGVmaW5lIE5BUElfUE9MTF9XRUlHSFRfTUFY
IDI1NgorCiAvKioKICAqICAgICBuZXRpZl9uYXBpX2FkZCAtIGluaXRpYWxpemUgYSBOQVBJIGNv
bnRleHQKICAqICAgICBAZGV2OiAgbmV0d29yayBkZXZpY2UKZGlmZiAtLWdpdCBhL25ldC9jb3Jl
L2Rldi5jIGIvbmV0L2NvcmUvZGV2LmMKaW5kZXggNDA4NmQzMzU5NzhjMWJmNjJiZDM5NjViZDJl
YTk2YTRhYzA2YjEzZC4uNDk2NzEzZmI2MDc1YmQ4ZTVlMjI3MjVlN2M4MTcxNzI4NThlMWRkNyAx
MDA2NDQKLS0tIGEvbmV0L2NvcmUvZGV2LmMKKysrIGIvbmV0L2NvcmUvZGV2LmMKQEAgLTY2MDgs
NyArNjYwOCw3IEBAIHZvaWQgbmV0aWZfbmFwaV9hZGQoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwg
c3RydWN0IG5hcGlfc3RydWN0ICpuYXBpLAogICAgICAgIElOSVRfTElTVF9IRUFEKCZuYXBpLT5y
eF9saXN0KTsKICAgICAgICBuYXBpLT5yeF9jb3VudCA9IDA7CiAgICAgICAgbmFwaS0+cG9sbCA9
IHBvbGw7Ci0gICAgICAgaWYgKHdlaWdodCA+IE5BUElfUE9MTF9XRUlHSFQpCisgICAgICAgaWYg
KHdlaWdodCA+IE5BUElfUE9MTF9XRUlHSFRfTUFYKQogICAgICAgICAgICAgICAgbmV0ZGV2X2Vy
cl9vbmNlKGRldiwgIiVzKCkgY2FsbGVkIHdpdGggd2VpZ2h0ICVkXG4iLCBfX2Z1bmNfXywKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB3ZWlnaHQpOwogICAgICAgIG5hcGktPndlaWdo
dCA9IHdlaWdodDsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
