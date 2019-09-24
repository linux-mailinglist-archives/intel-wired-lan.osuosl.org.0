Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21240BC5A5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2019 12:25:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B672722053;
	Tue, 24 Sep 2019 10:25:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2XST9BXkiCRo; Tue, 24 Sep 2019 10:25:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9226A203D5;
	Tue, 24 Sep 2019 10:25:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F7E11BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2019 10:25:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8069B87829
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2019 10:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id THRj8Bn6umEs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2019 10:25:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C4A1287634
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2019 10:25:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 03:25:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="193407124"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga006.jf.intel.com with ESMTP; 24 Sep 2019 03:25:30 -0700
From: "Neftin, Sasha" <sasha.neftin@intel.com>
To: David Arcari <darcari@redhat.com>,
 Alexander Duyck <alexander.duyck@gmail.com>
References: <20190910070512.31391-1-sasha.neftin@intel.com>
 <d0ecf9ed-f12f-f204-5223-6f845150a56d@redhat.com>
 <CAKgT0Ue2rti-T1F9N02ejv2qgQuu7pM6aFCh7QJSys-B2MiNBw@mail.gmail.com>
 <6c527dc7-e4f4-0cee-657e-e35af31c91fd@intel.com>
 <c83ff718-22e6-996f-7dea-b16317e1a969@redhat.com>
 <bedf2d12-9a0e-2633-2d02-27c35d03fc35@intel.com>
Message-ID: <b97617d2-d279-954e-231c-5ed7665b84a5@intel.com>
Date: Tue, 24 Sep 2019 13:25:29 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bedf2d12-9a0e-2633-2d02-27c35d03fc35@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add set_rx_mode support
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOS8xOS8yMDE5IDE1OjU2LCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+IE9uIDkvMTkvMjAxOSAx
NDo0OSwgRGF2aWQgQXJjYXJpIHdyb3RlOgo+PiBPbiAwOS8xOS8yMDE5IDAxOjQ4IEFNLCBOZWZ0
aW4sIFNhc2hhIHdyb3RlOgo+Pj4gT24gOS8xOC8yMDE5IDIzOjI5LCBBbGV4YW5kZXIgRHV5Y2sg
d3JvdGU6Cj4+Pj4gT24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMTI6MjkgUE0gRGF2aWQgQXJjYXJp
IDxkYXJjYXJpQHJlZGhhdC5jb20+IAo+Pj4+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBIaSwKPj4+Pj4K
Pj4+Pj4gT24gMDkvMTAvMjAxOSAwMzowNSBBTSwgU2FzaGEgTmVmdGluIHdyb3RlOgo+Pj4+Pj4g
QWRkIG11bHRpY2FzdCBhZGRyZXNzZXMgbGlzdCB0byB0aGUgTVRBIHRhYmxlLgo+Pj4+Pj4gSW1w
bGVtZW50IHByb21pc2Npb3VzIG1vZGUgYW5kIGFkZCBiYXNpYyByeCBtb2RlIHN1cHBvcnQuCj4+
Pj4+PiBBZGQgb3B0aW9uIGZvciBpcHY2IGFkZHJlc3Mgc2V0dGluZ3MuCj4+Pj4+Pgo+Pj4+Pj4g
U2lnbmVkLW9mZi1ieTogU2FzaGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPgo+Pj4+
Pgo+Pj4+PiBUaGlzIHNlZW1zIHRvIGJyZWFrIGlwdjQgY29tbXVuaWNhdGlvbiBvdmVyIHZsYW5z
Ogo+Pj4+Cj4+PiBQbGVhc2UsIHVzZSBmb2xsb3cgY29tbWFuZHMgZm9yIGlwdjY6Cj4+PiBpcCAt
NiBhZGRyIGFkZCA8aXB2NmFkZHJlc3M+LzxwcmVmaXhsZW5ndGg+IGRldiA8aW50ZXJmYWNlPgo+
Pj4KPj4+IEV4YW1wbGU6Cj4+PiBzdWRvIGlwIC02IGFkZHIgYWRkIGZlODA6OjJhMDpjOWZmOmZl
MDA6Mi82NCBkZXYgZW5wNXMwCj4+Pgo+Pj4gUmVtb3ZlIGlwdjYgYWRkcmVzczoKPj4+IHN1ZG8g
aXAgLTYgYWRkciBkZWwgZmU4MDo6MmEwOmM5ZmY6ZmUwMDoyLzY0IGRldiBlbnA1czAKPj4+Cj4+
PiBwaW5nIC02IC1JIDxpbnRlcmZhY2U+IDxhZGRyZXNzPgo+Pj4gRXhhbXBsZToKPj4+IHBpbmcg
LTYgLUkgZW5wNHMwIGZlODA6OjJhMDpjOWZmOmZlMDA6MQo+Pj4gSSd2ZSBjaGVja2VkIGl0IG9u
IG15IHNpZGUgYW5kIGxvb2tzIGlwdjQgYW5kIGlwdjYgd29ya3MuCj4+Cj4+IEknbSBubyBsb25n
ZXIgaGF2aW5nIGNvbm5lY3Rpdml0eSBpc3N1ZSB3aXRoIGlwdjYgd2l0aCB0aGlzIGNvbW1pdCAK
Pj4gYXBwbGllZC4KPj4KPiBUaGFua3MgdG8gY29uZmlybWluZyB0aGF0Lgo+Pj4gTGV0IG1lIG5v
dCBhZ3JlZSB3aXRoIHlvdSBpbiByZWdhcmRzIHRvIGJyZWFrIGlwdjQgY29tbXVuaWNhdGlvbiBv
dmVyCj4+PiB2bGFuLiBTaW5jZSB2bGFuIG5vdCBzdXBwb3J0ZWQgeWV0IGl0IGNhbiBub3QgYmUg
YnJva2VuLgo+Pgo+PiBXZWxsIC0gaW50ZXJlc3RpbmdseSBlbm91Z2ggdmxhbiBjb25uZWN0aXZp
dHkgd2FzIHdvcmtpbmcgZm9yIGlwdjQgCj4+IGJlZm9yZSB0aGlzCj4+IGNvbW1pdC7CoCBJIGd1
ZXNzIGl0IHdhcyBqdXN0IGdvb2QgZm9ydHVuZS4KPj4KPj4gLURBCkkndmUgbG9va2VkIGludG8g
YW5kIHJlY2hlY2tlZC4gVkxBTiBjb25uZWN0aXZpdHkgaW5kZWVkIHdvcmtzIGJlZm9yZSBteSAK
cGF0Y2guIEkgd2lsbCBhc2sgSmVmZiB0byByZWNhbGwgdGhpcyBwYXRjaC5JIHdpbGwgcmV3b3Jr
IGFuZCByZXN1Ym1pdCAKYW5vdGhlciBwYXRjaC4KU29ycnkgZm9yIHRoZSBpbmNvbnZlbmllbmNl
LgpTYXNoYQo+Pgo+IEludGVyZXN0aW5nLiBPa2F5LCBhbnl3YXksIEkgcGxhbiBhZGQgdmxhbiBz
dXBwb3J0IGluIGZ1dHVyZSBhbmQgd2lsbCAKPiBzaGFyZSB3aXRoIHlvdS4KPiBTYXNoYQo+Pgo+
Pj4gSSBhbSB3b3JraW5nIHRvIGFkZCBWTEFOIHN1cHBvcnQgaW4gbXkgbmV4dCBwYXRjaGVzLgo+
Pj4KPj4+PiBXaHkgaXMgdGhpcyBjb2RlIG1lc3Npbmcgd2l0aCB0aGUgVkxBTnM/IFRoZSBwYXRj
aCBkZXNjcmlwdGlvbiBzYXlzIGl0Cj4+Pj4gaXMgZW5hYmxpbmcgbXVsdGljYXN0IGFuZCB0aGUg
TVRBIGJ1dCBpdCBpcyBtZXNzaW5nIHdpdGggdGhlIFZGVEEKPj4+PiB0YWJsZSBhcyB3ZWxsLiBU
aGF0IGlzIHByb2JhYmx5IHdoYXQgYnJva2UgdGhlIFZMQU5zLgo+Pj4+Cj4+Pj4gSSBkb24ndCBz
ZWUgdGhlIGJpdHMgdG8gc3VwcG9ydCBuZG9fdmxhbl9yeF9bYWRkfGtpbGxdX3ZpZCBhbmQgd2l0
aG91dAo+Pj4+IHRoYXQgaXQgd2lsbCBicmVhayBWTEFOcyBzaW5jZSB0aGUgZHJpdmVyIGlzIGZp
bHRlcmluZyB0aGVtIHVubGVzcwo+Pj4+IHByb21pc2N1b3VzIGZpbHRlcmluZyBpcyBlbmFibGVk
LiBUaGUgVkxBTiBjaGFuZ2VzIHNob3VsZCBiZSBtb3ZlZAo+Pj4+IGludG8gYSBzZXBhcmF0ZSBw
YXRjaC4KPj4+Pgo+Pj4gWW91IGFyZSByaWdodC4gRmV3IGxpbmVzIHJlbGF0ZWQgdG8gVkZUQSBw
cmVzZW50IGhlcmUuIFNvcnJ5IGFib3V0IHRoYXQuCj4+PiBJIGRpZCBub3QgbWVudGlvbiBhZGQg
c3VwcG9ydCBmb3IgVkxBTiB0YWdnZWQgZnJhbWVzIGluIHRoaXMgcGF0Y2guIEkKPj4+IHBsYW4g
dG8gYWRkIFZMQU4gc3VwcG9ydCBpbiBteSBuZXh0IHBhdGNoZXMuCj4+PiBTYXNoYQo+Pj4KPj4K
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IElu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwo+
IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
