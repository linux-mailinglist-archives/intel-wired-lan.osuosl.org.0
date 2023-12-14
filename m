Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1261E8130BB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 14:00:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A681343746;
	Thu, 14 Dec 2023 13:00:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A681343746
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702558827;
	bh=8owI+sra9qaXebjddxgnUcunRn5Qiy5nWE0U4n3Kga4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9P8jNJ9/VBnK23Q5+RodLUXZjMXfnDsB3d7KOL+hAJTF7nHayZmp2ygZypCn2Yesx
	 4KGq/0RUsa0cQhlR7AWYUSbuKb0wWP3h1kdObgfZq0vp0I1A9h8rYrflLL5q+Y9NQg
	 gPIk0RcQ9/FbbVvg/iPuS9h/gAg6/h576ijonXe6i4UGSHx4zTsRPivmcxWlwWldqJ
	 xifNCU6rOuvAbSASeqeVz6jFnyi6hmFhAHSaDwet6NbsjzV/6wcb3gt0yb3+2Bpobm
	 ioLAO6XeYoXPOpPsoGyjQqlAh6iLlXqLVGkWG5RUqpAC35z3uIZpfSs2gdtSFnu1fP
	 CkmqTbqEU+N0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XP7SQbGYMCl6; Thu, 14 Dec 2023 13:00:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A987403C0;
	Thu, 14 Dec 2023 13:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4A987403C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E273A1BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 13:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C813283D9B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 13:00:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C813283D9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FMtc1zO_GSGf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 13:00:19 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2143283D9A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 13:00:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2143283D9A
Received: from [141.14.220.40] (g40.guest.molgen.mpg.de [141.14.220.40])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id EF94261E5FE09;
 Thu, 14 Dec 2023 13:59:57 +0100 (CET)
Message-ID: <f5b560ed-783d-49fe-ba51-c4f77e30c479@molgen.mpg.de>
Date: Thu, 14 Dec 2023 13:59:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Kubiak <michal.kubiak@intel.com>
References: <20231212145546.396273-1-michal.kubiak@intel.com>
 <78ecdb9f-25e9-4847-87ed-6e8b44a7c71d@molgen.mpg.de>
 <ZXmwR4s25afUbwz3@localhost.localdomain>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <ZXmwR4s25afUbwz3@localhost.localdomain>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: enable WB_ON_ITR
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
Cc: maciej.fijalkowski@intel.com, emil.s.tantilov@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>, aleksander.lobakin@intel.com,
 intel-wired-lan@lists.osuosl.org, alan.brady@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TGllYmVyIE1pY2hhbCwKCgpBbSAxMy4xMi4yMyB1bSAxNDoyMyBzY2hyaWViIE1pY2hhbCBLdWJp
YWs6Cj4gT24gVHVlLCBEZWMgMTIsIDIwMjMgYXQgMDU6NTA6NTVQTSArMDEwMCwgUGF1bCBNZW56
ZWwgd3JvdGU6Cgo+PiBPbiAxMi8xMi8yMyAxNTo1NSwgTWljaGFsIEt1YmlhayB3cm90ZToKPj4+
IEZyb206IEpvc2h1YSBIYXkgPGpvc2h1YS5hLmhheUBpbnRlbC5jb20+Cj4+Pgo+Pj4gVGVsbCBo
YXJkd2FyZSB0byB3cml0ZWJhY2sgY29tcGxldGVkIGRlc2NyaXB0b3JzIGV2ZW4gd2hlbiBpbnRl
cnJ1cHRzCj4+Cj4+IFNob3VsZCB5b3UgcmVzZW5kLCB0aGUgdmVyYiBpcyBzcGVsbGVkIHdpdGgg
YSBzcGFjZTogd3JpdGUgYmFjay4KPiAKPiBTdXJlLCBJIHdpbGwgZml4IGl0LgoKVGhhbmtzLgoK
Pj4+IGFyZSBkaXNhYmxlZC4gT3RoZXJ3aXNlLCBkZXNjcmlwdG9ycyBtaWdodCBub3QgYmUgd3Jp
dHRlbiBiYWNrIHVudGlsCj4+PiB0aGUgaGFyZHdhcmUgY2FuIGZsdXNoIGEgZnVsbCBjYWNoZWxp
bmUgb2YgZGVzY3JpcHRvcnMuIFRoaXMgY2FuIGNhdXNlCj4+PiB1bm5lY2Vzc2FyeSBkZWxheXMg
d2hlbiB0cmFmZmljIGlzIGxpZ2h0IChvciBldmVuIHRyaWdnZXIgVHggcXVldWUKPj4+IHRpbWVv
dXQpLgo+Pgo+PiBIb3cgY2FuIHRoZSBwcm9ibGVtIGJlIHJlcHJvZHVjZWQgYW5kIHRoZSBwYXRj
aCBiZSB2ZXJpZmllZD8KClvigKZdCgo+IFRvIGJlIGhvbmVzdCwgSSBoYXZlIG5vdGljZWQgdGhl
IHByb2JsZW0gZHVyaW5nIHRoZSBpbXBsZW1lbnRhdGlvbiBvZgo+IEFGX1hEUCBmZWF0dXJlIGZv
ciBJRFBGIGRyaXZlci4gSW4gbXkgc2NlbmFyaW8sIEkgaGFkIDIgVHggcXVldWVzOgo+ICAgLSBy
ZWd1bGFyIExBTiBUeCBxdWV1ZQo+ICAgLSBhbmQgWERQIFR4IHF1ZXVlCj4gYWRkZWQgdG8gdGhl
IHNhbWUgcV92ZWN0b3IgYXR0YWNoZWQgdG8gdGhlIHNhbWUgTkFQSSwgc28gdGhvc2UgMiBUeAo+
IHF1ZXVlcyB3ZXJlIGhhbmRsZWQgaW4gdGhlIHNhbWUgTkFQSSBwb2xsIGxvb3AuCj4gVGhlbiwg
d2hlbiBJIHN0YXJ0ZWQgYSBodWdlIFR4IHplcm8tY29weSB0cmFmaWMgdXNpbmcgQUZfWERQIChv
biB0aGUgWERQCj4gcXVldWUpLCBhbmQsIGF0IHRoZSBzYW1lIHRpbWUsIHRyaWVkIHRvIHhtaXQg
YSBmZXcgcGFja2V0cyB1c2luZyB0aGUgc2Vjb25kCj4gKG5vbi1YRFApIHF1ZXVlIChlLmcuIHdp
dGggc2NhcHkpLCBJIHdhcyBnZXR0aW5nIHRoZSBUeCB0aW1lb3V0IG9uIHRoYXQgcmVndWxhcgo+
IExBTiBUeCBxdWV1ZS4KPiBUaGF0IGlzIHdoeSBJIGRlY2lkZWQgdG8gdXBzdHJlYW0gdGhpcyBm
aXguIFdpdGggZGlzYWJsZWQgd3JpdGViYWNrcywKPiB0aGVyZSBpcyBubyBjaGFuY2UgdG8gZ2V0
IHRoZSBjb21wbGV0aW9uIGRlc2NyaXB0b3IgZm9yIHRoZSBxdWV1ZSB3aGVyZQo+IHRoZSB0cmFm
ZmljIGlzIG11Y2ggbGlnaHRlci4KPiAKPiBJIGhhdmUgbmV2ZXIgdHJpZWQgdG8gcmVwcm9kdWNl
IHRoZSBzY2VuYXJpbyBkZXNjcmliZWQgYnkgSm9zaHVhCj4gaW4gaGlzIG9yaWdpbmFsIHBhdGNo
ICgidW5uZWNlc3NhcnkgZGVsYXlzIHdoZW4gdHJhZmZpYyBpcyBsaWdodCIpLgoKVW5kZXJzdG9v
ZC4gTWF5YmUgeW91IGNvdWxkIGFkZCBhIHN1bW1hcnkgb2YgdGhlIGFib3ZlIHRvIHRoZSBjb21t
aXQgCm1lc3NhZ2Ugb3IganVzdCBjb3B5IGFuZCBwYXN0ZS4gSSBndWVzcywgaXTigJlzIGJldHRl
ciB0aGFuIG5vdGhpbmcuIEFuZCAKdGhhbmsgeW91IGZvciB1cHN0cmVhbWluZyB0aGlzLgoKCktp
bmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
