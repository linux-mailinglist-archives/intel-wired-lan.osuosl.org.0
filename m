Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA75B1BC53
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2019 19:53:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5FBA92285E;
	Mon, 13 May 2019 17:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4if1RfAXI-tb; Mon, 13 May 2019 17:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D8FA325729;
	Mon, 13 May 2019 17:53:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 832F51BF400
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2019 17:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7EA4883AF5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2019 17:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ZclAlJ1gHYP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2019 17:53:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D6E5F813F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2019 17:53:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 10:53:20 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost) ([10.241.225.168])
 by orsmga007.jf.intel.com with ESMTP; 13 May 2019 10:53:19 -0700
Date: Mon, 13 May 2019 10:53:19 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Periyasamy Palanisamy <periyasamy.palanisamy@ericsson.com>
Message-ID: <20190513105319.0000594c@intel.com>
In-Reply-To: <AM0PR07MB531393AB5237B86A25991A7A8A0F0@AM0PR07MB5313.eurprd07.prod.outlook.com>
References: <AM0PR07MB531316C34EDCB413A855132A8A0C0@AM0PR07MB5313.eurprd07.prod.outlook.com>
 <AM0PR07MB531317D299B0EC8D11D67F568A0C0@AM0PR07MB5313.eurprd07.prod.outlook.com>
 <AM0PR07MB531393AB5237B86A25991A7A8A0F0@AM0PR07MB5313.eurprd07.prod.outlook.com>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.30; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] Not able to create VFs on PF passthrough of
 ethernet interface to VM
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
Cc: "e1000-devel@lists.sourceforge.net" <e1000-devel@lists.sourceforge.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAxMyBNYXkgMjAxOSAwNzozNjo0MSArMDAwMCBQZXJpeWFzYW15IHdyb3RlOgo+IEhp
LAo+IAo+IEnigJltIHRyeWluZyB0byBhY2hpZXZlIFBGIHBhc3N0aHJvdWdoIG9mIDQwLzEwRyBl
dGhlcm5ldCBpbnRlcmZhY2UgKGk0MGUpIGludG8gZ3Vlc3QgVk0gcnVubmluZyBvbiBxZW11L2t2
bSBoeXBlcnZpc29yIGFuZCB0aGVuIGNyZWF0ZSBWRnMgb24gdGhlIFBGIGluc2lkZSB0aGUgVk0u
Cj4gVGhpcyBpcyB0byBoYXZlIGEgZmxleGliaWxpdHkgYW5kIGJldHRlciBtYW5hZ2VhYmlsaXR5
IG9mIFZGcyBpbnNpZGUgdGhlIFZNIChmb3IgZXhhbXBsZSwga3ViZXJuZXRlcyB3b3JrZXIgbm9k
ZSkgaXRzZWxmIGFuZCBub3Qgb24gdGhlIGhvc3QuCj4gCj4gCj4gVGhlIGV0aGVybmV0IFBDSSBk
ZXZpY2UgaXMgc2VlbiBpbnNpZGUgdGhlIFZNIGFuZCBib3VuZCB0byBpNDBlIGRyaXZlci4gQnV0
IEkgZG9u4oCZdCBzZWUgYW4gb3B0aW9uIHRvIGNyZWF0ZSBWRnMuIGkuZS4gc3Jpb3ZfbnVtdmZz
IGZpbGUgaXMgbm90IHNlZW4gdW5kZXIgL3N5cy9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDow
Mi4xLzAwMDA6MDI6MDAuMCBkaXJlY3RvcnkuCgpIaSBQZXJpeWFzYW15LAoKVGhlIFBDSSBzcGFj
ZSBpdHNlbGYgaXMgbm90IHBhc3NlZC10aHJvdWdoLCBpdCBpcyBjb21wbGV0ZWx5IGZha2UgYW5k
CmdlbmVyYXRlZCBieSBRRU1VLgoKRG8geW91IGtub3cgaWYgYW55b25lIGhhcyBldmVyIGdvdHRl
biB3aGF0IHlvdSdyZSB0cnlpbmcgdG8gZG8gdG8Kd29yaz8gIEkgZG9uJ3QgdGhpbmsgeW91IGNh
biBkbyB3aGF0IHlvdSdyZSB0cnlpbmcgdG8gZG8gd2l0aCB1c2luZyBhClZNIHRvIHNwYXduIFNS
LUlPViBkZXZpY2VzLCBhdCBsZWFzdCBJJ3ZlIG5vdCBoZWFyZCBvZiBpdCB3b3JraW5nLgoKQmFz
aWNhbGx5IHlvdSBoYXZlIGEgc2NvcGluZyBwcm9ibGVtLiAgQXQgaXQncyBjb3JlLCB0aGUgUENJ
IHNwYWNlIGlzCm93bmVkIGJ5IHRoZSBob3N0LCBub3QgdGhlIFZNLCBhbmQgdGhlIGhhcmR3YXJl
IGlzIGxpdGVyYWxseSBpbiB0aGUKaG9zdCBQQ0kgZGV2aWNlIHNwYWNlIG5vIG1hdHRlciB3aGVy
ZSB5b3UgcGFzcyBpdCB0by4gIFRoZSBoYXJkd2FyZQphY3R1YWxseSBjcmVhdGVzIChzdGFydHMg
ZGVjb2RpbmcgYWRkcmVzc2VzIGFuZCBQQ0kgc3BhY2UgZm9yKSB0aGUgbmV3ClBDSSBkZXZpY2Vz
IHdoZW4geW91IGVuYWJsZSB0aGUgZGV2aWNlIHZpYSBzcmlvdl9udW12ZnMuICBUaG9zZSBkZXZp
Y2VzCndpbGwgYXBwZWFyIGluIHNwYWNlIHJlc2VydmVkIGJ5IHRoZSBob3N0LCBmb3IgU1ItSU9W
IGRldmljZXMgdG8KImFwcGVhciIsIGJ1dCB0aGVyZSBpcyBubyBndWFyYW50ZWUgdGhhdCBtZW1v
cnkgcmFuZ2Ugd2lsbCBiZSBwYXNzZWQKdGhyb3VnaCB0byB0aGUgVkYsIGFuZCBhZ2FpbiBhbGwg
dGhlIFZNIFBDSSBkZXZpY2VzIGFyZSAiZmFrZSIgUENJCmNvbmZpZyBzcGFjZSwgc28gd2l0aG91
dCBzb21lIGRhZW1vbiBtb25pdG9yaW5nIGFuZCBhZGRpbmcgdGhlIGRldmljZXMKdmlhIHZpcnNo
IG9yIHNvbWV0aGluZywgSSBkb3VidCB0aGUgVk0gd291bGQgZXZlciBzZWUgdGhlbSBldmVuLgoK
Cj4gSG9zdCB2ZXJzaW9uczoKPiBPUzogVWJ1bnR1IDE2LjA0LjUgTFRTLCBLZXJuZWw6IDQuMTUu
MC00OC1nZW5lcmljLCBsaWJ2aXJ0OiA0LjAuMCwgcWVtdTogMi4xMS4xCj4gaTQwZSB2ZXJzaW9u
OiAyLjEuMTQtaywgZmlybXdhcmUtdmVyc2lvbjogNi4wMSAweDgwMDAzNGEzIDEuMTc0Ny4wCj4g
Cj4gR3Vlc3QgdmVyc2lvbnM6Cj4gT1M6IENlbnRPUyA3IChDb3JlKSBLZXJuZWw6IDMuMTAuMC04
NjIuMTQuNC5lbDcueDg2XzY0Cj4gaTQwZSB2ZXJzaW9uOiAyLjEuMTQtaywgZmlybXdhcmUtdmVy
c2lvbjogNi4wMSAweDgwMDAzNGEzIDEuMTc0Ny4wCj4gCj4gVGhlIFZNIGxpYnZpcnQgeG1sIGNv
bmZpZ3VyYXRpb24gWzFdLCBQRiBjb25maWd1cmF0aW9uIGF0IGhvc3QgWzJdLCBQRiBjb25maWd1
cmF0aW9uIGF0IFZNIFszXSBhcmUgYXR0YWNoZWQuCj4gVGhlIGxzcGNpIG91dHB1dCBsaW5lIG5v
cy4gNjMtNzUgcmVsYXRlZCB0byBTUklPViBDYXBhYmlsaXRpZXMgaW4gaG9zdCBbMl0gYXJlIG1p
c3NpbmcgaW4gVk0gd2hpY2ggbG9va3MgYml0IHdlaXJkLgoKYXMgcGVyIGFib3ZlLCB0aGUgUENJ
IGNvbmZpZyBzcGFjZSBpcyBjb21wbGV0ZWx5IHZpcnR1YWxpemVkIGJ5IFFFTVUuCgpIb3BlIHRo
aXMgaGVscHMhCkplc3NlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
