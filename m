Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D75B40BABB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Sep 2021 23:51:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 273E8403DC;
	Tue, 14 Sep 2021 21:51:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jXqkRraK2FXK; Tue, 14 Sep 2021 21:51:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36AF4403D9;
	Tue, 14 Sep 2021 21:51:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE3381BF292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 21:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA41040375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 21:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7KK63AVPBDfY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 21:51:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 66B0C400B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 21:51:37 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id b6so513049wrh.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 14:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OPJbwAqXrMsOcJb8XAwTNGK0vR2vI1IDCcn49AAPJO4=;
 b=Ppa4tQ0IHeC1CBzsb5Q2dWHqx6eT4d6nrNQpswjlK/uQOfT/GzFdJQiXnl2/OIWdXm
 OkLOtMHuo1Ol8eNByFXSMlheJiyy4oUs19c2Fbs5xbdXZPNRGkwqMWu1SXnnF3/xwe3M
 v1aM3VvdgTsYjJgD0gcqDTk86wj+uS6+Rd60tc/5ZhyIpgMVIwiEZD0DSZxzOm4GOXxc
 fltX/85Xw8ScOlpsPiHS0wVC37TL+EnBriY5wtj9zX01CEhDETXV+kDSaIDHentrH0Xl
 N56QbInFtK3hXWp6iL3sDGFsGkZgpS7mvTqsLztNzIpSUy0dFEHYJPtSQxJcdnlZ6WWa
 cTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:to:cc:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OPJbwAqXrMsOcJb8XAwTNGK0vR2vI1IDCcn49AAPJO4=;
 b=i0PdTtd0LPQ5QdBy7icmVckzG5zlvLTIyfShtXw/k0x0i67vfljd+jIQlk+c2rFTp5
 +U8WtPc+9yaZpMnrw0QC+iEi0AvV1pHYgicAcUw2BrEZVECzeAVXK0dDgyNTNR6dC1qd
 va39+FOwfWHrtfxX2xJDev6NW95UOpL1gzmVdCTsTk8XR1/BY4Ijm2m0x/nBul2Nbcfd
 rRTgo5Z+qq34A+S8mk30altUrAs5MTsg7ujswcNewdEQlNaN4etlw2jNR+39t7mXemMz
 JWk/mf+j+7ZkQajD12pL7Z/Tj5PD5M1v1/mH0GoG2gtg/VjVqMdro8j18PZ8cec2xPqy
 C1YQ==
X-Gm-Message-State: AOAM531Z/rb5ej3buk/dPDMRzK9HF9IJGtrwA1tId8Uxa9j1rzQfi1QB
 mvfRgPEir2rDwmEqfoobD0s=
X-Google-Smtp-Source: ABdhPJymQCXOlgRMbpJLVZXHTSg6rLwtJXzFYryP5jXD71XOResbDlsr+VDOxvGA8SVZJ/HS1R9R7g==
X-Received: by 2002:adf:ef48:: with SMTP id c8mr1279748wrp.349.1631656295628; 
 Tue, 14 Sep 2021 14:51:35 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f08:4500:452c:df07:20dd:cf7b?
 (p200300ea8f084500452cdf0720ddcf7b.dip0.t-ipconnect.de.
 [2003:ea:8f08:4500:452c:df07:20dd:cf7b])
 by smtp.googlemail.com with ESMTPSA id w14sm2861964wro.8.2021.09.14.14.51.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Sep 2021 14:51:35 -0700 (PDT)
To: Hisashi T Fujinaka <htodd@twofifty.com>,
 Dave Jones <davej@codemonkey.org.uk>
References: <CAHk-=wgbygOb3hRV+7YOpVcMPTP2oQ=iw6tf09Ydspg7o7BsWQ@mail.gmail.com>
 <20210913141818.GA27911@codemonkey.org.uk>
 <ab571d7e-0cf5-ffb3-6bbe-478a4ed749dc@gmail.com>
 <20210913201519.GA15726@codemonkey.org.uk>
 <b84b799d-0aaa-c4e1-b61b-8e2316b62bd1@gmail.com>
 <20210913203234.GA6762@codemonkey.org.uk>
 <b24d81e2-5a1e-3616-5a01-abd58c0712f7@gmail.com>
 <b4b543d4-c0c5-3c56-46b7-e17ec579edcc@twofifty.com>
 <367cc748-d411-8cf8-ff95-07715c55e899@gmail.com>
 <20210914142419.GA32324@codemonkey.org.uk>
 <c02876d7-c3f3-1953-334d-1248af919796@twofifty.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <80718d5e-a4d2-ff85-aa8f-cd790c951278@gmail.com>
Date: Tue, 14 Sep 2021 23:51:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <c02876d7-c3f3-1953-334d-1248af919796@twofifty.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Linux 5.15-rc1 - 82599ES VPD access isue
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
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTQuMDkuMjAyMSAyMjowMCwgSGlzYXNoaSBUIEZ1amluYWthIHdyb3RlOgo+IE9uIFR1ZSwg
MTQgU2VwIDIwMjEsIERhdmUgSm9uZXMgd3JvdGU6Cj4gCj4+IE9uIFR1ZSwgU2VwIDE0LCAyMDIx
IGF0IDA3OjUxOjIyQU0gKzAyMDAsIEhlaW5lciBLYWxsd2VpdCB3cm90ZToKPj4KPj4gPiA+IFNv
cnJ5IHRvIHJlcGx5IGZyb20gbXkgcGVyc29uYWwgYWNjb3VudC4gSWYgSSBkaWQgaXQgZnJvbSBt
eSB3b3JrCj4+ID4gPiBhY2NvdW50IEknZCBiZSB0b3AtcG9zdGluZyBiZWNhdXNlIG9mIE91dGxv
b2sgYW5kIHRoYXQgZ29lcyBvdmVyIGxpa2UgYQo+PiA+ID4gbGVhZCBiYWxsb29uLgo+PiA+ID4K
Pj4gPiA+IEFueXdheSwgY2FuIHlvdSBzZW5kIHVzIGEgZHVtcCBvZiB5b3VyIGVlcHJvbSB1c2lu
ZyBldGh0b29sIC1lPyBZb3UgY2FuCj4+ID4gPiBlaXRoZXIgc2VuZCBpdCB2aWEgYSBidWcgb24g
ZTEwMDAuc291cmNlZm9yZ2UubmV0IG9yIHRyeSBzZW5kaW5nIGl0IHRvCj4+ID4gPiB0b2RkLmZ1
amluYWthQGludGVsLmNvbQo+PiA+ID4KPj4gPiA+IFRoZSBvdGhlciB0aGluZyBpcyBJJ20gd29u
ZGVyaW5nIGlzIHdoYXQgdGhlIHN1YnZlbmRvciBkZXZpY2UgSUQgeW91Cj4+ID4gPiBoYXZlIGlz
IHJlZmVycmluZyB0byBiZWNhdXNlIGl0J3Mgbm90IGluIHRoZSBwY2kgZGF0YWJhc2UuIFNvbWUg
T0RNcwo+PiA+ID4gbGlrZSBnZXR0aW5nIGNyZWF0aXZlIHdpdGggd2hhdCB0aGV5IHB1dCBpbiB0
aGUgTlZNLgo+PiA+ID4KPj4gPiA+IFRvZGQgRnVqaW5ha2EgKHRvZGQuZnVqaW5ha2FAaW50ZWwu
Y29tKQo+PiA+Cj4+ID4gVGhhbmtzIGZvciB0aGUgcHJvbXB0IHJlcGx5LiBEYXZlLCBjb3VsZCB5
b3UgcGxlYXNlIHByb3ZpZGUgdGhlIHJlcXVlc3RlZAo+PiA+IGluZm9ybWF0aW9uPwo+Pgo+PiBz
ZW50IG9mZi1saXN0Lgo+Pgo+PiDCoMKgwqDCoERhdmUKPiAKPiBXaG9vcHMuIEkgcmVwbGllZCBm
cm9tIG91dGxvb2sgYWdhaW4uCj4gCj4gSSBoYXZlIGNvbmZpcm1hdGlvbiB0aGF0IHRoaXMgc2hv
dWxkIGJlIGEgdmFsaWQgaW1hZ2UuIFRoZSBWUEQgaXMganVzdCBhCj4gc2VyaWVzIG9mIDMncy4g
VGhlcmUgYXJlIGNoYW5nZXMgdG8gcHJlYm9vdCBoZWFkZXIsIGZsYXNoIGFuZCBCQVIgc2l6ZSwK
PiBhbmQgYXMgZmFyIGFzIEkgY2FuIHRlbGwsIGEgbm9uc2Vuc2Ugc3ViZGV2aWNlIElELCBidXQg
dGhpcyBzaG91bGQgd29yay4KPiAKPiBXaGF0IHdhcyB0aGUgb3JpZ2luYWwgcXVlc3Rpb24/Cj4g
CiJsc3BjaSAtdnYiIGNvbXBsYWlucyBhYm91dCBhbiBpbnZhbGlkIHNob3J0IHRhZyAweDA2IGFu
ZCB0aGUgUENJIFZQRApjb2RlIHJlc3VsdGVkIGluIGEgc3RhbGwuIFNvIGl0IHNlZW1zIHRoZSBk
YXRhIGRvZXNuJ3QgaGF2ZSB2YWxpZCBWUEQKZm9ybWF0IGFzIGRlZmluZWQgaW4gUENJIHNwZWNp
ZmljYXRpb24uCgowMTowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9u
IDgyNTk5RVMgMTAtR2lnYWJpdCBTRkkvU0ZQKyBOZXR3b3JrIENvbm5lY3Rpb24gKHJldiAwMSkK
ICAgICAgICBTdWJzeXN0ZW06IERldmljZSAxZGNmOjAzMGEKCS4uLgoJICAgICAgICBDYXBhYmls
aXRpZXM6IFtlMF0gVml0YWwgUHJvZHVjdCBEYXRhCiAgICAgICAgICAgICAgICAqVW5rbm93biBz
bWFsbCByZXNvdXJjZSB0eXBlIDA2LCB3aWxsIG5vdCBkZWNvZGUgbW9yZS4qCgpOb3Qgc3VyZSB3
aGljaCBtZXRob2QgaXMgdXNlZCBieSB0aGUgZHJpdmVyIHRvIGdldCB0aGUgRUVQUk9NIGNvbnRl
bnQuCkZvciB0aGUgaXNzdWUgaGVyZSBpcyByZWxldmFudCB3aGF0IGlzIGV4cG9zZWQgdmlhIFBD
SSBWUEQuCgpUaGUgcmVsYXRlZCBrZXJuZWwgZXJyb3IgbWVzc2FnZSBoYXMgYmVlbiByZXBvcnRl
ZCBmZXcgdGltZXMsIGUuZy4gaGVyZToKaHR0cHM6Ly9hY2Nlc3MucmVkaGF0LmNvbS9zb2x1dGlv
bnMvMzAwMTQ1MQpPbmx5IGR1ZSB0byBhIGNoYW5nZSBpbiBrZXJuZWwgY29kZSB0aGlzIGJlY2Ft
ZSBhIG1vcmUgcHJvbWluZW50Cmlzc3VlIG5vdy4KCllvdSBzYXkgdGhhdCBWUEQgaXMganVzdCBh
IHNlcmllcyBvZiAzJ3MuIFRoaXMgbWF5IGV4cGxhaW4gd2h5IGtlcm5lbCBhbmQKdG9vbHMgY29t
cGxhaW4gYWJvdXQgYW4gaW52YWxpZCBWUEQgZm9ybWF0LiBWUEQgbWlzc2VzIHRoZSB0YWcgc3Ry
dWN0dXJlLgoKPiBUb2RkIEZ1amluYWthIDx0b2RkLmZ1amluYWthQGludGVsLmNvbT4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
