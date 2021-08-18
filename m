Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C341B3F056E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Aug 2021 15:56:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BA6E60717;
	Wed, 18 Aug 2021 13:56:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jzKAVSziDyb8; Wed, 18 Aug 2021 13:56:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C986160709;
	Wed, 18 Aug 2021 13:56:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F83E1BF38D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 08:30:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8DF9A605F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 08:30:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SBzwepXsUEs8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Aug 2021 08:30:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95F09605D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 08:30:25 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id w6so1319508plg.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 01:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=jL/DkoxZCdzlNexUG7tJ6IG5zbZczoSvIVash/JCFrw=;
 b=mjex+yt3nPZrktov1+DZ6Bq446vp3EnZsY5Rp2Z4n5iBYWDavjtfqeXt7QZMyuGeQx
 dmQdu6z3qA1rLvrmaBhTr9RPti/HhOVCjaTV6tvJ/yTjU+xPSVxAQpRZvQwYAgUYofeO
 mmH2cRgxyDimzxfU4p2xlVikV5Eqxe3uztSntLF0ehtUzbOzCC1Otex7gfri/ddagDJv
 9dp7MYgwkA567XF/7ghDiEEu0ngZj6uWW6MzAqVr9yQGP+u2DQ2SwhCcZxAd6Jrq2EIp
 +VMMflY5XYtq41M4/KXWx2ofrDQxrH8xbTuuekFqJwiPORh37Tltgjju+vkismI+2vhj
 7XKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=jL/DkoxZCdzlNexUG7tJ6IG5zbZczoSvIVash/JCFrw=;
 b=EzrYom8YpXatSCm0Kwqp22VP/xtzNtBVAwXugJGsw5h+ebDcxs1uG9OQmXrCtMnebz
 tbppoasaUK5hgbnUYRso8VhAwXPgMJJ1OCA16AmKMS7ZUEwtA30UDAzwHI1XXTn+QW9H
 IhdwBCW3teN0hH6unvvkWQjXTasDxQ+vQNiCkLR3UmhP9K8hsU7Q8szOrPufwHfomxFf
 TMEmVEpj1TWBEFtsMO0UbmnGn4g8rHxAvoIEwigzPDj2JY8jXwp6bkvMa4SiHaOdLr4C
 uWOqUGO8RkdqfUtJcxt+FKc+4J3gWxsk+uVbrVCfgmrqfpAumKuP1lS7C3IX4XG3jy7V
 06KA==
X-Gm-Message-State: AOAM530irq2uDywKrraNqNtJvehSWWE3bNE8ftB5FhT/kDvhWK2MbFAU
 l//5oVvgemr/IsYuaNw9cjRikg==
X-Google-Smtp-Source: ABdhPJxad1KK36PAE+4ALDJhHQYzMsdq97PArLHgXYjcLRlD/AHutLCPOJ3acpkjSavyCEuDCIetRA==
X-Received: by 2002:a17:90b:3007:: with SMTP id
 hg7mr8245674pjb.66.1629275424835; 
 Wed, 18 Aug 2021 01:30:24 -0700 (PDT)
Received: from [10.254.37.14] ([139.177.225.244])
 by smtp.gmail.com with ESMTPSA id 11sm5003086pfl.41.2021.08.18.01.30.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Aug 2021 01:30:24 -0700 (PDT)
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20210817075407.11961-1-zhoufeng.zf@bytedance.com>
 <20210817111047.GA8143@ranger.igk.intel.com>
From: zhoufeng <zhoufeng.zf@bytedance.com>
Message-ID: <5bddff53-9b78-99db-1d8e-23b3d38167a1@bytedance.com>
Date: Wed, 18 Aug 2021 16:30:15 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210817111047.GA8143@ranger.igk.intel.com>
X-Mailman-Approved-At: Wed, 18 Aug 2021 13:56:33 +0000
Subject: Re: [Intel-wired-lan] [External] Re: [PATCH] ixgbe: Fix NULL
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
Cc: wangdongdong.6@bytedance.com, duanxiongchun@bytedance.com, hawk@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 zhengqi.arch@bytedance.com, linux-kernel@vger.kernel.org,
 chenying.kernel@bytedance.com, jeffrey.t.kirsher@intel.com,
 songmuchun@bytedance.com, kuba@kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 magnus.karlsson@intel.com, zhouchengming@bytedance.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgrU2iAyMDIxLzgvMTcgz8LO5zc6MTAsIE1hY2llaiBGaWphbGtvd3NraSDQtLXAOgo+IE9uIFR1
ZSwgQXVnIDE3LCAyMDIxIGF0IDAzOjU0OjA3UE0gKzA4MDAsIEZlbmcgemhvdSB3cm90ZToKPj4g
RnJvbTogRmVuZyBaaG91IDx6aG91ZmVuZy56ZkBieXRlZGFuY2UuY29tPgo+Pgo+PiBUaGUgaXhn
YmUgZHJpdmVyIGN1cnJlbnRseSBnZW5lcmF0ZXMgYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2Ug
d2l0aAo+PiBzb21lIG1hY2hpbmUgKG9ubGluZSBjcHVzIDwgNjMpLiBUaGlzIGlzIGR1ZSB0byB0
aGUgZmFjdCB0aGF0IHRoZQo+PiBtYXhpbXVtIHZhbHVlIG9mIG51bV94ZHBfcXVldWVzIGlzIG5y
X2NwdV9pZHMuIENvZGUgaXMgaW4KPj4gIml4Z2JlX3NldF9yc3NfcXVldWVzIiIuCj4gCj4gVGhh
dCdzIGEgZ29vZCBjYXRjaCwgYnV0IHdlIHNob3VsZCBmaXggc2V0IGNoYW5uZWxzIGNhbGxiYWNr
IHNvIHRoYXQgaXQKPiB3aWxsIG5vdCBhbGxvdyBhIHNldHRpbmcgb2YgcXVldWVzIHRvIGJlIGhp
Z2hlciB0aGFuIHRoZQo+IG51bV9vbmxpbmVfY3B1cygpLgo+IAo+IFBsZWFzZSBhbHNvIGluY2x1
ZGUgdGhlIHRyZWUgaW4gdGhlIHBhdGNoIHN1YmplY3QgdGhhdCB5b3UncmUgZGlyZWN0aW5nCj4g
dGhlIHBhdGNoIHRvLgo+IAoKT2ssIEJlc2lkZXMgaXQsIEkgd2lsbCBhZGQgbW9yZSBjb2RlIGlu
ICJpeGdiZV9zZXRfY2hhbm5lbHMiOgovKiB2ZXJpZnkgdGhlIG51bWJlciBvZiBjaGFubmVscyBk
b2VzIG5vdCBleGNlZWQgbnVtX29ubGluZV9jcHVzICovCmlmIChjb3VudCA+IG51bV9vbmxpbmVf
Y3B1cygpKQoJcmV0dXJuIC1FSU5WQUw7CklmIHVzZXIgd2FudCBzZXQgcXVldWVzIG51bSB0byBi
ZSBoaWdoZXIgdGhhbiB0aGUgbnVtX29ubGluZV9jcHVzKCksCnJldHVybiBlcnJvcigtRUlOVkFM
KS4KCldoYXQgZG8geW91IHRoaW5rPwoKPiBJJ2QgYmUgYWxzbyB0aGFua2Z1bCBpZiB5b3UgQ2Mg
bWUgb24gSW50ZWwgWERQIHJlbGF0ZWQgcGF0Y2hlcy4KPiBUaGFua3MhCj4gCgpPaywgb2YgY291
cnNlLgoKCj4+Cj4+IEhlcmUncyBob3cgdGhlIHByb2JsZW0gcmVwZWF0cyBpdHNlbGY6Cj4+IFNv
bWUgbWFjaGluZSAob25saW5lIGNwdXMgPCA2MyksIEFuZCB1c2VyIHNldCBudW1fcXVldWVzIHRv
IDYzIHRocm91Z2gKPj4gZXRodG9vbC4gQ29kZSBpcyBpbiB0aGUgIml4Z2JlX3NldF9jaGFubmVs
cyIsCj4+IGFkYXB0ZXItPnJpbmdfZmVhdHVyZVtSSU5HX0ZfRkRJUl0ubGltaXQgPSBjb3VudDsK
Pj4gSXQgYmVjYW1lcyA2My4KPj4gV2hlbiB1c2VyIHVzZSB4ZHAsICJpeGdiZV9zZXRfcnNzX3F1
ZXVlcyIgd2lsbCBzZXQgcXVldWVzIG51bS4KPj4gYWRhcHRlci0+bnVtX3J4X3F1ZXVlcyA9IHJz
c19pOwo+PiBhZGFwdGVyLT5udW1fdHhfcXVldWVzID0gcnNzX2k7Cj4+IGFkYXB0ZXItPm51bV94
ZHBfcXVldWVzID0gaXhnYmVfeGRwX3F1ZXVlcyhhZGFwdGVyKTsKPj4gQW5kIHJzc19pJ3MgdmFs
dWUgaXMgZnJvbQo+PiBmID0gJmFkYXB0ZXItPnJpbmdfZmVhdHVyZVtSSU5HX0ZfRkRJUl07Cj4+
IHJzc19pID0gZi0+aW5kaWNlcyA9IGYtPmxpbWl0Owo+PiBTbyAibnVtX3J4X3F1ZXVlcyIgPiAi
bnVtX3hkcF9xdWV1ZXMiLCB3aGVuIHJ1biB0byAiaXhnYmVfeGRwX3NldHVwIiwKPj4gZm9yIChp
ID0gMDsgaSA8IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXM7IGkrKykKPj4gCWlmIChhZGFwdGVyLT54
ZHBfcmluZ1tpXS0+eHNrX3VtZW0pCj4+IGxlYWQgdG8gcGFuaWMuCj4+IENhbGwgdHJhY2U6Cj4+
IFtleGNlcHRpb24gUklQOiBpeGdiZV94ZHArMzY4XQo+PiBSSVA6IGZmZmZmZmZmYzAyYTc2YTAg
IFJTUDogZmZmZjlmZTE2MjAyZjhkMCAgUkZMQUdTOiAwMDAxMDI5Nwo+PiBSQVg6IDAwMDAwMDAw
MDAwMDAwMDAgIFJCWDogMDAwMDAwMDAwMDAwMDAyMCAgUkNYOiAwMDAwMDAwMDAwMDAwMDAwCj4+
IFJEWDogMDAwMDAwMDAwMDAwMDAwMCAgUlNJOiAwMDAwMDAwMDAwMDAwMDFjICBSREk6IGZmZmZm
ZmZmYTk0ZWFkOTAKPj4gUkJQOiBmZmZmOTJmOGYyNGMwYzE4ICAgUjg6IDAwMDAwMDAwMDAwMDAw
MDAgICBSOTogMDAwMDAwMDAwMDAwMDAwMAo+PiBSMTA6IGZmZmY5ZmUxNjIwMmY4MzAgIFIxMTog
MDAwMDAwMDAwMDAwMDAwMCAgUjEyOiBmZmZmOTJmOGYyNGMwMDAwCj4+IFIxMzogZmZmZjlmZTE2
MjAyZmMwMSAgUjE0OiAwMDAwMDAwMDAwMDAwMDBhICBSMTU6IGZmZmZmZmZmYzAyYTc1MzAKPj4g
T1JJR19SQVg6IGZmZmZmZmZmZmZmZmZmZmYgIENTOiAwMDEwICBTUzogMDAxOAo+PiAgIDcgW2Zm
ZmY5ZmUxNjIwMmY4ZjBdIGRldl94ZHBfaW5zdGFsbCBhdCBmZmZmZmZmZmE4OWZiYmNjCj4+ICAg
OCBbZmZmZjlmZTE2MjAyZjkyMF0gZGV2X2NoYW5nZV94ZHBfZmQgYXQgZmZmZmZmZmZhOGEwODgw
OAo+PiAgIDkgW2ZmZmY5ZmUxNjIwMmY5NjBdIGRvX3NldGxpbmsgYXQgZmZmZmZmZmZhOGEyMDIz
NQo+PiAxMCBbZmZmZjlmZTE2MjAyZmE4OF0gcnRubF9zZXRsaW5rIGF0IGZmZmZmZmZmYThhMjAz
ODQKPj4gMTEgW2ZmZmY5ZmUxNjIwMmZjNzhdIHJ0bmV0bGlua19yY3ZfbXNnIGF0IGZmZmZmZmZm
YThhMWE4ZGQKPj4gMTIgW2ZmZmY5ZmUxNjIwMmZjZjBdIG5ldGxpbmtfcmN2X3NrYiBhdCBmZmZm
ZmZmZmE4YTcxN2ViCj4+IDEzIFtmZmZmOWZlMTYyMDJmZDQwXSBuZXRsaW5rX3VuaWNhc3QgYXQg
ZmZmZmZmZmZhOGE3MGY4OAo+PiAxNCBbZmZmZjlmZTE2MjAyZmQ4MF0gbmV0bGlua19zZW5kbXNn
IGF0IGZmZmZmZmZmYThhNzEzMTkKPj4gMTUgW2ZmZmY5ZmUxNjIwMmZkZjBdIHNvY2tfc2VuZG1z
ZyBhdCBmZmZmZmZmZmE4OWRmMjkwCj4+IDE2IFtmZmZmOWZlMTYyMDJmZTA4XSBfX3N5c19zZW5k
dG8gYXQgZmZmZmZmZmZhODllMTljOAo+PiAxNyBbZmZmZjlmZTE2MjAyZmYzMF0gX194NjRfc3lz
X3NlbmR0byBhdCBmZmZmZmZmZmE4OWUxYTY0Cj4+IDE4IFtmZmZmOWZlMTYyMDJmZjM4XSBkb19z
eXNjYWxsXzY0IGF0IGZmZmZmZmZmYTg0MDQyYjkKPj4gMTkgW2ZmZmY5ZmUxNjIwMmZmNTBdIGVu
dHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSBhdCBmZmZmZmZmZmE4YzAwMDhjCj4+Cj4+IEZp
eGVzOiA0YTliMzJmMzBmODAgKCJpeGdiZTogZml4IHBvdGVudGlhbCBSWCBidWZmZXIgc3RhcnZh
dGlvbiBmb3IKPj4gQUZfWERQIikKPj4gU2lnbmVkLW9mZi1ieTogRmVuZyBaaG91IDx6aG91ZmVu
Zy56ZkBieXRlZGFuY2UuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9peGdiZS9peGdiZV9tYWluLmMgfCA4ICsrKysrKy0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYwo+PiBpbmRleCAxNGFlYTQwZGE1MGYuLjVkYjQ5
NmNjNTA3MCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUv
aXhnYmVfbWFpbi5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4
Z2JlX21haW4uYwo+PiBAQCAtMTAxMTIsNiArMTAxMTIsNyBAQCBzdGF0aWMgaW50IGl4Z2JlX3hk
cF9zZXR1cChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LCBzdHJ1Y3QgYnBmX3Byb2cgKnByb2cpCj4+
ICAgCXN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYoZGV2KTsKPj4g
ICAJc3RydWN0IGJwZl9wcm9nICpvbGRfcHJvZzsKPj4gICAJYm9vbCBuZWVkX3Jlc2V0Owo+PiAr
CWludCBudW1fcXVldWVzOwo+PiAgIAo+PiAgIAlpZiAoYWRhcHRlci0+ZmxhZ3MgJiBJWEdCRV9G
TEFHX1NSSU9WX0VOQUJMRUQpCj4+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPj4gQEAgLTEwMTYxLDEx
ICsxMDE2MiwxNCBAQCBzdGF0aWMgaW50IGl4Z2JlX3hkcF9zZXR1cChzdHJ1Y3QgbmV0X2Rldmlj
ZSAqZGV2LCBzdHJ1Y3QgYnBmX3Byb2cgKnByb2cpCj4+ICAgCS8qIEtpY2sgc3RhcnQgdGhlIE5B
UEkgY29udGV4dCBpZiB0aGVyZSBpcyBhbiBBRl9YRFAgc29ja2V0IG9wZW4KPj4gICAJICogb24g
dGhhdCBxdWV1ZSBpZC4gVGhpcyBzbyB0aGF0IHJlY2VpdmluZyB3aWxsIHN0YXJ0Lgo+PiAgIAkg
Ki8KPj4gLQlpZiAobmVlZF9yZXNldCAmJiBwcm9nKQo+PiAtCQlmb3IgKGkgPSAwOyBpIDwgYWRh
cHRlci0+bnVtX3J4X3F1ZXVlczsgaSsrKQo+PiArCWlmIChuZWVkX3Jlc2V0ICYmIHByb2cpIHsK
Pj4gKwkJbnVtX3F1ZXVlcyA9IG1pbl90KGludCwgYWRhcHRlci0+bnVtX3J4X3F1ZXVlcywKPj4g
KwkJCWFkYXB0ZXItPm51bV94ZHBfcXVldWVzKTsKPj4gKwkJZm9yIChpID0gMDsgaSA8IG51bV9x
dWV1ZXM7IGkrKykKPj4gICAJCQlpZiAoYWRhcHRlci0+eGRwX3JpbmdbaV0tPnhza19wb29sKQo+
PiAgIAkJCQkodm9pZClpeGdiZV94c2tfd2FrZXVwKGFkYXB0ZXItPm5ldGRldiwgaSwKPj4gICAJ
CQkJCQkgICAgICAgWERQX1dBS0VVUF9SWCk7Cj4+ICsJfQo+PiAgIAo+PiAgIAlyZXR1cm4gMDsK
Pj4gICB9Cj4+IC0tIAo+PiAyLjExLjAKPj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
