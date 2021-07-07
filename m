Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A873BE3F5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jul 2021 09:52:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5318C60676;
	Wed,  7 Jul 2021 07:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2YhJtNk0-e3J; Wed,  7 Jul 2021 07:52:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52A6E60665;
	Wed,  7 Jul 2021 07:52:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2040B1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 07:52:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1AD5D40583
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 07:52:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z64RRuDY2Z9Q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jul 2021 07:52:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E9044046A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 07:52:25 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5aedf7.dynamic.kabel-deutschland.de
 [95.90.237.247])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id AC0AA61E64860;
 Wed,  7 Jul 2021 09:52:22 +0200 (CEST)
To: Jacob E Keller <jacob.e.keller@intel.com>
References: <20210701002713.3486336-1-jacob.e.keller@intel.com>
 <2226449e-2c2c-d72b-1bd2-1a44882251fe@molgen.mpg.de>
 <e1a3cb86cb7e43d29b6b5e4663029bfe@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <7c977d1a-3ccb-ef70-388c-59a10af2901a@molgen.mpg.de>
Date: Wed, 7 Jul 2021 09:52:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <e1a3cb86cb7e43d29b6b5e4663029bfe@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [net-next 00/13] ice: implement support for
 PTP on E822 hardware
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

RGVhciBKYWNvYiwKCgpUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuCgpBbSAwNi4wNy4yMSB1bSAy
MTo1MyBzY2hyaWViIEtlbGxlciwgSmFjb2IgRToKCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tCj4+IEZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+Cj4+IFNlbnQ6
IE1vbmRheSwgSnVseSAwNSwgMjAyMSAxMjo0NyBBTQo+PiBUbzogS2VsbGVyLCBKYWNvYiBFIDxq
YWNvYi5lLmtlbGxlckBpbnRlbC5jb20+Cj4+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1
b3NsLm9yZwo+PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW25ldC1uZXh0IDAwLzEz
XSBpY2U6IGltcGxlbWVudCBzdXBwb3J0IGZvciBQVFAgb24KPj4gRTgyMiBoYXJkd2FyZQoKPj4g
QW0gMDEuMDcuMjEgdW0gMDI6Mjcgc2NocmllYiBKYWNvYiBLZWxsZXI6Cj4+PiBFeHRlbmQgdGhl
IGljZSBkcml2ZXIgaW1wbGVtZW50YXRpb24gdG8gc3VwcG9ydCBQVFAgZm9yIHRoZSBFODIyIGJh
c2VkCj4+PiBkZXZpY2VzLgo+Pj4KPj4+IFRoaXMgaW5jbHVkZXMgYSBmZXcgY2xlYW51cCBwYXRj
aGVzLCB0aGF0IGZpeCBzb21lIG1pbm9yIGlzc3VlcyBzcG90dGVkCj4+PiB3aGlsZSBwcmVwYXJp
bmcgdGhlbS4gSW4gYWRkaXRpb24sIHRoZXJlIGFyZSBzb21lIHNsaWdodCByZWZhY3RvcnMgdG8g
ZWFzZQo+Pj4gdGhlIGFkZGl0aW9uIG9mIEU4MjIgc3VwcG9ydCwgZm9sbG93ZWQgYnkgYWRkaW5n
IHRoZSBuZXcgaGFyZHdhcmUKPj4+IGltcGxlbWVudGF0aW9uIGljZV9wdHBfaHcuYy4KPj4+Cj4+
PiBUaGVyZSBhcmUgYSBmZXcgbWFqb3IgZGlmZmVyZW5jZXMgd2l0aCBFODIyIHN1cHBvcnQgY29t
cGFyZWQgdG8gRTgxMAo+Pj4gc3VwcG9ydDoKPj4+Cj4+PiAqKSBUaGUgRTgyMiBQSFkgaXMgYSBi
aXQgZGlmZmVyZW50IGFuZCByZXF1aXJlcyBhIG1vcmUgY29tcGxleAo+Pj4gaW5pdGlhbGl6YXRp
b24gcHJvY2VkdXJlIHRoYXQgcmVxdWlyZXMgZGVsYXlpbmcgdGhlIFBIWSBzdGFydCB1bnRpbCBs
aW5rIGlzCj4+PiB1cAo+Pgo+PiBJdOKAmWQgYmUgZ3JlYXQsIGlmIHlvdSBnYXZlIGNvbmNyZXRl
IG51bWJlcnMuCj4+IAo+IAo+IENvbmNyZXRlIG51bWJlcnMgb24gd2hpY2ggcGFydD8gSSdtIG5v
dCBzdXJlIGlmIHdlIGhhdmUgY29uY3JldGUKPiBudW1iZXJzIG9uIGV2ZXJ5dGhpbmcgaGVyZS4g
Rm9yIHRoZSBjYWxpYnJhdGlvbiBwcm9jZXNzLCBhY2NvcmRpbmcgdG8KPiB0aGUgZGF0YSBzaGVl
dCBJIGhhdmUsIGl0IGluZGljYXRlcyB0aGF0IHVuY2FsaWJyYXRlZCB0aW1lc3RhbXBzCj4gKGku
ZS4gaW4gYnlwYXNzIG1vZGUpIGhhdmUgYW4gZXJyb3Igb2YgdXAgdG8gMSBjbG9jayBjeWNsZSBh
bmQKPiBjYWxpYnJhdGVkIHRpbWVzdGFtcHMgc2hvdWxkIGhhdmUgYW4gZXJyb3Igb2YgbGVzcyB0
aGFuIDEvOHRoIG9mIGEKPiBjbG9jayBjeWNsZS4gSGVyZSBjbG9jayBjeWNsZSByZWZlcnMgdG8g
dGhlIGxlbmd0aCBvZiBvbmUgdGljayBvbiB0aGUKPiBjbG9jayBzb3VyY2UsIGFuZCBlcnJvciBy
ZWZlcnMgdG8gZGlmZmVyZW5jZSBiZXR3ZWVuIGFjdHVhbCBzdGFydCBvZgo+IHJlY2VwdGlvbiBv
ciB0cmFuc21pc3Npb24gdnMgdGltZSBvZiB3aGVuIHRoZSB0aW1zdGFtcCBpcyBjYXB0dXJlZC4g
SQo+IHVuZm9ydHVuYXRlbHkgYW0gbm90IGF0IGFsbCBzdXJlIGhvdyB0aGlzIHdhcyBtZWFzdXJl
ZCBieSB0aGUKPiBoYXJkd2FyZSBmb2xrcy4uLgpUaGFuayB5b3UgZm9yIHRoZSBleHBsYW5hdGlv
bi4gSSBtZWFudCwgaG93IGJpZyB0aGUgZGVsYXkgaXMgdW50aWwgdGhlIApsaW5rIGlzIHVwLgoK
CktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
