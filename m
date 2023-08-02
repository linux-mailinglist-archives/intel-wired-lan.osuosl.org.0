Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B5176C6D5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 09:30:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8654281FDE;
	Wed,  2 Aug 2023 07:30:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8654281FDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690961430;
	bh=GyvndtofQaBLwxdnnzVKq2iegL67IdWGVVU+/SILvkw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SEXduoVmd+bSz+yIRPXcOcHRwMTjUN6P1TKIpk/wgdHVj4B91Ue21ghGCDiOpljR0
	 7o0Nw+XRY2lENbewDZpK6X3HZzSJZlp/ozng1WbP7g8DYn58SjcOubXcoRVshYSs8A
	 LHb9NjM2KZu/iR+s4Vorx39BsoFe7JJu3ynWrJYx4ksHJCloCwzHF8mHxvjoJkoVGT
	 u+YVv9TW5SuuSzJ18J8PnIwicVSTM4xWBZIOVKQxUmlKzrBVRGNKXkqlArzEdsuKnl
	 s3WlEshpGJOQ41tOsuyFJOi9zBuA0Xsnx1i9T0n3aHPFEUbWxT4gUenHch5ufkVsXT
	 KqdXidxmgUfvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xvs8gYB2ZjQq; Wed,  2 Aug 2023 07:30:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5237181EF2;
	Wed,  2 Aug 2023 07:30:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5237181EF2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33C921BF360
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:30:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6A3E80DC3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:30:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6A3E80DC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PvbGY8fyx3Kq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 07:30:05 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3382C80CE6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:30:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3382C80CE6
Received: from [192.168.0.2] (ip5f5ae98d.dynamic.kabel-deutschland.de
 [95.90.233.141])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 3099F61E5FE01;
 Wed,  2 Aug 2023 09:29:43 +0200 (CEST)
Message-ID: <d492b7a6-75a4-2300-2eae-b9f73be59461@molgen.mpg.de>
Date: Wed, 2 Aug 2023 09:29:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20230802065341.3545102-1-aleksandr.loktionov@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230802065341.3545102-1-aleksandr.loktionov@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] i40e: add tracepoints for
 nvmupdate troubleshooting
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
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBBbGVrc2FuZHIsCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgoKQW0gMDIuMDguMjMg
dW0gMDg6NTMgc2NocmllYiBBbGVrc2FuZHIgTG9rdGlvbm92Ogo+IEltcHJvdmUgbnZtdXBkYXRl
IHRyb3VibGVzaG9vdGluZyB3aXRoIGJwZnRyYWNlIHV0aWxpdHkuCj4gQWRkICdzdGFibGUnIHN0
YXRpYyB0cmFjZXBvaW50cyB0byBkZWNvZGUgbnZtdXBkYXRlIGNvbW1hbmRzIGNvbXBhdGlibGUK
PiBldmVuIGZvciBmdXR1cmUgZHJpdmVyIHZlcnNpb25zLgo+IFJlbW92ZSAnc3RhdGljJyBmcm9t
IGVlcHJvbSBmdW5jdGlvbnMgZGVjbGFyYXRpb25zLCBtYWtlIHRoZW0gcHVibGljCj4gdG8gZW5h
YmxlIGR5bmFtaWMga2VybmVsIHRyYWNpbmcgYW5kIHByb2ZpbGluZy4KClNvbWUgcGVyc29uYWwg
cHJlZmVyZW5jZSwgSeKAmWQgYWRkIGEgYmxhbmsgbGluZSBiZXR3ZWVuIHBhcmFncmFwaHMgb3Ig
CmF2b2lkIHRoZSBsaW5lIGJyZWFrIGp1c3QgYmVjYXVzZSBhIHNlbnRlbmNlIGVuZHMuCgpBbHNv
LCBpdOKAmWQgYmUgZ3JlYXQsIGlmIHlvdSBhZGRlZCB0aGUgY29tbWFuZCBob3cgdG8gbGlzdCB0
aGUgbmV3IAp0cmFjZXBvaW50cyBhbmQgb25lIGV4YW1wbGUgZm9yIHRyYWNpbmcgb25lIG9mIHRo
ZSBuZXcgdHJhY2Vwb2ludHMuCgo+IFNpZ25lZC1vZmYtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3Yg
PGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmggICAgICAgIHwgICA1ICsKPiAgIC4uLi9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYyAgICB8ICAzMCArKy0KPiAgIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgICB8ICAyMCArLQo+ICAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3RyYWNlLmggIHwgMjEyICsrKysrKysrKysrKysr
KysrKwo+ICAgNCBmaWxlcyBjaGFuZ2VkLCAyNTYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25z
KC0pCgpb4oCmXQoKCktpbmQgcmVnYXJkcywKClBhdWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
