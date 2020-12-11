Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA202D7BB9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Dec 2020 17:59:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8E27120409;
	Fri, 11 Dec 2020 16:59:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JL-OsHJva2Bz; Fri, 11 Dec 2020 16:59:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 319252D946;
	Fri, 11 Dec 2020 16:59:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2AE1F1BF286
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 16:59:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 25E6487396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 16:59:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jkWSWeJZOd1A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Dec 2020 16:59:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 763DA872BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 16:59:25 +0000 (UTC)
IronPort-SDR: GpxYu892UmetuMv8HZ/eYGDqeJcrKhQCUEc4U9EMws8fvfkNL4C6UfN/AWAP5x1uUOJq4bMjQF
 fcCNE0/hbkyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9832"; a="174575031"
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; d="scan'208";a="174575031"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2020 08:59:24 -0800
IronPort-SDR: wNA6O4mTlDWoiViRkY0PmDumrX/67R3hrEp9rl08fNXjikevz9zcA0l1V9RuRgWahyZY2hCc4U
 n5Pw7KWlp9GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; d="scan'208";a="365497494"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga008.jf.intel.com with ESMTP; 11 Dec 2020 08:59:22 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Dec 2020 17:49:48 +0100
Message-Id: <20201211164956.59628-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/8] i40e/ice cleanups
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCgpUaGlzIHNlcmllcyBpcyBtb3N0bHkgYWJvdXQgdGhlIGNsZWFudXBzIG9uIFJ4IChaQy9u
b3JtYWwpIHBhdGhzIGJvdGggaW4KaWNlIGFuZCBpNDBlIGRyaXZlcnMuIFRoaW5ncyB0aGF0IHN0
YW5kIG91dCBhcmUgdGhlIHNpbXBsaWZhY3Rpb25zIG9mCmljZV9jaGFuZ2VfbXR1IGFuZCBpNDBl
X3hkcF9zZXR1cC4KClRoYW5rcyEKCkJqw7ZybiBUw7ZwZWwgKDEpOgogIGk0MGUsIHhzazogU2lt
cGxpZnkgdGhlIGRvLXdoaWxlIGFsbG9jYXRpb24gbG9vcAoKTWFjaWVqIEZpamFsa293c2tpICg3
KToKICBpNDBlOiBkcm9wIHJlZHVuZGFudCBjaGVjayB3aGVuIHNldHRpbmcgeGRwIHByb2cKICBp
NDBlOiBkcm9wIG1pc2xlYWRpbmcgZnVuY3Rpb24gY29tbWVudHMKICBpNDBlOiBhZGp1c3QgaTQw
ZV9pc19ub25fZW9wCiAgaWNlOiBzaW1wbGlmeSBpY2VfcnVuX3hkcAogIGljZTogbW92ZSBza2Ig
cG9pbnRlciBmcm9tIHJ4X2J1ZiB0byByeF9yaW5nCiAgaWNlOiByZW1vdmUgcmVkdW5kYW50IGNo
ZWNrcyBpbiBpY2VfY2hhbmdlX210dQogIGljZTogc2tpcCBOVUxMIGNoZWNrIGFnYWluc3QgWERQ
IHByb2cgaW4gWkMgcGF0aAoKIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9t
YWluLmMgfCAgMyAtLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cngu
YyB8IDU2ICsrKysrLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX3hzay5jICB8ICA0ICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX21haW4uYyAgIHwgIDkgLS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV90eHJ4LmMgICB8IDQzICsrKysrKystLS0tLS0tLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfdHhyeC5oICAgfCAgMiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV94c2suYyAgICB8ICA3ICsrLQogNyBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25z
KCspLCA5MCBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
