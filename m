Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3269E56666F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 11:43:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1319782FAE;
	Tue,  5 Jul 2022 09:43:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1319782FAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657014227;
	bh=kKIzj+sP92JJpzSPaerd25wbPYeTazJhqEqNRG5fk2g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HSK0S4HSI8j/U8lekVqjU6MkcY0WdT3bpVfk18pjl5Crsm+OHeUtNuV/RFX81W0C0
	 eM9ssYmgK510XZUbZweuk7QR1rCdqWjEcskqxZE4shvO99Nj1QuGyE/a+uvBHYRCXv
	 XWBhLbBYPBWyjF50xKN4Hy5oLERUsumNjqNtTLxViLPqb/yG7o69uZOGkh8QZ0BjBa
	 jtlFAjkVCDFmtzNOducykMjzJ4YCmpEa4V+JG8+WHUafOleVsNXhxecvVl42zRadw9
	 1bqpkjIzATuo3WqOUC92hfCTTKHQxwWQ0CjZ6ZOp8SrYrJntxVQN3EhxgVGYdNldQ2
	 mxz635DL2ngfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d_3x2_DvBbUl; Tue,  5 Jul 2022 09:43:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C071882E9C;
	Tue,  5 Jul 2022 09:43:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C071882E9C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09F271BF831
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 09:43:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4F62415DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 09:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4F62415DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JQ4LVckC7PWu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jul 2022 09:43:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 977144040B
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [IPv6:2a01:488:42:1000:50ed:8234::])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 977144040B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 09:43:38 +0000 (UTC)
Received: from [2a02:8108:963f:de38:eca4:7d19:f9a2:22c5]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1o8f5i-0007u4-3A; Tue, 05 Jul 2022 11:43:34 +0200
Message-ID: <6f52ccd2-8411-0c53-2deb-885bb1234ce5@leemhuis.info>
Date: Tue, 5 Jul 2022 11:43:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 Michal Wilczynski <michal.wilczynski@intel.com>
References: <CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com>
 <2596b2c6-71e4-543f-799f-b4b174c21f31@leemhuis.info>
 <CAK8fFZ6hS69JMtnvFnLVt9aiWEivZ9-izNgMHtB+KeAWAfaXaQ@mail.gmail.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
In-Reply-To: <CAK8fFZ6hS69JMtnvFnLVt9aiWEivZ9-izNgMHtB+KeAWAfaXaQ@mail.gmail.com>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1657014218;
 586417e5; 
X-HE-SMSGID: 1o8f5i-0007u4-3A
Subject: Re: [Intel-wired-lan] ice: Error setting promisc mode on VSI 6
 (rc=-17) @ 5.18.x
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
Cc: "regressions@lists.linux.dev" <regressions@lists.linux.dev>,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

W2FkZGluZyBNaWNoYWwgdG8gdGhlIHJlY2lwaWVudHNdCgpIaSwgdGhpcyBpcyB5b3VyIExpbnV4
IGtlcm5lbCByZWdyZXNzaW9uIHRyYWNrZXIuIFRvcC1wb3N0aW5nIGZvciBvbmNlLAp0byBtYWtl
IHRoaXMgZWFzaWx5IGFjY2Vzc2libGUgdG8gZXZlcnlvbmUuCgpJbnRlbCBuZXR3b3JrIG1haW50
YWluZXJzLCBoZWxwIG1lIG91dCBoZXJlIHBsZWFzZS4gSGFzIGFueXRoaW5nIGJlZW4KZG9uZSB0
byBhZGRyZXNzIHRoaXMgcmVncmVzc2lvbj8gSXQgbG9va3MgbGlrZSBKYXJvc2xhdiBkaWRuJ3Qg
ZXZlbiBnZXQKYSBzaW5nbGUgcmVwbHkuIFdoYXQncyB1cCB0aGVyZT8KCkJUVywgdG9vayBhIHF1
aWNrIGxvb2sgaW50byB0aGUgaXNzdWUgYW5kIG5vdGljZWQgYSB0aGUgcGF0Y2ggImljZTogRml4
CnByb21pc2N1b3VzIG1vZGUgbm90IHR1cm5pbmcgb2ZmIiBmcm9tIE1pY2hhbDoKaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzIwMjIwNzA0MTMxMjI3LjI5NjYxNjAtMy1taWNoYWwud2lsY3p5
bnNraUBpbnRlbC5jb20vCgpJcyB0aGlzIG1heWJlIGZpeGluZyB0aGlzPyBUaGVuIGl0IHdvdWxk
IGJlIGdvb2QgdG8gYWRkIExpbmsgYW5kClJlcG9ydGVkLWJ5IHRhZ3MgdG8gdGhhdCBwYXRjaC4K
Ck9yIGlzIHRoaXMgc29tZXRoaW5nIGVsc2UgYW5kIEphcm9zbGF2IG5lZWRzIHRvIGJpc2VjdD8K
CkNpYW8sIFRob3JzdGVuICh3ZWFyaW5nIGhpcyAndGhlIExpbnV4IGtlcm5lbCdzIHJlZ3Jlc3Np
b24gdHJhY2tlcicgaGF0KQoKUC5TLjogQXMgdGhlIExpbnV4IGtlcm5lbCdzIHJlZ3Jlc3Npb24g
dHJhY2tlciBJIGRlYWwgd2l0aCBhIGxvdCBvZgpyZXBvcnRzIGFuZCBzb21ldGltZXMgbWlzcyBz
b21ldGhpbmcgaW1wb3J0YW50IHdoZW4gd3JpdGluZyBtYWlscyBsaWtlCnRoaXMuIElmIHRoYXQn
cyB0aGUgY2FzZSBoZXJlLCBkb24ndCBoZXNpdGF0ZSB0byB0ZWxsIG1lIGluIGEgcHVibGljCnJl
cGx5LCBpdCdzIGluIGV2ZXJ5b25lJ3MgaW50ZXJlc3QgdG8gc2V0IHRoZSBwdWJsaWMgcmVjb3Jk
IHN0cmFpZ2h0LgoKI3JlZ3pib3QgcG9rZQoKT24gMTkuMDYuMjIgMTk6MDAsIEphcm9zbGF2IFB1
bGNoYXJ0IHdyb3RlOgo+IEhlbGxvLAo+IAo+IHllcywgSSByZXZlcnQgdGhhdCBjb21taXQuIFN0
aWxsIHRoZSBwcm9taXNjcyBjYW5ub3QgYmUgc2V0IGFuZCB0aGUgZG1lc2cKPiBlcnJvciBtZXNz
YWdlIGNoYW5nZWQgdG86Cj4gLS0tLS0tLS0tLS0tLS0tCj4gJCBpcCBsaW5rIHNldCBlbTEgcHJv
bWlzYyBvbgo+ICQgZG1lc2cKPiAuLi4KPiBpY2UgMDAwMDo2MzowMC4wIGVtMTogRXJyb3Igc2V0
dGluZyBNdWx0aWNhc3QgcHJvbWlzY3VvdXMgbW9kZSBvbiBWU0kgNgo+IC4uLgo+IC0tLS0tLS0t
LS0tLS0tLQo+IAo+IEphcm9zbGF2IFAuCj4gCj4gbmUgMTkuIDYuIDIwMjIgdiAxMzo1MSBvZGVz
w61sYXRlbCBUaG9yc3RlbiBMZWVtaHVpcwo+IDxyZWdyZXNzaW9uc0BsZWVtaHVpcy5pbmZvPiBu
YXBzYWw6Cj4gCj4+Cj4+IFtUTERSOiBJJ20gYWRkaW5nIHRoaXMgcmVncmVzc2lvbiByZXBvcnQg
dG8gdGhlIGxpc3Qgb2YgdHJhY2tlZAo+PiByZWdyZXNzaW9uczsgYWxsIHRleHQgZnJvbSBtZSB5
b3UgZmluZCBiZWxvdyBpcyBiYXNlZCBvbiBhIGZldyB0ZW1wbGF0ZXMKPj4gcGFyYWdyYXBocyB5
b3UgbWlnaHQgaGF2ZSBlbmNvdW50ZXJlZCBhbHJlYWR5IGFscmVhZHkgaW4gc2ltaWxhciBmb3Jt
Ll0KPj4KPj4gSGksIHRoaXMgaXMgeW91ciBMaW51eCBrZXJuZWwgcmVncmVzc2lvbiB0cmFja2Vy
Lgo+Pgo+PiBPbiAwOS4wNi4yMiAwODo1OCwgSmFyb3NsYXYgUHVsY2hhcnQgd3JvdGU6Cj4+Pgo+
Pj4gSSdtIHN0cnVnZ2xpbmcgd2l0aCBicm9rZW4gbmV0d29yayBjb25uZWN0aXZpdHkgYXQgVk1z
IHVzaW5nIGxpbnV4Cj4+PiBicmlkZ2UgYXQgaG9zdCBhZnRlciB1cGRhdGUgb2Yga2VybmVsIGZy
b20gNS4xNy54IHRvIDUuMTgueCBAIERlbGwKPj4+IFI3NTAgc2VydmVyIHdpdGggRTgxMC1YWFYg
TklDcy4KPj4+Cj4+PiBJIG5vdGljZWQgdGhlIGtlcm5lbCByZXBvcnRzICJFcnJvciBzZXR0aW5n
IHByb21pc2MgbW9kZSIgaW4gZG1lc2cuCj4+Pgo+Pj4gIyBkbWVzZyAgfCBncmVwICdFcnJvciBz
ZXR0aW5nIHByb21pc2MnCj4+PiBbICAgMjQuODYzNTU3XSBpY2UgMDAwMDozMTowMC4wOiBFcnJv
ciBzZXR0aW5nIHByb21pc2MgbW9kZSBvbiBWU0kgNiAocmM9LTE3KQo+Pj4gWyAgIDI0Ljg3ODM2
OV0gaWNlIDAwMDA6MzE6MDAuMDogRXJyb3Igc2V0dGluZyBwcm9taXNjIG1vZGUgb24gVlNJIDYg
KHJjPS0xNykKPj4+IFsgICAyNS4wNDU4MzRdIGljZSAwMDAwOjMxOjAwLjA6IEVycm9yIHNldHRp
bmcgcHJvbWlzYyBtb2RlIG9uIFZTSSA2IChyYz0tMTcpCj4+PiBbICAgMjUuMTI5ODQwXSBpY2Ug
MDAwMDpiMTowMC4wOiBFcnJvciBzZXR0aW5nIHByb21pc2MgbW9kZSBvbiBWU0kgNiAocmM9LTE3
KQo+Pj4gWyAgIDI1LjE0NDQ0MF0gaWNlIDAwMDA6YjE6MDAuMDogRXJyb3Igc2V0dGluZyBwcm9t
aXNjIG1vZGUgb24gVlNJIDYgKHJjPS0xNykKPj4+Cj4+PiAjIGxzcGNpIC1zIDAwMDA6MzE6MDAu
MAo+Pj4gMzE6MDAuMCBFdGhlcm5ldCBjb250cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhl
cm5ldCBDb250cm9sbGVyCj4+PiBFODEwLVhYViBmb3IgU0ZQIChyZXYgMDIpCj4+PiAjIGxzcGNp
IC1zIDAwMDA6YjE6MDAuMAo+Pj4gYjE6MDAuMCBFdGhlcm5ldCBjb250cm9sbGVyOiBJbnRlbCBD
b3Jwb3JhdGlvbiBFdGhlcm5ldCBDb250cm9sbGVyCj4+PiBFODEwLVhYViBmb3IgU0ZQIChyZXYg
MDIpCj4+Pgo+Pj4gSXQgaXMgZWFzeSB0byByZXByb2R1Y2UgYnk6Cj4+PiAgICMgaXAgbGluayBz
ZXQgZW0xIHByb21pc2Mgb24KPj4+ICAgIyBkbWVzZyAtVCB8IHRhaWwgLW4gMQo+Pj4gICBbVGh1
IEp1biAgOSAwODo0ODoxOSAyMDIyXSBpY2UgMDAwMDozMTowMC4wOiBFcnJvciBzZXR0aW5nIHBy
b21pc2MKPj4+IG1vZGUgb24gVlNJIDYgKHJjPS0xNykKPj4+Cj4+PiBDb3VsZCBpdCBiZSBhbiAn
aWNlJyBkcml2ZXIgYnVnIGludHJvZHVjZWQgaW4gdGhlIDUuMTgga2VybmVsPwo+Pgo+PiBDQ2lu
ZyB0aGUgcmVncmVzc2lvbiBtYWlsaW5nIGxpc3QsIGFzIGl0IHNob3VsZCBiZSBpbiB0aGUgbG9v
cCBmb3IgYWxsCj4+IHJlZ3Jlc3Npb25zLCBhcyBleHBsYWluZWQgaGVyZToKPj4gaHR0cHM6Ly93
d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvYWRtaW4tZ3VpZGUvcmVwb3J0aW5nLWlzc3Vl
cy5odG1sCj4+Cj4+IEphcm9zbGF2LCBkaWQgeW91IHRyeSB0byByZXZlcnQgdGhlIGNoYW5nZSB0
aGF0IHdhcyBzdWdnZXN0ZWQgdG8geW91IGluCj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC9kOTkzYmJiNi1lNTgzLTVkOTEtNzZjMC04NDFjYzVkYTg2YWZAcm9lY2stdXMubmV0Lwo+PiBE
aWQgaXQgaGVscD8KPj4KPj4gQW55d2F5OiBUbyBiZSBzdXJlIGJlbG93IGlzc3VlIGRvZXNuJ3Qg
ZmFsbCB0aHJvdWdoIHRoZSBjcmFja3MKPj4gdW5ub3RpY2VkLCBJJ20gYWRkaW5nIGl0IHRvIHJl
Z3pib3QsIG15IExpbnV4IGtlcm5lbCByZWdyZXNzaW9uIHRyYWNraW5nCj4+IGJvdDoKPj4KPj4g
I3JlZ3pib3QgXmludHJvZHVjZWQgdjUuMTcgdG8gdjUuMTgKPj4gI3JlZ3pib3QgdGl0bGUgbmV0
OiBpY2U6IEVycm9yIHNldHRpbmcgcHJvbWlzYyBtb2RlIG9uIFZTSSA2IChyYz0tMTcpIEAKPj4g
NS4xOC54Cj4+ICNyZWd6Ym90IG1vbml0b3IKPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
L0NBSzhmRlo2OCt4WjJaMHZEV25paEY4UGVKS0VtRXdDeXlGLThXOVBDWkpUZDh6ZnAtQUBtYWls
LmdtYWlsLmNvbS8KPj4gI3JlZ3pib3QgbW9uaXRvcgo+PiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvQ0FLOGZGWjYxbVEzQVlwZFdqV3R5VVh6cnMtUlZNVzYxbUJMcmpSRFhCeEItRjlHemJB
QG1haWwuZ21haWwuY29tLwo+PiAjcmVnemJvdCBpZ25vcmUtYWN0aXZpdHkKPj4KPj4gVGhpcyBp
c24ndCBhIHJlZ3Jlc3Npb24/IFRoaXMgaXNzdWUgb3IgYSBmaXggZm9yIGl0IGFyZSBhbHJlYWR5
Cj4+IGRpc2N1c3NlZCBzb21ld2hlcmUgZWxzZT8gSXQgd2FzIGZpeGVkIGFscmVhZHk/IFlvdSB3
YW50IHRvIGNsYXJpZnkgd2hlbgo+PiB0aGUgcmVncmVzc2lvbiBzdGFydGVkIHRvIGhhcHBlbj8g
T3IgcG9pbnQgb3V0IEkgZ290IHRoZSB0aXRsZSBvcgo+PiBzb21ldGhpbmcgZWxzZSB0b3RhbGx5
IHdyb25nPyBUaGVuIGp1c3QgcmVwbHkgLS0gaWRlYWxseSB3aXRoIGFsc28KPj4gdGVsbGluZyBy
ZWd6Ym90IGFib3V0IGl0LCBhcyBleHBsYWluZWQgaGVyZToKPj4gaHR0cHM6Ly9saW51eC1yZWd0
cmFja2luZy5sZWVtaHVpcy5pbmZvL3RyYWNrZWQtcmVncmVzc2lvbi8KPj4KPj4gUmVtaW5kZXIg
Zm9yIGRldmVsb3BlcnM6IFdoZW4gZml4aW5nIHRoZSBpc3N1ZSwgYWRkICdMaW5rOicgdGFncwo+
PiBwb2ludGluZyB0byB0aGUgcmVwb3J0ICh0aGUgbWFpbCB0aGlzIG9uZSByZXBsaWVkIHRvKSwg
YXMgdGhlIGtlcm5lbCdzCj4+IGRvY3VtZW50YXRpb24gY2FsbCBmb3I7IGFib3ZlIHBhZ2UgZXhw
bGFpbnMgd2h5IHRoaXMgaXMgaW1wb3J0YW50IGZvcgo+PiB0cmFja2VkIHJlZ3Jlc3Npb25zLgo+
Pgo+PiBDaWFvLCBUaG9yc3RlbiAod2VhcmluZyBoaXMgJ3RoZSBMaW51eCBrZXJuZWwncyByZWdy
ZXNzaW9uIHRyYWNrZXInIGhhdCkKPj4KPj4gUC5TLjogQXMgdGhlIExpbnV4IGtlcm5lbCdzIHJl
Z3Jlc3Npb24gdHJhY2tlciBJIGRlYWwgd2l0aCBhIGxvdCBvZgo+PiByZXBvcnRzIGFuZCBzb21l
dGltZXMgbWlzcyBzb21ldGhpbmcgaW1wb3J0YW50IHdoZW4gd3JpdGluZyBtYWlscyBsaWtlCj4+
IHRoaXMuIElmIHRoYXQncyB0aGUgY2FzZSBoZXJlLCBkb24ndCBoZXNpdGF0ZSB0byB0ZWxsIG1l
IGluIGEgcHVibGljCj4+IHJlcGx5LCBpdCdzIGluIGV2ZXJ5b25lJ3MgaW50ZXJlc3QgdG8gc2V0
IHRoZSBwdWJsaWMgcmVjb3JkIHN0cmFpZ2h0Lgo+IAo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
