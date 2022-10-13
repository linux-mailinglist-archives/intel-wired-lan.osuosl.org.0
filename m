Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A26EB5FD479
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Oct 2022 08:06:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 533CB83E92;
	Thu, 13 Oct 2022 06:06:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 533CB83E92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665641182;
	bh=Vt1uIhsTxBWbAW0ks6OA/Eab0JDpmDTSXdig7Gnx7Vg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=quK07lv6sMVVGPmYA6Pz6hsOOntojPe1xp8BPaaj/Hg/qP6gLf1DCeD5rzrx8l2MX
	 CGGvXsKMwbwl5Xm6ACrzKGfHn4rvZCdcJ2nHhKAfuyxJY+vS4D8AwgMnpkVIGWzt1m
	 3Mn9yOzmcMQArsrzwVhLAWJUMru03WoQM43esAmsThmpC2VEQ/HXNwJy0vI/aWNFdF
	 aeCgt+qvYU5KJTtbCM5CEqEw8D/98HsJHcTC6KKg0bzrCRHxSGwKX4AIt8vDx7fj7G
	 pwOpaGSnMGwyRbT0K7M0c+K6g04+/t7GDYJ9APqy7dAGN7CCT1Q2W2em0fXxzg+at4
	 yFvAz57KYj3XQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u0yZRBzTllxS; Thu, 13 Oct 2022 06:06:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2834E83E8A;
	Thu, 13 Oct 2022 06:06:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2834E83E8A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 07EFC1BF86D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 06:06:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D62F1402E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 06:06:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D62F1402E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 58S4-RaXHTvM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Oct 2022 06:06:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DC6D401AD
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0DC6D401AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Oct 2022 06:06:13 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aeee3.dynamic.kabel-deutschland.de
 [95.90.238.227])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C078D61EA1930;
 Thu, 13 Oct 2022 08:06:10 +0200 (CEST)
Message-ID: <85a80602-5791-3440-710f-19b645788c7f@molgen.mpg.de>
Date: Thu, 13 Oct 2022 08:06:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>
References: <20221012234128.6703-1-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20221012234128.6703-1-arkadiusz.kubalewski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH next v6] ice: use GNSS subsystem
 instead of TTY
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

RGVhciBBcmthZGl1c3osIGRlYXIgS2Fyb2wsCgoKVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCgpB
bSAxMy4xMC4yMiB1bSAwMTo0MSBzY2hyaWViIEFya2FkaXVzeiBLdWJhbGV3c2tpOgoKW+KApl0K
Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9l
dGhlcm5ldC9pbnRlbC9pY2UucnN0IGIvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2RldmljZV9k
cml2ZXJzL2V0aGVybmV0L2ludGVsL2ljZS5yc3QKPiBpbmRleCBkYzJlNjBjZWQ5MjcuLjE4YzZj
MDY2MDM3NSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvZGV2aWNlX2Ry
aXZlcnMvZXRoZXJuZXQvaW50ZWwvaWNlLnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vbmV0d29y
a2luZy9kZXZpY2VfZHJpdmVycy9ldGhlcm5ldC9pbnRlbC9pY2UucnN0Cj4gQEAgLTkwMywxMyAr
OTAzLDEzIEBAIFRvIGVuYWJsZS9kaXNhYmxlIFVEUCBTZWdtZW50YXRpb24gT2ZmbG9hZCwgaXNz
dWUgdGhlIGZvbGxvd2luZyBjb21tYW5kOjoKPiAgIAo+ICAgR05TUyBtb2R1bGUKPiAgIC0tLS0t
LS0tLS0tCj4gLUFsbG93cyB1c2VyIHRvIHJlYWQgbWVzc2FnZXMgZnJvbSB0aGUgR05TUyBtb2R1
bGUgYW5kIHdyaXRlIHN1cHBvcnRlZCBjb21tYW5kcy4KPiAtSWYgdGhlIG1vZHVsZSBpcyBwaHlz
aWNhbGx5IHByZXNlbnQsIGRyaXZlciBjcmVhdGVzIDIgVFRZcyBmb3IgZWFjaCBzdXBwb3J0ZWQK
PiAtZGV2aWNlIGluIC9kZXYsIHR0eUdOU1NfPGRldmljZT46PGZ1bmN0aW9uPl8wIGFuZCBfMS4g
Rmlyc3Qgb25lIChfMCkgaXMgUlcgYW5kCj4gLXRoZSBzZWNvbmQgb25lIGlzIFJPLgo+IC1UaGUg
cHJvdG9jb2wgb2Ygd3JpdGUgY29tbWFuZHMgaXMgZGVwZW5kZW50IG9uIHRoZSBHTlNTIG1vZHVs
ZSBhcyB0aGUgZHJpdmVyCj4gLXdyaXRlcyByYXcgYnl0ZXMgZnJvbSB0aGUgVFRZIHRvIHRoZSBH
TlNTIGkyYy4gUGxlYXNlIHJlZmVyIHRvIHRoZSBtb2R1bGUKPiAtZG9jdW1lbnRhdGlvbiBmb3Ig
ZGV0YWlscy4KPiArUmVxdWlyZXMga2VybmVsIGNvbXBpbGVkIHdpdGggQ09ORklHX0dOU1M9eSBv
ciBDT05GSUdfR05TUz1tLgo+ICtBbGxvd3MgdXNlciB0byByZWFkIG1lc3NhZ2VzIGZyb20gdGhl
IEdOU1MgaGFyZHdhcmUgbW9kdWxlIGFuZCB3cml0ZSBzdXBwb3J0ZWQKPiArY29tbWFuZHMuIElm
IHRoZSBtb2R1bGUgaXMgcGh5c2ljYWxseSBwcmVzZW50LCBhIEdOU1MgZGV2aWNlIGlzIHNwYXdu
ZWQ6Cj4gKy9kZXYvZ25zczxpZD4uCgpQbGVhc2UgbWFyayB0aGlzIHVwIGFzIGNvZGUgKG1vbm9z
cGFjZSkgd2l0aCBgYC9kZXYvZ25zczxpZD5gYC4KClBsZWFzZSBhbHNvIGFkZCBhIGJsYW5rIGxp
bmUgYmV0d2VlbiBwYXJhZ3JhcGhzLgoKPiArVGhlIHByb3RvY29sIG9mIHdyaXRlIGNvbW1hbmQg
aXMgZGVwZW5kZW50IG9uIHRoZSBHTlNTIGhhcmR3YXJlIG1vZHVsZSBhcyB0aGUKPiArZHJpdmVy
IHdyaXRlcyByYXcgYnl0ZXMgYnkgdGhlIEdOU1Mgb2JqZWN0IHRvIHRoZSByZWNlaXZlciB0aHJv
dWdoIGkyYy4gUGxlYXNlCj4gK3JlZmVyIHRvIHRoZSBoYXJkd2FyZSBHTlNTIG1vZHVsZSBkb2N1
bWVudGF0aW9uIGZvciBjb25maWd1cmF0aW9uIGRldGFpbHMuCgpb4oCmXQoKCktpbmQgcmVnYXJk
cywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
