Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B122D40C9B7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 18:05:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2586440641;
	Wed, 15 Sep 2021 16:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yTWqyn7fAb1q; Wed, 15 Sep 2021 16:05:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 21A8340497;
	Wed, 15 Sep 2021 16:05:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A6FF1BF300
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 16:05:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 75E8140497
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 16:05:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oGhA_7CC6EqO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Sep 2021 16:05:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 61FE340495
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 16:05:50 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 196-20020a1c04cd000000b002fa489ffe1fso5199403wme.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 09:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pUEDn+wGVFuZIGgP7SMh1pO9rPToQCJ2HXOPEQfBxeM=;
 b=kxIkdNsxQCClLdZT44Z1sBKv9y8euz2zes/UaPqWvKSTKO/wlfspE+KVQskDKPWG+G
 oIoOS8by6DF1EGy6jjy9Vso3/8r3S4ctU39w1RhXJZ6RnV6mx5ofoThii1RfeyGMu8Jw
 8aLusHRCacWIq5HkP3k+UT2YPpRbjCqnzBDnnI4cD6QqcMI6pBt1CO6msIJVrkMGySz7
 RjUnEExFYS61wwRp/K5btLBtwzK1m58mnN4CgvEF0omgJw+yESzDITUYzTvWnEP3VphW
 zp6mUYlUkDh4wO/MZV9PdoW6+KGofORVATctnneoZP1t34ynP0mzN7uEyxMm/lsHORvP
 YOtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pUEDn+wGVFuZIGgP7SMh1pO9rPToQCJ2HXOPEQfBxeM=;
 b=pVGJAwikD5cz7LtmIsOGv+AwuUMTVXMZ3UHD2bRfn4lHhhqLHrVXbgiYSWPRYXf8AD
 WZdwfkDjj9ej2xfTEy6sRx8hpuRd3ymc+C1wAmCSA00Vr+s1De+43agMe14AwJpYNmeQ
 inGxrc9/CBbZizXy9jUYnp+4wJukpSCvhDYU/4A1VOodeeU8JkQzpeA9jglat7+lKDdF
 /TcDDKEOrps6jjNFApdeC9h0wyxIhTL6RkcxbNs3gLoScrLtfkNOqqrK4j+Bszb7OWIR
 QlGStB3aVxlvGgDoafrU4+Bx0w+A3TpiJdjU88II55GkxlPY92qFHnY2rA85xCS1LKfP
 meQQ==
X-Gm-Message-State: AOAM531miO34aGKf+0cmuhW/+ovH3opyCzt9aeIqKH9FP4g46H0/dPW+
 vW54sSuHwI3WVlb/g6PR7j0=
X-Google-Smtp-Source: ABdhPJwq7e9x09s+3oaFDVBVCy7WaLr9skjRUIm4gGsRhnyhhmWNbe2zalWVuWq8F1iJTkXhZG9kzw==
X-Received: by 2002:a7b:c142:: with SMTP id z2mr5494618wmi.10.1631721948396;
 Wed, 15 Sep 2021 09:05:48 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f08:4500:619b:3ca6:ce93:7943?
 (p200300ea8f084500619b3ca6ce937943.dip0.t-ipconnect.de.
 [2003:ea:8f08:4500:619b:3ca6:ce93:7943])
 by smtp.googlemail.com with ESMTPSA id j2sm387829wrq.35.2021.09.15.09.05.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Sep 2021 09:05:48 -0700 (PDT)
To: Hisashi T Fujinaka <htodd@twofifty.com>
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
 <80718d5e-a4d2-ff85-aa8f-cd790c951278@gmail.com>
 <14f6d9e9-aca8-133-67f5-92effa2ea280@twofifty.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <d49182d6-15fe-15a1-c063-4808942a84c1@gmail.com>
Date: Wed, 15 Sep 2021 18:05:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <14f6d9e9-aca8-133-67f5-92effa2ea280@twofifty.com>
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, Dave Jones <davej@codemonkey.org.uk>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTUuMDkuMjAyMSAxNjoxOCwgSGlzYXNoaSBUIEZ1amluYWthIHdyb3RlOgo+IE9uIFR1ZSwg
MTQgU2VwIDIwMjEsIEhlaW5lciBLYWxsd2VpdCB3cm90ZToKPiAKPj4gT24gMTQuMDkuMjAyMSAy
MjowMCwgSGlzYXNoaSBUIEZ1amluYWthIHdyb3RlOgo+Pj4gT24gVHVlLCAxNCBTZXAgMjAyMSwg
RGF2ZSBKb25lcyB3cm90ZToKPj4+Cj4+Pj4gT24gVHVlLCBTZXAgMTQsIDIwMjEgYXQgMDc6NTE6
MjJBTSArMDIwMCwgSGVpbmVyIEthbGx3ZWl0IHdyb3RlOgo+Pj4+Cj4+Pj4+PiBTb3JyeSB0byBy
ZXBseSBmcm9tIG15IHBlcnNvbmFsIGFjY291bnQuIElmIEkgZGlkIGl0IGZyb20gbXkgd29yawo+
Pj4+Pj4gYWNjb3VudCBJJ2QgYmUgdG9wLXBvc3RpbmcgYmVjYXVzZSBvZiBPdXRsb29rIGFuZCB0
aGF0IGdvZXMgb3ZlciBsaWtlIGEKPj4+Pj4+IGxlYWQgYmFsbG9vbi4KPj4+Pj4+Cj4+Pj4+PiBB
bnl3YXksIGNhbiB5b3Ugc2VuZCB1cyBhIGR1bXAgb2YgeW91ciBlZXByb20gdXNpbmcgZXRodG9v
bCAtZT8gWW91IGNhbgo+Pj4+Pj4gZWl0aGVyIHNlbmQgaXQgdmlhIGEgYnVnIG9uIGUxMDAwLnNv
dXJjZWZvcmdlLm5ldCBvciB0cnkgc2VuZGluZyBpdCB0bwo+Pj4+Pj4gdG9kZC5mdWppbmFrYUBp
bnRlbC5jb20KPj4+Pj4+Cj4+Pj4+PiBUaGUgb3RoZXIgdGhpbmcgaXMgSSdtIHdvbmRlcmluZyBp
cyB3aGF0IHRoZSBzdWJ2ZW5kb3IgZGV2aWNlIElEIHlvdQo+Pj4+Pj4gaGF2ZSBpcyByZWZlcnJp
bmcgdG8gYmVjYXVzZSBpdCdzIG5vdCBpbiB0aGUgcGNpIGRhdGFiYXNlLiBTb21lIE9ETXMKPj4+
Pj4+IGxpa2UgZ2V0dGluZyBjcmVhdGl2ZSB3aXRoIHdoYXQgdGhleSBwdXQgaW4gdGhlIE5WTS4K
Pj4+Pj4+Cj4+Pj4+PiBUb2RkIEZ1amluYWthICh0b2RkLmZ1amluYWthQGludGVsLmNvbSkKPj4+
Pj4KPj4+Pj4gVGhhbmtzIGZvciB0aGUgcHJvbXB0IHJlcGx5LiBEYXZlLCBjb3VsZCB5b3UgcGxl
YXNlIHByb3ZpZGUgdGhlIHJlcXVlc3RlZAo+Pj4+PiBpbmZvcm1hdGlvbj8KPj4+Pgo+Pj4+IHNl
bnQgb2ZmLWxpc3QuCj4+Pj4KPj4+PiDCoMKgwqAgRGF2ZQo+Pj4KPj4+IFdob29wcy4gSSByZXBs
aWVkIGZyb20gb3V0bG9vayBhZ2Fpbi4KPj4+Cj4+PiBJIGhhdmUgY29uZmlybWF0aW9uIHRoYXQg
dGhpcyBzaG91bGQgYmUgYSB2YWxpZCBpbWFnZS4gVGhlIFZQRCBpcyBqdXN0IGEKPj4+IHNlcmll
cyBvZiAzJ3MuIFRoZXJlIGFyZSBjaGFuZ2VzIHRvIHByZWJvb3QgaGVhZGVyLCBmbGFzaCBhbmQg
QkFSIHNpemUsCj4+PiBhbmQgYXMgZmFyIGFzIEkgY2FuIHRlbGwsIGEgbm9uc2Vuc2Ugc3ViZGV2
aWNlIElELCBidXQgdGhpcyBzaG91bGQgd29yay4KPj4+Cj4+PiBXaGF0IHdhcyB0aGUgb3JpZ2lu
YWwgcXVlc3Rpb24/Cj4+Pgo+PiAibHNwY2kgLXZ2IiBjb21wbGFpbnMgYWJvdXQgYW4gaW52YWxp
ZCBzaG9ydCB0YWcgMHgwNiBhbmQgdGhlIFBDSSBWUEQKPj4gY29kZSByZXN1bHRlZCBpbiBhIHN0
YWxsLiBTbyBpdCBzZWVtcyB0aGUgZGF0YSBkb2Vzbid0IGhhdmUgdmFsaWQgVlBECj4+IGZvcm1h
dCBhcyBkZWZpbmVkIGluIFBDSSBzcGVjaWZpY2F0aW9uLgo+Pgo+PiAwMTowMC4wIEV0aGVybmV0
IGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9uIDgyNTk5RVMgMTAtR2lnYWJpdCBTRkkvU0ZQ
KyBOZXR3b3JrIENvbm5lY3Rpb24gKHJldiAwMSkKPj4gwqDCoMKgwqDCoMKgIFN1YnN5c3RlbTog
RGV2aWNlIDFkY2Y6MDMwYQo+PiDCoMKgwqDCoC4uLgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IENhcGFiaWxpdGllczogW2UwXSBWaXRhbCBQcm9kdWN0IERhdGEKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAqVW5rbm93biBzbWFsbCByZXNvdXJjZSB0eXBlIDA2LCB3aWxsIG5vdCBk
ZWNvZGUgbW9yZS4qCj4+Cj4+IE5vdCBzdXJlIHdoaWNoIG1ldGhvZCBpcyB1c2VkIGJ5IHRoZSBk
cml2ZXIgdG8gZ2V0IHRoZSBFRVBST00gY29udGVudC4KPj4gRm9yIHRoZSBpc3N1ZSBoZXJlIGlz
IHJlbGV2YW50IHdoYXQgaXMgZXhwb3NlZCB2aWEgUENJIFZQRC4KPj4KPj4gVGhlIHJlbGF0ZWQg
a2VybmVsIGVycm9yIG1lc3NhZ2UgaGFzIGJlZW4gcmVwb3J0ZWQgZmV3IHRpbWVzLCBlLmcuIGhl
cmU6Cj4+IGh0dHBzOi8vYWNjZXNzLnJlZGhhdC5jb20vc29sdXRpb25zLzMwMDE0NTEKPj4gT25s
eSBkdWUgdG8gYSBjaGFuZ2UgaW4ga2VybmVsIGNvZGUgdGhpcyBiZWNhbWUgYSBtb3JlIHByb21p
bmVudAo+PiBpc3N1ZSBub3cuCj4+Cj4+IFlvdSBzYXkgdGhhdCBWUEQgaXMganVzdCBhIHNlcmll
cyBvZiAzJ3MuIFRoaXMgbWF5IGV4cGxhaW4gd2h5IGtlcm5lbCBhbmQKPj4gdG9vbHMgY29tcGxh
aW4gYWJvdXQgYW4gaW52YWxpZCBWUEQgZm9ybWF0LiBWUEQgbWlzc2VzIHRoZSB0YWcgc3RydWN0
dXJlLgo+IAo+IEkgdGhpbmsgSSBjb25mbGF0ZWQgdHdvIGlzc3VlcyBhbmQgeW91cnMgbWF5IG5v
dCBiZSB0aGUgb25lIHdpdGggdGhlCj4gd2VpcmQgQW1hem9uIE5JQy4gSW4gYW55IGNhc2UsIHRo
ZSBWUEQgZG9lcyBub3QgbWF0Y2ggdGhlIHNwZWMgYW5kIHR3bwo+IHBlb3BsZSBoYXZlIGNvbmZp
cm1lZCBpdCdzIGp1c3QgZnVsbCBvZiAzJ3MuIFdpdGggdGhlIGJvZ3VzIHN1YnZlbmRvcgo+IElE
LCBJJ20gdGhpbmtpbmcgdGhpcyBpcyBub3QgYW4gSW50ZWwgTklDLgo+IAo+IE5leHQgc3RlcCBp
cyB0byBjb250YWN0IHdob2V2ZXIgbWFkZSB0aGUgTklDIGFuZCBhc2sgdGhlbSBmb3IgZ3VpZGFu
Y2UuCj4gCkluIGFuIGVhcmxpZXIgbWFpbCBpbiB0aGlzIHRocmVhZCB3YXMgc3RhdGVkIHRoYXQg
c3VidmVuZG9yIGlkIGlzIHVua25vd24uCkNoZWNraW5nIGhlcmUgaHR0cHM6Ly9wY2lzaWcuY29t
L21lbWJlcnNoaXAvbWVtYmVyLWNvbXBhbmllcz9jb21iaW5lPTFkY2YKaXQgc2F5czogQmVpamlu
ZyBTaW5lYWQgVGVjaG5vbG9neSBDby4sIEx0ZC4KCj4gVG9kZCBGdWppbmFrYSA8dG9kZC5mdWpp
bmFrYUBpbnRlbC5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
