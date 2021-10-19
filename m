Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1E1434238
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Oct 2021 01:39:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0151340691;
	Tue, 19 Oct 2021 23:39:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ksjtwcRNhFdF; Tue, 19 Oct 2021 23:39:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1F0540649;
	Tue, 19 Oct 2021 23:39:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E46A1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 23:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BE8D60BB7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 23:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linux.dev
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pYj2-Su0jjrF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 23:39:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out2.migadu.com (out2.migadu.com [188.165.223.204])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C09CA60B5D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 23:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1634686775;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RXC6bw5hISE6877h+QtcaVaXUhDEBqLzCKBjfpdPPqo=;
 b=TMp4M0MT3IRngO5lDUlsfGvKoNIEJx2tHn7a7O+CQhbCkI1Lw3YAaTDserlLBmdROud0E/
 1uv6uO+gtlcG2vsaqVQuVlOF/Vg98Q3mkOwvnBLDWJYBYDCE+LmUkft7TnpEfZZe5fbQ9o
 OPyGD2YewsdTzRKgTxEKqYO2Gakjnwo=
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, yanjun.zhu@linux.dev,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20211019091743.12046-1-yanjun.zhu@linux.dev>
 <5f4cdd35-680f-b5f1-25b4-dcd27419edf0@intel.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Yanjun Zhu <yanjun.zhu@linux.dev>
Message-ID: <bb786469-25e7-92a4-3697-ec1a62ee44b7@linux.dev>
Date: Wed, 20 Oct 2021 07:39:27 +0800
MIME-Version: 1.0
In-Reply-To: <5f4cdd35-680f-b5f1-25b4-dcd27419edf0@intel.com>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: yanjun.zhu@linux.dev
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ice: remove the unused function
 ice_aq_nvm_update_empr
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

5ZyoIDIwMjEvMTAvMTkgMjM6MzAsIEplc3NlIEJyYW5kZWJ1cmcg5YaZ6YGTOgo+IE9uIDEwLzE5
LzIwMjEgMjoxNyBBTSwgeWFuanVuLnpodUBsaW51eC5kZXYgd3JvdGU6Cj4+IEZyb206IFpodSBZ
YW5qdW4gPHlhbmp1bi56aHVAbGludXguZGV2Pgo+Pgo+PiBUaGUgZnVuY3Rpb24gaWNlX2FxX252
bV91cGRhdGVfZW1wciBpcyBub3QgdXNlZCwgc28gcmVtb3ZlIGl0Lgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBaaHUgWWFuanVuIDx5YW5qdW4uemh1QGxpbnV4LmRldj4KPiAKPiBUaGFua3MgZm9yIHRo
ZSBwYXRjaCEKPiBSZXZpZXdlZC1ieTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVy
Z0BpbnRlbC5jb20+CgpUaGFua3MsIEplc3NlCgpaaHUgWWFuanVuCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
