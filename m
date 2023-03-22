Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C41776C500B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 17:08:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53F508230B;
	Wed, 22 Mar 2023 16:08:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53F508230B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679501282;
	bh=yhyW6yu4qAYhSQykMyxt5HMK6LORLlAn2rMr6zAAcYY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v5UTbJA6Vi8gp4YnCe2Fh2QHNut42XP/j/JYk2sZhs7Anaa39TA/t71rRUaD4fbz5
	 Shk7a9csXuzHfiGW1vc/yvOdbsxjx4ay1/k8jxyBOjFmUgsMXkc2OvYy3SgQFd3rkw
	 0IrKaqLExlwYfogaTNCZB6GaOYDVjieEvOLVsLKAX5j3yROsxvhUbExVQZY07FaT60
	 q/0aNJBgTWM+l1KSLNOa1qWnE8IJN6cC4FN4+okMc+V75IULkmfrLldygxin/NDnL+
	 5I37yqyRRmBmMsPzjyb+TPlJB3xz8ILU2UXjvEn5zDwYEqaRCIqgWO4hVKuOby5ERu
	 +gvFgpz5F0l0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MVuViNn4qz8N; Wed, 22 Mar 2023 16:08:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33741821A9;
	Wed, 22 Mar 2023 16:08:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33741821A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B9001BF35F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2EB8E4176F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:07:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EB8E4176F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7UetRdAo2eIL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 16:07:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16F9B416B4
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 16F9B416B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:07:55 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id eh3so75029710edb.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 09:07:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679501273;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mOzog1rcJBIJ0IWpoVcxs5p5wXubMGjNYuLplz2RPz0=;
 b=1/RyOkq2B4ySMe8Onk6vqHQOsJMGRxE96wfxbzomEEVk8de4G5jwUxHI60CTOUFGQF
 kC7E7F0lFCI7Jk+0w/tEV+1b6I5xF8KhsdY2h/xwxE7oXvmPd8T30AYLSvOaP+jk5US9
 ZS8K6+id5s1Leeirh9q7X77IB9KghUTlfACR/9O3PCu4CAzBZzk2tpdGuP8cLqWCSdsV
 +qp+mCBT04pXtHgWLEHr/LOkAFHivyUNBNyU59ua21lHgK81R8wdmawy6OqR7G29zBhZ
 kdTVpgBA/dusxjUmlyBKWYITC1KpvSn3eyr6DNZg3m1Jx7cTNYKkjEP3eTb5xyvLfivI
 VeZg==
X-Gm-Message-State: AO0yUKWu60iTglTFpMdy6SURhDisKPBn2K21qw0qAp4LTHPntMP600Iq
 QbSYvA+SsZvOBqwVe0bzGWTNdlLEU0h3AikOQco=
X-Google-Smtp-Source: AK7set8U2axS8vjpTT71ShGMMBPNsw6nJfxB/FJqNUP5haOFL3RpVeqtsMlGUxJwfDHo3l1mRyT0yLGgeSBExss0N70=
X-Received: by 2002:a17:906:2cc5:b0:931:c1a:b517 with SMTP id
 r5-20020a1709062cc500b009310c1ab517mr3409072ejr.3.1679501273106; Wed, 22 Mar
 2023 09:07:53 -0700 (PDT)
MIME-Version: 1.0
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
 <167940643669.2718137.4624187727245854475.stgit@firesoul>
 <CAKH8qBuv-9TXAmi0oTbB0atC4f6jzFcFhAgQ3D89VX45vUU9hw@mail.gmail.com>
 <080640fc-5835-26f1-2b20-ff079bd59182@redhat.com>
In-Reply-To: <080640fc-5835-26f1-2b20-ff079bd59182@redhat.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Wed, 22 Mar 2023 09:07:41 -0700
Message-ID: <CAADnVQKsxzLTZ2XoLbmKKLAeaSyvf3P+w8V143iZ4cEWWTEUfw@mail.gmail.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679501273;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mOzog1rcJBIJ0IWpoVcxs5p5wXubMGjNYuLplz2RPz0=;
 b=KwKrLt++JgVHYPV+zzH2vsrhxtmgPAAlhxhmkHaW5Tn1Uv3QfKENWI9nJhy7yvpxlK
 /lftz09YJtHFS1Oim2MNM2FSKBdNhIeP1Tuz6Tvxn6XgLNhixDP3VM7Zdc9xkrUHQy7C
 VMc0wxBq0ghfmRfS1WRhg+boL8oug5wZzjhS3yLiSxkglMV5ZKWPWp3eMfI8Fq0dSSbL
 OA/ey/3LS7BhlvFaMUCQOqORHj7aOrCJqsgFP4wgCuQd+duVn2oCa4eGxPH7LyqAIDFd
 HyDXN8k1c55LycGNCDmyMDTNFn+bwi9f0ok4XeLJrAh3GtQC7nFbKP8H96/S7vfjKn4b
 6ENg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=KwKrLt++
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
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Stanislav Fomichev <sdf@google.com>, "Song,
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

T24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgOTowNeKAr0FNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIK
PGpicm91ZXJAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPgo+Cj4gT24gMjEvMDMvMjAyMyAxOS40Nywg
U3RhbmlzbGF2IEZvbWljaGV2IHdyb3RlOgo+ID4gT24gVHVlLCBNYXIgMjEsIDIwMjMgYXQgNjo0
N+KAr0FNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPiA+IDxicm91ZXJAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4gPj4KPiA+PiBXaGVuIGRyaXZlciBkZXZlbG9wZXJzIGFkZCBYRFAtaGludHMga2Z1bmNz
IGZvciBSWCBoYXNoIGl0IGlzCj4gPj4gcHJhY3RpY2FsIHRvIHByaW50IHRoZSByZXR1cm4gY29k
ZSBpbiBicGZfcHJpbnRrIHRyYWNlIHBpcGUgbG9nLgo+ID4+Cj4gPj4gUHJpbnQgaGFzaCB2YWx1
ZSBhcyBhIGhleCB2YWx1ZSwgYm90aCBBRl9YRFAgdXNlcnNwYWNlIGFuZCBicGZfcHJvZywKPiA+
PiBhcyB0aGlzIG1ha2VzIGl0IGVhc2llciB0byBzcG90IHBvb3IgcXVhbGl0eSBoYXNoZXMuCj4g
Pj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVk
aGF0LmNvbT4KPiA+PiAtLS0KPiA+PiAgIC4uLi90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3Mv
eGRwX2h3X21ldGFkYXRhLmMgIHwgICAgOSArKysrKystLS0KPiA+PiAgIHRvb2xzL3Rlc3Rpbmcv
c2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYyAgICAgIHwgICAgNSArKysrLQo+ID4+ICAg
MiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+ID4+Cj4g
Pj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdf
bWV0YWRhdGEuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0
YWRhdGEuYwo+ID4+IGluZGV4IDQwYzE3YWRiZjQ4My4uY2UwNzAxMGU0ZDQ4IDEwMDY0NAo+ID4+
IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEu
Ywo+ID4+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0
YWRhdGEuYwo+ID4+IEBAIC03NywxMCArNzcsMTMgQEAgaW50IHJ4KHN0cnVjdCB4ZHBfbWQgKmN0
eCkKPiA+PiAgICAgICAgICAgICAgICAgIG1ldGEtPnJ4X3RpbWVzdGFtcCA9IDA7IC8qIFVzZWQg
YnkgQUZfWERQIGFzIG5vdCBhdmFpbCBzaWduYWwgKi8KPiA+PiAgICAgICAgICB9Cj4gPj4KPiA+
PiAtICAgICAgIGlmICghYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0eCwgJm1ldGEtPnJ4X2hh
c2gpKQo+ID4+IC0gICAgICAgICAgICAgICBicGZfcHJpbnRrKCJwb3B1bGF0ZWQgcnhfaGFzaCB3
aXRoICV1IiwgbWV0YS0+cnhfaGFzaCk7Cj4gPj4gLSAgICAgICBlbHNlCj4gPj4gKyAgICAgICBy
ZXQgPSBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+cnhfaGFzaCk7Cj4gPj4g
KyAgICAgICBpZiAocmV0ID49IDApIHsKPiA+PiArICAgICAgICAgICAgICAgYnBmX3ByaW50aygi
cG9wdWxhdGVkIHJ4X2hhc2ggd2l0aCAweCUwOFgiLCBtZXRhLT5yeF9oYXNoKTsKPiA+PiArICAg
ICAgIH0gZWxzZSB7Cj4gPj4gKyAgICAgICAgICAgICAgIGJwZl9wcmludGsoInJ4X2hhc2ggbm90
LWF2YWlsIGVycm5vOiVkIiwgcmV0KTsKPiA+PiAgICAgICAgICAgICAgICAgIG1ldGEtPnJ4X2hh
c2ggPSAwOyAvKiBVc2VkIGJ5IEFGX1hEUCBhcyBub3QgYXZhaWwgc2lnbmFsICovCj4gPj4gKyAg
ICAgICB9Cj4gPj4KPiA+PiAgICAgICAgICByZXR1cm4gYnBmX3JlZGlyZWN0X21hcCgmeHNrLCBj
dHgtPnJ4X3F1ZXVlX2luZGV4LCBYRFBfUEFTUyk7Cj4gPj4gICB9Cj4gPj4gZGlmZiAtLWdpdCBh
L3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rvb2xzL3Rl
c3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+ID4+IGluZGV4IDQwMGJmZTE5
YWJmZS4uZjNlYzA3Y2NkYzk1IDEwMDY0NAo+ID4+IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+ID4+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+ID4+IEBAIC0zLDYgKzMsOSBAQAo+ID4+ICAgLyog
UmVmZXJlbmNlIHByb2dyYW0gZm9yIHZlcmlmeWluZyBYRFAgbWV0YWRhdGEgb24gcmVhbCBIVy4g
RnVuY3Rpb25hbCB0ZXN0Cj4gPj4gICAgKiBvbmx5LCBkb2Vzbid0IHRlc3QgdGhlIHBlcmZvcm1h
bmNlLgo+ID4+ICAgICoKPiA+PiArICogQlBGLXByb2cgYnBmX3ByaW50ayBpbmZvIG91dG91dCBj
YW4gYmUgYWNjZXNzIHZpYQo+ID4+ICsgKiAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNl
X3BpcGUKPiA+Cj4gPiBzL291dG91dC9vdXRwdXQvCj4gPgo+Cj4gRml4ZWQgaW4gVjMKPgo+ID4g
QnV0IGxldCdzIG1heWJlIGRyb3AgaXQ/IElmIHlvdSB3YW50IHRvIG1ha2UgaXQgbW9yZSB1c2Fi
bGUsIGxldCdzCj4gPiBoYXZlIGEgc2VwYXJhdGUgcGF0Y2ggdG8gZW5hYmxlIHRyYWNpbmcgYW5k
IHBlcmlvZGljYWxseSBkdW1wIGl0IHRvCj4gPiB0aGUgY29uc29sZSBpbnN0ZWFkIChhcyBwcmV2
aW91c2x5IGRpc2N1c3NlZCkuCj4KPiBDYXQnaW5nIC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcv
dHJhY2VfcGlwZSB3b3JrIGZvciBtZSByZWdhcmRsZXNzIG9mCj4gc2V0dGluZyBpbgo+IC9zeXMv
a2VybmVsL2RlYnVnL3RyYWNpbmcvZXZlbnRzL2JwZl90cmFjZS9icGZfdHJhY2VfcHJpbnRrL2Vu
YWJsZQo+Cj4gV2UgbGlrZWx5IG5lZWQgYSBmb2xsb3d1cCBwYXRjaCB0aGF0IGFkZHMgYSBCUEYg
Y29uZmlnIHN3aXRjaCB0aGF0IGNhbgo+IGRpc2FibGUgYnBmX3ByaW50ayBjYWxscywgYmVjYXVz
ZSB0aGlzIGFkZHMgb3ZlcmhlYWQgYW5kIHRodXMgYWZmZWN0cwo+IHRoZSB0aW1lc3RhbXBzLgoK
Tm8uIFRoaXMgaXMgYnkgZGVzaWduLgpEbyBub3QgdXNlIGJwZl9wcmludGsqIGluIHByb2R1Y3Rp
b24uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
