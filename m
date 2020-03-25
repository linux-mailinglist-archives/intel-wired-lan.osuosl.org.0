Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0727192D50
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 16:49:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D2D385A74;
	Wed, 25 Mar 2020 15:49:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JMkfTtCCJ1QT; Wed, 25 Mar 2020 15:49:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 89E6585AE4;
	Wed, 25 Mar 2020 15:49:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 25C001BF487
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 15:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 21253859D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 15:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jbJtaqkQWLwY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 15:49:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7350785955
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 15:49:09 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af719.dynamic.kabel-deutschland.de
 [95.90.247.25])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 16137202254DE;
 Wed, 25 Mar 2020 16:49:06 +0100 (CET)
To: Sasha Neftin <sasha.neftin@intel.com>, Aaron Ma <aaron.ma@canonical.com>, 
 Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
 <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
 <899895bc-fb88-a97d-a629-b514ceda296d@canonical.com>
 <750ad0ad-816a-5896-de2f-7e034d2a2508@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <f9dc1980-fa8b-7df9-6460-b0944c7ebc43@molgen.mpg.de>
Date: Wed, 25 Mar 2020 16:49:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <750ad0ad-816a-5896-de2f-7e034d2a2508@intel.com>
Content-Language: en-US
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
Cc: netdev@vger.kernel.org, Rex Tsai <rex.tsai@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 David Miller <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBMaW51eCBmb2xrcywKCgpBbSAyNS4wMy4yMCB1bSAxNDo1OCBzY2hyaWViIE5lZnRpbiwg
U2FzaGE6Cj4gT24gMy8yNS8yMDIwIDA4OjQzLCBBYXJvbiBNYSB3cm90ZToKCj4+IE9uIDMvMjUv
MjAgMjozNiBQTSwgTmVmdGluLCBTYXNoYSB3cm90ZToKPj4+IE9uIDMvMjUvMjAyMCAwNjoxNywg
S2FpLUhlbmcgRmVuZyB3cm90ZToKCj4+Pj4+IE9uIE1hciAyNCwgMjAyMCwgYXQgMDM6MTYsIEFh
cm9uIE1hIDxhYXJvbi5tYUBjYW5vbmljYWwuY29tPiB3cm90ZToKPj4+Pj4KPj4+Pj4gTUUgdGFr
ZXMgMisgc2Vjb25kcyB0byB1bi1jb25maWd1cmUgVUxQIG1vZGUgZG9uZSBhZnRlciByZXN1bWUK
Pj4+Pj4gZnJvbSBzMmlkbGUgb24gc29tZSBUaGlua1BhZCBsYXB0b3BzLgo+Pj4+PiBXaXRob3V0
IGVub3VnaCB3YWl0LCByZXNldCBhbmQgcmUtaW5pdCB3aWxsIGZhaWwgd2l0aCBlcnJvci4KPj4+
Pgo+Pj4+IFRoYW5rcywgdGhpcyBwYXRjaCBzb2x2ZXMgdGhlIGlzc3VlLiBXZSBjYW4gZHJvcCB0
aGUgRE1JIHF1aXJrIGluCj4+Pj4gZmF2b3Igb2YgdGhpcyBwYXRjaC4KPj4+Pgo+Pj4+PiBGaXhl
czogZjE1YmI2ZGRlNzM4Y2M4ZmEwICgiZTEwMDBlOiBBZGQgc3VwcG9ydCBmb3IgUzBpeCIpCj4+
Pj4+IEJ1Z0xpbms6IGh0dHBzOi8vYnVncy5sYXVuY2hwYWQubmV0L2J1Z3MvMTg2NTU3MAo+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBBYXJvbiBNYSA8YWFyb24ubWFAY2Fub25pY2FsLmNvbT4KPj4+Pj4g
LS0tCj4+Pj4+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMgfCA0
ICsrLS0KPj4+Pj4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9pY2g4bGFuLmMKPj4+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
aWNoOGxhbi5jCj4+Pj4+IGluZGV4IGI0MTM1YzUwZTkwNS4uMTQ3YjE1YTJmOGIzIDEwMDY0NAo+
Pj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4+
Pj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4+
Pj4gQEAgLTEyNDAsOSArMTI0MCw5IEBAIHN0YXRpYyBzMzIgZTEwMDBfZGlzYWJsZV91bHBfbHB0
X2xwKHN0cnVjdAo+Pj4+PiBlMTAwMF9odyAqaHcsIGJvb2wgZm9yY2UpCj4+Pj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBldzMyKEgyTUUsIG1hY19yZWcpOwo+Pj4+PiDCoMKgwqDCoMKgwqDC
oMKgIH0KPj4+Pj4KPj4+Pj4gLcKgwqDCoMKgwqDCoMKgIC8qIFBvbGwgdXAgdG8gMzAwbXNlYyBm
b3IgTUUgdG8gY2xlYXIgVUxQX0NGR19ET05FLiAqLwo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgLyog
UG9sbCB1cCB0byAyLjVzZWMgZm9yIE1FIHRvIGNsZWFyIFVMUF9DRkdfRE9ORS4gKi8KPj4+Pj4g
wqDCoMKgwqDCoMKgwqDCoCB3aGlsZSAoZXIzMihGV1NNKSAmIEUxMDAwX0ZXU01fVUxQX0NGR19E
T05FKSB7Cj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChpKysgPT0gMzApIHsKPj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGkrKyA9PSAyNTApIHsKPj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0X3ZhbCA9IC1FMTAwMF9FUlJfUEhZOwo+Pj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+Pgo+Pj4+IFRoZSByZXR1cm4gdmFsdWUgd2FzIG5vdCBj
YXVnaHQgYnkgdGhlIGNhbGxlciwgc28gdGhlIGVycm9yIGVuZHMgdXAKPj4+PiB1bm5vdGljZWQu
Cj4+Pj4gTWF5YmUgbGV0IHRoZSBjYWxsZXIgY2hlY2sgdGhlIHJldHVybiB2YWx1ZSBvZgo+Pj4+
IGUxMDAwX2Rpc2FibGVfdWxwX2xwdF9scCgpPwoKPj4+IEkgYSBiaXQgY29uZnVzZWQuIEluIG91
ciBwcmV2aW91cyBjb252ZXJzYXRpb24geW91IHRvbGQgTUUgbm90IHJ1bm5pbmcuCj4+PiBsZXQg
bWUgc2hpbW1pbmcgaW4uIEluY3JlYXNpbmcgZGVsYXkgd29uJ3QgYmUgc29sdmUgdGhlIHByb2Js
ZW0gYW5kIGp1c3QKPj4+IG1hc2sgaXQuIFdlIG5lZWQgdG8gdW5kZXJzdGFuZCB3aHkgTUUgdGFr
ZSB0b28gbXVjaCB0aW1lLiBXaGF0IGlzCj4+PiBwcm9ibGVtIHdpdGggdGhpcyBzcGVjaWZpYyBz
eXN0ZW0/Cj4+PiBTbywgYmFzaWNhbGx5IG5vIE1FIHN5c3RlbSBzaG91bGQgd29ya3MgZm9yIHlv
dS4KPj4KPj4gU29tZSBsYXB0b3BzIE1FIHdvcmsgdGhhdCdzIHdoeSBvbmx5IHJlcHJvZHVjZSBp
c3N1ZSBvbiBzb21lIGxhcHRvcHMuCj4+IEluIHRoaXMgaXNzdWUgaTIxOSBpcyBjb250cm9sbGVk
IGJ5IE1FLgo+Cj4gV2hvIGNhbiBleHBsYWluIC0gd2h5IE1FIHJlcXVpcmVkIHRvbyBtdWNoIHRp
bWUgb24gdGhpcyBzeXN0ZW0/Cj4gUHJvYmFibHkgbmVlZCB3b3JrIHdpdGggTUUvQklPUyB2ZW5k
b3IgYW5kIHVuZGVyc3RhbmQgaXQuCj4gRGVsYXkgd2lsbCBqdXN0IG1hc2sgdGhlIHJlYWwgcHJv
YmxlbSAtIHdlIG5lZWQgdG8gZmluZCByb290IGNhdXNlLgo+PiBRdWlyayBpcyBvbmx5IGZvciAx
IG1vZGVsIHR5cGUuIEJ1dCBpc3N1ZSBpcyByZXByb2R1Y2VkIGJ5IG1vcmUgbW9kZWxzLgo+PiBT
byBpdCB3b24ndCB3b3JrLgoKKFdoZXJlIGlzIEFhcm9u4oCZcyByZXBseT8gSXQgd2FzbuKAmXQg
ZGVsaXZlcmVkIHRvIG1lIHlldC4pCgpBcyB0aGlzIGlzIGNsZWFybHkgYSByZWdyZXNzaW9uLCBw
bGVhc2UgcmV2ZXJ0IHRoZSBjb21taXQgZm9yIG5vdywgYW5kIAp0aGVuIGZpbmQgYSB3YXkgdG8g
Y29ycmVjdGx5IGltcGxlbWVudCBTMGl4IHN1cHBvcnQuIExpbnV44oCZIHJlZ3Jlc3Npb24gCnBv
bGljeSBkZW1hbmRzIHRoYXQgYXMgbm8gZml4IGhhcyBiZWVuIGZvdW5kIHNpbmNlIHY1LjUtcmMx
LiBDaGFuZ2luZyAKSW50ZWwgTUUgc2V0dGluZ3MsIGV2ZW4gaWYgaXQgd291bGQgd29yayBhcm91
bmQgdGhlIGlzc3VlLCBpcyBub3QgYW4gCmFjY2VwdGFibGUgc29sdXRpb24uIERlbGF5aW5nIHRo
ZSByZXN1bWUgdGltZSBpcyBhbHNvIG5vdCBhIHNvbHV0aW9uLgoKUmVnYXJkaW5nIEludGVsIE1h
bmFnZW1lbnQgRW5naW5lLCBvbmx5IEludGVsIGtub3dzIHdoYXQgaXQgZG9lcyBhbmQgCndoYXQg
dGhlIGVycm9yIGlzLCBhcyB0aGUgTUUgZmlybXdhcmUgaXMgcHJvcHJpZXRhcnkgYW5kIGNsb3Nl
ZC4KCkxhc3RseSwgdGhlcmUgaXMgbm8gd2F5IHRvIGZ1bGx5IGRpc2FibGUgdGhlIEludGVsIE1h
bmFnZW1lbnQgRW5naW5lLiAKVGhlIEhBUCBzdHVmZiBjbGFpbXMgdG8gc3RvcCB0aGUgSW50ZWwg
TUUgZXhlY3V0aW9uLCBidXQgbm9ib2R5IGtub3dzLCAKaWYgaXTigJlzIHN1Y2Nlc3NmdWwuCgpB
YXJvbiwgS2FpLUhhbmcsIGNhbiB5b3Ugc2VuZCB0aGUgcmV2ZXJ0PwoKCktpbmQgcmVnYXJkcywK
ClBhdWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
