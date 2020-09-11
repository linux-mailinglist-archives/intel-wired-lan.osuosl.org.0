Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2782675D9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Sep 2020 00:26:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E75087BA3;
	Fri, 11 Sep 2020 22:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-CCvvO6yIQU; Fri, 11 Sep 2020 22:26:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9AA7587B83;
	Fri, 11 Sep 2020 22:26:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 319961BF29F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 22:26:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2D19987614
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 22:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3w6snbSxaSwQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 22:26:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BF22187603
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 22:26:44 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3F6B221EB;
 Fri, 11 Sep 2020 22:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599863204;
 bh=yOjknxlLcen/3xo7dj7u4vMkZ5aWaIFXMK+QrZqbCEk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cbCOLmwosXUMuyrw0XT+WYM3nGbltR1pWRqrkmLqrxVpdJvzWc/RLHFCvmoq3t0Vq
 DTQ+0hjEFfp3zmLRKIkKBMHLG8cDFHOFKROwQLFHqQM+cnk1HT6AfhAj8Giu08gvDK
 tlhn2F/F2sQ1jFpYr3MTR3Gx5cgxmk3sLaOb4Hd8=
Date: Fri, 11 Sep 2020 15:26:42 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Edward Cree <ecree@solarflare.com>
Message-ID: <20200911152642.62923ba2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <e2e637ae-8cda-c9a4-91ce-93dbd475fc0c@solarflare.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-12-jesse.brandeburg@intel.com>
 <227d2fe4-ddf8-89c9-b80b-142674c2cca0@solarflare.com>
 <20200911144207.00005619@intel.com>
 <e2e637ae-8cda-c9a4-91ce-93dbd475fc0c@solarflare.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 11/11]
 drivers/net/ethernet: clean up mis-targeted comments
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAxMSBTZXAgMjAyMCAyMjo1NTo1NCArMDEwMCBFZHdhcmQgQ3JlZSB3cm90ZToKPiBP
biAxMS8wOS8yMDIwIDIyOjQyLCBKZXNzZSBCcmFuZGVidXJnIHdyb3RlOgo+ID4gVGhhbmtzIEVk
LCBJIHRoaW5rIEkgbWlnaHQganVzdCByZW1vdmUgdGhlIC8qKiBvbiB0aGF0IGZ1bmN0aW9uIHRo
ZW4KPiA+IChyZW1vdmluZyBpdCBmcm9tIGtkb2MgcHJvY2Vzc2luZykgIAo+IEkgZHVubm8sIHRo
YXQgbWVhbnMKPiBhKSBrZXJuZWxkb2Mgd29uJ3QgZ2VuZXJhdGUgaHRtbCBmb3IgdGhpcyBzdHJ1
Y3QKPiBiKSBuZXcgYWRkaXRpb25zIHRvIHRoZSBzdHJ1Y3Qgd2l0aG91dCBjb3JyZXNwb25kaW5n
IGtlcm5lbGRvYyB3b24ndAo+IMKgwqAgZ2VuZXJhdGUgd2FybmluZ3MKPiDCoGJvdGggb2Ygd2hp
Y2ggYXJlIG5vdCBpZGVhbCBvdXRjb21lcy4KPiBJIHJlYWxpc2UgdGhlcmUncyB2YWx1ZSBpbiBo
YXZpbmcgdG90YWxseSB3YXJuaW5nLWNsZWFuIGNvZGUsIGJ1dCBpbgo+IMKgdGhpcyBjYXNlIEkg
dGhpbmsgdGhpcyBvbmUgd2FybmluZywgZXZlbiB0aG91Z2ggaXQncyBpbmRpY2F0aW5nIGEKPiDC
oHRvb2xjaGFpbiBwcm9ibGVtIHJhdGhlciB0aGFuIGEgY29kZWJhc2UgcHJvYmxlbSwgc2hvdWxk
IGJldHRlciBzdGF5Cj4gwqAoaWYgb25seSB0byBwdXQgcHJlc3N1cmUgb24gdGhlIHRvb2xjaGFp
biB0byBmaXggaXQpLgo+IE90aGVyd2lzZSwgd2hlbiBhbmQgaWYgdGhlIHRvb2xjaGFpbiBpcyBm
aXhlZCwgd2hhdCdzIHRoZSBjaGFuY2Ugd2UnbGwKPiDCoHJlbWVtYmVyIHRvIHB1dCB0aGUgLyoq
IGJhY2s/Cj4gCj4gVGhhdCdzIGp1c3QgbXkgb3BpbmlvbiwgdGhvdWdoOyBJIHdvbid0IGJsb2Nr
IHBhdGNoZXMgdGhhdCBkaXNhZ3JlZS4KCiJUb29sY2hhaW4iIHNvdW5kcyBhIGxpdHRsZSBncmFu
ZCBpbiB0aGlzIGNvbnRleHQsIHRoZSBzY3JpcHQgdGhhdApwYXJzZXMga2RvYyBkb2VzIGJhc2lj
IHJlZ2V4cHMgdG8gY29udmVydCB0aGUgc3RhbmRhcmQga2VybmVsIG1hY3JvczoKCgkjIHJlcGxh
Y2UgREVDTEFSRV9CSVRNQVAKCSRtZW1iZXJzID1+IHMvX19FVEhUT09MX0RFQ0xBUkVfTElOS19N
T0RFX01BU0tccypcKChbXlwpXSspXCkvREVDTEFSRV9CSVRNQVAoJDEsIF9fRVRIVE9PTF9MSU5L
X01PREVfTUFTS19OQklUUykvZ29zOwoJJG1lbWJlcnMgPX4gcy9ERUNMQVJFX0JJVE1BUFxzKlwo
KFteLCldKyksXHMqKFteLCldKylcKS91bnNpZ25lZCBsb25nICQxXFtCSVRTX1RPX0xPTkdTKCQy
KVxdL2dvczsKCSMgcmVwbGFjZSBERUNMQVJFX0hBU0hUQUJMRQoJJG1lbWJlcnMgPX4gcy9ERUNM
QVJFX0hBU0hUQUJMRVxzKlwoKFteLCldKyksXHMqKFteLCldKylcKS91bnNpZ25lZCBsb25nICQx
XFsxIDw8ICgoJDIpIC0gMSlcXS9nb3M7CgkjIHJlcGxhY2UgREVDTEFSRV9LRklGTwoJJG1lbWJl
cnMgPX4gcy9ERUNMQVJFX0tGSUZPXHMqXCgoW14sKV0rKSxccyooW14sKV0rKSxccyooW14sKV0r
KVwpLyQyIFwqJDEvZ29zOwoJIyByZXBsYWNlIERFQ0xBUkVfS0ZJRk9fUFRSCgkkbWVtYmVycyA9
fiBzL0RFQ0xBUkVfS0ZJRk9fUFRSXHMqXCgoW14sKV0rKSxccyooW14sKV0rKVwpLyQyIFwqJDEv
Z29zOwoKSURLIGlmIHdlIGNhbiBleHBlY3QgaXQgdG8gdW5kZXJzdGFuZCByYW5kb20gZHJpdmVy
J3MgbWFjcm9zLi4KCgpUaGlzIGlzIHRoZSBvbmx5IHVzZSBvZiBfTUNESV9ERUNMQVJFX0JVRigp
IGluIHRoZSB0cmVlLCBob3cgYWJvdXQKY29udmVydGluZyB0aGUgZGVjbGFyYXRpb24gdG86Cgoj
ZGVjbGFyZSBfTUNESV9CVUZfTEVOKF9sZW4pICAgRElWX1JPVU5EX1VQKF9sZW4sIDQpCgoJZWZ4
X2R3b3JkX3QgdHhidWZbX01DRElfQlVGX0xFTihNQ19DTURfUFRQX0lOX1RSQU5TTUlUX0xFTk1B
WCldOwoKV291bGQgdGhhdCB3b3JrPwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
