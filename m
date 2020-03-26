Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87398193E1C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2020 12:41:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 27035261AF;
	Thu, 26 Mar 2020 11:41:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id upLusi9ru36Q; Thu, 26 Mar 2020 11:41:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 48F8C2612A;
	Thu, 26 Mar 2020 11:41:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E14E11BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 11:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DC62088661
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 11:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i5MLbe4pt-GM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2020 11:41:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 04B418818B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 11:41:39 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af065.dynamic.kabel-deutschland.de
 [95.90.240.101])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8FCEC206442F6;
 Thu, 26 Mar 2020 12:41:36 +0100 (CET)
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
 <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
 <899895bc-fb88-a97d-a629-b514ceda296d@canonical.com>
 <750ad0ad-816a-5896-de2f-7e034d2a2508@intel.com>
 <f9dc1980-fa8b-7df9-6460-b0944c7ebc43@molgen.mpg.de>
 <60A8493D-811B-4AD5-A8D3-82054B562A8C@canonical.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <3895cb4d-cc9d-238a-0776-a1fd3a490664@molgen.mpg.de>
Date: Thu, 26 Mar 2020 12:41:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <60A8493D-811B-4AD5-A8D3-82054B562A8C@canonical.com>
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

RGVhciBLYWktSGVuZywKCgpBbSAyNi4wMy4yMCB1bSAxMjoyOSBzY2hyaWViIEthaS1IZW5nIEZl
bmc6Cgo+PiBPbiBNYXIgMjUsIDIwMjAsIGF0IDIzOjQ5LCBQYXVsIE1lbnplbCA8cG1lbnplbEBt
b2xnZW4ubXBnLmRlPiB3cm90ZToKCj4+IEFtIDI1LjAzLjIwIHVtIDE0OjU4IHNjaHJpZWIgTmVm
dGluLCBTYXNoYToKPj4+IE9uIDMvMjUvMjAyMCAwODo0MywgQWFyb24gTWEgd3JvdGU6Cj4+Cj4+
Pj4gT24gMy8yNS8yMCAyOjM2IFBNLCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+Pj4+PiBPbiAzLzI1
LzIwMjAgMDY6MTcsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4+Cj4+Pj4+Pj4gT24gTWFyIDI0LCAy
MDIwLCBhdCAwMzoxNiwgQWFyb24gTWEgPGFhcm9uLm1hQGNhbm9uaWNhbC5jb20+IHdyb3RlOgo+
Pj4+Pj4+Cj4+Pj4+Pj4gTUUgdGFrZXMgMisgc2Vjb25kcyB0byB1bi1jb25maWd1cmUgVUxQIG1v
ZGUgZG9uZSBhZnRlciByZXN1bWUKPj4+Pj4+PiBmcm9tIHMyaWRsZSBvbiBzb21lIFRoaW5rUGFk
IGxhcHRvcHMuCj4+Pj4+Pj4gV2l0aG91dCBlbm91Z2ggd2FpdCwgcmVzZXQgYW5kIHJlLWluaXQg
d2lsbCBmYWlsIHdpdGggZXJyb3IuCj4+Pj4+Pgo+Pj4+Pj4gVGhhbmtzLCB0aGlzIHBhdGNoIHNv
bHZlcyB0aGUgaXNzdWUuIFdlIGNhbiBkcm9wIHRoZSBETUkgcXVpcmsgaW4KPj4+Pj4+IGZhdm9y
IG9mIHRoaXMgcGF0Y2guCj4+Pj4+Pgo+Pj4+Pj4+IEZpeGVzOiBmMTViYjZkZGU3MzhjYzhmYTAg
KCJlMTAwMGU6IEFkZCBzdXBwb3J0IGZvciBTMGl4IikKPj4+Pj4+PiBCdWdMaW5rOiBodHRwczov
L2J1Z3MubGF1bmNocGFkLm5ldC9idWdzLzE4NjU1NzAKPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBB
YXJvbiBNYSA8YWFyb24ubWFAY2Fub25pY2FsLmNvbT4KPj4+Pj4+PiAtLS0KPj4+Pj4+PiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jIHwgNCArKy0tCj4+Pj4+Pj4g
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Pj4+Pgo+
Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNo
OGxhbi5jCj4+Pj4+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxh
bi5jCj4+Pj4+Pj4gaW5kZXggYjQxMzVjNTBlOTA1Li4xNDdiMTVhMmY4YjMgMTAwNjQ0Cj4+Pj4+
Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYwo+Pj4+
Pj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4+
Pj4+PiBAQCAtMTI0MCw5ICsxMjQwLDkgQEAgc3RhdGljIHMzMiBlMTAwMF9kaXNhYmxlX3VscF9s
cHRfbHAoc3RydWN0Cj4+Pj4+Pj4gZTEwMDBfaHcgKmh3LCBib29sIGZvcmNlKQo+Pj4+Pj4+ICAg
ICAgICAgICAgICAgZXczMihIMk1FLCBtYWNfcmVnKTsKPj4+Pj4+PiAgICAgICAgICAgfQo+Pj4+
Pj4+Cj4+Pj4+Pj4gLSAgICAgICAgLyogUG9sbCB1cCB0byAzMDBtc2VjIGZvciBNRSB0byBjbGVh
ciBVTFBfQ0ZHX0RPTkUuICovCj4+Pj4+Pj4gKyAgICAgICAgLyogUG9sbCB1cCB0byAyLjVzZWMg
Zm9yIE1FIHRvIGNsZWFyIFVMUF9DRkdfRE9ORS4gKi8KPj4+Pj4+PiAgICAgICAgICAgd2hpbGUg
KGVyMzIoRldTTSkgJiBFMTAwMF9GV1NNX1VMUF9DRkdfRE9ORSkgewo+Pj4+Pj4+IC0gICAgICAg
ICAgICBpZiAoaSsrID09IDMwKSB7Cj4+Pj4+Pj4gKyAgICAgICAgICAgIGlmIChpKysgPT0gMjUw
KSB7Cj4+Pj4+Pj4gICAgICAgICAgICAgICAgICAgcmV0X3ZhbCA9IC1FMTAwMF9FUlJfUEhZOwo+
Pj4+Pj4+ICAgICAgICAgICAgICAgICAgIGdvdG8gb3V0Owo+Pj4+Pj4+ICAgICAgICAgICAgICAg
fQo+Pj4+Pj4KPj4+Pj4+IFRoZSByZXR1cm4gdmFsdWUgd2FzIG5vdCBjYXVnaHQgYnkgdGhlIGNh
bGxlciwgc28gdGhlIGVycm9yIGVuZHMgdXAKPj4+Pj4+IHVubm90aWNlZC4KPj4+Pj4+IE1heWJl
IGxldCB0aGUgY2FsbGVyIGNoZWNrIHRoZSByZXR1cm4gdmFsdWUgb2YKPj4+Pj4+IGUxMDAwX2Rp
c2FibGVfdWxwX2xwdF9scCgpPwo+Pgo+Pj4+PiBJIGEgYml0IGNvbmZ1c2VkLiBJbiBvdXIgcHJl
dmlvdXMgY29udmVyc2F0aW9uIHlvdSB0b2xkIE1FIG5vdCBydW5uaW5nLgo+Pj4+PiBsZXQgbWUg
c2hpbW1pbmcgaW4uIEluY3JlYXNpbmcgZGVsYXkgd29uJ3QgYmUgc29sdmUgdGhlIHByb2JsZW0g
YW5kIGp1c3QKPj4+Pj4gbWFzayBpdC4gV2UgbmVlZCB0byB1bmRlcnN0YW5kIHdoeSBNRSB0YWtl
IHRvbyBtdWNoIHRpbWUuIFdoYXQgaXMKPj4+Pj4gcHJvYmxlbSB3aXRoIHRoaXMgc3BlY2lmaWMg
c3lzdGVtPwo+Pj4+PiBTbywgYmFzaWNhbGx5IG5vIE1FIHN5c3RlbSBzaG91bGQgd29ya3MgZm9y
IHlvdS4KPj4+Pgo+Pj4+IFNvbWUgbGFwdG9wcyBNRSB3b3JrIHRoYXQncyB3aHkgb25seSByZXBy
b2R1Y2UgaXNzdWUgb24gc29tZSBsYXB0b3BzLgo+Pj4+IEluIHRoaXMgaXNzdWUgaTIxOSBpcyBj
b250cm9sbGVkIGJ5IE1FLgo+Pj4KPj4+IFdobyBjYW4gZXhwbGFpbiAtIHdoeSBNRSByZXF1aXJl
ZCB0b28gbXVjaCB0aW1lIG9uIHRoaXMgc3lzdGVtPwo+Pj4gUHJvYmFibHkgbmVlZCB3b3JrIHdp
dGggTUUvQklPUyB2ZW5kb3IgYW5kIHVuZGVyc3RhbmQgaXQuCj4+PiBEZWxheSB3aWxsIGp1c3Qg
bWFzayB0aGUgcmVhbCBwcm9ibGVtIC0gd2UgbmVlZCB0byBmaW5kIHJvb3QgY2F1c2UuCj4+Pj4g
UXVpcmsgaXMgb25seSBmb3IgMSBtb2RlbCB0eXBlLiBCdXQgaXNzdWUgaXMgcmVwcm9kdWNlZCBi
eSBtb3JlIG1vZGVscy4KPj4+PiBTbyBpdCB3b24ndCB3b3JrLgo+Pgo+PiAoV2hlcmUgaXMgQWFy
b27igJlzIHJlcGx5PyBJdCB3YXNu4oCZdCBkZWxpdmVyZWQgdG8gbWUgeWV0LikKPj4KPj4gQXMg
dGhpcyBpcyBjbGVhcmx5IGEgcmVncmVzc2lvbiwgcGxlYXNlIHJldmVydCB0aGUgY29tbWl0IGZv
ciBub3csCj4+IGFuZCB0aGVuIGZpbmQgYSB3YXkgdG8gY29ycmVjdGx5IGltcGxlbWVudCBTMGl4
IHN1cHBvcnQuIExpbnV44oCZCj4+IHJlZ3Jlc3Npb24gcG9saWN5IGRlbWFuZHMgdGhhdCBhcyBu
byBmaXggaGFzIGJlZW4gZm91bmQgc2luY2UKPj4gdjUuNS1yYzEuIENoYW5naW5nIEludGVsIE1F
IHNldHRpbmdzLCBldmVuIGlmIGl0IHdvdWxkIHdvcmsgYXJvdW5kCj4+IHRoZSBpc3N1ZSwgaXMg
bm90IGFuIGFjY2VwdGFibGUgc29sdXRpb24uIERlbGF5aW5nIHRoZSByZXN1bWUgdGltZQo+PiBp
cyBhbHNvIG5vdCBhIHNvbHV0aW9uLgo+IAo+IFRoZSBzMGl4IHBhdGNoIGNhbiByZWR1Y2UgcG93
ZXIgY29uc3VtcHRpb24sIGZpbmFsbHkgbWFrZXMgUzJpZGxlIGFuCj4gYWNjZXB0YWJsZSBzbGVl
cCBtZXRob2QuIFNvIEknZCBzYXkgaXQncyBhIGZpeCwgYWxiZWl0IGEgcmVncmVzc2lvbgo+IHdh
cyBpbnRyb2R1Y2VkLgo+IAo+PiBSZWdhcmRpbmcgSW50ZWwgTWFuYWdlbWVudCBFbmdpbmUsIG9u
bHkgSW50ZWwga25vd3Mgd2hhdCBpdCBkb2VzCj4+IGFuZCB3aGF0IHRoZSBlcnJvciBpcywgYXMg
dGhlIE1FIGZpcm13YXJlIGlzIHByb3ByaWV0YXJ5IGFuZAo+PiBjbG9zZWQuCj4+IAo+PiBMYXN0
bHksIHRoZXJlIGlzIG5vIHdheSB0byBmdWxseSBkaXNhYmxlIHRoZSBJbnRlbCBNYW5hZ2VtZW50
Cj4+IEVuZ2luZS4gVGhlIEhBUCBzdHVmZiBjbGFpbXMgdG8gc3RvcCB0aGUgSW50ZWwgTUUgZXhl
Y3V0aW9uLCBidXQKPj4gbm9ib2R5IGtub3dzLCBpZiBpdOKAmXMgc3VjY2Vzc2Z1bC4KPj4gCj4+
IEFhcm9uLCBLYWktSGFuZywgY2FuIHlvdSBzZW5kIHRoZSByZXZlcnQ/Cj4gCj4gSSBjb25zaWRl
ciB0aGF0IGFzIGFuIGltcG9ydGFudCBmaXggZm9yIHMyaWRsZSwgSSBkb24ndCB0aGluawo+IHJl
dmVydGluZyBpcyBhcHByb3ByaWF0ZS4KCklmIHRoZXJlIGlzIGEgZml4IHdpdGggbm8gb3RoZXIg
cmVncmVzc2lvbiwgSSBhZ3JlZS4gQnV0IHRoZXJlIGhhcyBub3QgCmJlZW4gb25lLCBzbyBwbGVh
c2UgcmV2ZXJ0LiBJdCBkb2VzbuKAmXQgbWF0dGVyIGlmIHRoZSBjb21taXQgaW50cm9kdWNpbmcg
CnRoZSByZWdyZXNzaW9uIGZpeGVzIHNvbWV0aGluZyBlbHNlLiBJdCBnZXRzIHRvbyBjb21wbGlj
YXRlZCB0byBkZWNpZGUsIAp3aGljaCByZWdyZXNzaW9uIGlzIHdvcnRoIGl0IG9yIG5vdC4gVGhl
IExpbnV4IGtlcm5lbCBndWFyYW50ZWVzIGl0cyAKdXNlcnMsIHRoZXkgY2FuIHVwZGF0ZSBhbnkg
dGltZSB3aXRob3V0IGJyZWFraW5nIHVzZXIgc3BhY2UgKGluIHRoaXMgCmNhc2Ugc3VzcGVuZC9y
ZXN1bWUpLiAgUGxlYXNlIHJlYWQgTGludXPigJkgc2V2ZXJhbCBtZXNzYWdlcyBhYm91dCB0aGF0
LiAKSGlzIG1lc3NhZ2UgWzFdIGV4YWN0bHkgYWRkcmVzc2VzIHlvdXIgYXJndW1lbnRzLgoKPiBZ
ZWFoLCBIRUxMIE5PIQo+IAo+IEd1ZXNzIHdoYXQ/IFlvdSdyZSB3cm9uZy4gWU9VIEFSRSBNSVNT
SU5HIFRIRSAjMSBLRVJORUwgUlVMRS4KPiAKPiBXZSBkbyBub3QgcmVncmVzcywgYW5kIHdlIGRv
IG5vdCByZWdyZXNzIGV4YWN0bHkgYmVjYXVzZSB5b3VyIGFyZSAxMDAlIHdyb25nLgo+IAo+IEFu
ZCB0aGUgcmVhc29uIHlvdSBzdGF0ZSBmb3IgeW91ciBvcGluaW9uIGlzIGluIGZhY3QgZXhhY3Rs
eSAqV0hZKiB5b3UKPiBhcmUgd3JvbmcuCj4gCj4gWW91ciAiZ29vZCByZWFzb25zIiBhcmUgcHVy
ZSBhbmQgdXR0ZXIgZ2FyYmFnZS4KPiAKPiBUaGUgd2hvbGUgcG9pbnQgb2YgIndlIGRvIG5vdCBy
ZWdyZXNzIiBpcyBzbyB0aGF0IHBlb3BsZSBjYW4gdXBncmFkZQo+IHRoZSBrZXJuZWwgYW5kIG5l
dmVyIGhhdmUgdG8gd29ycnkgYWJvdXQgaXQuCj4gCj4+IEtlcm5lbCBoYWQgYSBidWcgd2hpY2gg
aGFzIGJlZW4gZml4ZWQKPiAKPiBUaGF0IGlzICpFTlRJUkVMWSogaW1tYXRlcmlhbC4KPiAKPiBH
dXlzLCB3aGV0aGVyIHNvbWV0aGluZyB3YXMgYnVnZ3kgb3Igbm90IERPRVMgTk9UIE1BVFRFUi4K
ClNvLCBwbGVhc2UgKGFsc28gSW50ZWwgZGV2ZWxvcGVycyksIHBsZWFzZSBhZGhlcmUgdG8gdGhp
cyBydWxlLCBhbmQgCnJldmVydCB0aGUgY29tbWl0LgoKCktpbmQgcmVnYXJkcywKClBhdWwKCgpb
MV06IGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE4LzgvMy82MjEKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
