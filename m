Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E1F251C9B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 17:50:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68F2C886E4;
	Tue, 25 Aug 2020 15:50:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9s825nLoMlcS; Tue, 25 Aug 2020 15:50:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB36F886E1;
	Tue, 25 Aug 2020 15:50:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 99AB81BF41B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 15:50:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 91FFB886B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 15:50:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KUGQaLeay5M8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 15:50:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E10C9886AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 15:50:01 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN (unknown [163.114.132.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 510962067C;
 Tue, 25 Aug 2020 15:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598370601;
 bh=UBQkGDNOfaRVuEktXkbev8DMv/HonOZAncNi/Su6pb0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bwXPXqtqKUNdKaX3QuBXGMUOb9qVZmtIjvkM/U/1G6x8gKzjJFldWZstbSQlQwGj2
 gIIe78E2g33L59zkaYfxjrdvyBWtZJNeSZ570wFBVVzlHVGt9VDIJr5Q6kaA/As0wa
 va7uHCyCZd3eg7d3mQMEj3znyRqfZhKiEaSCM6Fo=
Date: Tue, 25 Aug 2020 08:49:59 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Message-ID: <20200825084959.69e0bb0d@kicinski-fedora-PC1C0HJN>
In-Reply-To: <20200825121323.20239-4-bjorn.topel@gmail.com>
References: <20200825121323.20239-1-bjorn.topel@gmail.com>
 <20200825121323.20239-4-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v2 3/3] ice: avoid premature Rx
 buffer reuse
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 maciej.machnikowski@intel.com, lirongqing@baidu.com,
 intel-wired-lan@lists.osuosl.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAyNSBBdWcgMjAyMCAxNDoxMzoyMyArMDIwMCBCasO2cm4gVMO2cGVsIHdyb3RlOgo+
IEZyb206IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPiAKPiBUaGUgcGFn
ZSByZWN5Y2xlIGNvZGUsIGluY29ycmVjdGx5LCByZWxpZWQgb24gdGhhdCBhIHBhZ2UgZnJhZ21l
bnQKPiBjb3VsZCBub3QgYmUgZnJlZWQgaW5zaWRlIHhkcF9kb19yZWRpcmVjdCgpLiBUaGlzIGFz
c3VtcHRpb24gbGVhZHMgdG8KPiB0aGF0IHBhZ2UgZnJhZ21lbnRzIHRoYXQgYXJlIHVzZWQgYnkg
dGhlIHN0YWNrL1hEUCByZWRpcmVjdCBjYW4gYmUKPiByZXVzZWQgYW5kIG92ZXJ3cml0dGVuLgo+
IAo+IFRvIGF2b2lkIHRoaXMsIHN0b3JlIHRoZSBwYWdlIGNvdW50IHByaW9yIGludm9raW5nIHhk
cF9kb19yZWRpcmVjdCgpLgo+IAo+IEZpeGVzOiBlZmMyMjE0YjYwNDcgKCJpY2U6IEFkZCBzdXBw
b3J0IGZvciBYRFAiKQo+IFJlcG9ydGVkLWFuZC1hbmFseXplZC1ieTogTGkgUm9uZ1FpbmcgPGxp
cm9uZ3FpbmdAYmFpZHUuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3Ju
LnRvcGVsQGludGVsLmNvbT4KCkdvdHRhIGFkanVzdCB0aGUga2RvYzoKCmRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jOjc3Mzogd2FybmluZzogRnVuY3Rpb24gcGFyYW1l
dGVyIG9yIG1lbWJlciAncnhfYnVmX3BnY250JyBub3QgZGVzY3JpYmVkIGluICdpY2VfY2FuX3Jl
dXNlX3J4X3BhZ2UnCmRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jOjg4
NTogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAncnhfYnVmX3BnY250JyBu
b3QgZGVzY3JpYmVkIGluICdpY2VfZ2V0X3J4X2J1ZicKZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV90eHJ4LmM6MTAzMzogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1l
bWJlciAncnhfYnVmX3BnY250JyBub3QgZGVzY3JpYmVkIGluICdpY2VfcHV0X3J4X2J1ZicKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
