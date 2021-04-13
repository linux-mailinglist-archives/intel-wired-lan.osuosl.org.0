Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4E735E6C8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 21:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA15140130;
	Tue, 13 Apr 2021 19:03:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lhBQhq_if-C0; Tue, 13 Apr 2021 19:03:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 05DF84012E;
	Tue, 13 Apr 2021 19:03:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 79BD71BF370
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 19:03:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 73F794012E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 19:03:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dAvn-Rl-yh8S for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 19:03:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 725AA400A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 19:03:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 15FD8613C7;
 Tue, 13 Apr 2021 19:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618340616;
 bh=024RQYE9FOwSubSEu8+U+9O/gSbth/Wav0L2yaIq/CE=;
 h=Date:From:To:Cc:Subject:From;
 b=W9GfPXo6hE3q/OpLX9wNTbZjLXShA7tzwr8wzyMijum7OMWJsbTnqTy1cypdHf8Vv
 1/hrOdrXOWrsNG6HGJqCVnB5lQ0yPbNOV6ot6SH2ryuDh4UBYITLEZgF8pV9UVR6Ur
 GksGKBQ4WSEp4zpGgNp6FVS/X9BBb4pF5l1X+DlMAM76Yougyp6xuGbodqw3xzHptb
 dIfoP6qlh2jt/oBJltDErEaHC35wDR6IiQsUpk0BOecS/j8uWgPebtD43WQfd1zJo6
 IXhzMJ5Iq5Zc5LBA6cpxkMkcaAVROZlHD62p3cMGFD6CH3EVsTrHxqqueXN2b76y3E
 fgUtf1572LoCQ==
Date: Tue, 13 Apr 2021 14:03:45 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210413190345.GA304933@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] ixgbe: Fix out-bounds warning in
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

UmVwbGFjZSB1bmlvbiB3aXRoIGEgY291cGxlIG9mIHBvaW50ZXJzIGluIG9yZGVyIHRvIGZpeCB0
aGUgZm9sbG93aW5nCm91dC1vZi1ib3VuZHMgd2FybmluZzoKCiAgQ0MgW01dICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9jb21tb24ubwpkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV9jb21tb24uYzogSW4gZnVuY3Rpb24g4oCYaXhnYmVfaG9zdF9p
bnRlcmZhY2VfY29tbWFuZOKAmToKZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhn
YmVfY29tbW9uLmM6MzcyOToxMzogd2FybmluZzogYXJyYXkgc3Vic2NyaXB0IDEgaXMgYWJvdmUg
YXJyYXkgYm91bmRzIG9mIOKAmHUzMlsxXeKAmSB7YWthIOKAmHVuc2lnbmVkIGludFsxXeKAmX0g
Wy1XYXJyYXktYm91bmRzXQogMzcyOSB8ICAgYnAtPnUzMmFycltiaV0gPSBJWEdCRV9SRUFEX1JF
R19BUlJBWShodywgSVhHQkVfRkxFWF9NTkcsIGJpKTsKICAgICAgfCAgIH5+fn5+fn5+fn5efn5+
CmRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5jOjM2ODI6Nzog
bm90ZTogd2hpbGUgcmVmZXJlbmNpbmcg4oCYdTMyYXJy4oCZCiAzNjgyIHwgICB1MzIgdTMyYXJy
WzFdOwogICAgICB8ICAgICAgIF5+fn5+fgoKVGhpcyBoZWxwcyB3aXRoIHRoZSBvbmdvaW5nIGVm
Zm9ydHMgdG8gZ2xvYmFsbHkgZW5hYmxlIC1XYXJyYXktYm91bmRzLgoKTGluazogaHR0cHM6Ly9n
aXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzEwOQpDby1kZXZlbG9wZWQtYnk6IEtlZXMgQ29v
ayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgpTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNj
b29rQGNocm9taXVtLm9yZz4KU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3Vz
dGF2b2Fyc0BrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2Jl
L2l4Z2JlX2NvbW1vbi5jIHwgMTYgKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9jb21tb24uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5jCmluZGV4IDAzY2NiZTZiNjZkMi4uZTkwYjUwNDdl
Njk1IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9j
b21tb24uYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9jb21t
b24uYwpAQCAtMzY3OCwxMCArMzY3OCw4IEBAIHMzMiBpeGdiZV9ob3N0X2ludGVyZmFjZV9jb21t
YW5kKHN0cnVjdCBpeGdiZV9odyAqaHcsIHZvaWQgKmJ1ZmZlciwKIAkJCQkgYm9vbCByZXR1cm5f
ZGF0YSkKIHsKIAl1MzIgaGRyX3NpemUgPSBzaXplb2Yoc3RydWN0IGl4Z2JlX2hpY19oZHIpOwot
CXVuaW9uIHsKLQkJc3RydWN0IGl4Z2JlX2hpY19oZHIgaGRyOwotCQl1MzIgdTMyYXJyWzFdOwot
CX0gKmJwID0gYnVmZmVyOworCXN0cnVjdCBpeGdiZV9oaWNfaGRyICpoZHIgPSBidWZmZXI7CisJ
dTMyICp1MzJhcnIgPSBidWZmZXI7CiAJdTE2IGJ1Zl9sZW4sIGR3b3JkX2xlbjsKIAlzMzIgc3Rh
dHVzOwogCXUzMiBiaTsKQEAgLTM3MDcsMTIgKzM3MDUsMTIgQEAgczMyIGl4Z2JlX2hvc3RfaW50
ZXJmYWNlX2NvbW1hbmQoc3RydWN0IGl4Z2JlX2h3ICpodywgdm9pZCAqYnVmZmVyLAogCiAJLyog
Zmlyc3QgcHVsbCBpbiB0aGUgaGVhZGVyIHNvIHdlIGtub3cgdGhlIGJ1ZmZlciBsZW5ndGggKi8K
IAlmb3IgKGJpID0gMDsgYmkgPCBkd29yZF9sZW47IGJpKyspIHsKLQkJYnAtPnUzMmFycltiaV0g
PSBJWEdCRV9SRUFEX1JFR19BUlJBWShodywgSVhHQkVfRkxFWF9NTkcsIGJpKTsKLQkJbGUzMl90
b19jcHVzKCZicC0+dTMyYXJyW2JpXSk7CisJCXUzMmFycltiaV0gPSBJWEdCRV9SRUFEX1JFR19B
UlJBWShodywgSVhHQkVfRkxFWF9NTkcsIGJpKTsKKwkJbGUzMl90b19jcHVzKCZ1MzJhcnJbYmld
KTsKIAl9CiAKIAkvKiBJZiB0aGVyZSBpcyBhbnkgdGhpbmcgaW4gZGF0YSBwb3NpdGlvbiBwdWxs
IGl0IGluICovCi0JYnVmX2xlbiA9IGJwLT5oZHIuYnVmX2xlbjsKKwlidWZfbGVuID0gaGRyLT5i
dWZfbGVuOwogCWlmICghYnVmX2xlbikKIAkJZ290byByZWxfb3V0OwogCkBAIC0zNzI3LDggKzM3
MjUsOCBAQCBzMzIgaXhnYmVfaG9zdF9pbnRlcmZhY2VfY29tbWFuZChzdHJ1Y3QgaXhnYmVfaHcg
Kmh3LCB2b2lkICpidWZmZXIsCiAKIAkvKiBQdWxsIGluIHRoZSByZXN0IG9mIHRoZSBidWZmZXIg
KGJpIGlzIHdoZXJlIHdlIGxlZnQgb2ZmKSAqLwogCWZvciAoOyBiaSA8PSBkd29yZF9sZW47IGJp
KyspIHsKLQkJYnAtPnUzMmFycltiaV0gPSBJWEdCRV9SRUFEX1JFR19BUlJBWShodywgSVhHQkVf
RkxFWF9NTkcsIGJpKTsKLQkJbGUzMl90b19jcHVzKCZicC0+dTMyYXJyW2JpXSk7CisJCXUzMmFy
cltiaV0gPSBJWEdCRV9SRUFEX1JFR19BUlJBWShodywgSVhHQkVfRkxFWF9NTkcsIGJpKTsKKwkJ
bGUzMl90b19jcHVzKCZ1MzJhcnJbYmldKTsKIAl9CiAKIHJlbF9vdXQ6Ci0tIAoyLjI3LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
