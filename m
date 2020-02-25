Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B145716F106
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2020 22:20:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 68F6C86E21;
	Tue, 25 Feb 2020 21:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RzYg+1JtCEkF; Tue, 25 Feb 2020 21:20:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8716686A16;
	Tue, 25 Feb 2020 21:20:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 14EA01BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 21:20:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DC4D120337
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 21:20:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S9W4KkvSRFMT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2020 21:20:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by silver.osuosl.org (Postfix) with ESMTPS id 56D3B20010
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2020 21:20:46 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4A42C13EC669B;
 Tue, 25 Feb 2020 13:20:44 -0800 (PST)
Date: Tue, 25 Feb 2020 13:20:41 -0800 (PST)
Message-Id: <20200225.132041.1071108395246034738.davem@davemloft.net>
To: jeffrey.t.kirsher@intel.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <469b51add666cf3df7381b6409a3972c70024c12.camel@intel.com>
References: <20200225121023.6011-1-jiri@resnulli.us>
 <469b51add666cf3df7381b6409a3972c70024c12.camel@intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 25 Feb 2020 13:20:44 -0800 (PST)
Subject: Re: [Intel-wired-lan] [patch net-next] iavf: use
 tc_cls_can_offload_basic() instead of chain check
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, jiri@resnulli.us,
 kuba@kernel.org
Content-Type: text/plain; charset="iso8859-7"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSmVmZiBLaXJzaGVyIDxqZWZmcmV5LnQua2lyc2hlckBpbnRlbC5jb20+DQpEYXRlOiBU
dWUsIDI1IEZlYiAyMDIwIDEzOjE1OjQ2IC0wODAwDQoNCj4gT24gVHVlLCAyMDIwLTAyLTI1IGF0
IDEzOjEwICswMTAwLCBKaXJpIFBpcmtvIHdyb3RlOg0KPj4gRnJvbTogSmlyaSBQaXJrbyA8amly
aUBtZWxsYW5veC5jb20+DQo+PiANCj4+IExvb2tzIGxpa2UgdGhlIGlhdmYgY29kZSBhY3R1YWxs
eSBleHBlcmllbmNlZCBhIHJhY2UgY29uZGl0aW9uLCB3aGVuDQo+PiBhDQo+PiBkZXZlbG9wZXIg
dG9vayBjb2RlIGJlZm9yZSB0aGUgY2hlY2sgZm9yIGNoYWluIDAgd2FzIHB1dCB0byBoZWxwZXIu
DQo+PiBTbyB1c2UgdGNfY2xzX2Nhbl9vZmZsb2FkX2Jhc2ljKCkgaGVscGVyIGluc3RlYWQgb2Yg
ZGlyZWN0IGNoZWNrIGFuZA0KPj4gbW92ZSB0aGUgY2hlY2sgdG8gX2NiKCkgc28gdGhpcyBpcyBz
aW1pbGFyIHRvIGk0MGUgY29kZS4NCj4+IA0KPj4gU2lnbmVkLW9mZi1ieTogSmlyaSBQaXJrbyA8
amlyaUBtZWxsYW5veC5jb20+DQo+IA0KPiBBY2tlZC1ieTogSmVmZiBLaXJzaGVyIDxqZWZmcmV5
LnQua2lyc2hlckBpbnRlbC5jb20+DQo+IA0KPiBHbyBhaGVhZCBhbmQgcGljayB0aGlzIHVwIERh
dmUsIHRoYW5rcyENCg0KSG1tbSwgSmlyaSB0aGlzIGRvZXNuJ3QgY29tcGlsZT8NCg0KICBDQyBb
TV0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLm8NCmRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmM6IEluIGZ1bmN0aW9uIKFpYXZmX3Nl
dHVwX3RjX2Jsb2NrX2NiojoNCmRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9t
YWluLmM6MzA4OTo3OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24goXRj
X2Nsc19jYW5fb2ZmbG9hZF9iYXNpY6I7IGRpZCB5b3UgbWVhbiChdGNfY2xzX2NvbW1vbl9vZmZs
b2FkX2luaXSiPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0NCiAgaWYg
KCF0Y19jbHNfY2FuX29mZmxvYWRfYmFzaWMoYWRhcHRlci0+bmV0ZGV2LCB0eXBlX2RhdGEpKQ0K
ICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fg0KICAgICAgIHRjX2Nsc19jb21tb25fb2Zm
bG9hZF9pbml0DQoNCk1heWJlIGl0IGRvZXMgZGVwZW5kIHVwb24gc29tZXRoaW5nIGluIHRoZSB0
YyBmaWx0ZXIgcGF0Y2ggc2VyaWVzPw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
