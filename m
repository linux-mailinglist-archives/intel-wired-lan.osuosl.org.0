Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C33592F3BCE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jan 2021 22:23:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5179120352;
	Tue, 12 Jan 2021 21:22:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bPGBAx5BrwCR; Tue, 12 Jan 2021 21:22:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2704520488;
	Tue, 12 Jan 2021 21:22:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C56F01BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 21:22:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C084A870D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 21:22:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KBS+K51WCSUJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jan 2021 21:22:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
 [209.85.166.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CC939870BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 21:22:53 +0000 (UTC)
Received: by mail-io1-f47.google.com with SMTP id p187so7239949iod.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 13:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=79RFCeMIaYDXiPI1/HqUMoFY6dJBx7Ne1PhmBLE0xOk=;
 b=DNSCUBPiBI/EdlDKAYuRWBKLNYPkwhWn2tzGj+G7JjoimR5AFrK3pnAfpa8ntE/J+/
 ykPeTw7SBAUNGT7YYuSSSq6DutaUtGDPQw26Ykar/qeRP+sPaOAOKfE8mNS+/EPs+NpU
 0UcW6i8jLtoe63eE2WG8DRKmyE8BPPU8/M+uALbRpw7Rq6M0bCgmCnNJmd4DfykSCugJ
 Ig3afwNq6qRblZ47HmGdQhJFKLYCwPd0M4UBPM2QgVUc8qcjWeImWAHNwxwnmBNlsW67
 u+LLBtmSjq0EsD6q32m68e9Crg5Lm+wSNxgx65j7NzAt2rUMlrVd50VrhG+ARs6Oa8f1
 lhXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=79RFCeMIaYDXiPI1/HqUMoFY6dJBx7Ne1PhmBLE0xOk=;
 b=uFbyn1W/lXsujhFM/vCtd7pGwTLGxkoqz792FX28Vj/1GoKXArs3jzdmzwL5qlCO6/
 9o/21TCbzXRqQyHGzCzNN6KLiFGfMrwisirQeZQSMQe4YfAwGu3ry2eMXv0L/29LhSEq
 Ac5jJ7GVI/YMQN942PwjKoXKPEGmdaR/C1lA8axxu/PgLB//NNM0F3MrNubXzzexTU+e
 r44fy3KWbKdk/jn0su5Tr7fW9STvxJYBkTQhzOfRjKCPTAF4vgPAssgY6nYJ4Ak557Q4
 2MeDlQh5ancT089suw27LP+vkiXhoq3Y8QcHJK81xGORnRARxrE3010gHRFdwwB0N7qx
 qrxA==
X-Gm-Message-State: AOAM5306lRbGSUTNuBPb/TM9fuARt38gzNJ+PlsdSUXzAx7bJlTmpIX1
 LiDy5aoYe5BS79wtSCAvNdqiaLves6Pvhn1QnvA=
X-Google-Smtp-Source: ABdhPJxVm5uPMqt21c6lmlknG3ikW+Xvb66Hap1+htQk1sSK/L2PSQJGvpiynDbXrhENvgi7By+fmCrDO5WiZWK7IY0=
X-Received: by 2002:a02:5889:: with SMTP id f131mr1307261jab.121.1610486572303; 
 Tue, 12 Jan 2021 13:22:52 -0800 (PST)
MIME-Version: 1.0
References: <1609990905-29220-1-git-send-email-lirongqing@baidu.com>
 <CAKgT0Ucar6h-V2pQK6Gx4wrwFzJqySfv-MGXtW1yEc6Jq3uNSQ@mail.gmail.com>
 <65a7da2dc20c4fa5b69270f078026100@baidu.com>
In-Reply-To: <65a7da2dc20c4fa5b69270f078026100@baidu.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 12 Jan 2021 13:22:41 -0800
Message-ID: <CAKgT0UccR7Mh4efd+d193bvQNP2-QMdBxP0uk0__0Z+dYepNjg@mail.gmail.com>
To: "Li,Rongqing" <lirongqing@baidu.com>
Subject: Re: [Intel-wired-lan] [PATCH] igb: avoid premature Rx buffer reuse
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
Cc: Netdev <netdev@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBKYW4gMTEsIDIwMjEgYXQgNjo1NCBQTSBMaSxSb25ncWluZyA8bGlyb25ncWluZ0Bi
YWlkdS5jb20+IHdyb3RlOgo+Cj4KPgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+
IEZyb206IEFsZXhhbmRlciBEdXljayBbbWFpbHRvOmFsZXhhbmRlci5kdXlja0BnbWFpbC5jb21d
Cj4gPiBTZW50OiBUdWVzZGF5LCBKYW51YXJ5IDEyLCAyMDIxIDQ6NTQgQU0KPiA+IFRvOiBMaSxS
b25ncWluZyA8bGlyb25ncWluZ0BiYWlkdS5jb20+Cj4gPiBDYzogTmV0ZGV2IDxuZXRkZXZAdmdl
ci5rZXJuZWwub3JnPjsgaW50ZWwtd2lyZWQtbGFuCj4gPiA8aW50ZWwtd2lyZWQtbGFuQGxpc3Rz
Lm9zdW9zbC5vcmc+OyBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4gPiBT
dWJqZWN0OiBSZTogW1BBVENIXSBpZ2I6IGF2b2lkIHByZW1hdHVyZSBSeCBidWZmZXIgcmV1c2UK
PiA+Cj4gPiBPbiBXZWQsIEphbiA2LCAyMDIxIGF0IDc6NTMgUE0gTGkgUm9uZ1FpbmcgPGxpcm9u
Z3FpbmdAYmFpZHUuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gVGhlIHBhZ2UgcmVjeWNsZSBjb2Rl
LCBpbmNvcnJlY3RseSwgcmVsaWVkIG9uIHRoYXQgYSBwYWdlIGZyYWdtZW50Cj4gPiA+IGNvdWxk
IG5vdCBiZSBmcmVlZCBpbnNpZGUgeGRwX2RvX3JlZGlyZWN0KCkuIFRoaXMgYXNzdW1wdGlvbiBs
ZWFkcyB0bwo+ID4gPiB0aGF0IHBhZ2UgZnJhZ21lbnRzIHRoYXQgYXJlIHVzZWQgYnkgdGhlIHN0
YWNrL1hEUCByZWRpcmVjdCBjYW4gYmUKPiA+ID4gcmV1c2VkIGFuZCBvdmVyd3JpdHRlbi4KPiA+
ID4KPiA+ID4gVG8gYXZvaWQgdGhpcywgc3RvcmUgdGhlIHBhZ2UgY291bnQgcHJpb3IgaW52b2tp
bmcgeGRwX2RvX3JlZGlyZWN0KCkuCj4gPiA+Cj4gPiA+IEZpeGVzOiA5Y2JjOTQ4YjVhMjAgKCJp
Z2I6IGFkZCBYRFAgc3VwcG9ydCIpCj4gPiA+IFNpZ25lZC1vZmYtYnk6IExpIFJvbmdRaW5nIDxs
aXJvbmdxaW5nQGJhaWR1LmNvbT4KPiA+ID4gQ2M6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVs
QGludGVsLmNvbT4KPiA+Cj4gPiBJJ20gbm90IHN1cmUgd2hhdCB5b3UgYXJlIHRhbGtpbmcgYWJv
dXQgaGVyZS4gV2UgYWxsb3cgZm9yIGEgMCB0byAxIGNvdW50Cj4gPiBkaWZmZXJlbmNlIGluIHRo
ZSBwYWdlY291bnQgYmlhcy4gVGhlIGlkZWEgaXMgdGhlIGRyaXZlciBzaG91bGQgYmUgaG9sZGlu
ZyBvbnRvCj4gPiBhdCBsZWFzdCBvbmUgcmVmZXJlbmNlIGZyb20gdGhlIGRyaXZlciBhdCBhbGwg
dGltZXMuCj4gPiBBcmUgeW91IHNheWluZyB0aGF0IGlzIG5vdCB0aGUgY2FzZT8KPiA+Cj4gPiBB
cyBmYXIgYXMgdGhlIGNvZGUgaXRzZWxmIHdlIGhvbGQgb250byB0aGUgcGFnZSBhcyBsb25nIGFz
IG91ciBkaWZmZXJlbmNlIGRvZXMKPiA+IG5vdCBleGNlZWQgMS4gU28gc3BlY2lmaWNhbGx5IGlm
IHRoZSBYRFAgY2FsbCBpcyBmcmVlaW5nIHRoZSBwYWdlIHRoZSBwYWdlIGl0c2VsZgo+ID4gc2hv
dWxkIHN0aWxsIGJlIHZhbGlkIGFzIHRoZSByZWZlcmVuY2UgY291bnQgc2hvdWxkbid0IGRyb3Ag
YmVsb3cgMSwgYW5kIGluIHRoYXQKPiA+IGNhc2UgdGhlIGRyaXZlciBzaG91bGQgYmUgaG9sZGlu
ZyB0aGF0IG9uZSByZWZlcmVuY2UgdG8gdGhlIHBhZ2UuCj4gPgo+ID4gV2hlbiB3ZSBwZXJmb3Jt
IG91ciBjaGVjayB3ZSBhcmUgcGVyZm9ybWluZyBpdCBzdWNoIGF0IG91dHB1dCBvZiBlaXRoZXIg
MCBpZgo+ID4gdGhlIHBhZ2UgaXMgZnJlZWQsIG9yIDEgaWYgdGhlIHBhZ2UgaXMgbm90IGZyZWVk
IGFyZSBhY2NlcHRhYmxlIGZvciB1cyB0byBhbGxvdwo+ID4gcmV1c2UuIFRoZSBrZXkgYml0IGlz
IGluIGlnYl9jbGVhbl9yeF9pcnEgd2hlcmUgd2Ugd2lsbCBmbGlwIHRoZSBidWZmZXIgZm9yIHRo
ZQo+ID4gSUdCX1hEUF9UWCB8IElHQl9YRFBfUkVESVIgY2FzZSBhbmQganVzdCBpbmNyZW1lbnQg
dGhlIHBhZ2VjbnRfYmlhcwo+ID4gaW5kaWNhdGluZyB0aGF0IHRoZSBwYWdlIHdhcyBkcm9wcGVk
IGluIHRoZSBub24tZmxpcHBlZCBjYXNlLgo+ID4KPiA+IEFyZSB5b3UgcGVyaGFwcyBzZWVpbmcg
YSBmdW5jdGlvbiB0aGF0IGlzIHJldHVybmluZyBhbiBlcnJvciBhbmQgc3RpbGwgY29uc3VtaW5n
Cj4gPiB0aGUgcGFnZT8gSWYgc28gdGhhdCBtaWdodCBleHBsYWluIHdoYXQgeW91IGFyZSBzZWVp
bmcuCj4gPiBIb3dldmVyIHRoZSBidWcgd291bGQgYmUgaW4gdGhlIG90aGVyIGRyaXZlciBub3Qg
dGhpcyBvbmUuIFRoZQo+ID4geGRwX2RvX3JlZGlyZWN0IGZ1bmN0aW9uIGlzIG5vdCBzdXBwb3Nl
ZCB0byBmcmVlIHRoZSBwYWdlIGlmIGl0IHJldHVybnMgYW4gZXJyb3IuCj4gPiBJdCBpcyBzdXBw
b3NlZCB0byBsZWF2ZSB0aGF0IHVwIHRvIHRoZSBmdW5jdGlvbiB0aGF0IGNhbGxlZCB4ZHBfZG9f
cmVkaXJlY3QuCj4gPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYi9pZ2JfbWFpbi5jIHwgMjIgKysrKysrKysrKysrKysrLS0tLS0tLQo+ID4gPiAgMSBmaWxl
IGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+ID4g
PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4gPiA+IGluZGV4
IDAzZjc4ZmRiMGRjZC4uM2UwZDkwM2NmOTE5IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+ID4gPiArKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+ID4gPiBAQCAtODIzMiw3ICs4MjMyLDggQEAg
c3RhdGljIGlubGluZSBib29sIGlnYl9wYWdlX2lzX3Jlc2VydmVkKHN0cnVjdAo+ID4gcGFnZSAq
cGFnZSkKPiA+ID4gICAgICAgICByZXR1cm4gKHBhZ2VfdG9fbmlkKHBhZ2UpICE9IG51bWFfbWVt
X2lkKCkpIHx8Cj4gPiA+IHBhZ2VfaXNfcGZtZW1hbGxvYyhwYWdlKTsgIH0KPiA+ID4KPiA+ID4g
LXN0YXRpYyBib29sIGlnYl9jYW5fcmV1c2VfcnhfcGFnZShzdHJ1Y3QgaWdiX3J4X2J1ZmZlciAq
cnhfYnVmZmVyKQo+ID4gPiArc3RhdGljIGJvb2wgaWdiX2Nhbl9yZXVzZV9yeF9wYWdlKHN0cnVj
dCBpZ2JfcnhfYnVmZmVyICpyeF9idWZmZXIsCj4gPiA+ICsKPiA+IGludAo+ID4gPiArcnhfYnVm
X3BnY250KQo+ID4gPiAgewo+ID4gPiAgICAgICAgIHVuc2lnbmVkIGludCBwYWdlY250X2JpYXMg
PSByeF9idWZmZXItPnBhZ2VjbnRfYmlhczsKPiA+ID4gICAgICAgICBzdHJ1Y3QgcGFnZSAqcGFn
ZSA9IHJ4X2J1ZmZlci0+cGFnZTsgQEAgLTgyNDMsNyArODI0NCw3IEBACj4gPiA+IHN0YXRpYyBi
b29sIGlnYl9jYW5fcmV1c2VfcnhfcGFnZShzdHJ1Y3QgaWdiX3J4X2J1ZmZlciAqcnhfYnVmZmVy
KQo+ID4gPgo+ID4gPiAgI2lmIChQQUdFX1NJWkUgPCA4MTkyKQo+ID4gPiAgICAgICAgIC8qIGlm
IHdlIGFyZSBvbmx5IG93bmVyIG9mIHBhZ2Ugd2UgY2FuIHJldXNlIGl0ICovCj4gPiA+IC0gICAg
ICAgaWYgKHVubGlrZWx5KChwYWdlX3JlZl9jb3VudChwYWdlKSAtIHBhZ2VjbnRfYmlhcykgPiAx
KSkKPiA+ID4gKyAgICAgICBpZiAodW5saWtlbHkoKHJ4X2J1Zl9wZ2NudCAtIHBhZ2VjbnRfYmlh
cykgPiAxKSkKPiA+ID4gICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+ID4gICNlbHNl
Cj4gPiBJIHdvdWxkIG5lZWQgbW9yZSBpbmZvIG9uIHRoZSBhY3R1YWwgaXNzdWUuIElmIG5vdGhp
bmcgZWxzZSBpdCBtaWdodCBiZSB1c2VmdWwgdG8KPiA+IGhhdmUgYW4gZXhhbXBsZSB3aGVyZSB5
b3UgcHJpbnQgb3V0IHRoZSBwYWdlX3JlZl9jb3VudCB2ZXJzdXMgdGhlCj4gPiBwYWdlY250X2Jp
YXMgYXQgYSBmZXcgcG9pbnRzIHRvIHZlcmlmeSBleGFjdGx5IHdoYXQgaXMgZ29pbmcgb24uIEFz
IEkgc2FpZCBiZWZvcmUKPiA+IGlmIHRoZSBpc3N1ZSBpcyB0aGUgeGRwX2RvX3JlZGlyZWN0IHJl
dHVybmluZyBhbiBlcnJvciBhbmQgc3RpbGwgY29uc3VtaW5nIHRoZQo+ID4gcGFnZSB0aGVuIHRo
ZSBidWcgaXMgZWxzZXdoZXJlIGFuZCBub3QgaGVyZS4KPgo+Cj4gVGhpcyBwYXRjaCBpcyBzYW1l
IGFzIDc1YWFiNGUxMGFlNmE0NTkzYTYwZjY2ZDEzZGU3NTVkNGU5MWY0MDAKPgo+Cj4gY29tbWl0
IDc1YWFiNGUxMGFlNmE0NTkzYTYwZjY2ZDEzZGU3NTVkNGU5MWY0MDAKPiBBdXRob3I6IEJqw7Zy
biBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPiBEYXRlOiAgIFR1ZSBBdWcgMjUgMTk6
Mjc6MzQgMjAyMCArMDIwMAo+Cj4gICAgIGk0MGU6IGF2b2lkIHByZW1hdHVyZSBSeCBidWZmZXIg
cmV1c2UKPgo+ICAgICBUaGUgcGFnZSByZWN5Y2xlIGNvZGUsIGluY29ycmVjdGx5LCByZWxpZWQg
b24gdGhhdCBhIHBhZ2UgZnJhZ21lbnQKPiAgICAgY291bGQgbm90IGJlIGZyZWVkIGluc2lkZSB4
ZHBfZG9fcmVkaXJlY3QoKS4gVGhpcyBhc3N1bXB0aW9uIGxlYWRzIHRvCj4gICAgIHRoYXQgcGFn
ZSBmcmFnbWVudHMgdGhhdCBhcmUgdXNlZCBieSB0aGUgc3RhY2svWERQIHJlZGlyZWN0IGNhbiBi
ZQo+ICAgICByZXVzZWQgYW5kIG92ZXJ3cml0dGVuLgo+Cj4gICAgIFRvIGF2b2lkIHRoaXMsIHN0
b3JlIHRoZSBwYWdlIGNvdW50IHByaW9yIGludm9raW5nIHhkcF9kb19yZWRpcmVjdCgpLgo+Cj4g
ICAgIExvbmdlciBleHBsYW5hdGlvbjoKPgo+ICAgICBJbnRlbCBOSUNzIGhhdmUgYSByZWN5Y2xl
IG1lY2hhbmlzbS4gVGhlIG1haW4gaWRlYSBpcyB0aGF0IGEgcGFnZSBpcwo+ICAgICBzcGxpdCBp
bnRvIHR3byBwYXJ0cy4gT25lIHBhcnQgaXMgb3duZWQgYnkgdGhlIGRyaXZlciwgb25lIHBhcnQg
bWlnaHQKPiAgICAgYmUgb3duZWQgYnkgc29tZW9uZSBlbHNlLCBzdWNoIGFzIHRoZSBzdGFjay4K
Pgo+ICAgICB0MDogUGFnZSBpcyBhbGxvY2F0ZWQsIGFuZCBwdXQgb24gdGhlIFJ4IHJpbmcKPiAg
ICAgICAgICAgICAgICAgICArLS0tLS0tLS0tLS0tLS0tCj4gICAgIHVzZWQgYnkgTklDIC0+fCB1
cHBlciBidWZmZXIKPiAgICAgKHJ4X2J1ZmZlcikgICArLS0tLS0tLS0tLS0tLS0tCj4gICAgICAg
ICAgICAgICAgICAgfCBsb3dlciBidWZmZXIKPiAgICAgICAgICAgICAgICAgICArLS0tLS0tLS0t
LS0tLS0tCj4gICAgICAgcGFnZSBjb3VudCAgPT0gVVNIUlRfTUFYCj4gICAgICAgcnhfYnVmZmVy
LT5wYWdlY250X2JpYXMgPT0gVVNIUlRfTUFYCj4KPiAgICAgdDE6IEJ1ZmZlciBpcyByZWNlaXZl
ZCwgYW5kIHBhc3NlZCB0byB0aGUgc3RhY2sgKGUuZy4pCj4gICAgICAgICAgICAgICAgICAgKy0t
LS0tLS0tLS0tLS0tLQo+ICAgICAgICAgICAgICAgICAgIHwgdXBwZXIgYnVmZiAoc2tiKQo+ICAg
ICAgICAgICAgICAgICAgICstLS0tLS0tLS0tLS0tLS0KPiAgICAgdXNlZCBieSBOSUMgLT58IGxv
d2VyIGJ1ZmZlcgo+ICAgICAocnhfYnVmZmVyKSAgICstLS0tLS0tLS0tLS0tLS0KPiAgICAgICBw
YWdlIGNvdW50ICA9PSBVU0hSVF9NQVgKPiAgICAgICByeF9idWZmZXItPnBhZ2VjbnRfYmlhcyA9
PSBVU0hSVF9NQVggLSAxCj4gICAgIHQyOiBCdWZmZXIgaXMgcmVjZWl2ZWQsIGFuZCByZWRpcmVj
dGVkCj4gICAgICAgICAgICAgICAgICAgKy0tLS0tLS0tLS0tLS0tLQo+ICAgICAgICAgICAgICAg
ICAgIHwgdXBwZXIgYnVmZiAoc2tiKQo+ICAgICAgICAgICAgICAgICAgICstLS0tLS0tLS0tLS0t
LS0KPiAgICAgdXNlZCBieSBOSUMgLT58IGxvd2VyIGJ1ZmZlcgo+ICAgICAocnhfYnVmZmVyKSAg
ICstLS0tLS0tLS0tLS0tLS0KPgo+ICAgICBOb3csIHByaW9yIGNhbGxpbmcgeGRwX2RvX3JlZGly
ZWN0KCk6Cj4gICAgICAgcGFnZSBjb3VudCAgPT0gVVNIUlRfTUFYCj4gICAgICAgcnhfYnVmZmVy
LT5wYWdlY250X2JpYXMgPT0gVVNIUlRfTUFYIC0gMgo+Cj4gICAgIFRoaXMgbWVhbnMgdGhhdCBi
dWZmZXIgKmNhbm5vdCogYmUgZmxpcHBlZC9yZXVzZWQsIGJlY2F1c2UgdGhlIHNrYiBpcwo+ICAg
ICBzdGlsbCB1c2luZyBpdC4KPgo+ICAgICBUaGUgcHJvYmxlbSBhcmlzZXMgd2hlbiB4ZHBfZG9f
cmVkaXJlY3QoKSBhY3R1YWxseSBmcmVlcyB0aGUKPiAgICAgc2VnbWVudC4gVGhlbiB3ZSBnZXQ6
Cj4gICAgICAgcGFnZSBjb3VudCAgPT0gVVNIUlRfTUFYIC0gMQo+ICAgICAgIHJ4X2J1ZmZlci0+
cGFnZWNudF9iaWFzID09IFVTSFJUX01BWCAtIDIKPgo+ICAgICBGcm9tIGEgcmVjeWNsZSBwZXJz
cGVjdGl2ZSwgdGhlIGJ1ZmZlciBjYW4gYmUgZmxpcHBlZCBhbmQgcmV1c2VkLAo+ICAgICB3aGlj
aCBtZWFucyB0aGF0IHRoZSBza2IgZGF0YSBhcmVhIGlzIHBhc3NlZCB0byB0aGUgUnggSFcgcmlu
ZyEKPgo+ICAgICBUbyB3b3JrIGFyb3VuZCB0aGlzLCB0aGUgcGFnZSBjb3VudCBpcyBzdG9yZWQg
cHJpb3IgY2FsbGluZwo+ICAgICB4ZHBfZG9fcmVkaXJlY3QoKS4KPgo+ICAgICBOb3RlIHRoYXQg
dGhpcyBpcyBub3Qgb3B0aW1hbCwgc2luY2UgdGhlIE5JQyBjb3VsZCBhY3R1YWxseSByZXVzZSB0
aGUKPiAgICAgImxvd2VyIGJ1ZmZlciIgYWdhaW4uIEhvd2V2ZXIsIHRoZW4gd2UgbmVlZCB0byB0
cmFjayB3aGV0aGVyCj4gICAgIFhEUF9SRURJUkVDVCBjb25zdW1lZCB0aGUgYnVmZmVyIG9yIG5v
dC4KPgo+ICAgICBGaXhlczogZDkzMTRjNDc0ZDRmICgiaTQwZTogYWRkIHN1cHBvcnQgZm9yIFhE
UF9SRURJUkVDVCIpCj4gICAgIFJlcG9ydGVkLWFuZC1hbmFseXplZC1ieTogTGkgUm9uZ1Fpbmcg
PGxpcm9uZ3FpbmdAYmFpZHUuY29tPgo+ICAgICBTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVs
IDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4gICAgIFRlc3RlZC1ieTogR2VvcmdlIEt1cnV2aW5h
a3VubmVsIDxnZW9yZ2Uua3VydXZpbmFrdW5uZWxAaW50ZWwuY29tPgo+ICAgICBTaWduZWQtb2Zm
LWJ5OiBUb255IE5ndXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+Cj4KPgo+IFRoYW5r
cwo+Cj4gLUxpCgpPa2F5LCB0aGlzIGV4cGxhbmF0aW9uIG1ha2VzIG11Y2ggbW9yZSBzZW5zZS4g
Q291bGQgeW91IHBsZWFzZSBlaXRoZXIKaW5jbHVkZSB0aGlzIGV4cGxhbmF0aW9uIGluIHlvdXIg
cGF0Y2gsIG9yIGluY2x1ZGUgYSByZWZlcmVuY2UgdG8gdGhpcwpwYXRjaCBhcyB0aGlzIGV4cGxh
aW5zIGNsZWFybHkgd2hhdCB0aGUgaXNzdWUgaXMgd2hpbGUgeW91cnMgZGlkbid0CmFuZCBsZWQg
dG8gdGhlIGNvbmZ1c2lvbiBhcyBJIHdhcyBhc3N1bWluZyB0aGUgZnJlZWluZyB3YXMgaGFwcGVu
aW5nCmNsb3NlciB0byB0aGUgdDAgY2FzZSwgYW5kIHJlYWxseSB0aGUgcHJvYmxlbSBpcyB0MS4K
ClRoYW5rcy4KCi0gQWxleApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
