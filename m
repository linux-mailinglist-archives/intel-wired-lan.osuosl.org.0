Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D73D38EBEE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 14:51:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DC102038B;
	Thu, 15 Aug 2019 12:51:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OciCnu2qbFer; Thu, 15 Aug 2019 12:51:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C18D020450;
	Thu, 15 Aug 2019 12:51:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02E1E1BF34F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 12:51:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F198D203DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 12:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QNV5w7WwUF1p for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2019 12:51:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 1F37E203A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 12:51:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 05:51:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="167735781"
Received: from rrranjan-mobl1.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.35.248])
 by orsmga007.jf.intel.com with ESMTP; 15 Aug 2019 05:51:19 -0700
To: Sridhar Samudrala <sridhar.samudrala@intel.com>,
 magnus.karlsson@intel.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 tom.herbert@intel.com
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <bebfb097-5357-91d8-ebc7-2f8ede392ad7@intel.com>
Date: Thu, 15 Aug 2019 14:51:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/5] Add support for SKIP_BPF
 flag for AF_XDP sockets
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAxOS0wOC0xNSAwNTo0NiwgU3JpZGhhciBTYW11ZHJhbGEgd3JvdGU6Cj4gVGhpcyBwYXRj
aCBzZXJpZXMgaW50cm9kdWNlcyBYRFBfU0tJUF9CUEYgZmxhZyB0aGF0IGNhbiBiZSBzcGVjaWZp
ZWQKPiBkdXJpbmcgdGhlIGJpbmQoKSBjYWxsIG9mIGFuIEFGX1hEUCBzb2NrZXQgdG8gc2tpcCBj
YWxsaW5nIHRoZSBCUEYKPiBwcm9ncmFtIGluIHRoZSByZWNlaXZlIHBhdGggYW5kIHBhc3MgdGhl
IGJ1ZmZlciBkaXJlY3RseSB0byB0aGUgc29ja2V0Lgo+IAo+IFdoZW4gYSBzaW5nbGUgQUZfWERQ
IHNvY2tldCBpcyBhc3NvY2lhdGVkIHdpdGggYSBxdWV1ZSBhbmQgYSBIVwo+IGZpbHRlciBpcyB1
c2VkIHRvIHJlZGlyZWN0IHRoZSBwYWNrZXRzIGFuZCB0aGUgYXBwIGlzIGludGVyZXN0ZWQgaW4K
PiByZWNlaXZpbmcgYWxsIHRoZSBwYWNrZXRzIG9uIHRoYXQgcXVldWUsIHdlIGRvbid0IG5lZWQg
YW4gYWRkaXRpb25hbAo+IEJQRiBwcm9ncmFtIHRvIGRvIGZ1cnRoZXIgZmlsdGVyaW5nIG9yIGxv
b2t1cC9yZWRpcmVjdCB0byBhIHNvY2tldC4KPiAKPiBIZXJlIGFyZSBzb21lIHBlcmZvcm1hbmNl
IG51bWJlcnMgY29sbGVjdGVkIG9uCj4gICAgLSAyIHNvY2tldCAyOCBjb3JlIEludGVsKFIpIFhl
b24oUikgUGxhdGludW0gODE4MCBDUFUgQCAyLjUwR0h6Cj4gICAgLSBJbnRlbCA0MEdiIEV0aGVy
bmV0IE5JQyAoaTQwZSkKPiAKPiBBbGwgdGVzdHMgdXNlIDIgY29yZXMgYW5kIHRoZSByZXN1bHRz
IGFyZSBpbiBNcHBzLgo+IAo+IHR1cmJvIG9uIChkZWZhdWx0KQo+IC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQkKPiAgICAgICAgICAgICAgICAgICAgICAgIG5v
LXNraXAtYnBmICAgIHNraXAtYnBmCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCQo+IHJ4ZHJvcCB6ZXJvY29weSAgICAgICAgICAgMjEuOSAgICAgICAgIDM4
LjUKPiBsMmZ3ZCAgemVyb2NvcHkgICAgICAgICAgIDE3LjAgICAgICAgICAyMC41Cj4gcnhkcm9w
IGNvcHkgICAgICAgICAgICAgICAxMS4xICAgICAgICAgMTMuMwo+IGwyZndkICBjb3B5ICAgICAg
ICAgICAgICAgIDEuOSAgICAgICAgICAyLjAKPiAKPiBubyB0dXJibyA6ICBlY2hvIDEgPiAvc3lz
L2RldmljZXMvc3lzdGVtL2NwdS9pbnRlbF9wc3RhdGUvbm9fdHVyYm8KPiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0JCj4gICAgICAgICAgICAgICAgICAgICAg
ICBuby1za2lwLWJwZiAgICBza2lwLWJwZgo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQkKPiByeGRyb3AgemVyb2NvcHkgICAgICAgICAgIDE1LjQgICAgICAg
ICAyOS4wCj4gbDJmd2QgIHplcm9jb3B5ICAgICAgICAgICAxMS44ICAgICAgICAgMTguMgo+IHJ4
ZHJvcCBjb3B5ICAgICAgICAgICAgICAgIDguMiAgICAgICAgIDEwLjUKPiBsMmZ3ZCAgY29weSAg
ICAgICAgICAgICAgICAxLjcgICAgICAgICAgMS43Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCQo+CgpUaGlzIHdvcmsgaXMgc29tZXdoYXQgc2ltaWxhciB0
byB0aGUgWERQX0FUVEFDSCB3b3JrIFsxXS4gQXZvaWRpbmcgdGhlCnJldHBvbGluZSBpbiB0aGUg
WERQIHByb2dyYW0gY2FsbCBpcyBhIG5pY2UgcGVyZm9ybWFuY2UgYm9vc3QhIEkgbGlrZQp0aGUg
bnVtYmVycyEgOi0pIEkgYWxzbyBsaWtlIHRoZSBpZGVhIG9mIGFkZGluZyBhIGZsYWcgdGhhdCBq
dXN0IGRvZXMKd2hhdCBtb3N0IEFGX1hEUCBSeCB1c2VycyB3YW50IC0tIGp1c3QgZ2V0dGluZyBh
bGwgcGFja2V0cyBvZiBhCmNlcnRhaW4gcXVldWUgaW50byB0aGUgWERQIHNvY2tldHMuCgpJbiBh
ZGRpdGlvbiB0byBUb2tlJ3MgbWFpbCwgSSBoYXZlIHNvbWUgbW9yZSBjb25jZXJucyB3aXRoIHRo
ZSBzZXJpZXM6CgoqIEFGQUlVIHRoZSBTS0lQX0JQRiBvbmx5IHdvcmtzIGZvciB6ZXJvLWNvcHkg
ZW5hYmxlZCBzb2NrZXRzLiBJTU8sIGl0CiAgIHNob3VsZCB3b3JrIGZvciBhbGwgbW9kZXMgKGlu
Y2x1ZGluZyBYRFBfU0tCKS4KCiogSW4gb3JkZXIgdG8gd29yaywgYSB1c2VyIHN0aWxsIG5lZWRz
IGFuIFhEUCBwcm9ncmFtIHJ1bm5pbmcuIFRoYXQncwogICBjbHVua3kuIEknZCBsaWtlIHRoZSBi
ZWhhdmlvciB0aGF0IGlmIG5vIFhEUCBwcm9ncmFtIGlzIGF0dGFjaGVkLAogICBhbmQgdGhlIG9w
dGlvbiBpcyBzZXQsIHRoZSBwYWNrZXRzIGZvciBhIHRoYXQgcXVldWUgZW5kIHVwIGluIHRoZQog
ICBzb2NrZXQuIElmIHRoZXJlJ3MgYW4gWERQIHByb2dyYW0gYXR0YWNoZWQsIHRoZSBwcm9ncmFt
IGhhcwogICBwcmVjZWRlbmNlLgoKKiBJdCByZXF1aXJlcyBjaGFuZ2VzIGluIGFsbCBkcml2ZXJz
LiBOb3QgbmljZSwgYW5kIHNjYWxlcyBiYWRseS4gVHJ5CiAgIG1ha2luZyBpdCBnZW5lcmljICh4
ZHBfZG9fcmVkaXJlY3QveGRwX2ZsdXNoKSwgc28gaXQgSnVzdCBXb3JrcyBmb3IKICAgYWxsIFhE
UCBjYXBhYmxlIGRyaXZlcnMuCgpUaGFua3MgZm9yIHdvcmtpbmcgb24gdGhpcyEKCgpCasO2cm4K
ClsxXSAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMTgxMjA3MTE0NDMxLjE4MDM4
LTEtYmpvcm4udG9wZWxAZ21haWwuY29tLwoKCj4gU3JpZGhhciBTYW11ZHJhbGEgKDUpOgo+ICAg
IHhzazogQ29udmVydCBib29sICd6YycgZmllbGQgaW4gc3RydWN0IHhkcF91bWVtIHRvIGEgdTMy
IGJpdG1hcAo+ICAgIHhzazogSW50cm9kdWNlIFhEUF9TS0lQX0JQRiBiaW5kIG9wdGlvbgo+ICAg
IGk0MGU6IEVuYWJsZSBYRFBfU0tJUF9CUEYgb3B0aW9uIGZvciBBRl9YRFAgc29ja2V0cwo+ICAg
IGl4Z2JlOiBFbmFibGUgWERQX1NLSVBfQlBGIG9wdGlvbiBmb3IgQUZfWERQIHNvY2tldHMKPiAg
ICB4ZHBzb2NrX3VzZXI6IEFkZCBza2lwX2JwZiBvcHRpb24KPiAKPiAgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMgICB8IDIyICsrKysrKysrKy0KPiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyAgICB8ICA2ICsrKwo+ICAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIHwgMjAgKysrKysrKyst
Cj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94c2suYyAgfCAxNiAr
KysrKystCj4gICBpbmNsdWRlL25ldC94ZHBfc29jay5oICAgICAgICAgICAgICAgICAgICAgICAg
fCAyMSArKysrKysrKy0KPiAgIGluY2x1ZGUvdWFwaS9saW51eC9pZl94ZHAuaCAgICAgICAgICAg
ICAgICAgICB8ICAxICsKPiAgIGluY2x1ZGUvdWFwaS9saW51eC94ZHBfZGlhZy5oICAgICAgICAg
ICAgICAgICB8ICAxICsKPiAgIG5ldC94ZHAveGRwX3VtZW0uYyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICA5ICsrLS0KPiAgIG5ldC94ZHAveHNrLmMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8IDQzICsrKysrKysrKysrKysrKystLS0KPiAgIG5ldC94ZHAveHNrX2RpYWcu
YyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1ICsrLQo+ICAgc2FtcGxlcy9icGYveGRw
c29ja191c2VyLmMgICAgICAgICAgICAgICAgICAgIHwgIDggKysrKwo+ICAgMTEgZmlsZXMgY2hh
bmdlZCwgMTM1IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQo+IApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
