Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E69C433EAAB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 08:42:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A99C6F6B5;
	Wed, 17 Mar 2021 07:42:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ISTZAvbhSxRi; Wed, 17 Mar 2021 07:42:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 182C46F6A0;
	Wed, 17 Mar 2021 07:42:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A9F91BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 07:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 15F3042C2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 07:42:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yyKpeJRKi4kY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 07:42:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C82D440172
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 07:42:01 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CC80264F7E;
 Wed, 17 Mar 2021 07:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615966920;
 bh=EYGJXau039RZLyL38UOfqfxwXxGxY0dFocwb73Hllnk=;
 h=Date:From:To:Cc:Subject:From;
 b=opVdpcE6BozNAt187Nv5guzqHXXdZIL/CO9KsOCPP+dnYbXVBfkRio46QrzoRNN5I
 ff2B13XPhWGhGBU+y/1Mze5xfFUtQ0xX6GqdEJ9kz6C0j3Uzs/kXpX4aCQyAQ7UAQA
 +JA3gCpKajN50U1WUNyxpZQPBQo4wElcoI1WDUUJEuRv6U0CnK71rEAnCEaAGD+Mz9
 dTzMhpkf+mV+9FTbTvnGZ39gZTorw6uxRKTNzFQLmYtwDjslvjRgBe0C8C23nKT19r
 LTOcCn/Ku7OnvZ5+akmumHxLLF+H+7HYAxEy7pIW8nf+ha442kF1gbTACRyb6RFCGr
 mMRYGrWLP5APg==
Date: Wed, 17 Mar 2021 01:41:48 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210317064148.GA55123@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] ixgbe: Fix out-of-bounds warning in
 ixgbe_host_interface_command()
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
Cc: linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Rml4IHRoZSBmb2xsb3dpbmcgb3V0LW9mLWJvdW5kcyB3YXJuaW5nIGJ5IHJlcGxhY2luZyB0aGUg
b25lLWVsZW1lbnQKYXJyYXkgaW4gYW4gYW5vbnltb3VzIHVuaW9uIHdpdGggYSBwb2ludGVyOgoK
ICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5v
CmRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5jOiBJbiBmdW5j
dGlvbiDigJhpeGdiZV9ob3N0X2ludGVyZmFjZV9jb21tYW5k4oCZOgpkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9peGdiZS9peGdiZV9jb21tb24uYzozNzI5OjEzOiB3YXJuaW5nOiBhcnJheSBz
dWJzY3JpcHQgMSBpcyBhYm92ZSBhcnJheSBib3VuZHMgb2Yg4oCYdTMyWzFd4oCZIHtha2Eg4oCY
dW5zaWduZWQgaW50WzFd4oCZfSBbLVdhcnJheS1ib3VuZHNdCiAzNzI5IHwgICBicC0+dTMyYXJy
W2JpXSA9IElYR0JFX1JFQURfUkVHX0FSUkFZKGh3LCBJWEdCRV9GTEVYX01ORywgYmkpOwogICAg
ICB8ICAgfn5+fn5+fn5+fl5+fn4KZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfY29tbW9uLmM6MzY4Mjo3OiBub3RlOiB3aGlsZSByZWZlcmVuY2luZyDigJh1MzJhcnLigJkK
IDM2ODIgfCAgIHUzMiB1MzJhcnJbMV07CiAgICAgIHwgICAgICAgXn5+fn5+CgpUaGlzIGhlbHBz
IHdpdGggdGhlIG9uZ29pbmcgZWZmb3J0cyB0byBnbG9iYWxseSBlbmFibGUgLVdhcnJheS1ib3Vu
ZHMuCgpOb3RpY2UgdGhhdCwgdGhlIHVzdWFsIGFwcHJvYWNoIHRvIGZpeCB0aGVzZSBzb3J0cyBv
ZiBpc3N1ZXMgaXMgdG8KcmVwbGFjZSB0aGUgb25lLWVsZW1lbnQgYXJyYXkgd2l0aCBhIGZsZXhp
YmxlLWFycmF5IG1lbWJlci4gSG93ZXZlciwKZmxleGlibGUgYXJyYXlzIHNob3VsZCBub3QgYmUg
dXNlZCBpbiB1bmlvbnMuIFRoYXQsIHRvZ2V0aGVyIHdpdGggdGhlCmZhY3QgdGhhdCB0aGUgYXJy
YXkgbm90YXRpb24gaXMgbm90IGJlaW5nIGFmZmVjdGVkIGluIGFueSB3YXlzLCBpcyB3aHkKdGhl
IHBvaW50ZXIgYXBwcm9hY2ggd2FzIGNob3NlbiBpbiB0aGlzIGNhc2UuCgpMaW5rOiBodHRwczov
L2dpdGh1Yi5jb20vS1NQUC9saW51eC9pc3N1ZXMvMTA5ClNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8g
QS4gUi4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9peGdiZS9peGdiZV9jb21tb24uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmMKaW5kZXggNjJkZGI0NTJmODYyLi5iZmYzZGMxYWY3
MDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2Nv
bW1vbi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1v
bi5jCkBAIC0zNjc5LDcgKzM2NzksNyBAQCBzMzIgaXhnYmVfaG9zdF9pbnRlcmZhY2VfY29tbWFu
ZChzdHJ1Y3QgaXhnYmVfaHcgKmh3LCB2b2lkICpidWZmZXIsCiAJdTMyIGhkcl9zaXplID0gc2l6
ZW9mKHN0cnVjdCBpeGdiZV9oaWNfaGRyKTsKIAl1bmlvbiB7CiAJCXN0cnVjdCBpeGdiZV9oaWNf
aGRyIGhkcjsKLQkJdTMyIHUzMmFyclsxXTsKKwkJdTMyICp1MzJhcnI7CiAJfSAqYnAgPSBidWZm
ZXI7CiAJdTE2IGJ1Zl9sZW4sIGR3b3JkX2xlbjsKIAlzMzIgc3RhdHVzOwotLSAKMi4yNy4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
