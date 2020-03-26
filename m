Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C768A1946A0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2020 19:37:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3C5686D2C;
	Thu, 26 Mar 2020 18:37:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C5Z2yYujU9_0; Thu, 26 Mar 2020 18:37:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D967871FA;
	Thu, 26 Mar 2020 18:37:18 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6534D1BF46A
 for <intel-wired-lan@osuosl.org>; Thu, 26 Mar 2020 18:37:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6077B889CC
 for <intel-wired-lan@osuosl.org>; Thu, 26 Mar 2020 18:37:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QQXJeXX6hdf7 for <intel-wired-lan@osuosl.org>;
 Thu, 26 Mar 2020 18:37:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 91B8988876
 for <intel-wired-lan@osuosl.org>; Thu, 26 Mar 2020 18:37:14 +0000 (UTC)
Received: from [192.168.1.6] (x4d0b3c88.dyn.telefonica.de [77.11.60.136])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7C48920643C67;
 Thu, 26 Mar 2020 19:37:11 +0100 (CET)
To: Sasha Neftin <sasha.neftin@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
 <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
 <899895bc-fb88-a97d-a629-b514ceda296d@canonical.com>
 <750ad0ad-816a-5896-de2f-7e034d2a2508@intel.com>
 <f9dc1980-fa8b-7df9-6460-b0944c7ebc43@molgen.mpg.de>
 <60A8493D-811B-4AD5-A8D3-82054B562A8C@canonical.com>
 <3895cb4d-cc9d-238a-0776-a1fd3a490664@molgen.mpg.de>
 <065e5e61-0342-3882-d6af-21618b44033c@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <db832b1c-2cd0-5247-3b9c-51515507db8c@molgen.mpg.de>
Date: Thu, 26 Mar 2020 19:37:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <065e5e61-0342-3882-d6af-21618b44033c@intel.com>
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
Cc: intel-wired-lan@osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKZWZmLCBkZWFyIERhdmlkLAoKCkNvdWxkIHlvdSBwbGVhc2UgY29tbWVudCBhcyBtYWlu
dGFpbmVycz8KCgpBbSAyNi4wMy4yMCB1bSAxNTozNCBzY2hyaWViIE5lZnRpbiwgU2FzaGE6Cj4g
T24gMy8yNi8yMDIwIDEzOjQxLCBQYXVsIE1lbnplbCB3cm90ZToKCj4+IEFtIDI2LjAzLjIwIHVt
IDEyOjI5IHNjaHJpZWIgS2FpLUhlbmcgRmVuZzoKPj4KPj4+PiBPbiBNYXIgMjUsIDIwMjAsIGF0
IDIzOjQ5LCBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPiB3cm90ZToKPj4KPj4+
PiBBbSAyNS4wMy4yMCB1bSAxNDo1OCBzY2hyaWViIE5lZnRpbiwgU2FzaGE6Cj4+Pj4+IE9uIDMv
MjUvMjAyMCAwODo0MywgQWFyb24gTWEgd3JvdGU6Cj4+Pj4KPj4+Pj4+IE9uIDMvMjUvMjAgMjoz
NiBQTSwgTmVmdGluLCBTYXNoYSB3cm90ZToKPj4+Pj4+PiBPbiAzLzI1LzIwMjAgMDY6MTcsIEth
aS1IZW5nIEZlbmcgd3JvdGU6Cj4+Pj4KPj4+Pj4+Pj4+IE9uIE1hciAyNCwgMjAyMCwgYXQgMDM6
MTYsIEFhcm9uIE1hIDxhYXJvbi5tYUBjYW5vbmljYWwuY29tPiAKPj4+Pj4+Pj4+IHdyb3RlOgo+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IE1FIHRha2VzIDIrIHNlY29uZHMgdG8gdW4tY29uZmlndXJlIFVM
UCBtb2RlIGRvbmUgYWZ0ZXIgcmVzdW1lCj4+Pj4+Pj4+PiBmcm9tIHMyaWRsZSBvbiBzb21lIFRo
aW5rUGFkIGxhcHRvcHMuCj4+Pj4+Pj4+PiBXaXRob3V0IGVub3VnaCB3YWl0LCByZXNldCBhbmQg
cmUtaW5pdCB3aWxsIGZhaWwgd2l0aCBlcnJvci4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gVGhhbmtzLCB0
aGlzIHBhdGNoIHNvbHZlcyB0aGUgaXNzdWUuIFdlIGNhbiBkcm9wIHRoZSBETUkgcXVpcmsgaW4K
Pj4+Pj4+Pj4gZmF2b3Igb2YgdGhpcyBwYXRjaC4KPj4+Pj4+Pj4KPj4+Pj4+Pj4+IEZpeGVzOiBm
MTViYjZkZGU3MzhjYzhmYTAgKCJlMTAwMGU6IEFkZCBzdXBwb3J0IGZvciBTMGl4IikKPj4+Pj4+
Pj4+IEJ1Z0xpbms6IGh0dHBzOi8vYnVncy5sYXVuY2hwYWQubmV0L2J1Z3MvMTg2NTU3MAo+Pj4+
Pj4+Pj4gU2lnbmVkLW9mZi1ieTogQWFyb24gTWEgPGFhcm9uLm1hQGNhbm9uaWNhbC5jb20+Cj4+
Pj4+Pj4+PiAtLS0KPj4+Pj4+Pj4+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9p
Y2g4bGFuLmMgfCA0ICsrLS0KPj4+Pj4+Pj4+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4+Pj4+Pj4+IGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+Pj4+Pj4+Pj4gaW5kZXggYjQx
MzVjNTBlOTA1Li4xNDdiMTVhMmY4YjMgMTAwNjQ0Cj4+Pj4+Pj4+PiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4+Pj4+Pj4+PiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4+Pj4+Pj4+PiBAQCAtMTI0MCw5
ICsxMjQwLDkgQEAgc3RhdGljIHMzMiBlMTAwMF9kaXNhYmxlX3VscF9scHRfbHAoc3RydWN0Cj4+
Pj4+Pj4+PiBlMTAwMF9odyAqaHcsIGJvb2wgZm9yY2UpCj4+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBldzMyKEgyTUUsIG1hY19yZWcpOwo+Pj4+Pj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgIH0KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqAgLyogUG9sbCB1cCB0
byAzMDBtc2VjIGZvciBNRSB0byBjbGVhciBVTFBfQ0ZHX0RPTkUuICovCj4+Pj4+Pj4+PiArwqDC
oMKgwqDCoMKgwqAgLyogUG9sbCB1cCB0byAyLjVzZWMgZm9yIE1FIHRvIGNsZWFyIFVMUF9DRkdf
RE9ORS4gKi8KPj4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB3aGlsZSAoZXIzMihGV1NNKSAm
IEUxMDAwX0ZXU01fVUxQX0NGR19ET05FKSB7Cj4+Pj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpZiAoaSsrID09IDMwKSB7Cj4+Pj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
ZiAoaSsrID09IDI1MCkgewo+Pj4+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZXRfdmFsID0gLUUxMDAwX0VSUl9QSFk7Cj4+Pj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+Pj4+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfQo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBUaGUgcmV0dXJuIHZhbHVlIHdhcyBub3QgY2F1
Z2h0IGJ5IHRoZSBjYWxsZXIsIHNvIHRoZSBlcnJvciBlbmRzIHVwCj4+Pj4+Pj4+IHVubm90aWNl
ZC4KPj4+Pj4+Pj4gTWF5YmUgbGV0IHRoZSBjYWxsZXIgY2hlY2sgdGhlIHJldHVybiB2YWx1ZSBv
Zgo+Pj4+Pj4+PiBlMTAwMF9kaXNhYmxlX3VscF9scHRfbHAoKT8KPj4+Pgo+Pj4+Pj4+IEkgYSBi
aXQgY29uZnVzZWQuIEluIG91ciBwcmV2aW91cyBjb252ZXJzYXRpb24geW91IHRvbGQgTUUgbm90
IAo+Pj4+Pj4+IHJ1bm5pbmcuCj4+Pj4+Pj4gbGV0IG1lIHNoaW1taW5nIGluLiBJbmNyZWFzaW5n
IGRlbGF5IHdvbid0IGJlIHNvbHZlIHRoZSBwcm9ibGVtIAo+Pj4+Pj4+IGFuZCBqdXN0Cj4+Pj4+
Pj4gbWFzayBpdC4gV2UgbmVlZCB0byB1bmRlcnN0YW5kIHdoeSBNRSB0YWtlIHRvbyBtdWNoIHRp
bWUuIFdoYXQgaXMKPj4+Pj4+PiBwcm9ibGVtIHdpdGggdGhpcyBzcGVjaWZpYyBzeXN0ZW0/Cj4+
Pj4+Pj4gU28sIGJhc2ljYWxseSBubyBNRSBzeXN0ZW0gc2hvdWxkIHdvcmtzIGZvciB5b3UuCj4+
Pj4+Pgo+Pj4+Pj4gU29tZSBsYXB0b3BzIE1FIHdvcmsgdGhhdCdzIHdoeSBvbmx5IHJlcHJvZHVj
ZSBpc3N1ZSBvbiBzb21lIGxhcHRvcHMuCj4+Pj4+PiBJbiB0aGlzIGlzc3VlIGkyMTkgaXMgY29u
dHJvbGxlZCBieSBNRS4KPj4+Pj4KPj4+Pj4gV2hvIGNhbiBleHBsYWluIC0gd2h5IE1FIHJlcXVp
cmVkIHRvbyBtdWNoIHRpbWUgb24gdGhpcyBzeXN0ZW0/Cj4+Pj4+IFByb2JhYmx5IG5lZWQgd29y
ayB3aXRoIE1FL0JJT1MgdmVuZG9yIGFuZCB1bmRlcnN0YW5kIGl0Lgo+Pj4+PiBEZWxheSB3aWxs
IGp1c3QgbWFzayB0aGUgcmVhbCBwcm9ibGVtIC0gd2UgbmVlZCB0byBmaW5kIHJvb3QgY2F1c2Uu
Cj4+Pj4+PiBRdWlyayBpcyBvbmx5IGZvciAxIG1vZGVsIHR5cGUuIEJ1dCBpc3N1ZSBpcyByZXBy
b2R1Y2VkIGJ5IG1vcmUgCj4+Pj4+PiBtb2RlbHMuCj4+Pj4+PiBTbyBpdCB3b24ndCB3b3JrLgo+
Pj4+Cj4+Pj4gKFdoZXJlIGlzIEFhcm9u4oCZcyByZXBseT8gSXQgd2FzbuKAmXQgZGVsaXZlcmVk
IHRvIG1lIHlldC4pCj4+Pj4KPj4+PiBBcyB0aGlzIGlzIGNsZWFybHkgYSByZWdyZXNzaW9uLCBw
bGVhc2UgcmV2ZXJ0IHRoZSBjb21taXQgZm9yIG5vdywKPj4+PiBhbmQgdGhlbiBmaW5kIGEgd2F5
IHRvIGNvcnJlY3RseSBpbXBsZW1lbnQgUzBpeCBzdXBwb3J0LiBMaW51eOKAmQo+Pj4+IHJlZ3Jl
c3Npb24gcG9saWN5IGRlbWFuZHMgdGhhdCBhcyBubyBmaXggaGFzIGJlZW4gZm91bmQgc2luY2UK
Pj4+PiB2NS41LXJjMS4gQ2hhbmdpbmcgSW50ZWwgTUUgc2V0dGluZ3MsIGV2ZW4gaWYgaXQgd291
bGQgd29yayBhcm91bmQKPj4+PiB0aGUgaXNzdWUsIGlzIG5vdCBhbiBhY2NlcHRhYmxlIHNvbHV0
aW9uLiBEZWxheWluZyB0aGUgcmVzdW1lIHRpbWUKPj4+PiBpcyBhbHNvIG5vdCBhIHNvbHV0aW9u
Lgo+Pj4KPj4+IFRoZSBzMGl4IHBhdGNoIGNhbiByZWR1Y2UgcG93ZXIgY29uc3VtcHRpb24sIGZp
bmFsbHkgbWFrZXMgUzJpZGxlIGFuCj4+PiBhY2NlcHRhYmxlIHNsZWVwIG1ldGhvZC4gU28gSSdk
IHNheSBpdCdzIGEgZml4LCBhbGJlaXQgYSByZWdyZXNzaW9uCj4+PiB3YXMgaW50cm9kdWNlZC4K
Pj4+Cj4+Pj4gUmVnYXJkaW5nIEludGVsIE1hbmFnZW1lbnQgRW5naW5lLCBvbmx5IEludGVsIGtu
b3dzIHdoYXQgaXQgZG9lcwo+Pj4+IGFuZCB3aGF0IHRoZSBlcnJvciBpcywgYXMgdGhlIE1FIGZp
cm13YXJlIGlzIHByb3ByaWV0YXJ5IGFuZAo+Pj4+IGNsb3NlZC4KPj4+Pgo+Pj4+IExhc3RseSwg
dGhlcmUgaXMgbm8gd2F5IHRvIGZ1bGx5IGRpc2FibGUgdGhlIEludGVsIE1hbmFnZW1lbnQKPj4+
PiBFbmdpbmUuIFRoZSBIQVAgc3R1ZmYgY2xhaW1zIHRvIHN0b3AgdGhlIEludGVsIE1FIGV4ZWN1
dGlvbiwgYnV0Cj4+Pj4gbm9ib2R5IGtub3dzLCBpZiBpdOKAmXMgc3VjY2Vzc2Z1bC4KPj4+Pgo+
Pj4+IEFhcm9uLCBLYWktSGFuZywgY2FuIHlvdSBzZW5kIHRoZSByZXZlcnQ/Cj4+Pgo+Pj4gSSBj
b25zaWRlciB0aGF0IGFzIGFuIGltcG9ydGFudCBmaXggZm9yIHMyaWRsZSwgSSBkb24ndCB0aGlu
awo+Pj4gcmV2ZXJ0aW5nIGlzIGFwcHJvcHJpYXRlLgo+Pgo+PiBJZiB0aGVyZSBpcyBhIGZpeCB3
aXRoIG5vIG90aGVyIHJlZ3Jlc3Npb24sIEkgYWdyZWUuIEJ1dCB0aGVyZSBoYXMgbm90IAo+PiBi
ZWVuIG9uZSwgc28gcGxlYXNlIHJldmVydC4gSXQgZG9lc27igJl0IG1hdHRlciBpZiB0aGUgY29t
bWl0IAo+PiBpbnRyb2R1Y2luZyB0aGUgcmVncmVzc2lvbiBmaXhlcyBzb21ldGhpbmcgZWxzZS4g
SXQgZ2V0cyB0b28gCj4+IGNvbXBsaWNhdGVkIHRvIGRlY2lkZSwgd2hpY2ggcmVncmVzc2lvbiBp
cyB3b3J0aCBpdCBvciBub3QuIFRoZSBMaW51eCAKPj4ga2VybmVsIGd1YXJhbnRlZXMgaXRzIHVz
ZXJzLCB0aGV5IGNhbiB1cGRhdGUgYW55IHRpbWUgd2l0aG91dCBicmVha2luZyAKPj4gdXNlciBz
cGFjZSAoaW4gdGhpcyBjYXNlIHN1c3BlbmQvcmVzdW1lKS7CoCBQbGVhc2UgcmVhZCBMaW51c+KA
mSBzZXZlcmFsIAo+PiBtZXNzYWdlcyBhYm91dCB0aGF0LiBIaXMgbWVzc2FnZSBbMV0gZXhhY3Rs
eSBhZGRyZXNzZXMgeW91ciBhcmd1bWVudHMuCj4+Cj4gUmV2ZXJ0IGlzIG5vIG9wdGlvbi4gUzBp
eCBzdXBwb3J0ZWQgb24gbm9uZSBNRSBzeXN0ZW0sIGFwcHJvdmVkIGJ5IEludGVsIAo+IGRlc2ln
biB0ZWFtIGFuZCBwb3dlciBtYW5hZ2VtZW50IGRvbWFpbiBvd25lci4KPiBWZW5kb3Igc2hvdWxk
IHByb3ZpZGUgbm9uZSBNRSBCSU9TIEkgdGhvdWdodC4gT3VyIFBBRSB3aWxsIHdvcmsgdG93YXJk
IAo+IG1lZXQgdGhpcy4KCkRpZCB5b3UgcmVhZCBMaW51c+KAmSBtZXNzYWdlcz8gSXQgZG9lc27i
gJl0IG1hdHRlci4KClJlcXVpcmluZyBwZW9wbGUgdG8gY2hhbmdlIHN5c3RlbSBmaXJtd2FyZSBz
ZXR0aW5ncyBpcyBhIG5vLWdvLgoKPj4+IFllYWgsIEhFTEwgTk8hCj4+Pgo+Pj4gR3Vlc3Mgd2hh
dD8gWW91J3JlIHdyb25nLiBZT1UgQVJFIE1JU1NJTkcgVEhFICMxIEtFUk5FTCBSVUxFLgo+Pj4K
Pj4+IFdlIGRvIG5vdCByZWdyZXNzLCBhbmQgd2UgZG8gbm90IHJlZ3Jlc3MgZXhhY3RseSBiZWNh
dXNlIHlvdXIgYXJlIAo+Pj4gMTAwJSB3cm9uZy4KPj4+Cj4+PiBBbmQgdGhlIHJlYXNvbiB5b3Ug
c3RhdGUgZm9yIHlvdXIgb3BpbmlvbiBpcyBpbiBmYWN0IGV4YWN0bHkgKldIWSogeW91Cj4+PiBh
cmUgd3JvbmcuCj4+Pgo+Pj4gWW91ciAiZ29vZCByZWFzb25zIiBhcmUgcHVyZSBhbmQgdXR0ZXIg
Z2FyYmFnZS4KPj4+Cj4+PiBUaGUgd2hvbGUgcG9pbnQgb2YgIndlIGRvIG5vdCByZWdyZXNzIiBp
cyBzbyB0aGF0IHBlb3BsZSBjYW4gdXBncmFkZQo+Pj4gdGhlIGtlcm5lbCBhbmQgbmV2ZXIgaGF2
ZSB0byB3b3JyeSBhYm91dCBpdC4KPj4+Cj4+Pj4gS2VybmVsIGhhZCBhIGJ1ZyB3aGljaCBoYXMg
YmVlbiBmaXhlZAo+Pj4KPj4+IFRoYXQgaXMgKkVOVElSRUxZKiBpbW1hdGVyaWFsLgo+Pj4KPj4+
IEd1eXMsIHdoZXRoZXIgc29tZXRoaW5nIHdhcyBidWdneSBvciBub3QgRE9FUyBOT1QgTUFUVEVS
Lgo+Pgo+PiBTbywgcGxlYXNlIChhbHNvIEludGVsIGRldmVsb3BlcnMpLCBwbGVhc2UgYWRoZXJl
IHRvIHRoaXMgcnVsZSwgYW5kIAo+PiByZXZlcnQgdGhlIGNvbW1pdC4KCgpLaW5kIHJlZ2FyZHMs
CgpQYXVsCgoKPj4gWzFdOiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOC84LzMvNjIxCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
