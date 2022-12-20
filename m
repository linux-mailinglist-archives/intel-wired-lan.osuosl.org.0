Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBE1651BB7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 08:31:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53070818C9;
	Tue, 20 Dec 2022 07:31:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53070818C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671521507;
	bh=ynu/CawuXmu2vnX5qEl6wOqOag2w5v8PVWBmTvTPUqs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BarZOrbCC9qIDWcJBPeZ5BwZ7It7CmwaH8GW5ZRPDjtu+5fCXzMHi1Dka/+6RA/TZ
	 QfLxZymF8+cSbSH0rOuV60sepN6l4rzfnM9+iEw/OFOJT2gTX9NCYbPq4rkHnFYqq/
	 eYffS8a/WQhzilgZ3PvB+o9M8r8j+IqgGS8eCLJM69sRwNVhiE0FmvvRTbRY6FPlxV
	 es0vReYGkxZ8oAs9G/p5L52DWth+ybgLWgW68nPeceK6sWS9JTmInHyx0yXItqZvDK
	 BY30HN+Ri3d5GKLWWQ/WIDEeYNINc0nzjsBGfLZZsTIIzIjLZrIc1lcbCnzs8CDl2j
	 3lPHWQ0mUHC3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b6vCv-hFNQg4; Tue, 20 Dec 2022 07:31:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61E16818C4;
	Tue, 20 Dec 2022 07:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61E16818C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 788111BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 07:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 521D2400E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 07:31:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 521D2400E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TdWFFPeQtzZ9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 07:31:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A8FB400D9
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A8FB400D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 07:31:39 +0000 (UTC)
Received: from [192.168.0.185] (ip5f5aea0a.dynamic.kabel-deutschland.de
 [95.90.234.10])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5A60561CCD7B0;
 Tue, 20 Dec 2022 08:31:36 +0100 (CET)
Message-ID: <a0868876-60a6-047f-f783-3ef9b5690a96@molgen.mpg.de>
Date: Tue, 20 Dec 2022 08:31:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
References: <20221219220546.3683358-1-sergey.temerkhanov@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20221219220546.3683358-1-sergey.temerkhanov@intel.com>
Subject: Re: [Intel-wired-lan] [net-next v3 1/1] ice: Move support DDP code
 out of ice_flex_pipe.c
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

RGVhciBTZXJnZXksCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgoKQW0gMTkuMTIuMjIgdW0g
MjM6MDUgc2NocmllYiBTZXJnZXkgVGVtZXJraGFub3Y6Cj4gQ3VycmVudGx5LCBpY2VfZmxleF9w
aXBlLmMgaW5jbHVkZXMgdGhlIEREUCBsb2FkaW5nIGZ1bmN0aW9ucwo+IGFuZCBoYXMgZ3Jvd24g
bGFyZ2UuIEFsdGhvdWdoIGZsZXhpYmxlIHByb2Nlc3Npbmcgc3VwcG9ydAo+IGNvZGUgaXMgcmVs
YXRlZCB0byBERFAgbG9hZGluZywgdGhlc2UgcGFydHMgYXJlIGRpc3RpbmN0Lgo+IE1vdmUgdGhl
IEREUCBsb2FkaW5nIGZ1bmN0aW9uYWxpdHkgZnJvbSBpY2VfZmxleF9waXBlLmMgdG8KPiBhIHNl
cGFyYXRlIGZpbGUuCgpQbGVhc2UgcmVmbG93IGZvciA3NSAoYXQgbGVhc3QgNzIpIGNoYXJhY3Rl
cnMgcGVyIGxpbmUsIHNvIGxlc3MgbGluZXMgCmFyZSB1c2VkLiBGb3IgdGhlIGdpdCBjb21taXQg
bWVzc2FnZSBzdW1tYXJ5IEkgc3VnZ2VzdDoKCj4gaWNlOiBNb3ZlIEREUCBjb2RlIGZyb20gaWNl
X2ZsZXhfcGlwZS5jIGludG8gaWNlX2RkcC5jCgo+IFNpZ25lZC1vZmYtYnk6IFNlcmdleSBUZW1l
cmtoYW5vdiA8c2VyZ2V5LnRlbWVya2hhbm92QGludGVsLmNvbT4KClvigKZdCgpUaGUgcmVzdCBs
b29rcyBnb29kLgoKQWNrZWQtYnk6IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+
CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
