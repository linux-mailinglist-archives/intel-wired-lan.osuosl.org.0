Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C27F76C5501
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 20:33:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C92E41C61;
	Wed, 22 Mar 2023 19:33:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C92E41C61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679513622;
	bh=EBxwu7PQ6rtWt+RGh5wxDhTwOO+xaWVJkx86Y+UXU7Y=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xen0ktxpeiqBr/jqcAxuJtIW+HVP22XpPuGMzgD2bGiVc7FV91+974I5HWc+qmL7i
	 QlyrCTyn/eeb/3BbO1I6S9ciKpevCPDvIdgLKyDEb1zq6u5eDZKX0bZzz0cz3Frn3F
	 toZ8b8YlcxZdDxtCbKoieyItuIkKcJyEuHvpARYup73mTpXRcqsrmvnKqH/JWX01nd
	 3cQd7VsRUGXMqurcwkLvbQ7cSQb21czIojiMDabvCgXtw92edPVKKpgZCT5yiuOc7A
	 QLP+Fyt3Y6L8sQSmqXWk9XVMdFd2QiBS4JK2V2AoxLCnbXenKHKkbuAcvBTx24izOS
	 v3i7+1gFZ1vvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BLPC0F_RTwnQ; Wed, 22 Mar 2023 19:33:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 13CF841C53;
	Wed, 22 Mar 2023 19:33:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13CF841C53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52A561BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2A9E94037C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:33:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A9E94037C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lllg0jnGFRW2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 19:33:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 080BB40017
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 080BB40017
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:33:34 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id u5so20226100plq.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 12:33:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679513614;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=d+yqqsftMo/G3nMdP87H9eSSXuM3ivJL8CNlu7fY/OI=;
 b=vqRDFWjBuBskpRTNmDSD0LmQRwo5OlGdMz0mPfTb17YW8m8/26h391dEFOyLImW5DU
 yxVlO8OHQz+1KDwKzl/MtJ6toS7m5789Zsj7IAVAfAME+iVdDTyJMjATW2SZmivNq1KE
 9idESh3+GvobP2aZQoV5mKnlgKF/yaETdNed9mM/shxYwN/IunSSPDVt1PONUh9xhov+
 qbowhdUREOCXWFuzkRFCatneZo/2avVa4kN6GwIRIenmP4ZUndPlYqaFP+VuS/Yv9AKn
 FBa/vnNxdxPcePwzVXEmw/dnkG6pE7v/q7Pg10V2/D/XXzC2ho4WTmPPrIPNir4s+P41
 G7UQ==
X-Gm-Message-State: AO0yUKV1kTwIGvlJnduSnOfA2b1OAYPHvAkfhOUVAELdQWv5eIqD+Cg9
 5iVAirT6AgGaCidgG59jKCRc1F/SHzHYDRztYYAJ2A==
X-Google-Smtp-Source: AK7set/ypIrUA5qMrYjv6h+zUCLqRU+8WvxjgbyIxdvmItI2pMSceBZC/hQmlHEP6AeqH1Mo+V8r0ywLc7A8XdUOoYM=
X-Received: by 2002:a17:902:708b:b0:1a0:6001:2e0e with SMTP id
 z11-20020a170902708b00b001a060012e0emr1445303plk.8.1679513614220; Wed, 22 Mar
 2023 12:33:34 -0700 (PDT)
MIME-Version: 1.0
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
 <167940643669.2718137.4624187727245854475.stgit@firesoul>
 <CAKH8qBuv-9TXAmi0oTbB0atC4f6jzFcFhAgQ3D89VX45vUU9hw@mail.gmail.com>
 <080640fc-5835-26f1-2b20-ff079bd59182@redhat.com>
 <CAADnVQKsxzLTZ2XoLbmKKLAeaSyvf3P+w8V143iZ4cEWWTEUfw@mail.gmail.com>
 <CAKH8qBuHaaqnV-_mb1Roao9ZDrEHm+1Cj77hPZSRgwxoqphvxQ@mail.gmail.com>
 <CAADnVQ+6FeQ97DZLco3OtbtXQvGUAY4nr5tM++6NEDr+u8m7GQ@mail.gmail.com>
 <CAKH8qBvzVASpUu3M=6ohDqJgJjoR33jQ-J44ESD9SdkvFoGAZg@mail.gmail.com>
 <CAADnVQLC7ma7SWPOcjXhsZ2N0OyVtBr7TzCoT-_Dn+zQ2DEyWg@mail.gmail.com>
In-Reply-To: <CAADnVQLC7ma7SWPOcjXhsZ2N0OyVtBr7TzCoT-_Dn+zQ2DEyWg@mail.gmail.com>
From: Stanislav Fomichev <sdf@google.com>
Date: Wed, 22 Mar 2023 12:33:22 -0700
Message-ID: <CAKH8qBuqxxVM9fSB43cAvvTnaHkA-JNRy=gufCqYf5GNbRA-8g@mail.gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1679513614;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=d+yqqsftMo/G3nMdP87H9eSSXuM3ivJL8CNlu7fY/OI=;
 b=NEt3kWU3db2Pks8j9Xq0f/3Gg2nN6/zbzH1eHceZJasP2v37IlFJ1KevfQqfvU0vrh
 ic3qhbvC4j5ilbP31NUyhYoXwE0K2giaeEz54BIEdo68mGRSm5IkUrh0Ch9qvokAUER4
 4dW2MQVaLSzjK4ED++GjEJjfAiyzEjeFQJ9El8dLJ6/PZRH3fmNwimWwcTgtrmQ/tcZB
 F114eR4A40rp8znRHpAQOfrsHDSRegZvtoW25HPZ82D1T1/EzevfXj0B5eFmGchuGyLW
 eSdElYMeAVgkjpYb0RIAF/5ssBeok6KndQoyoEm+LbeFK0VovW9czaOo7j3ZBuEgeoOR
 Iopg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=NEt3kWU3
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 3/6] selftests/bpf:
 xdp_hw_metadata RX hash return code info
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
Cc: xdp-hints@xdp-project.net, Martin KaFai Lau <martin.lau@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Network Development <netdev@vger.kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, "Song,
 Yoong Siang" <yoong.siang.song@intel.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>, "Ong,
 Boon Leong" <boon.leong.ong@intel.com>, anthony.l.nguyen@intel.com,
 bpf <bpf@vger.kernel.org>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgMTI6MzDigK9QTSBBbGV4ZWkgU3Rhcm92b2l0b3YKPGFs
ZXhlaS5zdGFyb3ZvaXRvdkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXIgMjIsIDIw
MjMgYXQgMTI6MjPigK9QTSBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBnb29nbGUuY29tPiB3cm90
ZToKPiA+Cj4gPiBPbiBXZWQsIE1hciAyMiwgMjAyMyBhdCAxMjoxN+KAr1BNIEFsZXhlaSBTdGFy
b3ZvaXRvdgo+ID4gPGFsZXhlaS5zdGFyb3ZvaXRvdkBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPgo+
ID4gPiBPbiBXZWQsIE1hciAyMiwgMjAyMyBhdCAxMjowMOKAr1BNIFN0YW5pc2xhdiBGb21pY2hl
diA8c2RmQGdvb2dsZS5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gV2VkLCBNYXIgMjIs
IDIwMjMgYXQgOTowN+KAr0FNIEFsZXhlaSBTdGFyb3ZvaXRvdgo+ID4gPiA+IDxhbGV4ZWkuc3Rh
cm92b2l0b3ZAZ21haWwuY29tPiB3cm90ZToKPiA+ID4gPiA+Cj4gPiA+ID4gPiBPbiBXZWQsIE1h
ciAyMiwgMjAyMyBhdCA5OjA14oCvQU0gSmVzcGVyIERhbmdhYXJkIEJyb3Vlcgo+ID4gPiA+ID4g
PGpicm91ZXJAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+IE9uIDIxLzAzLzIwMjMgMTkuNDcsIFN0YW5pc2xhdiBGb21pY2hl
diB3cm90ZToKPiA+ID4gPiA+ID4gPiBPbiBUdWUsIE1hciAyMSwgMjAyMyBhdCA2OjQ34oCvQU0g
SmVzcGVyIERhbmdhYXJkIEJyb3Vlcgo+ID4gPiA+ID4gPiA+IDxicm91ZXJAcmVkaGF0LmNvbT4g
d3JvdGU6Cj4gPiA+ID4gPiA+ID4+Cj4gPiA+ID4gPiA+ID4+IFdoZW4gZHJpdmVyIGRldmVsb3Bl
cnMgYWRkIFhEUC1oaW50cyBrZnVuY3MgZm9yIFJYIGhhc2ggaXQgaXMKPiA+ID4gPiA+ID4gPj4g
cHJhY3RpY2FsIHRvIHByaW50IHRoZSByZXR1cm4gY29kZSBpbiBicGZfcHJpbnRrIHRyYWNlIHBp
cGUgbG9nLgo+ID4gPiA+ID4gPiA+Pgo+ID4gPiA+ID4gPiA+PiBQcmludCBoYXNoIHZhbHVlIGFz
IGEgaGV4IHZhbHVlLCBib3RoIEFGX1hEUCB1c2Vyc3BhY2UgYW5kIGJwZl9wcm9nLAo+ID4gPiA+
ID4gPiA+PiBhcyB0aGlzIG1ha2VzIGl0IGVhc2llciB0byBzcG90IHBvb3IgcXVhbGl0eSBoYXNo
ZXMuCj4gPiA+ID4gPiA+ID4+Cj4gPiA+ID4gPiA+ID4+IFNpZ25lZC1vZmYtYnk6IEplc3BlciBE
YW5nYWFyZCBCcm91ZXIgPGJyb3VlckByZWRoYXQuY29tPgo+ID4gPiA+ID4gPiA+PiAtLS0KPiA+
ID4gPiA+ID4gPj4gICAuLi4vdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRh
ZGF0YS5jICB8ICAgIDkgKysrKysrLS0tCj4gPiA+ID4gPiA+ID4+ICAgdG9vbHMvdGVzdGluZy9z
ZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jICAgICAgfCAgICA1ICsrKystCj4gPiA+ID4g
PiA+ID4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQo+ID4gPiA+ID4gPiA+Pgo+ID4gPiA+ID4gPiA+PiBkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGlu
Zy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jIGIvdG9vbHMvdGVzdGluZy9z
ZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4gPiA+ID4gPiA+ID4+IGluZGV4
IDQwYzE3YWRiZjQ4My4uY2UwNzAxMGU0ZDQ4IDEwMDY0NAo+ID4gPiA+ID4gPiA+PiAtLS0gYS90
b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPiA+ID4g
PiA+ID4gPj4gKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19t
ZXRhZGF0YS5jCj4gPiA+ID4gPiA+ID4+IEBAIC03NywxMCArNzcsMTMgQEAgaW50IHJ4KHN0cnVj
dCB4ZHBfbWQgKmN0eCkKPiA+ID4gPiA+ID4gPj4gICAgICAgICAgICAgICAgICBtZXRhLT5yeF90
aW1lc3RhbXAgPSAwOyAvKiBVc2VkIGJ5IEFGX1hEUCBhcyBub3QgYXZhaWwgc2lnbmFsICovCj4g
PiA+ID4gPiA+ID4+ICAgICAgICAgIH0KPiA+ID4gPiA+ID4gPj4KPiA+ID4gPiA+ID4gPj4gLSAg
ICAgICBpZiAoIWJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZtZXRhLT5yeF9oYXNoKSkK
PiA+ID4gPiA+ID4gPj4gLSAgICAgICAgICAgICAgIGJwZl9wcmludGsoInBvcHVsYXRlZCByeF9o
YXNoIHdpdGggJXUiLCBtZXRhLT5yeF9oYXNoKTsKPiA+ID4gPiA+ID4gPj4gLSAgICAgICBlbHNl
Cj4gPiA+ID4gPiA+ID4+ICsgICAgICAgcmV0ID0gYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0
eCwgJm1ldGEtPnJ4X2hhc2gpOwo+ID4gPiA+ID4gPiA+PiArICAgICAgIGlmIChyZXQgPj0gMCkg
ewo+ID4gPiA+ID4gPiA+PiArICAgICAgICAgICAgICAgYnBmX3ByaW50aygicG9wdWxhdGVkIHJ4
X2hhc2ggd2l0aCAweCUwOFgiLCBtZXRhLT5yeF9oYXNoKTsKPiA+ID4gPiA+ID4gPj4gKyAgICAg
ICB9IGVsc2Ugewo+ID4gPiA+ID4gPiA+PiArICAgICAgICAgICAgICAgYnBmX3ByaW50aygicnhf
aGFzaCBub3QtYXZhaWwgZXJybm86JWQiLCByZXQpOwo+ID4gPiA+ID4gPiA+PiAgICAgICAgICAg
ICAgICAgIG1ldGEtPnJ4X2hhc2ggPSAwOyAvKiBVc2VkIGJ5IEFGX1hEUCBhcyBub3QgYXZhaWwg
c2lnbmFsICovCj4gPiA+ID4gPiA+ID4+ICsgICAgICAgfQo+ID4gPiA+ID4gPiA+Pgo+ID4gPiA+
ID4gPiA+PiAgICAgICAgICByZXR1cm4gYnBmX3JlZGlyZWN0X21hcCgmeHNrLCBjdHgtPnJ4X3F1
ZXVlX2luZGV4LCBYRFBfUEFTUyk7Cj4gPiA+ID4gPiA+ID4+ICAgfQo+ID4gPiA+ID4gPiA+PiBk
aWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5j
IGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jCj4gPiA+ID4g
PiA+ID4+IGluZGV4IDQwMGJmZTE5YWJmZS4uZjNlYzA3Y2NkYzk1IDEwMDY0NAo+ID4gPiA+ID4g
PiA+PiAtLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX2h3X21ldGFkYXRhLmMK
PiA+ID4gPiA+ID4gPj4gKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19t
ZXRhZGF0YS5jCj4gPiA+ID4gPiA+ID4+IEBAIC0zLDYgKzMsOSBAQAo+ID4gPiA+ID4gPiA+PiAg
IC8qIFJlZmVyZW5jZSBwcm9ncmFtIGZvciB2ZXJpZnlpbmcgWERQIG1ldGFkYXRhIG9uIHJlYWwg
SFcuIEZ1bmN0aW9uYWwgdGVzdAo+ID4gPiA+ID4gPiA+PiAgICAqIG9ubHksIGRvZXNuJ3QgdGVz
dCB0aGUgcGVyZm9ybWFuY2UuCj4gPiA+ID4gPiA+ID4+ICAgICoKPiA+ID4gPiA+ID4gPj4gKyAq
IEJQRi1wcm9nIGJwZl9wcmludGsgaW5mbyBvdXRvdXQgY2FuIGJlIGFjY2VzcyB2aWEKPiA+ID4g
PiA+ID4gPj4gKyAqIC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhY2VfcGlwZQo+ID4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ID4gcy9vdXRvdXQvb3V0cHV0Lwo+ID4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+IEZpeGVkIGluIFYzCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4g
QnV0IGxldCdzIG1heWJlIGRyb3AgaXQ/IElmIHlvdSB3YW50IHRvIG1ha2UgaXQgbW9yZSB1c2Fi
bGUsIGxldCdzCj4gPiA+ID4gPiA+ID4gaGF2ZSBhIHNlcGFyYXRlIHBhdGNoIHRvIGVuYWJsZSB0
cmFjaW5nIGFuZCBwZXJpb2RpY2FsbHkgZHVtcCBpdCB0bwo+ID4gPiA+ID4gPiA+IHRoZSBjb25z
b2xlIGluc3RlYWQgKGFzIHByZXZpb3VzbHkgZGlzY3Vzc2VkKS4KPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gQ2F0J2luZyAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNlX3BpcGUgd29yayBm
b3IgbWUgcmVnYXJkbGVzcyBvZgo+ID4gPiA+ID4gPiBzZXR0aW5nIGluCj4gPiA+ID4gPiA+IC9z
eXMva2VybmVsL2RlYnVnL3RyYWNpbmcvZXZlbnRzL2JwZl90cmFjZS9icGZfdHJhY2VfcHJpbnRr
L2VuYWJsZQo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBXZSBsaWtlbHkgbmVlZCBhIGZvbGxvd3Vw
IHBhdGNoIHRoYXQgYWRkcyBhIEJQRiBjb25maWcgc3dpdGNoIHRoYXQgY2FuCj4gPiA+ID4gPiA+
IGRpc2FibGUgYnBmX3ByaW50ayBjYWxscywgYmVjYXVzZSB0aGlzIGFkZHMgb3ZlcmhlYWQgYW5k
IHRodXMgYWZmZWN0cwo+ID4gPiA+ID4gPiB0aGUgdGltZXN0YW1wcy4KPiA+ID4gPiA+Cj4gPiA+
ID4gPiBOby4gVGhpcyBpcyBieSBkZXNpZ24uCj4gPiA+ID4gPiBEbyBub3QgdXNlIGJwZl9wcmlu
dGsqIGluIHByb2R1Y3Rpb24uCj4gPiA+ID4KPiA+ID4gPiBCdXQgdGhhdCdzIG5vdCBmb3IgdGhl
IHByb2R1Y3Rpb24/IHhkcF9od19tZXRhZGF0YSBpcyBhIHNtYWxsIHRvb2wgdG8KPiA+ID4gPiB2
ZXJpZnkgdGhhdCB0aGUgbWV0YWRhdGEgYmVpbmcgZHVtcGVkIGlzIGNvcnJlY3QgKGR1cmluZyB0
aGUKPiA+ID4gPiBkZXZlbG9wbWVudCkuCj4gPiA+ID4gV2UgaGF2ZSBhIHByb3BlciAobGVzcyB2
ZXJib3NlKSBzZWxmdGVzdCBpbgo+ID4gPiA+IHtwcm9ncyxwcm9nX3Rlc3RzfS94ZHBfbWV0YWRh
dGEuYyAob3ZlciB2ZXRoKS4KPiA+ID4gPiBUaGlzIHhkcF9od19tZXRhZGF0YSB3YXMgc3VwcG9z
ZWQgdG8gYmUgdXNlZCBmb3IgcnVubmluZyBpdCBhZ2FpbnN0Cj4gPiA+ID4gdGhlIHJlYWwgaGFy
ZHdhcmUsIHNvIGhhdmluZyBhcyBtdWNoIGRlYnVnZ2luZyBhdCBoYW5kIGFzIHBvc3NpYmxlCj4g
PiA+ID4gc2VlbXMgaGVscGZ1bD8gKGF0IGxlYXN0IGl0IHdhcyBoZWxwZnVsIHRvIG1lIHdoZW4g
cGxheWluZyB3aXRoIG1seDQpCj4gPiA+Cj4gPiA+IFRoZSBvbmx5IHVzZSBvZiBicGZfcHJpbnRr
IGlzIGZvciBkZWJ1Z2dpbmcgb2YgYnBmIHByb2dzIHRoZW1zZWx2ZXMuCj4gPiA+IEl0IHNob3Vs
ZCBub3QgYmUgdXNlZCBpbiBhbnkgdG9vbC4KPiA+Cj4gPiBIbW0sIGdvb2QgcG9pbnQuIEkgZ3Vl
c3MgaXQgYWxzbyBtZWFucyB3ZSB3b24ndCBoYXZlIHRvIG1lc3Mgd2l0aAo+ID4gZW5hYmxpbmcv
ZHVtcGluZyBmdHJhY2UgKGFuZCBkb24ndCBuZWVkIHRoaXMgY29tbWVudCBhYm91dCBjYXQnaW5n
IHRoZQo+ID4gZmlsZSkuCj4gPiBKZXNwZXIsIG1heWJlIHdlIGNhbiBpbnN0ZWFkIHBhc3MgdGhl
IHN0YXR1cyBvZiB0aG9zZQo+ID4gYnBmX3hkcF9tZXRhZGF0YV94eHgga2Z1bmNzIHZpYSAnc3Ry
dWN0IHhkcF9tZXRhJz8gQW5kIGR1bXAgdGhpcyBpbmZvCj4gPiBmcm9tIHRoZSB1c2Vyc3BhY2Ug
aWYgbmVlZGVkLgo+Cj4gVGhlcmUgYXJlIHNvIG1hbnkgb3RoZXIgd2F5cyBmb3IgYnBmIHByb2cg
dG8gY29tbXVuaWNhdGUgd2l0aCB1c2VyIHNwYWNlLgo+IFVzZSByaW5nYnVmLCBwZXJmX2V2ZW50
IGJ1ZmZlciwgZ2xvYmFsIHZhcnMsIG1hcHMsIGV0Yy4KPiB0cmFjZV9waXBlIGlzIGRlYnVnIG9u
bHkgYmVjYXVzZSBpdCdzIGdsb2JhbCBhbmQgd2lsbCBjb25mbGljdCB3aXRoCj4gYWxsIG90aGVy
IGRlYnVnIHNlc3Npb25zLgoK8J+RjSBtYWtlcyBzZW5zZSwgdHkhIGhvcGVmdWxseSB3ZSB3b24n
dCBoYXZlIHRvIGFkZCBhIHNlcGFyYXRlIGNoYW5uZWwKZm9yIHRob3NlIGFuZCBjYW4gKGFiKXVz
ZSB0aGUgbWV0YWRhdGEgYXJlYS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
