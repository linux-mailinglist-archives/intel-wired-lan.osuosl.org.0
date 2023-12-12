Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045A280E970
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 11:45:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECFD14355E;
	Tue, 12 Dec 2023 10:45:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECFD14355E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702377952;
	bh=cqXwQl39cu11hlNn8WewdaO+ThWY4Ki5V7REXcQfSDg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zswZhIPP7RePvdL6jHO9bLDJQnp2zedQbFNeBkpK06Fjc7hf2QiHcxEcn//7Nk3ze
	 4Fsve42KZ23fcmsPA0UzvFHLmMBr7CNlFrICR106JC0mo0MoQwfgXKqxJP83CEJ0Qa
	 PFPnB5MrDD6OjMellA/kq43PTkVP0nYZqs8s4seTHJYWICZHt2psolS3YSM23RFVbn
	 buOwWbZzuhQv59G1tsjctr9u0oabfgQmNyYqaesrUlJhJw6UjCAYZfIt3Gzp2MHjzS
	 ZyFW1XEF7c+tkhH+B2CnXN3cIH8s13Z5xhSBs3NvufTCxiAmVAvDLPk+hoG99+yIGQ
	 hVvpMzk+45P1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TkTte25in_eb; Tue, 12 Dec 2023 10:45:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B2A443551;
	Tue, 12 Dec 2023 10:45:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B2A443551
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD3C91BF288
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B1525813AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:45:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1525813AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2fGqyAzSZEG6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 10:45:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC70F8137C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:45:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC70F8137C
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="398631034"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="398631034"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 02:45:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="766778116"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="766778116"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.237.140.160])
 ([10.237.140.160])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 02:45:39 -0800
Message-ID: <539ae7a3-c769-4cf6-b82f-74e05b01f619@linux.intel.com>
Date: Tue, 12 Dec 2023 11:45:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: kuba@kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
 <b3e5ec09-d01b-0cea-69ea-c7406ea3f8b5@intel.com>
 <13f7d3b4-214c-4987-9adc-1c14ae686946@intel.com>
 <aeb76f91-ab1d-b951-f895-d618622b137b@intel.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <aeb76f91-ab1d-b951-f895-d618622b137b@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702377944; x=1733913944;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=HXd03fEJqfvTiVmmxtoxQAHRCUpDA2Lseuz0XldyLdk=;
 b=kptmR15PiHTf4qh5CEOXy5pHt6riUBsxsDF/Tm4o504Zw14idMovyMwW
 EtlGbuKp7kxO9Zc8uX/zqUUA1eYZ80OpBhpE31/AlRXeYmc7yden7XW1U
 UaXTr3+EfSXufUPT6KdISkSN18vHi7jEONVc+xOCV75Dp72rlxcfq0Oh8
 /V9tKSiaTMRff1ks1DPDMP8wGWdP1lioZqPCQ1IXohU6tI41cfxFbzI6P
 Jn9C9RBnYI9tFzSQoWyON7wcMKuIFtsZE/FQblS5++GXAzI3WOB7PjWgf
 OMbrgDLyFFVYirbuiQ4n0xiMD/Dw9ADU9t/3yx800PBQI2ISckcp8CCjm
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kptmR15P
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/7] Add PFCP filter
 support
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
Cc: andy@kernel.org, wojciech.drewek@intel.com, idosch@nvidia.com,
 jesse.brandeburg@intel.com, davem@davemloft.net,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 simon.horman@corigine.com, michal.swiatkowski@linux.intel.com,
 pabeni@redhat.com, jiri@resnulli.us
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMS4xMi4yMDIzIDIyOjIzLCBUb255IE5ndXllbiB3cm90ZToKPiAKPiAKPiBPbiAxMi8x
MS8yMDIzIDQ6MzggQU0sIEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+PiBGcm9tOiBUb255IE5n
dXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+Cj4+IERhdGU6IEZyaSwgOCBEZWMgMjAy
MyAxMzozNDoxMCAtMDgwMAo+Pgo+Pj4KPj4+Cj4+PiBPbiAxMi83LzIwMjMgODo0OSBBTSwgTWFy
Y2luIFN6eWNpayB3cm90ZToKPj4+PiBBZGQgc3VwcG9ydCBmb3IgY3JlYXRpbmcgUEZDUCBmaWx0
ZXJzIGluIHN3aXRjaGRldiBtb2RlLiBBZGQgcGZjcCBtb2R1bGUKPj4+PiB0aGF0IGFsbG93cyB0
byBjcmVhdGUgYSBQRkNQLXR5cGUgbmV0ZGV2LiBUaGUgbmV0ZGV2IHRoZW4gY2FuIGJlCj4+Pj4g
cGFzc2VkIHRvCj4+Pj4gdGMgd2hlbiBjcmVhdGluZyBhIGZpbHRlciB0byBpbmRpY2F0ZSB0aGF0
IFBGQ1AgZmlsdGVyIHNob3VsZCBiZSBjcmVhdGVkLgo+Pj4+Cj4+Pj4gVG8gYWRkIGEgUEZDUCBm
aWx0ZXIsIGEgc3BlY2lhbCBuZXRkZXYgbXVzdCBiZSBjcmVhdGVkIGFuZCBwYXNzZWQgdG8gdGMK
Pj4+PiBjb21tYW5kOgo+Pj4+Cj4+Pj4gwqDCoMKgIGlwIGxpbmsgYWRkIHBmY3AwIHR5cGUgcGZj
cAo+Pj4+IMKgwqDCoCB0YyBmaWx0ZXIgYWRkIGRldiBldGgwIGluZ3Jlc3MgcHJpbyAxIGZsb3dl
ciBwZmNwX29wdHMgXAo+Pj4+IMKgwqDCoMKgwqAgMToxMmFiL2ZmOmZmZmZmZmZmZmZmZmZmZjAg
c2tpcF9odyBhY3Rpb24gbWlycmVkIGVncmVzcyByZWRpcmVjdCBcCj4+Pj4gwqDCoMKgwqDCoCBk
ZXYgcGZjcDAKPj4+Pgo+Pj4+IENoYW5nZXMgaW4gaXByb3V0ZTIgWzFdIGFyZSByZXF1aXJlZCB0
byB1c2UgcGZjcF9vcHRzIGluIHRjLgo+Pj4+Cj4+Pj4gSUNFIENPTU1TIHBhY2thZ2UgaXMgcmVx
dWlyZWQgYXMgaXQgY29udGFpbnMgUEZDUCBwcm9maWxlcy4KPj4+Pgo+Pj4+IFBhcnQgb2YgdGhp
cyBwYXRjaHNldCBtb2RpZmllcyBJUF9UVU5ORUxfKl9PUFRzLCB3aGljaCB3ZXJlIHByZXZpb3Vz
bHkKPj4+PiBzdG9yZWQgaW4gYSBfX2JlMTYuIEFsbCBwb3NzaWJsZSB2YWx1ZXMgaGF2ZSBhbHJl
YWR5IGJlZW4gdXNlZCwgbWFraW5nIGl0Cj4+Pj4gaW1wb3NzaWJsZSB0byBhZGQgbmV3IG9uZXMu
Cj4+Pj4KPj4+PiBbMV0KPj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMzA2
MTQwOTE3NTguMTExODAtMS1tYXJjaW4uc3p5Y2lrQGxpbnV4LmludGVsLmNvbQo+Pj4+IC0tLQo+
Pj4+IFRoaXMgcGF0Y2hzZXQgc2hvdWxkIGJlIGFwcGxpZWQgb24gdG9wIG9mIHRoZSAiYm95cyIg
dHJlZSBbMl0sIGFzIGl0Cj4+Pj4gZGVwZW5kcyBvbiByZWNlbnQgYml0bWFwIGNoYW5nZXMuCj4+
Pgo+Pj4gSXMgdGhpcyBmb3IgY29tbWVudCBvbmx5IChSRkMpPyBUaGlzIGRvZXNuJ3Qgc2VlbSB0
byBhcHBseSB0byBpd2wtbmV4dAo+Pj4gYW5kIGlmIHRoaXMgYmFzZWQgb24sIGFuZCBoYXMgZGVw
ZW5kZW5jaWVzIGZyb20sIGFub3RoZXIgdHJlZSwgSSBjYW4ndAo+Pj4gYXBwbHkgdGhlbSBoZXJl
Lgo+Pgo+PiBJdCdzIG5vdCBhbiBSRkMuCj4+IFRoZSBzZXJpZXMgY29udGFpbnMgZ2VuZXJpYyBj
b2RlIGNoYW5nZXMgYW5kIG11c3QgZ28gZGlyZWN0bHkgdGhyb3VnaAo+PiBuZXQtbmV4dC4gCj4g
Cj4gU2hvdWxkIHRoaXMgYmUgbWFya2VkIGZvciAnbmV0LW5leHQnIHJhdGhlciB0aGFuICdpd2wt
bmV4dCcgdGhlbj8KCk15IGJhZCwgc29ycnkuClRoaXMgc2VyaWVzIHNob3VsZCBnbyBkaXJlY3Rs
eSB0byBuZXQtbmV4dC4KClRoYW5rcywKTWFyY2luCgo+IAo+IFRoYW5rcywKPiBUb255Cj4gCj4+
IFRoZSBkZXBlbmRlbmN5IG9uIHRoZSBiaXRtYXAgdHJlZSB3YXMgZGlzY3Vzc2VkIHdpdGggSmFr
dWIgYW5kCj4+IFl1cnkgYW5kIHdlIGFncmVlZCB0aGF0IHRoZSBuZXRkZXYgZ3V5cyB3aWxsIHB1
bGwgaXQgYmVmb3JlIGFwcGx5aW5nCj4+IHRoaXMgb25lLgo+Pgo+PiBUaGFua3MsCj4+IE9sZWsK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwo+IGh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
