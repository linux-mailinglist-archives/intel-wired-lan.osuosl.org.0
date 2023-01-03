Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B65365C5A4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 19:04:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D321A409E3;
	Tue,  3 Jan 2023 18:04:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D321A409E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672769069;
	bh=Aqjt7RrMavS75q7Tg0Uot5daIftwCIkbZVxFihNJnG8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NOxRRu41FgraMRi27Q6jb/ZbFOK1v+RIuk4nuP//ksUnAozSw2pV+AivsbpLD2zPP
	 on0j67OX8fio0TsduWH3ZDHL7aoY+KGX21IF/hH0rukbeVenYzu8z4dEIv+k9PKJ/p
	 x3pzG92s/AUQTeNSTGVpDurhoAz0QTFB4NnQtyWZu2gddaQ5l22/WD474UrKPldWUe
	 1oWME3YSfIBDav8PAMXSLQeAOHnG+8jAgvCv279iM32tthQzO4qTT+NKOXC0w0axgL
	 SK5RiU0QIhnJqhMAFy8IUnlHyuJR3bli/8LektN+hs5z9HQtPw1KC86VB/Nh2mqssG
	 EmFUyjRHmhVKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zczC2YWELHsX; Tue,  3 Jan 2023 18:04:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD0714023F;
	Tue,  3 Jan 2023 18:04:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD0714023F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 641B11BF28D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 18:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 43E736076C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 18:04:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 43E736076C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 85hvmafvBS9s for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jan 2023 18:04:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EF9B605E9
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1EF9B605E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jan 2023 18:04:22 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1136060293A85;
 Tue,  3 Jan 2023 19:04:19 +0100 (CET)
Message-ID: <af6e993a-ddd5-9b2d-c757-e4d291b8b47d@molgen.mpg.de>
Date: Tue, 3 Jan 2023 19:04:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20221221132502.1099843-1-mateusz.palczewski@intel.com>
 <de860700-d302-5ac2-950b-4363f6a55c56@molgen.mpg.de>
 <BL1PR11MB5288FAFB1D586D4EECAC4B7E87F29@BL1PR11MB5288.namprd11.prod.outlook.com>
 <b0c70529-0f20-fa80-d688-485ef8470b26@molgen.mpg.de>
 <BL1PR11MB5288569AFF63268989928D7787F49@BL1PR11MB5288.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <BL1PR11MB5288569AFF63268989928D7787F49@BL1PR11MB5288.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] e1000e: Disable TSO on i219-LM
 card to increase speed
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
Cc: Jakub Kicinski <kuba@kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CkRlYXIgTWF0ZXVzeiwKCgpBbSAwMy4wMS4yMyB1bSAxNjoxNSBzY2hyaWViIFBhbGN6ZXdza2ks
IE1hdGV1c3o6Cgo+PiBBbSAyOC4xMi4yMiB1bSAxMTo0MyBzY2hyaWViIFBhbGN6ZXdza2ksIE1h
dGV1c3o6Cgo+Pj4+IEFtIDIxLjEyLjIyIHVtIDE0OjI1IHNjaHJpZWIgTWF0ZXVzeiBQYWxjemV3
c2tpOgo+Pj4+PiBXaGlsZSB1c2luZyBpMjE5LUxNIGNhcmQgY3VycmVudGx5IGl0IHdhcyBvbmx5
IHBvc3NpYmxlIHRvIGFjaGlldmUKPj4+Pj4gYWJvdXQgNjAlIG9mIG1heGltdW0gc3BlZWQgZHVl
IHRvIHJlZ3Jlc3Npb24gaW50cm9kdWNlZCBpbiBMaW51eCA1LjgtcmMxLgo+Pj4+PiBUaGlzIHdh
cyBjYXVzZWQgYnkgVFNPIG5vdCBiZWluZyBkaXNhYmxlZCBieSBkZWZhdWx0IGRlc3BpdGUgY29t
bWl0Cj4+Pj4+IGYyOTgwMTAzMGFjNiBpbXBsZW1lbnRhdGlvbi4gRml4IHRoYXQgYnkgbW92aW5n
IHRoZSBwYXJ0IG9mIHRoZSBjb2RlCj4+Pj4+IHJlc3BvbnNpYmxlIGZvciB0aGlzIG91dHNpZGUg
b2YgYWRhcHRlci0+ZmxhZ3MgJiBGTEFHX1RTT19GT1JDRSBjaGVjay4KPj4+Pgo+Pj4+IFVuZm9y
dHVuYXRlbHksIHlvdSBtaXNzZWQgdG8gYWRkIGFsbCB0aGUgaW5mb3JtYXRpb24sIHRoYXQgdGhp
cyBjYW7igJl0Cj4+Pj4gYmUgcmVwcm9kdWNlZCBpbiBhbGwgc2l0dWF0aW9ucywgYW5kIHlvdSBh
bHNvIGZvcmdvdCB0byBhZGQgdGhlCj4+Pj4gZGF0YXNoZWV0IHNlY3Rpb24sIHdoZXJlIGl04oCZ
cyB3cml0dGVuIHRoYXQgVFNPIG5lZWRzIHRvIGJlIGRpc2FibGVkLgo+Pj4+Cj4+Pj4+IEZpeGVz
OiBmMjk4MDEwMzBhYzYgKCJlMTAwMGU6IERpc2FibGUgVFNPIGZvciBidWZmZXIgb3ZlcnJ1bgo+
Pj4+PiB3b3JrYXJvdW5kIikKPj4+Pgo+Pj4+IFdoeSBkb2VzCj4+Pj4KPj4+PiAgICAgICBpZiAo
IShhZGFwdGVyLT5mbGFncyAmIEZMQUdfVFNPX0ZPUkNFKSkgewo+Pj4+ICAgICAgIAlb4oCmXQo+
Pj4+ICAgICAgIAlpZiAoaHctPm1hYy50eXBlID09IGUxMDAwX3BjaF9zcHQpIHsKPj4+Pgo+Pj4+
IG5vdCB3b3JrIGluIHlvdXIgc2l0dWF0aW9uPyBJcyBgRkxBR19UU09fRk9SQ0VgIHNldCBmb3Ig
bmV0d29yayBuYW1lc3BhY2VzPwo+Pj4gICA+IEkgaGF2ZSB0ZXN0ZWQgdGhpcyBvbiBuZXcgc2V0
dXAgYW5kIHdpdGhvdXQgdGhpcyBwYXRjaCBJIHN0aWxsIHNlZQo+Pj4gdGhlIHNwZWVkIGJlaW5n
IGFyb3VuZyBvbmx5IH42OTAgTWJpdHMvc2VjIGFuZCBhZnRlciBhcHBseWluZyBpdAo+Pj4gc3Rh
YmxlIDkzNCBNYml0cy9zZWMKPj4KPj4gUGxlYXNlIHByb3ZpZGUgdGhlIGluc3RydWN0aW9ucyBo
b3cgdG8gc2V0IHVwIHRoZSBuZXR3b3JrIG5hbWVzcGFjZSwgdGhhdCBJIGNhbiB0ZXN0IHRoYXQu
Cj4gCj4gSW4gbXkgc2V0dXAgaTIxOSBpbnRlcmZhY2UgaXMgY2FsbGVkIGVubzEgYW5kIGl0J3Mg
Y29ubmVjdGVkCj4gQmFjazJCYWNrIHdpdGggb3RoZXIgY2FyZCBpbnNpZGUgc2FtZSBzZXJ2ZXIg
ZW5zMWYzLiBJIGhhdmUgY3JlYXRlZAo+IG5ldyBuYW1lc3BhY2UgdXNpbmcgImlwIG5ldG5zIGFk
ZCB0ZXN0IiwgdGhlbiBJIGhhdmUgYWRkZWQgbXkgaTIxOQo+IGludGVyZmFjZSB1c2luZyAgIiBp
cCBsaW5rIHNldCBlbm8xIG5ldG5zIHRlc3QiLCBicmluZyBpdCB1cCB1c2luZwo+ICJpcCBuZXRu
cyBleGVjIHRlc3QgaWZjb25maWcgZW5vMSB1cCIsIGFkZGVkIGlwIGFkZHJlc3NlcyB0byBib3Ro
IG9mCj4gdGhlIGludGVyZmFjZXMgImlwIG5ldG5zIGV4ZWMgdGVzdCBpcCBhZGRyIGFkZCAxMC4x
LjEuMS8yNCBkZXYgZW5vMSIKPiBvbiBuYW1lc3BhY2UgaW50ZXJmYWNlIGFuZCAiaXAgYWRkciBh
ZGQgMTAuMS4xLjIvMjQgZGV2IGVuczFmMyIuIFRoZW4KPiBvbiBvbmUgdGVybWluYWwgSSByYW4g
ImlwIG5ldG5zIGV4ZWMgdGVzdCBpcGVyZjMgLWMgMTAuMS4xLjIiIGFuZCBvbgo+IHRoZSBzZWNv
bmQgb25lICJpcGVyZjMgLXMiLiBUaGlzIHJlc3VsdGVkIG9uIHRoZSBzcGVlZCBiZWluZyBjYXBw
ZWQgCj4gYXQgfjY5ME1iaXRzL3MuCgpUaGFuayB5b3UuIChUaG91Z2gsIEkgZG8gbm90IGZ1bGx5
IHVuZGVyc3RhbmQgd2h5IHlvdSBuZWVkIGEgbmV0d29yawpuYW1lc3BhY2UgdG8gc2VuZCB0cmFm
ZmljIGJldHdlZW4gdHdvIGNhcmRzIGV2ZW4gaW4gdGhlIHNhbWUgc3lzdGVtLikKCj4gQnV0IGFm
dGVyIFlvdXIgY29tbWVudHMgSSBoYXZlIGNoYW5nZWQgbXkgc2V0dXAgdG8gaGF2ZSBpMjE5Cj4g
Y29ubmVjdGVkIHRvIGFub3RoZXIgc2VydmVyIHRvIGF2b2lkIHVzaW5nIG5hbWVzcGFjZXMuIFRo
ZSByZXN1bHRzCj4gYXJlIHRoYXQgdGhlIFRTTyBzZWVtcyB0byBiZSAgZGlzYWJsZWQgYnkgZGVm
YXVsdCByaWdodCBhZnRlciB0aGUKPiBzeXN0ZW0gYm9vdHMgd2l0aCBlMTAwMGUgZHJpdmVyLCBi
dXQgYWZ0ZXIgcmVsb2FkaW5nIGl0IHdpdGggcm1tb2QKPiBhbmQgbW9kcHJvYmUgaXQgc2VlbXMg
dG8gYmUgZGlzYWJsZWQgYnkgZGVmYXVsdC4gSSB3aWxsIGRpZyBtb3JlIGludG8KPiBpdC4gQnV0
IHBsZWFzZSB0ZWxsIG1lIGlmIFlvdSBvYnNlcnZlIHRoZSBzYW1lIHRoaW5nLgoKVmVyeSBpbnRl
cmVzdGluZy4gRGlzY3Vzc2luZyBtb3JlIGFib3V0IHRoZSBpc3N1ZSwgSSBub3cgc2VlIHRoYXQg
dGhlIApjb21taXQgbWVzc2FnZSBzdW1tYXJ5IGNvbmZ1c2VkIG1lLCBhbmQgSSBhc3N1bWVkLCBU
U08gd2FzIGVuYWJsZWQuIApBZnRlciB0aGUgZGlzY3Vzc2lvbiwgSSBjaGVja2VkIHdpdGggZXRo
dG9vbCB0byBmaW5kIG91dCwgdGhhdCBpdOKAmXMgb2ZmIApvbiB0aGUgc3lzdGVtcyBJIHRlc3Rl
ZCB3aXRoLgoKICAgICAkIGV0aHRvb2wgLWsgbmV0MDAgfCBncmVwIHRjcC1zZWdtZW50YXRpb24t
b2ZmbG9hZAogICAgIHRjcC1zZWdtZW50YXRpb24tb2ZmbG9hZDogb2ZmCgpUdXJuaW5nIGl0IG9u
IHdpdGggYHN1ZG8gZXRodG9vbCAtSyBuZXQwMCB0c28gb25gIGluZGVlZCBkZWNyZWFzZWQgdGhl
IApiYW5kd2lkdGggZnJvbSA4NDYgTWJpdHMvc2VjIHRvIDUwNyBNYml0cy9zZWMgYmV0d2VlbiB0
d28gRGVsbCBQcmVjaXNpb24gCjM2MjAgY29ubmVjdGVkIG92ZXIgYW4gb2ZmaWNlIHN3aXRjaC4K
CiAgICAgMDA6MWYuNiBFdGhlcm5ldCBjb250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9yYXRp
b24gRXRoZXJuZXQgCkNvbm5lY3Rpb24gKDIpIEkyMTktTE0gWzgwODY6MTViN10gKHJldiAzMSkK
ClJlbW92aW5nIGFuZCBsb2FkaW5nIHRoZSBtb2R1bGUgKmUxMDAwZSogZG9lcyBub3QgdHVybiBU
U08gb24gdGhvdWdoIGhlcmUuCgo+Pj4gVG8gZ2l2ZSBtb3JlIGluZm9ybWF0aW9uIG9uIHRoZSBz
ZXR1cCAtIEkgaGF2ZSB0ZXN0ZWQgaXQgd2l0aCBpMjE5LUxNCj4+PiB0aGF0IGlzIGJ1aWx0IGlu
dG8gc2VydmVyIHdpdGggSW50ZWwgU2t5bGFrZSBjaGlwLiBUaGUgcmVzdWx0cyBhcmUgdGhlCj4+
PiBzYW1lIGZvciBjb25uZWN0aW9uIHVzaW5nIG5hbWVzcGFjZXMgaW4gdGhlIHNhbWUgc2VydmVy
IGFzIHdlbGwgYXMKPj4+IGhhdmluZyBpdCBjb25uZWN0ZWQgdG8gYW5vdGhlciBzZXJ2ZXIuCj4+
Cj4+IEkgb25seSB0ZXN0ZWQgdGhpcyBvbiBkZXNrdG9wcy4gUGxlYXNlIGdpdmUgbW9yZSBkZXRh
aWxzIG9uIHRoZSBhY3R1YWwgZGV2aWNlIChgbHNwY2kgLW5uYCkuCj4gSGVyZSBpcyBteSBvdXRw
dXQKPiAKPiAgICMgbHNwY2kgLW5uIHwgZ3JlcCAiRXRoIgo+ICAgMDA6MWYuNiBFdGhlcm5ldCBj
b250cm9sbGVyIFswMjAwXTogSW50ZWwgQ29ycG9yYXRpb24gRXRoZXJuZXQgQ29ubmVjdGlvbiAo
MykgSTIxOS1MTSBbODA4NjoxNWI5XSAocmV2IDA5KQoKKEkgd291bGQgaGF2ZSBob3BlZCBJbnRl
bCB0byBoYXZlIGZpeGVkIHRoZSBUU08gaXNzdWUgaW4gbmV3ZXIgCnJldmlzaW9ucy4gRG8geW91
IGtub3cgaWYgdGhhdCBwcm9ibGVtIGlzIGtub3duIHRvIHRoZSBoYXJkd2FyZSBndXlzLikKCj4+
IFBsZWFzZSBmaWd1cmUgb3V0LCB3aXRoIGEgZGVidWdnZXIsIHRyYWNpbmcgb3IgcHJpbnQgc3Rh
dGVtZW50cywKPj4gd2h5IHRoZSBjb25kaXRpb24gYWJvdmUgaXMgbm90IHJlYWNoZWQgaW4geW91
ciBzZXR1cC4KPiAKPiBJIHdpbGwgdHJ5IHRvIHRlc3QgbW9yZSBpZiBtYXliZSB0aGlzIGlzc3Vl
IGlzIHByZXNlbnQgb25seSBhZnRlcgo+IHJlbG9hZGluZyB0aGUgZHJpdmVyIGluc3RlYWQgb2Yg
bmFtZXNwYWNlcyB0aGVtc2VsdmVzLgoKR29vZCBsdWNrIGZpZ3VyaW5nIGl0IG91dC4KCj4+Pj4g
QW55d2F5LCBJ4oCZZCBzYXksIGl04oCZcyB0aGUgd3JvbmcgY29tbWl0IHRvIHJlZmVyZW5jZSwg
YXMgaXQgZG9lcyBub3QKPj4+PiBpbnRyb2R1Y2UgdGhlIHBlcmZvcm1hbmNlIHJlZ3Jlc3Npb24g
eW91IGFyZSBzZWVpbmcuID4+IEFuZCBub3cKPj4+PiBoYXZpbmcgZHVnIGluIG1vcmUgaW50byB0
aGlzIGNoYW5nZSwgSSBkbyBub3QgdGhpbmssIGl0IGNhbiBiZQo+Pj4+IGFjY2VwdGVkIGFzIGlz
LCBhcyBkaXNhYmxpbmcgVENQIFNlZ21lbnRhdGlvbiBPZmZsb2FkIChUU08pIHdvdWxkIGJlCj4+
Pj4gYSBwb3RlbnRpYWwgcGVyZm9ybWFuY2UgcmVncmVzc2lvbiAoQ1BVIHVzYWdlKSBvbiBhIGxv
dCBvZiBzeXN0ZW1zLgo+Pj4+Cj4+PiBDYW4gWW91IHBsZWFzZSBlbGFib3JhdGUgbW9yZSBvbiB0
aGF0Pwo+Pgo+PiBJZiB5b3UgZGlzYWJsZSBUU08gdGhlIOKAnGNhbGN1bGF0aW9uc+KAnCBhcmUg
ZG9uZSBvbiB0aGUgQ1BVIGluc3RlYWQKPj4gb2YgdGhlIG5ldHdvcmsgZGV2aWNlLCBzbyBsZXNz
IGNvbXB1dGUgcmVzb3VyY2VzIGFyZSBhdmFpbGFibGUgZm9yCj4+IGNvbXB1dGluZy4gQXMgaXQg
d29ya3MgZmluZSBvbiB0aGUgc3lzdGVtcyBJIHRlc3RlZCB3aXRoLCBpdCB3b3VsZCBiZQo+PiBh
IHBlcmZvcm1hbmNlIHJlZ3Jlc3Npb24sIG9uIHRoZSBzeXN0ZW1zLCB3aGVyZSB5b3VyIHByb2Js
ZW0gZG9lcyBub3QKPj4gb2NjdXIuCgpBcyBUU08gaXMgb2ZmIG9uIG15IHN5c3RlbXMsIG15IHBv
aW50IGlzIG1vb2QuCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
