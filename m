Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CE36D4D5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2019 21:38:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C053D2288A;
	Thu, 18 Jul 2019 19:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwRjXLdhcpBu; Thu, 18 Jul 2019 19:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 63E8B2286C;
	Thu, 18 Jul 2019 19:38:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C20AF1BF831
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2019 19:38:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD81A86B2A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2019 19:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TC44N_0Alvmd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jul 2019 19:38:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 54E8C86ABB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2019 19:38:49 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5bd17e.dynamic.kabel-deutschland.de
 [95.91.209.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1167B201A3C34
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2019 21:38:46 +0200 (CEST)
To: intel-wired-lan@lists.osuosl.org
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <f16c92b9-61bf-6ea8-afc9-28e778c2b625@molgen.mpg.de>
Date: Thu, 18 Jul 2019 21:38:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [Intel-wired-lan] How to update firmware?
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBMaW51eCBmb2xrcywKCgpIb3cgY2FuIEkgdXBkYXRlIHRoZSBmaXJtd2FyZSBvZiBJbnRl
bCBuZXR3b3JrIGNhcmRzIHdpdGggZnJlZSBzb2Z0d2FyZSAKdXRpbGl0aWVzPyBEZWxsIHByb3Zp
ZGVzIGEgYmluYXJ5IHRvIHVwZGF0ZSB0aGUgZmlybXdhcmUsIGFuZCBpdCB3b3JrZWQsIApidXQg
SeKAmWQgbGlrZSB0byBoYXZlIHRoZSBzb3VyY2VzLiBJbiB0aGlzIGNhc2UsIGl0IHdhcyBhYm91
dCB0aGUgZGV2aWNlIApiZWxvdy4KCmBgYAokIGRtZXNnIHwgZ3JlcCBpZ2IKW+KApl0KWyAgIDE4
LjQzOTgxNV0gaWdiOiBJbnRlbChSKSBHaWdhYml0IEV0aGVybmV0IE5ldHdvcmsgRHJpdmVyIC0g
dmVyc2lvbiAKNS40LjAtawpbICAgMTguNDY2ODgyXSBpZ2I6IENvcHlyaWdodCAoYykgMjAwNy0y
MDE0IEludGVsIENvcnBvcmF0aW9uLgpbICAgMTguNTMwNzY5XSBpZ2IgMDAwMDowNDowMC4wOiBh
ZGRlZCBQSEMgb24gZXRoMApbICAgMTguNTMwNzcyXSBpZ2IgMDAwMDowNDowMC4wOiBJbnRlbChS
KSBHaWdhYml0IEV0aGVybmV0IE5ldHdvcmsgCkNvbm5lY3Rpb24KWyAgIDE4LjUzMDc3M10gaWdi
IDAwMDA6MDQ6MDAuMDogZXRoMDogKFBDSWU6NS4wR2IvczpXaWR0aCB4MikgCmU0OjQzOjRiOjEz
OjUxOmY0ClsgICAxOC41MzEwOTFdIGlnYiAwMDAwOjA0OjAwLjA6IGV0aDA6IFBCQSBObzogRzYx
MzQ2LTAxOApbICAgMTguNTMxMDkyXSBpZ2IgMDAwMDowNDowMC4wOiBVc2luZyBNU0ktWCBpbnRl
cnJ1cHRzLiA4IHJ4IHF1ZXVlKHMpLCAKOCB0eCBxdWV1ZShzKQpb4oCmXQokIGV0aHRvb2wgLWkg
ZXRyaDAKZHJpdmVyOiBpeGdiZQp2ZXJzaW9uOiA1LjEuMC1rCmZpcm13YXJlLXZlcnNpb246IDB4
ODAwMDA5NWMsIDE4LjguOQpleHBhbnNpb24tcm9tLXZlcnNpb246CmJ1cy1pbmZvOiAwMDAwOjAx
OjAwLjAKc3VwcG9ydHMtc3RhdGlzdGljczogeWVzCnN1cHBvcnRzLXRlc3Q6IHllcwpzdXBwb3J0
cy1lZXByb20tYWNjZXNzOiB5ZXMKc3VwcG9ydHMtcmVnaXN0ZXItZHVtcDogeWVzCnN1cHBvcnRz
LXByaXYtZmxhZ3M6IHllcwpgYGAKCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
