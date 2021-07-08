Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C44D3BF48C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jul 2021 06:24:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E16AB4029E;
	Thu,  8 Jul 2021 04:24:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id udqs6dFPkKVC; Thu,  8 Jul 2021 04:24:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F20B340207;
	Thu,  8 Jul 2021 04:24:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C3F51BF329
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jul 2021 04:24:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB2CE40207
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jul 2021 04:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d6FcU5ZmF88H for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jul 2021 04:24:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7055B400EF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jul 2021 04:24:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="196715440"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="196715440"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 21:24:41 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="487400097"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.185.169.17])
 ([10.185.169.17])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 21:24:38 -0700
To: Aaron Ma <aaron.ma@canonical.com>, jesse.brandeburg@intel.com,
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
 <96106dfe-9844-1d9d-d865-619d78a0d150@canonical.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <47117935-10d6-98e0-5894-ba104912ce25@intel.com>
Date: Thu, 8 Jul 2021 07:24:35 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <96106dfe-9844-1d9d-d865-619d78a0d150@canonical.com>
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

T24gNy82LzIwMjEgMDk6NDYsIEFhcm9uIE1hIHdyb3RlOgo+IAo+IE9uIDcvNS8yMSA3OjU0IFBN
LCBOZWZ0aW4sIFNhc2hhIHdyb3RlOgo+PiBIZWxsbyBBYXJvbiwgVGhhbmtzIHRvIHBvaW50IG1l
IG9uIHRoaXMgZG9jdW1lbnQuIEkgc2VlLi4uIFRoaXMgaXMgCj4+IHJlY29tbWVuZGF0aW9uIGZv
ciBXaW5kb3dzIGRyaXZlci4gQW55d2F5LCAiZGVsYXkiIGFwcHJvYWNoIGlzIAo+PiBlcnJvci1w
cm9uZS4gV2UgbmVlZCByYXRoZXIgYXNrIGZvciBNTkcgRlcgY29uZmlybWF0aW9uIChtZXNzYWdl
KSB0aGF0IAo+PiBNQUPCoGFkZHJlc3PCoGlzwqBjb3BpZWQuCj4+IENhbsKgd2XCoGNhbGzCoChp
bsKgY2FzZcKgd2XCoGtub3fCoHRoYXTCoE1OR8KgRlfCoGNvcGllZMKgTUFDwqBhZGRyZXNzKToK
Pj4gaWdjX3Jhcl9zZXQgKG1ldGhvZCBmcm9tIGlnY19tYWMuYyksIHVwZGF0ZSB0aGUgbWFjLmFk
ZHIgYW5kIHRoZW4gCj4+IHBlcmZvcm0iOsKgbWVtY3B5KG5ldGRldi0+ZGV2X2FkZHIswqBody0+
bWFjLmFkZHIswqBuZXRkZXYtPmFkZHJfbGVuKTs/Cj4gCj4gV2l0aG91dCBkZWxheSwgYWZ0ZXIg
aWdjX3Jhcl9zZXQsIHRoZSBNQUMgYWRkcmVzcyBpcyBhbGwgMC4KPiBUaGUgTUFDIGFkZHIgaXMg
dGhlIGZyb20gZG9jayBpbnN0ZWFkIG9mIE1BQyBwYXNzdGhyb3VnaCB3aXRoIHRoZSAKPiBvcmln
aW5hbCBkcml2ZXIuCkkgd291bGQgdG8gbGlrZSBzdWdnZXN0IGNoZWNraW5nIHRoZSBmb2xsb3dp
bmcgZGlyZWN0aW9uOgoxLiBwcmluY2lwYWwgcXVlc3Rpb246IGNhbiB3ZSB1cGRhdGUgdGhlIG5l
dGRldiBkZXZpY2UgYWRkcmVzcyBhZnRlciBpdCAKaXMgYWxyZWFkeSBzZXQgZHVyaW5nIHByb2Jl
PyBJIG1lYW50IHBlcmZvcm0gYW5vdGhlcjoKbWVtY3B5KG5ldGRldi0+ZGV2X2FkZHIsIGh3LT5t
YWMuYWRkciwgbmV0ZGV2LT5hZGRyX2xlbikgdXAgdG8gZGVtYW5kCjIuIFdlIG5lZWQgdG8gd29y
ayB3aXRoIEludGVsJ3MgZmlybXdhcmUgZW5naW5lZXIvZ3JvdXAgYW5kIGRlZmluZSB0aGUgCm1l
c3NhZ2UvZXZlbnQ6IE1BQyBhZGRyZXNzaXMgY2hhbmdlZCBhbmQgc2hvdWxkIGJlIHVwZGF0ZWQu
CkFzIEkga25vdyBNTkcgRlcgdXBkYXRlcyBzaGFkb3cgcmVnaXN0ZXJzLiBTaW5jZSBzaGFkb3cg
cmVnaXN0ZXJzIGFyZSAKZGlmZmVyZW50IGZyb20gUkFML1JBSCByZWdpc3RlcnMgLSBpdCBjb3Vs
ZCBiZSBhIG5vdGlmaWNhdGlvbiB0aGF0IHRoZSAKTUFDIGFkZHJlc3MgY2hhbmdlZC4gTGV0J3Mg
Y2hlY2sgaXQuCj4gCj4gVGhhbmtzLAo+IEFhcm9uCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
