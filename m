Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89048CF48C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 10:06:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22C47848BE;
	Tue,  8 Oct 2019 08:06:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0zE3wHwW6d4F; Tue,  8 Oct 2019 08:06:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D48F8480D;
	Tue,  8 Oct 2019 08:06:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8FCB91BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:06:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B0C3204FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XiVkJWpbUgbm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 08:06:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id ABF49203FC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 08:06:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 01:06:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="199747158"
Received: from iannetti-mobl1.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.56.81])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Oct 2019 01:05:58 -0700
To: Sridhar Samudrala <sridhar.samudrala@intel.com>,
 magnus.karlsson@intel.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 tom.herbert@intel.com
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <1570515415-45593-5-git-send-email-sridhar.samudrala@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <645534a7-9606-88e0-a4f9-05ad04c7fb4e@intel.com>
Date: Tue, 8 Oct 2019 10:05:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1570515415-45593-5-git-send-email-sridhar.samudrala@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 4/4] xdpsock: add an option
 to create AF_XDP sockets in XDP_DIRECT mode
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

T24gMjAxOS0xMC0wOCAwODoxNiwgU3JpZGhhciBTYW11ZHJhbGEgd3JvdGU6Cj4gVGhpcyBvcHRp
b24gZW5hYmxlcyBhbiBBRl9YRFAgc29ja2V0IHRvIGJpbmQgd2l0aCBhIFhEUF9ESVJFQ1QgZmxh
Zwo+IHRoYXQgYWxsb3dzIHBhY2tldHMgcmVjZWl2ZWQgb24gdGhlIGFzc29jaWF0ZWQgcXVldWUg
dG8gYmUgcmVjZWl2ZWQKPiBkaXJlY3RseSB3aGVuIGFuIFhEUCBwcm9ncmFtIGlzIG5vdCBhdHRh
Y2hlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTcmlkaGFyIFNhbXVkcmFsYSA8c3JpZGhhci5zYW11
ZHJhbGFAaW50ZWwuY29tPgoKQWNrZWQtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGlu
dGVsLmNvbT4KCj4gLS0tCj4gICBzYW1wbGVzL2JwZi94ZHBzb2NrX3VzZXIuYyB8IDE3ICsrKysr
KysrKysrKystLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc2FtcGxlcy9icGYveGRwc29ja191c2VyLmMgYi9z
YW1wbGVzL2JwZi94ZHBzb2NrX3VzZXIuYwo+IGluZGV4IDQwNWM0ZTA5MWY4Yi4uNmY0NjMzNzY5
OTY4IDEwMDY0NAo+IC0tLSBhL3NhbXBsZXMvYnBmL3hkcHNvY2tfdXNlci5jCj4gKysrIGIvc2Ft
cGxlcy9icGYveGRwc29ja191c2VyLmMKPiBAQCAtMTI5LDYgKzEyOSw5IEBAIHN0YXRpYyB2b2lk
IHByaW50X2JlbmNobWFyayhib29sIHJ1bm5pbmcpCj4gICAJaWYgKG9wdF9wb2xsKQo+ICAgCQlw
cmludGYoInBvbGwoKSAiKTsKPiAgIAo+ICsJaWYgKG9wdF94ZHBfYmluZF9mbGFncyAmIFhEUF9E
SVJFQ1QpCj4gKwkJcHJpbnRmKCJkaXJlY3QteHNrICIpOwo+ICsKPiAgIAlpZiAocnVubmluZykg
ewo+ICAgCQlwcmludGYoInJ1bm5pbmcuLi4iKTsKPiAgIAkJZmZsdXNoKHN0ZG91dCk7Cj4gQEAg
LTIwMiw3ICsyMDUsOCBAQCBzdGF0aWMgdm9pZCBpbnRfZXhpdChpbnQgc2lnKQo+ICAgCWR1bXBf
c3RhdHMoKTsKPiAgIAl4c2tfc29ja2V0X19kZWxldGUoeHNrc1swXS0+eHNrKTsKPiAgIAkodm9p
ZCl4c2tfdW1lbV9fZGVsZXRlKHVtZW0pOwo+IC0JcmVtb3ZlX3hkcF9wcm9ncmFtKCk7Cj4gKwlp
ZiAoIShvcHRfeGRwX2JpbmRfZmxhZ3MgJiBYRFBfRElSRUNUKSkKPiArCQlyZW1vdmVfeGRwX3By
b2dyYW0oKTsKPiAgIAo+ICAgCWV4aXQoRVhJVF9TVUNDRVNTKTsKPiAgIH0KPiBAQCAtMjEzLDcg
KzIxNyw4IEBAIHN0YXRpYyB2b2lkIF9fZXhpdF93aXRoX2Vycm9yKGludCBlcnJvciwgY29uc3Qg
Y2hhciAqZmlsZSwgY29uc3QgY2hhciAqZnVuYywKPiAgIAlmcHJpbnRmKHN0ZGVyciwgIiVzOiVz
OiVpOiBlcnJubzogJWQvXCIlc1wiXG4iLCBmaWxlLCBmdW5jLAo+ICAgCQlsaW5lLCBlcnJvciwg
c3RyZXJyb3IoZXJyb3IpKTsKPiAgIAlkdW1wX3N0YXRzKCk7Cj4gLQlyZW1vdmVfeGRwX3Byb2dy
YW0oKTsKPiArCWlmICghKG9wdF94ZHBfYmluZF9mbGFncyAmIFhEUF9ESVJFQ1QpKQo+ICsJCXJl
bW92ZV94ZHBfcHJvZ3JhbSgpOwo+ICAgCWV4aXQoRVhJVF9GQUlMVVJFKTsKPiAgIH0KPiAgIAo+
IEBAIC0zNjMsNiArMzY4LDcgQEAgc3RhdGljIHN0cnVjdCBvcHRpb24gbG9uZ19vcHRpb25zW10g
PSB7Cj4gICAJeyJmcmFtZS1zaXplIiwgcmVxdWlyZWRfYXJndW1lbnQsIDAsICdmJ30sCj4gICAJ
eyJuby1uZWVkLXdha2V1cCIsIG5vX2FyZ3VtZW50LCAwLCAnbSd9LAo+ICAgCXsidW5hbGlnbmVk
Iiwgbm9fYXJndW1lbnQsIDAsICd1J30sCj4gKwl7ImRpcmVjdC14c2siLCBub19hcmd1bWVudCwg
MCwgJ2QnfSwKPiAgIAl7MCwgMCwgMCwgMH0KPiAgIH07Cj4gICAKPiBAQCAtMzg2LDYgKzM5Miw3
IEBAIHN0YXRpYyB2b2lkIHVzYWdlKGNvbnN0IGNoYXIgKnByb2cpCj4gICAJCSIgIC1tLCAtLW5v
LW5lZWQtd2FrZXVwIFR1cm4gb2ZmIHVzZSBvZiBkcml2ZXIgbmVlZCB3YWtldXAgZmxhZy5cbiIK
PiAgIAkJIiAgLWYsIC0tZnJhbWUtc2l6ZT1uICAgU2V0IHRoZSBmcmFtZSBzaXplIChtdXN0IGJl
IGEgcG93ZXIgb2YgdHdvIGluIGFsaWduZWQgbW9kZSwgZGVmYXVsdCBpcyAlZCkuXG4iCj4gICAJ
CSIgIC11LCAtLXVuYWxpZ25lZAlFbmFibGUgdW5hbGlnbmVkIGNodW5rIHBsYWNlbWVudFxuIgo+
ICsJCSIgIC1kLCAtLWRpcmVjdC14c2sJRGlyZWN0IHBhY2tldHMgdG8gWERQIHNvY2tldC5cbiIK
PiAgIAkJIlxuIjsKPiAgIAlmcHJpbnRmKHN0ZGVyciwgc3RyLCBwcm9nLCBYU0tfVU1FTV9fREVG
QVVMVF9GUkFNRV9TSVpFKTsKPiAgIAlleGl0KEVYSVRfRkFJTFVSRSk7Cj4gQEAgLTM5OCw3ICs0
MDUsNyBAQCBzdGF0aWMgdm9pZCBwYXJzZV9jb21tYW5kX2xpbmUoaW50IGFyZ2MsIGNoYXIgKiph
cmd2KQo+ICAgCW9wdGVyciA9IDA7Cj4gICAKPiAgIAlmb3IgKDs7KSB7Cj4gLQkJYyA9IGdldG9w
dF9sb25nKGFyZ2MsIGFyZ3YsICJGcnRsaTpxOnBzU05uOmN6ZjptdSIsCj4gKwkJYyA9IGdldG9w
dF9sb25nKGFyZ2MsIGFyZ3YsICJGcnRsaTpxOnBzU05uOmN6ZjptdWQiLAo+ICAgCQkJCWxvbmdf
b3B0aW9ucywgJm9wdGlvbl9pbmRleCk7Cj4gICAJCWlmIChjID09IC0xKQo+ICAgCQkJYnJlYWs7
Cj4gQEAgLTQ1Miw3ICs0NTksOSBAQCBzdGF0aWMgdm9pZCBwYXJzZV9jb21tYW5kX2xpbmUoaW50
IGFyZ2MsIGNoYXIgKiphcmd2KQo+ICAgCQkJb3B0X25lZWRfd2FrZXVwID0gZmFsc2U7Cj4gICAJ
CQlvcHRfeGRwX2JpbmRfZmxhZ3MgJj0gflhEUF9VU0VfTkVFRF9XQUtFVVA7Cj4gICAJCQlicmVh
azsKPiAtCj4gKwkJY2FzZSAnZCc6Cj4gKwkJCW9wdF94ZHBfYmluZF9mbGFncyB8PSBYRFBfRElS
RUNUOwo+ICsJCQlicmVhazsKPiAgIAkJZGVmYXVsdDoKPiAgIAkJCXVzYWdlKGJhc2VuYW1lKGFy
Z3ZbMF0pKTsKPiAgIAkJfQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
