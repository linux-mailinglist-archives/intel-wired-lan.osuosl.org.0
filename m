Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC43446295
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Nov 2021 12:20:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 13AEC40179;
	Fri,  5 Nov 2021 11:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d4okVfusVxOI; Fri,  5 Nov 2021 11:20:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F179C40167;
	Fri,  5 Nov 2021 11:20:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 723411BF860
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 11:20:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F2B240167
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 11:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Dtjiii0rhCp for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Nov 2021 11:20:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CC21A400F1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 11:20:44 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae8e7.dynamic.kabel-deutschland.de
 [95.90.232.231])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B6DB861EA1920;
 Fri,  5 Nov 2021 12:20:41 +0100 (CET)
Message-ID: <f3e3b568-c239-fc5e-b30f-63d3c16e8191@molgen.mpg.de>
Date: Fri, 5 Nov 2021 12:20:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
References: <20210823114344.7058-1-jedrzej.jagielski@intel.com>
 <2e3f1249-a62e-3829-a17b-46284174dc29@molgen.mpg.de>
 <DM6PR11MB27311D49882F8D48EF3F9874F08E9@DM6PR11MB2731.namprd11.prod.outlook.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <DM6PR11MB27311D49882F8D48EF3F9874F08E9@DM6PR11MB2731.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix issue when maximum
 queues is exceeded
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
Cc: JaroslawX Gawin <jaroslawx.gawin@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBKZWRyemVqLAoKCk9uIDA1LjExLjIxIDEyOjEyLCBKYWdpZWxza2ksIEplZHJ6ZWogd3Jv
dGU6Cgpb4oCmXQoKPj4gT24gMjMuMDguMjEgMTM6NDMsIEplZHJ6ZWogSmFnaWVsc2tpIHdyb3Rl
Ogo+Pgo+PiBNYXliZSB1c2U6Cj4+Cj4+IGk0MGU6IEhhbmRsZSBjYXNlIG9mIGRlcGxldGVkCgpT
b3JyeSwgSSBkaWRu4oCZdCBmaW5pc2ggdGhhdC4gTWF5YmU6CgppNDBlOiBIYW5kbGUgY2FzZSBv
ZiB1c2luZyBtb3JlIHRoYW4gYXZhaWxhYmxlIHF1ZXVlcwoKPiBJcyB0aGUgdGl0bGUgb2YgdGhl
IHBhdGNoIGNvbm5lY3RlZCB0byB0aGUgbWFpbGluZwo+IHRocmVhZD8gSSBhbSBhZnJhaWQgdGhh
dCBpZiBJIGNoYW5nZSB0aGUgdGl0bGUKPiB0aGUgbWFpbGluZyB0aHJlYWQgd29uJ3QgYmUgY29o
ZXJlbnQuCgpZZXMsIHRoYXQgaXMgd2hhdCBJIG1lYW50LiBJIGd1ZXNzIGlmIHlvdSB0YWcgaXQg
djIsIHRoZSB0b29saW5nIGxpa2UgClBhdGNod29yayBtaWdodCBiZSBhYmxlIHRvIGZpZ3VyZSBp
dCBvdXQuCgo+Pj4gQmVmb3JlIHRoaXMgcGF0Y2ggVkYgaW50ZXJmYWNlIHZhbmlzaGVkIHdoZW4g
bWF4aW11bSBxdWV1ZQo+Pj4gbnVtYmVyIHdhcyBleGNlZWRlZC4gRHJpdmVyIHRyaWVkIHRvIGFk
ZCBuZXh0IHF1ZXVlcyBldmVuCj4+PiBpZiB0aGVyZSB3YXMgbm90IGVub3VnaCBzcGFjZS4gUEYg
c2VudCBpbmNvcnJlY3QgbnVtYmVyIG9mCj4+PiBxdWV1ZXMgdG8gdGhlIFZGIHdoZW4gdGhlcmUg
d2VyZSBub3QgZW5vdWdoIG9mIHRoZW0uCj4+Pgo+Pj4gQWRkIGFuIGFkZGl0aW9uYWwgY29uZGl0
aW9uIGludHJvZHVjZWQgdG8gY2hlY2sKPj4+IGF2YWlsYWJsZSBzcGFjZSBpbiAncXBfcGlsZScg
YmVmb3JlIHByb2NlZWRpbmcuCj4+PiBBbHNvIGFkZCB0aGUgc2VhcmNoIGZvciBmcmVlIHNwYWNl
IGluIFBGIHF1ZXVlIHBhaXIgcGlsZXMuCj4+Cj4+IFBsZWFzZSByZWZsb3cgZm9yIDc1IGNoYXJh
Y3RlcnMgcGVyIGxpbmUuCj4+Cj4+IEhvdyBpcyB0aGUgbmV3IHNlYXJjaCBiZXR0ZXI/Cj4+Cj4+
PiBXaXRob3V0IHRoaXMgcGF0Y2ggVkYgaW50ZXJmYWNlcyBhcmUgbm90IHNlZW4gd2hlbiBhdmFp
bGFibGUKPj4+IHNwYWNlIGZvciBxdWV1ZXMgaGFzIGJlZW4gZXhjZWVkZWQgYW5kIGZvbGxvd2lu
ZyBsb2dzIGFwcGVhcnMKPj4+IHBlcm1hbmVudGx5IGluIGRtZXNnOgo+Pj4gIlVuYWJsZSB0byBn
ZXQgVkYgY29uZmlnICgtMzIpIi4KPj4+ICJWRiA2MiBmYWlsZWQgb3Bjb2RlIDMsIHJldHZhbDog
LTUiCj4+PiAiVW5hYmxlIHRvIGdldCBWRiBjb25maWcgZHVlIHRvIFBGIGVycm9yIGNvbmRpdGlv
biwgbm90IHJldHJ5aW5nIgo+Pgo+PiBQbGVhc2UgYWRkIHRoZSBuZXcgbG9ncy4KPiAKPiBXaGF0
IGxvZ3MgZG8geW91IG1lYW4/CgpZb3VyIHBhdGNoIGFkZHM6CgorCQlkZXZfd2FybigmcGYtPnBk
ZXYtPmRldiwKKwkJCSAiVkYgJWQgcmVxdWVzdGVkICVkIG1vcmUgcXVldWVzLCBidXQgdGhlcmUg
aXMgbm90IGVub3VnaCBmb3IgaXQuXG4iLAorCQkJIHZmLT52Zl9pZCwKKwkJCSByZXFfcGFpcnMg
LSBjdXJfcGFpcnMpOwoKW+KApl0KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
