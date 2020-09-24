Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8F527762E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Sep 2020 18:05:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EF7D86C40;
	Thu, 24 Sep 2020 16:05:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CA5KUUfCuTcQ; Thu, 24 Sep 2020 16:05:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5A2AD86C2C;
	Thu, 24 Sep 2020 16:05:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 176361BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 16:05:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0BEA42E0FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 16:05:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0D6yZ6997zye for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Sep 2020 16:04:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by silver.osuosl.org (Postfix) with ESMTPS id 6A6762E0B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 16:04:58 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1kLTjj-00G2v0-4T; Thu, 24 Sep 2020 18:04:47 +0200
Date: Thu, 24 Sep 2020 18:04:47 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20200924160447.GD3821492@lunn.ch>
References: <20200923074751.10527-1-kai.heng.feng@canonical.com>
 <20200924150958.18016-1-kai.heng.feng@canonical.com>
 <748efbf9-573f-ab2a-0c82-a7b2a11cda60@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <748efbf9-573f-ab2a-0c82-a7b2a11cda60@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Increase iteration on
 polling MDIC ready bit
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBTZXAgMjQsIDIwMjAgYXQgMDU6MzI6MTJQTSArMDIwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gRGVhciBLYWktSGVuZywKPiAKPiAKPiBUaGFuayB5b3UgZm9yIHNlbmRpbmcgdmVyc2lv
biAyLgo+IAo+IEFtIDI0LjA5LjIwIHVtIDE3OjA5IHNjaHJpZWIgS2FpLUhlbmcgRmVuZzoKPiA+
IFdlIGFyZSBzZWVpbmcgdGhlIGZvbGxvd2luZyBlcnJvciBhZnRlciBTMyByZXN1bWU6Cj4gCj4g
SeKAmWQgYmUgZ3JlYXQgaWYgeW91IGFkZGVkIHRoZSBzeXN0ZW0gYW5kIHVzZWQgaGFyZHdhcmUs
IHlvdSBhcmUgc2VlaW5nIHRoaXMKPiB3aXRoLgo+IAo+ID4gWyAgNzA0Ljc0Njg3NF0gZTEwMDBl
IDAwMDA6MDA6MWYuNiBlbm8xOiBTZXR0aW5nIHBhZ2UgMHg2MDIwCj4gPiBbICA3MDQuODQ0MjMy
XSBlMTAwMGUgMDAwMDowMDoxZi42IGVubzE6IE1ESSBXcml0ZSBkaWQgbm90IGNvbXBsZXRlCj4g
Cj4gQSBmb2xsb3ctdXAgcGF0Y2gsIHNob3VsZCBleHRlbmQgdGhlIG1lc3NhZ2UgdG8gaW5jbHVk
ZSB0aGUgdGltZW91dCB2YWx1ZS4KPiAKPiA+IE1ESSBXcml0ZSBkaWQgbm90IGNvbXBsZXRlIGRp
ZCBub3QgY29tcGxldGUgaW4g4oCmIHNlY29uZHMuCj4gCj4gQWNjb3JkaW5nIHRvIHRoZSBMaW51
eCB0aW1lc3RhbXBzIGl04oCZcyA5OCBtcywgd2hpY2ggbWFrZXMgc2Vuc2UsIGFzICg2NDAgKiAz
Cj4gKiA1MCDOvHMgPSA5NiBtcykuCj4gCj4gV2hhdCBjcmFwcHkgaGFyZHdhcmUgaXMgdGhpcywg
dGhhdCBpdCB0YWtlcyBsb25nZXIgdGhhbiAxMDAgbXM/CgpJJ20gc3BlY3VsYXRpbmcsIGJ1dCBp
IGd1ZXNzIHRoaXMgaGFwcGVucyB3aXRoIGp1c3QgdGhlIGZpcnN0IGNvdXBsZQpvZiB0cmFuc2Zl
cnMgYWZ0ZXIgcG93ZXIgdXAuIEFmdGVyIHRoYXQsIGl0IHByb2JhYmx5IHRha2VzIGEgc2luZ2xl
Cmxvb3AuIEl0IHdvdWxkIGJlIGdvb2QgdG8gc2VlIHNvbWUgcHJvZmlsZSBkYXRhIGZvciB0aGlz
LiBDb21wbGV0ZWx5CmRpZmZlcmVudCBNRElPIGRyaXZlciBhbmQgaW1wbGVtZW50YXRpb24sIGJ1
dCB0aGlzIHBhdGNoIG1pZ2h0IGdpdmUKc29tZSBpZGVhcyBob3cgdG8gZG8gdGhlIHByb2ZpbGlu
ZzoKCmh0dHBzOi8vZ2l0aHViLmNvbS9sdW5uL2xpbnV4L2NvbW1pdC83NmM3ODEwYTdlMmMxYjFl
MjhhN2E5NWQwOGRkNDQwYThmNDhhNTE2CgpMb29rIGF0IHRoZSBkZWJ1Z2ZzIGFuZCBudW1fbG9v
cHMvdXMgcGFydHMuCgogICAgIEFuZHJldwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
