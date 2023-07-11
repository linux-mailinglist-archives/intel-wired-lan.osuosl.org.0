Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6528274F2F9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 17:09:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1D1C831AC;
	Tue, 11 Jul 2023 15:09:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1D1C831AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689088142;
	bh=938O0n5IeNbWxD8QuuIxPj+oy3l8fswbuOln51cc8gw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=UvG0lI3d1Wyq//RhzxcCFteWcbXKFc8i8RDPbmnkA/h5n6Lo4GtLJlZDZ/1FM0QNG
	 GuqABur1baW3eZKBaO8TDGKjiQ8zBoSPlZS1zeSw16zw6qs4G2ylMwQtIj2iisnuOL
	 DNNymBgphgff4mJKYupDf0udZoWVmvEAETgjUj77+4+qMjjX+exPNud2rnGnppiqG1
	 jMt8qn2KJvfwOh5c7jFZ170hrXap+GAeaB72CN7vxzZnb7HqoKcUuH9iv0Xy4ya7ap
	 btgvAkYmDGPbH6oa3WSGodMyjkvef3MOioRGxZBZXXxbbkR+WzftXMM0fXD0hYQI/Q
	 6vRd+lMJwJOzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yACuxZ8QqrPH; Tue, 11 Jul 2023 15:09:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F665813F1;
	Tue, 11 Jul 2023 15:09:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F665813F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 698C31BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 09:09:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4261681358
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 09:09:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4261681358
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YmRxM4e4LoDw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 09:09:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B39B81330
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by smtp1.osuosl.org (Postfix) with SMTP id 1B39B81330
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 09:09:03 +0000 (UTC)
Received: from [172.30.11.106] (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPSA id 01E8E6062ABEE; 
 Tue, 11 Jul 2023 17:08:51 +0800 (CST)
Message-ID: <8e29ce60-f194-877c-e45f-7d1f350c5a43@nfschina.com>
Date: Tue, 11 Jul 2023 17:08:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
X-MD-Sfrom: yunchuan@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: yunchuan <yunchuan@nfschina.com>
In-Reply-To: <da09fbe5-17e6-bea4-80dd-be4a0394541e@intel.com>
X-Mailman-Approved-At: Tue, 11 Jul 2023 15:08:56 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 06/10] ice: remove
 unnecessary (void*) conversions
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMy83LzExIDE2OjM1LCBQcnplbWVrIEtpdHN6ZWwgd3JvdGU6Cgo+IE9uIDcvMTAvMjMg
MDg6NDEsIFN1IEh1aSB3cm90ZToKPj4gRnJvbTogd3V5Y2ggPHl1bmNodWFuQG5mc2NoaW5hLmNv
bT4KPj4KPj4gUG9pbnRlciB2YXJpYWJsZXMgb2Ygdm9pZCAqIHR5cGUgZG8gbm90IHJlcXVpcmUg
dHlwZSBjYXN0Lgo+Cj4gWW91IHNob3VsZCByYXRoZXIgdGVsbCB3aGF0IGFyZSB5b3UgZG9pbmcg
aGVyZSwgcGVyaGFwczoKPiBEcm9wIGNhc3RzIG9uIGRpbS0+cHJpdiBhY2Nlc3MsIHdoaWNoIGlz
ICJ2b2lkICoiLgo+ClRoYW5rcyBmb3IgeW91IGFkdmljZSEKU2hvdWxkIEkgcmVzZW5kIHRoaXMg
cGF0Y2ggdG8gbW9kaWZ5IHRoaXM/Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IHd1eWNoIDx5dW5jaHVh
bkBuZnNjaGluYS5jb20+Cj4KPiBZb3UgaGF2ZSB0byBwcm92aWRlIHlvdXIgb3duIFNpZ24tb2Zm
IHdoZW4gc2VuZGluZyBwYXRjaGVzIG9mIG90aGVyIGRldnMuCj4KPiBBbHNvLCBwcmVmZXJhYmxl
IGZvcm1hdCBpcyAiTmFtZSBTdXJuYW1lIDxlbWFpbD4iLCBub3QgYSAKPiBuaWNrbmFtZS9jb3Jw
by1pZC4KPgpTbyBzb3JyeSBmb3IgdGhpcyAsIEkgaGF2ZSBhbHJlYWR5IGNoYW5nZWQgdGhpcyB0
byBteSBmdWxsIG5hbWUgIld1IApZdW5jaHVhbiIuCgpXdSBZdW5jaHVhbgoKPj4gLS0tCj4+IMKg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIHwgNCArKy0tCj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyAKPj4g
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+PiBpbmRleCA5Mzk3
OWFiMThiYzEuLjUyYWYzYmQ4MDg2OCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9tYWluLmMKPj4gQEAgLTYyNDIsNyArNjI0Miw3IEBAIHN0YXRpYyB2b2lkIGlj
ZV90eF9kaW1fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgCj4+ICp3b3JrKQo+PiDCoMKgwqDCoMKg
IHUxNiBpdHI7Cj4+IMKgIMKgwqDCoMKgwqAgZGltID0gY29udGFpbmVyX29mKHdvcmssIHN0cnVj
dCBkaW0sIHdvcmspOwo+PiAtwqDCoMKgIHJjID0gKHN0cnVjdCBpY2VfcmluZ19jb250YWluZXIg
KilkaW0tPnByaXY7Cj4+ICvCoMKgwqAgcmMgPSBkaW0tPnByaXY7Cj4+IMKgIMKgwqDCoMKgwqAg
V0FSTl9PTihkaW0tPnByb2ZpbGVfaXggPj0gQVJSQVlfU0laRSh0eF9wcm9maWxlKSk7Cj4+IMKg
IEBAIC02MjYyLDcgKzYyNjIsNyBAQCBzdGF0aWMgdm9pZCBpY2VfcnhfZGltX3dvcmsoc3RydWN0
IAo+PiB3b3JrX3N0cnVjdCAqd29yaykKPj4gwqDCoMKgwqDCoCB1MTYgaXRyOwo+PiDCoCDCoMKg
wqDCoMKgIGRpbSA9IGNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgZGltLCB3b3JrKTsKPj4gLcKg
wqDCoCByYyA9IChzdHJ1Y3QgaWNlX3JpbmdfY29udGFpbmVyICopZGltLT5wcml2Owo+PiArwqDC
oMKgIHJjID0gZGltLT5wcml2Owo+PiDCoCDCoMKgwqDCoMKgIFdBUk5fT04oZGltLT5wcm9maWxl
X2l4ID49IEFSUkFZX1NJWkUocnhfcHJvZmlsZSkpOwo+Cj4gQ29kZSBwZXItc2UgbG9va3Mgb2sK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
