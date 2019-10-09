Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D1CD13DA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2019 18:19:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88C138841F;
	Wed,  9 Oct 2019 16:19:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eb5lg4kBGxJy; Wed,  9 Oct 2019 16:19:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E20488412;
	Wed,  9 Oct 2019 16:19:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D686A1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 16:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA28F84A75
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 16:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6F0CIkw8M5k5 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 16:19:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E639D848F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 16:19:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 09:19:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="198054835"
Received: from unknown (HELO [10.241.228.165]) ([10.241.228.165])
 by orsmga006.jf.intel.com with ESMTP; 09 Oct 2019 09:19:05 -0700
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 tom.herbert@intel.com
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <4c316f09-0691-4a1b-f798-73299e978946@intel.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <411a0287-13fb-672b-740b-10a199e34836@intel.com>
Date: Wed, 9 Oct 2019 09:19:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4c316f09-0691-4a1b-f798-73299e978946@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/4] Enable direct receive on
 AF_XDP sockets
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvOC8yMDE5IDE6MDUgQU0sIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4gT24gMjAxOS0xMC0w
OCAwODoxNiwgU3JpZGhhciBTYW11ZHJhbGEgd3JvdGU6Cj4+IFRoaXMgaXMgYSByZXdvcmsgb2Yg
dGhlIGZvbGxvd2luZyBwYXRjaCBzZXJpZXMKPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0
ZGV2LzE1NjU4NDA3ODMtODI2OS0xLWdpdC1zZW5kLWVtYWlsLXNyaWRoYXIuc2FtdWRyYWxhQGlu
dGVsLmNvbS8jciAKPj4KPj4gdGhhdCB0cmllZCB0byBlbmFibGUgZGlyZWN0IHJlY2VpdmUgYnkg
YnlwYXNzaW5nIFhEUCBwcm9ncmFtIGF0dGFjaGVkCj4+IHRvIHRoZSBkZXZpY2UuCj4+Cj4+IEJh
c2VkIG9uIHRoZSBjb21tdW5pdHkgZmVlZGJhY2sgYW5kIHNvbWUgc3VnZ2VzdGlvbnMgZnJvbSBC
am9ybiwgY2hhbmdlZAo+PiB0aGUgc2VtYW50aWNzIG9mIHRoZSBpbXBsZW1lbnRhdGlvbiB0byBl
bmFibGUgZGlyZWN0IHJlY2VpdmUgb24gQUZfWERQCj4+IHNvY2tldHMgdGhhdCBhcmUgYm91bmQg
dG8gYSBxdWV1ZSBvbmx5IHdoZW4gdGhlcmUgaXMgbm8gbm9ybWFsIFhEUCAKPj4gcHJvZ3JhbQo+
PiBhdHRhY2hlZCB0byB0aGUgZGV2aWNlLgo+Pgo+PiBUaGlzIGlzIGFjY29tcGxpc2hlZCBieSBp
bnRyb2R1Y2luZyBhIHNwZWNpYWwgQlBGIHByb2cgcG9pbnRlciAKPj4gKERJUkVDVF9YU0spCj4+
IHRoYXQgaXMgYXR0YWNoZWQgYXQgdGhlIHRpbWUgb2YgYmluZGluZyBhbiBBRl9YRFAgc29ja2V0
IHRvIGEgcXVldWUgb2YgYQo+PiBkZXZpY2UuIFRoaXMgaXMgZG9uZSBvbmx5IGlmIHRoZXJlIGlz
IG5vIG90aGVyIFhEUCBwcm9ncmFtIGF0dGFjaGVkIHRvCj4+IHRoZSBkZXZpY2UuIFRoZSBub3Jt
YWwgWERQIHByb2dyYW0gaGFzIHByZWNlZGVuY2UgYW5kIHdpbGwgcmVwbGFjZSB0aGUKPj4gRElS
RUNUX1hTSyBwcm9nIGlmIGl0IGlzIGF0dGFjaGVkIGxhdGVyLiBUaGUgbWFpbiByZWFzb24gdG8g
aW50cm9kdWNlIGEKPj4gc3BlY2lhbCBCUEYgcHJvZyBwb2ludGVyIGlzIHRvIG1pbmltaXplIHRo
ZSBkcml2ZXIgY2hhbmdlcy4gVGhlIG9ubHkgCj4+IGNoYW5nZQo+PiBpcyB0byB1c2UgdGhlIGJw
Zl9nZXRfcHJvZ19pZCgpIGhlbHBlciB3aGVuIFFVRVJZSU5HIHRoZSBwcm9nIGlkLgo+Pgo+PiBB
bnkgYXR0YWNoIG9mIGEgbm9ybWFsIFhEUCBwcm9ncmFtIHdpbGwgdGFrZSBwcmVjZWRlbmNlIGFu
ZCB0aGUgZGlyZWN0IAo+PiB4c2sKPj4gcHJvZ3JhbSB3aWxsIGJlIHJlbW92ZWQuIFRoZSBkaXJl
Y3QgWFNLIHByb2dyYW0gd2lsbCBiZSBhdHRhY2hlZAo+PiBhdXRvbWF0aWNhbGx5IHdoZW4gdGhl
IG5vcm1hbCBYRFAgcHJvZ3JhbSBpcyByZW1vdmVkIHdoZW4gdGhlcmUgYXJlIGFueQo+PiBBRl9Y
RFAgZGlyZWN0IHNvY2tldHMgYXNzb2NpYXRlZCB3aXRoIHRoYXQgZGV2aWNlLgo+Pgo+PiBBIHN0
YXRpYyBrZXkgaXMgdXNlZCB0byBjb250cm9sIHRoaXMgZmVhdHVyZSBpbiBvcmRlciB0byBhdm9p
ZCBhbnkgCj4+IG92ZXJoZWFkCj4+IGZvciBub3JtYWwgWERQIGRhdGFwYXRoIHdoZW4gdGhlcmUg
YXJlIG5vIEFGX1hEUCBzb2NrZXRzIGluIGRpcmVjdC14c2sgCj4+IG1vZGUuCj4+Cj4+IEhlcmUg
aXMgc29tZSBwZXJmb3JtYW5jZSBkYXRhIGkgY29sbGVjdGVkIG9uIG15IEludGVsIEl2eWJyaWRn
ZSBiYXNlZAo+PiBkZXZlbG9wbWVudCBzeXN0ZW0gKEludGVsKFIpIFhlb24oUikgQ1BVIEU1LTI2
OTcgdjIgQCAyLjcwR0h6KQo+PiBOSUM6IEludGVsIDQwR2IgZXRoZXJuZXQgKGk0MGUpCj4+Cj4+
IHhkcHNvY2sgcnhkcm9wIDEgY29yZSAoYm90aCBhcHAgYW5kIHF1ZXVlJ3MgaXJxIHBpbm5lZCB0
byB0aGUgc2FtZSBjb3JlKQo+PiDCoMKgwqAgZGVmYXVsdCA6IHRhc2tzZXQgLWMgMSAuL3hkcHNv
Y2sgLWkgZW5wNjZzMGYwIC1yIC1xIDEKPj4gwqDCoMKgIGRpcmVjdC14c2sgOnRhc2tzZXQgLWMg
MSAuL3hkcHNvY2sgLWkgZW5wNjZzMGYwIC1yIC1xIDEKPj4gNi4xeCBpbXByb3ZlbWVudCBpbiBk
cm9wIHJhdGUKPj4KPj4geGRwc29jayByeGRyb3AgMiBjb3JlIChhcHAgYW5kIHF1ZXVlJ3MgaXJx
IHBpbm5lZCB0byBkaWZmZXJlbnQgY29yZXMpCj4+IMKgwqDCoCBkZWZhdWx0IDogdGFza3NldCAt
YyAzIC4veGRwc29jayAtaSBlbnA2NnMwZjAgLXIgLXEgMQo+PiDCoMKgwqAgZGlyZWN0LXhzayA6
dGFza3NldCAtYyAzIC4veGRwc29jayAtaSBlbnA2NnMwZjAgLXIgLWQgLXEgMQo+PiA2eCBpbXBy
b3ZlbWVudCBpbiBkcm9wIHJhdGUKPj4KPj4geGRwc29jayBsMmZ3ZCAxIGNvcmUgKGJvdGggYXBw
IGFuZCBxdWV1ZSdzIGlycSBwaW5uZWQgdG8gdGhlIHNhbWUgY29yZSkKPj4gwqDCoMKgIGRlZmF1
bHQgOiB0YXNrc2V0IC1jIDEgLi94ZHBzb2NrIC1pIGVucDY2czBmMCAtbCAtcSAxCj4+IMKgwqDC
oCBkaXJlY3QteHNrIDp0YXNrc2V0IC1jIDEgLi94ZHBzb2NrIC1pIGVucDY2czBmMCAtbCAtZCAt
cSAxCj4+IDMuNXggaW1wcm92ZW1lbnQgaW4gbDJmd2QgcmF0ZQo+Pgo+PiB4ZHBzb2NrIHJ4ZHJv
cCAyIGNvcmUgKGFwcCBhbmQgcXVldWUnc2lycSBwaW5uZWQgdG8gZGlmZmVyZW50IGNvcmVzKQo+
PiDCoMKgwqAgZGVmYXVsdCA6IHRhc2tzZXQgLWMgMyAuL3hkcHNvY2sgLWkgZW5wNjZzMGYwIC1s
IC1xIDEKPj4gwqDCoMKgIGRpcmVjdC14c2sgOnRhc2tzZXQgLWMgMyAuL3hkcHNvY2sgLWkgZW5w
NjZzMGYwIC1sIC1kIC1xIDEKPj4gNC41eCBpbXByb3ZlbWVudCBpbiBsMmZ3ZCByYXRlCj4+Cj4+
IGRwZGstcGt0Z2VuIGlzIHVzZWQgdG8gc2VuZCA2NGJ5dGUgVURQIHBhY2tldHMgZnJvbSBhIGxp
bmsgcGFydG5lciBhbmQKPj4gZXRodG9vbCBudHVwbGUgZmxvdyBydWxlIGlzIHVzZWQgdG8gcmVk
aXJlY3QgcGFja2V0cyB0byBxdWV1ZSAxIG9uIHRoZQo+PiBzeXN0ZW0gdW5kZXIgdGVzdC4KPj4K
PiAKPiBUaGFua3MgZm9yIHdvcmtpbmcgb24gdGhpcyBTcmlkaGFyISBJIGxpa2UgdGhpcyBhcHBy
b2FjaCEgRXhjZXB0IGZyb20KPiB0aGUgYnBmX2dldF9wcm9nX2lkKCkgY2hhbmdlcywgbm8gZHJp
dmVyIGNoYW5nZXMgYXJlIG5lZWRlZC4KPiAKPiBJdCdzIGFsc28gYSBjbGVhbmVyIChJTU8pIGFw
cHJvYWNoIHRoYW4gbXkgcHJldmlvdXMgYXR0ZW1wdHMgWzEsMiwzXQo+IAo+IFdvdWxkIGJlIGlu
dGVyZXN0aW5nIHRvIHNlZSBORlAgc3VwcG9ydCBBRl9YRFAgb2ZmbG9hZGluZyB3aXRoIHRoaXMK
PiBvcHRpb24uIChudWRnZSwgbnVkZ2UpLgo+IAo+IEEgdGhvdWdodDogRnJvbSB1c2VybGFuZCwg
YSBkaXJlY3QgQUZfWERQIHNvY2tldCB3aWxsIG5vdCBhcHBlYXIgYXMgYW4KPiBYRFAgcHJvZ3Jh
bSBpcyBhdHRhY2hlZCB0byB0aGUgZGV2aWNlIChpZCA9PSAwKS4gTWF5YmUgc2hvdyBpbiBzcyg4
KQo+ICh2aWEgeHNrX2RpYWcuYykgdGhhdCB0aGUgc29ja2V0IGlzIGRpcmVjdD8KClN1cmUuIHdp
bGwgYWRkIHRoaXMgaW4gdGhlIG5leHQgcmV2aXNpb24uCgo+IAo+IFsxXSAKPiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9uZXRkZXYvQ0FKK0hmTmo2M1FjTFk4PXkxZkY5M1BaZDNYY2ZpR1NyYmJX
ZGlHQnlqVHpaUXlkU1NnQG1haWwuZ21haWwuY29tLyAKPiAKPiBbMl0gCj4gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbmV0ZGV2L2NkOTUyZjk5LTZiYWQtZTBjOC01YmNkLWYwMDEwMjE4MjM4Y0Bp
bnRlbC5jb20vIAo+IAo+IFszXSAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAx
ODEyMDcxMTQ0MzEuMTgwMzgtMS1iam9ybi50b3BlbEBnbWFpbC5jb20vIAo+IApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
