Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A473523479
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 15:41:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0794D400F1;
	Wed, 11 May 2022 13:41:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0EKha2QLQAT8; Wed, 11 May 2022 13:41:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E373440B7A;
	Wed, 11 May 2022 13:41:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 53B061BF20F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 07:59:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 40E3860C07
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 07:59:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I19FztbDl14a for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 07:59:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2EAE60881
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 07:59:48 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 cx11-20020a17090afd8b00b001d9fe5965b3so4190584pjb.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 00:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=peT7r8pDYHzB7rvEWL8t+lzxBsS2mteBeDziDEpDcxM=;
 b=fE4YTvXu0C/FrN8OkeXnm0r8eTWhe+lomko+A82CJexvcLb1a/Fp5vBVlncz4fCz5Q
 Q7PfUwnc3FS61FcjVFgNQ3QB33Hp5pCRtG3rqAHAw9RH6Gb1upkLDC/6hO6XPEhM8iOg
 cuPsYbZIoMBagF2MrMmcBZsaietcvTgS+/AjIdluAIjtfAHndhvof+LxPt1R8SfuwBy7
 GRZAn2QfTqMrbzaBgfcoPwBPnqc/NiSc1PnlSu05wlmYeIVbuLjGFan6JI1owGtB9Jrx
 CKg0fTi8inkJnR3O9MGKXVuJj0qi5ctgnZU4Hc2Ha4galV0PE1CjkJTO5txy9rlU5GrN
 dH6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=peT7r8pDYHzB7rvEWL8t+lzxBsS2mteBeDziDEpDcxM=;
 b=52EsCmOxe6+ZXRxHgvWw/caMtlTaJ7amSsY5elykbOSuDer4lit7ZZLLmiCxnOXLGz
 Xs66O7gRBlvW4o7NxLBt4jMe1MrBRtBXCYXQ9zLYiJMkfQrMTMy/Wi6s5SdKnXPTUM+e
 ffyEhnT8WUYXWhjFm607IcWR85ZKmpztQIQS8gXEYqhKIi38Gqop3SftqPhxbDhpOmOE
 Au4d4Yqiwt/l1qTRGZjqptVJ9BlYGXP79tawroGMvBSRBjLM9xi7ATvTHBue75g/mniC
 2cAxqL7ANsfgt1DMa3I0zxY9Nq+zAcgV+oqxVXhiEx5ugtzQs4BCg/NVCQairEkE8Tta
 Ch6g==
X-Gm-Message-State: AOAM530cqN575lc23AHAKE59+JGbDHTVKxQEk1ny7W1ZfFWP1THSB81U
 aZW7P52iQeHuqA/SU5jbZks=
X-Google-Smtp-Source: ABdhPJz3YMcCAIB9HfabrwiBVOIssBIbO4SLBM1BBAhSOAV2R/8FT/VP7zGfq3FTxoKAc805KiBh6Q==
X-Received: by 2002:a17:90b:4b0d:b0:1dc:3d21:72c1 with SMTP id
 lx13-20020a17090b4b0d00b001dc3d2172c1mr4035859pjb.21.1652255987875; 
 Wed, 11 May 2022 00:59:47 -0700 (PDT)
Received: from smtpclient.apple ([223.104.68.106])
 by smtp.gmail.com with ESMTPSA id
 c9-20020a621c09000000b0050dc762814bsm946308pfc.37.2022.05.11.00.59.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 May 2022 00:59:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.80.82.1.1\))
From: lixue liang <lixue.liang5086@gmail.com>
In-Reply-To: <8d7e86ad-932c-d08c-3131-762edd553b22@molgen.mpg.de>
Date: Wed, 11 May 2022 15:59:41 +0800
Message-Id: <B0201E3D-98F5-490E-81CF-45B16A06760D@gmail.com>
References: <20220510012159.8924-1-lianglixue@greatwall.com.cn>
 <8d7e86ad-932c-d08c-3131-762edd553b22@molgen.mpg.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: Apple Mail (2.3696.80.82.1.1)
X-Mailman-Approved-At: Wed, 11 May 2022 13:40:58 +0000
Subject: Re: [Intel-wired-lan] [PATCH] igb_ethtool: fix efficiency issues in
 igb_set_eeprom
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
Cc: Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwKClRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHlvdXIgcmVwbHkgYW5kIHN1Z2dlc3Rp
b25zLkkgaGF2ZSBtYWRlIHRoZSBjb3JyZXNwb25kaW5nIGNoYW5nZXMgYWNjb3JkaW5nIHRvIHlv
dXIgc3VnZ2VzdGlvbi4KCkluIGFkZGl0aW9uLCBmb3IgdGhlIHByb2JsZW0gdGhhdCB0aGUgaW52
YWxpZCBtYWMgYWRkcmVzcyBjYW5ub3QgbG9hZCB0aGUgaWdiIGRyaXZlciwgSSBwZXJzb25hbGx5
IHRoaW5rIHRoZXJlIGlzIGEgYmV0dGVyIHdheSB0byBtb2RpZnkgaXQsIAphbmQgSSB3aWxsIHJl
c3VibWl0IHRoZSBwYXRjaCBhYm91dCBpZ2JfbWFpbi5jLgoKSXQncyB0aGUgc2FtZSBxdWVzdGlv
biwgYnV0IEkgbWF5IG5vdCBrbm93IGhvdyB0byBjb250aW51ZSBzdWJtaXR0aW5nIG5ldyBwYXRj
aGVzIG9uIHRoaXMgZW1haWwsIHNvcnJ5IGFib3V0IHRoYXQuCgo+IDIwMjLlubQ15pyIMTHml6Ug
MTQ6NDHvvIxQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPiDlhpnpgZPvvJoKPiAK
PiBEZWFyIGxpYW5nbGl4dWUsCj4gCj4gCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgo+IAo+
IEFtIDEwLjA1LjIyIHVtIDAzOjIxIHNjaHJpZWIgbGlhbmdsaXh1ZToKPiAKPiBJdOKAmWQgYmUg
Z3JlYXQgaWYgeW91IHNwZWxsZWQgeW91ciBuYW1lIHdpdGggc3BhY2VzIChpZiBwb3NzaWJsZSku
Cj4gCj4gQWxzbywgY3VycmVudGx5IHlvdXIgR29vZ2xlIE1haWwgYWRkcmVzcyB3b3VsZCBiZSB1
c2VkIGZvciB0aGUgQXV0aG9yIGZpZWxkLiBJZiB5b3Ugd2FudCB0byB1c2UgeW91ciBjb21wYW55
KD8pIGFkZHJlc3MsIHBsZWFzZSBhZGQgYSBGcm9tOiBsaW5lIGF0IHRoZSB0b3AuCj4gCj4+IE1v
ZGlmeSB0aGUgdmFsdWUgb2YgZWVwcm9tIGluIGlnYl9zZXRfZWVwcm9tLiBJZiB0aGUgbWFjIGFk
ZHJlc3MKPj4gb2YgaTIxMCBpcyBjaGFuZ2VkIHRvIGlsbGVnYWwsIHRoZW4gaW4gaWdwX3Byb2Jl
IGluIHRoZQo+PiBpZ2JfbWFpbiBmaWxlLCBpc192YWxpZF9ldGhfYWRkciAobmV0ZGV2LT5kZXZf
YWRkcikgZXhpdHMKPj4gd2l0aCBhbiBlcnJvciwgY2F1c2luZyB0aGUgaWdiIGRyaXZlciB0byBm
YWlsIHRvIGxvYWQsCj4+IHN1Y2ggYXMgZXRodG9vbCAtRSBldGgwIG1hZ2ljIDB4MTUzMzgwODYg
b2Zmc2V0IDAgdmFsdWUgMHgwMS4KPj4gSW4gdGhpcyB3YXksIHRoZSBpZ2IgZHJpdmVyIGNhbiBu
byBsb25nZXIgYmUgbG9hZGVkLAo+PiBhbmQgdGhlIGxlZ2FsIG1hYyBhZGRyZXNzIGNhbm5vdCBi
ZSByZWNvdmVyZWQgdGhyb3VnaCBldGh0b29sOwo+PiBhZGQgaXNfdmFsaWRfZXRoX2FkZHIgdG8g
aWdiX3NldF9lZXByb20gdG8gZGV0ZXJtaW5lCj4+IHdoZXRoZXIgaXQgaXMgbGVnYWwgdG8gcmV3
cml0ZSwgc28gYXMgdG8gYXZvaWQgZHJpdmVyCj4+IGVycm9ycyBkdWUgdG8gaWxsZWdhbCBtYWMg
YWRkcmVzc2VzLgo+IAo+IFBsZWFzZSByZWZsb3cgdGhlIHRleHQgZm9yIDc1IGNoYXJhY3RlcnMg
cGVyIGxpbmUuCj4gCj4+IFNpZ25lZC1vZmYtYnk6IGxpYW5nbGl4dWUgPGxpYW5nbGl4dWVAZ3Jl
YXR3YWxsLmNvbS5jbj4KPj4gLS0tCj4+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9p
Z2JfZXRodG9vbC5jIHwgNyArKysrKysrCj4+IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KykKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfZXRo
dG9vbC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMKPj4g
aW5kZXggMmE1NzgyMDYzZjRjLi4zMDU1NGZkNjg0ZGIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfZXRodG9vbC5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfZXRodG9vbC5jCj4+IEBAIC03OTgsNiArNzk4LDEzIEBA
IHN0YXRpYyBpbnQgaWdiX3NldF9lZXByb20oc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiwKPj4g
CWlmIChlZXByb20tPm1hZ2ljICE9IChody0+dmVuZG9yX2lkIHwgKGh3LT5kZXZpY2VfaWQgPDwg
MTYpKSkKPj4gCQlyZXR1cm4gLUVGQVVMVDsKPj4gKwlpZiAoaHctPm1hYy50eXBlID09IGUxMDAw
X2kyMTAgJiYgZWVwcm9tLT5vZmZzZXQgPT0gMCkgewo+PiArCQlpZiAoIWlzX3ZhbGlkX2V0aGVy
X2FkZHIoYnl0ZXMpKSB7Cj4+ICsJCQlkZXZfZXJyKCZhZGFwdGVyLT5wZGV2LT5kZXYsICJJbnZh
bGlkIE1BQyBBZGRyZXNzIGZvciBpMjEwXG4iKTsKPj4gKwkJCXJldHVybiAtRUlOVkFMOwo+PiAr
CQl9Cj4+ICsJfQo+PiArCj4+IAltYXhfbGVuID0gaHctPm52bS53b3JkX3NpemUgKiAyOwo+PiAJ
Zmlyc3Rfd29yZCA9IGVlcHJvbS0+b2Zmc2V0ID4+IDE7Cj4gCj4gCj4gS2luZCByZWdhcmRzLAo+
IAo+IFBhdWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
