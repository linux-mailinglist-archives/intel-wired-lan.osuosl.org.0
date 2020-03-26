Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D91193DDE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2020 12:30:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 888EC88653;
	Thu, 26 Mar 2020 11:30:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q5vgc30uCoax; Thu, 26 Mar 2020 11:30:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E2F688544;
	Thu, 26 Mar 2020 11:30:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D51B1BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 11:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 88E7788E49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 11:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AschzkCHDuUC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2020 11:30:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6125A87EA8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 11:30:07 +0000 (UTC)
Received: from mail-pf1-f199.google.com ([209.85.210.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jHQi5-0000jI-HR
 for intel-wired-lan@lists.osuosl.org; Thu, 26 Mar 2020 11:30:05 +0000
Received: by mail-pf1-f199.google.com with SMTP id n28so4874756pfq.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 04:30:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=HALfYwFfeY5UrbJ7xe/bm/b+wfD4jWuw8RPBvgJnNt8=;
 b=Cfwk9yAq4NchDsZq0dd1LXFmet84G8XKMB7jV9Cz13rtNO9mQdRUtwzAPLYgOqU2V5
 552kH0Fh6bfCzU6jG+WaAh9gaHmp1fG2G5HftVQjoNQjFknJ0fkYCZrvJTHwELvankuv
 oxzy2p+4fpXvECw74CP15COK3D2vbIJ11D6fo8L/iHMBZIADJR62B2Q0L46KaPyqbM45
 uVJMjZLoRVpbjzQFxQq1xz45skuV2vTUIRoJBUCWlw+I+akYQXP/EzfOPsHt+eR4QUwu
 5/ZG/PWWGF4Qtn68wmGCFDjF8NG1cac5zgiQhu9AL8gGhqtEbtFJ3jkvOg8k64jegRmx
 bUtg==
X-Gm-Message-State: ANhLgQ0M95J35jr7VDRTPufMSJcBHwxjv5/PJhTJ/eIpeojeTXHZQUrI
 7xlN4jjjNkhqNtnPCUPa8ysFSxJLa/7FJfL6+44yk3sgJFjO5e678EdLyZnonDEetEmo6T9Fvp6
 siUjYZBAKCz92fBjoWUxukpnpuS2G+LHQZ03j5XBc95ZBGiU=
X-Received: by 2002:a17:90a:d081:: with SMTP id
 k1mr2764271pju.57.1585222203903; 
 Thu, 26 Mar 2020 04:30:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuS+bLH90tlYwet5AJzyUoCGHkWCs9CDSvMU1YuamVJeArEPTfM7EKmXOeR4nlxgDj09iQpzg==
X-Received: by 2002:a17:90a:d081:: with SMTP id
 k1mr2764220pju.57.1585222203472; 
 Thu, 26 Mar 2020 04:30:03 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id y131sm1454645pfb.78.2020.03.26.04.30.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Mar 2020 04:30:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <f9dc1980-fa8b-7df9-6460-b0944c7ebc43@molgen.mpg.de>
Date: Thu, 26 Mar 2020 19:29:59 +0800
Message-Id: <60A8493D-811B-4AD5-A8D3-82054B562A8C@canonical.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
 <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
 <899895bc-fb88-a97d-a629-b514ceda296d@canonical.com>
 <750ad0ad-816a-5896-de2f-7e034d2a2508@intel.com>
 <f9dc1980-fa8b-7df9-6460-b0944c7ebc43@molgen.mpg.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: bump up timeout to wait when
 ME un-configure ULP mode
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, David Miller <davem@davemloft.net>,
 Rex Tsai <rex.tsai@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwKCj4gT24gTWFyIDI1LCAyMDIwLCBhdCAyMzo0OSwgUGF1bCBNZW56ZWwgPHBtZW56
ZWxAbW9sZ2VuLm1wZy5kZT4gd3JvdGU6Cj4gCj4gRGVhciBMaW51eCBmb2xrcywKPiAKPiAKPiBB
bSAyNS4wMy4yMCB1bSAxNDo1OCBzY2hyaWViIE5lZnRpbiwgU2FzaGE6Cj4+IE9uIDMvMjUvMjAy
MCAwODo0MywgQWFyb24gTWEgd3JvdGU6Cj4gCj4+PiBPbiAzLzI1LzIwIDI6MzYgUE0sIE5lZnRp
biwgU2FzaGEgd3JvdGU6Cj4+Pj4gT24gMy8yNS8yMDIwIDA2OjE3LCBLYWktSGVuZyBGZW5nIHdy
b3RlOgo+IAo+Pj4+Pj4gT24gTWFyIDI0LCAyMDIwLCBhdCAwMzoxNiwgQWFyb24gTWEgPGFhcm9u
Lm1hQGNhbm9uaWNhbC5jb20+IHdyb3RlOgo+Pj4+Pj4gCj4+Pj4+PiBNRSB0YWtlcyAyKyBzZWNv
bmRzIHRvIHVuLWNvbmZpZ3VyZSBVTFAgbW9kZSBkb25lIGFmdGVyIHJlc3VtZQo+Pj4+Pj4gZnJv
bSBzMmlkbGUgb24gc29tZSBUaGlua1BhZCBsYXB0b3BzLgo+Pj4+Pj4gV2l0aG91dCBlbm91Z2gg
d2FpdCwgcmVzZXQgYW5kIHJlLWluaXQgd2lsbCBmYWlsIHdpdGggZXJyb3IuCj4+Pj4+IAo+Pj4+
PiBUaGFua3MsIHRoaXMgcGF0Y2ggc29sdmVzIHRoZSBpc3N1ZS4gV2UgY2FuIGRyb3AgdGhlIERN
SSBxdWlyayBpbgo+Pj4+PiBmYXZvciBvZiB0aGlzIHBhdGNoLgo+Pj4+PiAKPj4+Pj4+IEZpeGVz
OiBmMTViYjZkZGU3MzhjYzhmYTAgKCJlMTAwMGU6IEFkZCBzdXBwb3J0IGZvciBTMGl4IikKPj4+
Pj4+IEJ1Z0xpbms6IGh0dHBzOi8vYnVncy5sYXVuY2hwYWQubmV0L2J1Z3MvMTg2NTU3MAo+Pj4+
Pj4gU2lnbmVkLW9mZi1ieTogQWFyb24gTWEgPGFhcm9uLm1hQGNhbm9uaWNhbC5jb20+Cj4+Pj4+
PiAtLS0KPj4+Pj4+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMg
fCA0ICsrLS0KPj4+Pj4+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4+Pj4+PiAKPj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4+Pj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2UxMDAwZS9pY2g4bGFuLmMKPj4+Pj4+IGluZGV4IGI0MTM1YzUwZTkwNS4uMTQ3YjE1YTJmOGIz
IDEwMDY0NAo+Pj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2lj
aDhsYW4uYwo+Pj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2lj
aDhsYW4uYwo+Pj4+Pj4gQEAgLTEyNDAsOSArMTI0MCw5IEBAIHN0YXRpYyBzMzIgZTEwMDBfZGlz
YWJsZV91bHBfbHB0X2xwKHN0cnVjdAo+Pj4+Pj4gZTEwMDBfaHcgKmh3LCBib29sIGZvcmNlKQo+
Pj4+Pj4gICAgICAgICAgICAgIGV3MzIoSDJNRSwgbWFjX3JlZyk7Cj4+Pj4+PiAgICAgICAgICB9
Cj4+Pj4+PiAKPj4+Pj4+IC0gICAgICAgIC8qIFBvbGwgdXAgdG8gMzAwbXNlYyBmb3IgTUUgdG8g
Y2xlYXIgVUxQX0NGR19ET05FLiAqLwo+Pj4+Pj4gKyAgICAgICAgLyogUG9sbCB1cCB0byAyLjVz
ZWMgZm9yIE1FIHRvIGNsZWFyIFVMUF9DRkdfRE9ORS4gKi8KPj4+Pj4+ICAgICAgICAgIHdoaWxl
IChlcjMyKEZXU00pICYgRTEwMDBfRldTTV9VTFBfQ0ZHX0RPTkUpIHsKPj4+Pj4+IC0gICAgICAg
ICAgICBpZiAoaSsrID09IDMwKSB7Cj4+Pj4+PiArICAgICAgICAgICAgaWYgKGkrKyA9PSAyNTAp
IHsKPj4+Pj4+ICAgICAgICAgICAgICAgICAgcmV0X3ZhbCA9IC1FMTAwMF9FUlJfUEhZOwo+Pj4+
Pj4gICAgICAgICAgICAgICAgICBnb3RvIG91dDsKPj4+Pj4+ICAgICAgICAgICAgICB9Cj4+Pj4+
IAo+Pj4+PiBUaGUgcmV0dXJuIHZhbHVlIHdhcyBub3QgY2F1Z2h0IGJ5IHRoZSBjYWxsZXIsIHNv
IHRoZSBlcnJvciBlbmRzIHVwCj4+Pj4+IHVubm90aWNlZC4KPj4+Pj4gTWF5YmUgbGV0IHRoZSBj
YWxsZXIgY2hlY2sgdGhlIHJldHVybiB2YWx1ZSBvZgo+Pj4+PiBlMTAwMF9kaXNhYmxlX3VscF9s
cHRfbHAoKT8KPiAKPj4+PiBJIGEgYml0IGNvbmZ1c2VkLiBJbiBvdXIgcHJldmlvdXMgY29udmVy
c2F0aW9uIHlvdSB0b2xkIE1FIG5vdCBydW5uaW5nLgo+Pj4+IGxldCBtZSBzaGltbWluZyBpbi4g
SW5jcmVhc2luZyBkZWxheSB3b24ndCBiZSBzb2x2ZSB0aGUgcHJvYmxlbSBhbmQganVzdAo+Pj4+
IG1hc2sgaXQuIFdlIG5lZWQgdG8gdW5kZXJzdGFuZCB3aHkgTUUgdGFrZSB0b28gbXVjaCB0aW1l
LiBXaGF0IGlzCj4+Pj4gcHJvYmxlbSB3aXRoIHRoaXMgc3BlY2lmaWMgc3lzdGVtPwo+Pj4+IFNv
LCBiYXNpY2FsbHkgbm8gTUUgc3lzdGVtIHNob3VsZCB3b3JrcyBmb3IgeW91Lgo+Pj4gCj4+PiBT
b21lIGxhcHRvcHMgTUUgd29yayB0aGF0J3Mgd2h5IG9ubHkgcmVwcm9kdWNlIGlzc3VlIG9uIHNv
bWUgbGFwdG9wcy4KPj4+IEluIHRoaXMgaXNzdWUgaTIxOSBpcyBjb250cm9sbGVkIGJ5IE1FLgo+
PiAKPj4gV2hvIGNhbiBleHBsYWluIC0gd2h5IE1FIHJlcXVpcmVkIHRvbyBtdWNoIHRpbWUgb24g
dGhpcyBzeXN0ZW0/Cj4+IFByb2JhYmx5IG5lZWQgd29yayB3aXRoIE1FL0JJT1MgdmVuZG9yIGFu
ZCB1bmRlcnN0YW5kIGl0Lgo+PiBEZWxheSB3aWxsIGp1c3QgbWFzayB0aGUgcmVhbCBwcm9ibGVt
IC0gd2UgbmVlZCB0byBmaW5kIHJvb3QgY2F1c2UuCj4+PiBRdWlyayBpcyBvbmx5IGZvciAxIG1v
ZGVsIHR5cGUuIEJ1dCBpc3N1ZSBpcyByZXByb2R1Y2VkIGJ5IG1vcmUgbW9kZWxzLgo+Pj4gU28g
aXQgd29uJ3Qgd29yay4KPiAKPiAoV2hlcmUgaXMgQWFyb27igJlzIHJlcGx5PyBJdCB3YXNu4oCZ
dCBkZWxpdmVyZWQgdG8gbWUgeWV0LikKPiAKPiBBcyB0aGlzIGlzIGNsZWFybHkgYSByZWdyZXNz
aW9uLCBwbGVhc2UgcmV2ZXJ0IHRoZSBjb21taXQgZm9yIG5vdywgYW5kIHRoZW4gZmluZCBhIHdh
eSB0byBjb3JyZWN0bHkgaW1wbGVtZW50IFMwaXggc3VwcG9ydC4gTGludXjigJkgcmVncmVzc2lv
biBwb2xpY3kgZGVtYW5kcyB0aGF0IGFzIG5vIGZpeCBoYXMgYmVlbiBmb3VuZCBzaW5jZSB2NS41
LXJjMS4gQ2hhbmdpbmcgSW50ZWwgTUUgc2V0dGluZ3MsIGV2ZW4gaWYgaXQgd291bGQgd29yayBh
cm91bmQgdGhlIGlzc3VlLCBpcyBub3QgYW4gYWNjZXB0YWJsZSBzb2x1dGlvbi4gRGVsYXlpbmcg
dGhlIHJlc3VtZSB0aW1lIGlzIGFsc28gbm90IGEgc29sdXRpb24uCgpUaGUgczBpeCBwYXRjaCBj
YW4gcmVkdWNlIHBvd2VyIGNvbnN1bXB0aW9uLCBmaW5hbGx5IG1ha2VzIFMyaWRsZSBhbiBhY2Nl
cHRhYmxlIHNsZWVwIG1ldGhvZC4KU28gSSdkIHNheSBpdCdzIGEgZml4LCBhbGJlaXQgYSByZWdy
ZXNzaW9uIHdhcyBpbnRyb2R1Y2VkLgoKPiAKPiBSZWdhcmRpbmcgSW50ZWwgTWFuYWdlbWVudCBF
bmdpbmUsIG9ubHkgSW50ZWwga25vd3Mgd2hhdCBpdCBkb2VzIGFuZCB3aGF0IHRoZSBlcnJvciBp
cywgYXMgdGhlIE1FIGZpcm13YXJlIGlzIHByb3ByaWV0YXJ5IGFuZCBjbG9zZWQuCj4gCj4gTGFz
dGx5LCB0aGVyZSBpcyBubyB3YXkgdG8gZnVsbHkgZGlzYWJsZSB0aGUgSW50ZWwgTWFuYWdlbWVu
dCBFbmdpbmUuIFRoZSBIQVAgc3R1ZmYgY2xhaW1zIHRvIHN0b3AgdGhlIEludGVsIE1FIGV4ZWN1
dGlvbiwgYnV0IG5vYm9keSBrbm93cywgaWYgaXTigJlzIHN1Y2Nlc3NmdWwuCj4gCj4gQWFyb24s
IEthaS1IYW5nLCBjYW4geW91IHNlbmQgdGhlIHJldmVydD8KCkkgY29uc2lkZXIgdGhhdCBhcyBh
biBpbXBvcnRhbnQgZml4IGZvciBzMmlkbGUsIEkgZG9uJ3QgdGhpbmsgcmV2ZXJ0aW5nIGlzIGFw
cHJvcHJpYXRlLgoKS2FpLUhlbmcKCj4gCj4gCj4gS2luZCByZWdhcmRzLAo+IAo+IFBhdWwKPiAK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
