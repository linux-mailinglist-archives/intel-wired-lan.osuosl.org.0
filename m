Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60323896EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 May 2021 21:44:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E42140158;
	Wed, 19 May 2021 19:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4yjJ6qdQFz-a; Wed, 19 May 2021 19:44:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80C0640466;
	Wed, 19 May 2021 19:44:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB0211BF3E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 19:44:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8DF040466
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 19:44:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qPtgGzhelslX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 May 2021 19:44:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from andre.telenet-ops.be (andre.telenet-ops.be
 [IPv6:2a02:1800:120:4::f00:15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 71C1640158
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 19:44:02 +0000 (UTC)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:9cc6:7165:bcc2:1e70])
 by andre.telenet-ops.be with bizsmtp
 id 6jjt2500n31btb901jjupH; Wed, 19 May 2021 21:43:58 +0200
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1ljS6j-007Lx7-GM; Wed, 19 May 2021 21:43:53 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1ljS6i-007mWt-Pz; Wed, 19 May 2021 21:43:52 +0200
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Qi Zhang <qi.z.zhang@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Yahui Cao <yahui.cao@intel.com>,
 Beilei Xing <beilei.xing@intel.com>, Simei Su <simei.su@intel.com>,
 Jeff Guo <jia.guo@intel.com>, "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>
Date: Wed, 19 May 2021 21:43:50 +0200
Message-Id: <20210519194350.1854798-1-geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] virtchnl: Add missing padding to
 virtchnl_proto_hdrs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gbTY4ayAoQ29sZGZpcmUgTTU0N3gpOgoKICAgICAgQ0MgICAgICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5vCiAgICBJbiBmaWxlIGluY2x1ZGVkIGZyb20gZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3Byb3RvdHlwZS5oOjksCgkJICAgICBm
cm9tIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oOjQxLAoJCSAgICAgZnJv
bSBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jOjEyOgogICAgaW5j
bHVkZS9saW51eC9hdmYvdmlydGNobmwuaDoxNTM6MzY6IHdhcm5pbmc6IGRpdmlzaW9uIGJ5IHpl
cm8gWy1XZGl2LWJ5LXplcm9dCiAgICAgIDE1MyB8ICB7IHZpcnRjaG5sX3N0YXRpY19hc3NlcnRf
IyNYID0gKG4pLygoc2l6ZW9mKHN0cnVjdCBYKSA9PSAobikpID8gMSA6IDApIH0KCSAgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KICAgIGluY2x1ZGUvbGludXgvYXZmL3Zp
cnRjaG5sLmg6ODQ0OjE6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhWSVJUQ0hOTF9D
SEVDS19TVFJVQ1RfTEVO4oCZCiAgICAgIDg0NCB8IFZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4o
MjMxMiwgdmlydGNobmxfcHJvdG9faGRycyk7CgkgIHwgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fgogICAgaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaDo4NDQ6MzM6IGVycm9yOiBlbnVtZXJh
dG9yIHZhbHVlIGZvciDigJh2aXJ0Y2hubF9zdGF0aWNfYXNzZXJ0X3ZpcnRjaG5sX3Byb3RvX2hk
cnPigJkgaXMgbm90IGFuIGludGVnZXIgY29uc3RhbnQKICAgICAgODQ0IHwgVklSVENITkxfQ0hF
Q0tfU1RSVUNUX0xFTigyMzEyLCB2aXJ0Y2hubF9wcm90b19oZHJzKTsKCSAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn4KCk9uIG02OGssIGludGVn
ZXJzIGFyZSBhbGlnbmVkIG9uIGFkZHJlc3NlcyB0aGF0IGFyZSBtdWx0aXBsZXMgb2YgdHdvLApu
b3QgZm91ciwgYnl0ZXMuICBIZW5jZSB0aGUgc2l6ZSBvZiBhIHN0cnVjdHVyZSBjb250YWluaW5n
IGludGVnZXJzIG1heQpub3QgYmUgZGl2aXNpYmxlIGJ5IDQuCgpGaXggdGhpcyBieSBhZGRpbmcg
ZXhwbGljaXQgcGFkZGluZy4KCkZpeGVzOiAxZjdlYTFjZDZhMzc0ODQyICgiaWNlOiBFbmFibGUg
RkRJUiBDb25maWd1cmUgZm9yIEFWRiIpClJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8
bGtwQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBs
aW51eC1tNjhrLm9yZz4KLS0tCkNvbXBpbGUtdGVzdGVkIG9ubHkuCi0tLQogaW5jbHVkZS9saW51
eC9hdmYvdmlydGNobmwuaCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaCBiL2luY2x1ZGUvbGludXgv
YXZmL3ZpcnRjaG5sLmgKaW5kZXggNTY1ZGVlYTZmZmU4OGI5OS4uODYxMmY4ZmM4NmMxZGIyMSAx
MDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9hdmYvdmlydGNobmwuaAorKysgYi9pbmNsdWRlL2xp
bnV4L2F2Zi92aXJ0Y2hubC5oCkBAIC04MzAsNiArODMwLDcgQEAgVklSVENITkxfQ0hFQ0tfU1RS
VUNUX0xFTig3MiwgdmlydGNobmxfcHJvdG9faGRyKTsKIAogc3RydWN0IHZpcnRjaG5sX3Byb3Rv
X2hkcnMgewogCXU4IHR1bm5lbF9sZXZlbDsKKwl1OCBwYWRbM107CiAJLyoqCiAJICogc3BlY2lm
eSB3aGVyZSBwcm90b2NvbCBoZWFkZXIgc3RhcnQgZnJvbS4KIAkgKiAwIC0gZnJvbSB0aGUgb3V0
ZXIgbGF5ZXIKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
