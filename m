Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17975287B36
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Oct 2020 19:52:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9748F2E16A;
	Thu,  8 Oct 2020 17:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xFLGcr4DZZx6; Thu,  8 Oct 2020 17:51:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 23E1620409;
	Thu,  8 Oct 2020 17:51:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFD8F1BF293
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Oct 2020 17:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A40B720363
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Oct 2020 17:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yyZp-bS8PhkH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Oct 2020 17:51:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 2CD4B20360
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Oct 2020 17:51:55 +0000 (UTC)
IronPort-SDR: YVpac7C7/5TUdei9CHhOWIx5meVQiK9v4EXc8WaCTiaL5lboZy+aByQRbkNUHWrURDyDmTvqi3
 +1AQqDNSx4Nw==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="144701492"
X-IronPort-AV: E=Sophos;i="5.77,351,1596524400"; d="scan'208";a="144701492"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 10:51:54 -0700
IronPort-SDR: 6El/i/QzCYcqhn8s3yNpmWyqWMfQMI0RbeLergDfQCOwRgMCLxfJ5DOPy6ciSfDJ1HXI1Z9m6d
 qgE6crN1HwKQ==
X-IronPort-AV: E=Sophos;i="5.77,351,1596524400"; d="scan'208";a="388868527"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.212.36.185])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 10:51:53 -0700
Date: Thu, 8 Oct 2020 10:51:52 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20201008105152.00005edb@intel.com>
In-Reply-To: <8ecde631-9b24-b177-749c-a5a6bddc31df@molgen.mpg.de>
References: <8ecde631-9b24-b177-749c-a5a6bddc31df@molgen.mpg.de>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] What are management packets (rx_smbus,
 MGTPRC)?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

UGF1bCBNZW56ZWwgd3JvdGU6Cj4gICAgICAkIHN1ZG8gZXRodG9vbCAtUyBuZXQwMAo+ICAgICAg
W+KApl0KPiAgICAgIHR4X3NtYnVzOiAwCj4gICAgICByeF9zbWJ1czogNTU3ODE2Cj4gICAgICBk
cm9wcGVkX3NtYnVzOiA5Cj4gICAgICBb4oCmXQo+IAo+IE91dCBvZiBjdXJpb3NpdHksIHdoYXQg
YXJlIHRoZXNlIG1hbmFnZW1lbnQgcGFja2V0cz8KCnRoZSByeF9zbWJ1cyBwYWNrZXRzIG1hdGNo
ZWQgYSBmaWx0ZXIgaW4gdGhlIGhhcmR3YXJlIGFuZCB0aGUgcGFja2V0cwp3ZXJlIHJlZGlyZWN0
ZWQgdG8gdGhlIFNNQlVTICh1c3VhbGx5IGEgcGF0aCB0byB0aGUgQk1DIGZvciBJUE1JCnBhY2tl
dHMpIAoKVGhlc2UgcGFja2V0cyBhcmUgdXN1YWxseSB0cmFmZmljIG9uIFVEUCBwb3J0IDYyMyAo
Zm9yIElQTUkpIGJ1dAp3aGF0ZXZlciBob3N0IHByb2dyYW0gaXMgY29ubmVjdGVkIHRvIHRoZSBT
TUJVUyBjYW4gc3BlY2lmeSBpdCdzIG93bgpmaWx0ZXJzIGFzIGZhciBhcyBJIHJlY2FsbC4KCkhv
cGUgdGhpcyBoZWxwcywKSmVzc2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
