Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACA02A36F5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Nov 2020 00:13:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 498FD87340;
	Mon,  2 Nov 2020 23:13:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PnbWLr0GfBey; Mon,  2 Nov 2020 23:13:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16AD0872E3;
	Mon,  2 Nov 2020 23:13:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C7081BF343
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 23:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4A46186B6E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 23:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PP7KSW9y6y5q for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Nov 2020 23:13:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D292E86B3B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 23:13:21 +0000 (UTC)
Received: from localhost.localdomain (ip5f5af1d0.dynamic.kabel-deutschland.de
 [95.90.241.208])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7108420646217;
 Tue,  3 Nov 2020 00:13:18 +0100 (CET)
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Tue,  3 Nov 2020 00:13:05 +0100
Message-Id: <20201102231307.13021-1-pmenzel@molgen.mpg.de>
X-Mailer: git-send-email 2.29.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/2] Upstream ONL patch for PHY BCM5461S
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBMaW51eCBmb2xrcywKCgpMb29raW5nIGEgbGl0dGxlIGJpdCBhdCBPcGVuIE5ldHdvcmsg
TGludXgsIHRoZXkgY2Fycnkgc29tZSBMaW51eApwYXRjaGVzLCBidXQgaGF2ZSBub3QgdXBzdHJl
YW1lZCB0aGVtIHlldC4gVGhpcyB1cHN0cmVhbXMgc3VwcG9ydCBmb3IKdGhlIFBIWSBCQ001NDYx
Uy4gSXTigJlkIGJlIGdyZWF0LCBpZiB5b3UgY291bGQgaGVscCByZXZpZXcgaXQuCgoKS2luZCBy
ZWdhcmRzLAoKUGF1bAoKCkplZmZyZXkgVG93bnNlbmQgKDIpOgogIGV0aGVybmV0OiBpZ2I6IFN1
cHBvcnQgUEhZIEJDTTU0NjFTCiAgZXRoZXJuZXQ6IGlnYjogZTEwMDBfcGh5OiBDaGVjayBmb3Ig
b3BzLmZvcmNlX3NwZWVkX2R1cGxleCBleGlzdGVuY2UKCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2IvZTEwMDBfODI1NzUuYyAgfCAyMyArKysrLQogLi4uL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2IvZTEwMDBfZGVmaW5lcy5oICAgIHwgIDEgKwogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdiL2UxMDAwX2h3LmggICAgIHwgIDEgKwogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdiL2UxMDAwX3BoeS5jICAgIHwgODkgKysrKysrKysrKysrKysrKystLQogZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwX3BoeS5oICAgIHwgIDIgKwogZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMgICAgIHwgIDggKysKIDYgZmlsZXMgY2hhbmdlZCwg
MTE4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgotLSAKMi4yOS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
