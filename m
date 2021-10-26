Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1490D43AD2E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 09:27:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C00A4404EA;
	Tue, 26 Oct 2021 07:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k_U6dsbVGD2H; Tue, 26 Oct 2021 07:27:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C766D404E6;
	Tue, 26 Oct 2021 07:27:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B2531BF30B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 07:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 491DD404E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 07:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6bMP2gL6_qlZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 07:27:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F938404DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 07:27:08 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef5c.dynamic.kabel-deutschland.de
 [95.90.239.92])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 01C9F61E6478B;
 Tue, 26 Oct 2021 09:27:04 +0200 (CEST)
Message-ID: <5e3271cb-ea53-496a-1fd7-341e9c57c3a8@molgen.mpg.de>
Date: Tue, 26 Oct 2021 09:27:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <20211026065112.1366205-1-kai.heng.feng@canonical.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20211026065112.1366205-1-kai.heng.feng@canonical.com>
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Add a delay to let ME
 unconfigure s0ix when DPG_EXIT_DONE is already flagged
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 acelan.kao@canonical.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBLYWktSGVuZywKCgpPbiAyNi4xMC4yMSAwODo1MSwgS2FpLUhlbmcgRmVuZyB3cm90ZToK
CkluIHRoZSBjb21taXQgbWVzc2FnZSBzdW1tYXJ5LCBtYXliZSB3cml0ZToKCj4gZTEwMDBlOiBB
ZGQgMSBzIGRlbGF5IOKApgoKCj4gT24gc29tZSBBREwgcGxhdGZvcm1zLCBEUEdfRVhJVF9ET05F
IGlzIGFsd2F5cyBmbGFnZ2VkIHNvIGUxMDAwZSByZXN1bWUKPiBwb2xsaW5nIGxvZ2ljIGRvZXNu
J3Qgd2FpdCB1bnRpbCBNRSByZWFsbHkgdW5jb25maWd1cmVzIHMwaXguCgpQbGVhc2UgbGlzdCBv
bmUgYnJva2VuIHN5c3RlbS4gVGhlIGxvZyBtZXNzYWdlIHNheXMsIGl04oCZcyBhIGZpcm13YXJl
IApidWcuIFBsZWFzZSBlbGFib3JhdGUuCgo+IFNvIGNoZWNrIERQR19FWElUX0RPTkUgYmVmb3Jl
IGlzc3VpbmcgRVhJVF9EUEcsIGFuZCBpZiBpdCdzIGFscmVhZHkKPiBmbGFnZ2VkLCB3YWl0IGZv
ciAxIHNlY29uZCB0byBsZXQgTUUgdW5jb25maWd1cmUgczBpeC4KCldoZXJlIGRpZCB5b3UgZ2V0
IHRoZSBvbmUgc2Vjb25kIGZyb20/Cgo+IEZpeGVzOiAzZTU1ZDIzMTcxNmUgKCJlMTAwMGU6IEFk
ZCBoYW5kc2hha2Ugd2l0aCB0aGUgQ1NNRSB0byBzdXBwb3J0IFMwaXgiKQo+IEJ1Z3ppbGxhOiBo
dHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIxNDgyMQo+IFNpZ25l
ZC1vZmYtYnk6IEthaS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4KPiAt
LS0KPiB2MjoKPiAgIEFkZCBtaXNzaW5nICJGaXhlczoiIHRhZwo+IAo+ICAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIHwgNyArKysrKysrCj4gICAxIGZpbGUgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2Ux
MDAwZS9uZXRkZXYuYwo+IGluZGV4IDQ0ZTJkYzgzMjhhMjIuLmNkODFiYTAwYTZiYzkgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gQEAgLTY0OTMs
MTQgKzY0OTMsMjEgQEAgc3RhdGljIHZvaWQgZTEwMDBlX3MwaXhfZXhpdF9mbG93KHN0cnVjdCBl
MTAwMF9hZGFwdGVyICphZGFwdGVyKQo+ICAgCXUzMiBtYWNfZGF0YTsKPiAgIAl1MTYgcGh5X2Rh
dGE7Cj4gICAJdTMyIGkgPSAwOwo+ICsJYm9vbCBkcGdfZXhpdF9kb25lOwo+ICAgCj4gICAJaWYg
KGVyMzIoRldTTSkgJiBFMTAwMF9JQ0hfRldTTV9GV19WQUxJRCkgewo+ICsJCWRwZ19leGl0X2Rv
bmUgPSBlcjMyKEVYRldTTSkgJiBFMTAwMF9FWEZXU01fRFBHX0VYSVRfRE9ORTsKPiAgIAkJLyog
UmVxdWVzdCBNRSB1bmNvbmZpZ3VyZSB0aGUgZGV2aWNlIGZyb20gUzBpeCAqLwo+ICAgCQltYWNf
ZGF0YSA9IGVyMzIoSDJNRSk7Cj4gICAJCW1hY19kYXRhICY9IH5FMTAwMF9IMk1FX1NUQVJUX0RQ
RzsKPiAgIAkJbWFjX2RhdGEgfD0gRTEwMDBfSDJNRV9FWElUX0RQRzsKPiAgIAkJZXczMihIMk1F
LCBtYWNfZGF0YSk7Cj4gICAKPiArCQlpZiAoZHBnX2V4aXRfZG9uZSkgewo+ICsJCQllX3dhcm4o
IkRQR19FWElUX0RPTkUgaXMgYWxyZWFkeSBmbGFnZ2VkLiBUaGlzIGlzIGEgZmlybXdhcmUgYnVn
XG4iKTsKCldoYXQgZmlybXdhcmUgZXhhY3RseT8gTWFuYWdlbWVudCBFbmdpbmU/Cgo+ICsJCQlt
c2xlZXAoMTAwMCk7CgpPbmUgc2Vjb25kIGlzIHF1aXRlIGxvbmcuIENhbiBzb21lIGJpdCBiZSBw
b2xsZWQgaW5zdGVhZD8KCj4gKwkJfQo+ICsKPiAgIAkJLyogUG9sbCB1cCB0byAyLjUgc2Vjb25k
cyBmb3IgTUUgdG8gdW5jb25maWd1cmUgRFBHLgo+ICAgCQkgKiBJZiB0aGlzIHRha2VzIG1vcmUg
dGhhbiAxIHNlY29uZCwgc2hvdyBhIHdhcm5pbmcgaW5kaWNhdGluZyBhCj4gICAJCSAqIGZpcm13
YXJlIGJ1Zwo+IAoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
