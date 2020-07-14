Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC2E21EEAB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2020 13:05:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2E638783B;
	Tue, 14 Jul 2020 11:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UjcwEWclXd69; Tue, 14 Jul 2020 11:05:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B12C38787C;
	Tue, 14 Jul 2020 11:05:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 44D221BF475
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 11:05:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3F9FE886F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 11:05:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eWcaMZYEPtgT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2020 11:05:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from baidu.com (mx20.baidu.com [111.202.115.85])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E625D8864E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 11:05:40 +0000 (UTC)
Received: from BC-Mail-Ex14.internal.baidu.com (unknown [172.31.51.54])
 by Forcepoint Email with ESMTPS id 55973F373BA686E0E41A;
 Tue, 14 Jul 2020 19:05:38 +0800 (CST)
Received: from BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) by
 BC-Mail-Ex14.internal.baidu.com (172.31.51.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1979.3; Tue, 14 Jul 2020 19:05:38 +0800
Received: from BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) by
 BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) with mapi id
 15.01.1979.003; Tue, 14 Jul 2020 19:05:38 +0800
From: "Li,Rongqing" <lirongqing@baidu.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Thread-Topic: [Intel-wired-lan] [bug ?] i40e_rx_buffer_flip should not be
 called for redirected xsk copy mode
Thread-Index: AdZQR0EbXNQd8xyJRvWOWMhzMsvatQC0jCIAABEVlZABnAtukA==
Date: Tue, 14 Jul 2020 11:05:37 +0000
Message-ID: <7aac955840df438e99e6681b0ae5b5b8@baidu.com>
References: <2863b548da1d4c369bbd9d6ceb337a24@baidu.com>
 <CAJ8uoz08pyWR43K_zhp6PsDLi0KE=y_4QTs-a7kBA-jkRQksaw@mail.gmail.com> 
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.197.251]
x-baidu-bdmsfe-datecheck: 1_BC-Mail-Ex14_2020-07-14 19:05:38:307
MIME-Version: 1.0
Subject: [Intel-wired-lan] =?utf-8?b?562U5aSNOiAgW2J1ZyA/XSBpNDBlX3J4X2J1?=
 =?utf-8?q?ffer=5Fflip_should_not_be_called_for_redirected_xsk_copy_mode?=
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
Cc: Netdev <netdev@vger.kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS3pgq7ku7bljp/ku7YtLS0tLQ0KPiDlj5Hku7bkuro6IExpLFJvbmdxaW5nDQo+
IOWPkemAgeaXtumXtDogMjAyMOW5tDfmnIg25pelIDE0OjM4DQo+IOaUtuS7tuS6ujogJ01hZ251
cyBLYXJsc3NvbicgPG1hZ251cy5rYXJsc3NvbkBnbWFpbC5jb20+DQo+IOaKhOmAgTogaW50ZWwt
d2lyZWQtbGFuIDxpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZz47IEJqw7ZybiBUw7Zw
ZWwNCj4gPGJqb3JuLnRvcGVsQGludGVsLmNvbT47IEthcmxzc29uLCBNYWdudXMgPG1hZ251cy5r
YXJsc3NvbkBpbnRlbC5jb20+Ow0KPiBOZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IOS4u+mimDog562U5aSNOiBbSW50ZWwtd2lyZWQtbGFuXSBbYnVnID9dIGk0MGVfcnhfYnVmZmVy
X2ZsaXAgc2hvdWxkIG5vdCBiZSBjYWxsZWQNCj4gZm9yIHJlZGlyZWN0ZWQgeHNrIGNvcHkgbW9k
ZQ0KPiANCj4gDQo+IA0KPiA+IC0tLS0t6YKu5Lu25Y6f5Lu2LS0tLS0NCj4gPiDlj5Hku7bkuro6
IE1hZ251cyBLYXJsc3NvbiBbbWFpbHRvOm1hZ251cy5rYXJsc3NvbkBnbWFpbC5jb21dDQo+ID4g
5Y+R6YCB5pe26Ze0OiAyMDIw5bm0N+aciDbml6UgMTQ6MTMNCj4gPiDmlLbku7bkuro6IExpLFJv
bmdxaW5nIDxsaXJvbmdxaW5nQGJhaWR1LmNvbT4NCj4gPiDmioTpgIE6IGludGVsLXdpcmVkLWxh
biA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBCasO2cm4gVMO2cGVsDQo+ID4g
PGJqb3JuLnRvcGVsQGludGVsLmNvbT47IEthcmxzc29uLCBNYWdudXMgPG1hZ251cy5rYXJsc3Nv
bkBpbnRlbC5jb20+Ow0KPiA+IE5ldGRldiA8bmV0ZGV2QHZnZXIua2VybmVsLm9yZz4NCj4gPiDk
uLvpopg6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbYnVnID9dIGk0MGVfcnhfYnVmZmVyX2ZsaXAg
c2hvdWxkIG5vdCBiZQ0KPiA+IGNhbGxlZCBmb3IgcmVkaXJlY3RlZCB4c2sgY29weSBtb2RlDQo+
ID4NCj4gPiBUaGFuayB5b3UgUm9uZ1FpbmcgZm9yIHJlcG9ydGluZyB0aGlzLiBJIHdpbGwgdGFr
ZSBhIGxvb2sgYXQgaXQgYW5kDQo+ID4gcHJvZHVjZSBhIHBhdGNoLg0KPiA+DQo+ID4gL01hZ251
cw0KPiANCg0KUGluZw0KDQoNCi1MaQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
