Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20282141EEF
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Jan 2020 16:53:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4409B20408;
	Sun, 19 Jan 2020 15:53:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NCRPGCQCvmKo; Sun, 19 Jan 2020 15:53:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 461D3203A2;
	Sun, 19 Jan 2020 15:53:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7CFE21BF352
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 15:53:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 78BFE87134
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 15:53:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UvSV9KX4839a for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Jan 2020 15:53:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9F566870C7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jan 2020 15:53:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jan 2020 07:53:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,338,1574150400"; d="scan'208";a="424971176"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jan 2020 07:53:24 -0800
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20200119115713.12710-1-sasha.neftin@intel.com>
 <3fcb7594-9e43-5dab-0684-9792ec846619@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <1ac07fb6-7c72-ea8d-f976-af0b00e6d211@intel.com>
Date: Sun, 19 Jan 2020 17:53:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <3fcb7594-9e43-5dab-0684-9792ec846619@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: Add support for Alder Lake
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

T24gMS8xOS8yMDIwIDE1OjIzLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLAo+IAo+
IAo+IEFtIDE5LjAxLjIwIHVtIDEyOjU3IHNjaHJpZWIgU2FzaGEgTmVmdGluOgo+PiBBZGQgZGV2
aWNlcyBJRCdzIGZvciB0aGUgbmV4dCBMT00gZ2VuZXJhdGlvbnMgdGhhdCB3aWxsIGJlCj4+IGF2
YWlsYWJsZSBvbiB0aGUgbmV4dCBJbnRlbCBDbGllbnQgcGxhdGZvcm0gKEFsZGVyIExha2UpCj4+
IFRoaXMgcGF0Y2ggcHJvdmlkZXMgdGhlIGluaXRpYWwgc3VwcG9ydCBmb3IgdGhlc2UgZGV2aWNl
cwo+Pgo+PiB2MS0+djI6Cj4+IEFkZHJlc3MgY29tbXVuaXR5IGNvbW1lbnRzCj4+IHYyLT52MzoK
Pj4gRml4IG1pbm9yIHR5cG8KPiAKPiDigKYgYW5kIGJhY2sgb3V0IGZhbGwtdGhyb3VnaCBjaGFu
Z2UgKG5vIG5lZWQgZm9yIHY0KQo+IAoiZmFsbCB0aHJvdWdoIiBzdGF0ZW1lbnRzIG5vdCByZWxh
dGVkIHRvIHRoaXMgcGF0Y2guCj4+IFNpZ25lZC1vZmYtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEu
bmVmdGluQGludGVsLmNvbT4KPiAKPiBSZXZpZXdlZC1ieTogUGF1bCBNZW56ZWwgPHBtZW56ZWxA
bW9sZ2VuLm1wZy5kZT4KPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
