Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F6D98C47
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 09:12:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE5FA8833B;
	Thu, 22 Aug 2019 07:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FJasV0NfYyCs; Thu, 22 Aug 2019 07:12:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB54188383;
	Thu, 22 Aug 2019 07:12:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5AD11BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 07:12:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E188F875AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 07:12:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oGM6y+L3fTxD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 07:12:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B0A0487586
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 07:12:26 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id y26so6448982qto.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 00:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=V+r5KhRPxzjM3uj7uTYNut2acVQUlKxmnm9YS5qeaAw=;
 b=R5htcEzJbGByo6YozjOZVsEHFQQHPkAKF4QVZ1jwveMN9DlnypgM/EMU/L9hVOP4Uw
 bgPtFKJ3ocs08DDBvJbwC4I0wpQpTHL7lYNJl5a5KosU1fuNUGu8bq+3s98FMdBge0Pa
 T0XpPAFBtVRImzPzSudaIdyqvUXi4uIq4gJ9dleTwhAh2rFy5XI21HU8X4U1KXmBghdq
 5lwY+9My0aeQ1iY9M2/pMfDUCeBeO16FGuWH+jT0rMPZpYjTTkDyKFviq5K0uPnKKPUI
 vUgHUxfnVLlFgiUr6EHgRA4YtYtWzVNj6RMuwtWzFVoTS1Pn/3JmJtb4HTOn/TOuMkX0
 FEcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=V+r5KhRPxzjM3uj7uTYNut2acVQUlKxmnm9YS5qeaAw=;
 b=Og9qE9JknWpNSkcRZkt7ySVoM9aOibfnS+z/7wQjFfE46h3CxQdd87X4j32rjwjQbg
 UvxEGXU7Iqpjo2Pb0jo+E2piWdtKaBFxPHF4UxKPFt0gdX8CzOPorvxNHFkpDxBOtUyd
 76pGiVqTK1PQf9rrgkb6aXter87jGb4UHI1cf4O41N2MerwK7Tx9ocRWkmWwIyINk+Wk
 q4LN71+BNT10vpj4FxBpCdyqmDUYpGholDdRGhcJG01eEgP1ra5lvR05irZedAFia/aB
 bNTDOBH/EdmbIZzOSsAI2gYyZAiVuaUATwoLBHSp7tYVN7D2/Ai+LWUcsBjYvolVTPvJ
 RGPw==
X-Gm-Message-State: APjAAAXB1RI7htAEDs9nrs3KwktabRav2hD9YKBJEPZ/5w1cz9AcpWkB
 kVVzZay9aPimaWqtf9Ggax39Vo3yLb45Nogk4II=
X-Google-Smtp-Source: APXvYqwMLHrV72dFfvtWFgFLol3trYNVy3yGDb1v7DhZuZWmvFlzkVUtiFQOwtiB6GVQQdnm+g3Uekms42u4/fOqNu8=
X-Received: by 2002:ac8:4a83:: with SMTP id l3mr34467940qtq.46.1566457945741; 
 Thu, 22 Aug 2019 00:12:25 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce@eucas1p1.samsung.com>
 <20190820151611.10727-1-i.maximets@samsung.com>
 <CAKgT0Udn0D0_f=SOH2wpBRWV_u4rb1Qe2h7gguXnRNzJ_VkRzg@mail.gmail.com>
 <625791af-c656-1e42-b60e-b3a5cedcb4c4@samsung.com>
 <CAKgT0Uc27+ucd=a_sgTmv5g7_+ZTg1zK4isYJ0H7YWQj3d=Ejg@mail.gmail.com>
 <f7d0f7a5-e664-8b72-99c7-63275aff4c18@samsung.com>
 <CAKgT0UcCKiM1Ys=vWxctprN7fzWcBCk-PCuKB-8=RThM=CqLSQ@mail.gmail.com>
In-Reply-To: <CAKgT0UcCKiM1Ys=vWxctprN7fzWcBCk-PCuKB-8=RThM=CqLSQ@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Thu, 22 Aug 2019 09:12:14 +0200
Message-ID: <CAJ+HfNjo0tpk2v_+85SuX7Jw797QwRA7uJBggPHtY=JznLC9Zg@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix double clean of tx
 descriptors with xdp
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
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 William Tu <u9012063@gmail.com>, Ilya Maximets <i.maximets@samsung.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyMSBBdWcgMjAxOSBhdCAxODo1NywgQWxleGFuZGVyIER1eWNrIDxhbGV4YW5kZXIu
ZHV5Y2tAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgQXVnIDIxLCAyMDE5IGF0IDk6MjIg
QU0gSWx5YSBNYXhpbWV0cyA8aS5tYXhpbWV0c0BzYW1zdW5nLmNvbT4gd3JvdGU6Cj4gPgo+ID4g
T24gMjEuMDguMjAxOSA0OjE3LCBBbGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4gPiA+IE9uIFR1ZSwg
QXVnIDIwLCAyMDE5IGF0IDg6NTggQU0gSWx5YSBNYXhpbWV0cyA8aS5tYXhpbWV0c0BzYW1zdW5n
LmNvbT4gd3JvdGU6Cj4gPiA+Pgo+ID4gPj4gT24gMjAuMDguMjAxOSAxODozNSwgQWxleGFuZGVy
IER1eWNrIHdyb3RlOgo+ID4gPj4+IE9uIFR1ZSwgQXVnIDIwLCAyMDE5IGF0IDg6MTggQU0gSWx5
YSBNYXhpbWV0cyA8aS5tYXhpbWV0c0BzYW1zdW5nLmNvbT4gd3JvdGU6Cj4gPiA+Pj4+Cj4gPiA+
Pj4+IFR4IGNvZGUgZG9lc24ndCBjbGVhciB0aGUgZGVzY3JpcHRvciBzdGF0dXMgYWZ0ZXIgY2xl
YW5pbmcuCj4gPiA+Pj4+IFNvLCBpZiB0aGUgYnVkZ2V0IGlzIGxhcmdlciB0aGFuIG51bWJlciBv
ZiB1c2VkIGVsZW1zIGluIGEgcmluZywgc29tZQo+ID4gPj4+PiBkZXNjcmlwdG9ycyB3aWxsIGJl
IGFjY291bnRlZCB0d2ljZSBhbmQgeHNrX3VtZW1fY29tcGxldGVfdHggd2lsbCBtb3ZlCj4gPiA+
Pj4+IHByb2RfdGFpbCBmYXIgYmV5b25kIHRoZSBwcm9kX2hlYWQgYnJlYWtpbmcgdGhlIGNvbWxl
dGlvbiBxdWV1ZSByaW5nLgo+ID4gPj4+Pgo+ID4gPj4+PiBGaXggdGhhdCBieSBsaW1pdGluZyB0
aGUgbnVtYmVyIG9mIGRlc2NyaXB0b3JzIHRvIGNsZWFuIGJ5IHRoZSBudW1iZXIKPiA+ID4+Pj4g
b2YgdXNlZCBkZXNjcmlwdG9ycyBpbiB0aGUgdHggcmluZy4KPiA+ID4+Pj4KPiA+ID4+Pj4gRml4
ZXM6IDgyMjFjNWViYThjMSAoIml4Z2JlOiBhZGQgQUZfWERQIHplcm8tY29weSBUeCBzdXBwb3J0
IikKPiA+ID4+Pj4gU2lnbmVkLW9mZi1ieTogSWx5YSBNYXhpbWV0cyA8aS5tYXhpbWV0c0BzYW1z
dW5nLmNvbT4KPiA+ID4+Pgo+ID4gPj4+IEknbSBub3Qgc3VyZSB0aGlzIGlzIHRoZSBiZXN0IHdh
eSB0byBnby4gTXkgcHJlZmVyZW5jZSB3b3VsZCBiZSB0bwo+ID4gPj4+IGhhdmUgc29tZXRoaW5n
IGluIHRoZSByaW5nIHRoYXQgd291bGQgcHJldmVudCB1cyBmcm9tIHJhY2luZyB3aGljaCBJCj4g
PiA+Pj4gZG9uJ3QgdGhpbmsgdGhpcyByZWFsbHkgYWRkcmVzc2VzLiBJIGFtIHByZXR0eSBzdXJl
IHRoaXMgY29kZSBpcyBzYWZlCj4gPiA+Pj4gb24geDg2IGJ1dCBJIHdvdWxkIGJlIHdvcnJpZWQg
YWJvdXQgd2VhayBvcmRlcmVkIHN5c3RlbXMgc3VjaCBhcwo+ID4gPj4+IFBvd2VyUEMuCj4gPiA+
Pj4KPiA+ID4+PiBJdCBtaWdodCBtYWtlIHNlbnNlIHRvIGxvb2sgYXQgYWRkaW5nIHRoZSBlb3Bf
ZGVzYyBsb2dpYyBsaWtlIHdlIGhhdmUKPiA+ID4+PiBpbiB0aGUgcmVndWxhciBwYXRoIHdpdGgg
YSBwcm9wZXIgYmFycmllciBiZWZvcmUgd2Ugd3JpdGUgaXQgYW5kIGFmdGVyCj4gPiA+Pj4gd2Ug
cmVhZCBpdC4gU28gZm9yIGV4YW1wbGUgd2UgY291bGQgaG9sZCBvZiBvbiB3cml0aW5nIHRoZSBi
eXRlY291bnQKPiA+ID4+PiB2YWx1ZSB1bnRpbCB0aGUgZW5kIG9mIGFuIGl0ZXJhdGlvbiBhbmQg
Y2FsbCBzbXBfd21iIGJlZm9yZSB3ZSB3cml0ZQo+ID4gPj4+IGl0LiBUaGVuIG9uIHRoZSBjbGVh
bnVwIHdlIGNvdWxkIHJlYWQgaXQgYW5kIGlmIGl0IGlzIG5vbi16ZXJvIHdlIHRha2UKPiA+ID4+
PiBhbiBzbXBfcm1iIGJlZm9yZSBwcm9jZWVkaW5nIGZ1cnRoZXIgdG8gcHJvY2VzcyB0aGUgVHgg
ZGVzY3JpcHRvciBhbmQKPiA+ID4+PiBjbGVhcmluZyB0aGUgdmFsdWUuIE90aGVyd2lzZSB0aGlz
IGNvZGUgaXMgZ29pbmcgdG8ganVzdCBrZWVwIHBvcHBpbmcKPiA+ID4+PiB1cCB3aXRoIGlzc3Vl
cy4KPiA+ID4+Cj4gPiA+PiBCdXQsIHVubGlrZSByZWd1bGFyIGNhc2UsIHhkcCB6ZXJvLWNvcHkg
eG1pdCBhbmQgY2xlYW4gZm9yIHBhcnRpY3VsYXIKPiA+ID4+IHR4IHJpbmcgYWx3YXlzIGhhcHBl
bnMgaW4gdGhlIHNhbWUgTkFQSSBjb250ZXh0IGFuZCBldmVuIG9uIHRoZSBzYW1lCj4gPiA+PiBD
UFUgY29yZS4KPiA+ID4+Cj4gPiA+PiBJIHNhdyB0aGUgJ2VvcF9kZXNjJyBtYW5pcHVsYXRpb25z
IGluIHJlZ3VsYXIgY2FzZSBhbmQgeWVzLCB3ZSBjb3VsZAo+ID4gPj4gdXNlICduZXh0X3RvX3dh
dGNoJyBmaWVsZCBqdXN0IGFzIGEgZmxhZyBvZiBkZXNjcmlwdG9yIGV4aXN0ZW5jZSwKPiA+ID4+
IGJ1dCBpdCBzZWVtcyB1bm5lY2Vzc2FyaWx5IGNvbXBsaWNhdGVkLiBBbSBJIG1pc3Npbmcgc29t
ZXRoaW5nPwo+ID4gPj4KPiA+ID4KPiA+ID4gU28gaXMgaXQgYWx3YXlzIGluIHRoZSBzYW1lIE5B
UEkgY29udGV4dD8uIEkgZm9yZ290LCBJIHdhcyB0aGlua2luZwo+ID4gPiB0aGF0IHNvbWVob3cg
dGhlIHNvY2tldCBjb3VsZCBwb3NzaWJseSBtYWtlIHVzZSBvZiBYRFAgZm9yIHRyYW5zbWl0Lgo+
ID4KPiA+IEFGX1hEUCBzb2NrZXQgb25seSB0cmlnZ2VycyB0eCBpbnRlcnJ1cHQgb24gbmRvX3hz
a19hc3luY194bWl0KCkgd2hpY2gKPiA+IGlzIHVzZWQgaW4gemVyby1jb3B5IG1vZGUuIFJlYWwg
eG1pdCBoYXBwZW5zIGluc2lkZQo+ID4gaXhnYmVfcG9sbCgpCj4gPiAgLT4gaXhnYmVfY2xlYW5f
eGRwX3R4X2lycSgpCj4gPiAgICAgLT4gaXhnYmVfeG1pdF96YygpCj4gPgo+ID4gVGhpcyBzaG91
bGQgYmUgbm90IHBvc3NpYmxlIHRvIGJvdW5kIGFub3RoZXIgWERQIHNvY2tldCB0byB0aGUgc2Ft
ZSBuZXRkZXYKPiA+IHF1ZXVlLgo+ID4KPiA+IEl0IGFsc28gcG9zc2libGUgdG8geG1pdCBmcmFt
ZXMgaW4geGRwX3Jpbmcgd2hpbGUgcGVyZm9ybWluZyBYRFBfVFgvUkVESVJFQ1QKPiA+IGFjdGlv
bnMuIFJFRElSRUNUIGNvdWxkIGhhcHBlbiBmcm9tIGRpZmZlcmVudCBuZXRkZXYgd2l0aCBkaWZm
ZXJlbnQgTkFQSQo+ID4gY29udGV4dCwgYnV0IHRoaXMgb3BlcmF0aW9uIGlzIGJvdW5kIHRvIHNw
ZWNpZmljIENQVSBjb3JlIGFuZCBlYWNoIGNvcmUgaGFzCj4gPiBpdHMgb3duIHhkcF9yaW5nLgo+
ID4KPiA+IEhvd2V2ZXIsIEknbSBub3QgYW4gZXhwZXJ0IGhlcmUuCj4gPiBCasO2cm4sIG1heWJl
IHlvdSBjb3VsZCBjb21tZW50IG9uIHRoaXM/Cj4gPgo+ID4gPgo+ID4gPiBBcyBmYXIgYXMgdGhl
IGxvZ2ljIHRvIHVzZSBJIHdvdWxkIGJlIGdvb2Qgd2l0aCBqdXN0IHVzaW5nIGEgdmFsdWUgeW91
Cj4gPiA+IGFyZSBhbHJlYWR5IHNldHRpbmcgc3VjaCBhcyB0aGUgYnl0ZWNvdW50IHZhbHVlLiBB
bGwgdGhhdCB3b3VsZCBuZWVkCj4gPiA+IHRvIGhhcHBlbiBpcyB0byBndWFyYW50ZWUgdGhhdCB0
aGUgdmFsdWUgaXMgY2xlYXJlZCBpbiB0aGUgVHggcGF0aC4gU28KPiA+ID4gaWYgeW91IGNsZWFy
IHRoZSBieXRlY291bnQgaW4gaXhnYmVfY2xlYW5feGRwX3R4X2lycSB5b3UgY291bGQKPiA+ID4g
dGhlb3JldGljYWxseSBqdXN0IHVzZSB0aGF0IGFzIHdlbGwgdG8gZmxhZyB0aGF0IGEgZGVzY3Jp
cHRvciBoYXMgYmVlbgo+ID4gPiBwb3B1bGF0ZWQgYW5kIGlzIHJlYWR5IHRvIGJlIGNsZWFuZWQu
IEFzc3VtaW5nIHRoZSBsb2dpYyBhYm91dCB0aGlzCj4gPiA+IGFsbCBiZWluZyBpbiB0aGUgc2Ft
ZSBOQVBJIGNvbnRleHQgYW55d2F5IHlvdSB3b3VsZG4ndCBuZWVkIHRvIG1lc3MKPiA+ID4gd2l0
aCB0aGUgYmFycmllciBzdHVmZiBJIG1lbnRpb25lZCBiZWZvcmUuCj4gPgo+ID4gQ2hlY2tpbmcg
dGhlIG51bWJlciBvZiB1c2VkIGRlc2NzLCBpLmUuIG5leHRfdG9fdXNlIC0gbmV4dF90b19jbGVh
biwKPiA+IG1ha2VzIGl0ZXJhdGlvbiBpbiB0aGlzIGZ1bmN0aW9uIGxvZ2ljYWxseSBlcXVhbCB0
byB0aGUgaXRlcmF0aW9uIGluc2lkZQo+ID4gJ2l4Z2JlX3hza19jbGVhbl90eF9yaW5nKCknLiBE
byB5b3UgdGhpbmsgd2UgbmVlZCB0byBjaGFuZ2UgdGhlIGxhdGVyCj4gPiBmdW5jdGlvbiB0b28g
dG8gZm9sbG93IHNhbWUgJ2J5dGVjb3VudCcgYXBwcm9hY2g/IEkgZG9uJ3QgbGlrZSBoYXZpbmcK
PiA+IHR3byBkaWZmZXJlbnQgd2F5cyB0byBkZXRlcm1pbmUgbnVtYmVyIG9mIHVzZWQgZGVzY3Jp
cHRvcnMgaW4gdGhlIHNhbWUgZmlsZS4KPiA+Cj4gPiBCZXN0IHJlZ2FyZHMsIElseWEgTWF4aW1l
dHMuCj4KPiBBcyBmYXIgYXMgaXhnYmVfY2xlYW5feGRwX3R4X2lycSgpIHZzIGl4Z2JlX3hza19j
bGVhbl90eF9yaW5nKCksIEkKPiB3b3VsZCBzYXkgdGhhdCBpZiB5b3UgZ290IHJpZCBvZiBidWRn
ZXQgYW5kIGZyYW1lZCB0aGluZ3MgbW9yZSBsaWtlCj4gaG93IGl4Z2JlX3hza19jbGVhbl90eF9y
aW5nIHdhcyBmcmFtZWQgd2l0aCB0aGUgbnRjICE9IG50dSBiZWluZwo+IG9idmlvdXMgSSB3b3Vs
ZCBwcmVmZXIgdG8gc2VlIHVzIGdvIHRoYXQgcm91dGUuCj4KPiBSZWFsbHkgdGhlcmUgaXMgbm8g
bmVlZCBmb3IgYnVkZ2V0IGluIGl4Z2JlX2NsZWFuX3hkcF90eF9pcnEoKSBpZiB5b3UKPiBhcmUg
Z29pbmcgdG8gYmUgd29ya2luZyB3aXRoIGEgc3RhdGljIG50dSB2YWx1ZSBzaW5jZSB5b3Ugd2ls
bCBvbmx5Cj4gZXZlciBwcm9jZXNzIG9uZSBpdGVyYXRpb24gdGhyb3VnaCB0aGUgcmluZyBhbnl3
YXkuIEl0IG1pZ2h0IG1ha2UgbW9yZQo+IHNlbnNlIGlmIHlvdSBqdXN0IHdlbnQgdGhyb3VnaCBh
bmQgZ290IHJpZCBvZiBidWRnZXQgYW5kIGksIGFuZAo+IGluc3RlYWQgdXNlZCBudGMgYW5kIG50
dSBsaWtlIHdoYXQgd2FzIGRvbmUgaW4KPiBpeGdiZV94c2tfY2xlYW5fdHhfcmluZygpLgo+Cgor
MS4gSSdkIHByZWZlciB0aGlzIGFzIHdlbGwhCgoKQ2hlZXJzLApCasO2cm4KCj4gVGhhbmtzLgo+
Cj4gLSBBbGV4Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
