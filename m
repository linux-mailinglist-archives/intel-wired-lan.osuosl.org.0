Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 541682486A8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Aug 2020 16:05:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6998585DB1;
	Tue, 18 Aug 2020 14:05:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lx5zPhJPV1eQ; Tue, 18 Aug 2020 14:05:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CEF385E14;
	Tue, 18 Aug 2020 14:04:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E24FD1BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 14:04:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DD7F885DB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 14:04:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H5sb1l-IIu2a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Aug 2020 14:04:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DE41A85C88
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 14:04:56 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id f18so15455154wmc.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 07:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6x1Ak2P3rV0lY04CxHSGtOsvo0mLh15m+1LZrs0+dgI=;
 b=aiKEvHMqkueSWM03yfT17ZRgLqjY2GdNq8EoKA3Sd6Bk5TE9LVFEPPqSgwg5H9IeZ8
 pP02JXt0qzGw//wJAa/ZJd0oE89Bye8xofEc7UrTauDtg4t3oFTRVekkcJRuYaWEAIZ6
 NZvug9L+YfJCvhnzqxT99Kf3Tky9mRIxhKNHJlU+bbmbVc5F7hoqKna3h7513ORDuTBD
 sVerRDRfMxezHwwVq1PoV+v6LjYnSCHl4fu12HP99KdWQVKAZw3geEtE95+OOIr5ZnaJ
 HF0EvwijMDu+ZaHHYncZGHgO+ZaKZp1wBH8gAm7aanVmHF+k8OF0c/vCoKcuVo2Q+4zN
 5Gmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6x1Ak2P3rV0lY04CxHSGtOsvo0mLh15m+1LZrs0+dgI=;
 b=qdo4qKBpidGgoFm2xJajZQp9rAHZ7QcSGcHdk2NEKLDoktAkeQKvVRqcSLSkHtNs8m
 tZkrT6ahtTJitqu+Thby4WvOgOZgbekTXgFVe9HYiQ8zm9TqSHX5RWg/Bt5GQ+SkN1Mw
 bjWTrs44pIkB8Hn6eb60Hj6HXitHMIw3febcZpmNSu73wuo3Em+qzwb+9D4o/RDlJoSZ
 QWA8IKag7pTKLxfYZ1617pY7absqArb36NUaNCONbIBLjalPftzcOyamfnAxHqOHwWQV
 YweT9g2LfcEnzZfOOfARUmep9GblbbanOwReOEagHLzXFAiIMIFAePD9flAo6CjWZXqI
 qUYA==
X-Gm-Message-State: AOAM533ocoP6tRfApl8qREmSYZDkRWKqP61TGqmhqn7xtRylaXWdVrKd
 5GrqrKRBJlnCNl1SkAEKEINIFh+oresIBxZ8xFI=
X-Google-Smtp-Source: ABdhPJyVEkaR2gT8OnMJWFLL+UQECo20ochAdHklbD8V2jvT8bdtXvpJ4NDdcX90QarezriwZAu5a/eI4F9N3sfxge0=
X-Received: by 2002:a1c:3b89:: with SMTP id i131mr133157wma.30.1597759495288; 
 Tue, 18 Aug 2020 07:04:55 -0700 (PDT)
MIME-Version: 1.0
References: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
In-Reply-To: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 18 Aug 2020 16:04:43 +0200
Message-ID: <CAJ+HfNi2B+2KYP9A7yCfFUhfUBd=sFPeuGbNZMjhNSdq3GEpMg@mail.gmail.com>
To: Li RongQing <lirongqing@baidu.com>
Subject: Re: [Intel-wired-lan] [PATCH 0/2] intel/xdp fixes for fliping rx
 buffer
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Netdev <netdev@vger.kernel.org>, Maciej <maciej.machnikowski@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAxNyBKdWwgMjAyMCBhdCAwODoyNCwgTGkgUm9uZ1FpbmcgPGxpcm9uZ3FpbmdAYmFp
ZHUuY29tPiB3cm90ZToKPgo+IFRoaXMgZml4ZXMgaWNlL2k0MGUvaXhnYmUvaXhnYmV2Zl9yeF9i
dWZmZXJfZmxpcCBpbgo+IGNvcHkgbW9kZSB4ZHAgdGhhdCBjYW4gbGVhZCB0byBkYXRhIGNvcnJ1
cHRpb24uCj4KPiBJIHNwbGl0IHR3byBwYXRjaGVzLCBzaW5jZSBpNDBlL3hnYmUvaXhnYmV2ZiBz
dXBwb3J0cyB4c2sKPiByZWNlaXZpbmcgZnJvbSA0LjE4LCBwdXQgdGhlaXIgZml4ZXMgaW4gYSBw
YXRjaAo+CgpMaSwgc29ycnkgZm9yIHRoZSBsb29vbmcgbGF0ZW5jeS4gSSB0b29rIGEgbG9vb25n
IHZhY2F0aW9uLiA6LVAKClRoYW5rcyBmb3IgdGFraW5nIGEgbG9vayBhdCB0aGlzLCBidXQgSSBi
ZWxpZXZlIHRoaXMgaXMgbm90IGEgYnVnLgoKVGhlIEludGVsIEV0aGVybmV0IGRyaXZlcnMgKG9i
dmlvdXNseSBub24temVyb2NvcHkgQUZfWERQIC0tICJnb29kIG9sJwpYRFAiKSB1c2UgYSBwYWdl
IHJldXNlIGFsZ29yaXRobS4KCkJhc2ljIGlkZWEgaXMgdGhhdCBhIHBhZ2UgaXMgYWxsb2NhdGVk
IGZyb20gdGhlIHBhZ2UgYWxsb2NhdG9yCihpNDBlX2FsbG9jX21hcHBlZF9wYWdlKCkpLiBUaGUg
cmVmY291bnQgaXMgaW5jcmVhc2VkIHRvClVTSFJUX01BWC4gVGhlIHBhZ2UgaXMgc3BsaXQgaW50
byB0d28gY2h1bmtzIChzaW1wbGlmaWVkKS4gSWYgdGhlcmUncwpvbmUgdXNlciBvZiB0aGUgcGFn
ZSwgdGhlIHBhZ2UgY2FuIGJlIHJldXNlZCAoZmxpcHBlZCkuIElmIG5vdCwgYSBuZXcKcGFnZSBu
ZWVkcyB0byBiZSBhbGxvY2F0ZWQgKHdpdGggdGhlIGxhcmdlIHJlZmNvdW50KS4KClNvLCB0aGUg
aWRlYSBpcyB0aGF0IHVzdWFsbHkgdGhlIHBhZ2UgY2FuIGJlIHJldXNlZCAoZmxpcHBlZCksIGFu
ZCB0aGUKcGFnZSBvbmx5IG5lZWRzIHRvIGJlICJwdXQiIG5vdCAiZ2V0IiBzaW5jZSB0aGUgcmVm
Y291bnQgd2FzIGluaXRhbGx5CmJ1bXBlZCB0byBhIGxhcmdlIHZhbHVlLgoKQWxsIGZyYW1lcyAo
ZXhjZXB0IFhEUF9EUk9QIHdoaWNoIGNhbiBiZSByZXVzZWQgZGlyZWN0bHkpICJkaWUiIHZpYQpw
YWdlX2ZyYWdfZnJlZSgpIHdoaWNoIGRlY3JlYXNlcyB0aGUgcGFnZSByZWZjb3VudCwgYW5kIGZy
ZWVzIHRoZSBwYWdlCmlmIHRoZSByZWZjb3VudCBpcyB6ZXJvLgoKTGV0J3MgdGFrZSBzb21lIHNj
ZW5hcmlvcyBhcyBleGFtcGxlczoKCjEuIEEgZnJhbWUgaXMgcmVjZWl2ZWQgaW4gInZhbmlsbGEi
IFhEUCAoTUVNX1RZUEVfUEFHRV9TSEFSRUQpLCBhbmQKICAgdGhlIFhEUCBwcm9ncmFtIHZlcmRp
Y3QgaXMgWERQX1RYLiBUaGUgZnJhbWUgd2lsbCBiZSBwbGFjZWQgb24gdGhlCiAgIEhXIFR4IHJp
bmcsIGFuZCBmcmVlZCogKGFzeW5jKSBpbiBpNDBlX2NsZWFuX3R4X2lycToKICAgICAgICAvKiBm
cmVlIHRoZSBza2IvWERQIGRhdGEgKi8KICAgICAgICBpZiAocmluZ19pc194ZHAodHhfcmluZykp
CiAgICAgICAgICAgIHhkcF9yZXR1cm5fZnJhbWUodHhfYnVmLT54ZHBmKTsgLy8gY2FsbHMgcGFn
ZV9mcmFnX2ZyZWUoKQoKMi4gQSBmcmFtZSBpcyBwYXNzZWQgdG8gdGhlIHN0YWNrLCBldmVudHVh
bGx5IGl0J3MgZnJlZWQqIHZpYQogICBza2JfZnJlZV9mcmFnKCkuCgozLiBBIGZyYW1lIGlzIHBh
c3NlZCB0byBhbiBBRl9YRFAgc29ja2V0LiBUaGUgZGF0YSBpcyBjb3BpZWQgdG8gdGhlCiAgIHNv
Y2tldCBkYXRhIGFyZWEsIGFuZCB0aGUgZnJhbWUgaXMgZGlyZWN0bHkgZnJlZWQqLgoKTm90IHRo
ZSAqIGJ5IHRoZSBmcmVlZC4gQWN0dWFsbHkgZnJlZWluZyBoZXJlIG1lYW5zIGNhbGxpbmcKcGFn
ZV9mcmFnX2ZyZWUoKSwgd2hpY2ggbWVhbnMgZGVjcmVhc2luZyB0aGUgcmVmY291bnQuIFRoZSBw
YWdlIHJldXNlCmFsZ29yaXRobSBtYWtlcyBzdXJlIHRoYXQgdGhlIGJ1ZmZlcnMgYXJlIG5vdCBz
dGFsZS4KClRoZSBvbmx5IGRpZmZlcmVuY2UgZnJvbSBYRFBfVFggYW5kIFhEUF9ESVJFQ1QgdG8g
ZGV2L2NwdW1hcHMsCmNvbXBhcmVkIHRvIEFGX1hEUCBzb2NrZXRzIGlzIHRoYXQgdGhlIGxhdHRl
ciBjYWxscyBwYWdlX2ZyYWdfZnJlZSgpCmRpcmVjdGx5LCB3aGVyZWFzIHRoZSBvdGhlciBkb2Vz
IGl0IGFzeW5jaHJvbm91cyBmcm9tIHRoZSBUeCBjbGVhbiB1cApwaGFzZS4KCkxldCBtZSBrbm93
IGlmIGl0J3Mgc3RpbGwgbm90IGNsZWFyLCBidXQgdGhlIGJvdHRvbSBsaW5lIGlzIHRoYXQgbm9u
ZQpvZiB0aGVzZSBwYXRjaGVzIGFyZSBuZWVkZWQuCgoKVGhhbmtzIQpCasO2cm4KCgo+IExpIFJv
bmdRaW5nICgyKToKPiAgIHhkcDogaTQwZTogaXhnYmU6IGl4Z2JldmY6IG5vdCBmbGlwIHJ4IGJ1
ZmZlciBmb3IgY29weSBtb2RlIHhkcAo+ICAgaWNlL3hkcDogbm90IGFkanVzdCByeCBidWZmZXIg
Zm9yIGNvcHkgbW9kZSB4ZHAKPgo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfdHhyeC5jICAgICAgIHwgNSArKysrLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3R4cnguYyAgICAgICAgIHwgNSArKysrLQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9peGdiZS9peGdiZV9tYWluLmMgICAgIHwgNSArKysrLQo+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9peGdiZXZmL2l4Z2JldmZfbWFpbi5jIHwgNSArKysrLQo+ICBpbmNsdWRlL25l
dC94ZHAuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMyArKysKPiAgbmV0L3hk
cC94c2suYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDQgKysrLQo+ICA2
IGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPiAtLQo+
IDIuMTYuMgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
