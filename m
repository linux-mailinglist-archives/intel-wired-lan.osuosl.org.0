Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C07AE21B7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jun 2025 19:58:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CF6060778;
	Fri, 20 Jun 2025 17:58:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7HLVCW01vnp2; Fri, 20 Jun 2025 17:58:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2AC660820
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750442335;
	bh=Dy+p15HC9zP/n/4KM5eMWzVkPkNU3THZSPGOgrzcbL0=;
	h=Date:To:Cc:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dZFbeWvVGEL2X/KnHf8CyahB+exiT7Lc9RSnk4LllXcr8Lhg7LniKcjn8AU58K80d
	 j3Um6K1KiEtFbewcPtZHAr/exgoMlz/OX1CaPHlND5SKn7mTq0TzIcV5g5HiRoZo1n
	 ChkmkrMGQx1XfztBhBTeZUiPCMmBYafBCqL7nzyqXmAAq3KDtsVzy2rE6ZvR1VcotE
	 YCOgCgfbn6oVWJmePFpDnuCGn0FQodQd4Ohv5gJszWQWWbI/yxUWnSWL9cwt5Wk9R/
	 wDtyWDBrpWXXxwZXJQ3ZKkujJX14GpI53S+nSlaZcje6p6rpNnD0Ig1XY+xV3cd/3r
	 lJ7wbzIiki/1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2AC660820;
	Fri, 20 Jun 2025 17:58:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B6C1BE2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 17:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A86FE82071
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 17:58:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AjCVwEEltl6U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jun 2025 17:58:53 +0000 (UTC)
X-Greylist: delayed 401 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 20 Jun 2025 17:58:52 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C369F82068
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C369F82068
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=23.128.96.9;
 helo=mail.monkeyblade.net; envelope-from=davem@davemloft.net;
 receiver=<UNKNOWN> 
Received: from mail.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C369F82068
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jun 2025 17:58:52 +0000 (UTC)
Received: from localhost
 (brnt-05-b2-v4wan-161083-cust293.vm7.cable.virginm.net [86.11.207.38])
 by mail.monkeyblade.net (Postfix) with ESMTPSA id EFA01841F1AE;
 Fri, 20 Jun 2025 10:52:06 -0700 (PDT)
Date: Fri, 20 Jun 2025 18:52:02 +0100 (BST)
Message-Id: <20250620.185202.1877972778102559754.davem@davemloft.net>
To: arnd@kernel.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, arnd@arndb.de, horms@kernel.org, linux@treblig.org,
 aleksandr.loktionov@intel.com, dawid.osuchowski@linux.intel.com,
 jedrzej.jagielski@intel.com, mateusz.polchlopek@intel.com,
 piotr.kwapulinski@intel.com, slawomirx.mrozowicz@intel.com,
 martyna.szapar-mudlaw@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <20250620173158.794034-1-arnd@kernel.org>
References: <20250620173158.794034-1-arnd@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=iso-8859-7
Content-Transfer-Encoding: base64
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail.monkeyblade.net [0.0.0.0]); Fri, 20 Jun 2025 10:52:10 -0700 (PDT)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=davemloft.net
Subject: Re: [Intel-wired-lan] [PATCH] [v2] ethernet: intel: fix building
 with large NR_CPUS
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQXJuZCBCZXJnbWFubiA8YXJuZEBrZXJuZWwub3JnPg0KRGF0ZTogRnJpLCAyMCBKdW4g
MjAyNSAxOTozMToyNCArMDIwMA0KDQo+IEZyb206IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIu
ZGU+DQo+IA0KPiBXaXRoIGxhcmdlIHZhbHVlcyBvZiBDT05GSUdfTlJfQ1BVUywgdGhyZWUgSW50
ZWwgZXRoZXJuZXQgZHJpdmVycyBmYWlsIHRvDQo+IGNvbXBpbGUgbGlrZToNCj4gDQo+IEluIGZ1
bmN0aW9uIKFpNDBlX2ZyZWVfcV92ZWN0b3KiLA0KPiAgICAgaW5saW5lZCBmcm9tIKFpNDBlX3Zz
aV9hbGxvY19xX3ZlY3RvcnOiIGF0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9tYWluLmM6MTIxMTI6MzoNCj4gICA1NzEgfCAgICAgICAgIF9jb21waWxldGltZV9hc3NlcnQo
Y29uZGl0aW9uLCBtc2csIF9fY29tcGlsZXRpbWVfYXNzZXJ0XywgX19DT1VOVEVSX18pDQo+IGlu
Y2x1ZGUvbGludXgvcmN1cGRhdGUuaDoxMDg0OjE3OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFj
cm8goUJVSUxEX0JVR19PTqINCj4gIDEwODQgfCAgICAgICAgICAgICAgICAgQlVJTERfQlVHX09O
KG9mZnNldG9mKHR5cGVvZigqKHB0cikpLCByaGYpID49IDQwOTYpOyAgICBcDQo+IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmM6NTExMzo5OiBub3RlOiBpbiBleHBh
bnNpb24gb2YgbWFjcm8goWtmcmVlX3JjdaINCj4gIDUxMTMgfCAgICAgICAgIGtmcmVlX3JjdShx
X3ZlY3RvciwgcmN1KTsNCj4gICAgICAgfCAgICAgICAgIF5+fn5+fn5+fg0KPiANCj4gVGhlIHBy
b2JsZW0gaXMgdGhhdCB0aGUgJ3JjdScgbWVtYmVyIGluICdxX3ZlY3RvcicgaXMgdG9vIGZhciBm
cm9tIHRoZSBzdGFydA0KPiBvZiB0aGUgc3RydWN0dXJlLiBNb3ZlIHRoaXMgbWVtYmVyIGJlZm9y
ZSB0aGUgQ1BVIG1hc2sgaW5zdGVhZCwgaW4gYWxsIHRocmVlDQo+IGRyaXZlcnMuDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPg0KPiAtLS0NCj4gdjI6
IG1vdmUgcmN1IHRvIGp1c3QgYWZ0ZXIgdGhlIG5hcGlfc3RydWN0IFtBbGV4YW5kZXIgTG9iYWtp
bl0NCg0KQWNrZWQtYnk6IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4NCg==
