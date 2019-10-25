Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6615E46A7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2019 11:07:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E8C68769E;
	Fri, 25 Oct 2019 09:07:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mNngSWI90vI3; Fri, 25 Oct 2019 09:07:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D1CE587A11;
	Fri, 25 Oct 2019 09:07:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DE811BF9D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 09:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 63D4087D5D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 09:07:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IYiUAe6fKwPr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2019 09:07:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6547687C09
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 09:07:42 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id u22so2130528qtq.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 02:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BNqUVl5JhXUGBG9kreQv4HQ6twYK66HGwyTPZIQqshk=;
 b=Rci22rH4VHCMDPeHpym/2wdi2vheAEio8Qg2GpN9W4xFixcqI4UzxmQaU+6Zv7gkd4
 wphtW8txmNMgXPwyuKVzmGd/qbhARLp/t6w1N3FMo0WubfD2rP1PlNPF9TbzTcx7Ml/r
 aKi+87vNx+GvJuBi3fXA30V8uL7HUYY9dM5ANg7e3txJ0SZSf7YU8mSBiNV7kX1Gavv7
 9zKilWJABoRsS7EUUEjrXoPIVt71yPShD2oUu6Z8b8aN96cZUA8GoA4ulgnZg/k02z//
 joaehTqK0VepMEDvL7Y9sI4SzPIdmT6P3zIKZ1HH6C4McvsPE49Na6ukY5uq1YJL8/1x
 iZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BNqUVl5JhXUGBG9kreQv4HQ6twYK66HGwyTPZIQqshk=;
 b=bNoujpNdx0toRzkEpB34hB4+C+XRfBSpKkcQ43VcvdUL1BFX3WcR+UxomhXXdPunXT
 A5w6kY2qUamvPhiXLa46oBAevTuSY/xdboo22Vv7UwxvydYqf/lH5FIsDGg0pwJE4QV8
 CnfsTBDoLWcRgZFi3iIRqi7evxAOKyEvSZZaD+M2KMNPpUfqn6tOMlqIefPi8s0K7gpM
 AMZK3XvoZ+Atgpq374QyFISRSD1myUVq780JNguqkYEzUbkdmPpphgzpe2XXOCtLzMpa
 DHV+afy6ilSbq9620Q+e9KOJyNOA478MptnVqjDik5eA+vfYw4SaH0otACxVk2GM0MWH
 NFnw==
X-Gm-Message-State: APjAAAXwIzEKRyTNOj4g4zEus3D1Vd6uJYwk9rNHFDGZMcV1ICUBv7r4
 aucQoOTovW7VXPPq+BtbTpomV19odFT4lbL/5Lc=
X-Google-Smtp-Source: APXvYqyxqvo8WixxaonOOhUTCm5R01BrvfpXOlJUiwbEp++GSuah1ZRQf06SzbZ+x5qTV0X3MFfTGRdDDH1b3jmZ0QY=
X-Received: by 2002:ac8:2a5d:: with SMTP id l29mr2069242qtl.36.1571994461390; 
 Fri, 25 Oct 2019 02:07:41 -0700 (PDT)
MIME-Version: 1.0
References: <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
 <CAADnVQ+XxmvY0cs8MYriMMd7=2TSEm4zCtB+fs2vkwdUY6UgAQ@mail.gmail.com>
 <3ED8E928C4210A4289A677D2FEB48235140134CE@fmsmsx111.amr.corp.intel.com>
 <2bc26acd-170d-634e-c066-71557b2b3e4f@intel.com>
 <CAADnVQ+qq6RLMjh5bB1ugXP5p7vYM2F1fLGFQ2pL=2vhCLiBdA@mail.gmail.com>
 <2032d58c-916f-d26a-db14-bd5ba6ad92b9@intel.com>
 <CAADnVQ+CH1YM52+LfybLS+NK16414Exrvk1QpYOF=HaT4KRaxg@mail.gmail.com>
 <acf69635-5868-f876-f7da-08954d1f690e@intel.com>
 <20191019001449.fk3gnhih4nx724pm@ast-mbp>
 <6f281517-3785-ce46-65de-e2f78576783b@intel.com>
 <20191019022525.w5xbwkav2cpqkfwi@ast-mbp> <877e4zd8py.fsf@toke.dk>
 <CAJ+HfNj07FwmU2GGpUYw56PRwu4pHyHNSkbCOogbMB5zB2QqWA@mail.gmail.com>
 <7642a460-9ba3-d9f7-6cf8-aac45c7eef0d@intel.com>
 <CAADnVQ+jiEO+jnFR-G=xG=zz7UOSBieZbc1NN=sSnAwvPaJjUQ@mail.gmail.com>
 <8956a643-0163-5345-34fa-3566762a2b7d@intel.com>
 <CAADnVQKwnMChzeGaC66A99cHn5szB4hPZaGXq8JAhd8sjrdGeA@mail.gmail.com>
In-Reply-To: <CAADnVQKwnMChzeGaC66A99cHn5szB4hPZaGXq8JAhd8sjrdGeA@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Fri, 25 Oct 2019 11:07:29 +0200
Message-ID: <CAJ+HfNg8NMS7k+f4K3PH-cjA9XFbBbEetfZT55J0ntZejxV-PQ@mail.gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Subject: Re: [Intel-wired-lan] FW: [PATCH bpf-next 2/4] xsk: allow AF_XDP
 sockets to receive packets directly from a queue
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, Netdev <netdev@vger.kernel.org>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Herbert,
 Tom" <tom.herbert@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyMyBPY3QgMjAxOSBhdCAxOTo0MiwgQWxleGVpIFN0YXJvdm9pdG92CjxhbGV4ZWku
c3Rhcm92b2l0b3ZAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgT2N0IDIyLCAyMDE5IGF0
IDEyOjA2IFBNIFNhbXVkcmFsYSwgU3JpZGhhcgo+IDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRlbC5j
b20+IHdyb3RlOgo+ID4KPiA+IE9LLiBIZXJlIGlzIGFub3RoZXIgZGF0YSBwb2ludCB0aGF0IHNo
b3dzIHRoZSBwZXJmIHJlcG9ydCB3aXRoIHRoZSBzYW1lIHRlc3QgYnV0IENQVSBtaXRpZ2F0aW9u
cwo+ID4gdHVybmVkIE9GRi4gSGVyZSBicGZfcHJvZyBvdmVyaGVhZCBnb2VzIGRvd24gZnJvbSBh
bG1vc3QgKDEwLjE4ICsgNC41MSklIHRvICgzLjIzICsgMS40NCUpLgo+ID4KPiA+ICAgIDIxLjQw
JSAga3NvZnRpcnFkLzI4ICAgICBbaTQwZV0gICAgICAgICAgICAgICAgICAgICBba10gaTQwZV9j
bGVhbl9yeF9pcnFfemMKPiA+ICAgIDE0LjEzJSAgeGRwc29jayAgICAgICAgICBbaTQwZV0gICAg
ICAgICAgICAgICAgICAgICBba10gaTQwZV9jbGVhbl9yeF9pcnFfemMKPiA+ICAgICA4LjMzJSAg
a3NvZnRpcnFkLzI4ICAgICBba2VybmVsLnZtbGludXhdICAgICAgICAgICBba10geHNrX3Jjdgo+
ID4gICAgIDYuMDklICBrc29mdGlycWQvMjggICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAg
IFtrXSB4ZHBfZG9fcmVkaXJlY3QKPiA+ICAgICA1LjE5JSAgeGRwc29jayAgICAgICAgICB4ZHBz
b2NrICAgICAgICAgICAgICAgICAgICBbLl0gbWFpbgo+ID4gICAgIDMuNDglICBrc29mdGlycWQv
MjggICAgIFtrZXJuZWwudm1saW51eF0gICAgICAgICAgIFtrXSBicGZfeGRwX3JlZGlyZWN0X21h
cAo+ID4gICAgIDMuMjMlICBrc29mdGlycWQvMjggICAgIGJwZl9wcm9nXzNjODI1MWM3ZTBmZWY4
ZGIgIFtrXSBicGZfcHJvZ18zYzgyNTFjN2UwZmVmOGRiCj4gPgo+ID4gU28gYSBtYWpvciBjb21w
b25lbnQgb2YgdGhlIGJwZl9wcm9nIG92ZXJoZWFkIHNlZW1zIHRvIGJlIGR1ZSB0byB0aGUgQ1BV
IHZ1bG5lcmFiaWxpdHkgbWl0aWdhdGlvbnMuCj4KPiBJIGZlZWwgdGhhdCBpdCdzIGFuIGluY29y
cmVjdCBjb25jbHVzaW9uIGJlY2F1c2UgSklUIGlzIG5vdCBkb2luZwo+IGFueSByZXRwb2xpbmVz
IChiZWNhdXNlIHRoZXJlIGFyZSBubyBpbmRpcmVjdCBjYWxscyBpbiBicGYpLgo+IFRoZXJlIHNo
b3VsZCBiZSBubyBkaWZmZXJlbmNlIGluIGJwZl9wcm9nIHJ1bnRpbWUgd2l0aCBvciB3aXRob3V0
IG1pdGlnYXRpb25zLgo+IEFsc28geW91J3JlIHJ1bm5pbmcgcm9vdCwgc28gbm8gc3BlY3RyZSBt
aXRpZ2F0aW9ucyBlaXRoZXIuCj4KPiBUaGlzIDMlIHNlZW1zIGxpa2UgYSBsb3QgZm9yIGEgZnVu
Y3Rpb24gdGhhdCBkb2VzIGZldyBsb2FkcyB0aGF0IHNob3VsZAo+IGhpdCBkLWNhY2hlIGFuZCBv
bmUgZGlyZWN0IGNhbGwuCj4gUGxlYXNlIGludmVzdGlnYXRlIHdoeSB5b3UncmUgc2VlaW5nIHRo
aXMgMTAlIGNwdSBjb3N0IHdoZW4gbWl0aWdhdGlvbnMgYXJlIG9uLgo+IHBlcmYgcmVwb3J0L2Fu
bm90YXRlIGlzIHRoZSBiZXN0Lgo+IEFsc28gcGxlYXNlIGRvdWJsZSBjaGVjayB0aGF0IHlvdSdy
ZSB1c2luZyB0aGUgbGF0ZXN0IHBlcmYuCj4gU2luY2UgYnBmIHBlcmZvcm1hbmNlIGFuYWx5c2lz
IHdhcyBncmVhdGx5IGltcHJvdmVkIHNldmVyYWwgdmVyc2lvbnMgYWdvLgo+IEkgZG9uJ3QgdGhp
bmsgb2xkIHBlcmYgd2lsbCBiZSBzaG93aW5nIGJvZ3VzIG51bWJlcnMsIGJ1dCBiZXR0ZXIgdG8K
PiBydW4gdGhlIGxhdGVzdC4KPgoKRm9yIGNvbXBhcmlzb24sIG9uIG15IFNreWxha2UgM0dIeiB3
aXRoIG1pdGlnYXRpb25zIG9mZi4gKEkgaGF2ZSBvbmUKaW50ZXJuYWwgcGF0Y2ggdGhhdCBpbmxp
bmVzIHhza19yY3YoKSBpbnRvIF9feHNrX21hcF9yZWRpcmVjdCwgc28KdGhhdCdzIHdoeSBpdCdz
IG5vdCBzaG93aW5nIHhza19yY3YoKS4gSSdsbCB1cHN0cmVhbSB0aGF0Li4uKQoKICA0MS43OSUg
IFtrZXJuZWxdICAgICAgICAgICAgICAgICAgIFtrXSBpNDBlX2NsZWFuX3J4X2lycV96YwogIDE1
LjU1JSAgW2tlcm5lbF0gICAgICAgICAgICAgICAgICAgW2tdIF9feHNrX21hcF9yZWRpcmVjdAog
ICA5Ljg3JSAgW2tlcm5lbF0gICAgICAgICAgICAgICAgICAgW2tdIHhkcF9kb19yZWRpcmVjdAog
ICA2Ljg5JSAgW2tlcm5lbF0gICAgICAgICAgICAgICAgICAgW2tdIHhza191bWVtX3BlZWtfYWRk
cgogICA2LjM3JSAgW2tlcm5lbF0gICAgICAgICAgICAgICAgICAgW2tdIGJwZl94ZHBfcmVkaXJl
Y3RfbWFwCiAgIDUuMDIlICBicGZfcHJvZ185OTJkOWRkYzgzNWU1NjI5ICBba10gYnBmX3Byb2df
OTkyZDlkZGM4MzVlNTYyOQoKQWdhaW4sIGl0IG1pZ2h0IGxvb2sgd2VpcmQgdGhhdCBzaW1wbGUg
ZnVuY3Rpb25zIGxpa2UKYnBmX3hkcF9yZWRpcmVjdF9tYXAgYW5kIHRoZSBYRFAgcHJvZ3JhbSBp
cyA2JSBhbmQgNSUuCgpMZXQncyBkaWcgaW50byB0aGF0LiBJIGxldCB0aGUgeGRwc29jayBwcm9n
cmFtIChyeGRyb3ApIHJ1biBvbiBvbmUKY29yZSAyMiwgYW5kIHRoZSBrc29mdGlycWQgb24gY29y
ZSAyMC4gQ29yZSAyMCBpcyBvbmx5IHByb2Nlc3NpbmcKcGFja2V0cywgcGx1cyB0aGUgcmVndWxh
ciBrZXJuZWwgaG91c2Vob2xkaW5nLiBJIGRpZCBhIHByb2Nlc3NvciB0cmFjZQpmb3IgY29yZSAy
MCBmb3IgMjA3IDkzNiBwYWNrZXRzLgoKSW4gdG90YWwgaXQncyA4NCw0MDcsNDI3IGluc3RydWN0
aW9ucywgYW5kIGJwZl94ZHBfcmVkaXJlY3RfbWFwKCkgaXMKOCwxMDksNTA0IGluc3RydWN0aW9u
cywgd2hpY2ggaXMgOS42JS4gYnBmX3hkcF9yZWRpcmVjdF9tYXAoKSBleGVjdXRlcwozOSBpbnN0
cnVjdGlvbnMgZm9yIEFGX1hEUC4gQXMgcGVyZiBpcyByZXBvcnRpbmcgbGVzcyB0aGFuIDkuNiUg
bWVhbnMKdGhhdCB0aGUgSVBDIGNvdW50IG9mIHRoYXQgZnVuY3Rpb24gaXMgbW9yZSB0aGFuIHRo
ZSBhdmVyYWdlIHdoaWNoCnBlcmYtc3RhdCByZXBvcnRzIGFzIElQQyBvZiAyLjg4LgoKVGhlIEJQ
RiBwcm9ncmFtIGV4ZWN1dGVzIGZld2VyIGluc3RydWN0aW9ucyB0aGFuCmJwZl94ZHBfcmVkaXJl
Y3RfbWFwKCksIHNvIGdpdmVuIHRoYXQgcGVyZiBzaG93cyA1JSwgbWVhbnMgdGhhdCB0aGUKSVBD
IGNvdW50IGlzIGJldHRlciB0aGFuIGF2ZXJhZ2UgaGVyZSBhcyB3ZWxsLgoKU28sIGl0J3Mgcm91
Z2hseSA0MDUgaW5zdHJ1Y3Rpb25zIHBlciBwYWNrZXQsIGFuZCB3aXRoIGFuIElQQyBvZiAyLjg4
CnRoYXQnbGwgZ2l2ZSB+MTQwIGN5Y2xlcyBwZXIgcGFja2V0LCB3aGljaCBvbiB0aGlzIG1hY2hp
bmUKKDMsMDAwLDAwMCwwMDAvMTQwKSBpcyB+MjEuNCBNcHBzLiBUaGUgeGRwc29jayBhcHBsaWNh
dGlvbiByZXBvcnRzCjIxLiBUaGlzIGlzIHNhbmUuCgpUaGUgVEw7RFIgdmVyc2lvbiBpczogNiUg
YW5kIDUlIGZvciBicGZfeGRwX3JlZGlyZWN0X21hcCBhbmQKYnBmX3Byb2dfOTkyZDlkZGM4MzVl
NTYyOSBtaWdodCBzZWVtIGhpZ2gsIGJ1dCBpdCdzIGp1c3QgdGhhdCB0aGUKdG90YWwgbnVtYmVy
IG9mIGluc3RydWN0aW9uIGV4ZWN1dGluZyBpcyBmYWlybHkgbG93LiBTbywgZXZlbiB0aG91Z2gK
dGhlIGZ1bmN0aW9ucyBhcmUgc21hbGwgaW4gc2l6ZSwgaXQgd2lsbCBzaG93IHVwIGFzIG5vbi1u
ZWdsaWdpYmxlCnBlcmNlbnRhZ2UgaW4gcGVyZi4KCkF0IHRoZXNlIHNwZWVkcywgcmVhbGx5IHNt
YWxsIHRoaW5ncyBoYXZlIGFuIGltcGFjdCBvbgpwZXJmb3JtYW5jZS4gRFBESyBoYXMgfjUwIGN5
Y2xlcyBwZXIgcGFja2V0LgoKCkJqw7ZybgoKCgo+ID4gVGhlIG90aGVyIGNvbXBvbmVudCBpcyB0
aGUgYnBmX3hkcF9yZWRpcmVjdF9tYXAoKSBjb2RlcGF0aC4KPiA+Cj4gPiBMZXQgbWUga25vdyBp
ZiBpdCBoZWxwcyB0byBjb2xsZWN0IGFueSBvdGhlciBkYXRhIHRoYXQgc2hvdWxkIGZ1cnRoZXIg
aGVscCB3aXRoIHRoZSBwZXJmIGFuYWx5c2lzLgo+ID4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
