Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC6BA66F8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2019 13:01:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 02D6C2042B;
	Tue,  3 Sep 2019 11:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oc4oXktLPjlJ; Tue,  3 Sep 2019 11:01:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 664B2226F3;
	Tue,  3 Sep 2019 11:01:06 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C96151BF5E0
 for <intel-wired-lan@osuosl.org>; Tue,  3 Sep 2019 11:01:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C3BD82042B
 for <intel-wired-lan@osuosl.org>; Tue,  3 Sep 2019 11:01:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9KHhTdaJbLto for <intel-wired-lan@osuosl.org>;
 Tue,  3 Sep 2019 11:01:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from geminitest.hmdnsgroup.com (geminitest.hmdnsgroup.com
 [63.247.140.108])
 by silver.osuosl.org (Postfix) with ESMTPS id 25CF020358
 for <intel-wired-lan@osuosl.org>; Tue,  3 Sep 2019 11:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=mirality.co.nz; s=default; h=Message-ID:References:In-Reply-To:Subject:Cc:
 To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C/Yat4JNiX6I17fS/9qqGi5g9UMe+WwWedHtWEtr6dg=; b=oLl+8DNFdX2jS262XnZUszj+fz
 J8IaE4GOOP46mhdEj6gL+1wgwxi6FuMUK2cbYDgXXI2BX3jMMgTB/fTHImKtKoe+niGcKP1OIzFMY
 FxedtVOSS9QSQoZB3a/p7lIL7/ArPA0/CjfP5PIxeDSYVn1rPjXqY84ios5un3w7Y534QNCGY1F6Z
 yfIZwTjPir3yvm50bLPGGfqmkMq9DV0yaRqu1TceOm+qpQwokmVZoQ74fFkOsWZ4gQos9mW+0UXt0
 HXMuJKAMzmjc4p+gqpQ/E1rNtIP42ZmZ3otOgdtNqIgMMW2KTu4g9W/W5ZylVliAB8etn1Lh1vzw5
 Csaw931Q==;
Received: from [::1] (port=56202 helo=mirality.co.nz)
 by gemini.hmdnsgroup.com with esmtpa (Exim 4.87)
 (envelope-from <intel@mirality.co.nz>)
 id 1i56YJ-0008Qh-Bf; Tue, 03 Sep 2019 07:00:47 -0400
MIME-Version: 1.0
Date: Tue, 03 Sep 2019 23:00:45 +1200
From: Gavin Lambert <intel@mirality.co.nz>
To: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <f5b988f9-25cf-db4a-53f5-9bb7edc8fb51@molgen.mpg.de>
References: <3acf459ddbbd30687cda0a79523afe04@mirality.co.nz>
 <bec9f546d5a5a46586af0ac93d36f84f@mirality.co.nz>
 <000661bda5687541e895a949c76712fb@mirality.co.nz>
 <d3118220-e599-44cd-5ed6-43259c5fc2c2@intel.com>
 <3a63201c552a9cb6a9737fec92bc1264@mirality.co.nz>
 <f4a18bf808e6f30e9691e127722f851b@mirality.co.nz>
 <f6b7b539ece1ba352c60c6dc976a3ce2@mirality.co.nz>
 <0300439f389950a9f9baaaaf5e3ea697@mirality.co.nz>
 <aafb4ac9-6825-300c-6dee-1b603c09e373@molgen.mpg.de>
 <20190903092046.GB12325@kroah.com>
 <5B8DA87D05A7694D9FA63FD143655C1B9DCAC1FF@hasmsx108.ger.corp.intel.com>
 <f5b988f9-25cf-db4a-53f5-9bb7edc8fb51@molgen.mpg.de>
Message-ID: <0159f1cd031ce326447621f1a22f60fc@mirality.co.nz>
X-Sender: intel@mirality.co.nz
User-Agent: Roundcube Webmail/1.1.4
X-HMDNSGroup-MailScanner-Information: Please contact the ISP for more
 information
X-HMDNSGroup-MailScanner-ID: 1i56YJ-0008Qh-Bf
X-HMDNSGroup-MailScanner: Found to be clean
X-HMDNSGroup-MailScanner-SpamCheck: 
X-HMDNSGroup-MailScanner-From: intel@mirality.co.nz
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gemini.hmdnsgroup.com
X-AntiAbuse: Original Domain - osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - mirality.co.nz
X-Get-Message-Sender-Via: gemini.hmdnsgroup.com: authenticated_id:
 uecasm/from_h
X-Authenticated-Sender: gemini.hmdnsgroup.com: intel@mirality.co.nz
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [Intel-wired-lan] [e1000e] Linux 4.9: unable to send packets
 after link recovery with patched driver
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rafael J Wysocki <rafael.j.wysocki@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>, intel-wired-lan@osuosl.org,
 Tomas Winkler <tomas.winkler@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAxOS0wOS0wMyAyMTozOSwgUGF1bCBNZW56ZWwgd3JvdGU6Cj4gRGVhciBUb21hcywKPiAK
PiBPbiAyMDE5LTA5LTAzIDExOjI4LCBXaW5rbGVyLCBUb21hcyB3cm90ZToKPiAKPj4+IE9uIFR1
ZSwgU2VwIDAzLCAyMDE5IGF0IDEwOjM1OjMwQU0gKzAyMDAsIFBhdWwgTWVuemVsIHdyb3RlOgo+
IAo+Pj4+IE9uIDAzLjA5LjE5IDA5OjU2LCBHYXZpbiBMYW1iZXJ0IHdyb3RlOgo+Pj4+PiBPbiAy
MDE5LTA4LTIwIDE0OjE1LCBJIHdyb3RlOgo+Pj4+Pj4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkgaWRl
YXMgYWJvdXQgdGhpcz/CoCBFaXRoZXIgdG93YXJkcyBmdXJ0aGVyCj4+Pj4+PiBpbnZlc3RpZ2F0
aW9uIG9yIHRvIGEgcG9zc2libGUgcmVzb2x1dGlvbj8KPj4+Pj4+IAo+Pj4+Pj4gVGhpcyBpcyBh
dCB0aGUgcG9pbnQgb2YgaGFyZHdhcmUgaW50ZXJuYWxzIG5vdywgc28gSSBoYXZlIG5vIGlkZWEK
Pj4+Pj4+IGhvdyB0byBwcm9jZWVkIGluIGVpdGhlciBhcmVhLgo+Pj4+PiAKPj4+Pj4gVG8gcmVj
YXAgKHBsdXMgc29tZSBuZXcgaW5mbyk6Cj4+Pj4+IAo+Pj4+PiAxLiBJIGFtIHVzaW5nIGEga2Vy
bmVsIG1vZHVsZSB3aGljaCB1c2VzIHRoZSBjb2RlIGZyb20gdGhlIGUxMDAwZQo+Pj4+PiBkcml2
ZXIgdG8gY29tbXVuaWNhdGUgd2l0aCB0aGUgaGFyZHdhcmUgd2l0aG91dCBhY3R1YWxseSAKPj4+
Pj4gcmVnaXN0ZXJpbmcKPj4+Pj4gaXQgYXMgYSBMaW51eCBuZXRkZXYuwqAgKFRoaXMgaXMgcGFy
dGx5IGJlY2F1c2UgaXQgY2FuIGdldCB1c2VkIGluIGEKPj4+Pj4gWGVub21haSBjb250ZXh0IG91
dHNpZGUgb2YgTGludXggaXRzZWxmLCBhbHRob3VnaCBJJ20gbm90IGRvaW5nIAo+Pj4+PiB0aGF0
Cj4+Pj4+IG15c2VsZi4pIFRoaXMgaGlzdG9yaWNhbGx5IHdvcmtzIGZpbmUuCj4+Pj4+IAo+Pj4+
PiAyLiBPbiBjZXJ0YWluIExpbnV4IHZlcnNpb25zLCBJIGVuY291bnRlcmVkIGFuIGlzc3VlIHdo
ZXJlCj4+Pj4+IGRpc2Nvbm5lY3RpbmcgdGhlIG5ldHdvcmsgY2FibGUgYW5kIHJlY29ubmVjdGlu
ZyBpdCBhbG1vc3QgYWx3YXlzCj4+Pj4+IHJlc3VsdHMgaW4gbm90IGJlaW5nIGFibGUgdG8gc2Vu
ZCBhbnkgcGFja2V0cy7CoCAoSSBjYW5ub3QgZGV0ZXJtaW5lCj4+Pj4+IGlmIHJlY2VpdmluZyBw
YWNrZXRzIHdvcmtzIGluIHRoaXMgY2FzZSwgYXMgdGhlIG5ldHdvcmsgZGVzaWduIHdpbGwKPj4+
Pj4gbm90IHJlY2VpdmUgcGFja2V0cyB1bmxlc3Mgc29tZSBhcmUgc2VudCBmaXJzdC4pwqAgUmVz
dGFydGluZyB0aGUKPj4+Pj4gZHJpdmVyIChybW1vZCttb2Rwcm9iZSkgZG9lcyByZWNvdmVyIGZy
b20gdGhpcyBjYXNlICh1bnRpbCB0aGUgbmV4dAo+Pj4+PiBsaW5rIGxvc3MpLCBidXQgc2ltcGx5
IHJlcGx1Z2dpbmcgdGhlIGNhYmxlIG5ldmVyIGRvZXMuCj4+Pj4+IAo+Pj4+PiAzLiBUaGUgcHJv
YmxlbSB3YXMgb2JzZXJ2ZWQgd2l0aCBib3RoIEkyMTktViBhbmQgSTIxOS1MTSAob24KPj4+Pj4g
bW90aGVyYm9hcmQpLCBidXQgd2FzICpub3QqIG9ic2VydmVkIHdpdGggODI1NzFFQiAoUENJRSku
wqAgVGhlCj4+Pj4+IHByb2JsZW0gd2FzIG5vdCBvYnNlcnZlZCB3aXRoIGEgbW90aGVyYm9hcmQg
aWdiLWJhc2VkIEkyMTEuwqAgSQo+Pj4+PiBzdXNwZWN0IHRoZSBpc3N1ZSBpcyBsaW1pdGVkIHRv
IG1vdGhlcmJvYXJkLWJhc2VkIGUxMDAwZSBhZGFwdGVycy4KPj4+Pj4gKE9yIHBlcmhhcHMgdGhl
cmUncyBzb21ldGhpbmcgZGlmZmVyZW50IGFib3V0IGhvdyB0aGUgSUdCcyBhcmUKPj4+Pj4gaW50
ZXJuYWxseSBjb25uZWN0ZWQuKQo+Pj4+PiAKPj4+Pj4gNC4gVGhlIHByb2JsZW0gZG9lcyBub3Qg
b2NjdXIgd2hlbiB0aGUgZTEwMDBlIGRyaXZlciBpcyByZWdpc3RlcmVkCj4+Pj4+ICJub3JtYWxs
eSIgYXMgYSBMaW51eCBuZXRkZXYuCj4+Pj4+IAo+Pj4+PiA1LiBUaGUgcHJvYmxlbSB3YXMgaW50
cm9kdWNlZCBieSAibWVpOiBtZTogYWxsb3cgcnVudGltZSBwbSBmb3IKPj4+Pj4gcGxhdGZvcm0g
d2l0aCBEMGkzIiAod2hpY2ggaGFzIGJlZW4gYmFja3BvcnRlZCB0byA0LjQrLCBhcyBmYXIgYXMg
SSAKPj4+Pj4gY2FuCj4+PiB0ZWxsKS4KPj4+Pj4gRXhjbHVkaW5nIHRoaXMgY29tbWl0IHJlbGlh
Ymx5IHJlc29sdmVzIHRoZSBpc3N1ZSBhbmQgaW5jbHVkaW5nIGl0Cj4+Pj4+IHJlbGlhYmx5IGJy
ZWFrcyBpdC4KPj4+PiAKPj4+PiBUaGUgY29tbWl0IGhhc2ggaW4gdGhlIG1hc3RlciBicmFuY2gg
aXMKPj4+PiBjYzM2NWRjZjBlNTYyNzFiZWRmM2RlOTVmODg5MjJhYmUyNDhlOTUxIGFuZCBpcyB0
aGVyZSBzaW5jZSAKPj4+PiB2NC4xNi1yYzEuCj4+Pj4gCj4+Pj4gU3RyYW5nZSwgdGhhdCBpdCBp
cyBpbiA0LjQgYW5kIDQuOSwgYXMgaXQgd2FzIG9ubHkgdGFnZ2VkIGZvciAKPj4+PiB2NC4xMysu
Cj4+Pj4gCj4+Pj4+IDYuIEFwcGx5aW5nIHRoZSBwcmV2aW91c2x5IHN1Z2dlc3RlZCBwYXRjaAo+
Pj4+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9qa2ly
c2hlci9uZXh0LXF1ZXVlLgo+Pj4+PiBnaXQvY29tbWl0L2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2UxMDAwZT9pZD1kZWY0ZWM2ZGNlMzkzZTIxMzZiNgo+Pj4+PiAyYTA1NzEyZjM1YTdmYTVm
NWU1NiBoYXMgbm8gZWZmZWN0OyB0aGUgRTEwMDBfU1RBVFVTX1BDSU1fU1RBVEUgYml0Cj4+Pj4+
IGlzIG5vdCBzZXQgd2hlbiB0aGUgaXNzdWUgb2NjdXJzLgo+Pj4+PiAKPj4+Pj4gNy4gR2l2ZW4g
dGhlIGNvbnRlbnQgb2YgdGhlIGNoYW5nZSBpbiAjNSwgSSBhc3N1bWVkIHRoYXQgdGhlIAo+Pj4+
PiBwcm9ibGVtCj4+Pj4+IHdhcyBwb3dlci1tYW5hZ2VtZW50IHJlbGF0ZWQsIHBlcmhhcHMgYSBz
aWRlIGVmZmVjdCBvZiB0aGUgZTEwMDBlCj4+Pj4+IGRyaXZlciBub3QgYmVpbmcgcmVnaXN0ZXJl
ZCBhcyBhIG5ldGRldi7CoCAoU28gcGVyaGFwcyBzb21ldGhpbmcKPj4+Pj4gdGhpbmtzIHRoYXQg
bm8gZGV2aWNlcyBhcmUgaW4gdXNlIGFuZCB0dXJucyBzb21ldGhpbmcgb2ZmPykKPj4+Pj4gCj4+
Pj4+IDguIEkndmUgcHJldmlvdXNseSBwb3N0ZWQgcmVnaXN0ZXIgZHVtcHMgZnJvbSBhbiBlMTAw
MGUgaW4gYm90aCB0aGUKPj4+Pj4gIm5vcm1hbCIgYW5kICJsaW5rIHVwIGJ1dCBub3QgdHJhbnNt
aXR0aW5nIiBzdGF0ZXMuwqAgVGhleSBzZWVtZWQKPj4+Pj4gdmVyeSBzaW1pbGFyLCBidXQgYXMg
SSdtIG5vdCBmYW1pbGlhciB3aXRoIHRoZSByZWdpc3RlciBtZWFuaW5ncyBJCj4+Pj4+IG1heSBo
YXZlIG92ZXJsb29rZWQgc29tZXRoaW5nIHNpZ25pZmljYW50LsKgIChOb3RlIHRoYXQgdGhlIGR1
bXBzCj4+Pj4+IHdlcmUgY2FwdHVyZWQgaW5zaWRlIHRoZSB3YXRjaGRvZyB0YXNrLCB3aGVuIGl0
IGRldGVjdHMgbGluayB1cCBidXQKPj4+Pj4gYmVmb3JlIGl0IHNldHMKPj4+Pj4gRTEwMDBfVENU
TF9FTi4pCj4+Pj4+IAo+Pj4+PiA5LiBJIGVuYWJsZWQgZGVidWcgbG9nZ2luZyBpbiB0aGUgbWVp
IGRyaXZlcjsgaXQgbG9ncyBhIGNvdXBsZSBvZgo+Pj4+PiBydW50aW1lX2lkbGVzIGFuZCB0aGVu
IGEgcnVudGltZV9zdXNwZW5kIGR1cmluZyBzeXN0ZW0gc3RhcnR1cC7CoCAoSQo+Pj4+PiBhZGRl
ZCBhIGxvZyB0byBydW50aW1lX3Jlc3VtZSB0aGF0IGlzIG1pc3NpbmcgaW4gdGhlIGRyaXZlciBz
b3VyY2UsCj4+Pj4+IGJ1dCBpdCBhcHBlYXJzIHRoaXMgZG9lcyBub3QgZ2V0IGNhbGxlZCBpbiBt
eSBzY2VuYXJpby4pwqAgTm90ZSB0aGF0Cj4+Pj4+IHRoZSBlMTAwMGUgZHJpdmVyIGlzIHN0aWxs
IHdvcmtpbmcgb2sgYWZ0ZXIgdGhpcy4uIGF0IGxlYXN0IGF0IAo+Pj4+PiBmaXJzdC4KPj4+Pj4g
Cj4+Pj4+IDEwLiAiY2F0IAo+Pj4+PiAvc3lzL2J1cy9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDow
MDoxNi4wL3Bvd2VyL3J1bnRpbWVfc3RhdHVzIgo+Pj4+PiA9PiAic3VzcGVuZGVkIgo+Pj4+PiAg
wqDCoMKgICJjYXQKPj4+Pj4gCj4+PiAvc3lzL2J1cy9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDow
MDoxNi4wL21laS9tZWkwL3Bvd2VyL3J1bnRpbWVfc3RhdHVzIgo+Pj4+PiA9PiAidW5zdXBwb3J0
ZWQiCj4+Pj4+ICDCoMKgwqAgImNhdCAKPj4+Pj4gL3N5cy9idXMvZGV2aWNlcy9wY2kwMDAwOjAw
LzAwMDA6MDA6MWYuMC9wb3dlci9ydW50aW1lX3N0YXR1cyIKPj4+Pj4gPT4gImFjdGl2ZSIKPj4+
Pj4gIMKgwqDCoCAiY2F0IAo+Pj4+PiAvc3lzL2J1cy9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDow
MDoxZi42L3Bvd2VyL3J1bnRpbWVfc3RhdHVzIgo+Pj4+PiA9PiAiYWN0aXZlIiAodGhpcyBpcyB0
aGUgYWN0dWFsIE5JQykKPj4+Pj4gIMKgwqDCoCBUaGVzZSBkb24ndCBjaGFuZ2UgYmV0d2VlbiB0
aGUgd29ya2luZyBhbmQgbm9uLXdvcmtpbmcgc3RhdGVzLgo+Pj4+PiAoSXQncyBwb3NzaWJsZSB0
aGF0IHNvbWUgb3RoZXIgZGV2aWNlIGRvZXMsIGJ1dCBJIGhhdmVuJ3QgZm91bmQgaXQKPj4+Pj4g
eWV0LikKPj4+Pj4gCj4+Pj4+IDExLiBJIGRpZCB0cnkgZm9yY2luZyB0aGUgYWJvdmUgdG8gdW5z
dXNwZW5kLCBidXQgdGhpcyBkaWQgbm90Cj4+Pj4+IHJlY292ZXIgZnJvbSB0aGUgZTEwMDBlIGlz
c3VlLgo+Pj4+PiAKPj4+Pj4gMTIuIEkgYWxzbyB0cmllZCBjYWxsaW5nIGUxMDAwZV9yZXNldCBv
biBsaW5rLWRvd24uwqAgVGhpcyBwcm9kdWNlcwo+Pj4+PiBkaWZmZXJlbnQgcmVnaXN0ZXIgb3V0
cHV0IG9uIGxpbmstdXAsIGJ1dCBkb2Vzbid0IHJlY292ZXIgZnJvbSB0aGUKPj4+Pj4gaXNzdWUu
Cj4+Pj4+IAo+Pj4+PiAxMy4gSSBhbHNvIHRyaWVkIHJlY29tcGlsaW5nIHRoZSBrZXJuZWwgd2l0
aCBDT05GSUdfUE0gZGlzYWJsZWQgKG5vCj4+Pj4+IHBvd2VyIG1hbmFnZW1lbnQpLsKgIFRoaXMg
KmRvZXMqIHJlc29sdmUgdGhlIHByb2JsZW0gKGJ1dCBpcyBhIHZlcnkKPj4+Pj4gYmlnIGhhbW1l
cikuCj4+Pj4+IAo+Pj4+PiAxNC4gUG9zc2libHkgYWxzbyBvZiBpbnRlcmVzdCBpcyB0aGF0IGlm
IEkgZG8gKmJvdGgqICMxMiBhbmQgIzEzLAo+Pj4+PiB0aGUgcHJvYmxlbSByZW1haW5zIChzdWdn
ZXN0aW5nICMxMiB3YXMgY291bnRlci1wcm9kdWN0aXZlKS4KPj4+Pj4gCj4+Pj4+IEZZSSB0aGUg
aGFyZHdhcmUgb24gb25lIG9mIHRoZSB0ZXN0IG1hY2hpbmVzIGlzIGFzIGZvbGxvd3M6Cj4+Pj4+
ICDCoMKgwqAgMDA6MDAuMCBIb3N0IGJyaWRnZTogSW50ZWwgQ29ycG9yYXRpb24gRGV2aWNlIDU5
MWYgKHJldiAwNSkKPj4+Pj4gIMKgwqDCoCAwMDowMS4wIFBDSSBicmlkZ2U6IEludGVsIENvcnBv
cmF0aW9uIFNreWxha2UgUENJZSBDb250cm9sbGVyCj4+Pj4+ICh4MTYpIChyZXYgMDUpCj4+Pj4+
ICDCoMKgwqAgMDA6MDIuMCBWR0EgY29tcGF0aWJsZSBjb250cm9sbGVyOiBJbnRlbCBDb3Jwb3Jh
dGlvbiBEZXZpY2UKPj4+Pj4gNTkxMiAocmV2IDA0KQo+Pj4+PiAgwqDCoMKgIDAwOjA4LjAgU3lz
dGVtIHBlcmlwaGVyYWw6IEludGVsIENvcnBvcmF0aW9uIFNreWxha2UgR2F1c3NpYW4KPj4+Pj4g
TWl4dHVyZSBNb2RlbAo+Pj4+PiAgwqDCoMKgIDAwOjE0LjAgVVNCIGNvbnRyb2xsZXI6IEludGVs
IENvcnBvcmF0aW9uIFN1bnJpc2UgUG9pbnQtSCBVU0IKPj4+Pj4gMy4wICB4SENJIENvbnRyb2xs
ZXIgKHJldiAzMSkKPj4+Pj4gIMKgwqDCoCAwMDoxNC4yIFNpZ25hbCBwcm9jZXNzaW5nIGNvbnRy
b2xsZXI6IEludGVsIENvcnBvcmF0aW9uIAo+Pj4+PiBTdW5yaXNlCj4+Pj4+IFBvaW50LUggVGhl
cm1hbCBzdWJzeXN0ZW0gKHJldiAzMSkKPj4+Pj4gIMKgwqDCoCAwMDoxNS4wIFNpZ25hbCBwcm9j
ZXNzaW5nIGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9uIAo+Pj4+PiBTdW5yaXNlCj4+Pj4+
IFBvaW50LUggU2VyaWFsIElPIEkyQyBDb250cm9sbGVyICMwIChyZXYgMzEpCj4+Pj4+ICDCoMKg
wqAgMDA6MTUuMSBTaWduYWwgcHJvY2Vzc2luZyBjb250cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlv
biAKPj4+Pj4gU3VucmlzZQo+Pj4+PiBQb2ludC1IIFNlcmlhbCBJTyBJMkMgQ29udHJvbGxlciAj
MSAocmV2IDMxKQo+Pj4+PiAgwqDCoMKgIDAwOjE2LjAgQ29tbXVuaWNhdGlvbiBjb250cm9sbGVy
OiBJbnRlbCBDb3Jwb3JhdGlvbiBTdW5yaXNlCj4+Pj4+IFBvaW50LUggQ1NNRSBIRUNJICMxIChy
ZXYgMzEpCj4+Pj4+ICDCoMKgwqAgMDA6MTcuMCBTQVRBIGNvbnRyb2xsZXI6IEludGVsIENvcnBv
cmF0aW9uIFN1bnJpc2UgUG9pbnQtSCAKPj4+Pj4gU0FUQQo+Pj4+PiBjb250cm9sbGVyIFtBSENJ
IG1vZGVdIChyZXYgMzEpCj4+Pj4+ICDCoMKgwqAgMDA6MWIuMCBQQ0kgYnJpZGdlOiBJbnRlbCBD
b3Jwb3JhdGlvbiBTdW5yaXNlIFBvaW50LUggUENJIFJvb3QKPj4+Pj4gUG9ydCAjMTkgKHJldiBm
MSkKPj4+Pj4gIMKgwqDCoCAwMDoxYi4zIFBDSSBicmlkZ2U6IEludGVsIENvcnBvcmF0aW9uIFN1
bnJpc2UgUG9pbnQtSCBQQ0kgUm9vdAo+Pj4+PiBQb3J0ICMyMCAocmV2IGYxKQo+Pj4+PiAgwqDC
oMKgIDAwOjFjLjAgUENJIGJyaWRnZTogSW50ZWwgQ29ycG9yYXRpb24gU3VucmlzZSBQb2ludC1I
IFBDSQo+Pj4+PiBFeHByZXNzIFJvb3QgUG9ydCAjNSAocmV2IGYxKQo+Pj4+PiAgwqDCoMKgIDAw
OjFkLjAgUENJIGJyaWRnZTogSW50ZWwgQ29ycG9yYXRpb24gU3VucmlzZSBQb2ludC1IIFBDSQo+
Pj4+PiBFeHByZXNzIFJvb3QgUG9ydCAjMTEgKHJldiBmMSkKPj4+Pj4gIMKgwqDCoCAwMDoxZS4w
IFNpZ25hbCBwcm9jZXNzaW5nIGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9uIAo+Pj4+PiBT
dW5yaXNlCj4+Pj4+IFBvaW50LUggU2VyaWFsIElPIFVBUlQgIzAgKHJldiAzMSkKPj4+Pj4gIMKg
wqDCoCAwMDoxZi4wIElTQSBicmlkZ2U6IEludGVsIENvcnBvcmF0aW9uIFN1bnJpc2UgUG9pbnQt
SCBMUEMKPj4+Pj4gQ29udHJvbGxlciAocmV2IDMxKQo+Pj4+PiAgwqDCoMKgIDAwOjFmLjIgTWVt
b3J5IGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9uIFN1bnJpc2UgUG9pbnQtSAo+Pj4+PiBQ
TUMgKHJldiAzMSkKPj4+Pj4gIMKgwqDCoCAwMDoxZi40IFNNQnVzOiBJbnRlbCBDb3Jwb3JhdGlv
biBTdW5yaXNlIFBvaW50LUggU01CdXMgKHJldiAKPj4+Pj4gMzEpCj4+Pj4+ICDCoMKgwqAgMDA6
MWYuNiBFdGhlcm5ldCBjb250cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBFdGhlcm5ldAo+Pj4+
PiBDb25uZWN0aW9uICgyKSBJMjE5LUxNIChyZXYgMzEpCj4+Pj4+ICDCoMKgwqAgMDI6MDAuMCBF
dGhlcm5ldCBjb250cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBJMjExIEdpZ2FiaXQKPj4+Pj4g
TmV0d29yayBDb25uZWN0aW9uIChyZXYgMDMpCj4+Pj4+ICDCoMKgwqAgMDM6MDAuMCBFdGhlcm5l
dCBjb250cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBJMjExIEdpZ2FiaXQKPj4+Pj4gTmV0d29y
ayBDb25uZWN0aW9uIChyZXYgMDMpCj4+Pj4+ICDCoMKgwqAgMDU6MDAuMCBFdGhlcm5ldCBjb250
cm9sbGVyOiBJbnRlbCBDb3Jwb3JhdGlvbiBJMjExIEdpZ2FiaXQKPj4+Pj4gTmV0d29yayBDb25u
ZWN0aW9uIChyZXYgMDMpCj4gCj4gKFRvbWFzLCB5b3VyIE1VQSB3cmFwcGVkIHRoZSBsaW5lcyBt
ZXNzaW5nIHVwIHRoZSBmb3JtYXR0aW5nLikKPiAKPj4+Pj4gSSdtIGhhcHB5IHRvIGFkZCBhbnkg
Y29kZSBpbnN0cnVtZW50YXRpb24gb3IgbWFrZSBhbnkgb3RoZXIgY2hhbmdlcwo+Pj4+PiBuZWVk
ZWQgdG8gbG9jYXRlIGFuZCByZXNvbHZlIHRoZSBwcm9ibGVtLCBhbmQgSSBjYW4gcmVhZGlseQo+
Pj4+PiByZXByb2R1Y2UgaXQKPj4+Pj4gLS0gSSdtIGp1c3QgYXQgYSBjb21wbGV0ZSBsb3NzIGFz
IHRvIHdoZXJlIHRvIHN0YXJ0IGxvb2tpbmcsIGFuZCBhbQo+Pj4+PiBzdGlsbCBob3BpbmcgZm9y
IHNvbWUgc3VnZ2VzdGlvbnMgaW4gdGhhdCByZWdhcmQuCj4+Pj4+IAo+Pj4+PiBJZiB0aGVyZSdz
IGFueXdoZXJlIChvciBhbnlvbmUpIGVsc2UgYmV0dGVyIGZvciBtZSB0byB0YWxrIHRvIGFib3V0
Cj4+Pj4+IHRoaXMgaXNzdWUsIHBsZWFzZSBsZXQgbWUga25vdyB0aGF0IHRvby4KPj4+PiAKPj4+
PiBJdCBpcyBub3QgY2xlYXIgdG8gbWUsIGlmIHRoaXMgaXMgc3RpbGwgcmVwcm9kdWNpYmxlIG9u
IExpbnV4IAo+Pj4+IDUuMy1yYzcKPj4+PiAob3IgTGludXPigJkgbWFzdGVyIGJyYW5jaCkuCj4+
Pj4gCj4+Pj4gSWYgaXQgaXMsIHRoaXMgaXMgYSBkZWZpbml0ZWx5IHJlZ3Jlc3Npb24sIGFuZCB0
aGUgY29tbWl0cyBuZWVkIHRvIAo+Pj4+IGJlCj4+Pj4gcmV2ZXJ0ZWQgZHVlIHRvIExpbnV44oCZ
IG5vIHJlZ3Jlc3Npb24gcG9saWN5Lgo+Pj4gCj4+PiBTbyBJIHNob3VsZCByZXZlcnQgdGhpcyBm
cm9tIDQuNC55IGFuZCA0LjkueT8KPj4gCj4+IFRoZSBpc3N1ZSBpcyBub3QgaW4gbWVpIGRyaXZl
ciwgaXQgaXMgaW4gZTEwMDAgZHJpdmVyLCBJIG15IGJlc3QKPj4ga25vd2xlZGdlIHRoZXJlIHNo
b3VsZCBiZSBmaXgsIHBsZWFzZSBWaXRhbHkgY2FuIGl0IGJlIGJhY2twb3J0ZWQgdG8KPj4gb2xk
ZXIga2VybmVscz8KPiAKPiBUb21hcywgYmFja3BvcnRpbmcgdGhlIGNvbW1pdCBzdXBwb3NlZGx5
IGZpeGluZyB0aGlzLCBkb2VzICpub3QqIGhlbHAuCj4gQWxzbywgaXQgZG9lcyBub3QgbWF0dGVy
IGZvciB0aGUgbm8gcmVncmVzc2lvbiBwb2xpY3kuCj4gCj4gTGV04oCZcyB3YWl0IHVudGlsIEdh
dmluIGNhbiBjb25maXJtIGlmIGl0IGlzIGhhcHBlbmluZyB3aXRoIExpbnV4IAo+IDUuMy1yYzcu
CgpBcyBub3RlZCBhYm92ZSAoYW5kIGluIGEgcHJpb3IgZW1haWwpLCB0aGUgcHJvYmxlbSBkb2Vz
bid0IG9jY3VyIHdoZW4gCnVzaW5nIHRoZSBkcml2ZXIgIm5vcm1hbGx5IiB3aXRoaW4gTGludXgu
ICBUaGUgdHJpZ2dlcmluZyBlbnZpcm9ubWVudCBpcyAKd2hlcmUgdGhlIGRyaXZlciBpbml0L3Nl
bmQvcmVjZWl2ZSBjb2RlIGlzIGJlaW5nIGV4ZWN1dGVkIGRpcmVjdGx5IAoqd2l0aG91dCogYmVp
bmcgcmVnaXN0ZXJlZCBhcyBhIExpbnV4IG5ldGRldi4KCkl0IGlzIGxpa2VseSB0aGF0IHRoZSAi
cmVhbCBwcm9ibGVtIiBpcyBzb21lIHNpZGUgZWZmZWN0IG9mIHRoaXMsIHN1Y2ggCmFzIHNvbWV0
aGluZyBjaGVja2luZyBpZiBhIGNoaWxkIGRldmljZSBpcyBpbiB1c2Ugb3IgcG93ZXJlZCBkb3du
IGJ1dCAKaXQncyBub3QgcmVnaXN0ZXJlZC4KCk15IGVudmlyb25tZW50IGlzIGN1cnJlbnRseSBi
YXNlZCBvbiB0aGlzIHRyZWU6Cgo+IFVzaW5nIHRoaXMga2VybmVsIHRyZWU6Cj4gICAKPiBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9ydC9saW51eC1zdGFi
bGUtcnQuZ2l0L2xvZy8/aD12NC45LXJ0Jm9mcz0zMTIwCj4gCj4gSSd2ZSBpZGVudGlmaWVkIHRo
YXQgdGhlIGNvZGUgYXQgdGFnIHY0LjkuMTI2IGlzICJnb29kIiBhbmQgdGhlCj4gY29kZSBhdCB0
YWcgdjQuOS4xMjcgaXMgImJhZCIuCihJIHRoZW4gbmFycm93ZWQgaXQgZG93biB0byB0aGF0IHNw
ZWNpZmljIGNvbW1pdC4pCgpUbyByZWl0ZXJhdGUsIHRoZXJlIGlzIHByb2JhYmx5IG5vIHByb2Js
ZW0gd2l0aCBzdGFuZGFyZCB1c2FnZSBvZiB0aGUgCmRyaXZlcnMgYXMgcGFydCBvZiBMaW51eC4K
CkJ1dCBpbiB0aGlzIHBhcnRpY3VsYXIgbm9uLXN0YW5kYXJkLWVkZ2UtY2FzZS11c2FnZSwgdGhl
cmUgc2VlbXMgdG8gYmUgCnNvbWUgdW5mb3J0dW5hdGUgaW50ZXJhY3Rpb24gYmV0d2VlbiB0aGUg
bWVpIGRyaXZlciBwb3dlciBtYW5hZ2VtZW50IApjaGFuZ2UgYW5kIGxpbmstbG9zcyBpbiBvbmJv
YXJkIGUxMDAwZSwgYW5kIEknbSB0cnlpbmcgdG8gZmlndXJlIG91dCB0aGUgCmNhdXNlIGFuZCBo
b3BlZnVsbHkgYSBmaXgvd29ya2Fyb3VuZCAob3IgYXQgbGVhc3Qgb25lIGxlc3Mgc2VyaW91cyB0
aGFuIApkaXNhYmxpbmcgcG93ZXIgbWFuYWdlbWVudCBlbnRpcmVseSkuCgpTb21lIG1vcmUgY29u
dGV4dCBmcm9tIG15IG9yaWdpbmFsIGVtYWlsOgo+IEknbSB1c2luZyBhIHN5c3RlbSB3aXRoIGFu
IGUxMDAwZSBuZXR3b3JrIGRyaXZlciB3aGljaCBoYXMgYmVlbiBwYXRjaGVkIAo+IHRvIGJ5cGFz
cyB0aGUgcmVndWxhciBMaW51eCBuZXR3b3JrIHN0YWNrIChiZWNhdXNlIGl0IGNhbiBnZXQgY2Fs
bGVkIAo+IGZyb20gYSBYZW5vbWFpIFJUIGNvbnRleHQsIGFtb25nIG90aGVyIHJlYXNvbnMgLS0g
YWx0aG91Z2ggaW4gbXkgY2FzZSAKPiBJJ20gbm90IGRvaW5nIHRoYXQpLiAgVGhlIGNvbXBsZXRl
IHNvdXJjZSBmb3IgdGhlIHBhdGNoZWQgdmVyc2lvbiBvZiAKPiB0aGUgY29kZSBjYW4gYmUgZm91
bmQgaGVyZToKPiAgICAgCj4gaHR0cHM6Ly9naXRodWIuY29tL3JpYmFsZGEvZXRoZXJjYXQvYmxv
Yi9tYXN0ZXIvZGV2aWNlcy9lMTAwMGUvbmV0ZGV2LTQuOS1ldGhlcmNhdC5jCj4gKFRoZXJlIGFy
ZSBzb21lIG1pbm9yIGNoYW5nZXMgdG8gb3RoZXIgZmlsZXMsIGJ1dCB0aGUgbWFqb3JpdHkgb2Yg
Cj4gY2hhbmdlcyBhcmUgb25seSB0byB0aGlzIGZpbGUuICBZb3UgY2FuIHNlZSBqdXN0IHRoZSBj
aGFuZ2VzIGF0IAo+IGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL3VlY2FzbS81ZTM2YTE1YmRhNmZm
ZDUzMDc5MzQ0ZmM0NDNkY2M1Zi9yZXZpc2lvbnMgCj4gLikKPiAKPiBJdCB3YXMgb3JpZ2luYWxs
eSBiYXNlZCBvbiB0aGUgaW4ta2VybmVsIGUxMDAwZSBkcml2ZXIgYXMgb2YgTGludXggCj4gNC45
LjY1LiAgKEknbSBub3QgdGhlIHBlcnNvbiB3aG8gb3JpZ2luYWxseSBtYWRlIHRoZSBwYXRjaGVz
LCBidXQgSSBhbSAKPiB0aGUgcGVyc29uIHdobyByZWJhc2VkIHRoZW0gdG8ga2VybmVsIDQuOSBh
bmQgSSdtIHRoZSBvbmUgdHJ5aW5nIHRvIAo+IG1haW50YWluIHRoZW0gZm9yIG5ld2VyIGtlcm5l
bCB2ZXJzaW9ucy4gIFRob3VnaCBJJ20gYWxzbyBub3QgdGhlIAo+IHBlcnNvbiB3aG8gbWFkZSB0
aGF0IGdpdGh1YiByZXBvLikKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
