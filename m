Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C83C55C065
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 12:49:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54BAF405A5;
	Tue, 28 Jun 2022 10:49:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54BAF405A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656413390;
	bh=xLwoTdZRqysSZTHeHxPxjpOuqY8TbiuPiWCivngBUpI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KhfPAlaptz86t8eANBEJhZOKmCIf3LmCqMAOgh87HYF5rIjkaEtuzuPs2YMhZZcxZ
	 JPDJV+IDNUhhr/COFeHX0YhO+BDVmJnS2Ab/6TUBGJgzHG0JaRKsBoaA19iDMaJT1t
	 Er6tWFVIK2vId6Ilc4xIYRcI6LngG8gSVAq4W0GdOfISsXOoNKl4I/AnXtRrJztDhs
	 Q0Sv1nhi1OOaREx7IsGCZZzfc5ZAL6xw51yjF2xsRuDpdnBOlfVAVyUuHFu+ftTnEJ
	 hB6vBTbfj3SG5wxESxAj01pjaPlNQDpyZIMiO95kEPR+NjOEkp+rKxV8zbXi1xuTxl
	 GK7ydi3vtlglw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W0N7VtxggSxo; Tue, 28 Jun 2022 10:49:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54C07400BF;
	Tue, 28 Jun 2022 10:49:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54C07400BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE80D1BF599
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87BEC400BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:49:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87BEC400BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CKp-GYqsRLhN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 10:49:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80F0140598
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80F0140598
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:49:41 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 46B0661EA1929;
 Tue, 28 Jun 2022 12:49:38 +0200 (CEST)
Message-ID: <f1bc6014-1743-ec50-a719-639890ed6649@molgen.mpg.de>
Date: Tue, 28 Jun 2022 12:49:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
References: <20220628104354.4195-1-anatolii.gerasymenko@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220628104354.4195-1-anatolii.gerasymenko@intel.com>
Subject: [Intel-wired-lan] Patches not threaded below the cover letter (was:
 [PATCH net-next 0/2] ice: FCS/CRC stripping control)
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBBbmF0b2xpaSwKCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaGVzLgoKQW0gMjguMDYuMjIg
dW0gMTI6NDMgc2NocmllYiBBbmF0b2xpaSBHZXJhc3ltZW5rbzoKPiBJbXBsZW1lbnQgcG9zc2li
aWxpdHkgdG8gY2hhbmdlIEZDUy9DUkMgc3RyaXBwaW5nIGZlYXR1cmUgdXNpbmcKPiBldGh0b29s
IGNvbW1hbmQuCj4gCj4gSGF2aW5nIEZDUy9DUkMgY291bGQgYmUgdXNlZnVsIGZvcjoKPiAtIG5l
dHdvcmsgc25pZmZlcnMgdG8gaW5zcGVjdCBGQ1MvQ1JDIGNvcnJlY3RuZXNzCj4gLSBmb3IgYmVu
Y2htYXJraW5nIHVzZSBjYXNlcwo+IC0gWERQIHByb2dyYW1zCj4gCj4gQW5hdG9saWkgR2VyYXN5
bWVua28gKDEpOgo+ICAgIGljZTogSW1wbGVtZW50IEZDUy9DUkMgYW5kIFZMQU4gc3RyaXBwaW5n
IGNvLWV4aXN0ZW5jZSBwb2xpY3kKPiAKPiBKZXNzZSBCcmFuZGVidXJnICgxKToKPiAgICBpY2U6
IEltcGxlbWVudCBjb250cm9sIG9mIEZDUy9DUkMgc3RyaXBwaW5nCgpb4oCmXQoKRm9yIHNvbWUg
cmVhc29uIHRoZSB0d28gcGF0Y2hlcyBhcmUgbm90IHRocmVhZGVkIGJlbG93IHRoZSBjb3ZlciBs
ZXR0ZXIgCmFsdGhvdWdoIHlvdSB1c2UgZ2l0LXNlbmQtZW1haWw6CgogICAgIFgtTWFpbGVyOiBn
aXQtc2VuZC1lbWFpbCAyLjI1LjEKCkNhbiB5b3UgcGxlYXNlIGNoZWNrIHlvdSBzZXR1cD8KCgpL
aW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
