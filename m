Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F204C4FCE89
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 07:11:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12D9741679;
	Tue, 12 Apr 2022 05:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QjRIZgHR2kYu; Tue, 12 Apr 2022 05:11:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C772A41638;
	Tue, 12 Apr 2022 05:11:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 929A91BF362
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 05:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FD7183E2A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 05:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UFmkfmsqdCrA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 05:11:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D473A83E22
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 05:11:00 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef95.dynamic.kabel-deutschland.de
 [95.90.239.149])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 39B4261EA1923;
 Tue, 12 Apr 2022 07:10:57 +0200 (CEST)
Message-ID: <aa858f43-a62b-4ce8-c307-882e0ef90134@molgen.mpg.de>
Date: Tue, 12 Apr 2022 07:10:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>
References: <20220411232907.1022602-1-jacob.e.keller@intel.com>
 <20220411232907.1022602-2-jacob.e.keller@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220411232907.1022602-2-jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/6] ice: add newline to
 dev_dbg in ice_vf_fdir_dump_info
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKYWNvYiwKCgpBbSAxMi4wNC4yMiB1bSAwMToyOSBzY2hyaWViIEphY29iIEtlbGxlcjoK
PiBUaGUgZGVidWcgcHJpbnQgaW4gaWNlX3ZmX2ZkaXJfZHVtcF9pbmZvIGRvbid0IGVuZCBpbiBu
ZXdsaW5lcy4gVGhpcyBjYW4KClNpbmd1bGFyPyBkb2VzIG5vdAoKPiBsb29rIGNvbmZ1c2luZyB3
aGVuIHJlYWRpbmcgdGhlIGtlcm5lbCBsb2csIGFzIHRoZSBuZXh0IHByaW50IHdpbGwKPiBpbW1l
ZGlhdGVseSBjb250aW51ZSBvbiB0aGUgc2FtZSBsaW5lLgo+IAo+IEZpeCB0aGlzLgo+IAoKQWRk
IGEgRml4ZXMgdGFnPwoKTWF5YmUgYWxzbyBhZGQgKmZvcmdvdHRlbiogdG8gdGhlIGNvbW1pdCBt
ZXNzYWdlIHN1bW1hcnk6CgpBZGQgZm9yZ290dGVuIG5ld2xpbmUg4oCmCgo+IFNpZ25lZC1vZmYt
Ynk6IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hubF9mZGlyLmMgfCAyICstCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hubF9mZGly
LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sX2ZkaXIuYwo+
IGluZGV4IDhlMzhlZTJmYWY1OC4uZGJjMTk2NWMwNjA5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmlydGNobmxfZmRpci5jCj4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hubF9mZGlyLmMKPiBAQCAtMTM0OSw3
ICsxMzQ5LDcgQEAgc3RhdGljIHZvaWQgaWNlX3ZmX2ZkaXJfZHVtcF9pbmZvKHN0cnVjdCBpY2Vf
dmYgKnZmKQo+ICAgCj4gICAJZmRfc2l6ZSA9IHJkMzIoaHcsIFZTSVFGX0ZEX1NJWkUodnNpX251
bSkpOwo+ICAgCWZkX2NudCA9IHJkMzIoaHcsIFZTSVFGX0ZEX0NOVCh2c2lfbnVtKSk7Cj4gLQlk
ZXZfZGJnKGRldiwgIlZGICVkOiBzcGFjZSBhbGxvY2F0ZWQ6IGd1YXI6MHgleCwgYmU6MHgleCwg
c3BhY2UgY29uc3VtZWQ6IGd1YXI6MHgleCwgYmU6MHgleCIsCj4gKwlkZXZfZGJnKGRldiwgIlZG
ICVkOiBzcGFjZSBhbGxvY2F0ZWQ6IGd1YXI6MHgleCwgYmU6MHgleCwgc3BhY2UgY29uc3VtZWQ6
IGd1YXI6MHgleCwgYmU6MHgleFxuIiwKPiAgIAkJdmYtPnZmX2lkLAo+ICAgCQkoZmRfc2l6ZSAm
IFZTSVFGX0ZEX0NOVF9GRF9HQ05UX00pID4+IFZTSVFGX0ZEX0NOVF9GRF9HQ05UX1MsCj4gICAJ
CShmZF9zaXplICYgVlNJUUZfRkRfQ05UX0ZEX0JDTlRfTSkgPj4gVlNJUUZfRkRfQ05UX0ZEX0JD
TlRfUywKClJldmlld2VkLWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPgoK
CktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
