Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CE06F0FE
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jul 2019 01:11:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5AD19204B0;
	Sat, 20 Jul 2019 23:11:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LDhvg9Ga7IAl; Sat, 20 Jul 2019 23:11:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 04F2020484;
	Sat, 20 Jul 2019 23:11:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF2E11BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jul 2019 23:11:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CA0D985582
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jul 2019 23:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kvEZ-a7FshyL for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Jul 2019 23:11:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C75D85580
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jul 2019 23:11:23 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5bd179.dynamic.kabel-deutschland.de
 [95.91.209.121])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 17F05201A3C0F;
 Sun, 21 Jul 2019 01:11:20 +0200 (CEST)
To: Todd Fujinaka <todd.fujinaka@intel.com>
References: <f16c92b9-61bf-6ea8-afc9-28e778c2b625@molgen.mpg.de>
 <9B4A1B1917080E46B64F07F2989DADD69AFF0A1B@ORSMSX115.amr.corp.intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <14c67f8e-b345-4aae-169f-4b7c9eba5d89@molgen.mpg.de>
Date: Sun, 21 Jul 2019 01:11:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9B4A1B1917080E46B64F07F2989DADD69AFF0A1B@ORSMSX115.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] How to update firmware?
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

RGVhciBUb2RkLAoKClRoYW5rIHlvdSBmb3IgeW91ciBhbnN3ZXIuIFBsZWFzZSBmaW5kIG15IGFu
c3dlcnMgYmVsb3cgKGludGVybGVhdmVkIHN0eWxlKS4KCgpPbiAyMC4wNy4xOSAxODoxMSwgRnVq
aW5ha2EsIFRvZGQgd3JvdGU6Cj4gV2hhdCBwYXJ0PyBUaGUgMUcgcGFydHMgZGlkbid0IGhhdmUg
bXVjaCBmaXJtd2FyZSAob25seSBvbmUgaGFkIGEKPiBsaXR0bGUpIGFuZCBzb21lIG9mIHRoZSAx
MEcgcGFydHMgZGlkbid0LCBlaXRoZXIuCgpTb3JyeSwgSSBkbyBub3QgdW5kZXJzdGFuZC4gVGhl
cmUgaXMgYSBmaXJtd2FyZSBsaW5lIGluIHRoZSBvdXRwdXQgb2YKYGV0aHRvb2xgIGFuZCBpdCB3
YXMgaW5kZWVkIHVwZGF0ZWQgdG8gMTguOC45IGJ5IHJ1bm5pZyB0aGUKKHByb3ByaWV0YXJ5KSBE
ZWxsIHVwZGF0ZSBwcmFncmFtLgoKPiBXZSBkb24ndCByZWxlYXNlIHRoZSBzb3VyY2UgdG8gdGhl
IGZpcm13YXJlIHVwZGF0ZXIgYW5kIHRoZXJlIG1pZ2h0Cj4gbm90IGJlIGFuIHVwZGF0ZSBmb3Ig
eW91IGFueXdheS4KCkFzIHdyaXR0ZW4sIERlbGwgb2ZmZXJzIGFuIHVwZGF0ZS4KClNvLCB3aHkg
ZG9u4oCZdCB5b3UgcmVsZWFzZSB0aGUgc291cmNlIGZvciB0aGUgZmlybXdhcmUgdXBkYXRlciB1
bmRlciBhIApmcmVlIGxpY2VuY2U/IFdlIHJlYWxseSBsaWtlIHRvIGF1ZGl0IGFsbCB0aGUgcHJv
Z3JhbXMsIHdlIHJ1biwgYW5kIApyZXZpZXcgKGJ5IG91cnNlbHZlcyBvciBvdGhlcnMpIHRoZW0u
CgpTbyBtYWluIGdvYWwgd291bGQgYmUgdG8gaGF2ZSBqdXN0IG9uZSB1cGRhdGUgaW50ZXJmYWNl
LCBmb3IgZXhhbXBsZSAKYGZ3dXBkbWdyYCwgdG8gb25seSBkZWFsIHdpdGggb25lIHRvb2wuIEFu
ZCBJbnRlbCB3b3VsZCBoYXZlIG9uZSBwbGFjZSAKdG8gdXBsb2FkIHRoZSBmaXJtd2FyZSB1cGRh
dGUgZmlsZXMgdG8gKHdpdGggc2VjdXJpdHkgaXNzdWVzIGFkZHJlc3NlZCAKbGlrZSBzaWduYXR1
cmVzLCBhbmQgZ29vZCByZWxlYXNlIHByYWN0aWNlcyBsaWtlIHJlbGVhc2Ugbm90ZXMgYW5kIHNv
IG9uKS4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
