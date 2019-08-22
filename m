Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB2699E9E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 20:22:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E973D884A9;
	Thu, 22 Aug 2019 18:22:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KQjS2UFkiCFb; Thu, 22 Aug 2019 18:22:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0CD848839E;
	Thu, 22 Aug 2019 18:22:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C5D41BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 185218789B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:08:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 96e3yVLGv+0u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 16:08:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1CDAF87899
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:08:30 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id u190so5645641qkh.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 09:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TMaoiNeDTQTd0JYgJVXpjjLos7pKWO83AVF6+JcNwlg=;
 b=LCrFl0JE5Ih0OQX6yFnKtnAzFMDwIlQbdd8oMlBLpHTr3iOphhqUs6bxk4lw1E6tQg
 yUnVimyWbghFyo4vEmHr0lTeCr+Y+J6Q339QNW2bt0ViAmrAaoqTGUZ5DtsNWbB8Xbke
 QN+k0VH+SKQUrPAZik6dx48a2ilmSu3ET1n6TEEZtIqenA+jtt58fGIPTC7qmcN0+eQI
 yjXWVGi8mGnCtUQeSu3yz+E1YeHFpYsNboWGhWJ+g6tuXPXWxQTIOmqbB0BnnPQCrRg8
 OrhWesFAWbw2kd5I/pIxHPwBTTFZMKOl4NSODYghIRuaPYk1qwQqxHWbOPMyjLzIfZd6
 tKqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TMaoiNeDTQTd0JYgJVXpjjLos7pKWO83AVF6+JcNwlg=;
 b=HAX/MZ6X3czVdxQdjPECA58FiOCRVWkji6Ik7HpMSAAUYQlP44EtUdm0DBbrGqz/L7
 nhWPrpYXaGyGqbX/0FlULZjy6MsnvnCgTVNY0ZSEK9bvPVGSsXg4YK5MC7Mtbp9dRKfW
 WoKl/LpJe44FvfcHEvoTJ5BiRowiXZuXD4Teluhq0f36o+A+i6SYw29sV6swcg95s/TD
 FVJJ5qD6gX2utBauZwOrTgqa5RWVeTT/G2MzRwwlIpejMgBW8pQB5QsecIRU4ZVVYtGO
 wGH2ToBVD8VD0qQQs7Suq/IjQjF0T3foeoTDyCEroTGvQf2TD9bt8MpJwDtAU07f3OET
 jBdg==
X-Gm-Message-State: APjAAAXXf8HN17j2hPVmhl+/stLO9au1PeZoEQ4OH4LMXxx6JmjHU9R+
 MbmZ3o28Dz+Y/uT43BukocxzG0oHVyk9Wp4eqdk=
X-Google-Smtp-Source: APXvYqyCrSAgGlsFqxSWHd6YgBn0GV2mCyO/I4opzz6lmW8S0os/wBWQjd/DM0YKQq39kgSaWUmQ3HoT+mZamtpuq3E=
X-Received: by 2002:a37:690:: with SMTP id 138mr36902439qkg.184.1566490108954; 
 Thu, 22 Aug 2019 09:08:28 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce@eucas1p1.samsung.com>
 <20190820151611.10727-1-i.maximets@samsung.com>
 <CAKgT0Udn0D0_f=SOH2wpBRWV_u4rb1Qe2h7gguXnRNzJ_VkRzg@mail.gmail.com>
 <625791af-c656-1e42-b60e-b3a5cedcb4c4@samsung.com>
 <CAKgT0Uc27+ucd=a_sgTmv5g7_+ZTg1zK4isYJ0H7YWQj3d=Ejg@mail.gmail.com>
 <f7d0f7a5-e664-8b72-99c7-63275aff4c18@samsung.com>
 <CAKgT0UcCKiM1Ys=vWxctprN7fzWcBCk-PCuKB-8=RThM=CqLSQ@mail.gmail.com>
 <CALDO+SZCbxEEwCS6MyHk-Cp_LJ33N=QFqwZ8uRm0e-PBRgxRYw@mail.gmail.com>
 <cbf7c51b-9ce7-6ef6-32c4-981258d4af4c@samsung.com>
In-Reply-To: <cbf7c51b-9ce7-6ef6-32c4-981258d4af4c@samsung.com>
From: William Tu <u9012063@gmail.com>
Date: Thu, 22 Aug 2019 09:07:50 -0700
Message-ID: <CALDO+SaRNMvmXrQqOtNiRsOkgfOQAW4EA2yVgmeoGQto2zvfMQ@mail.gmail.com>
To: Ilya Maximets <i.maximets@samsung.com>
X-Mailman-Approved-At: Thu, 22 Aug 2019 18:21:56 +0000
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
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMToxNyBBTSBJbHlhIE1heGltZXRzIDxpLm1heGltZXRz
QHNhbXN1bmcuY29tPiB3cm90ZToKPgo+IE9uIDIyLjA4LjIwMTkgMDozOCwgV2lsbGlhbSBUdSB3
cm90ZToKPiA+IE9uIFdlZCwgQXVnIDIxLCAyMDE5IGF0IDk6NTcgQU0gQWxleGFuZGVyIER1eWNr
Cj4gPiA8YWxleGFuZGVyLmR1eWNrQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiBPbiBXZWQs
IEF1ZyAyMSwgMjAxOSBhdCA5OjIyIEFNIElseWEgTWF4aW1ldHMgPGkubWF4aW1ldHNAc2Ftc3Vu
Zy5jb20+IHdyb3RlOgo+ID4+Pgo+ID4+PiBPbiAyMS4wOC4yMDE5IDQ6MTcsIEFsZXhhbmRlciBE
dXljayB3cm90ZToKPiA+Pj4+IE9uIFR1ZSwgQXVnIDIwLCAyMDE5IGF0IDg6NTggQU0gSWx5YSBN
YXhpbWV0cyA8aS5tYXhpbWV0c0BzYW1zdW5nLmNvbT4gd3JvdGU6Cj4gPj4+Pj4KPiA+Pj4+PiBP
biAyMC4wOC4yMDE5IDE4OjM1LCBBbGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4gPj4+Pj4+IE9uIFR1
ZSwgQXVnIDIwLCAyMDE5IGF0IDg6MTggQU0gSWx5YSBNYXhpbWV0cyA8aS5tYXhpbWV0c0BzYW1z
dW5nLmNvbT4gd3JvdGU6Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gVHggY29kZSBkb2Vzbid0IGNsZWFy
IHRoZSBkZXNjcmlwdG9yIHN0YXR1cyBhZnRlciBjbGVhbmluZy4KPiA+Pj4+Pj4+IFNvLCBpZiB0
aGUgYnVkZ2V0IGlzIGxhcmdlciB0aGFuIG51bWJlciBvZiB1c2VkIGVsZW1zIGluIGEgcmluZywg
c29tZQo+ID4+Pj4+Pj4gZGVzY3JpcHRvcnMgd2lsbCBiZSBhY2NvdW50ZWQgdHdpY2UgYW5kIHhz
a191bWVtX2NvbXBsZXRlX3R4IHdpbGwgbW92ZQo+ID4+Pj4+Pj4gcHJvZF90YWlsIGZhciBiZXlv
bmQgdGhlIHByb2RfaGVhZCBicmVha2luZyB0aGUgY29tbGV0aW9uIHF1ZXVlIHJpbmcuCj4gPj4+
Pj4+Pgo+ID4+Pj4+Pj4gRml4IHRoYXQgYnkgbGltaXRpbmcgdGhlIG51bWJlciBvZiBkZXNjcmlw
dG9ycyB0byBjbGVhbiBieSB0aGUgbnVtYmVyCj4gPj4+Pj4+PiBvZiB1c2VkIGRlc2NyaXB0b3Jz
IGluIHRoZSB0eCByaW5nLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IEZpeGVzOiA4MjIxYzVlYmE4YzEg
KCJpeGdiZTogYWRkIEFGX1hEUCB6ZXJvLWNvcHkgVHggc3VwcG9ydCIpCj4gPj4+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBJbHlhIE1heGltZXRzIDxpLm1heGltZXRzQHNhbXN1bmcuY29tPgo+ID4+Pj4+
Pgo+ID4+Pj4+PiBJJ20gbm90IHN1cmUgdGhpcyBpcyB0aGUgYmVzdCB3YXkgdG8gZ28uIE15IHBy
ZWZlcmVuY2Ugd291bGQgYmUgdG8KPiA+Pj4+Pj4gaGF2ZSBzb21ldGhpbmcgaW4gdGhlIHJpbmcg
dGhhdCB3b3VsZCBwcmV2ZW50IHVzIGZyb20gcmFjaW5nIHdoaWNoIEkKPiA+Pj4+Pj4gZG9uJ3Qg
dGhpbmsgdGhpcyByZWFsbHkgYWRkcmVzc2VzLiBJIGFtIHByZXR0eSBzdXJlIHRoaXMgY29kZSBp
cyBzYWZlCj4gPj4+Pj4+IG9uIHg4NiBidXQgSSB3b3VsZCBiZSB3b3JyaWVkIGFib3V0IHdlYWsg
b3JkZXJlZCBzeXN0ZW1zIHN1Y2ggYXMKPiA+Pj4+Pj4gUG93ZXJQQy4KPiA+Pj4+Pj4KPiA+Pj4+
Pj4gSXQgbWlnaHQgbWFrZSBzZW5zZSB0byBsb29rIGF0IGFkZGluZyB0aGUgZW9wX2Rlc2MgbG9n
aWMgbGlrZSB3ZSBoYXZlCj4gPj4+Pj4+IGluIHRoZSByZWd1bGFyIHBhdGggd2l0aCBhIHByb3Bl
ciBiYXJyaWVyIGJlZm9yZSB3ZSB3cml0ZSBpdCBhbmQgYWZ0ZXIKPiA+Pj4+Pj4gd2UgcmVhZCBp
dC4gU28gZm9yIGV4YW1wbGUgd2UgY291bGQgaG9sZCBvZiBvbiB3cml0aW5nIHRoZSBieXRlY291
bnQKPiA+Pj4+Pj4gdmFsdWUgdW50aWwgdGhlIGVuZCBvZiBhbiBpdGVyYXRpb24gYW5kIGNhbGwg
c21wX3dtYiBiZWZvcmUgd2Ugd3JpdGUKPiA+Pj4+Pj4gaXQuIFRoZW4gb24gdGhlIGNsZWFudXAg
d2UgY291bGQgcmVhZCBpdCBhbmQgaWYgaXQgaXMgbm9uLXplcm8gd2UgdGFrZQo+ID4+Pj4+PiBh
biBzbXBfcm1iIGJlZm9yZSBwcm9jZWVkaW5nIGZ1cnRoZXIgdG8gcHJvY2VzcyB0aGUgVHggZGVz
Y3JpcHRvciBhbmQKPiA+Pj4+Pj4gY2xlYXJpbmcgdGhlIHZhbHVlLiBPdGhlcndpc2UgdGhpcyBj
b2RlIGlzIGdvaW5nIHRvIGp1c3Qga2VlcCBwb3BwaW5nCj4gPj4+Pj4+IHVwIHdpdGggaXNzdWVz
Lgo+ID4+Pj4+Cj4gPj4+Pj4gQnV0LCB1bmxpa2UgcmVndWxhciBjYXNlLCB4ZHAgemVyby1jb3B5
IHhtaXQgYW5kIGNsZWFuIGZvciBwYXJ0aWN1bGFyCj4gPj4+Pj4gdHggcmluZyBhbHdheXMgaGFw
cGVucyBpbiB0aGUgc2FtZSBOQVBJIGNvbnRleHQgYW5kIGV2ZW4gb24gdGhlIHNhbWUKPiA+Pj4+
PiBDUFUgY29yZS4KPiA+Pj4+Pgo+ID4+Pj4+IEkgc2F3IHRoZSAnZW9wX2Rlc2MnIG1hbmlwdWxh
dGlvbnMgaW4gcmVndWxhciBjYXNlIGFuZCB5ZXMsIHdlIGNvdWxkCj4gPj4+Pj4gdXNlICduZXh0
X3RvX3dhdGNoJyBmaWVsZCBqdXN0IGFzIGEgZmxhZyBvZiBkZXNjcmlwdG9yIGV4aXN0ZW5jZSwK
PiA+Pj4+PiBidXQgaXQgc2VlbXMgdW5uZWNlc3NhcmlseSBjb21wbGljYXRlZC4gQW0gSSBtaXNz
aW5nIHNvbWV0aGluZz8KPiA+Pj4+Pgo+ID4+Pj4KPiA+Pj4+IFNvIGlzIGl0IGFsd2F5cyBpbiB0
aGUgc2FtZSBOQVBJIGNvbnRleHQ/LiBJIGZvcmdvdCwgSSB3YXMgdGhpbmtpbmcKPiA+Pj4+IHRo
YXQgc29tZWhvdyB0aGUgc29ja2V0IGNvdWxkIHBvc3NpYmx5IG1ha2UgdXNlIG9mIFhEUCBmb3Ig
dHJhbnNtaXQuCj4gPj4+Cj4gPj4+IEFGX1hEUCBzb2NrZXQgb25seSB0cmlnZ2VycyB0eCBpbnRl
cnJ1cHQgb24gbmRvX3hza19hc3luY194bWl0KCkgd2hpY2gKPiA+Pj4gaXMgdXNlZCBpbiB6ZXJv
LWNvcHkgbW9kZS4gUmVhbCB4bWl0IGhhcHBlbnMgaW5zaWRlCj4gPj4+IGl4Z2JlX3BvbGwoKQo+
ID4+PiAgLT4gaXhnYmVfY2xlYW5feGRwX3R4X2lycSgpCj4gPj4+ICAgICAtPiBpeGdiZV94bWl0
X3pjKCkKPiA+Pj4KPiA+Pj4gVGhpcyBzaG91bGQgYmUgbm90IHBvc3NpYmxlIHRvIGJvdW5kIGFu
b3RoZXIgWERQIHNvY2tldCB0byB0aGUgc2FtZSBuZXRkZXYKPiA+Pj4gcXVldWUuCj4gPj4+Cj4g
Pj4+IEl0IGFsc28gcG9zc2libGUgdG8geG1pdCBmcmFtZXMgaW4geGRwX3Jpbmcgd2hpbGUgcGVy
Zm9ybWluZyBYRFBfVFgvUkVESVJFQ1QKPiA+Pj4gYWN0aW9ucy4gUkVESVJFQ1QgY291bGQgaGFw
cGVuIGZyb20gZGlmZmVyZW50IG5ldGRldiB3aXRoIGRpZmZlcmVudCBOQVBJCj4gPj4+IGNvbnRl
eHQsIGJ1dCB0aGlzIG9wZXJhdGlvbiBpcyBib3VuZCB0byBzcGVjaWZpYyBDUFUgY29yZSBhbmQg
ZWFjaCBjb3JlIGhhcwo+ID4+PiBpdHMgb3duIHhkcF9yaW5nLgo+ID4+Pgo+ID4+PiBIb3dldmVy
LCBJJ20gbm90IGFuIGV4cGVydCBoZXJlLgo+ID4+PiBCasO2cm4sIG1heWJlIHlvdSBjb3VsZCBj
b21tZW50IG9uIHRoaXM/Cj4gPj4+Cj4gPj4+Pgo+ID4+Pj4gQXMgZmFyIGFzIHRoZSBsb2dpYyB0
byB1c2UgSSB3b3VsZCBiZSBnb29kIHdpdGgganVzdCB1c2luZyBhIHZhbHVlIHlvdQo+ID4+Pj4g
YXJlIGFscmVhZHkgc2V0dGluZyBzdWNoIGFzIHRoZSBieXRlY291bnQgdmFsdWUuIEFsbCB0aGF0
IHdvdWxkIG5lZWQKPiA+Pj4+IHRvIGhhcHBlbiBpcyB0byBndWFyYW50ZWUgdGhhdCB0aGUgdmFs
dWUgaXMgY2xlYXJlZCBpbiB0aGUgVHggcGF0aC4gU28KPiA+Pj4+IGlmIHlvdSBjbGVhciB0aGUg
Ynl0ZWNvdW50IGluIGl4Z2JlX2NsZWFuX3hkcF90eF9pcnEgeW91IGNvdWxkCj4gPj4+PiB0aGVv
cmV0aWNhbGx5IGp1c3QgdXNlIHRoYXQgYXMgd2VsbCB0byBmbGFnIHRoYXQgYSBkZXNjcmlwdG9y
IGhhcyBiZWVuCj4gPj4+PiBwb3B1bGF0ZWQgYW5kIGlzIHJlYWR5IHRvIGJlIGNsZWFuZWQuIEFz
c3VtaW5nIHRoZSBsb2dpYyBhYm91dCB0aGlzCj4gPj4+PiBhbGwgYmVpbmcgaW4gdGhlIHNhbWUg
TkFQSSBjb250ZXh0IGFueXdheSB5b3Ugd291bGRuJ3QgbmVlZCB0byBtZXNzCj4gPj4+PiB3aXRo
IHRoZSBiYXJyaWVyIHN0dWZmIEkgbWVudGlvbmVkIGJlZm9yZS4KPiA+Pj4KPiA+Pj4gQ2hlY2tp
bmcgdGhlIG51bWJlciBvZiB1c2VkIGRlc2NzLCBpLmUuIG5leHRfdG9fdXNlIC0gbmV4dF90b19j
bGVhbiwKPiA+Pj4gbWFrZXMgaXRlcmF0aW9uIGluIHRoaXMgZnVuY3Rpb24gbG9naWNhbGx5IGVx
dWFsIHRvIHRoZSBpdGVyYXRpb24gaW5zaWRlCj4gPj4+ICdpeGdiZV94c2tfY2xlYW5fdHhfcmlu
ZygpJy4gRG8geW91IHRoaW5rIHdlIG5lZWQgdG8gY2hhbmdlIHRoZSBsYXRlcgo+ID4+PiBmdW5j
dGlvbiB0b28gdG8gZm9sbG93IHNhbWUgJ2J5dGVjb3VudCcgYXBwcm9hY2g/IEkgZG9uJ3QgbGlr
ZSBoYXZpbmcKPiA+Pj4gdHdvIGRpZmZlcmVudCB3YXlzIHRvIGRldGVybWluZSBudW1iZXIgb2Yg
dXNlZCBkZXNjcmlwdG9ycyBpbiB0aGUgc2FtZSBmaWxlLgo+ID4+Pgo+ID4+PiBCZXN0IHJlZ2Fy
ZHMsIElseWEgTWF4aW1ldHMuCj4gPj4KPiA+PiBBcyBmYXIgYXMgaXhnYmVfY2xlYW5feGRwX3R4
X2lycSgpIHZzIGl4Z2JlX3hza19jbGVhbl90eF9yaW5nKCksIEkKPiA+PiB3b3VsZCBzYXkgdGhh
dCBpZiB5b3UgZ290IHJpZCBvZiBidWRnZXQgYW5kIGZyYW1lZCB0aGluZ3MgbW9yZSBsaWtlCj4g
Pj4gaG93IGl4Z2JlX3hza19jbGVhbl90eF9yaW5nIHdhcyBmcmFtZWQgd2l0aCB0aGUgbnRjICE9
IG50dSBiZWluZwo+ID4+IG9idmlvdXMgSSB3b3VsZCBwcmVmZXIgdG8gc2VlIHVzIGdvIHRoYXQg
cm91dGUuCj4gPj4KPiA+PiBSZWFsbHkgdGhlcmUgaXMgbm8gbmVlZCBmb3IgYnVkZ2V0IGluIGl4
Z2JlX2NsZWFuX3hkcF90eF9pcnEoKSBpZiB5b3UKPiA+PiBhcmUgZ29pbmcgdG8gYmUgd29ya2lu
ZyB3aXRoIGEgc3RhdGljIG50dSB2YWx1ZSBzaW5jZSB5b3Ugd2lsbCBvbmx5Cj4gPj4gZXZlciBw
cm9jZXNzIG9uZSBpdGVyYXRpb24gdGhyb3VnaCB0aGUgcmluZyBhbnl3YXkuIEl0IG1pZ2h0IG1h
a2UgbW9yZQo+ID4+IHNlbnNlIGlmIHlvdSBqdXN0IHdlbnQgdGhyb3VnaCBhbmQgZ290IHJpZCBv
ZiBidWRnZXQgYW5kIGksIGFuZAo+ID4+IGluc3RlYWQgdXNlZCBudGMgYW5kIG50dSBsaWtlIHdo
YXQgd2FzIGRvbmUgaW4KPiA+PiBpeGdiZV94c2tfY2xlYW5fdHhfcmluZygpLgo+ID4+Cj4gPj4g
VGhhbmtzLgo+ID4+Cj4gPj4gLSBBbGV4Cj4gPgo+ID4gTm90IGZhbWlsaWFyIHdpdGggdGhlIGRy
aXZlciBkZXRhaWxzLgo+ID4gSSB0ZXN0ZWQgdGhpcyBwYXRjaCBhbmQgdGhlIGlzc3VlIG1lbnRp
b25lZCBpbiBPVlMgbWFpbGluZyBsaXN0Lgo+ID4gaHR0cHM6Ly93d3cubWFpbC1hcmNoaXZlLmNv
bS9vdnMtZGV2QG9wZW52c3dpdGNoLm9yZy9tc2czNTM2Mi5odG1sCj4gPiBhbmQgaW5kZWVkIHRo
ZSBwcm9ibGVtIGdvZXMgYXdheS4KPgo+IEdvb2QuIFRoYW5rcyBmb3IgdGVzdGluZyEKPgo+ID4g
QnV0IEkgc2F3IGEgaHVnZSBwZXJmb3JtYW5jZSBkcm9wLAo+ID4gbXkgQUZfWERQIHR4IHBlcmZv
cm1hbmNlIGRyb3BzIGZyb20gPjlNcHBzIHRvIDw1TXBwcy4KPgo+IEkgZGlkbid0IGV4cGVjdCBz
byBiaWcgcGVyZm9ybWFuY2UgZGlmZmVyZW5jZSB3aXRoIHRoaXMgY2hhbmdlLgo+IFdoYXQgaXMg
eW91ciB0ZXN0IHNjZW5hcmlvPwoKSSB3YXMgdXNpbmcgT1ZTIHdpdGggZHVhbCBwb3J0IE5JQywg
c2V0dGluZyBvbmUgT3BlbkZsb3cgcnVsZQppbl9wb3J0PWV0aDIgYWN0aW9ucz1vdXRwdXQ6ZXRo
MwphbmQgZXRoMiBmb3IgcnggYW5kIG1lYXN1cmUgZXRoMyB0eAonc2FyIC1uIERFViAxJyAgc2hv
d3MgcHJldHR5IGh1Z2UgZHJvcCBvbiBldGgzIHR4LgoKPiBJcyBpdCBwb3NzaWJsZSB0aGF0IHlv
dSdyZSBhY2NvdW50aW5nIHNhbWUKPiBwYWNrZXQgc2V2ZXJhbCB0aW1lcyBkdWUgdG8gYnJva2Vu
IGNvbXBsZXRpb24gcXVldWU/CgpUaGF0J3MgcG9zc2libGUuCkxldCBtZSBkb3VibGUgY2hlY2sg
b24geW91ciB2MiBwYXRjaC4KCkBFZWxjbzogZG8geW91IGFsc28gc2VlIHNvbWUgcGVyZm9ybWFu
Y2UgZGlmZmVyZW5jZT8KClJlZ2FyZHMsCldpbGxpYW0KCj4KPiBMb29raW5nIGF0IHNhbXBsZXMv
YnBmL3hkcHNvY2tfdXNlci5jOmNvbXBsZXRlX3R4X29ubHkoKSwgaXQgYWNjb3VudHMKPiBzZW50
IHBhY2tldHMgKHR4X25wa3RzKSBieSBhY2N1bXVsYXRpbmcgcmVzdWx0cyBvZiB4c2tfcmluZ19j
b25zX19wZWVrKCkKPiBmb3IgY29tcGxldGlvbiBxdWV1ZSwgc28gaXQncyBub3QgYSB0cnVzdGVk
IHNvdXJjZSBvZiBwcHMgaW5mb3JtYXRpb24uCj4KPiBCZXN0IHJlZ2FyZHMsIElseWEgTWF4aW1l
dHMuCj4KPiA+Cj4gPiBUZXN0ZWQgdXNpbmcga2VybmVsIDUuMy4wLXJjMysKPiA+IDAzOjAwLjAg
RXRoZXJuZXQgY29udHJvbGxlcjogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgQ29udHJvbGxl
cgo+ID4gMTAtR2lnYWJpdCBYNTQwLUFUMiAocmV2IDAxKQo+ID4gU3Vic3lzdGVtOiBJbnRlbCBD
b3Jwb3JhdGlvbiBFdGhlcm5ldCAxMEcgMlAgWDU0MC10IEFkYXB0ZXIKPiA+IENvbnRyb2w6IEkv
Ty0gTWVtKyBCdXNNYXN0ZXIrIFNwZWNDeWNsZS0gTWVtV0lOVi0gVkdBU25vb3AtIFBhckVyci0K
PiA+IFN0ZXBwaW5nLSBTRVJSLSBGYXN0QjJCLSBEaXNJTlR4Kwo+ID4KPiA+IFJlZ2FyZHMsCj4g
PiBXaWxsaWFtCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
