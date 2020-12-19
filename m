Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E63792DEDC5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Dec 2020 08:55:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BC25C2042E;
	Sat, 19 Dec 2020 07:55:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OCZhrjPvv+tl; Sat, 19 Dec 2020 07:55:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BB893203D3;
	Sat, 19 Dec 2020 07:55:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 39A0E1BF577
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 07:55:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 300A9203C3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 07:55:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EXdBOUdl6Kpw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Dec 2020 07:54:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 3E626203BF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 07:54:58 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5ae92b.dynamic.kabel-deutschland.de
 [95.90.233.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E753420646219;
 Sat, 19 Dec 2020 08:54:54 +0100 (CET)
To: Todd Fujinaka <todd.fujinaka@intel.com>,
 Ben Greear <greearb@candelatech.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
 <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <86fb482f-81b0-8a5f-1580-ed5b6f13c743@molgen.mpg.de>
Date: Sat, 19 Dec 2020 08:54:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] ixgbe: 5.10.0 kernel regression for 2.5Gbps
 link negotiation?
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBUb2RkLAoKClRoYW5rIHlvdSBmb3IgeW91ciByZXBseS4KCldoYXQgaXMgdGhlIHJlYXNv
biB5b3Ugc3RyaXBwZWQgdGhlIG1haW50YWluZXJzIGZyb20gQ2MgbGlzdCBhZ2Fpbj8KCkFsc28s
IHBsZWFzZSBhZGhlcmUgdG8gbWFpbGluZyBsaXN0IGV0aXF1ZXR0ZSwgYW5kIGRvIG5vdCB0b3Ag
cG9zdCwgYnV0IAp1c2UgaW50ZXJsZWF2ZWQgc3R5bGUuCgpGb3IgY29udGV4dDogQ29tbWl0IGEy
OTZkNjY1ZWEgKGl4Z2JlOiBBZGQgZXRodG9vbCBzdXBwb3J0IHRvIGVuYWJsZSAyLjUgCmFuZCA1
LjAgR2JwcyBzdXBwb3J0KSwgcHJlc2VudCBzaW5jZSA1LjktcmMxLCBpbnRyb2R1Y2VkIGEgcmVn
cmVzc2lvbiwgCnRoYXQgbGluayBuZWdvdGlhdGlvbiBub3cgZGVmYXVsdHMgdG8gMSBHYnBzLCBh
bmQgZXRodG9vbCBoYXMgdG8gYmUgcnVuIAp0byBlbmFibGUgaGlnaGVyIHNwZWVkcyAyLjUuCgoK
QW0gMTkuMTIuMjAgdW0gMDE6MDkgc2NocmllYiBGdWppbmFrYSwgVG9kZDoKPiBXaGF0IGRvIHlv
dSBjb25zaWRlciBhIHJlZ3Jlc3Npb24/IEhhdmluZyB0byBlbmFibGUgMi41RyBhbmQgNUcgdXNp
bmcKPiBldGh0b29sIHdoaWNoIGNhbiBiZSBkb25lIGF0IGJvb3QgdGltZT8KCldlbGwsIExpbnV4
4oCZIG5vIHJlZ3Jlc3Npb24gcG9saWN5IHNob3VsZCBiZSB3ZWxsIGtub3duIGJ5IExpbnV4IGtl
cm5lbCAKZGV2ZWxvcGVycyBhbmQgbWFpbnRhaW5lcnMuCgpQZW9wbGUgY2FuIGFsd2F5cyB1cGRh
dGUgdG8gdGhlIG1haW5saW5lIExpbnV4IGtlcm5lbCwgYW5kIGV4cGVjdCB0aGVpciAKc2V0dXAg
dG8gd29yayBhcyB3aXRoIHRoZSBvbGQgTGludXgga2VybmVsLiBFdmVuIGlmIHRoZSBiZWhhdmlv
ciBiZWZvcmUgCndhcyBhIGJ1Zy4KCkJ1dCBtYXliZSBJIGFtIHdyb25nLCBzbyBMaW51cyBpcyBp
biB0aGUgQ2MgbGlzdCBub3cuCgo+IFdlIGhhZCBtb3JlIHRoYW4gYSBmZXcgZGF0YWNlbnRlcnMg
d2l0aCBpc3N1ZXMgYmVjYXVzZSBvZiBjb21wZXRpbmcKPiBzdGFuZGFyZHMuIEkgY2hlY2tlZCB3
aXRoIG91ciBtYXJrZXRpbmcgcGVvcGxlIGFuZCwgb24gdGhlIHdob2xlLCBubwo+IG9uZSBjb3Vs
ZCB0aGluayBvZiBhIGxhcmdlIG51bWJlciBvZiAyLjVHIG9yIDVHIGN1c3RvbWVycy4KPiAKPiBX
ZSBoYWQgc2V2ZXJhbCBlc2NhbGF0aW9ucyBmcm9tIG1ham9yIE9FTXMgYW5kIHRoaXMgd2FzIHRo
ZSBzb2x1dGlvbgo+IHRoZXkgd2FudGVkLgo+IAo+IFdlIGNvbnNpZGVyIHRoaXMgbmVjZXNzYXJ5
IGZvciBpbnRlcm9wZXJhYmlsaXR5LgoKQXMgd3JpdHRlbiwgdGhpcyBkb2VzIG5vdCBtYXR0ZXIs
IGFzIGZhciBhcyBJIGtub3cuIFlvdSBoYXZlIHRvIGZpbmQgYSAKd2F5IHRvIG5vdCByZWdyZXNz
IHdvcmtpbmcgc2V0dXBzLiBJdCBhbHNvIHNob3dzLCB0aGF0IHlvdXIgcHJvY2VzcyAKc2hvdWxk
IGJlIG1vcmUgb3Blbi4KCkluIHRoaXMgY2FzZSwgSSBhbSBwYXJ0aWN1bGFybHkgdXBzZXQsIHRo
YXQgdGhlIGNvbW1pdCBjaGFuZ2VkIHRoZSAKZGVmYXVsdHMgd2l0aG91dCBhbnkgbWVudGlvbmlu
ZyBpbiB0aGUgY29tbWl0IG1lc3NhZ2UsIGFuZCB0aGUgY29tbWl0IAptZXNzYWdlIG1pc3NlcyBh
bGwgdGhlIGluZm9ybWF0aW9uIGFuZCBjb250ZXh0LCB3aGljaCBub3cgdG9vayBhIHdoaWxlIAp0
byBnYXRoZXIgZnJvbSB5b3UuCgpBZGRpdGlvbmFsbHksIGluIG15IG9waW5pb24sIGFkZGl0aW9u
YWxseSwgYSB3YXJuaW5nIG9yIG5vdGljZSBzaG91bGQgYmUgCnByaW50ZWQgYnkgTGludXggYWJv
dXQgdGhpcyBpc3N1ZS4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCgoKPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+IEZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+IFNl
bnQ6IEZyaWRheSwgRGVjZW1iZXIgMTgsIDIwMjAgMzoxOSBQTQo+IFRvOiBCZW4gR3JlZWFyIDxn
cmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT47IEZ1amluYWthLCBUb2RkIDx0b2RkLmZ1amluYWthQGlu
dGVsLmNvbT4KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IEdyZWcgS0gg
PGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPjsgTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnku
bC5uZ3V5ZW5AaW50ZWwuY29tPjsgQnJhbmRlYnVyZywgSmVzc2UgPGplc3NlLmJyYW5kZWJ1cmdA
aW50ZWwuY29tPjsgVHlsLCBSYWRvc2xhd1ggPHJhZG9zbGF3eC50eWxAaW50ZWwuY29tPjsgTG9r
dGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgTWNsZWFu
LCBBcnRodXIgRiA8YXJ0aHVyLmYubWNsZWFuQGludGVsLmNvbT47IFNrYWpld3NraSwgUGlvdHJY
IDxwaW90cnguc2thamV3c2tpQGludGVsLmNvbT4KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVk
LWxhbl0gNS4xMC4wIGtlcm5lbCByZWdyZXNzaW9uIGZvciAyLjVHYnBzIGxpbmsgbmVnb3RpYXRp
b24/Cj4gCj4gWytjYyBSYWRvc2xhdywgQWxla3NhbmRyLCBQaW90cl0KPiAKPiBBbSAxOS4xMi4y
MCB1bSAwMDowNyBzY2hyaWViIEJlbiBHcmVlYXI6PiBPbiAxMi8xOC8yMCAxMTo0MyBBTSwgUGF1
bCBNZW56ZWwgd3JvdGU6Cj4gCj4+PiBBbSAxOC4xMi4yMCB1bSAyMDoyNyBzY2hyaWViIEZ1amlu
YWthLCBUb2RkOgo+Pj4+IFllcywgYW5kIEknbSBwbHVnZ2luZyB0aGUgaG9sZSBpbiB0aGUgUkVB
RE1FIHJpZ2h0IG5vdy4gSGVyZSdzIHRoZSAKPj4+PiBwcm9wb3NlZCB0ZXh0Ogo+Pj4+Cj4+Pj4g
QWR2ZXJ0aXNlbWVudHMgZm9yIDIuNUcgYW5kIDVHIG9uIHRoZSB4NTUwIHdlcmUgdHVybmVkIG9m
ZiBieSAKPj4+PiBkZWZhdWx0IGR1ZSB0byBpbnRlcm9wZXJhYmlsaXR5IGlzc3VlcyB3aXRoIGNl
cnRhaW4gc3dpdGNoZXMuIFRvIAo+Pj4+IHR1cm4gdGhlbSBiYWNrIG9uLCB1c2UKPj4+Pgo+Pj4+
IGV0aHRvb2wgLXMgPGV0aFg+IGFkdmVydGlzZSBOCj4+Pj4KPj4+PiB3aGVyZSBOIGlzIGEgY29t
YmluYXRpb24gb2YgdGhlIGZvbGxvd2luZy4KPj4+Pgo+Pj4+IDEwMGJhc2VURnVsbCAgICAweDAw
OAo+Pj4+IDEwMDBiYXNlVEZ1bGwgICAweDAyMAo+Pj4+IDI1MDBiYXNlVEZ1bGwgICAweDgwMDAw
MDAwMDAwMAo+Pj4+IDUwMDBiYXNlVEZ1bGwgICAweDEwMDAwMDAwMDAwMDAKPj4+PiAxMDAwMGJh
c2VURnVsbCAgMHgxMDAwCj4+Pj4KPj4+PiBGb3IgZXhhbXBsZSwgdG8gdHVybiBvbiBhbGwgbW9k
ZXM6Cj4+Pj4gZXRodG9vbCAtcyA8ZXRoWD4gYWR2ZXJ0aXNlIDB4MTgwMDAwMDAwMTAyOAo+Pj4+
Cj4+Pj4gRm9yIG1vcmUgZGV0YWlscyBwbGVhc2Ugc2VlIHRoZSBldGh0b29sIG1hbiBwYWdlLgo+
Pj4KPj4+IFdoYXQgY29tbWl0IGludHJvZHVjZWQgdGhpcyByZWdyZXNzaW9uLiBQbGVhc2UgYmVh
ciBpbiBtaW5kLCB0aGF0IAo+Pj4gdGhpcyBjb250cmFkaWN0cyBMaW51eOKAmSBuby1yZWdyZXNz
aW9uIHBvbGljeSwgYW5kIHRoZSBjb21taXQgc2hvdWxkIAo+Pj4gdGhlcmVmb3JlIGJlIHJldmVy
dGVkIGFzIHNvb24gYXMgcG9zc2libGUuCj4+IAo+PiBMb29rcyBsaWtlIGl0IGlzIGF0IHRoZSBl
bmQgb2YgdGhpcyBwYXRjaCwgdGhvdWdoIHRoZSBkZXNjcmlwdGlvbiAKPj4gZG9lc24ndCBtZW50
aW9uIGNoYW5naW5nIGRlZmF1bHRzOgo+PiAKPj4gQ29tbWl0IGEyOTZkNjY1ZWFlMWU4ZWM2NDQ1
NjgzYmZiOTk5Yzg4NDA1ODQyNmEKPj4gQXV0aG9yOiBSYWRvc2xhdyBUeWwgPHJhZG9zbGF3eC50
eWxAaW50ZWwuY29tPgo+PiBEYXRlOiAgIEZyaSBKdW4gMjYgMTU6Mjg6MTQgMjAyMCArMDIwMAo+
PiAKPj4gICAgICBpeGdiZTogQWRkIGV0aHRvb2wgc3VwcG9ydCB0byBlbmFibGUgMi41IGFuZCA1
LjAgR2JwcyBzdXBwb3J0Cj4+IAo+PiAgICAgIEFkZGVkIGZ1bGwgc3VwcG9ydCBmb3IgbmV3IHZl
cnNpb24gRXRodG9vbCBBUEkuIE5ldyBBUEkgYWxsb3cgdXNlCj4+ICAgICAgMjUwMEdiYXNlLVQg
YW5kIDUwMDBiYXNlLVQgc3VwcG9ydGVkIGFuZCBhZHZlcnRpc2VkIGxpbmsgc3BlZWQgbW9kZXMu
Cj4+IAo+PiAgICAgIFNpZ25lZC1vZmYtYnk6IFJhZG9zbGF3IFR5bCA8cmFkb3NsYXd4LnR5bEBp
bnRlbC5jb20+Cj4+ICAgICAgVGVzdGVkLWJ5OiBBbmRyZXcgQm93ZXJzIDxhbmRyZXd4LmJvd2Vy
c0BpbnRlbC5jb20+Cj4+ICAgICAgU2lnbmVkLW9mZi1ieTogVG9ueSBOZ3V5ZW4gPGFudGhvbnku
bC5uZ3V5ZW5AaW50ZWwuY29tPgo+PiAKPj4gVGhhbmtzLAo+PiBCZW4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
