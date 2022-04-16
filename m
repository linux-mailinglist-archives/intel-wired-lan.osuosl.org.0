Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE495057D9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 15:55:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E900A4167E;
	Mon, 18 Apr 2022 13:55:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iKHdZxWwKWde; Mon, 18 Apr 2022 13:55:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D07E24177C;
	Mon, 18 Apr 2022 13:55:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4E3B1BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 01:33:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9EBBE841E5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 01:33:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mxtgtcJBYcHn for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Apr 2022 01:33:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ECCA5841B8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 01:33:41 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id i20so12309230wrb.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 18:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=K661SeVjfjm40/ajBVyDtl5qfOYlfB+1y0XGeMywF+w=;
 b=XpLM2Q/7Ny4osrW3Ec9ro1rQR9RBXNcdhRPgPczdiPb9ze20vSUvjSzhPUKlMX+2Dc
 rDBjB+dfEU4qJv+2FJ/uoo8JkpvF3oHd+cWRq6AKY07HKcy8CPBfezLm3ilNKrIeg+k2
 2Vjv5PUwWu6SK9jouPsQ2sZZvXDo7V6loHSjz20aialUkIg6U7x9VqfjFDv6oyBrLNTB
 nW+nMeQYp2kOs8ejApvuGGsY/S61Uon7NyT+ZgFOm16vRlJu2OQhFzJ9C8d4RfLBm3/f
 1TZuNYvRyapTmNk8MIKehKZfpq+eyGJo5hyZlmPFqNeekF68PKaLATovp3Xnf0d7GtTS
 JIlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=K661SeVjfjm40/ajBVyDtl5qfOYlfB+1y0XGeMywF+w=;
 b=pb5uD1x14o5joONqQMboDXrFqfCKy86SfFBQHzbXphrYi3feT0PMIZWpIgXllTvNwv
 BwrKPCRSmQYpbQILL2F5Dnt3sjVgVmZ60Ke9ShXLHkS715jYLsg8YvNR9kD4GMluocBi
 am9YA39tNETdjmvlll1azUeXRWerCa50yw/jCI+N3ZG+E1iC7tZUlP9+AQd5lzd/9dbi
 IE2MxrfalZC4FAC0W4LhDFVMUC+8UDZS8IE8mBbzV/lOzohcYFEY/7FDlsgw4mcW5ZYv
 MR/+1beG71WcBcSLFlDYyU2u3Y816qaMts7ywgysJXw86GFMnBfljh0kJRHt6AQyBqzS
 gKug==
X-Gm-Message-State: AOAM532kflNthtJEWqmGvg0LKEXuoo8pkMB4hmJkWbyDDwSUO+oOQprs
 ASVrK3/x4sTg6wqfjCO4UwgiV74FIhWYWQ==
X-Google-Smtp-Source: ABdhPJxQhWdthcWPzvheVHKDxtEk6HLcxJeWC+KCsnMjRmtwRzwG3ztGQm/3vZdtZkwLCRVpugpBfA==
X-Received: by 2002:a05:6000:14d:b0:207:a75a:ae0c with SMTP id
 r13-20020a056000014d00b00207a75aae0cmr990788wrx.398.1650072820100; 
 Fri, 15 Apr 2022 18:33:40 -0700 (PDT)
Received: from [192.168.1.14] ([197.57.90.163])
 by smtp.gmail.com with ESMTPSA id
 bs12-20020a056000070c00b00207a2c698b1sm4708190wrb.40.2022.04.15.18.33.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 Apr 2022 18:33:39 -0700 (PDT)
Message-ID: <78253f3a-cdca-166a-ee54-e2173b2be5a7@gmail.com>
Date: Sat, 16 Apr 2022 03:33:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ira Weiny <ira.weiny@intel.com>
References: <20220415205307.675650-1-eng.alaamohamedsoliman.am@gmail.com>
 <Ylnmaji5bHHp8t3p@iweiny-desk3>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <Ylnmaji5bHHp8t3p@iweiny-desk3>
X-Mailman-Approved-At: Mon, 18 Apr 2022 13:54:51 +0000
Subject: Re: [Intel-wired-lan] [PATCH] intel: igb: igb_ethtool.c: Convert
 kmap() to kmap_local_page()
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
Cc: outreachy@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uINmh2aXigI8v2aTigI8v2aLZoNmi2aIg2aLZozrZpNmgLCBJcmEgV2Vpbnkgd3JvdGU6Cj4g
T24gRnJpLCBBcHIgMTUsIDIwMjIgYXQgMTA6NTM6MDdQTSArMDIwMCwgQWxhYSBNb2hhbWVkIHdy
b3RlOgo+PiBUaGUgdXNlIG9mIGttYXAoKSBpcyBiZWluZyBkZXByZWNhdGVkIGluIGZhdm9yIG9m
IGttYXBfbG9jYWxfcGFnZSgpCj4+IHdoZXJlIGl0IGlzIGZlYXNpYmxlLgo+Pgo+PiBXaXRoIGtt
YXBfbG9jYWxfcGFnZSgpLCB0aGUgbWFwcGluZyBpcyBwZXIgdGhyZWFkLCBDUFUgbG9jYWwgYW5k
IG5vdAo+PiBnbG9iYWxseSB2aXNpYmxlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbGFhIE1vaGFt
ZWQgPGVuZy5hbGFhbW9oYW1lZHNvbGltYW4uYW1AZ21haWwuY29tPgo+PiAtLS0KPj4gICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX2V0aHRvb2wuYyB8IDQgKystLQo+PiAgIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX2V0aHRvb2wuYyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfZXRodG9vbC5jCj4+IGluZGV4IDJhNTc4
MjA2M2Y0Yy4uYmE5M2FhNGFlNmEwIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiX2V0aHRvb2wuYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2IvaWdiX2V0aHRvb2wuYwo+PiBAQCAtMTc5OCwxNCArMTc5OCwxNCBAQCBzdGF0aWMg
aW50IGlnYl9jaGVja19sYnRlc3RfZnJhbWUoc3RydWN0IGlnYl9yeF9idWZmZXIgKnJ4X2J1ZmZl
ciwKPj4gICAKPj4gICAJZnJhbWVfc2l6ZSA+Pj0gMTsKPj4gICAKPj4gLQlkYXRhID0ga21hcChy
eF9idWZmZXItPnBhZ2UpOwo+PiArCWRhdGEgPSBrbWFwX2xvY2FsX3BhZ2UocnhfYnVmZmVyLT5w
YWdlKTsKPj4gICAKPj4gICAJaWYgKGRhdGFbM10gIT0gMHhGRiB8fAo+PiAgIAkgICAgZGF0YVtm
cmFtZV9zaXplICsgMTBdICE9IDB4QkUgfHwKPj4gICAJICAgIGRhdGFbZnJhbWVfc2l6ZSArIDEy
XSAhPSAweEFGKQo+PiAgIAkJbWF0Y2ggPSBmYWxzZTsKPj4gICAKPj4gLQlrdW5tYXAocnhfYnVm
ZmVyLT5wYWdlKTsKPj4gKwlrdW5tYXBfbG9jYWwocnhfYnVmZmVyLT5wYWdlKTsKPiBrdW5tYXBf
bG9jYWwoKSBpcyBkaWZmZXJlbnQgZnJvbSBrdW5tYXAoKS4gIEl0IHRha2VzIGFuIGFkZHJlc3Mg
d2l0aGluIHRoZQo+IG1hcHBlZCBwYWdlLiAgRnJvbSB0aGUga2RvYzoKPgo+IC8qKgo+ICAgKiBr
dW5tYXBfbG9jYWwgLSBVbm1hcCBhIHBhZ2UgbWFwcGVkIHZpYSBrbWFwX2xvY2FsX3BhZ2UoKS4K
PiAgICogQF9fYWRkcjogQW4gYWRkcmVzcyB3aXRoaW4gdGhlIHBhZ2UgbWFwcGVkCj4gICAqCj4g
ICAqIEBfX2FkZHIgY2FuIGJlIGFueSBhZGRyZXNzIHdpdGhpbiB0aGUgbWFwcGVkIHBhZ2UuICBD
b21tb25seSBpdCBpcyB0aGUKPiAgICogYWRkcmVzcyByZXR1cm4gZnJvbSBrbWFwX2xvY2FsX3Bh
Z2UoKSwgYnV0IGl0IGNhbiBhbHNvIGluY2x1ZGUgb2Zmc2V0cy4KPiAgICoKPiAgICogVW5tYXBw
aW5nIHNob3VsZCBiZSBkb25lIGluIHRoZSByZXZlcnNlIG9yZGVyIG9mIHRoZSBtYXBwaW5nLiAg
U2VlCj4gICAqIGttYXBfbG9jYWxfcGFnZSgpIGZvciBkZXRhaWxzLgo+ICAgKi8KPiAjZGVmaW5l
IGt1bm1hcF9sb2NhbChfX2FkZHIpICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
XAo+IC4uLgpHb3QgaXQgLCBUaGFua3MKPgo+Cj4gSXJhCj4KPj4gICAKPj4gICAJcmV0dXJuIG1h
dGNoOwo+PiAgIH0KPj4gLS0gCj4+IDIuMzUuMgo+PgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
