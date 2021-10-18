Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D44431F48
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 16:16:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83663401F7;
	Mon, 18 Oct 2021 14:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iF9ymTpYIp_0; Mon, 18 Oct 2021 14:16:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CE2740151;
	Mon, 18 Oct 2021 14:16:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5491B1BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 14:08:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4314282EAD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 14:08:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linux.dev
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J-F5_DorJBlN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 14:08:32 +0000 (UTC)
X-Greylist: delayed 00:08:05 by SQLgrey-1.8.0
Received: from out1.migadu.com (out1.migadu.com [IPv6:2001:41d0:2:863f::])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8DA582D17
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 14:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1634565621;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uCmTVYdqiFj8dnSfWVXPlxsBjONsYEUym9vDHdCm4MQ=;
 b=n8rsAcYSX+YSPmh0+NE52IDk51i6PQ+Coz3sOGXQ505LYcHs7QvhhP0qLRE6pQblXrAN9f
 ZVLZSyTJDP5sLKwcmQB/rU5/dx69zNQUWXUWOkylbKa5Kx36oKiyQqpmeE9yU3NDRaRGc7
 uqth/t1knbr1MAZlusqPPOLahE44RKw=
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20211018131713.3478-1-yanjun.zhu@linux.dev>
 <c1903730-9508-1fef-4232-3a5b62f28d7c@molgen.mpg.de>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Yanjun Zhu <yanjun.zhu@linux.dev>
Message-ID: <087710e9-2aeb-c070-cebb-82ae9cb5c20e@linux.dev>
Date: Mon, 18 Oct 2021 22:00:05 +0800
MIME-Version: 1.0
In-Reply-To: <c1903730-9508-1fef-4232-3a5b62f28d7c@molgen.mpg.de>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: yanjun.zhu@linux.dev
X-Mailman-Approved-At: Mon, 18 Oct 2021 14:16:35 +0000
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ice: compact the file ice_nvm.c
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CuWcqCAyMDIxLzEwLzE4IDIxOjQ0LCBQYXVsIE1lbnplbCDlhpnpgZM6Cj4gRGVhciBZYW5qdW4s
Cj4KPgo+IEFtIDE4LjEwLjIxIHVtIDE1OjE3IHNjaHJpZWIgeWFuanVuLnpodUBsaW51eC5kZXY6
Cj4+IEZyb206IFpodSBZYW5qdW4gPHlhbmp1bi56aHVAbGludXguZGV2Pgo+Pgo+PiBUaGUgZnVu
Y3Rpb24gaWNlX2FxX252bV91cGRhdGVfZW1wciBpcyBub3QgdXNlZCwgc28gcmVtb3ZlIGl0Lgo+
Cj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guIENvdWxkIHlvdSBwbGVhc2UgbWFrZSB0aGUgY29t
bWl0IG1lc3NhZ2UgCj4gc3VtbWFyeSBtb3JlIGRlc2NyaXB0aXZlPyBNYXliZToKPgo+PiBpY2U6
IFJlbW92ZSB1bnVzZWQgYGljZV9hcV9udm1fdXBkYXRlX2VtcHIoKWAKPgo+IElmIHlvdSBmaW5k
IG91dCwgd2hhdCBjb21taXQgcmVtb3ZlZCB0aGUgdXNhZ2UsIHRoYXQgd291bGQgYmUgYWxzbyAK
PiBnb29kIHRvIGRvY3VtZW50LCBidXQgaXTigJlzIG5vdCB0aGF0IGltcG9ydGFudC4KCgpUaGFu
a3MgZm9yIHlvdXIgc3VnZ2VzdGlvbi4KCklNTywgcmVtb3ZpbmcgdGhlIHVudXNlZCBmdW5jdGlv
biBpcyBvbmUgbWV0aG9kIG9mIGNvbXBhY3QgZmlsZS4KCkkgYWdyZWUgd2l0aCB5b3UgdGhhdCB0
aGUgY29tbWl0IG1lc3NhZ2Ugc3VtbWFyeSBpcyBub3QgaW1wb3J0YW50LgoKSWYgc29tZW9uZSBm
aW5kcyBtb3JlIGltcG9ydGFudCBwcm9ibGVtIGluIHRoaXMgY29tbWl0LCBJIHdpbGwgcmVzZW5k
IHRoZQoKcGF0Y2ggYW5kIGNoYW5nZSB0aGUgY29tbWl0IG1lc3NhZ2Ugc3VtbWFyeSBiYXNlZCBv
biB5b3VyIHN1Z2dlc3Rpb24uCgoKQmVzdCBSZWdhcmRzLgoKWmh1IFlhbmp1bgoKPgo+Cj4gS2lu
ZCByZWdhcmRzLAo+Cj4gUGF1bAo+Cj4KPj4gU2lnbmVkLW9mZi1ieTogWmh1IFlhbmp1biA8eWFu
anVuLnpodUBsaW51eC5kZXY+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX252bS5jIHwgMTYgLS0tLS0tLS0tLS0tLS0tLQo+PiDCoCBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX252bS5oIHzCoCAxIC0KPj4gwqAgMiBmaWxlcyBjaGFuZ2Vk
LCAxNyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfbnZtLmMgCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9udm0uYwo+PiBpbmRleCBmZWUzN2E1ODQ0Y2YuLmJhZDM3NGJkN2FiMyAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0uYwo+PiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX252bS5jCj4+IEBAIC0xMTA2LDIyICsx
MTA2LDYgQEAgZW51bSBpY2Vfc3RhdHVzIGljZV9udm1fd3JpdGVfYWN0aXZhdGUoc3RydWN0IAo+
PiBpY2VfaHcgKmh3LCB1OCBjbWRfZmxhZ3MpCj4+IMKgwqDCoMKgwqAgcmV0dXJuIGljZV9hcV9z
ZW5kX2NtZChodywgJmRlc2MsIE5VTEwsIDAsIE5VTEwpOwo+PiDCoCB9Cj4+IMKgIC0vKioKPj4g
LSAqIGljZV9hcV9udm1fdXBkYXRlX2VtcHIKPj4gLSAqIEBodzogcG9pbnRlciB0byB0aGUgSFcg
c3RydWN0Cj4+IC0gKgo+PiAtICogVXBkYXRlIGVtcHIgKDB4MDcwOSkuIFRoaXMgY29tbWFuZCBh
bGxvd3MgU1cgdG8KPj4gLSAqIHJlcXVlc3QgYW4gRU1QUiB0byBhY3RpdmF0ZSBuZXcgRlcuCj4+
IC0gKi8KPj4gLWVudW0gaWNlX3N0YXR1cyBpY2VfYXFfbnZtX3VwZGF0ZV9lbXByKHN0cnVjdCBp
Y2VfaHcgKmh3KQo+PiAtewo+PiAtwqDCoMKgIHN0cnVjdCBpY2VfYXFfZGVzYyBkZXNjOwo+PiAt
Cj4+IC3CoMKgwqAgaWNlX2ZpbGxfZGZsdF9kaXJlY3RfY21kX2Rlc2MoJmRlc2MsIGljZV9hcWNf
b3BjX252bV91cGRhdGVfZW1wcik7Cj4+IC0KPj4gLcKgwqDCoCByZXR1cm4gaWNlX2FxX3NlbmRf
Y21kKGh3LCAmZGVzYywgTlVMTCwgMCwgTlVMTCk7Cj4+IC19Cj4+IC0KPj4gwqAgLyogaWNlX252
bV9zZXRfcGtnX2RhdGEKPj4gwqDCoCAqIEBodzogcG9pbnRlciB0byB0aGUgSFcgc3RydWN0Cj4+
IMKgwqAgKiBAZGVsX3BrZ19kYXRhX2ZsYWc6IElmIGlzIHNldCB0aGVuIHRoZSBjdXJyZW50IHBr
Z19kYXRhIHN0b3JlIGJ5IEZXCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX252bS5oIAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbnZtLmgKPj4gaW5kZXggYzZmMDVmNDNkNTkzLi45MjUyMjU5MDU0OTEgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbnZtLmgKPj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9udm0uaAo+PiBAQCAtMzksNyArMzksNiBA
QCBlbnVtIGljZV9zdGF0dXMKPj4gwqAgaWNlX2FxX2VyYXNlX252bShzdHJ1Y3QgaWNlX2h3ICpo
dywgdTE2IG1vZHVsZV90eXBlaWQsIHN0cnVjdCAKPj4gaWNlX3NxX2NkICpjZCk7Cj4+IMKgIGVu
dW0gaWNlX3N0YXR1cyBpY2VfbnZtX3ZhbGlkYXRlX2NoZWNrc3VtKHN0cnVjdCBpY2VfaHcgKmh3
KTsKPj4gwqAgZW51bSBpY2Vfc3RhdHVzIGljZV9udm1fd3JpdGVfYWN0aXZhdGUoc3RydWN0IGlj
ZV9odyAqaHcsIHU4IAo+PiBjbWRfZmxhZ3MpOwo+PiAtZW51bSBpY2Vfc3RhdHVzIGljZV9hcV9u
dm1fdXBkYXRlX2VtcHIoc3RydWN0IGljZV9odyAqaHcpOwo+PiDCoCBlbnVtIGljZV9zdGF0dXMK
Pj4gwqAgaWNlX252bV9zZXRfcGtnX2RhdGEoc3RydWN0IGljZV9odyAqaHcsIGJvb2wgZGVsX3Br
Z19kYXRhX2ZsYWcsIHU4IAo+PiAqZGF0YSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB1MTYgbGVuZ3RoLCBzdHJ1Y3QgaWNlX3NxX2NkICpjZCk7Cj4+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
