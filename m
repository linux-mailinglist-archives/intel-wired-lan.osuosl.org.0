Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2925C4EB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2019 23:20:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1CA75868F7;
	Mon,  1 Jul 2019 21:20:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m6gQM41INhpM; Mon,  1 Jul 2019 21:20:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A9B386758;
	Mon,  1 Jul 2019 21:20:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 365971BF32C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2019 21:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 31E992000D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2019 21:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aIstxZbUEVei for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2019 21:20:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 5F0221FD16
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2019 21:20:08 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id m14so12245843qka.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 01 Jul 2019 14:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=TWsp+Ci3cG3EdUPzHwmfsrPWgFxsFW/NIRYtp0vKG3U=;
 b=RiaOTsErZ8KcpskY5SXl3c3TcBuY7EwdEWSu6UOS7bLuPpKXnSaNyw4YciJKziq+K/
 hxQ36KSdmRd9vsE9+6MAtKt8Ca83dYFRP3VsCyIQfZ0VFT7Y7uHJ7hdniMzVVrfcfF+A
 ADtI7pHo25Dq+tjdSUqE7nBymQ3lRvFGHqnmK3/E5DPF4MG9bDYyJjKgvsmzhwZRA9aP
 EiwwC4+kSva3Q7bLUT1zGvfbq0azHIUXfyYv+2JbceQyrRg43nMB/GeK48oC5I66xsWP
 uwGz+b1w/iaOW6ulrIASlcVGqybVPIHf5wcWnKyzwp5tywehakQecCO4xtfdjyXUdGBc
 /R3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=TWsp+Ci3cG3EdUPzHwmfsrPWgFxsFW/NIRYtp0vKG3U=;
 b=RX1X9EaemKwGwdXf1qlfCEC/2T2WHs4zoqlDz2gcAamVCbpdVQ6VMOComDPkeDUF5D
 SRhRk54Hb35blNSoDrLOiRytdAm8lu39byRjOYxgN3oJrzdgOMgjhM2fTyHN7HWDU6xe
 fCobXEo1VaxwbMAlaBMggvHuR4qFs5W77ibHwgjldIi4zRwkW5o1OMw9o3Sn2X3oYnHZ
 AaG/UYanhHc0xheV+l3rl3bHYknuNmRUjxFVhj2kr6/feXtyhVNBzJfNatJUzO6sOxJH
 FageKaaqzKN1qQ/DkUZbbyn48Fkr7gbSIyAOwma7zN/HM81+KatmPGFKa1eSaH6ZKGmP
 J0Bw==
X-Gm-Message-State: APjAAAUypzX1xb+wIL8A6uFBK2VXGDmIZrgKnlDWhvpQ3XRj3dkqTTvw
 LtIJn9a2543wBjEepvtnAmRmFA==
X-Google-Smtp-Source: APXvYqxNT9WoAy1VbQKKLaHtJEHrWiC2xU1PxjaTtlvDwBOTIhiNpzI7sTH6WlBksIE11DhFh+oXHA==
X-Received: by 2002:a37:c248:: with SMTP id j8mr12648978qkm.494.1562016007461; 
 Mon, 01 Jul 2019 14:20:07 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id x35sm6256872qta.11.2019.07.01.14.20.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 14:20:07 -0700 (PDT)
Date: Mon, 1 Jul 2019 14:20:02 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <20190701142002.1b17cc0b@cakuba.netronome.com>
In-Reply-To: <07e404eb-f712-b15a-4884-315aff3f7c7d@intel.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
 <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
 <ef7e9469-e7be-647b-8bb1-da29bc01fa2e@intel.com>
 <20190627142534.4f4b8995@cakuba.netronome.com>
 <f0ca817a-02b4-df22-d01b-7bc07171a4dc@intel.com>
 <BAE24CBF-416D-4665-B2C9-CE1F5EAE28FF@gmail.com>
 <07e404eb-f712-b15a-4884-315aff3f7c7d@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 00/11] XDP unaligned chunk placement
 support
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
Cc: daniel@iogearbox.net, netdev@vger.kernel.org, ciara.loftus@intel.com,
 ast@kernel.org, intel-wired-lan@lists.osuosl.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAxIEp1bCAyMDE5IDE1OjQ0OjI5ICswMTAwLCBMYWF0eiwgS2V2aW4gd3JvdGU6Cj4g
T24gMjgvMDYvMjAxOSAyMToyOSwgSm9uYXRoYW4gTGVtb24gd3JvdGU6Cj4gPiBPbiAyOCBKdW4g
MjAxOSwgYXQgOToxOSwgTGFhdHosIEtldmluIHdyb3RlOiAgCj4gPj4gT24gMjcvMDYvMjAxOSAy
MjoyNSwgSmFrdWIgS2ljaW5za2kgd3JvdGU6ICAKPiA+Pj4gSSB0aGluayB0aGF0J3MgdmVyeSBs
aW1pdGluZy7CoCBXaGF0IGlzIHRoZSBjaGFsbGVuZ2UgaW4gcHJvdmlkaW5nCj4gPj4+IGFsaWdu
ZWQgYWRkcmVzc2VzLCBleGFjdGx5PyAgCj4gPj4gVGhlIGNoYWxsZW5nZXMgYXJlIHR3by1mb2xk
Ogo+ID4+IDEpIGl0IHByZXZlbnRzIHVzaW5nIGFyYml0cmFyeSBidWZmZXIgc2l6ZXMsIHdoaWNo
IHdpbGwgYmUgYW4gaXNzdWUgCj4gPj4gc3VwcG9ydGluZyBlLmcuIGp1bWJvIGZyYW1lcyBpbiBm
dXR1cmUuCj4gPj4gMikgaGlnaGVyIGxldmVsIHVzZXItc3BhY2UgZnJhbWV3b3JrcyB3aGljaCBt
YXkgd2FudCB0byB1c2UgQUZfWERQLCAKPiA+PiBzdWNoIGFzIERQREssIGRvIG5vdCBjdXJyZW50
bHkgc3VwcG9ydCBoYXZpbmcgYnVmZmVycyB3aXRoICdmaXhlZCcgCj4gPj4gYWxpZ25tZW50Lgo+
ID4+IMKgwqDCoCBUaGUgcmVhc29uIHRoYXQgRFBESyB1c2VzIGFyYml0cmFyeSBwbGFjZW1lbnQg
aXMgdGhhdDoKPiA+PiDCoMKgwqAgwqDCoMKgIC0gaXQgd291bGQgc3RvcCB0aGluZ3Mgd29ya2lu
ZyBvbiBjZXJ0YWluIE5JQ3Mgd2hpY2ggbmVlZCB0aGUgCj4gPj4gYWN0dWFsIHdyaXRhYmxlIHNw
YWNlIHNwZWNpZmllZCBpbiB1bml0cyBvZiAxayAtIHRoZXJlZm9yZSB3ZSBuZWVkIDJrIAo+ID4+
ICsgbWV0YWRhdGEgc3BhY2UuCj4gPj4gwqDCoMKgIMKgwqDCoCAtIHdlIHBsYWNlIHBhZGRpbmcg
YmV0d2VlbiBidWZmZXJzIHRvIGF2b2lkIGNvbnN0YW50bHkgCj4gPj4gaGl0dGluZyB0aGUgc2Ft
ZSBtZW1vcnkgY2hhbm5lbHMgd2hlbiBhY2Nlc3NpbmcgbWVtb3J5Lgo+ID4+IMKgwqDCoCDCoMKg
wqAgLSBpdCBhbGxvd3MgdGhlIGFwcGxpY2F0aW9uIHRvIGNob29zZSB0aGUgYWN0dWFsIGJ1ZmZl
ciBzaXplIAo+ID4+IGl0IHdhbnRzIHRvIHVzZS4KPiA+PiDCoMKgwqAgV2UgbWFrZSB1c2Ugb2Yg
dGhlIGFib3ZlIHRvIGFsbG93IHVzIHRvIHNwZWVkIHVwIHByb2Nlc3NpbmcgCj4gPj4gc2lnbmlm
aWNhbnRseSBhbmQgYWxzbyByZWR1Y2UgdGhlIHBhY2tldCBidWZmZXIgbWVtb3J5IHNpemUuCj4g
Pj4KPiA+PiDCoMKgwqAgTm90IGhhdmluZyBhcmJpdHJhcnkgYnVmZmVyIGFsaWdubWVudCBhbHNv
IG1lYW5zIGFuIEFGX1hEUCBkcml2ZXIgCj4gPj4gZm9yIERQREsgY2Fubm90IGJlIGEgZHJvcC1p
biByZXBsYWNlbWVudCBmb3IgZXhpc3RpbmcgZHJpdmVycyBpbiAKPiA+PiB0aG9zZSBmcmFtZXdv
cmtzLiBFdmVuIHdpdGggYSBuZXcgY2FwYWJpbGl0eSB0byBhbGxvdyBhbiBhcmJpdHJhcnkgCj4g
Pj4gYnVmZmVyIGFsaWdubWVudCwgZXhpc3RpbmcgYXBwcyB3aWxsIG5lZWQgdG8gYmUgbW9kaWZp
ZWQgdG8gdXNlIHRoYXQgCj4gPj4gbmV3IGNhcGFiaWxpdHkuICAKPiA+Cj4gPiBTaW5jZSBhbGwg
YnVmZmVycyBpbiB0aGUgdW1lbSBhcmUgdGhlIHNhbWUgY2h1bmsgc2l6ZSwgdGhlIG9yaWdpbmFs
IAo+ID4gYnVmZmVyCj4gPiBhZGRyZXNzIGNhbiBiZSByZWNhbGN1bGF0ZWQgd2l0aCBzb21lIG11
bHRpcGx5L3NoaWZ0IG1hdGguIEhvd2V2ZXIsIAo+ID4gdGhpcyBpcwo+ID4gbW9yZSBleHBlbnNp
dmUgdGhhbiBqdXN0IGEgbWFzayBvcGVyYXRpb24uICAKPiAKPiBZZXMsIHdlIGNhbiBkbyB0aGlz
LgoKVGhhdCdkIGJlIGJlc3QsIGNhbiBEUERLIHJlYXNvbmFibHkgZ3VhcmFudGVlIHRoZSBzbGlj
aW5nIGlzIHVuaWZvcm0/CkUuZy4gaXQncyBub3QgZGVzcGVyYXRlIGJ1ZmZlciBwb29scyB3aXRo
IGRpZmZlcmVudCBiYXNlcz8KCj4gQW5vdGhlciBvcHRpb24gd2UgaGF2ZSBpcyB0byBhZGQgYSBz
b2NrZXQgb3B0aW9uIGZvciBxdWVyeWluZyB0aGUgCj4gbWV0YWRhdGEgbGVuZ3RoIGZyb20gdGhl
IGRyaXZlciAoYXNzdW1pbmcgaXQgZG9lc24ndCB2YXJ5IHBlciBwYWNrZXQpLiAKPiBXZSBjYW4g
dXNlIHRoYXQgaW5mb3JtYXRpb24gdG8gZ2V0IGJhY2sgdG8gdGhlIG9yaWdpbmFsIGFkZHJlc3Mg
dXNpbmcgCj4gc3VidHJhY3Rpb24uCgpVbmZvcnR1bmF0ZWx5IHRoZSBtZXRhZGF0YSBkZXBlbmRz
IG9uIHRoZSBwYWNrZXQgYW5kIGhvdyBtdWNoIGluZm8gCnRoZSBkZXZpY2Ugd2FzIGFibGUgdG8g
ZXh0cmFjdC4gIFNvIGl0J3MgdmFyaWFibGUgbGVuZ3RoLgoKPiBBbHRlcm5hdGl2ZWx5LCB3ZSBj
YW4gY2hhbmdlIHRoZSBSeCBkZXNjcmlwdG9yIGZvcm1hdCB0byBpbmNsdWRlIHRoZSAKPiBtZXRh
ZGF0YSBsZW5ndGguIFdlIGNvdWxkIGRvIHRoaXMgaW4gYSBjb3VwbGUgb2Ygd2F5cywgZm9yIGV4
YW1wbGUsIAo+IHJhdGhlciB0aGFuIHJldHVybmluZyB0aGUgYWRkcmVzcyBhcyB0aGUgc3RhcnQg
b2YgdGhlIHBhY2tldCwgaW5zdGVhZCAKPiByZXR1cm4gdGhlIGJ1ZmZlciBhZGRyZXNzIHRoYXQg
d2FzIHBhc3NlZCBpbiwgYW5kIGFkZGluZyBhbm90aGVyIDE2LWJpdCAKPiBmaWVsZCB0byBzcGVj
aWZ5IHRoZSBzdGFydCBvZiBwYWNrZXQgb2Zmc2V0IHdpdGggdGhhdCBidWZmZXIuIElmIHVzaW5n
IAo+IGFub3RoZXIgMTYtYml0cyBvZiB0aGUgZGVzY3JpcHRvciBzcGFjZSBpcyBub3QgZGVzaXJh
YmxlLCBhbiBhbHRlcm5hdGl2ZSAKPiBjb3VsZCBiZSB0byBsaW1pdCB1bWVtIHNpemVzIHRvIGUu
Zy4gMl40OCBiaXRzICgyNTYgdGVyYWJ5dGVzIHNob3VsZCBiZSAKPiBlbm91Z2gsIHJpZ2h0IDot
KSApIGFuZCB1c2UgdGhlIHJlbWFpbmluZyAxNiBiaXRzIG9mIHRoZSBhZGRyZXNzIGFzIGEgCj4g
cGFja2V0IG9mZnNldC4gT3RoZXIgdmFyaWF0aW9ucyBvbiB0aGVzZSBhcHByb2FjaCBhcmUgb2J2
aW91c2x5IHBvc3NpYmxlIAo+IHRvby4KClNlZW1zIHJlYXNvbmFibGUgdG8gbWUuLgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
