Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D2580628A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 00:01:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89BE341C07;
	Tue,  5 Dec 2023 23:01:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89BE341C07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701817299;
	bh=DgjmzaXk/171ErZEktuspMhl+V+xQaR7IWNg1SHbudg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b+Okv83zIxLwS3A805SQuSmlSDwJqi3OjphU8XmU5gU98Nx8AkQ7ZeG6q4p9LHElF
	 e5mc32lO+7Gt4Gaj14Ae1lr2yutnnQlxMhvN5cVkVluO6FG0qtwl+jSGMtnk8OOqoo
	 yW1qaYxeOIvET8o4koUcPjwY2pLi4DBQAusNe3h++11EhcfRzshNTaAkHnuERnW8OQ
	 D5A/OQ7xrFrqVoRsJCOuwIhTYPa0etFzSIJXGaluahX6xOBhHOq9ZvyZUUGiwrCXWh
	 goPlkqDrTtzhBQ2e0w0Uwy/bN0zVUS9ZEPFbUV3WdYpN06KWc6LgKaAYLx1GDwJZCu
	 PzIz5orhqWvZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8omx-3sGTDLO; Tue,  5 Dec 2023 23:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9385B41BBF;
	Tue,  5 Dec 2023 23:01:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9385B41BBF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4CD181BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 23:01:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 25ADC6140E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 23:01:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25ADC6140E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ypvs3330pvHT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 23:01:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4A69613F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 23:01:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4A69613F6
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="460462316"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; d="scan'208";a="460462316"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 15:01:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="805434444"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; d="scan'208";a="805434444"
Received: from blavena-mobl2.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.46.234])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 15:01:22 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Tue,  5 Dec 2023 16:00:44 -0700
Message-Id: <20231205230049.18872-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231205230049.18872-1-ahmed.zaki@intel.com>
References: <20231205230049.18872-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701817288; x=1733353288;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c8cXsvXJ//SEx4yz66XlTEGI6kuDt9mNC9s47buts3s=;
 b=ANlDoIV63TLxW+s2cpdumK77aD9FFW2kaLnE8PfWMpEHNDu/gDwtg6jU
 SB7YdfeaKMRUMJ2Bohpq8UtzfATpTxOx7DMeMhp/YPr2GUp3lnHBs6ZEG
 DOfuf7OFrj3bxAJpZD8MNBm0wYysX6+N6Wa/eSZrHx6kLkz6eix5PSVzA
 EgBdZ6JXd992Pjis8TdVqbKqzKv6qGJ1bwkI7x9AIMAF0e6g9UqUZiPeW
 leM1UIshngKvoJI6yckEjS9sqNiLFfJ20ivtZfwpS7qT9bOhTHeSLyMyA
 aULmeWA1ENUaYtL7h/C3oARaG96OSmhBi6FxGZohuQJ7l2HO1t6zi+/6y
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ANlDoIV6
Subject: [Intel-wired-lan] [PATCH net-next v7 3/8] net: ethtool: add support
 for symmetric-xor RSS hash
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 vladimir.oltean@nxp.com, gal@nvidia.com, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, Ahmed Zaki <ahmed.zaki@intel.com>,
 ecree.xilinx@gmail.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

U3ltbWV0cmljIFJTUyBoYXNoIGZ1bmN0aW9ucyBhcmUgYmVuZWZpY2lhbCBpbiBhcHBsaWNhdGlv
bnMgdGhhdCBtb25pdG9yCmJvdGggVHggYW5kIFJ4IHBhY2tldHMgb2YgdGhlIHNhbWUgZmxvdyAo
SURTLCBzb2Z0d2FyZSBmaXJld2FsbHMsIC4uZXRjKS4KR2V0dGluZyBhbGwgdHJhZmZpYyBvZiB0
aGUgc2FtZSBmbG93IG9uIHRoZSBzYW1lIFJYIHF1ZXVlIHJlc3VsdHMgaW4KaGlnaGVyIENQVSBj
YWNoZSBlZmZpY2llbmN5LgoKQSBOSUMgdGhhdCBzdXBwb3J0cyAic3ltbWV0cmljLXhvciIgY2Fu
IGFjaGlldmUgdGhpcyBSU1MgaGFzaCBzeW1tZXRyeQpieSBYT1JpbmcgdGhlIHNvdXJjZSBhbmQg
ZGVzdGluYXRpb24gZmllbGRzIGFuZCBwYXNzIHRoZSB2YWx1ZXMgdG8gdGhlClJTUyBoYXNoIGFs
Z29yaXRobS4KClRoZSB1c2VyIG1heSByZXF1ZXN0IFJTUyBoYXNoIHN5bW1ldHJ5IGZvciBhIHNw
ZWNpZmljIGFsZ29yaXRobSwgdmlhOgoKICAgICMgZXRodG9vbCAtWCBldGgwIGhmdW5jIDxoYXNo
X2FsZz4gc3ltbWV0cmljLXhvcgoKb3IgdHVybiBzeW1tZXRyeSBvZmYgKGFzeW1tZXRyaWMpIGJ5
OgoKICAgICMgZXRodG9vbCAtWCBldGgwIGhmdW5jIDxoYXNoX2FsZz4KClRoZSBzcGVjaWZpYyBm
aWVsZHMgZm9yIGVhY2ggZmxvdyB0eXBlIHNob3VsZCB0aGVuIGJlIHNwZWNpZmllZCBhcyB1c3Vh
bAp2aWE6CiAgICAjIGV0aHRvb2wgLU58LVUgZXRoMCByeC1mbG93LWhhc2ggPGZsb3dfdHlwZT4g
c3xkfGZ8bgoKUmV2aWV3ZWQtYnk6IFdvamNpZWNoIERyZXdlayA8d29qY2llY2guZHJld2VrQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWhtZWQgWmFraSA8YWhtZWQuemFraUBpbnRlbC5jb20+
Ci0tLQogRG9jdW1lbnRhdGlvbi9uZXRsaW5rL3NwZWNzL2V0aHRvb2wueWFtbCAgICAgfCAgNCAr
KysKIERvY3VtZW50YXRpb24vbmV0d29ya2luZy9ldGh0b29sLW5ldGxpbmsucnN0IHwgIDYgKysr
LQogRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0ICAgICAgICAgfCAxNSArKysr
KysrKysrCiBpbmNsdWRlL2xpbnV4L2V0aHRvb2wuaCAgICAgICAgICAgICAgICAgICAgICB8ICAz
ICsrCiBpbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oICAgICAgICAgICAgICAgICB8IDE2ICsr
KysrKysrKystCiBpbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbF9uZXRsaW5rLmggICAgICAgICB8
ICAxICsKIG5ldC9ldGh0b29sL2lvY3RsLmMgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMzAg
KysrKysrKysrKysrKysrKystLS0KIG5ldC9ldGh0b29sL3Jzcy5jICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgIDUgKysrKwogOCBmaWxlcyBjaGFuZ2VkLCA3NCBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vbmV0bGluay9zcGVjcy9l
dGh0b29sLnlhbWwgYi9Eb2N1bWVudGF0aW9uL25ldGxpbmsvc3BlY3MvZXRodG9vbC55YW1sCmlu
ZGV4IDVjN2E2NWIwMDliNC4uMTk3MjA4ZjQxOWRjIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9u
L25ldGxpbmsvc3BlY3MvZXRodG9vbC55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vbmV0bGluay9z
cGVjcy9ldGh0b29sLnlhbWwKQEAgLTkwOCw2ICs5MDgsOSBAQCBhdHRyaWJ1dGUtc2V0czoKICAg
ICAgIC0KICAgICAgICAgbmFtZTogaGtleQogICAgICAgICB0eXBlOiBiaW5hcnkKKyAgICAgIC0K
KyAgICAgICAgbmFtZTogaW5wdXRfeGZybQorICAgICAgICB0eXBlOiB1MzIKICAgLQogICAgIG5h
bWU6IHBsY2EKICAgICBhdHRyaWJ1dGVzOgpAQCAtMTU5OCw2ICsxNjAxLDcgQEAgb3BlcmF0aW9u
czoKICAgICAgICAgICAgIC0gaGZ1bmMKICAgICAgICAgICAgIC0gaW5kaXIKICAgICAgICAgICAg
IC0gaGtleQorICAgICAgICAgICAgLSBpbnB1dF94ZnJtCiAgICAgICBkdW1wOiAqcnNzLWdldC1v
cAogICAgIC0KICAgICAgIG5hbWU6IHBsY2EtZ2V0LWNmZwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9uZXR3b3JraW5nL2V0aHRvb2wtbmV0bGluay5yc3QgYi9Eb2N1bWVudGF0aW9uL25ldHdv
cmtpbmcvZXRodG9vbC1uZXRsaW5rLnJzdAppbmRleCA2YTQ5NjI0YTljYmYuLmQ1ODNkOWFiZjJm
OCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2V0aHRvb2wtbmV0bGluay5y
c3QKKysrIGIvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL2V0aHRvb2wtbmV0bGluay5yc3QKQEAg
LTE3NzQsMTIgKzE3NzQsMTYgQEAgS2VybmVsIHJlc3BvbnNlIGNvbnRlbnRzOgogICBgYEVUSFRP
T0xfQV9SU1NfSEZVTkNgYCAgICAgICAgICAgICAgdTMyICAgICBSU1MgaGFzaCBmdW5jCiAgIGBg
RVRIVE9PTF9BX1JTU19JTkRJUmBgICAgICAgICAgICAgICBiaW5hcnkgIEluZGlyIHRhYmxlIGJ5
dGVzCiAgIGBgRVRIVE9PTF9BX1JTU19IS0VZYGAgICAgICAgICAgICAgICBiaW5hcnkgIEhhc2gg
a2V5IGJ5dGVzCisgIGBgRVRIVE9PTF9BX1JTU19JTlBVVF9YRlJNYGAgICAgICAgICB1MzIgICAg
IFJTUyBpbnB1dCBkYXRhIHRyYW5zZm9ybWF0aW9uCiA9PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09ICA9PT09PT0gID09PT09PT09PT09PT09PT09PT09PT09PT09CiAKIEVUSFRP
T0xfQV9SU1NfSEZVTkMgYXR0cmlidXRlIGlzIGJpdG1hcCBpbmRpY2F0aW5nIHRoZSBoYXNoIGZ1
bmN0aW9uCiBiZWluZyB1c2VkLiBDdXJyZW50IHN1cHBvcnRlZCBvcHRpb25zIGFyZSB0b2VwbGl0
eiwgeG9yIG9yIGNyYzMyLgotRVRIVE9PTF9BX1JTU19JTkRJUiBhdHRyaWJ1dGUgcmV0dXJucyBS
U1MgaW5kcmVjdGlvbiB0YWJsZSB3aGVyZSBlYWNoIGJ5dGUKK0VUSFRPT0xfQV9SU1NfSU5ESVIg
YXR0cmlidXRlIHJldHVybnMgUlNTIGluZGlyZWN0aW9uIHRhYmxlIHdoZXJlIGVhY2ggYnl0ZQog
aW5kaWNhdGVzIHF1ZXVlIG51bWJlci4KK0VUSFRPT0xfQV9SU1NfSU5QVVRfWEZSTSBhdHRyaWJ1
dGUgaXMgYSBiaXRtYXAgaW5kaWNhdGluZyB0aGUgdHlwZSBvZgordHJhbnNmb3JtYXRpb24gYXBw
bGllZCB0byB0aGUgaW5wdXQgcHJvdG9jb2wgZmllbGRzIGJlZm9yZSBnaXZlbiB0byB0aGUgUlNT
CitoZnVuYy4gQ3VycmVudCBzdXBwb3J0ZWQgb3B0aW9uIGlzIHN5bW1ldHJpYy14b3IuCiAKIFBM
Q0FfR0VUX0NGRwogPT09PT09PT09PT09CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL25ldHdv
cmtpbmcvc2NhbGluZy5yc3QgYi9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvc2NhbGluZy5yc3QK
aW5kZXggMDNhZTE5YTY4OWZjLi40ZWI1MGJjYjlkNDIgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRp
b24vbmV0d29ya2luZy9zY2FsaW5nLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcv
c2NhbGluZy5yc3QKQEAgLTQ0LDYgKzQ0LDIxIEBAIGJ5IG1hc2tpbmcgb3V0IHRoZSBsb3cgb3Jk
ZXIgc2V2ZW4gYml0cyBvZiB0aGUgY29tcHV0ZWQgaGFzaCBmb3IgdGhlCiBwYWNrZXQgKHVzdWFs
bHkgYSBUb2VwbGl0eiBoYXNoKSwgdGFraW5nIHRoaXMgbnVtYmVyIGFzIGEga2V5IGludG8gdGhl
CiBpbmRpcmVjdGlvbiB0YWJsZSBhbmQgcmVhZGluZyB0aGUgY29ycmVzcG9uZGluZyB2YWx1ZS4K
IAorU29tZSBOSUNzIHN1cHBvcnQgc3ltbWV0cmljIFJTUyBoYXNoaW5nIHdoZXJlLCBpZiB0aGUg
SVAgKHNvdXJjZSBhZGRyZXNzLAorZGVzdGluYXRpb24gYWRkcmVzcykgYW5kIFRDUC9VRFAgKHNv
dXJjZSBwb3J0LCBkZXN0aW5hdGlvbiBwb3J0KSB0dXBsZXMKK2FyZSBzd2FwcGVkLCB0aGUgY29t
cHV0ZWQgaGFzaCBpcyB0aGUgc2FtZS4gVGhpcyBpcyBiZW5lZmljaWFsIGluIHNvbWUKK2FwcGxp
Y2F0aW9ucyB0aGF0IG1vbml0b3IgVENQL0lQIGZsb3dzIChJRFMsIGZpcmV3YWxscywgLi4uZXRj
KSBhbmQgbmVlZAorYm90aCBkaXJlY3Rpb25zIG9mIHRoZSBmbG93IHRvIGxhbmQgb24gdGhlIHNh
bWUgUnggcXVldWUgKGFuZCBDUFUpLiBUaGUKKyJTeW1tZXRyaWMtWE9SIiBpcyBhIHR5cGUgb2Yg
UlNTIGFsZ29yaXRobXMgdGhhdCBhY2hpZXZlcyB0aGlzIGhhc2gKK3N5bW1ldHJ5IGJ5IFhPUmlu
ZyB0aGUgaW5wdXQgc291cmNlIGFuZCBkZXN0aW5hdGlvbiBmaWVsZHMgb2YgdGhlIElQCithbmQv
b3IgTDQgcHJvdG9jb2xzLiBUaGlzLCBob3dldmVyLCByZXN1bHRzIGluIHJlZHVjZWQgaW5wdXQg
ZW50cm9weSBhbmQKK2NvdWxkIHBvdGVudGlhbGx5IGJlIGV4cGxvaXRlZC4gU3BlY2lmaWNhbGx5
LCB0aGUgYWxnb3JpdGhtIFhPUnMgdGhlIGlucHV0CithcyBmb2xsb3dzOjoKKworICAgICMgKFNS
Q19JUCBeIERTVF9JUCwgU1JDX0lQIF4gRFNUX0lQLCBTUkNfUE9SVCBeIERTVF9QT1JULCBTUkNf
UE9SVCBeIERTVF9QT1JUKQorCitUaGUgcmVzdWx0IGlzIHRoZW4gZmVkIHRvIHRoZSB1bmRlcmx5
aW5nIFJTUyBhbGdvcml0aG0uCisKIFNvbWUgYWR2YW5jZWQgTklDcyBhbGxvdyBzdGVlcmluZyBw
YWNrZXRzIHRvIHF1ZXVlcyBiYXNlZCBvbgogcHJvZ3JhbW1hYmxlIGZpbHRlcnMuIEZvciBleGFt
cGxlLCB3ZWJzZXJ2ZXIgYm91bmQgVENQIHBvcnQgODAgcGFja2V0cwogY2FuIGJlIGRpcmVjdGVk
IHRvIHRoZWlyIG93biByZWNlaXZlIHF1ZXVlLiBTdWNoIOKAnG4tdHVwbGXigJ0gZmlsdGVycyBj
YW4KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZXRodG9vbC5oIGIvaW5jbHVkZS9saW51eC9l
dGh0b29sLmgKaW5kZXggYzMzYmUwZDBmOGNkLi4wZmQ1ZTM1YjQ0MWEgMTAwNjQ0Ci0tLSBhL2lu
Y2x1ZGUvbGludXgvZXRodG9vbC5oCisrKyBiL2luY2x1ZGUvbGludXgvZXRodG9vbC5oCkBAIC02
MDAsNiArNjAwLDggQEAgc3RydWN0IGV0aHRvb2xfbW1fc3RhdHMgewogICoJcGFyYW1ldGVyLgog
ICogQGNhcF9yc3NfY3R4X3N1cHBvcnRlZDogaW5kaWNhdGVzIGlmIHRoZSBkcml2ZXIgc3VwcG9y
dHMgUlNTCiAgKgljb250ZXh0cy4KKyAqIEBjYXBfcnNzX3N5bV94b3Jfc3VwcG9ydGVkOiBpbmRp
Y2F0ZXMgaWYgdGhlIGRyaXZlciBzdXBwb3J0cyBzeW1tZXRyaWMteG9yCisgKglSU1MuCiAgKiBA
c3VwcG9ydGVkX2NvYWxlc2NlX3BhcmFtczogc3VwcG9ydGVkIHR5cGVzIG9mIGludGVycnVwdCBj
b2FsZXNjaW5nLgogICogQHN1cHBvcnRlZF9yaW5nX3BhcmFtczogc3VwcG9ydGVkIHJpbmcgcGFy
YW1zLgogICogQGdldF9kcnZpbmZvOiBSZXBvcnQgZHJpdmVyL2RldmljZSBpbmZvcm1hdGlvbi4g
TW9kZXJuIGRyaXZlcnMgbm8KQEAgLTc3OSw2ICs3ODEsNyBAQCBzdHJ1Y3QgZXRodG9vbF9tbV9z
dGF0cyB7CiBzdHJ1Y3QgZXRodG9vbF9vcHMgewogCXUzMiAgICAgY2FwX2xpbmtfbGFuZXNfc3Vw
cG9ydGVkOjE7CiAJdTMyICAgICBjYXBfcnNzX2N0eF9zdXBwb3J0ZWQ6MTsKKwl1MzIJY2FwX3Jz
c19zeW1feG9yX3N1cHBvcnRlZDoxOwogCXUzMglzdXBwb3J0ZWRfY29hbGVzY2VfcGFyYW1zOwog
CXUzMglzdXBwb3J0ZWRfcmluZ19wYXJhbXM7CiAJdm9pZAkoKmdldF9kcnZpbmZvKShzdHJ1Y3Qg
bmV0X2RldmljZSAqLCBzdHJ1Y3QgZXRodG9vbF9kcnZpbmZvICopOwpkaWZmIC0tZ2l0IGEvaW5j
bHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9ldGh0b29sLmgK
aW5kZXggN2I0Y2VmNzIyMTE1Li4yNGU2NTAxZWRhN2UgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFw
aS9saW51eC9ldGh0b29sLmgKKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaApAQCAt
MTI0OCw2ICsxMjQ4LDggQEAgc3RydWN0IGV0aHRvb2xfcnhuZmMgewogICoJdG8gYWxsb2NhdGUg
YSBuZXcgUlNTIGNvbnRleHQ7IG9uIHJldHVybiB0aGlzIGZpZWxkIHdpbGwKICAqCWNvbnRhaW4g
dGhlIElEIG9mIHRoZSBuZXdseSBhbGxvY2F0ZWQgY29udGV4dC4KICAqIEByc3NfZGVsZXRlOiBT
ZXQgdG8gbm9uLVpFUk8gdG8gcmVtb3ZlIHRoZSBAcnNzX2NvbnRleHQgY29udGV4dC4KKyAqIEBp
bnB1dF94ZnJtOiBEZWZpbmVzIGhvdyB0aGUgaW5wdXQgZGF0YSBpcyB0cmFuc2Zvcm1lZC4gVmFs
aWQgdmFsdWVzIGFyZSBvbmUKKyAqCW9mICVSWEhfWEZSTV8qLgogICovCiBzdHJ1Y3QgZXRodG9v
bF9yeGZoX3BhcmFtIHsKIAlfX3U4CWhmdW5jOwpAQCAtMTI1Nyw2ICsxMjU5LDcgQEAgc3RydWN0
IGV0aHRvb2xfcnhmaF9wYXJhbSB7CiAJX191OAkqa2V5OwogCV9fdTMyCXJzc19jb250ZXh0Owog
CV9fdTgJcnNzX2RlbGV0ZTsKKwlfX3U4CWlucHV0X3hmcm07CiB9OwogCiAvKioKQEAgLTEyOTUs
NiArMTI5OCw4IEBAIHN0cnVjdCBldGh0b29sX3J4ZmhfaW5kaXIgewogICoJaGFyZHdhcmUgaGFz
aCBrZXkuCiAgKiBAaGZ1bmM6IERlZmluZXMgdGhlIGN1cnJlbnQgUlNTIGhhc2ggZnVuY3Rpb24g
dXNlZCBieSBIVyAob3IgdG8gYmUgc2V0IHRvKS4KICAqCVZhbGlkIHZhbHVlcyBhcmUgb25lIG9m
IHRoZSAlRVRIX1JTU19IQVNIXyouCisgKiBAaW5wdXRfeGZybTogRGVmaW5lcyBob3cgdGhlIGlu
cHV0IGRhdGEgaXMgdHJhbnNmb3JtZWQuIFZhbGlkIHZhbHVlcyBhcmUgb25lCisgKglvZiAlUlhI
X1hGUk1fKi4KICAqIEByc3ZkODogUmVzZXJ2ZWQgZm9yIGZ1dHVyZSB1c2U7IHNlZSB0aGUgbm90
ZSBvbiByZXNlcnZlZCBzcGFjZS4KICAqIEByc3ZkMzI6IFJlc2VydmVkIGZvciBmdXR1cmUgdXNl
OyBzZWUgdGhlIG5vdGUgb24gcmVzZXJ2ZWQgc3BhY2UuCiAgKiBAcnNzX2NvbmZpZzogUlggcmlu
Zy9xdWV1ZSBpbmRleCBmb3IgZWFjaCBoYXNoIHZhbHVlIGkuZS4sIGluZGlyZWN0aW9uIHRhYmxl
CkBAIC0xMzE0LDcgKzEzMTksOCBAQCBzdHJ1Y3QgZXRodG9vbF9yeGZoIHsKIAlfX3UzMiAgIGlu
ZGlyX3NpemU7CiAJX191MzIgICBrZXlfc2l6ZTsKIAlfX3U4CWhmdW5jOwotCV9fdTgJcnN2ZDhb
M107CisJX191OAlpbnB1dF94ZnJtOworCV9fdTgJcnN2ZDhbMl07CiAJX191MzIJcnN2ZDMyOwog
CV9fdTMyICAgcnNzX2NvbmZpZ1tdOwogfTsKQEAgLTIwMjEsNiArMjAyNywxNCBAQCBzdGF0aWMg
aW5saW5lIGludCBldGh0b29sX3ZhbGlkYXRlX2R1cGxleChfX3U4IGR1cGxleCkKIAogI2RlZmlu
ZSBXT0xfTU9ERV9DT1VOVAkJOAogCisvKiBSU1MgaGFzaCBmdW5jdGlvbiBkYXRhCisgKiBYT1Ig
dGhlIGNvcnJlc3BvbmRpbmcgc291cmNlIGFuZCBkZXN0aW5hdGlvbiBmaWVsZHMgb2YgZWFjaCBz
cGVjaWZpZWQKKyAqIHByb3RvY29sLiBCb3RoIGNvcGllcyBvZiB0aGUgWE9SJ2VkIGZpZWxkcyBh
cmUgZmVkIGludG8gdGhlIFJTUyBhbmQgUlhIQVNICisgKiBjYWxjdWxhdGlvbi4gTm90ZSB0aGF0
IHRoaXMgWE9SaW5nIHJlZHVjZXMgdGhlIGlucHV0IHNldCBlbnRyb3B5IGFuZCBjb3VsZAorICog
YmUgZXhwbG9pdGVkIHRvIHJlZHVjZSB0aGUgUlNTIHF1ZXVlIHNwcmVhZC4KKyAqLworI2RlZmlu
ZQlSWEhfWEZSTV9TWU1fWE9SCSgxIDw8IDApCisKIC8qIEwyLUw0IG5ldHdvcmsgdHJhZmZpYyBm
bG93IHR5cGVzICovCiAjZGVmaW5lCVRDUF9WNF9GTE9XCTB4MDEJLyogaGFzaCBvciBzcGVjICh0
Y3BfaXA0X3NwZWMpICovCiAjZGVmaW5lCVVEUF9WNF9GTE9XCTB4MDIJLyogaGFzaCBvciBzcGVj
ICh1ZHBfaXA0X3NwZWMpICovCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9v
bF9uZXRsaW5rLmggYi9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbF9uZXRsaW5rLmgKaW5kZXgg
NzNlMmMxMGRjMmNjLi4zZjg5MDc0YWEwNmMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9saW51
eC9ldGh0b29sX25ldGxpbmsuaAorKysgYi9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbF9uZXRs
aW5rLmgKQEAgLTkwOCw2ICs5MDgsNyBAQCBlbnVtIHsKIAlFVEhUT09MX0FfUlNTX0hGVU5DLAkJ
LyogdTMyICovCiAJRVRIVE9PTF9BX1JTU19JTkRJUiwJCS8qIGJpbmFyeSAqLwogCUVUSFRPT0xf
QV9SU1NfSEtFWSwJCS8qIGJpbmFyeSAqLworCUVUSFRPT0xfQV9SU1NfSU5QVVRfWEZSTSwJLyog
dTMyICovCiAKIAlfX0VUSFRPT0xfQV9SU1NfQ05ULAogCUVUSFRPT0xfQV9SU1NfTUFYID0gKF9f
RVRIVE9PTF9BX1JTU19DTlQgLSAxKSwKZGlmZiAtLWdpdCBhL25ldC9ldGh0b29sL2lvY3RsLmMg
Yi9uZXQvZXRodG9vbC9pb2N0bC5jCmluZGV4IDQxZDY1MzIyNzJlZC4uMmVjOWZiNWFmNzczIDEw
MDY0NAotLS0gYS9uZXQvZXRodG9vbC9pb2N0bC5jCisrKyBiL25ldC9ldGh0b29sL2lvY3RsLmMK
QEAgLTk2OSwxOCArOTY5LDM1IEBAIHN0YXRpYyBpbnQgZXRodG9vbF9yeG5mY19jb3B5X3RvX3Vz
ZXIodm9pZCBfX3VzZXIgKnVzZXJhZGRyLAogc3RhdGljIG5vaW5saW5lX2Zvcl9zdGFjayBpbnQg
ZXRodG9vbF9zZXRfcnhuZmMoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwKIAkJCQkJCXUzMiBjbWQs
IHZvaWQgX191c2VyICp1c2VyYWRkcikKIHsKKwljb25zdCBzdHJ1Y3QgZXRodG9vbF9vcHMgKm9w
cyA9IGRldi0+ZXRodG9vbF9vcHM7CisJc3RydWN0IGV0aHRvb2xfcnhmaF9wYXJhbSByeGZoOwog
CXN0cnVjdCBldGh0b29sX3J4bmZjIGluZm87CiAJc2l6ZV90IGluZm9fc2l6ZSA9IHNpemVvZihp
bmZvKTsKIAlpbnQgcmM7CiAKLQlpZiAoIWRldi0+ZXRodG9vbF9vcHMtPnNldF9yeG5mYykKKwlp
ZiAoIW9wcy0+c2V0X3J4bmZjIHx8ICFvcHMtPmdldF9yeGZoKQogCQlyZXR1cm4gLUVPUE5PVFNV
UFA7CiAKIAlyYyA9IGV0aHRvb2xfcnhuZmNfY29weV9zdHJ1Y3QoY21kLCAmaW5mbywgJmluZm9f
c2l6ZSwgdXNlcmFkZHIpOwogCWlmIChyYykKIAkJcmV0dXJuIHJjOwogCi0JcmMgPSBkZXYtPmV0
aHRvb2xfb3BzLT5zZXRfcnhuZmMoZGV2LCAmaW5mbyk7CisJcmMgPSBvcHMtPmdldF9yeGZoKGRl
diwgJnJ4ZmgpOworCWlmIChyYykKKwkJcmV0dXJuIHJjOworCisJLyogU2FuaXR5IGNoZWNrOiBp
ZiBzeW1tZXRyaWMteG9yIGlzIHNldCwgdGhlbjoKKwkgKiAxIC0gbm8gb3RoZXIgZmllbGRzIGJl
c2lkZXMgSVAgc3JjL2RzdCBhbmQvb3IgTDQgc3JjL2RzdAorCSAqIDIgLSBJZiBzcmMgaXMgc2V0
LCBkc3QgbXVzdCBhbHNvIGJlIHNldAorCSAqLworCWlmICgocnhmaC5pbnB1dF94ZnJtICYgUlhI
X1hGUk1fU1lNX1hPUikgJiYKKwkgICAgKChpbmZvLmRhdGEgJiB+KFJYSF9JUF9TUkMgfCBSWEhf
SVBfRFNUIHwKKwkJCSAgICBSWEhfTDRfQl8wXzEgfCBSWEhfTDRfQl8yXzMpKSB8fAorCSAgICAg
KCEhKGluZm8uZGF0YSAmIFJYSF9JUF9TUkMpIF4gISEoaW5mby5kYXRhICYgUlhIX0lQX0RTVCkp
IHx8CisJICAgICAoISEoaW5mby5kYXRhICYgUlhIX0w0X0JfMF8xKSBeICEhKGluZm8uZGF0YSAm
IFJYSF9MNF9CXzJfMykpKSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlyYyA9IG9wcy0+c2V0X3J4
bmZjKGRldiwgJmluZm8pOwogCWlmIChyYykKIAkJcmV0dXJuIHJjOwogCkBAIC0xMTkzLDcgKzEy
MTAsNyBAQCBzdGF0aWMgbm9pbmxpbmVfZm9yX3N0YWNrIGludCBldGh0b29sX2dldF9yeGZoKHN0
cnVjdCBuZXRfZGV2aWNlICpkZXYsCiAJdXNlcl9rZXlfc2l6ZSA9IHJ4Zmgua2V5X3NpemU7CiAK
IAkvKiBDaGVjayB0aGF0IHJlc2VydmVkIGZpZWxkcyBhcmUgMCBmb3Igbm93ICovCi0JaWYgKHJ4
ZmgucnN2ZDhbMF0gfHwgcnhmaC5yc3ZkOFsxXSB8fCByeGZoLnJzdmQ4WzJdIHx8IHJ4ZmgucnN2
ZDMyKQorCWlmIChyeGZoLnJzdmQ4WzBdIHx8IHJ4ZmgucnN2ZDhbMV0gfHwgcnhmaC5yc3ZkMzIp
CiAJCXJldHVybiAtRUlOVkFMOwogCS8qIE1vc3QgZHJpdmVycyBkb24ndCBoYW5kbGUgcnNzX2Nv
bnRleHQsIGNoZWNrIGl0J3MgMCBhcyB3ZWxsICovCiAJaWYgKHJ4ZmgucnNzX2NvbnRleHQgJiYg
IW9wcy0+Y2FwX3Jzc19jdHhfc3VwcG9ydGVkKQpAQCAtMTI3NiwxMSArMTI5MywxNSBAQCBzdGF0
aWMgbm9pbmxpbmVfZm9yX3N0YWNrIGludCBldGh0b29sX3NldF9yeGZoKHN0cnVjdCBuZXRfZGV2
aWNlICpkZXYsCiAJCXJldHVybiAtRUZBVUxUOwogCiAJLyogQ2hlY2sgdGhhdCByZXNlcnZlZCBm
aWVsZHMgYXJlIDAgZm9yIG5vdyAqLwotCWlmIChyeGZoLnJzdmQ4WzBdIHx8IHJ4ZmgucnN2ZDhb
MV0gfHwgcnhmaC5yc3ZkOFsyXSB8fCByeGZoLnJzdmQzMikKKwlpZiAocnhmaC5yc3ZkOFswXSB8
fCByeGZoLnJzdmQ4WzFdIHx8IHJ4ZmgucnN2ZDMyKQogCQlyZXR1cm4gLUVJTlZBTDsKIAkvKiBN
b3N0IGRyaXZlcnMgZG9uJ3QgaGFuZGxlIHJzc19jb250ZXh0LCBjaGVjayBpdCdzIDAgYXMgd2Vs
bCAqLwogCWlmIChyeGZoLnJzc19jb250ZXh0ICYmICFvcHMtPmNhcF9yc3NfY3R4X3N1cHBvcnRl
ZCkKIAkJcmV0dXJuIC1FT1BOT1RTVVBQOworCS8qIENoZWNrIGlucHV0IGRhdGEgdHJhbnNmb3Jt
YXRpb24gY2FwYWJpbGl0aWVzICovCisJaWYgKChyeGZoLmlucHV0X3hmcm0gJiBSWEhfWEZSTV9T
WU1fWE9SKSAmJgorCSAgICAhb3BzLT5jYXBfcnNzX3N5bV94b3Jfc3VwcG9ydGVkKQorCQlyZXR1
cm4gLUVPUE5PVFNVUFA7CiAKIAkvKiBJZiBlaXRoZXIgaW5kaXIsIGhhc2gga2V5IG9yIGZ1bmN0
aW9uIGlzIHZhbGlkLCBwcm9jZWVkIGZ1cnRoZXIuCiAJICogTXVzdCByZXF1ZXN0IGF0IGxlYXN0
IG9uZSBjaGFuZ2U6IGluZGlyIHNpemUsIGhhc2gga2V5IG9yIGZ1bmN0aW9uLgpAQCAtMTM0OCw2
ICsxMzY5LDcgQEAgc3RhdGljIG5vaW5saW5lX2Zvcl9zdGFjayBpbnQgZXRodG9vbF9zZXRfcnhm
aChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAogCXJ4ZmhfZGV2LmluZGlyX3NpemUgPSByeGZoLmlu
ZGlyX3NpemU7CiAJcnhmaF9kZXYua2V5X3NpemUgPSByeGZoLmtleV9zaXplOwogCXJ4ZmhfZGV2
LnJzc19jb250ZXh0ID0gcnhmaC5yc3NfY29udGV4dDsKKwlyeGZoX2Rldi5pbnB1dF94ZnJtID0g
cnhmaC5pbnB1dF94ZnJtOwogCiAJcmV0ID0gb3BzLT5zZXRfcnhmaChkZXYsICZyeGZoX2Rldiwg
ZXh0YWNrKTsKIAlpZiAocmV0KQpkaWZmIC0tZ2l0IGEvbmV0L2V0aHRvb2wvcnNzLmMgYi9uZXQv
ZXRodG9vbC9yc3MuYwppbmRleCBlYTNmZTBkM2ZlMWMuLjU4NDE1NDM2NzFkYSAxMDA2NDQKLS0t
IGEvbmV0L2V0aHRvb2wvcnNzLmMKKysrIGIvbmV0L2V0aHRvb2wvcnNzLmMKQEAgLTEzLDYgKzEz
LDcgQEAgc3RydWN0IHJzc19yZXBseV9kYXRhIHsKIAl1MzIJCQkJaW5kaXJfc2l6ZTsKIAl1MzIJ
CQkJaGtleV9zaXplOwogCXUzMgkJCQloZnVuYzsKKwl1MzIJCQkJaW5wdXRfeGZybTsKIAl1MzIJ
CQkJKmluZGlyX3RhYmxlOwogCXU4CQkJCSpoa2V5OwogfTsKQEAgLTEwNSw2ICsxMDYsNyBAQCBy
c3NfcHJlcGFyZV9kYXRhKGNvbnN0IHN0cnVjdCBldGhubF9yZXFfaW5mbyAqcmVxX2Jhc2UsCiAJ
CWdvdG8gb3V0X29wczsKIAogCWRhdGEtPmhmdW5jID0gcnhmaC5oZnVuYzsKKwlkYXRhLT5pbnB1
dF94ZnJtID0gcnhmaC5pbnB1dF94ZnJtOwogb3V0X29wczoKIAlldGhubF9vcHNfY29tcGxldGUo
ZGV2KTsKIAlyZXR1cm4gcmV0OwpAQCAtMTE4LDYgKzEyMCw3IEBAIHJzc19yZXBseV9zaXplKGNv
bnN0IHN0cnVjdCBldGhubF9yZXFfaW5mbyAqcmVxX2Jhc2UsCiAJaW50IGxlbjsKIAogCWxlbiA9
IG5sYV90b3RhbF9zaXplKHNpemVvZih1MzIpKSArCS8qIF9SU1NfSEZVTkMgKi8KKwkgICAgICBu
bGFfdG90YWxfc2l6ZShzaXplb2YodTMyKSkgKwkvKiBfUlNTX0lOUFVUX1hGUk0gKi8KIAkgICAg
ICBubGFfdG90YWxfc2l6ZShzaXplb2YodTMyKSAqIGRhdGEtPmluZGlyX3NpemUpICsgLyogX1JT
U19JTkRJUiAqLwogCSAgICAgIG5sYV90b3RhbF9zaXplKGRhdGEtPmhrZXlfc2l6ZSk7CS8qIF9S
U1NfSEtFWSAqLwogCkBAIC0xMzIsNiArMTM1LDggQEAgcnNzX2ZpbGxfcmVwbHkoc3RydWN0IHNr
X2J1ZmYgKnNrYiwgY29uc3Qgc3RydWN0IGV0aG5sX3JlcV9pbmZvICpyZXFfYmFzZSwKIAogCWlm
ICgoZGF0YS0+aGZ1bmMgJiYKIAkgICAgIG5sYV9wdXRfdTMyKHNrYiwgRVRIVE9PTF9BX1JTU19I
RlVOQywgZGF0YS0+aGZ1bmMpKSB8fAorCSAgICAoZGF0YS0+aW5wdXRfeGZybSAmJgorCSAgICAg
bmxhX3B1dF91MzIoc2tiLCBFVEhUT09MX0FfUlNTX0lOUFVUX1hGUk0sIGRhdGEtPmlucHV0X3hm
cm0pKSB8fAogCSAgICAoZGF0YS0+aW5kaXJfc2l6ZSAmJgogCSAgICAgbmxhX3B1dChza2IsIEVU
SFRPT0xfQV9SU1NfSU5ESVIsCiAJCSAgICAgc2l6ZW9mKHUzMikgKiBkYXRhLT5pbmRpcl9zaXpl
LCBkYXRhLT5pbmRpcl90YWJsZSkpIHx8Ci0tIAoyLjM0LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
