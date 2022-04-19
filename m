Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C5F506DA1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Apr 2022 15:38:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2A03612FB;
	Tue, 19 Apr 2022 13:37:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2rbsvyE_8FLs; Tue, 19 Apr 2022 13:37:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3528612F9;
	Tue, 19 Apr 2022 13:37:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F9B81BF42C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 13:37:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 76900400CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 13:37:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eCdnxm_32u27 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Apr 2022 13:37:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0982940041
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 13:37:50 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id p189so10676808wmp.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 06:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=BKJP+wMrhLiv8U5mTohtsHkHVrvr/Qn6/7wcj0YmhTU=;
 b=KdaXrlnGCGTk+uPwx5slgKSFhnCLkbBPxUSL24gpJtec6AR0NnpchiHu4In5Ly1UsB
 rXLZJ6GUAqjlmTHfVbhaxGzJ+AeoX7RXfjpE19dQYXAfmWCL1NGsKP+9gGeeggoOeocu
 uxLTgHkscj2XdEc3tYKTux1IJx+e3FYvcy0A2oZaL9Vh0WHEd1hp7ed0hxiDrXL3zopH
 SnUnzCXBB9R39gE/VoxX7/G4JHPFA5B6AlHuzOWvG3vTHwBYFAakkcNvfTEKvef+hpby
 hW7L7spMZ+OUvwD/21tsN3aGHitmM87X/weekFDpGcZ9efcpvJYsJvgLJOdweorDjtps
 m79w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=BKJP+wMrhLiv8U5mTohtsHkHVrvr/Qn6/7wcj0YmhTU=;
 b=bp2/DaackY5dfTyX5vgKoxoXvFhDcjuaki9nAnkG6yojyD34mp7y+r4cF2PnLrNtND
 k3bOz1/5Bm9XfwNegavHbuBWbRAit/K94ytha1amgQW899Ch1Cd+/gy8ekFhh1b+tuTe
 IHg9SzFs8IIIG3xF539xtBmFydFr727Np4AIZCqkUknA6SzP3QQLD/IHpSkF73FF5M81
 eqgW9Q/rIUZZrg3OJJCnBEmEL++nZ7C3VN68W/O0pwgecyCDM591FRCUxM45+dNdNeGf
 b7ayM5Tl//akP2oh9mOwdi8eOqD46tPnDmEVhINGJbmrNpy6W0O7J0dMUkFR8MYATMDE
 BvYg==
X-Gm-Message-State: AOAM530SLw87FV0s0KmbmoK7rF13eiEpgRe5T7sl0RaBIB6ijazMfT+i
 vS4tmnl3U8K4QFWpZNVt9SE=
X-Google-Smtp-Source: ABdhPJxDwv1X+/hRo9xop6SusTrN9bqC+b3UgjZEDmS4PvBBI8m7xydBHlVoZ0adElhpenF0fFUI4A==
X-Received: by 2002:a1c:f719:0:b0:381:ba:5247 with SMTP id
 v25-20020a1cf719000000b0038100ba5247mr16059496wmh.183.1650375469098; 
 Tue, 19 Apr 2022 06:37:49 -0700 (PDT)
Received: from [192.168.1.5] ([102.41.109.205])
 by smtp.gmail.com with ESMTPSA id
 c12-20020a05600c0a4c00b00381141f4967sm17985490wmq.35.2022.04.19.06.37.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Apr 2022 06:37:48 -0700 (PDT)
Message-ID: <21796697-e4e1-bf51-76fc-bdb0e28d6b60@gmail.com>
Date: Tue, 19 Apr 2022 15:37:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ira Weiny <ira.weiny@intel.com>
References: <20220416111457.5868-1-eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204161331080.3501@hadrien>
 <df4c0f81-454d-ab96-1d74-1c4fbc3dbd63@gmail.com>
 <Yl3j/bOvoX13WGSW@iweiny-desk3>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <Yl3j/bOvoX13WGSW@iweiny-desk3>
Subject: Re: [Intel-wired-lan] [PATCH v3] intel: igb: igb_ethtool.c: Convert
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
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@inria.fr>,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uINmh2anigI8v2aTigI8v2aLZoNmi2aIg2aDZoDrZodmpLCBJcmEgV2Vpbnkgd3JvdGU6Cj4g
T24gU2F0LCBBcHIgMTYsIDIwMjIgYXQgMDM6MTQ6NTdQTSArMDIwMCwgQWxhYSBNb2hhbWVkIHdy
b3RlOgo+PiAgICAgT24g2aHZpuKAjy/ZpOKAjy/Zotmg2aLZoiDZodmjOtmj2aEsIEp1bGlhIExh
d2FsbCB3cm90ZToKPj4KPj4KPj4gICBPbiBTYXQsIDE2IEFwciAyMDIyLCBBbGFhIE1vaGFtZWQg
d3JvdGU6Cj4+Cj4+Cj4+ICAgQ29udmVydCBrbWFwKCkgdG8ga21hcF9sb2NhbF9wYWdlKCkKPj4K
Pj4gICBXaXRoIGttYXBfbG9jYWxfcGFnZSgpLCB0aGUgbWFwcGluZyBpcyBwZXIgdGhyZWFkLCBD
UFUgbG9jYWwgYW5kIG5vdAo+PiAgIGdsb2JhbGx5IHZpc2libGUuCj4+Cj4+ICAgSXQncyBub3Qg
Y2xlYXJlci4KPj4KPj4gICAgIEkgbWVhbiB0aGlzICIgZml4IGt1bm1hcF9sb2NhbCBwYXRoIHZh
bHVlIHRvIHRha2UgYWRkcmVzcyBvZiB0aGUgbWFwcGVkCj4+ICAgICBwYWdlIiBiZSBtb3JlIGNs
ZWFyZXIKPj4KPj4gICBUaGlzIGlzIGEgZ2VuZXJhbCBzdGF0ZW1lbnQgYWJvdXQgdGhlIGZ1bmN0
aW9uLiAgWW91Cj4+ICAgbmVlZCB0byBleHBsYWluIHdoeSBpdCBpcyBhcHByb3ByaWF0ZSB0byB1
c2UgaXQgaGVyZS4gIFVubGVzcyBpdCBpcyB0aGUKPj4gICBjYXNlIHRoYXQgYWxsIGNhbGxzIHRv
IGttYXAgc2hvdWxkIGJlIGNvbnZlcnRlZCB0byBjYWxsIGttYXBfbG9jYWxfcGFnZS4KPj4KPj4g
ICAgIEl0J3MgcmVxdWlyZWQgdG8gY29udmVydCBhbGwgY2FsbHMga21hcCB0byBrbWFwX2xvY2Fs
X3BhZ2UuIFNvLCBJIGRvbid0Cj4+ICAgICB3aGF0IHNob3VsZCB0aGUgY29tbWl0IG1lc3NhZ2Ug
YmU/Cj4+Cj4+ICAgICBJcyB0aGlzIHdpbGwgYmUgZ29vZCA6Cj4+Cj4+ICAgICAia21hcF9sb2Nh
bF9wYWdlKCkgd2FzIHJlY2VudGx5IGRldmVsb3BlZCBhcyBhIHJlcGxhY2VtZW50IGZvciBrbWFw
KCkuCj4+ICAgICBUaGUKPj4gICAgIGttYXBfbG9jYWxfcGFnZSgpIGNyZWF0ZXMgYSBtYXBwaW5n
IHdoaWNoIGlzIHJlc3RyaWN0ZWQgdG8gbG9jYWwgdXNlIGJ5IGEKPj4gICAgIHNpbmdsZSB0aHJl
YWQgb2YgZXhlY3V0aW9uLiAiCj4+Cj4gSSB0aGluayBJIGFtIG1pc3Npbmcgc29tZSB0aHJlYWQg
Y29udGV4dCBoZXJlLiAgSSdtIG5vdCBzdXJlIHdobyBzYWlkIHdoYXQKPiBhYm92ZS4gIFNvIEkn
bSBnb2luZyB0byBzdGFydCBvdmVyLgo+Cj4gQWxhYSwKPgo+IEl0IGlzIGltcG9ydGFudCB0byBy
ZW1lbWJlciB0aGF0IGEgZ29vZCBjb21taXQgbWVzc2FnZSBzYXlzIDIgdGhpbmdzLgo+Cj4gCTEp
IFdoYXQgaXMgdGhlIHByb2JsZW0geW91IGFyZSB0cnlpbmcgdG8gc29sdmUKPiAJMikgT3ZlcnZp
ZXcgb2YgdGhlIHNvbHV0aW9uCj4KPiBGaXJzdCBvZmYgSSB1bmRlcnN0YW5kIHlvdXIgZnJ1c3Ry
YXRpb24uICBJbiBteSBvcGluaW9uIGZpeGVzIGFuZCBjbGVhbiB1cHMKPiBsaWtlIHRoaXMgYXJl
IHZlcnkgaGFyZCB0byB3cml0ZSBnb29kIGNvbW1pdCBtZXNzYWdlcyBmb3IgYmVjYXVzZSBzbyBv
ZnRlbiB0aGUKPiBjb2RlIGRpZmYgc2VlbXMgc28gc2VsZiBleHBsYW5hdG9yeS4gIEhvd2V2ZXIs
IGVhY2ggY29kZSBjaGFuZ2UgY29tZXMgYXQgdGhlCj4gaWRlbnRpZmljYXRpb24gb2YgYSBwcm9i
bGVtLiAgQW5kIHJlbWVtYmVyIHRoYXQgJ3Byb2JsZW0nIGRvZXMgbm90IGFsd2F5cyBtZWFuCj4g
YSBidWcgZml4Lgo+Cj4gVGhlIGRlcHJlY2F0aW9uIG9mIGttYXAoKSBtYXkgbm90IHNlZW0gbGlr
ZSBhIHByb2JsZW0uICBJIG1lYW4gd2h5IGNhbid0IHdlCj4ganVzdCBsZWF2ZSBrbWFwKCkgYXMg
aXQgaXM/ICBJdCB3b3JrcyByaWdodD8KPgo+IEJ1dCB0aGUgcHJvYmxlbSBpcyB0aGF0IHRoZSBr
bWFwIChoaWdobWVtKSBpbnRlcmZhY2UgaGFzIGJlY29tZSBzdGFsZSBhbmQgaXRzCj4gb3JpZ2lu
YWwgcHVycG9zZSB3YXMgdGFyZ2V0ZWQgdG93YXJkIGxhcmdlIG1lbW9yeSBzeXN0ZW1zIHdpdGgg
MzIgYml0IGtlcm5lbHMuCj4gVGhlcmUgYXJlIHZlcnkgZmV3IHN5c3RlbXMgYmVpbmcgcnVuIGxp
a2UgdGhhdCBhbnkgbG9uZ2VyLgo+Cj4gU28gaG93IGRvIHdlIGNsZWFuIHVwIHRoZSBrbWFwIGlu
dGVyZmFjZSB0byBiZSBtb3JlIHVzZWZ1bCB0byB0aGUga2VybmVsCj4gY29tbXVuaXR5IG5vdyB0
aGF0IDMyIGJpdCBrZXJuZWxzIHdpdGggaGlnaG1lbSBhcmUgc28gcmFyZT8KPgo+IFRoZSBjb21t
dW5pdHkgaGFzIGlkZW50aWZpZWQgdGhhdCBhIGZpcnN0IHN0ZXAgb2YgdGhhdCBpcyB0byBtb3Zl
IGF3YXkgZnJvbSBhbmQKPiBldmVudHVhbGx5IHJlbW92ZSB0aGUga21hcCgpIGNhbGwuICBUaGlz
IGlzIGR1ZSB0byB0aGUgY2FsbCBiZWluZyBpbmNvcnJlY3RseQo+IHVzZWQgdG8gY3JlYXRlIGxv
bmcgdGVybSBtYXBwaW5ncy4gIE1vc3QgY2FsbHMgdG8ga21hcCgpIGFyZSBub3QgdXNlZAo+IGlu
Y29ycmVjdGx5IGJ1dCB0aG9zZSBjYWxsIHNpdGVzIG5lZWRlZCBzb21ldGhpbmcgaW4gYmV0d2Vl
biBrbWFwKCkgYW5kCj4ga21hcF9hdG1vaWMoKS4gIFRoYXQgY2FsbCBpcyBrbWFwX2xvY2FsX3Bh
Z2UoKS4KPgo+IE5vdyB0aGF0IGttYXBfbG9jYWxfcGFnZSgpIGV4aXN0cyB0aGUga21hcCgpIGNh
bGxzIGNhbiBiZSBhdWRpdGVkIGFuZCBtb3N0IChJCj4gaG9wZSBtb3N0KVsxXSBjYW4gYmUgcmVw
bGFjZWQgd2l0aCBrbWFwX2xvY2FsX3BhZ2UoKS4KPgo+IFRoZSBjaGFuZ2UgeW91IGhhdmUgYmVs
b3cgaXMgY29ycmVjdC4gIEJ1dCBpdCBsYWNrcyBhIGdvb2QgY29tbWl0IG1lc3NhZ2UuICBXZQo+
IG5lZWQgdG8gY292ZXIgdGhlIDIgcG9pbnRzIGFib3ZlLgo+Cj4gCTEpIEp1bGlhIGlzIGFza2lu
ZyB3aHkgeW91IG5lZWRlZCB0byBkbyB0aGlzIGNoYW5nZS4gIFdoYXQgaXMgdGhlCj4gCSAgIHBy
b2JsZW0gb3IgcmVhc29uIGZvciB0aGlzIGNoYW5nZT8gIChJcmEgdG9sZCB5b3UgdG8gaXMgbm90
IGEgZ29vZAo+IAkgICByZWFzb24uICA7LSkKPgo+IAkgICBQUyBJbiBmYWN0IG1lIHRlbGxpbmcg
eW91IHRvIG1heSBhY3R1YWxseSBiZSBhIHZlcnkgYmFkIHJlYXNvbi4uLgo+IAkgICBqL2sgOy0p
Cj4KPiAJMikgV2h5IGlzIHRoaXMgc29sdXRpb24gb2sgYXMgcGFydCBvZiB0aGUgZGVwcmVjYXRp
b24gYW5kIHJlbW92YWwgb2YKPiAJICAga21hcCgpPwo+Cj4gQSBmaW5hbCBub3RlOyB0aGUgMiBh
Ym92ZSBwb2ludHMgZG9uJ3QgbmVlZCBhIGxvdCBvZiB0ZXh0LiAgSGVyZSBJIHVzZWQKPiAyIHNp
bXBsZSBzZW50ZW5jZXMuCj4KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjIwMTI0
MDE1NDA5LjgwNzU4Ny0yLWlyYS53ZWlueUBpbnRlbC5jb20vCj4KPiBJIGhvcGUgdGhpcyBoZWxw
cywKPiBJcmEKPgo+IFsxXSBCdXQgbm90IGFsbC4uLiAgc29tZSB1c2VzIG9mIGttYXAoKSBoYXZl
IGJlZW4gaWRlbnRpZmllZCBhcyBiZWluZyBwcmV0dHkKPiBjb21wbGV4LgoKClRoYW5rcyBhIGxv
dCBmb3IgZGV0YWlsZWQgZXhwbGFpbmluZyAsIHllcyB5b3UgaGVscCBtZSBhIGxvdC4KCgpUaGFu
a3MgYWdhaW4sCgpBbGFhCgo+PiAgIGp1bGlhCj4+Cj4+Cj4+ICAgU2lnbmVkLW9mZi1ieTogQWxh
YSBNb2hhbWVkIDxlbmcuYWxhYW1vaGFtZWRzb2xpbWFuLmFtQGdtYWlsLmNvbT4KPj4gICAtLS0K
Pj4gICBjaGFuZ2VzIGluIFYyOgo+PiAgICAgICAgICAgZml4IGt1bm1hcF9sb2NhbCBwYXRoIHZh
bHVlIHRvIHRha2UgYWRkcmVzcyBvZiB0aGUgbWFwcGVkIHBhZ2UuCj4+ICAgLS0tCj4+ICAgY2hh
bmdlcyBpbiBWMzoKPj4gICAgICAgICAgIGVkaXQgY29tbWl0IG1lc3NhZ2UgdG8gYmUgY2xlYXJl
cgo+PiAgIC0tLQo+PiAgICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX2V0aHRv
b2wuYyB8IDQgKystLQo+PiAgICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+Pgo+PiAgIGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2IvaWdiX2V0aHRvb2wuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2Jf
ZXRodG9vbC5jCj4+ICAgaW5kZXggMmE1NzgyMDYzZjRjLi5jMTRmYzg3MWRkNDEgMTAwNjQ0Cj4+
ICAgLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMKPj4g
ICArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX2V0aHRvb2wuYwo+PiAg
IEBAIC0xNzk4LDE0ICsxNzk4LDE0IEBAIHN0YXRpYyBpbnQgaWdiX2NoZWNrX2xidGVzdF9mcmFt
ZShzdHJ1Y3QgaWdiX3J4X2J1ZmZlciAqcnhfYnVmZmVyLAo+Pgo+PiAgICAgICAgICAgZnJhbWVf
c2l6ZSA+Pj0gMTsKPj4KPj4gICAtICAgICAgIGRhdGEgPSBrbWFwKHJ4X2J1ZmZlci0+cGFnZSk7
Cj4+ICAgKyAgICAgICBkYXRhID0ga21hcF9sb2NhbF9wYWdlKHJ4X2J1ZmZlci0+cGFnZSk7Cj4+
Cj4+ICAgICAgICAgICBpZiAoZGF0YVszXSAhPSAweEZGIHx8Cj4+ICAgICAgICAgICAgICAgZGF0
YVtmcmFtZV9zaXplICsgMTBdICE9IDB4QkUgfHwKPj4gICAgICAgICAgICAgICBkYXRhW2ZyYW1l
X3NpemUgKyAxMl0gIT0gMHhBRikKPj4gICAgICAgICAgICAgICAgICAgbWF0Y2ggPSBmYWxzZTsK
Pj4KPj4gICAtICAgICAgIGt1bm1hcChyeF9idWZmZXItPnBhZ2UpOwo+PiAgICsgICAgICAga3Vu
bWFwX2xvY2FsKGRhdGEpOwo+Pgo+PiAgICAgICAgICAgcmV0dXJuIG1hdGNoOwo+PiAgICB9Cj4+
ICAgLS0KPj4gICAyLjM1LjIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
