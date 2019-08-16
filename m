Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 274FC8FAA6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2019 08:12:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F89D869EA;
	Fri, 16 Aug 2019 06:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EhO8MYjcUKw6; Fri, 16 Aug 2019 06:12:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0520B862C1;
	Fri, 16 Aug 2019 06:12:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 440EF1BF842
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 06:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C1FA84442
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 06:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ok36w3eK4TyY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2019 06:12:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB808878FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2019 06:12:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 23:12:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="182093084"
Received: from samudral-mobl1.amr.corp.intel.com (HELO [10.251.21.3])
 ([10.251.21.3])
 by orsmga006.jf.intel.com with ESMTP; 15 Aug 2019 23:12:36 -0700
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 magnus.karlsson@intel.com, bjorn.topel@intel.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 maciej.fijalkowski@intel.com, tom.herbert@intel.com
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
 <87ftm2adi2.fsf@toke.dk> <b9423054-247e-8b57-ea59-42368f60ea1e@intel.com>
 <87ftm2wdzk.fsf@toke.dk>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <3b85138e-97a7-e59c-194d-54301b482689@intel.com>
Date: Thu, 15 Aug 2019 23:12:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87ftm2wdzk.fsf@toke.dk>
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

CgpPbiA4LzE1LzIwMTkgMTA6MTEgQU0sIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToK
PiAiU2FtdWRyYWxhLCBTcmlkaGFyIiA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPiB3cml0
ZXM6Cj4gCj4+IE9uIDgvMTUvMjAxOSA0OjEyIEFNLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
d3JvdGU6Cj4+PiBTcmlkaGFyIFNhbXVkcmFsYSA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29t
PiB3cml0ZXM6Cj4+Pgo+Pj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGludHJvZHVjZXMgWERQX1NLSVBf
QlBGIGZsYWcgdGhhdCBjYW4gYmUgc3BlY2lmaWVkCj4+Pj4gZHVyaW5nIHRoZSBiaW5kKCkgY2Fs
bCBvZiBhbiBBRl9YRFAgc29ja2V0IHRvIHNraXAgY2FsbGluZyB0aGUgQlBGCj4+Pj4gcHJvZ3Jh
bSBpbiB0aGUgcmVjZWl2ZSBwYXRoIGFuZCBwYXNzIHRoZSBidWZmZXIgZGlyZWN0bHkgdG8gdGhl
IHNvY2tldC4KPj4+Pgo+Pj4+IFdoZW4gYSBzaW5nbGUgQUZfWERQIHNvY2tldCBpcyBhc3NvY2lh
dGVkIHdpdGggYSBxdWV1ZSBhbmQgYSBIVwo+Pj4+IGZpbHRlciBpcyB1c2VkIHRvIHJlZGlyZWN0
IHRoZSBwYWNrZXRzIGFuZCB0aGUgYXBwIGlzIGludGVyZXN0ZWQgaW4KPj4+PiByZWNlaXZpbmcg
YWxsIHRoZSBwYWNrZXRzIG9uIHRoYXQgcXVldWUsIHdlIGRvbid0IG5lZWQgYW4gYWRkaXRpb25h
bAo+Pj4+IEJQRiBwcm9ncmFtIHRvIGRvIGZ1cnRoZXIgZmlsdGVyaW5nIG9yIGxvb2t1cC9yZWRp
cmVjdCB0byBhIHNvY2tldC4KPj4+Pgo+Pj4+IEhlcmUgYXJlIHNvbWUgcGVyZm9ybWFuY2UgbnVt
YmVycyBjb2xsZWN0ZWQgb24KPj4+PiAgICAgLSAyIHNvY2tldCAyOCBjb3JlIEludGVsKFIpIFhl
b24oUikgUGxhdGludW0gODE4MCBDUFUgQCAyLjUwR0h6Cj4+Pj4gICAgIC0gSW50ZWwgNDBHYiBF
dGhlcm5ldCBOSUMgKGk0MGUpCj4+Pj4KPj4+PiBBbGwgdGVzdHMgdXNlIDIgY29yZXMgYW5kIHRo
ZSByZXN1bHRzIGFyZSBpbiBNcHBzLgo+Pj4+Cj4+Pj4gdHVyYm8gb24gKGRlZmF1bHQpCj4+Pj4g
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCQo+Pj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgIG5vLXNraXAtYnBmICAgIHNraXAtYnBmCj4+Pj4gLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCQo+Pj4+IHJ4ZHJvcCB6ZXJvY29w
eSAgICAgICAgICAgMjEuOSAgICAgICAgIDM4LjUKPj4+PiBsMmZ3ZCAgemVyb2NvcHkgICAgICAg
ICAgIDE3LjAgICAgICAgICAyMC41Cj4+Pj4gcnhkcm9wIGNvcHkgICAgICAgICAgICAgICAxMS4x
ICAgICAgICAgMTMuMwo+Pj4+IGwyZndkICBjb3B5ICAgICAgICAgICAgICAgIDEuOSAgICAgICAg
ICAyLjAKPj4+Pgo+Pj4+IG5vIHR1cmJvIDogIGVjaG8gMSA+IC9zeXMvZGV2aWNlcy9zeXN0ZW0v
Y3B1L2ludGVsX3BzdGF0ZS9ub190dXJibwo+Pj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQkKPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICBuby1za2lw
LWJwZiAgICBza2lwLWJwZgo+Pj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQkKPj4+PiByeGRyb3AgemVyb2NvcHkgICAgICAgICAgIDE1LjQgICAgICAgICAy
OS4wCj4+Pj4gbDJmd2QgIHplcm9jb3B5ICAgICAgICAgICAxMS44ICAgICAgICAgMTguMgo+Pj4+
IHJ4ZHJvcCBjb3B5ICAgICAgICAgICAgICAgIDguMiAgICAgICAgIDEwLjUKPj4+PiBsMmZ3ZCAg
Y29weSAgICAgICAgICAgICAgICAxLjcgICAgICAgICAgMS43Cj4+Pj4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+Pgo+Pj4gWW91J3JlIGdldHRpbmcgdGhp
cyBwZXJmb3JtYW5jZSBib29zdCBieSBhZGRpbmcgbW9yZSBjb2RlIGluIHRoZSBmYXN0Cj4+PiBw
YXRoIGZvciBldmVyeSBYRFAgcHJvZ3JhbTsgc28gd2hhdCdzIHRoZSBwZXJmb3JtYW5jZSBpbXBh
Y3Qgb2YgdGhhdCBmb3IKPj4+IGNhc2VzIHdoZXJlIHdlIGRvIHJ1biBhbiBlQlBGIHByb2dyYW0/
Cj4+Cj4+IFRoZSBuby1za2lwLWJwZiByZXN1bHRzIGFyZSBwcmV0dHkgY2xvc2UgdG8gd2hhdCBp
IHNlZSBiZWZvcmUgdGhlCj4+IHBhdGNoZXMgYXJlIGFwcGxpZWQuIEFzIHVtZW0gaXMgY2FjaGVk
IGluIHJ4X3JpbmcgZm9yIHplcm9jb3B5IHRoZQo+PiBvdmVyaGVhZCBpcyBtdWNoIHNtYWxsZXIg
Y29tcGFyZWQgdG8gdGhlIGNvcHkgc2NlbmFyaW8gd2hlcmUgaSBhbQo+PiBjdXJyZW50bHkgY2Fs
bGluZyB4ZHBfZ2V0X3VtZW1fZnJvbV9xaWQoKS4KPiAKPiBJIG1lYW50IG1vcmUgZm9yIG90aGVy
IFhEUCBwcm9ncmFtczsgd2hhdCBpcyB0aGUgcGVyZm9ybWFuY2UgaW1wYWN0IG9mCj4gWERQX0RS
T1AsIGZvciBpbnN0YW5jZT8KCldpbGwgcnVuIHhkcDEgd2l0aCBhbmQgd2l0aG91dCB0aGUgcGF0
Y2hlcyBhbmQgaW5jbHVkZSB0aGF0IGRhdGEgd2l0aCAKdGhlIG5leHQgcmV2aXNpb24uCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
