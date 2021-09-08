Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7414032B0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Sep 2021 04:37:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E33E740547;
	Wed,  8 Sep 2021 02:37:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SZzpdU9PkGDb; Wed,  8 Sep 2021 02:37:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF99E404FE;
	Wed,  8 Sep 2021 02:37:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D89B91BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 02:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE91D829A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 02:37:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6NQ3OHDD6Nus for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Sep 2021 02:37:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A85188299E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Sep 2021 02:37:35 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id q39so1153143oiw.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 07 Sep 2021 19:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NsguYS5uzhUdOW9e+Rb/jXTsKu2P16e41K7Xn3TVElc=;
 b=RD9A11fS82i4pPHhfJ4rPe+2GBzVeARMaTw/0Z5DdqMYOzLXac3rETP/HSOkOtpPPD
 FCF8S3gcdLcGh1DcypolHAXjV9g4BlS3NeWLrnMOUUpOW0qxs7INp+i4ycfpLg8xZGaJ
 eP8/PyPANSB+P024rB2xBjFmOEhDhQet7yvLkSuDgtCBuK53W1z8I25zeodFTYbOkTN9
 x1SF9Y+GmZnbk+gnc91dIoKbCRcJQDjAwO4gyepYvJ9tY0e4uJHv4T7xWSo1KWPWkbpQ
 Gw/hm9NyKI+1NGPOSM/VHkGn2ElpzGrbigGObgGc0SioIJ60pXdmD9QdDX930G8XpXjl
 lIvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NsguYS5uzhUdOW9e+Rb/jXTsKu2P16e41K7Xn3TVElc=;
 b=DkC3BAMMbPoqOK8+P/ymWFbwXLXcFH+Jvn/jCJVRE/WRAEChOkfcWV9nVZOT7yoaFW
 yh6Mp2NCMUKkgWgpJLW+/uZiQeV0xpD0mbhCoN45puQ9Yi+CZsPSMUTnFk6z0yVYRzHE
 Eb2I7s+3y0fJ10GoqfdTS75oTfMGSrC6X6B2trngcYBYI74WMfIiDkJR64Tmby0BZW0W
 zXMDg86hHH+61JDHb0g8iDRW3EwQm9+FvY59fnCNv8JE4oVguN42avupqqVegFheFxJf
 jkYTrjZ2s8vkO448XNV5pLT1UpUY09JA644lbr5Y2e+VvGoUcic+GgbHgmfwzYzhpYlK
 Xp7A==
X-Gm-Message-State: AOAM532Ght5Z4FjAwRtfZwoENyuvGyF6Elode7Z5+4lnSvPOF8v4955+
 CfqS+pSriAiwgE3Ah/51lbIX4Q3lCNUSmOaz8A8=
X-Google-Smtp-Source: ABdhPJx9aRvD4JgKPvHZBe4rjkEZuRHyEwlKic8GY7NVRY4Hdyl8qIZI9FPwsxYNTI8wiUVaXlKnJEHrY90e9HjYs0g=
X-Received: by 2002:a05:6808:319:: with SMTP id
 i25mr789546oie.141.1631068654661; 
 Tue, 07 Sep 2021 19:37:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210903064013.9842-1-zhoufeng.zf@bytedance.com>
 <2ee172ab-836c-d464-be59-935030d01f4b@molgen.mpg.de>
 <8ce8de1c-14bf-20ad-00c0-9e0d8ff34b91@bytedance.com>
 <318e7f75-287e-148a-cdb0-648b7c36e0a9@redhat.com>
In-Reply-To: <318e7f75-287e-148a-cdb0-648b7c36e0a9@redhat.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 8 Sep 2021 10:36:58 +0800
Message-ID: <CAL+tcoANwm41McdufaB0UggcUN3cXsPL6Vta99BPodYKwLyBGw@mail.gmail.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
Subject: Re: [Intel-wired-lan] [External] Re: [PATCH v2] ixgbe: Fix NULL
 pointer dereference in ixgbe_xdp_setup
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
Cc: ast@kernel.org, zhengqi.arch@bytedance.com, chenying.kernel@bytedance.com,
 wangdongdong.6@bytedance.com, duanxiongchun@bytedance.com,
 daniel@iogearbox.net, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, brouer@redhat.com, kuba@kernel.org,
 Paul Menzel <pmenzel@molgen.mpg.de>, hawk@kernel.org, songmuchun@bytedance.com,
 magnus.karlsson@intel.com, Jason Xing <xingwanli@kuaishou.com>,
 netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Feng Zhou <zhoufeng.zf@bytedance.com>, bpf@vger.kernel.org,
 David Miller <davem@davemloft.net>, zhouchengming@bytedance.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBTZXAgNiwgMjAyMSBhdCA3OjMyIFBNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPGpi
cm91ZXJAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBIaSBGZW5nIGFuZCBKYXNvbiwKPgo+IFBsZWFz
ZSBub3RpY2UgdGhhdCB5b3UgYXJlIGJvdGggZGV2ZWxvcGluZyBwYXRjaGVzIHRoYXQgY2hhbmdl
IHRoZSBpeGdiZQo+IGRyaXZlciBpbiByZWxhdGVkIGFyZWFzLgoKVGhhbmtzIGZvciBub3RpY2lu
Zy4gV2UncmUgZG9pbmcgZGlmZmVyZW50IHRoaW5ncyBhcyB0aGV5IGFyZSBib3RoCnJlbGF0ZWQg
dG8gWERQIG9uIGl4Z2JlIGFjdHVhbGx5LgoKSmFzb24KCj4KPiBKYXNvbidzIHBhdGNoOgo+ICAg
U3ViamVjdDogW1BBVENIIHY3XSBpeGdiZTogbGV0IHRoZSB4ZHBkcnYgd29yayB3aXRoIG1vcmUg
dGhhbiA2NCBjcHVzCj4KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMTA5MDExMDEy
MDYuNTAyNzQtMS1rZXJuZWxqYXNvbnhpbmdAZ21haWwuY29tLwo+Cj4gV2UgbWlnaHQgbmVlZCBi
b3RoIGFzIHRoaXMgcGF0Y2ggbG9va3MgbGlrZSBhIGZpeCB0byBhIHBhbmljLCBhbmQKPiBKYXNv
bidzIHBhdGNoIGFsbG93cyBYRFAgb24gaXhnYmUgdG8gd29yayBvbiBtYWNoaW5lcyB3aXRoIG1v
cmUgdGhhbiA2NAo+IENQVXMuCj4KPiAtSmVzcGVyCj4KPiBPbiAwNi8wOS8yMDIxIDA5LjQ5LCBG
ZW5nIFpob3Ugd3JvdGU6Cj4gPgo+ID4g5ZyoIDIwMjEvOS82IOS4i+WNiDI6MzcsIFBhdWwgTWVu
emVsIOWGmemBkzoKPiA+PiBEZWFyIEZlbmcsCj4gPj4KPiA+Pgo+ID4+IEFtIDAzLjA5LjIxIHVt
IDA4OjQwIHNjaHJpZWIgRmVuZyB6aG91Ogo+ID4+Cj4gPj4gKElmIHlvdSBjYXJlLCBpbiB5b3Vy
IGVtYWlsIGNsaWVudCwgeW91ciBsYXN0IG5hbWUgZG9lcyBub3Qgc3RhcnQgd2l0aAo+ID4+IGEg
Y2FwaXRhbCBsZXR0ZXIuKQo+ID4+Cj4gPj4+IEZyb206IEZlbmcgWmhvdSA8emhvdWZlbmcuemZA
Ynl0ZWRhbmNlLmNvbT4KPiA+Pj4KPiA+Pj4gVGhlIGl4Z2JlIGRyaXZlciBjdXJyZW50bHkgZ2Vu
ZXJhdGVzIGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIHdpdGgKPiA+Pj4gc29tZSBtYWNoaW5l
IChvbmxpbmUgY3B1cyA8IDYzKS4gVGhpcyBpcyBkdWUgdG8gdGhlIGZhY3QgdGhhdCB0aGUKPiA+
Pj4gbWF4aW11bSB2YWx1ZSBvZiBudW1feGRwX3F1ZXVlcyBpcyBucl9jcHVfaWRzLiBDb2RlIGlz
IGluCj4gPj4+ICJpeGdiZV9zZXRfcnNzX3F1ZXVlcyIiLgo+ID4+Pgo+ID4+PiBIZXJlJ3MgaG93
IHRoZSBwcm9ibGVtIHJlcGVhdHMgaXRzZWxmOgo+ID4+PiBTb21lIG1hY2hpbmUgKG9ubGluZSBj
cHVzIDwgNjMpLCBBbmQgdXNlciBzZXQgbnVtX3F1ZXVlcyB0byA2MyB0aHJvdWdoCj4gPj4+IGV0
aHRvb2wuIENvZGUgaXMgaW4gdGhlICJpeGdiZV9zZXRfY2hhbm5lbHMiLAo+ID4+PiBhZGFwdGVy
LT5yaW5nX2ZlYXR1cmVbUklOR19GX0ZESVJdLmxpbWl0ID0gY291bnQ7Cj4gPj4KPiA+PiBGb3Ig
YmV0dGVyIGxlZ2liaWxpdHksIHlvdSBtaWdodCB3YW50IHRvIGluZGVudCBjb2RlIChibG9ja3Mp
IGJ5IGZvdXIKPiA+PiBzcGFjZXMgYW5kIGFkZCBibGFuayBsaW5lcyBhcm91bmQgaXQgKGFsc28g
YmVsb3cpLgo+ID4+Cj4gPj4+IEl0IGJlY2FtZXMgNjMuCj4gPj4KPiA+PiBiZWNvbWVzCj4gPj4K
PiA+Pj4gV2hlbiB1c2VyIHVzZSB4ZHAsICJpeGdiZV9zZXRfcnNzX3F1ZXVlcyIgd2lsbCBzZXQg
cXVldWVzIG51bS4KPiA+Pj4gYWRhcHRlci0+bnVtX3J4X3F1ZXVlcyA9IHJzc19pOwo+ID4+PiBh
ZGFwdGVyLT5udW1fdHhfcXVldWVzID0gcnNzX2k7Cj4gPj4+IGFkYXB0ZXItPm51bV94ZHBfcXVl
dWVzID0gaXhnYmVfeGRwX3F1ZXVlcyhhZGFwdGVyKTsKPiA+Pj4gQW5kIHJzc19pJ3MgdmFsdWUg
aXMgZnJvbQo+ID4+PiBmID0gJmFkYXB0ZXItPnJpbmdfZmVhdHVyZVtSSU5HX0ZfRkRJUl07Cj4g
Pj4+IHJzc19pID0gZi0+aW5kaWNlcyA9IGYtPmxpbWl0Owo+ID4+PiBTbyAibnVtX3J4X3F1ZXVl
cyIgPiAibnVtX3hkcF9xdWV1ZXMiLCB3aGVuIHJ1biB0byAiaXhnYmVfeGRwX3NldHVwIiwKPiA+
Pj4gZm9yIChpID0gMDsgaSA8IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXM7IGkrKykKPiA+Pj4gICAg
IGlmIChhZGFwdGVyLT54ZHBfcmluZ1tpXS0+eHNrX3VtZW0pCj4gPj4+IGxlYWQgdG8gcGFuaWMu
Cj4gPj4KPiA+PiBsZWFkKnMqPwo+ID4+Cj4gPj4+IENhbGwgdHJhY2U6Cj4gPj4+IFtleGNlcHRp
b24gUklQOiBpeGdiZV94ZHArMzY4XQo+ID4+PiBSSVA6IGZmZmZmZmZmYzAyYTc2YTAgIFJTUDog
ZmZmZjlmZTE2MjAyZjhkMCAgUkZMQUdTOiAwMDAxMDI5Nwo+ID4+PiBSQVg6IDAwMDAwMDAwMDAw
MDAwMDAgIFJCWDogMDAwMDAwMDAwMDAwMDAyMCAgUkNYOiAwMDAwMDAwMDAwMDAwMDAwCj4gPj4+
IFJEWDogMDAwMDAwMDAwMDAwMDAwMCAgUlNJOiAwMDAwMDAwMDAwMDAwMDFjICBSREk6IGZmZmZm
ZmZmYTk0ZWFkOTAKPiA+Pj4gUkJQOiBmZmZmOTJmOGYyNGMwYzE4ICAgUjg6IDAwMDAwMDAwMDAw
MDAwMDAgICBSOTogMDAwMDAwMDAwMDAwMDAwMAo+ID4+PiBSMTA6IGZmZmY5ZmUxNjIwMmY4MzAg
IFIxMTogMDAwMDAwMDAwMDAwMDAwMCAgUjEyOiBmZmZmOTJmOGYyNGMwMDAwCj4gPj4+IFIxMzog
ZmZmZjlmZTE2MjAyZmMwMSAgUjE0OiAwMDAwMDAwMDAwMDAwMDBhICBSMTU6IGZmZmZmZmZmYzAy
YTc1MzAKPiA+Pj4gT1JJR19SQVg6IGZmZmZmZmZmZmZmZmZmZmYgIENTOiAwMDEwICBTUzogMDAx
OAo+ID4+PiAgIDcgW2ZmZmY5ZmUxNjIwMmY4ZjBdIGRldl94ZHBfaW5zdGFsbCBhdCBmZmZmZmZm
ZmE4OWZiYmNjCj4gPj4+ICAgOCBbZmZmZjlmZTE2MjAyZjkyMF0gZGV2X2NoYW5nZV94ZHBfZmQg
YXQgZmZmZmZmZmZhOGEwODgwOAo+ID4+PiAgIDkgW2ZmZmY5ZmUxNjIwMmY5NjBdIGRvX3NldGxp
bmsgYXQgZmZmZmZmZmZhOGEyMDIzNQo+ID4+PiAxMCBbZmZmZjlmZTE2MjAyZmE4OF0gcnRubF9z
ZXRsaW5rIGF0IGZmZmZmZmZmYThhMjAzODQKPiA+Pj4gMTEgW2ZmZmY5ZmUxNjIwMmZjNzhdIHJ0
bmV0bGlua19yY3ZfbXNnIGF0IGZmZmZmZmZmYThhMWE4ZGQKPiA+Pj4gMTIgW2ZmZmY5ZmUxNjIw
MmZjZjBdIG5ldGxpbmtfcmN2X3NrYiBhdCBmZmZmZmZmZmE4YTcxN2ViCj4gPj4+IDEzIFtmZmZm
OWZlMTYyMDJmZDQwXSBuZXRsaW5rX3VuaWNhc3QgYXQgZmZmZmZmZmZhOGE3MGY4OAo+ID4+PiAx
NCBbZmZmZjlmZTE2MjAyZmQ4MF0gbmV0bGlua19zZW5kbXNnIGF0IGZmZmZmZmZmYThhNzEzMTkK
PiA+Pj4gMTUgW2ZmZmY5ZmUxNjIwMmZkZjBdIHNvY2tfc2VuZG1zZyBhdCBmZmZmZmZmZmE4OWRm
MjkwCj4gPj4+IDE2IFtmZmZmOWZlMTYyMDJmZTA4XSBfX3N5c19zZW5kdG8gYXQgZmZmZmZmZmZh
ODllMTljOAo+ID4+PiAxNyBbZmZmZjlmZTE2MjAyZmYzMF0gX194NjRfc3lzX3NlbmR0byBhdCBm
ZmZmZmZmZmE4OWUxYTY0Cj4gPj4+IDE4IFtmZmZmOWZlMTYyMDJmZjM4XSBkb19zeXNjYWxsXzY0
IGF0IGZmZmZmZmZmYTg0MDQyYjkKPiA+Pj4gMTkgW2ZmZmY5ZmUxNjIwMmZmNTBdIGVudHJ5X1NZ
U0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSBhdCBmZmZmZmZmZmE4YzAwMDhjCj4gPj4KPiA+PiBQbGVh
c2UgZGVzY3JpYmUgdGhlIGZpeCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuCj4gPj4KPiA+Pj4gRml4
ZXM6IDRhOWIzMmYzMGY4MCAoIml4Z2JlOiBmaXggcG90ZW50aWFsIFJYIGJ1ZmZlciBzdGFydmF0
aW9uIGZvcgo+ID4+PiBBRl9YRFAiKQo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBGZW5nIFpob3UgPHpo
b3VmZW5nLnpmQGJ5dGVkYW5jZS5jb20+Cj4gPj4+IC0tLQo+ID4+PiBVcGRhdGVzIHNpbmNlIHYx
Ogo+ID4+PiAtIEZpeCAiaXhnYmVfbWF4X2NoYW5uZWxzIiBjYWxsYmFjayBzbyB0aGF0IGl0IHdp
bGwgbm90IGFsbG93IGEKPiA+Pj4gc2V0dGluZyBvZgo+ID4+PiBxdWV1ZXMgdG8gYmUgaGlnaGVy
IHRoYW4gdGhlIG51bV9vbmxpbmVfY3B1cygpLgo+ID4+PiBtb3JlIGRldGFpbHMgY2FuIGJlIHNl
ZW4gZnJvbSBoZXJlOgo+ID4+PiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2plY3Qv
aW50ZWwtd2lyZWQtbGFuL3BhdGNoLzIwMjEwODE3MDc1NDA3LjExOTYxLTEtemhvdWZlbmcuemZA
Ynl0ZWRhbmNlLmNvbS8KPiA+Pj4KPiA+Pj4gVGhhbmtzIHRvIE1hY2llaiBGaWphbGtvd3NraSBm
b3IgeW91ciBhZHZpY2UuCj4gPj4+Cj4gPj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aXhnYmUvaXhnYmVfZXRodG9vbC5jIHwgMiArLQo+ID4+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyAgICB8IDggKysrKysrLS0KPiA+Pj4gICAyIGZpbGVz
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+Pj4KPiA+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2V0aHRvb2wu
Ywo+ID4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2V0aHRvb2wu
Ywo+ID4+PiBpbmRleCA0Y2VhY2EwZjZjZTMuLjIxMzIxZDE2NDcwOCAxMDA2NDQKPiA+Pj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfZXRodG9vbC5jCj4gPj4+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2V0aHRvb2wuYwo+
ID4+PiBAQCAtMzIwNCw3ICszMjA0LDcgQEAgc3RhdGljIHVuc2lnbmVkIGludCBpeGdiZV9tYXhf
Y2hhbm5lbHMoc3RydWN0Cj4gPj4+IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIpCj4gPj4+ICAgICAg
ICAgICBtYXhfY29tYmluZWQgPSBpeGdiZV9tYXhfcnNzX2luZGljZXMoYWRhcHRlcik7Cj4gPj4+
ICAgICAgIH0KPiA+Pj4gICAtICAgIHJldHVybiBtYXhfY29tYmluZWQ7Cj4gPj4+ICsgICAgcmV0
dXJuIG1pbl90KGludCwgbWF4X2NvbWJpbmVkLCBudW1fb25saW5lX2NwdXMoKSk7Cj4gPj4+ICAg
fQo+ID4+PiAgICAgc3RhdGljIHZvaWQgaXhnYmVfZ2V0X2NoYW5uZWxzKHN0cnVjdCBuZXRfZGV2
aWNlICpkZXYsCj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
eGdiZS9peGdiZV9tYWluLmMKPiA+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdi
ZS9peGdiZV9tYWluLmMKPiA+Pj4gaW5kZXggMTRhZWE0MGRhNTBmLi41ZGI0OTZjYzUwNzAgMTAw
NjQ0Cj4gPj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21h
aW4uYwo+ID4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9t
YWluLmMKPiA+Pj4gQEAgLTEwMTEyLDYgKzEwMTEyLDcgQEAgc3RhdGljIGludCBpeGdiZV94ZHBf
c2V0dXAoc3RydWN0IG5ldF9kZXZpY2UKPiA+Pj4gKmRldiwgc3RydWN0IGJwZl9wcm9nICpwcm9n
KQo+ID4+PiAgICAgICBzdHJ1Y3QgaXhnYmVfYWRhcHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2
KGRldik7Cj4gPj4+ICAgICAgIHN0cnVjdCBicGZfcHJvZyAqb2xkX3Byb2c7Cj4gPj4+ICAgICAg
IGJvb2wgbmVlZF9yZXNldDsKPiA+Pj4gKyAgICBpbnQgbnVtX3F1ZXVlczsKPiA+Pj4gICAgICAg
ICBpZiAoYWRhcHRlci0+ZmxhZ3MgJiBJWEdCRV9GTEFHX1NSSU9WX0VOQUJMRUQpCj4gPj4+ICAg
ICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+Pj4gQEAgLTEwMTYxLDExICsxMDE2MiwxNCBAQCBz
dGF0aWMgaW50IGl4Z2JlX3hkcF9zZXR1cChzdHJ1Y3QKPiA+Pj4gbmV0X2RldmljZSAqZGV2LCBz
dHJ1Y3QgYnBmX3Byb2cgKnByb2cpCj4gPj4+ICAgICAgIC8qIEtpY2sgc3RhcnQgdGhlIE5BUEkg
Y29udGV4dCBpZiB0aGVyZSBpcyBhbiBBRl9YRFAgc29ja2V0IG9wZW4KPiA+Pj4gICAgICAgICog
b24gdGhhdCBxdWV1ZSBpZC4gVGhpcyBzbyB0aGF0IHJlY2VpdmluZyB3aWxsIHN0YXJ0Lgo+ID4+
PiAgICAgICAgKi8KPiA+Pj4gLSAgICBpZiAobmVlZF9yZXNldCAmJiBwcm9nKQo+ID4+PiAtICAg
ICAgICBmb3IgKGkgPSAwOyBpIDwgYWRhcHRlci0+bnVtX3J4X3F1ZXVlczsgaSsrKQo+ID4+PiAr
ICAgIGlmIChuZWVkX3Jlc2V0ICYmIHByb2cpIHsKPiA+Pj4gKyAgICAgICAgbnVtX3F1ZXVlcyA9
IG1pbl90KGludCwgYWRhcHRlci0+bnVtX3J4X3F1ZXVlcywKPiA+Pj4gKyAgICAgICAgICAgIGFk
YXB0ZXItPm51bV94ZHBfcXVldWVzKTsKPiA+Pj4gKyAgICAgICAgZm9yIChpID0gMDsgaSA8IG51
bV9xdWV1ZXM7IGkrKykKPiA+Pj4gICAgICAgICAgICAgICBpZiAoYWRhcHRlci0+eGRwX3Jpbmdb
aV0tPnhza19wb29sKQo+ID4+PiAgICAgICAgICAgICAgICAgICAodm9pZClpeGdiZV94c2tfd2Fr
ZXVwKGFkYXB0ZXItPm5ldGRldiwgaSwKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgWERQX1dBS0VVUF9SWCk7Cj4gPj4+ICsgICAgfQo+ID4+PiAgICAgICAgIHJldHVybiAw
Owo+ID4+PiAgIH0KPiA+Pj4KPiA+IFRoYW5rcyBmb3IgeW91ciBhZHZpY2UuIEkgd2lsbCBtb2Rp
ZnkgdGhlIGNvbW1pdCBtZXNzYWdlIGluIHYzCj4gPgo+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
