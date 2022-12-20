Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6505651F5C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 11:59:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFA7481D9F;
	Tue, 20 Dec 2022 10:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFA7481D9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671533949;
	bh=hU/1GKbjNHur7wT9r0Ray139aLjpJ/wp3wLKFvj4y40=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K3Fmu01GrJ8QqWT0pju2VAfnVYU5fj8de5G3raffRkH3GUG0lOuOVj6npWF2l5Eax
	 /zIbso8rjDOdbdIRoD5YadfjhfqIMxDspI5hvktuKTQn/25IMSHAHtjn/fOFBlrwln
	 ydg9auTdQj0QypMELNbaUMjtivjm2LtGpBKj4UckqrjeRPsSD5hvglMYyhczP63ofo
	 D+2Dl1pXyotOmiQi2d7hoB1av7Ga8Dl26DcVsH46nigUtmWkSPlmo3eSbWSJ1YwS2e
	 mZsQZjaZQMX6ZjNdznVFpL1IMeW7AwJ4+/nkk0V0fEuOalYE04/S9JXsd1gEzih7qr
	 Iz56IOOFha2sQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jwulrVYpI_xu; Tue, 20 Dec 2022 10:59:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAA3D81D5A;
	Tue, 20 Dec 2022 10:59:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AAA3D81D5A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E18F1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 10:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4AFA7409AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 10:59:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AFA7409AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KNnHrzM4lHMK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 10:59:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F54B4095F
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F54B4095F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 10:59:00 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EEA5761CCD7B0;
 Tue, 20 Dec 2022 11:58:57 +0100 (CET)
Message-ID: <6a52b4d5-ff5a-da18-b32d-3cd02bfa5a93@molgen.mpg.de>
Date: Tue, 20 Dec 2022 11:58:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
References: <20221220094752.1010695-1-mateusz.palczewski@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20221220094752.1010695-1-mateusz.palczewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] e1000e: Fix TSO not being
 disabled on i219-LM card
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

RGVhciBNYXRldXN6LAoKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLiBJbiB0aGUgY29tbWl0IG1l
c3NhZ2Ugc3VtbWFyeSwgeW91IGNvdWxkIHdyaXRlOgoKPiBEaXNhYmxlIFRTTyBvbiBpMjE5LUxN
IGNhcmQgdG8gaW5jcmVhc2Ugc3BlZWQKCgpBbSAyMC4xMi4yMiB1bSAxMDo0NyBzY2hyaWViIE1h
dGV1c3ogUGFsY3pld3NraToKPiBXaGlsZSB1c2luZyBpMjE5LUxNIGNhcmQgY3VycmVudGx5IGl0
IHdhcyBvbmx5IHBvc3NpYmxlIHRvIGFjaGlldmUKClBsZWFzZSBtZW50aW9uLCB0aGF0IGl04oCZ
cyBhIHJlZ3Jlc3Npb24gaW4gTGludXggNS44LXJjMS4KCj4gYWJvdXQgNjAlIG9mIG1heGltdW0g
c3BlZWQuIFRoaXMgd2FzIGNhdXNlZCBieSBUU08gbm90IGJlaW5nIGRpc2FibGVkCj4gZXZlbiB0
aG91Z2h0IGl0IHNob3VsZCBiZSBvbiB0aGlzIHNwZWNpZmljIGNhcmQuIEZpeCB0aGF0IGJ5IG1v
dmluZyB0aGUKCnMvdGhvdWdodC90aG91Z2gvCgpQbGVhc2UgcmVmZXJlbmNlIHRoZSBkYXRhc2hl
ZXQgc2VjdGlvbiwgd2hlcmUgdGhhdCBpcyBkb2N1bWVudGVkLgoKPiBwYXJ0IG9mIHRoZSBjb2Rl
IHJlc3BvbnNpYmxlIGZvciB0aGlzIG91dHNpZGUgb2YgYWRhcHRlci0+ZmxhZ3MgJiBGTEFHX1RT
T19GT1JDRQo+IGNoZWNrLgoKSG93IGRpZCB5b3UgdGVzdCB0aGUgc3BlZWQgZXhhY3RseT8KCk9u
IGEgRGVsbCBQcmVjaXNpb24gVG93ZXIgMzYyMC8wTVdZUFQsIEJJT1MgMi4yMi4wIDA3LzEzLzIw
MjIsIHdpdGgKCiAgICAgJCBsc3BjaSAtbm4gLXMgMDA6MWYuNgogICAgIDAwOjFmLjYgRXRoZXJu
ZXQgY29udHJvbGxlciBbMDIwMF06IEludGVsIENvcnBvcmF0aW9uIEV0aGVybmV0IApDb25uZWN0
aW9uICgyKSBJMjE5LUxNIFs4MDg2OjE1YjddIChyZXYgMzEpCgpJIGdldCBtb3JlIHRoYW4gNjAg
JSBiYW5kd2lkdGggd2l0aCBpcGVyZjMuCgpgYGAKJCBpcGVyZjMgLWMgaXBlcmYzLm1vbGdlbi5t
cGcuZGUKQ29ubmVjdGluZyB0byBob3N0IGlwZXJmMy5tb2xnZW4ubXBnLmRlLCBwb3J0IDUyMDEK
WyAgNV0gbG9jYWwgMTQxLjE0LjE4LjExOSBwb3J0IDU2MDkyIGNvbm5lY3RlZCB0byAxNDEuMTQu
MjcuMTA5IHBvcnQgNTIwMQpbIElEXSBJbnRlcnZhbCAgICAgICAgICAgVHJhbnNmZXIgICAgIEJp
dHJhdGUgICAgICAgICBSZXRyICBDd25kClsgIDVdICAgMC4wMC0xLjAwICAgc2VjICAgMTAyIE1C
eXRlcyAgIDg1OSBNYml0cy9zZWMgICAgMCAgIDEuMDcgTUJ5dGVzIAoKWyAgNV0gICAxLjAwLTIu
MDAgICBzZWMgIDk4LjcgTUJ5dGVzICAgODI4IE1iaXRzL3NlYyAgICAwICAgMS4xMyBNQnl0ZXMg
CgpbICA1XSAgIDIuMDAtMy4wMCAgIHNlYyAgOTkuOCBNQnl0ZXMgICA4MzcgTWJpdHMvc2VjICAg
IDAgICAxLjEzIE1CeXRlcyAKClsgIDVdICAgMy4wMC00LjAwICAgc2VjICA5OS45IE1CeXRlcyAg
IDgzOCBNYml0cy9zZWMgICAgMCAgIDEuMTMgTUJ5dGVzIAoKWyAgNV0gICA0LjAwLTUuMDAgICBz
ZWMgIDk4LjcgTUJ5dGVzICAgODI4IE1iaXRzL3NlYyAgICAwICAgMS4xMyBNQnl0ZXMgCgpbICA1
XSAgIDUuMDAtNi4wMCAgIHNlYyAgOTkuNyBNQnl0ZXMgICA4MzYgTWJpdHMvc2VjICAgIDAgICAx
LjEzIE1CeXRlcyAKClsgIDVdICAgNi4wMC03LjAwICAgc2VjICA5OS45IE1CeXRlcyAgIDgzOCBN
Yml0cy9zZWMgICAgMCAgIDEuMTMgTUJ5dGVzIAoKWyAgNV0gICA3LjAwLTguMDAgICBzZWMgIDk4
LjUgTUJ5dGVzICAgODI2IE1iaXRzL3NlYyAgICAwICAgMS4xMyBNQnl0ZXMgCgpbICA1XSAgIDgu
MDAtOS4wMCAgIHNlYyAgIDEwMCBNQnl0ZXMgICA4MzggTWJpdHMvc2VjICAgIDAgICAxLjEzIE1C
eXRlcyAKClsgIDVdICAgOS4wMC0xMC4wMCAgc2VjICA5OC44IE1CeXRlcyAgIDgyOSBNYml0cy9z
ZWMgICAgMCAgIDEuMTMgTUJ5dGVzIAoKLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAtIC0gLSAt
IC0gLSAtIC0gLSAtIC0gLQpbIElEXSBJbnRlcnZhbCAgICAgICAgICAgVHJhbnNmZXIgICAgIEJp
dHJhdGUgICAgICAgICBSZXRyClsgIDVdICAgMC4wMC0xMC4wMCAgc2VjICAgOTk2IE1CeXRlcyAg
IDgzNiBNYml0cy9zZWMgICAgMCAgICAgICAgICAgICBzZW5kZXIKWyAgNV0gICAwLjAwLTEwLjAw
ICBzZWMgICA5OTQgTUJ5dGVzICAgODMzIE1iaXRzL3NlYyAKcmVjZWl2ZXIKCmlwZXJmIERvbmUu
CmBgYAoKPiBGaXhlczogZjI5ODAxMDMwYWM2ICgiZTEwMDBlOiBEaXNhYmxlIFRTTyBmb3IgYnVm
ZmVyIG92ZXJydW4gd29ya2Fyb3VuZCIpCj4gU2lnbmVkLW9mZi1ieTogTWF0ZXVzeiBQYWxjemV3
c2tpIDxtYXRldXN6LnBhbGN6ZXdza2lAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIHwgMTAgKysrKysrLS0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gaW5kZXggMDRhY2QxYTk5MmZhLi4y
NGY0Y2NiODJkYzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDBlL25ldGRldi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL25l
dGRldi5jCj4gQEAgLTUzMDcsMTAgKzUzMDcsNiBAQCBzdGF0aWMgdm9pZCBlMTAwMF93YXRjaGRv
Z190YXNrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiAgIAkJCQkJLyogb29wcyAqLwo+ICAg
CQkJCQlicmVhazsKPiAgIAkJCQl9Cj4gLQkJCQlpZiAoaHctPm1hYy50eXBlID09IGUxMDAwX3Bj
aF9zcHQpIHsKPiAtCQkJCQluZXRkZXYtPmZlYXR1cmVzICY9IH5ORVRJRl9GX1RTTzsKPiAtCQkJ
CQluZXRkZXYtPmZlYXR1cmVzICY9IH5ORVRJRl9GX1RTTzY7Cj4gLQkJCQl9Cj4gICAJCQl9Cj4g
ICAKPiAgIAkJCS8qIGVuYWJsZSB0cmFuc21pdHMgaW4gdGhlIGhhcmR3YXJlLCBuZWVkIHRvIGRv
IHRoaXMKPiBAQCAtNTMyNiw2ICs1MzIyLDEyIEBAIHN0YXRpYyB2b2lkIGUxMDAwX3dhdGNoZG9n
X3Rhc2soc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ICAgCQkJaWYgKHBoeS0+b3BzLmNmZ19v
bl9saW5rX3VwKQo+ICAgCQkJCXBoeS0+b3BzLmNmZ19vbl9saW5rX3VwKGh3KTsKPiAgIAo+ICsJ
CQkvKiBEaXNhYmxlIFRTTyBmb3IgaTIxOSwgdG8gYXZvaWQgdHJhbnNmZXIgc3BlZWQgaXNzdWUg
Ki8KClBsZWFzZSByZW1vdmUgdGhlIGNvbW1hLCBhbmQgcGxlYXNlIGVsYWJvcmF0ZSBhbHNvIGlu
IHRoZSBjb21tZW50LgoKPiArCQkJaWYgKGh3LT5tYWMudHlwZSA9PSBlMTAwMF9wY2hfc3B0KSB7
Cj4gKwkJCQkJbmV0ZGV2LT5mZWF0dXJlcyAmPSB+TkVUSUZfRl9UU087Cj4gKwkJCQkJbmV0ZGV2
LT5mZWF0dXJlcyAmPSB+TkVUSUZfRl9UU082Owo+ICsJCQl9Cj4gKwo+ICAgCQkJbmV0aWZfd2Fr
ZV9xdWV1ZShuZXRkZXYpOwo+ICAgCQkJbmV0aWZfY2Fycmllcl9vbihuZXRkZXYpOwoKCktpbmQg
cmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
