Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B85B3F2DA0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 16:03:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6F5C80E34;
	Fri, 20 Aug 2021 14:03:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C9RnBdxXT0OH; Fri, 20 Aug 2021 14:03:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E13A580E51;
	Fri, 20 Aug 2021 14:03:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42DB51BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 02:47:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A990605CC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 02:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0s3hu6CQrR4Y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 02:47:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 67F7A606C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 02:47:14 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id n18so7779112pgm.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=G6eBU5JCWXp3ZTP8kOVJU4zSe5j2nKrSfOnGQW6XlnY=;
 b=lm0/C4iJwNYnCK0GVhCYfW8M+jEuOMMopU9h2cXeL9uyflW0hV4XPCHVfNZqOYLQOq
 uqFMnjCYRJnWJc//LgLM4bwK60e9XHK0msNvpT5xKn+TidftpfM4MLpbcCPYBytGVkQp
 YTdspIPeFauf6H6mV986bRfMnD4DgnLTJ+mZTHc98dV7Iz86QYQSC0DAoe4oj4qnRDYO
 1oIk1dEsFXCbNIQdSiSwV+Y3N3F4I+QOlKM7EQmaz1owKBtghXYDK5suRONaBHwapYtJ
 CeU/w75bSPxCm/Y5rDMgxTcN1A1BVfvCT9/+s/cFVGRd3zo8R+1iNhM6e1IQSEsxeZ17
 NeWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=G6eBU5JCWXp3ZTP8kOVJU4zSe5j2nKrSfOnGQW6XlnY=;
 b=YpKA/v17PODDKpGMamIb1Eb6chWEr+rJ2IKiLsVhG3HKjJZs1xf29VPxnxZnjtGpDu
 xZPm9nAv+AIDRcmyQ6I1tOPNctqbC7neVQeNkV1Vd0Rxhk9HIQEaths42VnEH+8lS3oM
 UoJENSb6dFnmWttpbQbzNX7pFMfReSXOptIaLO3hxxbL58L8NT+7NziIbyKJnp/fdpPZ
 qQwwRLmGp5l8zU9zNvrWPkmFJQQwJoDNufzLRVh4h3dZZY05hf09FO2ULxUQiTDKg8L0
 DqQtmlHi4AkMUBYHUhpT1iqYLd77l/bj2sHZb3TwGcoj5W6tiPXgKXYHTyRLDlaNlmWH
 ItSA==
X-Gm-Message-State: AOAM530cXaL+S3z6cxAfyxyb/85HhCHgZIuIL2ULyGNgZFHk+kF2hly5
 HYzmYqt/vSA7CGNxTjhy2CjDPQ==
X-Google-Smtp-Source: ABdhPJy4Cc/BoD3VMxRSAwn9uuwIHHaOVkRHwfqQJLcjUZ0TxpAaya0OAavyVqqz4HcfFoB3BRIS/Q==
X-Received: by 2002:a62:1443:0:b029:3e0:77ce:accf with SMTP id
 64-20020a6214430000b02903e077ceaccfmr17087920pfu.27.1629427633633; 
 Thu, 19 Aug 2021 19:47:13 -0700 (PDT)
Received: from [10.254.58.101] ([139.177.225.249])
 by smtp.gmail.com with ESMTPSA id v1sm5354411pgj.40.2021.08.19.19.47.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Aug 2021 19:47:13 -0700 (PDT)
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20210817075407.11961-1-zhoufeng.zf@bytedance.com>
 <20210817111047.GA8143@ranger.igk.intel.com>
 <5bddff53-9b78-99db-1d8e-23b3d38167a1@bytedance.com>
 <20210819101619.GE32204@ranger.igk.intel.com>
From: zhoufeng <zhoufeng.zf@bytedance.com>
Message-ID: <879c4cf5-1b63-229f-2d99-6fdfdbce05cc@bytedance.com>
Date: Fri, 20 Aug 2021 10:47:01 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210819101619.GE32204@ranger.igk.intel.com>
X-Mailman-Approved-At: Fri, 20 Aug 2021 14:03:32 +0000
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgrlnKggMjAyMS84LzE5IOS4i+WNiDY6MTYsIE1hY2llaiBGaWphbGtvd3NraSDlhpnpgZM6Cj4g
T24gV2VkLCBBdWcgMTgsIDIwMjEgYXQgMDQ6MzA6MTVQTSArMDgwMCwgemhvdWZlbmcgd3JvdGU6
Cj4+Cj4+Cj4+IOWcqCAyMDIxLzgvMTcg5LiL5Y2INzoxMCwgTWFjaWVqIEZpamFsa293c2tpIOWG
memBkzoKPj4+IE9uIFR1ZSwgQXVnIDE3LCAyMDIxIGF0IDAzOjU0OjA3UE0gKzA4MDAsIEZlbmcg
emhvdSB3cm90ZToKPj4+PiBGcm9tOiBGZW5nIFpob3UgPHpob3VmZW5nLnpmQGJ5dGVkYW5jZS5j
b20+Cj4+Pj4KPj4+PiBUaGUgaXhnYmUgZHJpdmVyIGN1cnJlbnRseSBnZW5lcmF0ZXMgYSBOVUxM
IHBvaW50ZXIgZGVyZWZlcmVuY2Ugd2l0aAo+Pj4+IHNvbWUgbWFjaGluZSAob25saW5lIGNwdXMg
PCA2MykuIFRoaXMgaXMgZHVlIHRvIHRoZSBmYWN0IHRoYXQgdGhlCj4+Pj4gbWF4aW11bSB2YWx1
ZSBvZiBudW1feGRwX3F1ZXVlcyBpcyBucl9jcHVfaWRzLiBDb2RlIGlzIGluCj4+Pj4gIml4Z2Jl
X3NldF9yc3NfcXVldWVzIiIuCj4+Pgo+Pj4gVGhhdCdzIGEgZ29vZCBjYXRjaCwgYnV0IHdlIHNo
b3VsZCBmaXggc2V0IGNoYW5uZWxzIGNhbGxiYWNrIHNvIHRoYXQgaXQKPj4+IHdpbGwgbm90IGFs
bG93IGEgc2V0dGluZyBvZiBxdWV1ZXMgdG8gYmUgaGlnaGVyIHRoYW4gdGhlCj4+PiBudW1fb25s
aW5lX2NwdXMoKS4KPj4+Cj4+PiBQbGVhc2UgYWxzbyBpbmNsdWRlIHRoZSB0cmVlIGluIHRoZSBw
YXRjaCBzdWJqZWN0IHRoYXQgeW91J3JlIGRpcmVjdGluZwo+Pj4gdGhlIHBhdGNoIHRvLgo+Pj4K
Pj4KPj4gT2ssIEJlc2lkZXMgaXQsIEkgd2lsbCBhZGQgbW9yZSBjb2RlIGluICJpeGdiZV9zZXRf
Y2hhbm5lbHMiOgo+PiAvKiB2ZXJpZnkgdGhlIG51bWJlciBvZiBjaGFubmVscyBkb2VzIG5vdCBl
eGNlZWQgbnVtX29ubGluZV9jcHVzICovCj4+IGlmIChjb3VudCA+IG51bV9vbmxpbmVfY3B1cygp
KQo+PiAJcmV0dXJuIC1FSU5WQUw7Cj4+IElmIHVzZXIgd2FudCBzZXQgcXVldWVzIG51bSB0byBi
ZSBoaWdoZXIgdGhhbiB0aGUgbnVtX29ubGluZV9jcHVzKCksCj4+IHJldHVybiBlcnJvcigtRUlO
VkFMKS4KPj4KPj4gV2hhdCBkbyB5b3UgdGhpbms/Cj4gCj4gWWVzLCBpbiBnZW5lcmFsIHlvdSBj
YW4gcmVmZXIgdG8KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wu
YyBhbmQgaW4gcGFydGljdWxhcjoKPiAKPiAvKioKPiAgICogaWNlX2dldF9tYXhfcnhxIC0gcmV0
dXJuIHRoZSBtYXhpbXVtIG51bWJlciBvZiBSeCBxdWV1ZXMgZm9yIGluIGEgUEYKPiAgICogQHBm
OiBQRiBzdHJ1Y3R1cmUKPiAgICovCj4gc3RhdGljIGludCBpY2VfZ2V0X21heF9yeHEoc3RydWN0
IGljZV9wZiAqcGYpCj4gewo+IAlyZXR1cm4gbWluMyhwZi0+bnVtX2xhbl9tc2l4LCAodTE2KW51
bV9vbmxpbmVfY3B1cygpLAo+IAkJICAgICh1MTYpcGYtPmh3LmZ1bmNfY2Fwcy5jb21tb25fY2Fw
Lm51bV9yeHEpOwo+IH0KPiAKPiAKCk9rLCByZWZlciB0byBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2V0aHRvb2wuYzoKImljZV9nZXRfbWF4X3J4cSIKCkkgdGhpbmssICJpeGdi
ZV9tYXhfY2hhbm5lbHMiOgoKcmV0dXJuIG1heF9jb21iaW5lZDsKCkluc3RlYWQgb2YKCnJldHVy
biBtaW5fdChpbnQsIG1heF9jb21iaW5lZCwgbnVtX29ubGluZV9jcHVzKCkpOwoKCj4+Cj4+PiBJ
J2QgYmUgYWxzbyB0aGFua2Z1bCBpZiB5b3UgQ2MgbWUgb24gSW50ZWwgWERQIHJlbGF0ZWQgcGF0
Y2hlcy4KPj4+IFRoYW5rcyEKPj4+Cj4+Cj4+IE9rLCBvZiBjb3Vyc2UuCj4+Cj4+Cj4+Pj4KPj4+
PiBIZXJlJ3MgaG93IHRoZSBwcm9ibGVtIHJlcGVhdHMgaXRzZWxmOgo+Pj4+IFNvbWUgbWFjaGlu
ZSAob25saW5lIGNwdXMgPCA2MyksIEFuZCB1c2VyIHNldCBudW1fcXVldWVzIHRvIDYzIHRocm91
Z2gKPj4+PiBldGh0b29sLiBDb2RlIGlzIGluIHRoZSAiaXhnYmVfc2V0X2NoYW5uZWxzIiwKPj4+
PiBhZGFwdGVyLT5yaW5nX2ZlYXR1cmVbUklOR19GX0ZESVJdLmxpbWl0ID0gY291bnQ7Cj4+Pj4g
SXQgYmVjYW1lcyA2My4KPj4+PiBXaGVuIHVzZXIgdXNlIHhkcCwgIml4Z2JlX3NldF9yc3NfcXVl
dWVzIiB3aWxsIHNldCBxdWV1ZXMgbnVtLgo+Pj4+IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMgPSBy
c3NfaTsKPj4+PiBhZGFwdGVyLT5udW1fdHhfcXVldWVzID0gcnNzX2k7Cj4+Pj4gYWRhcHRlci0+
bnVtX3hkcF9xdWV1ZXMgPSBpeGdiZV94ZHBfcXVldWVzKGFkYXB0ZXIpOwo+Pj4+IEFuZCByc3Nf
aSdzIHZhbHVlIGlzIGZyb20KPj4+PiBmID0gJmFkYXB0ZXItPnJpbmdfZmVhdHVyZVtSSU5HX0Zf
RkRJUl07Cj4+Pj4gcnNzX2kgPSBmLT5pbmRpY2VzID0gZi0+bGltaXQ7Cj4+Pj4gU28gIm51bV9y
eF9xdWV1ZXMiID4gIm51bV94ZHBfcXVldWVzIiwgd2hlbiBydW4gdG8gIml4Z2JlX3hkcF9zZXR1
cCIsCj4+Pj4gZm9yIChpID0gMDsgaSA8IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXM7IGkrKykKPj4+
PiAJaWYgKGFkYXB0ZXItPnhkcF9yaW5nW2ldLT54c2tfdW1lbSkKPj4+PiBsZWFkIHRvIHBhbmlj
Lgo+Pj4+IENhbGwgdHJhY2U6Cj4+Pj4gW2V4Y2VwdGlvbiBSSVA6IGl4Z2JlX3hkcCszNjhdCj4+
Pj4gUklQOiBmZmZmZmZmZmMwMmE3NmEwICBSU1A6IGZmZmY5ZmUxNjIwMmY4ZDAgIFJGTEFHUzog
MDAwMTAyOTcKPj4+PiBSQVg6IDAwMDAwMDAwMDAwMDAwMDAgIFJCWDogMDAwMDAwMDAwMDAwMDAy
MCAgUkNYOiAwMDAwMDAwMDAwMDAwMDAwCj4+Pj4gUkRYOiAwMDAwMDAwMDAwMDAwMDAwICBSU0k6
IDAwMDAwMDAwMDAwMDAwMWMgIFJESTogZmZmZmZmZmZhOTRlYWQ5MAo+Pj4+IFJCUDogZmZmZjky
ZjhmMjRjMGMxOCAgIFI4OiAwMDAwMDAwMDAwMDAwMDAwICAgUjk6IDAwMDAwMDAwMDAwMDAwMDAK
Pj4+PiBSMTA6IGZmZmY5ZmUxNjIwMmY4MzAgIFIxMTogMDAwMDAwMDAwMDAwMDAwMCAgUjEyOiBm
ZmZmOTJmOGYyNGMwMDAwCj4+Pj4gUjEzOiBmZmZmOWZlMTYyMDJmYzAxICBSMTQ6IDAwMDAwMDAw
MDAwMDAwMGEgIFIxNTogZmZmZmZmZmZjMDJhNzUzMAo+Pj4+IE9SSUdfUkFYOiBmZmZmZmZmZmZm
ZmZmZmZmICBDUzogMDAxMCAgU1M6IDAwMTgKPj4+PiAgICA3IFtmZmZmOWZlMTYyMDJmOGYwXSBk
ZXZfeGRwX2luc3RhbGwgYXQgZmZmZmZmZmZhODlmYmJjYwo+Pj4+ICAgIDggW2ZmZmY5ZmUxNjIw
MmY5MjBdIGRldl9jaGFuZ2VfeGRwX2ZkIGF0IGZmZmZmZmZmYThhMDg4MDgKPj4+PiAgICA5IFtm
ZmZmOWZlMTYyMDJmOTYwXSBkb19zZXRsaW5rIGF0IGZmZmZmZmZmYThhMjAyMzUKPj4+PiAxMCBb
ZmZmZjlmZTE2MjAyZmE4OF0gcnRubF9zZXRsaW5rIGF0IGZmZmZmZmZmYThhMjAzODQKPj4+PiAx
MSBbZmZmZjlmZTE2MjAyZmM3OF0gcnRuZXRsaW5rX3Jjdl9tc2cgYXQgZmZmZmZmZmZhOGExYThk
ZAo+Pj4+IDEyIFtmZmZmOWZlMTYyMDJmY2YwXSBuZXRsaW5rX3Jjdl9za2IgYXQgZmZmZmZmZmZh
OGE3MTdlYgo+Pj4+IDEzIFtmZmZmOWZlMTYyMDJmZDQwXSBuZXRsaW5rX3VuaWNhc3QgYXQgZmZm
ZmZmZmZhOGE3MGY4OAo+Pj4+IDE0IFtmZmZmOWZlMTYyMDJmZDgwXSBuZXRsaW5rX3NlbmRtc2cg
YXQgZmZmZmZmZmZhOGE3MTMxOQo+Pj4+IDE1IFtmZmZmOWZlMTYyMDJmZGYwXSBzb2NrX3NlbmRt
c2cgYXQgZmZmZmZmZmZhODlkZjI5MAo+Pj4+IDE2IFtmZmZmOWZlMTYyMDJmZTA4XSBfX3N5c19z
ZW5kdG8gYXQgZmZmZmZmZmZhODllMTljOAo+Pj4+IDE3IFtmZmZmOWZlMTYyMDJmZjMwXSBfX3g2
NF9zeXNfc2VuZHRvIGF0IGZmZmZmZmZmYTg5ZTFhNjQKPj4+PiAxOCBbZmZmZjlmZTE2MjAyZmYz
OF0gZG9fc3lzY2FsbF82NCBhdCBmZmZmZmZmZmE4NDA0MmI5Cj4+Pj4gMTkgW2ZmZmY5ZmUxNjIw
MmZmNTBdIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSBhdCBmZmZmZmZmZmE4YzAwMDhj
Cj4+Pj4KPj4+PiBGaXhlczogNGE5YjMyZjMwZjgwICgiaXhnYmU6IGZpeCBwb3RlbnRpYWwgUlgg
YnVmZmVyIHN0YXJ2YXRpb24gZm9yCj4+Pj4gQUZfWERQIikKPj4+PiBTaWduZWQtb2ZmLWJ5OiBG
ZW5nIFpob3UgPHpob3VmZW5nLnpmQGJ5dGVkYW5jZS5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIHwgOCArKysrKystLQo+
Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+
Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5j
Cj4+Pj4gaW5kZXggMTRhZWE0MGRhNTBmLi41ZGI0OTZjYzUwNzAgMTAwNjQ0Cj4+Pj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jCj4+Pj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jCj4+Pj4gQEAgLTEw
MTEyLDYgKzEwMTEyLDcgQEAgc3RhdGljIGludCBpeGdiZV94ZHBfc2V0dXAoc3RydWN0IG5ldF9k
ZXZpY2UgKmRldiwgc3RydWN0IGJwZl9wcm9nICpwcm9nKQo+Pj4+ICAgIAlzdHJ1Y3QgaXhnYmVf
YWRhcHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2KGRldik7Cj4+Pj4gICAgCXN0cnVjdCBicGZf
cHJvZyAqb2xkX3Byb2c7Cj4+Pj4gICAgCWJvb2wgbmVlZF9yZXNldDsKPj4+PiArCWludCBudW1f
cXVldWVzOwo+Pj4+ICAgIAlpZiAoYWRhcHRlci0+ZmxhZ3MgJiBJWEdCRV9GTEFHX1NSSU9WX0VO
QUJMRUQpCj4+Pj4gICAgCQlyZXR1cm4gLUVJTlZBTDsKPj4+PiBAQCAtMTAxNjEsMTEgKzEwMTYy
LDE0IEBAIHN0YXRpYyBpbnQgaXhnYmVfeGRwX3NldHVwKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYs
IHN0cnVjdCBicGZfcHJvZyAqcHJvZykKPj4+PiAgICAJLyogS2ljayBzdGFydCB0aGUgTkFQSSBj
b250ZXh0IGlmIHRoZXJlIGlzIGFuIEFGX1hEUCBzb2NrZXQgb3Blbgo+Pj4+ICAgIAkgKiBvbiB0
aGF0IHF1ZXVlIGlkLiBUaGlzIHNvIHRoYXQgcmVjZWl2aW5nIHdpbGwgc3RhcnQuCj4+Pj4gICAg
CSAqLwo+Pj4+IC0JaWYgKG5lZWRfcmVzZXQgJiYgcHJvZykKPj4+PiAtCQlmb3IgKGkgPSAwOyBp
IDwgYWRhcHRlci0+bnVtX3J4X3F1ZXVlczsgaSsrKQo+Pj4+ICsJaWYgKG5lZWRfcmVzZXQgJiYg
cHJvZykgewo+Pj4+ICsJCW51bV9xdWV1ZXMgPSBtaW5fdChpbnQsIGFkYXB0ZXItPm51bV9yeF9x
dWV1ZXMsCj4+Pj4gKwkJCWFkYXB0ZXItPm51bV94ZHBfcXVldWVzKTsKPj4+PiArCQlmb3IgKGkg
PSAwOyBpIDwgbnVtX3F1ZXVlczsgaSsrKQo+Pj4+ICAgIAkJCWlmIChhZGFwdGVyLT54ZHBfcmlu
Z1tpXS0+eHNrX3Bvb2wpCj4+Pj4gICAgCQkJCSh2b2lkKWl4Z2JlX3hza193YWtldXAoYWRhcHRl
ci0+bmV0ZGV2LCBpLAo+Pj4+ICAgIAkJCQkJCSAgICAgICBYRFBfV0FLRVVQX1JYKTsKPj4+PiAr
CX0KPj4+PiAgICAJcmV0dXJuIDA7Cj4+Pj4gICAgfQo+Pj4+IC0tIAo+Pj4+IDIuMTEuMAo+Pj4+
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
