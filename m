Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4DE58D94A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Aug 2022 15:19:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FFEF60634;
	Tue,  9 Aug 2022 13:19:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FFEF60634
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660051160;
	bh=k3TIBKu2s26I+c/2YlRCphEOjMPVqbc0iacHkXBHKM4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RiktX0vag5cmerrAlV0zmQjzYSWIXNw2tWXwDN/qphNGOryiT7EljjI3mwdDDPKLq
	 /mvKwdKRZ9eMruNCK2diBZx/po2JgCclVvswhPCqIohHb7ueVyOLsMj20svYhMd+0O
	 ruOgt19vfcWXgBq9881MEHQ2HRwpPSCHJ5iRRGORdGrLTeqrTZpgsqegYE1GQVt3UF
	 fuutNTYNN+kh91LB0jIhUcpGcWt5Y2A5/ryru226jTEj7JRB6u00fC14//WCnmdeJ6
	 +BVTwpPE1VrNF3EEwJciygUrKNpHERmYblTARjMNszLkYOuxzEnlCezA8kOybX3bD9
	 8VMdigbd1EJNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4jVGRXOToc2g; Tue,  9 Aug 2022 13:19:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C97560E59;
	Tue,  9 Aug 2022 13:19:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C97560E59
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6C111BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 13:19:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD3C060E56
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 13:19:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD3C060E56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bENvREioj_gv for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Aug 2022 13:19:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D098A60B83
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D098A60B83
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 13:19:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10433"; a="377120242"
X-IronPort-AV: E=Sophos;i="5.93,224,1654585200"; d="scan'208";a="377120242"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 06:19:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,224,1654585200"; d="scan'208";a="555337422"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga003.jf.intel.com with ESMTP; 09 Aug 2022 06:19:10 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 279DJ9KI020062; Tue, 9 Aug 2022 14:19:09 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Date: Tue,  9 Aug 2022 15:16:51 +0200
Message-Id: <20220809131651.2841766-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <4692e3bf-d877-46ef-8d96-be3836539766@molgen.mpg.de>
References: <20220809130508.281453-1-kamil.maziarz@intel.com>
 <4692e3bf-d877-46ef-8d96-be3836539766@molgen.mpg.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660051152; x=1691587152;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WbytRjDdLvXiqLHTmgPM55uXrGUY4RTpqU+/kVd3B54=;
 b=CJSv+fudwFV9VFJl3PQbkfjP2/J1ved7ez+qutfOmMjO525J67UI/gDS
 4DS/4cNZjnZX+k/q3cd0gEXThdmCil8ITY+e444vZJNzLP4hz73k7XdeN
 bvh/nv2wYtl8HzF8pta5JlvsbHGcOdOlddELkHuNy/kVqTiw+yyrYezA2
 jaIFtS6HYLQ/xxXNXa436MDgbIPn6lC8uLhzDTC/Dpsbd5FGyWdwceKYx
 BHcILlpHhj4vRxt0yg9SB1f99VuTKyz3wXHEAhihpDwIxTZR6i9y2scuM
 O2or9DFEE9WiwU2l2xjQuSlVCVlyegNkTXWdq9tuFkxg3hYdeRkVW/MJ8
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CJSv+fud
Subject: Re: [Intel-wired-lan] Time problems at Intel offices (was: [PATCH
 net v3] i40e: Disallow ip4 and ip6 l4_4_bytes)
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4KRGF0ZTogVHVlLCA5IEF1
ZyAyMDIyIDEzOjEyOjA4ICswMjAwCgo+IERlYXIgS2FtaWwsCj4gCj4gCj4gQW0gMDkuMDguMjIg
dW0gMTU6MDUgc2NocmllYiBLYW1pbCBNYXppYXJ6Ogo+IAo+IFvigKZdCj4gCj4gVW5mb3J0dW5h
dGVseSwgdGhlIHRpbWUgb2YgdGhlIG1lc3NhZ2UgaXMgZnJvbSB0aGUgZnV0dXJlLCBhcyBoYXBw
ZW5lZCBvZnRlbiB3aXRoIG1lc3NhZ2VzIGZyb20gdGhlIFBvbGlzaCBJbnRlbCBvZmZpY2VzLiBJ
IHdhcyB0b2xkLCB0aGUgTlRQIHBvcnQgaXMgYmxvY2tlZCBieSB0aGUgZmlyZXdhbGwsIGJ1dCBp
dOKAmWQgYmUgZ3JlYXQgaWYgdGhlIHByb2JsZW0g4oCTIGV4aXN0aW5nIGZvciBvdmVyIHR3byB5
ZWFycyDigJMgY291bGQgYmUgZml4ZWQuCgpJbnRlbCBQb2xhbmQgaGFzIHNldmVyYWwgaW50ZXJu
YWwgTlRQIHNlcnZlcnMgd2hpY2ggYXJlIG1lbnRpb25lZCBpbgp0aGUgc2V0dXAgZ3VpZGVzLCBz
byBub3QgcmVhbGx5IGFuIG9mZmljZSBwcm9ibGVtLCBtb3JlIG9mIHBlb3BsZQpub3Qgd2FudGlu
ZyB0byBzcGVuZCAyIG1pbnV0ZXMgb24gY29uZmlndXJpbmcgaXQgwq9cXyjjg4QpXy/CrwoKPiAK
PiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+IElu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCgpUaGFua3MsCk9sZWsKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
