Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1169B517D49
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 May 2022 08:26:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D31F416BF;
	Tue,  3 May 2022 06:26:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rTdoxT0lE-Bw; Tue,  3 May 2022 06:26:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA61E410DB;
	Tue,  3 May 2022 06:26:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6239A1BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 06:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C453600D1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 06:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PtbeGjOxqCHW for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 May 2022 06:26:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4622260FCB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 May 2022 06:26:29 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aed95.dynamic.kabel-deutschland.de
 [95.90.237.149])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 6D80161EA1930;
 Tue,  3 May 2022 08:26:25 +0200 (CEST)
Message-ID: <8bf04198-7bad-d5b9-598a-2011b42ac107@molgen.mpg.de>
Date: Tue, 3 May 2022 08:26:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20220502131556.349753-1-sasha.neftin@intel.com>
 <1dc52831-b539-1add-c966-53e415ad7f04@molgen.mpg.de>
 <e0c98a14-db37-25bf-0993-efa3893cd4d3@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <e0c98a14-db37-25bf-0993-efa3893cd4d3@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Enable the GPT clock
 before sending message to the CSME
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
Cc: loic.yhuel@gmail.com, Kai-Heng Feng <kai.heng.feng@canonical.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpBbSAwMy4wNS4yMiB1bSAwNToxNCBzY2hyaWViIE5lZnRpbiwgU2FzaGE6
Cj4gT24gNS8yLzIwMjIgMTg6NTEsIFBhdWwgTWVuemVsIHdyb3RlOgoKPj4gQW0gMDIuMDUuMjIg
dW0gMTU6MTUgc2NocmllYiBTYXNoYSBOZWZ0aW46Cj4+Cj4+IFlvdSBjb3VsZCByZW1vdmUgdGhl
IGFydGljbGVzICp0aGUqIGZyb20gdGhlIHN1bW1hcnkgdG8gbWFrZSBpdCBzaG9ydGVyLgoKQXMg
eW91IGFja2VkIGFsbCB0aGUgb3RoZXIgY29tbWVudHMsIEkganVzdCB3YW50IHRvIG1ha2Ugc3Vy
ZSwgeW91IHNhdyAKdGhpcyBvbmUuCgo+Pj4gRW5hYmxlIHRoZSBkeW5hbWljIEdQVCBjbG9jay4g
VGhlIGNsb2NrIGlzIGFsd2F5cyB0aWNraW5nIGlzIHRoZSAKPj4+IGd1YXJhbnRlZQo+Pj4gQ1NN
RSByZWNlaXZlIHRoZSBIMk1FIG1lc3NhZ2UgYW5kIGV4aXQgZnJvbSB0aGUgRE1vZmYgc3RhdGUu
Cj4+PiBUaGlzIGNsb2NrIGNsZWFyZWQgdXBvbiBIVyBpbml0aWFsaXphdGlvbiAoRDMgLT4gRDAg
dHJhbnNpdGlvbikuCj4+Cj4+IFBsZWFzZSBkbyBub3QgYnJlYWsgdGhlIGxpbmUsIGp1c3QgYmVj
YXVzZSBhIHNlbnRlbmNlIGVuZHMuCj4+Cj4+ICppcyogY2xlYXJlZD8KPiBvay4KPj4KPj4gUGxl
YXNlIHN0YXJ0IHRoZSBjb21taXQgbWVzc2FnZSBieSBkZXNjcmliaW5nIHRoZSBwcm9ibGVtLCBh
bmQgYWxzbyAKPj4gZ2l2ZSBpbnN0cnVjdGlvbnMgaG93IHRvIHJlcHJvZHVjZSBpdC4KPiBwbGVh
c2UsIHJlZmVyIHRvIHRoZSBsaW5rIGJlbG93IChidWd6aWxsYSkKCkkgc2F3IHRoYXQgYnV0IG5v
LCBhcyBhbHdheXMgY29tbWl0IG1lc3NhZ2VzIG5lZWQgdG8gY29udGFpbiB0aGUgCm1vdGl2YXRp
b24gYW5kIGFsc28gbmVlZCB0byBiZSBzb21lIGtpbmQgb2Ygc2VsZi1jb250YWluZWQuIFJldmll
d2VycyAKY2FuICpub3QqIGJlIGV4cGVjdGVkIHRvIHJlYWQgdGhyb3VnaCBzZXZlcmFsIGNvbW1l
bnRzIGluIGEgYnVnIHJlcG9ydCwgCmFuZCBwZW9wbGUgbG9va2luZyBhdCBhIGNvbW1pdCBhcmUg
bm90IGFsd2F5cyBvbmxpbmUsIGFuZCBXZWIgc2VydmljZSAKYXJlIG5vdCBhbHdheXMgb25saW5l
LiBTbywgYSBzdW1tYXJ5IG9mIHRoZSBpc3N1ZSBzaG91bGQgYmUgcHJvdmlkZWQuCgo+Pj4gRml4
ZXM6IDNlNTVkMjMxNzE2ZSAoImUxMDAwZTogQWRkIGhhbmRzaGFrZSB3aXRoIHRoZSBDU01FIHRv
IHN1cHBvcnQgczBpeCIpCgpUaGUgYnVnIHJlcG9ydCBhbHNvIGRvZXMgbm90IG1lbnRpb24gYW55
dGhpbmcgYWJvdXQgYSByZWdyZXNzaW9uLiBEaWQgaXQgCm5ldmVyIHdvcms/Cgo+Pj4gQnVnemls
bGE6IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjE0ODIxCj4+
PiBTaWduZWQtb2ZmLWJ5OiBTYXNoYSBOZWZ0aW4gPHNhc2hhLm5lZnRpbkBpbnRlbC5jb20+Cj4+
PiAtLS0KPj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYyB8
IDQgKysrKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgCj4+
PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+Pj4gaW5kZXgg
ZmEwNmY2OGM4YzgwLi5lMjlhNzE4NDY5ZWUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMKPj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+Pj4gQEAgLTY0OTQsNiArNjQ5NCwxMCBAQCBzdGF0
aWMgdm9pZCBlMTAwMGVfczBpeF9leGl0X2Zsb3coc3RydWN0IAo+Pj4gZTEwMDBfYWRhcHRlciAq
YWRhcHRlcikKPj4+IMKgwqDCoMKgwqAgaWYgKGVyMzIoRldTTSkgJiBFMTAwMF9JQ0hfRldTTV9G
V19WQUxJRCAmJgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGh3LT5tYWMudHlwZSA+PSBlMTAwMF9w
Y2hfYWRwKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgLyogS2VlcCB0aGUgZ3B0X2Nsa19lbmFibGVf
ZCBjbG9jayBmb3IgQ1NNRSovCj4+Cj4+IE1pc3Npbmcgc3BhY2UgYmVmb3JlIHRoZSBjbG9zaW5n
ICovLgo+IFRoYW5rcyAtIHdpbGwgZml4IGluIHYyCj4+Cj4+IFdoeSBpcyBgZ3B0X2Nsa19lbmFi
bGVfZGAgc3BlbGxlZCB0aGF0IHdheT8KPiBJIHRvb2sgaXQgZnJvbSBIVyBkZXNpZ24uIEkgd2ls
bCBzcGVsbCBpdCBhcyAnR1BUIGNsb2NrJyAobW9yZSBjbGVhcmx5KS4KPj4KPj4+ICvCoMKgwqDC
oMKgwqDCoCBtYWNfZGF0YSA9IGVyMzIoRkVYVE5WTSk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgbWFj
X2RhdGEgfD0gQklUKDMpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGV3MzIoRkVYVE5WTSwgbWFjX2Rh
dGEpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC8qIFJlcXVlc3QgTUUgdW5jb25maWd1cmUgdGhl
IGRldmljZSBmcm9tIFMwaXggKi8KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBtYWNfZGF0YSA9IGVy
MzIoSDJNRSk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbWFjX2RhdGEgJj0gfkUxMDAwX0gyTUVf
U1RBUlRfRFBHOwoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
