Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B8C270A6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2019 22:14:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2915F87ED0;
	Wed, 22 May 2019 20:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t-n153HuRbsZ; Wed, 22 May 2019 20:14:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDE1687ED6;
	Wed, 22 May 2019 20:14:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DAA41BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2019 05:50:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0605686FDD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2019 05:50:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TO-57D7XK+2L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 May 2019 05:50:02 +0000 (UTC)
X-Greylist: delayed 00:07:07 by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8EB4C86ECC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2019 05:50:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 May 2019 22:42:54 -0700
X-ExtLoop1: 1
Received: from avandeve-mobl.amr.corp.intel.com (HELO [10.254.185.166])
 ([10.254.185.166])
 by orsmga002.jf.intel.com with ESMTP; 19 May 2019 22:42:53 -0700
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <8ef1b846-caf6-45de-33aa-a46406548167@molgen.mpg.de>
 <057ec48b-6d98-7177-d280-15679c8e66ac@molgen.mpg.de>
 <9e2407a7-09c6-884d-e3e0-0af808552831@intel.com>
From: Arjan van de Ven <arjan@linux.intel.com>
Message-ID: <aed005cb-163a-3af5-2857-4ca7e9867d27@linux.intel.com>
Date: Sun, 19 May 2019 22:42:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <9e2407a7-09c6-884d-e3e0-0af808552831@intel.com>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 22 May 2019 20:14:47 +0000
Subject: Re: [Intel-wired-lan] [PATCH] Reduce e1000e boot time by tightening
 sleep ranges
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

T24gNS8xOS8yMDE5IDEwOjMxIFBNLCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+IFRoZSBlMTAwMGUg
ZHJpdmVyIHN1cHBvcnRzIGEgcHJldHR5IGxvbmcgbGlzdCBvZiAxRyBkZXZpY2VzLiBXZSBhcmUg
YWZyYWlkIHRoYXQgaW5pdGlhbGl6YXRpb24gZmxvdyBjb3VsZCBiZSBhIGJyZWFrIGZvciBzb21l
IGRldmljZXMuIEFsdGhvdWdoIHRoaXMgd29ya3Mgb24gQkRXLMKgIHdlIAo+IGNhbm5vdCBjb25m
aXJtIHRoaXMgZm9yIGFsbCBvdGhlciBkZXZpY2VzLgoKSGkKCnRoaXMgaXMgbm90IGEgdmFsaWQg
YXJndW1lbnQgYWdhaW5zdCB0aGlzIHBhdGNoLiBUaGUgcGF0Y2ggZG9lcyBub3QgcmVkdWNlIHRo
ZSBzcGVjaWZpZWQgbWluaW11bSBkZWxheXMsIGl0IG9ubHkgcmVkdWNlcyB0aGUgbWF4aW11bSBk
ZWxheXMuCklmIHRoZSBtaW5pbXVtIGRlbGF5cyBhcmUgbm90IGFjdHVhbGx5IGNvcnJlY3QgeW91
ciBkcml2ZXJzIGlzIGFscmVhZHkgYnVnZ3kgc2luY2UgdGhlIGtlcm5lbCBhbHJlYWR5IGRvZXMg
bm90IGd1YXJhbnRlZSB0aGF0IHlvdSBnZXQgbW9yZSB0aGFuIHRoZSBtaW5pbXVtLApkZXBlbmRp
bmcgb24gd2hhdCBlbHNlIGlzIGdvaW5nIG9uIHlvdSBhcmUgZ2V0dGluZyBzb21ldGhpbmcgYXJi
aXRyYXJ5IGJldHdlZW4gbWluaW11bSBhbmQgbWF4aXVtLgoKdGhpcyBwYXRjaCAgbW92ZXMgdGhl
IG1heGltdW0gY2xvc2VyIHRvIHRoZSBtaW5pbXVtIHJlZHVjaW5nIHZhcmlhYmlsaXR5CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
