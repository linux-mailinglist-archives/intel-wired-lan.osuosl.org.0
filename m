Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C140E3BC6DE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jul 2021 08:47:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE0234036E;
	Tue,  6 Jul 2021 06:47:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0KX93fUczok2; Tue,  6 Jul 2021 06:47:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC46940369;
	Tue,  6 Jul 2021 06:47:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EEA9E1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 06:47:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5DF06079C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 06:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xLeRmeS_nvZH for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jul 2021 06:47:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49C4F60748
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 06:47:05 +0000 (UTC)
Received: from [222.129.38.159] (helo=[192.168.1.18])
 by youngberry.canonical.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <aaron.ma@canonical.com>)
 id 1m0erG-0006la-0q; Tue, 06 Jul 2021 06:47:02 +0000
To: "Neftin, Sasha" <sasha.neftin@intel.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Edri, Michael" <michael.edri@intel.com>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Shalev, Avi" <avi.shalev@intel.com>
References: <20210702045120.22855-1-aaron.ma@canonical.com>
 <20210702045120.22855-2-aaron.ma@canonical.com>
 <613e2106-940a-49ed-6621-0bb00bc7dca5@intel.com>
 <ad3d2d01-1d0a-8887-b057-e6a9531a05f4@canonical.com>
 <f9f9408e-9ba3-7ed9-acc2-1c71913b04f0@intel.com>
From: Aaron Ma <aaron.ma@canonical.com>
Message-ID: <96106dfe-9844-1d9d-d865-619d78a0d150@canonical.com>
Date: Tue, 6 Jul 2021 14:46:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <f9f9408e-9ba3-7ed9-acc2-1c71913b04f0@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igc: wait for the MAC copy when
 enabled MAC passthrough
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

Ck9uIDcvNS8yMSA3OjU0IFBNLCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+IEhlbGxvIEFhcm9uLCBU
aGFua3MgdG8gcG9pbnQgbWUgb24gdGhpcyBkb2N1bWVudC4gSSBzZWUuLi4gVGhpcyBpcyByZWNv
bW1lbmRhdGlvbiBmb3IgV2luZG93cyBkcml2ZXIuIEFueXdheSwgImRlbGF5IiBhcHByb2FjaCBp
cyBlcnJvci1wcm9uZS4gV2UgbmVlZCByYXRoZXIgYXNrIGZvciBNTkcgRlcgY29uZmlybWF0aW9u
IChtZXNzYWdlKSB0aGF0IE1BQ8KgYWRkcmVzc8KgaXPCoGNvcGllZC4KPiBDYW7CoHdlwqBjYWxs
wqAoaW7CoGNhc2XCoHdlwqBrbm93wqB0aGF0wqBNTkfCoEZXwqBjb3BpZWTCoE1BQ8KgYWRkcmVz
cyk6Cj4gaWdjX3Jhcl9zZXQgKG1ldGhvZCBmcm9tIGlnY19tYWMuYyksIHVwZGF0ZSB0aGUgbWFj
LmFkZHIgYW5kIHRoZW4gcGVyZm9ybSI6wqBtZW1jcHkobmV0ZGV2LT5kZXZfYWRkcizCoGh3LT5t
YWMuYWRkcizCoG5ldGRldi0+YWRkcl9sZW4pOz8KCldpdGhvdXQgZGVsYXksIGFmdGVyIGlnY19y
YXJfc2V0LCB0aGUgTUFDIGFkZHJlc3MgaXMgYWxsIDAuClRoZSBNQUMgYWRkciBpcyB0aGUgZnJv
bSBkb2NrIGluc3RlYWQgb2YgTUFDIHBhc3N0aHJvdWdoIHdpdGggdGhlIG9yaWdpbmFsIGRyaXZl
ci4KClRoYW5rcywKQWFyb24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
