Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 491F7401748
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Sep 2021 09:49:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C718401D8;
	Mon,  6 Sep 2021 07:49:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UxhDA4BshBLD; Mon,  6 Sep 2021 07:49:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E28B4015C;
	Mon,  6 Sep 2021 07:49:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD39C1BF32E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 07:49:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D82C480D5A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 07:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vi0p9KDYlYTC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Sep 2021 07:49:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8069D80D2B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 07:49:33 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 f11-20020a17090aa78b00b0018e98a7cddaso3965359pjq.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 06 Sep 2021 00:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=QhCgaSu1eSPlQErUzwwryEHE0CwHlTOVTpvkyIqt2lY=;
 b=FyBs0dS972vRSpbRXyL/n2BoWxI9wjF0pW66zG8EINOOWNDBBPxLIpcDeDNHBerhky
 ROizbdJpol1HJiEH6RWQVuiU0zpi+Csg7Sz/hVQDngfF3LKQbWNmTpdj+WKiO6u+OfFb
 pWFiOzvFln64Sf/xocDEiwiWeeJ5npaxNrl64ccMtE9T75HkrlJK0jYj1lFfVTfrQR/9
 whVvklRPvazLMZItzVy+K51m5GQTPk7bHwFuqPY8oub8dlp/9NKQxSEz31AnzLAC1+d0
 miE51W0ESBqLWTQWtaKJcYltIbrqAN+qylZ3PMj5inAx67CeA9qBFbPsYm7PHSRUCWew
 ESrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=QhCgaSu1eSPlQErUzwwryEHE0CwHlTOVTpvkyIqt2lY=;
 b=KvRoiE8uZ2alLgncOv0LzM7Pee/5nVwvRNLJsWeg2N+F7QF4bw/cZ9mGOenwYVD5V8
 ZAevvFnv3i+16Jh0nezFxeLm/CBEVH8jj9e1Nvf4+7cTdjtA/lv69XM4pDkH3HxOrR08
 P+JufJ01ahd7irH5HULhdHGQE8myFLnAUqFEQ4xAxxrP8ZzZNnKV8HFTbPJbxT4Vg735
 ZZ1hFc5Kx+8afzwbYZi5cpD0BmdJHupPpvXV3YpArGYWXmgSwxpsKiyeEXW6zT/nF6q1
 Xhg05kxserxU/tfqGpu9nRVSF4B0L2KlPfJhrldZl37Ke9IDnTGtEyrgzUDsX9qBjSa7
 Hzyg==
X-Gm-Message-State: AOAM533zUdoC9PSZiC7momxrFykJIbyFzUBbayW7GPzHN9sYgSaP0vmx
 pWsJJGuqMy1PphldNDZLv2DM3Q==
X-Google-Smtp-Source: ABdhPJx0gT7JlX46NVcK4JvhNMy5PdKAZKmSGUvzvcQ61C/cHg9pE7IdgRjJVir9P0f72bbU/7pBug==
X-Received: by 2002:a17:90b:4b87:: with SMTP id
 lr7mr5179690pjb.47.1630914572689; 
 Mon, 06 Sep 2021 00:49:32 -0700 (PDT)
Received: from [10.86.116.180] ([139.177.225.230])
 by smtp.gmail.com with ESMTPSA id lw14sm6368804pjb.48.2021.09.06.00.49.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Sep 2021 00:49:31 -0700 (PDT)
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20210903064013.9842-1-zhoufeng.zf@bytedance.com>
 <2ee172ab-836c-d464-be59-935030d01f4b@molgen.mpg.de>
From: Feng Zhou <zhoufeng.zf@bytedance.com>
Message-ID: <8ce8de1c-14bf-20ad-00c0-9e0d8ff34b91@bytedance.com>
Date: Mon, 6 Sep 2021 15:49:22 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <2ee172ab-836c-d464-be59-935030d01f4b@molgen.mpg.de>
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
Cc: duanxiongchun@bytedance.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 zhengqi.arch@bytedance.com, kuba@kernel.org, chenying.kernel@bytedance.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 songmuchun@bytedance.com, bpf@vger.kernel.org, wangdongdong.6@bytedance.com,
 ast@kernel.org, davem@davemloft.net, magnus.karlsson@intel.com,
 zhouchengming@bytedance.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CuWcqCAyMDIxLzkvNiDkuIvljYgyOjM3LCBQYXVsIE1lbnplbCDlhpnpgZM6Cj4gRGVhciBGZW5n
LAo+Cj4KPiBBbSAwMy4wOS4yMSB1bSAwODo0MCBzY2hyaWViIEZlbmcgemhvdToKPgo+IChJZiB5
b3UgY2FyZSwgaW4geW91ciBlbWFpbCBjbGllbnQsIHlvdXIgbGFzdCBuYW1lIGRvZXMgbm90IHN0
YXJ0IHdpdGggCj4gYSBjYXBpdGFsIGxldHRlci4pCj4KPj4gRnJvbTogRmVuZyBaaG91IDx6aG91
ZmVuZy56ZkBieXRlZGFuY2UuY29tPgo+Pgo+PiBUaGUgaXhnYmUgZHJpdmVyIGN1cnJlbnRseSBn
ZW5lcmF0ZXMgYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2Ugd2l0aAo+PiBzb21lIG1hY2hpbmUg
KG9ubGluZSBjcHVzIDwgNjMpLiBUaGlzIGlzIGR1ZSB0byB0aGUgZmFjdCB0aGF0IHRoZQo+PiBt
YXhpbXVtIHZhbHVlIG9mIG51bV94ZHBfcXVldWVzIGlzIG5yX2NwdV9pZHMuIENvZGUgaXMgaW4K
Pj4gIml4Z2JlX3NldF9yc3NfcXVldWVzIiIuCj4+Cj4+IEhlcmUncyBob3cgdGhlIHByb2JsZW0g
cmVwZWF0cyBpdHNlbGY6Cj4+IFNvbWUgbWFjaGluZSAob25saW5lIGNwdXMgPCA2MyksIEFuZCB1
c2VyIHNldCBudW1fcXVldWVzIHRvIDYzIHRocm91Z2gKPj4gZXRodG9vbC4gQ29kZSBpcyBpbiB0
aGUgIml4Z2JlX3NldF9jaGFubmVscyIsCj4+IGFkYXB0ZXItPnJpbmdfZmVhdHVyZVtSSU5HX0Zf
RkRJUl0ubGltaXQgPSBjb3VudDsKPgo+IEZvciBiZXR0ZXIgbGVnaWJpbGl0eSwgeW91IG1pZ2h0
IHdhbnQgdG8gaW5kZW50IGNvZGUgKGJsb2NrcykgYnkgZm91ciAKPiBzcGFjZXMgYW5kIGFkZCBi
bGFuayBsaW5lcyBhcm91bmQgaXQgKGFsc28gYmVsb3cpLgo+Cj4+IEl0IGJlY2FtZXMgNjMuCj4K
PiBiZWNvbWVzCj4KPj4gV2hlbiB1c2VyIHVzZSB4ZHAsICJpeGdiZV9zZXRfcnNzX3F1ZXVlcyIg
d2lsbCBzZXQgcXVldWVzIG51bS4KPj4gYWRhcHRlci0+bnVtX3J4X3F1ZXVlcyA9IHJzc19pOwo+
PiBhZGFwdGVyLT5udW1fdHhfcXVldWVzID0gcnNzX2k7Cj4+IGFkYXB0ZXItPm51bV94ZHBfcXVl
dWVzID0gaXhnYmVfeGRwX3F1ZXVlcyhhZGFwdGVyKTsKPj4gQW5kIHJzc19pJ3MgdmFsdWUgaXMg
ZnJvbQo+PiBmID0gJmFkYXB0ZXItPnJpbmdfZmVhdHVyZVtSSU5HX0ZfRkRJUl07Cj4+IHJzc19p
ID0gZi0+aW5kaWNlcyA9IGYtPmxpbWl0Owo+PiBTbyAibnVtX3J4X3F1ZXVlcyIgPiAibnVtX3hk
cF9xdWV1ZXMiLCB3aGVuIHJ1biB0byAiaXhnYmVfeGRwX3NldHVwIiwKPj4gZm9yIChpID0gMDsg
aSA8IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXM7IGkrKykKPj4gwqDCoMKgwqBpZiAoYWRhcHRlci0+
eGRwX3JpbmdbaV0tPnhza191bWVtKQo+PiBsZWFkIHRvIHBhbmljLgo+Cj4gbGVhZCpzKj8KPgo+
PiBDYWxsIHRyYWNlOgo+PiBbZXhjZXB0aW9uIFJJUDogaXhnYmVfeGRwKzM2OF0KPj4gUklQOiBm
ZmZmZmZmZmMwMmE3NmEwwqAgUlNQOiBmZmZmOWZlMTYyMDJmOGQwwqAgUkZMQUdTOiAwMDAxMDI5
Nwo+PiBSQVg6IDAwMDAwMDAwMDAwMDAwMDDCoCBSQlg6IDAwMDAwMDAwMDAwMDAwMjDCoCBSQ1g6
IDAwMDAwMDAwMDAwMDAwMDAKPj4gUkRYOiAwMDAwMDAwMDAwMDAwMDAwwqAgUlNJOiAwMDAwMDAw
MDAwMDAwMDFjwqAgUkRJOiBmZmZmZmZmZmE5NGVhZDkwCj4+IFJCUDogZmZmZjkyZjhmMjRjMGMx
OMKgwqAgUjg6IDAwMDAwMDAwMDAwMDAwMDDCoMKgIFI5OiAwMDAwMDAwMDAwMDAwMDAwCj4+IFIx
MDogZmZmZjlmZTE2MjAyZjgzMMKgIFIxMTogMDAwMDAwMDAwMDAwMDAwMMKgIFIxMjogZmZmZjky
ZjhmMjRjMDAwMAo+PiBSMTM6IGZmZmY5ZmUxNjIwMmZjMDHCoCBSMTQ6IDAwMDAwMDAwMDAwMDAw
MGHCoCBSMTU6IGZmZmZmZmZmYzAyYTc1MzAKPj4gT1JJR19SQVg6IGZmZmZmZmZmZmZmZmZmZmbC
oCBDUzogMDAxMMKgIFNTOiAwMDE4Cj4+IMKgIDcgW2ZmZmY5ZmUxNjIwMmY4ZjBdIGRldl94ZHBf
aW5zdGFsbCBhdCBmZmZmZmZmZmE4OWZiYmNjCj4+IMKgIDggW2ZmZmY5ZmUxNjIwMmY5MjBdIGRl
dl9jaGFuZ2VfeGRwX2ZkIGF0IGZmZmZmZmZmYThhMDg4MDgKPj4gwqAgOSBbZmZmZjlmZTE2MjAy
Zjk2MF0gZG9fc2V0bGluayBhdCBmZmZmZmZmZmE4YTIwMjM1Cj4+IDEwIFtmZmZmOWZlMTYyMDJm
YTg4XSBydG5sX3NldGxpbmsgYXQgZmZmZmZmZmZhOGEyMDM4NAo+PiAxMSBbZmZmZjlmZTE2MjAy
ZmM3OF0gcnRuZXRsaW5rX3Jjdl9tc2cgYXQgZmZmZmZmZmZhOGExYThkZAo+PiAxMiBbZmZmZjlm
ZTE2MjAyZmNmMF0gbmV0bGlua19yY3Zfc2tiIGF0IGZmZmZmZmZmYThhNzE3ZWIKPj4gMTMgW2Zm
ZmY5ZmUxNjIwMmZkNDBdIG5ldGxpbmtfdW5pY2FzdCBhdCBmZmZmZmZmZmE4YTcwZjg4Cj4+IDE0
IFtmZmZmOWZlMTYyMDJmZDgwXSBuZXRsaW5rX3NlbmRtc2cgYXQgZmZmZmZmZmZhOGE3MTMxOQo+
PiAxNSBbZmZmZjlmZTE2MjAyZmRmMF0gc29ja19zZW5kbXNnIGF0IGZmZmZmZmZmYTg5ZGYyOTAK
Pj4gMTYgW2ZmZmY5ZmUxNjIwMmZlMDhdIF9fc3lzX3NlbmR0byBhdCBmZmZmZmZmZmE4OWUxOWM4
Cj4+IDE3IFtmZmZmOWZlMTYyMDJmZjMwXSBfX3g2NF9zeXNfc2VuZHRvIGF0IGZmZmZmZmZmYTg5
ZTFhNjQKPj4gMTggW2ZmZmY5ZmUxNjIwMmZmMzhdIGRvX3N5c2NhbGxfNjQgYXQgZmZmZmZmZmZh
ODQwNDJiOQo+PiAxOSBbZmZmZjlmZTE2MjAyZmY1MF0gZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9o
d2ZyYW1lIGF0IGZmZmZmZmZmYThjMDAwOGMKPgo+IFBsZWFzZSBkZXNjcmliZSB0aGUgZml4IGlu
IHRoZSBjb21taXQgbWVzc2FnZS4KPgo+PiBGaXhlczogNGE5YjMyZjMwZjgwICgiaXhnYmU6IGZp
eCBwb3RlbnRpYWwgUlggYnVmZmVyIHN0YXJ2YXRpb24gZm9yCj4+IEFGX1hEUCIpCj4+IFNpZ25l
ZC1vZmYtYnk6IEZlbmcgWmhvdSA8emhvdWZlbmcuemZAYnl0ZWRhbmNlLmNvbT4KPj4gLS0tCj4+
IFVwZGF0ZXMgc2luY2UgdjE6Cj4+IC0gRml4ICJpeGdiZV9tYXhfY2hhbm5lbHMiIGNhbGxiYWNr
IHNvIHRoYXQgaXQgd2lsbCBub3QgYWxsb3cgYSAKPj4gc2V0dGluZyBvZgo+PiBxdWV1ZXMgdG8g
YmUgaGlnaGVyIHRoYW4gdGhlIG51bV9vbmxpbmVfY3B1cygpLgo+PiBtb3JlIGRldGFpbHMgY2Fu
IGJlIHNlZW4gZnJvbSBoZXJlOgo+PiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2pl
Y3QvaW50ZWwtd2lyZWQtbGFuL3BhdGNoLzIwMjEwODE3MDc1NDA3LjExOTYxLTEtemhvdWZlbmcu
emZAYnl0ZWRhbmNlLmNvbS8gCj4+Cj4+IFRoYW5rcyB0byBNYWNpZWogRmlqYWxrb3dza2kgZm9y
IHlvdXIgYWR2aWNlLgo+Pgo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9p
eGdiZV9ldGh0b29sLmMgfCAyICstCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4
Z2JlL2l4Z2JlX21haW4uY8KgwqDCoCB8IDggKysrKysrLS0KPj4gwqAgMiBmaWxlcyBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9ldGh0b29sLmMgCj4+IGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfZXRodG9vbC5jCj4+IGluZGV4IDRjZWFj
YTBmNmNlMy4uMjEzMjFkMTY0NzA4IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV9ldGh0b29sLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaXhnYmUvaXhnYmVfZXRodG9vbC5jCj4+IEBAIC0zMjA0LDcgKzMyMDQsNyBAQCBz
dGF0aWMgdW5zaWduZWQgaW50IGl4Z2JlX21heF9jaGFubmVscyhzdHJ1Y3QgCj4+IGl4Z2JlX2Fk
YXB0ZXIgKmFkYXB0ZXIpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBtYXhfY29tYmluZWQgPSBpeGdi
ZV9tYXhfcnNzX2luZGljZXMoYWRhcHRlcik7Cj4+IMKgwqDCoMKgwqAgfQo+PiDCoCAtwqDCoMKg
IHJldHVybiBtYXhfY29tYmluZWQ7Cj4+ICvCoMKgwqAgcmV0dXJuIG1pbl90KGludCwgbWF4X2Nv
bWJpbmVkLCBudW1fb25saW5lX2NwdXMoKSk7Cj4+IMKgIH0KPj4gwqAgwqAgc3RhdGljIHZvaWQg
aXhnYmVfZ2V0X2NoYW5uZWxzKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgCj4+IGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jCj4+IGluZGV4IDE0YWVh
NDBkYTUwZi4uNWRiNDk2Y2M1MDcwIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jCj4+IEBAIC0xMDExMiw2ICsxMDExMiw3IEBAIHN0YXRp
YyBpbnQgaXhnYmVfeGRwX3NldHVwKHN0cnVjdCBuZXRfZGV2aWNlIAo+PiAqZGV2LCBzdHJ1Y3Qg
YnBmX3Byb2cgKnByb2cpCj4+IMKgwqDCoMKgwqAgc3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0
ZXIgPSBuZXRkZXZfcHJpdihkZXYpOwo+PiDCoMKgwqDCoMKgIHN0cnVjdCBicGZfcHJvZyAqb2xk
X3Byb2c7Cj4+IMKgwqDCoMKgwqAgYm9vbCBuZWVkX3Jlc2V0Owo+PiArwqDCoMKgIGludCBudW1f
cXVldWVzOwo+PiDCoCDCoMKgwqDCoMKgIGlmIChhZGFwdGVyLT5mbGFncyAmIElYR0JFX0ZMQUdf
U1JJT1ZfRU5BQkxFRCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+PiBA
QCAtMTAxNjEsMTEgKzEwMTYyLDE0IEBAIHN0YXRpYyBpbnQgaXhnYmVfeGRwX3NldHVwKHN0cnVj
dCAKPj4gbmV0X2RldmljZSAqZGV2LCBzdHJ1Y3QgYnBmX3Byb2cgKnByb2cpCj4+IMKgwqDCoMKg
wqAgLyogS2ljayBzdGFydCB0aGUgTkFQSSBjb250ZXh0IGlmIHRoZXJlIGlzIGFuIEFGX1hEUCBz
b2NrZXQgb3Blbgo+PiDCoMKgwqDCoMKgwqAgKiBvbiB0aGF0IHF1ZXVlIGlkLiBUaGlzIHNvIHRo
YXQgcmVjZWl2aW5nIHdpbGwgc3RhcnQuCj4+IMKgwqDCoMKgwqDCoCAqLwo+PiAtwqDCoMKgIGlm
IChuZWVkX3Jlc2V0ICYmIHByb2cpCj4+IC3CoMKgwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwg
YWRhcHRlci0+bnVtX3J4X3F1ZXVlczsgaSsrKQo+PiArwqDCoMKgIGlmIChuZWVkX3Jlc2V0ICYm
IHByb2cpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIG51bV9xdWV1ZXMgPSBtaW5fdChpbnQsIGFkYXB0
ZXItPm51bV9yeF9xdWV1ZXMsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFkYXB0ZXItPm51
bV94ZHBfcXVldWVzKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBudW1fcXVl
dWVzOyBpKyspCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChhZGFwdGVyLT54ZHBf
cmluZ1tpXS0+eHNrX3Bvb2wpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
KHZvaWQpaXhnYmVfeHNrX3dha2V1cChhZGFwdGVyLT5uZXRkZXYsIGksCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgWERQ
X1dBS0VVUF9SWCk7Cj4+ICvCoMKgwqAgfQo+PiDCoCDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiDC
oCB9Cj4+ClRoYW5rcyBmb3IgeW91ciBhZHZpY2UuIEkgd2lsbCBtb2RpZnkgdGhlIGNvbW1pdCBt
ZXNzYWdlIGluIHYzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
