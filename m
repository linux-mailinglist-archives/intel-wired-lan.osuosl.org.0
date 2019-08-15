Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8118F07A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 18:26:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6CA87203DB;
	Thu, 15 Aug 2019 16:26:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CIYDUOBMSlr5; Thu, 15 Aug 2019 16:26:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B7F79204B4;
	Thu, 15 Aug 2019 16:26:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49C6F1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 16:25:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3F9C3876FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 16:25:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QhgjKTRftlEn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2019 16:25:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 586ED876E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 16:25:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 09:25:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="260862741"
Received: from unknown (HELO [10.241.228.234]) ([10.241.228.234])
 by orsmga001.jf.intel.com with ESMTP; 15 Aug 2019 09:25:57 -0700
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 magnus.karlsson@intel.com, bjorn.topel@intel.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 maciej.fijalkowski@intel.com, tom.herbert@intel.com
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
 <87ftm2adi2.fsf@toke.dk>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <b9423054-247e-8b57-ea59-42368f60ea1e@intel.com>
Date: Thu, 15 Aug 2019 09:25:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87ftm2adi2.fsf@toke.dk>
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

Ck9uIDgvMTUvMjAxOSA0OjEyIEFNLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4g
U3JpZGhhciBTYW11ZHJhbGEgPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT4gd3JpdGVzOgo+
IAo+PiBUaGlzIHBhdGNoIHNlcmllcyBpbnRyb2R1Y2VzIFhEUF9TS0lQX0JQRiBmbGFnIHRoYXQg
Y2FuIGJlIHNwZWNpZmllZAo+PiBkdXJpbmcgdGhlIGJpbmQoKSBjYWxsIG9mIGFuIEFGX1hEUCBz
b2NrZXQgdG8gc2tpcCBjYWxsaW5nIHRoZSBCUEYKPj4gcHJvZ3JhbSBpbiB0aGUgcmVjZWl2ZSBw
YXRoIGFuZCBwYXNzIHRoZSBidWZmZXIgZGlyZWN0bHkgdG8gdGhlIHNvY2tldC4KPj4KPj4gV2hl
biBhIHNpbmdsZSBBRl9YRFAgc29ja2V0IGlzIGFzc29jaWF0ZWQgd2l0aCBhIHF1ZXVlIGFuZCBh
IEhXCj4+IGZpbHRlciBpcyB1c2VkIHRvIHJlZGlyZWN0IHRoZSBwYWNrZXRzIGFuZCB0aGUgYXBw
IGlzIGludGVyZXN0ZWQgaW4KPj4gcmVjZWl2aW5nIGFsbCB0aGUgcGFja2V0cyBvbiB0aGF0IHF1
ZXVlLCB3ZSBkb24ndCBuZWVkIGFuIGFkZGl0aW9uYWwKPj4gQlBGIHByb2dyYW0gdG8gZG8gZnVy
dGhlciBmaWx0ZXJpbmcgb3IgbG9va3VwL3JlZGlyZWN0IHRvIGEgc29ja2V0Lgo+Pgo+PiBIZXJl
IGFyZSBzb21lIHBlcmZvcm1hbmNlIG51bWJlcnMgY29sbGVjdGVkIG9uCj4+ICAgIC0gMiBzb2Nr
ZXQgMjggY29yZSBJbnRlbChSKSBYZW9uKFIpIFBsYXRpbnVtIDgxODAgQ1BVIEAgMi41MEdIego+
PiAgICAtIEludGVsIDQwR2IgRXRoZXJuZXQgTklDIChpNDBlKQo+Pgo+PiBBbGwgdGVzdHMgdXNl
IDIgY29yZXMgYW5kIHRoZSByZXN1bHRzIGFyZSBpbiBNcHBzLgo+Pgo+PiB0dXJibyBvbiAoZGVm
YXVsdCkKPj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCQo+
PiAgICAgICAgICAgICAgICAgICAgICAgIG5vLXNraXAtYnBmICAgIHNraXAtYnBmCj4+IC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQkKPj4gcnhkcm9wIHplcm9j
b3B5ICAgICAgICAgICAyMS45ICAgICAgICAgMzguNQo+PiBsMmZ3ZCAgemVyb2NvcHkgICAgICAg
ICAgIDE3LjAgICAgICAgICAyMC41Cj4+IHJ4ZHJvcCBjb3B5ICAgICAgICAgICAgICAgMTEuMSAg
ICAgICAgIDEzLjMKPj4gbDJmd2QgIGNvcHkgICAgICAgICAgICAgICAgMS45ICAgICAgICAgIDIu
MAo+Pgo+PiBubyB0dXJibyA6ICBlY2hvIDEgPiAvc3lzL2RldmljZXMvc3lzdGVtL2NwdS9pbnRl
bF9wc3RhdGUvbm9fdHVyYm8KPj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCQo+PiAgICAgICAgICAgICAgICAgICAgICAgIG5vLXNraXAtYnBmICAgIHNraXAt
YnBmCj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQkKPj4g
cnhkcm9wIHplcm9jb3B5ICAgICAgICAgICAxNS40ICAgICAgICAgMjkuMAo+PiBsMmZ3ZCAgemVy
b2NvcHkgICAgICAgICAgIDExLjggICAgICAgICAxOC4yCj4+IHJ4ZHJvcCBjb3B5ICAgICAgICAg
ICAgICAgIDguMiAgICAgICAgIDEwLjUKPj4gbDJmd2QgIGNvcHkgICAgICAgICAgICAgICAgMS43
ICAgICAgICAgIDEuNwo+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiAKPiBZb3UncmUgZ2V0dGluZyB0aGlzIHBlcmZvcm1hbmNlIGJvb3N0IGJ5IGFkZGlu
ZyBtb3JlIGNvZGUgaW4gdGhlIGZhc3QKPiBwYXRoIGZvciBldmVyeSBYRFAgcHJvZ3JhbTsgc28g
d2hhdCdzIHRoZSBwZXJmb3JtYW5jZSBpbXBhY3Qgb2YgdGhhdCBmb3IKPiBjYXNlcyB3aGVyZSB3
ZSBkbyBydW4gYW4gZUJQRiBwcm9ncmFtPwoKVGhlIG5vLXNraXAtYnBmIHJlc3VsdHMgYXJlIHBy
ZXR0eSBjbG9zZSB0byB3aGF0IGkgc2VlIGJlZm9yZSB0aGUgCnBhdGNoZXMgYXJlIGFwcGxpZWQu
IEFzIHVtZW0gaXMgY2FjaGVkIGluIHJ4X3JpbmcgZm9yIHplcm9jb3B5IHRoZSAKb3ZlcmhlYWQg
aXMgbXVjaCBzbWFsbGVyIGNvbXBhcmVkIHRvIHRoZSBjb3B5IHNjZW5hcmlvIHdoZXJlIGkgYW0g
CmN1cnJlbnRseSBjYWxsaW5nIHhkcF9nZXRfdW1lbV9mcm9tX3FpZCgpLgoKPiAKPiBBbHNvLCB0
aGlzIGlzIGJhc2ljYWxseSBhIHNwZWNpYWwtY2FzaW5nIG9mIGEgcGFydGljdWxhciBkZXBsb3lt
ZW50Cj4gc2NlbmFyaW8uIFdpdGhvdXQgYSB3YXkgdG8gY29udHJvbCBSWCBxdWV1ZSBhc3NpZ25t
ZW50IGFuZCB0cmFmZmljCj4gc3RlZXJpbmcsIHlvdSdyZSBiYXNpY2FsbHkgaGFyZC1jb2Rpbmcg
YSBwYXJ0aWN1bGFyIGFwcCdzIHRha2VvdmVyIG9mCj4gdGhlIG5ldHdvcmsgaW50ZXJmYWNlOyBJ
J20gbm90IHN1cmUgdGhhdCBpcyBzdWNoIGEgZ29vZCBpZGVhLi4uCgpZZXMuIFRoaXMgaXMgbWFp
bmx5IHRhcmdldGVkIGZvciBhcHBsaWNhdGlvbiB0aGF0IGNyZWF0ZSAxIEFGX1hEUCBzb2NrZXQg
CnBlciBSWCBxdWV1ZSBhbmQgY2FuIHVzZSBhIEhXIGZpbHRlciAodmlhIGV0aHRvb2wgb3IgVEMg
Zmxvd2VyKSB0byAKcmVkaXJlY3QgdGhlIHBhY2tldHMgdG8gYSBxdWV1ZSBvciBhIGdyb3VwIG9m
IHF1ZXVlcy4KCj4gCj4gLVRva2UKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
