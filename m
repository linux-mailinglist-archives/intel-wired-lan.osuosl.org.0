Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8389C5A5E4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 22:29:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 063D287694;
	Fri, 28 Jun 2019 20:29:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-Fc58uk0Nk4; Fri, 28 Jun 2019 20:29:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA44087601;
	Fri, 28 Jun 2019 20:29:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EBECB1BF343
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 20:29:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E887488265
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 20:29:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Og4bPvwbvwMJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 20:29:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6AF6E86F12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 20:29:04 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id e5so3841640pls.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 13:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bnEv+X6GYtFiiNujnuspHfQ9vua0ZpFbOcCMm5XfbHM=;
 b=l+e/PGzpskxEFOlTnLnrRwwaulooIqK74WgIkScA6HRkwzfRCZ/7B1LKz5weRN4t/M
 /YBioajcNC6WBbc8aulGwaVlaXzC48XHY3DoZ6FnoXctvndgSG8M3CY8m0Wdfs5PrMj+
 wW5ZI+TVtOFxOmIEQayasbUFZUKDs+kYVwdaSY0eaSqv33hxy55JJzZO2v6z8Vfxclhy
 usVo0Vtziyr4Y8oBufCzP7UpTj3mRnZBywhSYLP04QDr+ilYa4F9WzahhgX9HnUSXW5b
 yGW68vIJqYpA/RLFrsvVWjkxizf/zFH2gBMXppKaDwstfC6UYSXnYzFZE43P7wzpl/k8
 7N7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bnEv+X6GYtFiiNujnuspHfQ9vua0ZpFbOcCMm5XfbHM=;
 b=HMOmX5fqDlzteNcZlkTN/eOiq5maGhNYiEmCXpGdZrIAyT61/EXX2SduKUti6RiOd3
 Y+EdOsVx7pDlL+g9c5QZfgAjqLWaN5IGjvr4DdUv3oHU7bvkfmpzOWFmBB2Q+6IINbvO
 16WW6VdPdGxqS7brhf4Wmn2lIpWxL771JNIAxNXkqLvBDsAogkZiF6LDdZk8ijnzPpki
 0X7Quup+MBGSCk6tTcbVLYx5Mse+MimngTV+v4Ir/e6a4lneARyaJkmqO798IB4tLo9G
 iE52dKnmFJKOsf5PixZdMEbW7hk9Ucu9JLuXx04bOukOGaZfnNgUkeHXjHEDEQpsZ23u
 1xmg==
X-Gm-Message-State: APjAAAW+m1F39XGPj6OJOFKrr7mq523MS4uM5Recqa+Qbg3vJsKE9DfU
 Hk8FaNOfMHv7PRou96hBWvs=
X-Google-Smtp-Source: APXvYqzWa8U43FknwvBkH/7zwA5fqURcefu1/ahKJcv8NB+c8DMHbs/Cdwiqmx9Ug400ur6gkg0Qcw==
X-Received: by 2002:a17:902:8a8a:: with SMTP id
 p10mr14126514plo.88.1561753744049; 
 Fri, 28 Jun 2019 13:29:04 -0700 (PDT)
Received: from [172.20.54.151] ([2620:10d:c090:200::e695])
 by smtp.gmail.com with ESMTPSA id r15sm4509802pfc.162.2019.06.28.13.29.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 13:29:03 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Laatz, Kevin" <kevin.laatz@intel.com>
Date: Fri, 28 Jun 2019 13:29:02 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <BAE24CBF-416D-4665-B2C9-CE1F5EAE28FF@gmail.com>
In-Reply-To: <f0ca817a-02b4-df22-d01b-7bc07171a4dc@intel.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
 <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
 <ef7e9469-e7be-647b-8bb1-da29bc01fa2e@intel.com>
 <20190627142534.4f4b8995@cakuba.netronome.com>
 <f0ca817a-02b4-df22-d01b-7bc07171a4dc@intel.com>
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyOCBKdW4gMjAxOSwgYXQgOToxOSwgTGFhdHosIEtldmluIHdyb3RlOgoKPiBPbiAyNy8w
Ni8yMDE5IDIyOjI1LCBKYWt1YiBLaWNpbnNraSB3cm90ZToKPj4gT24gVGh1LCAyNyBKdW4gMjAx
OSAxMjoxNDo1MCArMDEwMCwgTGFhdHosIEtldmluIHdyb3RlOgo+Pj4gT24gdGhlIGFwcGxpY2F0
aW9uIHNpZGUgKHhkcHNvY2spLCB3ZSBkb24ndCBoYXZlIHRvIHdvcnJ5IGFib3V0IHRoZSAKPj4+
IHVzZXIKPj4+IGRlZmluZWQgaGVhZHJvb20sIHNpbmNlIGl0IGlzIDAsIHNvIHdlIG9ubHkgbmVl
ZCB0byBhY2NvdW50IGZvciB0aGUKPj4+IFhEUF9QQUNLRVRfSEVBRFJPT00gd2hlbiBjb21wdXRp
bmcgdGhlIG9yaWdpbmFsIGFkZHJlc3MgKGluIHRoZSAKPj4+IGRlZmF1bHQKPj4+IHNjZW5hcmlv
KS4KPj4gVGhhdCBhc3N1bWVzIHNwZWNpZmljIGxheW91dCBmb3IgdGhlIGRhdGEgaW5zaWRlIHRo
ZSBidWZmZXIuICBTb21lIAo+PiBOSUNzCj4+IHdpbGwgcHJlcGVuZCBpbmZvcm1hdGlvbiBsaWtl
IHRpbWVzdGFtcCB0byB0aGUgcGFja2V0LCBtZWFuaW5nIHRoZQo+PiBwYWNrZXQgd291bGQgc3Rh
cnQgYXQgb2Zmc2V0IFhEUF9QQUNLRVRfSEVBRFJPT00gKyBtZXRhZGF0YSBsZW4uLgo+Cj4gWWVz
LCBpZiBOSUNzIHByZXBlbmQgZXh0cmEgZGF0YSB0byB0aGUgcGFja2V0IHRoYXQgd291bGQgYmUg
YSBwcm9ibGVtIAo+IGZvcgo+IHVzaW5nIHRoaXMgZmVhdHVyZSBpbiBpc29sYXRpb24uIEhvd2V2
ZXIsIGlmIHdlIGFsc28gYWRkIGluIHN1cHBvcnQgCj4gZm9yIGluLW9yZGVyCj4gUlggYW5kIFRY
IHJpbmdzLCB0aGF0IHdvdWxkIG5vIGxvbmdlciBiZSBhbiBpc3N1ZS4gSG93ZXZlciwgZXZlbiBm
b3IgCj4gTklDcwo+IHdoaWNoIGRvIHByZXBlbmQgZGF0YSwgdGhpcyBwYXRjaHNldCBzaG91bGQg
bm90IGJyZWFrIGFueXRoaW5nIHRoYXQgaXMgCj4gY3VycmVudGx5Cj4gd29ya2luZy4KCkkgcmVh
ZCB0aGlzIGFzICJ0aGUgY29ycmVjdCBidWZmZXIgYWRkcmVzcyBpcyByZWNvdmVyZWQgZnJvbSB0
aGUgc2hhZG93IApyaW5nIi4KSSdtIG5vdCBzdXJlIEknbSBjb21mb3J0YWJsZSB3aXRoIHRoYXQs
IGFuZCBJJ20gYWxzbyBub3Qgc29sZCBvbiAKaW4tb3JkZXIgY29tcGxldGlvbgpmb3IgdGhlIFJY
L1RYIHJpbmdzLgoKCgo+PiBJIHRoaW5rIHRoYXQncyB2ZXJ5IGxpbWl0aW5nLiAgV2hhdCBpcyB0
aGUgY2hhbGxlbmdlIGluIHByb3ZpZGluZwo+PiBhbGlnbmVkIGFkZHJlc3NlcywgZXhhY3RseT8K
PiBUaGUgY2hhbGxlbmdlcyBhcmUgdHdvLWZvbGQ6Cj4gMSkgaXQgcHJldmVudHMgdXNpbmcgYXJi
aXRyYXJ5IGJ1ZmZlciBzaXplcywgd2hpY2ggd2lsbCBiZSBhbiBpc3N1ZSAKPiBzdXBwb3J0aW5n
IGUuZy4ganVtYm8gZnJhbWVzIGluIGZ1dHVyZS4KPiAyKSBoaWdoZXIgbGV2ZWwgdXNlci1zcGFj
ZSBmcmFtZXdvcmtzIHdoaWNoIG1heSB3YW50IHRvIHVzZSBBRl9YRFAsIAo+IHN1Y2ggYXMgRFBE
SywgZG8gbm90IGN1cnJlbnRseSBzdXBwb3J0IGhhdmluZyBidWZmZXJzIHdpdGggJ2ZpeGVkJyAK
PiBhbGlnbm1lbnQuCj4gwqDCoMKgIFRoZSByZWFzb24gdGhhdCBEUERLIHVzZXMgYXJiaXRyYXJ5
IHBsYWNlbWVudCBpcyB0aGF0Ogo+IMKgwqDCoCDCoMKgwqAgLSBpdCB3b3VsZCBzdG9wIHRoaW5n
cyB3b3JraW5nIG9uIGNlcnRhaW4gTklDcyB3aGljaCAKPiBuZWVkIHRoZSBhY3R1YWwgd3JpdGFi
bGUgc3BhY2Ugc3BlY2lmaWVkIGluIHVuaXRzIG9mIDFrIC0gdGhlcmVmb3JlIHdlIAo+IG5lZWQg
MmsgKyBtZXRhZGF0YSBzcGFjZS4KPiDCoMKgwqAgwqDCoMKgIC0gd2UgcGxhY2UgcGFkZGluZyBi
ZXR3ZWVuIGJ1ZmZlcnMgdG8gYXZvaWQgY29uc3RhbnRseSAKPiBoaXR0aW5nIHRoZSBzYW1lIG1l
bW9yeSBjaGFubmVscyB3aGVuIGFjY2Vzc2luZyBtZW1vcnkuCj4gwqDCoMKgIMKgwqDCoCAtIGl0
IGFsbG93cyB0aGUgYXBwbGljYXRpb24gdG8gY2hvb3NlIHRoZSBhY3R1YWwgYnVmZmVyIAo+IHNp
emUgaXQgd2FudHMgdG8gdXNlLgo+IMKgwqDCoCBXZSBtYWtlIHVzZSBvZiB0aGUgYWJvdmUgdG8g
YWxsb3cgdXMgdG8gc3BlZWQgdXAgcHJvY2Vzc2luZyAKPiBzaWduaWZpY2FudGx5IGFuZCBhbHNv
IHJlZHVjZSB0aGUgcGFja2V0IGJ1ZmZlciBtZW1vcnkgc2l6ZS4KPgo+IMKgwqDCoCBOb3QgaGF2
aW5nIGFyYml0cmFyeSBidWZmZXIgYWxpZ25tZW50IGFsc28gbWVhbnMgYW4gQUZfWERQIAo+IGRy
aXZlciBmb3IgRFBESyBjYW5ub3QgYmUgYSBkcm9wLWluIHJlcGxhY2VtZW50IGZvciBleGlzdGlu
ZyBkcml2ZXJzIAo+IGluIHRob3NlIGZyYW1ld29ya3MuIEV2ZW4gd2l0aCBhIG5ldyBjYXBhYmls
aXR5IHRvIGFsbG93IGFuIGFyYml0cmFyeSAKPiBidWZmZXIgYWxpZ25tZW50LCBleGlzdGluZyBh
cHBzIHdpbGwgbmVlZCB0byBiZSBtb2RpZmllZCB0byB1c2UgdGhhdCAKPiBuZXcgY2FwYWJpbGl0
eS4KClNpbmNlIGFsbCBidWZmZXJzIGluIHRoZSB1bWVtIGFyZSB0aGUgc2FtZSBjaHVuayBzaXpl
LCB0aGUgb3JpZ2luYWwgCmJ1ZmZlcgphZGRyZXNzIGNhbiBiZSByZWNhbGN1bGF0ZWQgd2l0aCBz
b21lIG11bHRpcGx5L3NoaWZ0IG1hdGguICBIb3dldmVyLCAKdGhpcyBpcwptb3JlIGV4cGVuc2l2
ZSB0aGFuIGp1c3QgYSBtYXNrIG9wZXJhdGlvbi4KLS0gCkpvbmF0aGFuCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
