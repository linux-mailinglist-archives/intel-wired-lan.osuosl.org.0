Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 127BC1DA0EB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 21:20:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B764621F5A;
	Tue, 19 May 2020 19:20:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wx5s-XitcmVC; Tue, 19 May 2020 19:20:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2FFC5203D9;
	Tue, 19 May 2020 19:20:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0A471BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 09:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AB8CD88347
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 09:42:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NogaSHKX7MpH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 09:42:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2069.outbound.protection.outlook.com [40.107.22.69])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D29A887DDE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 09:42:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O8yeFNq80sQVObfTqQe92PpjjZ9glsZuBBvZ+XeSWjOLscU0noHah4oiB87NcUuWHi0xmoq9+aQnfd/b8SwFicz5OeRX2JTMbNOQUgXa+7d3EXuBI1VAWiWH15XUSqqe+be8bZ4DW3/oem29frTFfZiyX3+mJuNJ6i4OU61u3FqVXb+MmP2d71vID3mTdguxpfwz9qkYlDiUZd8fcCz6pOqdDMeUiTVpI5lRjy5BFlB/y37RXw7ECTu2D0SCf1eCE6vmm8br2Wjcx4OPXTsQeXth1M0RXYir5bg/25C5q+yzImrRgfs5lw7ss3m3e4lJoCm4C4NZ2qDWbWS2siemnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nWLJS3qi6r9z7uAeVDXLppx6ZSNIslFjpGjsBmc3T8U=;
 b=UWxFEAtcO6OygQE5xOyWd2DXzFtu0BX2JnAliEC3yqrROIcbip8HYgHfxm/EIS7p1bRxYvIVlX+xW7PgGm24EZAcOgfZcq4rIHs0jFV/mCfiSVp3Cn6R6y1iA9f1fSvZkvrDypVO/NzpmjwRCofa6lzg0k5KARmHupRZBlfQilPIgfxSe/xashQRMADPEUG6UIDumzjyfUKzX/07u03DVBkTmh2ZUEJ6WJmnsIR+s6Ou/9XCityfkVfi1QUc13KjwBJftGI9L6aYCY7M04AbHQS2WILvqpXOQaeAEBZWAuIsBvjyEzqzaRmWOOx6GJsmVcmQPqW66k1JHPm5FTmAKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nWLJS3qi6r9z7uAeVDXLppx6ZSNIslFjpGjsBmc3T8U=;
 b=XkqeV4QjEj0QCh/IZMX4eB4CkVbt6279q7S1fyzqpDET//kLY9ixdER5IcuZgd+Potv1Ggbbov8oMgCdLiNeFSsEzqh/CXSgOtDFCYxRm4A5/ItP/tBgmqQnWQrXay19QKqsIZ0k6M8/9DqIMiARGstCf+ME6tmj+UTT82j6b2g=
Received: from VE1PR04MB6496.eurprd04.prod.outlook.com (2603:10a6:803:11c::29)
 by VE1PR04MB6704.eurprd04.prod.outlook.com (2603:10a6:803:128::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Tue, 19 May
 2020 09:10:32 +0000
Received: from VE1PR04MB6496.eurprd04.prod.outlook.com
 ([fe80::1479:38ea:d4f7:a173]) by VE1PR04MB6496.eurprd04.prod.outlook.com
 ([fe80::1479:38ea:d4f7:a173%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 09:10:32 +0000
From: Po Liu <po.liu@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Michal Kubecek
 <mkubecek@suse.cz>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: Re: [next-queue RFC 0/4] ethtool: Add support for frame
 preemption
Thread-Index: AdYtu6jDqFE7FoLyQLevlykzK6jDEw==
Date: Tue, 19 May 2020 09:10:32 +0000
Message-ID: <VE1PR04MB6496D0B1507969D8474F78FC92B90@VE1PR04MB6496.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5faa466c-7577-4a2c-9b25-08d7fbd47bbf
x-ms-traffictypediagnostic: VE1PR04MB6704:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6704AA260B561B7629C89BEF92B90@VE1PR04MB6704.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HxHTRDU+XGUookwJQeSzUKE2tkS/kYestHM5CYksC3eMki1gpkQ2LnNBole6o8qXoKgW0OUx7Mjli4ZLwheuhqaFXKXUdxVptNP2RNlfOR3fClOoNfAvg8iyPjSYZhKCQHwCRC8y4t4y9DVHZKUEbxVdpk4SH/E0YflmT9N+Ix2mbj3AToz54QujT0quEm+mP9CnvAAMVFV/VGPZiI2wLuTABjn9LENstix0zbZliqmCankwtdCo44XteMcCb+Dl2GG5YuozmSDpSkvWrvX62mUBmsJ59wW/iMpK+OuZ/p1Pwmjpm0lPrDJBav8MxVtoKPv+CSmMLQ+rtaHFzj+7l1y9ec/Qhx4PID+y1n+HrqjpZ7y+eWMg4qDoPpn06K9DmunrRj0gsGNd58R3E/zb1SNc1h6bS85dS/6OCljJNOzNsUxE9DNIZnNfPOCvgQN5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6496.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(376002)(39860400002)(396003)(136003)(26005)(8676002)(86362001)(44832011)(7696005)(9686003)(66946007)(76116006)(8936002)(64756008)(52536014)(66556008)(66476007)(33656002)(53546011)(5660300002)(316002)(478600001)(66446008)(55016002)(6506007)(54906003)(110136005)(4326008)(71200400001)(2906002)(186003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: m0f4B1AYsxexsNZN4nG/Xe56qhrJLdQAalv8XwUMw8OVKppb5AYR4fEQoxkCQNOOaFigNc0YiVlprynnkbtAsFuLeNYA5me5jlRexg2+aJHl3ia39wIJH9XP+3k4fLfWnqy9dNf49uxoNH/aB9avYo6wXb+9gIl+lF0IhylT2TWZGIwylWcvaa9JqKM+bOl+W16Zk5w1DRKjUe9NdIpd038+LUX6pmG5kzlhbog6Tz0KbibhONMV/BBi4C9jwO7goxxfU8njTUeZZGlXl0VJQkjl4tad6wzNK1ot4SqNlNwn/qdkni7NnH26Kw3gfWi1rl2kHmJrUsx9rik+4936qYt1nEdgNPRAvEYHgZwK/t7OXRbUkefyehL3R6UyY+ojKmu65uiE7qSXaE1HEgBjzdIdRSpaphJW2ssIy+F4E2OK9onUILb83YYiOcrJBNNqnFgTQ9zn+gvdS1F5Q8lt+ZHo8M2LnokSZr+q8/UTaF0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5faa466c-7577-4a2c-9b25-08d7fbd47bbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 09:10:32.2388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7WEwc1crzjyG8HnGo5RqiyvTsfEBVTzDcD2/kpCrKh+EYk66jxzBIIbqUIPuFk9P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6704
X-Mailman-Approved-At: Tue, 19 May 2020 19:20:46 +0000
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 "m-karicheri2@ti.com" <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgVmluaWNpdXMsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlu
aWNpdXMgQ29zdGEgR29tZXMgPHZpbmljaXVzLmdvbWVzQGludGVsLmNvbT4NCj4gU2VudDogMjAy
MMTqNdTCMTnI1SAzOjM0DQo+IFRvOiBNaWNoYWwgS3ViZWNlayA8bWt1YmVjZWtAc3VzZS5jej47
IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vv
c2wub3JnOyBqZWZmcmV5LnQua2lyc2hlckBpbnRlbC5jb207IFZsYWRpbWlyDQo+IE9sdGVhbiA8
dmxhZGltaXIub2x0ZWFuQG54cC5jb20+OyBQbyBMaXUgPHBvLmxpdUBueHAuY29tPjsgbS0NCj4g
a2FyaWNoZXJpMkB0aS5jb207IEpvc2UuQWJyZXVAc3lub3BzeXMuY29tDQo+IFN1YmplY3Q6IFJl
OiBbbmV4dC1xdWV1ZSBSRkMgMC80XSBldGh0b29sOiBBZGQgc3VwcG9ydCBmb3IgZnJhbWUNCj4g
cHJlZW1wdGlvbg0KPiANCj4gSGksDQo+IA0KPiBNaWNoYWwgS3ViZWNlayA8bWt1YmVjZWtAc3Vz
ZS5jej4gd3JpdGVzOg0KPiANCj4gPiBPbiBGcmksIE1heSAxNSwgMjAyMCBhdCAwNjoyOTo0NFBN
IC0wNzAwLCBWaW5pY2l1cyBDb3N0YSBHb21lcyB3cm90ZToNCj4gPj4gSGksDQo+ID4+DQo+ID4+
IFRoaXMgc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3IgY29uZmlndXJpbmcgZnJhbWUgcHJlZW1wdGlv
biwgYXMgZGVmaW5lZA0KPiA+PiBieSBJRUVFIDgwMi4xUS0yMDE4IChwcmV2aW91c2x5IElFRUUg
ODAyLjFRYnUpIGFuZCBJRUVFIDgwMi4zYnIuDQo+ID4+DQo+ID4+IEZyYW1lIHByZWVtcHRpb24g
YWxsb3dzIGEgcGFja2V0IGZyb20gYSBoaWdoZXIgcHJpb3JpdHkgcXVldWUgbWFya2VkDQo+ID4+
IGFzICJleHByZXNzIiB0byBwcmVlbXB0IGEgcGFja2V0IGZyb20gbG93ZXIgcHJpb3JpdHkgcXVl
dWUgbWFya2VkIGFzDQo+ID4+ICJwcmVlbXB0aWJsZSIuIFRoZSBpZGVhIGlzIHRoYXQgdGhpcyBj
YW4gaGVscCByZWR1Y2UgdGhlIGxhdGVuY3kgZm9yDQo+ID4+IGhpZ2hlciBwcmlvcml0eSB0cmFm
ZmljLg0KPiA+Pg0KPiA+PiBQcmV2aW91c2x5LCB0aGUgcHJvcG9zZWQgaW50ZXJmYWNlIGZvciBj
b25maWd1cmluZyB0aGVzZSBmZWF0dXJlcyB3YXMNCj4gPj4gdXNpbmcgdGhlIHFkaXNjIGxheWVy
LiBCdXQgYXMgdGhpcyBpcyB2ZXJ5IGhhcmR3YXJlIGRlcGVuZGVudCBhbmQgYWxsDQo+ID4+IHRo
YXQgcWRpc2MgZGlkIHdhcyBwYXNzIHRoZSBpbmZvcm1hdGlvbiB0byB0aGUgZHJpdmVyLCBpdCBt
YWtlcyBzZW5zZQ0KPiA+PiB0byBoYXZlIHRoaXMgaW4gZXRodG9vbC4NCj4gPj4NCj4gPj4gT25l
IGV4YW1wbGUsIGZvciByZXRyaWV2aW5nIGFuZCBzZXR0aW5nIHRoZSBjb25maWd1cmF0aW9uOg0K
PiA+Pg0KPiA+PiAkIGV0aHRvb2wgJCBzdWRvIC4vZXRodG9vbCAtLXNob3ctZnJhbWUtcHJlZW1w
dGlvbiBlbnAzczAgRnJhbWUNCj4gPj4gcHJlZW1wdGlvbiBzZXR0aW5ncyBmb3IgZW5wM3MwOg0K
PiA+PiAgICAgIHN1cHBvcnQ6IHN1cHBvcnRlZA0KPiA+DQo+ID4gSU1ITyB3ZSBkb24ndCBuZWVk
IGEgc3BlY2lhbCBib29sIGZvciB0aGlzLiBJSVVDIHRoaXMgaXMgbm90IGEgc3RhdGUNCj4gPiBm
bGFnIHRoYXQgd291bGQgY2hhbmdlIHZhbHVlIGZvciBhIHBhcnRpY3VsYXIgZGV2aWNlOyBlaXRo
ZXIgdGhlDQo+ID4gZGV2aWNlIHN1cHBvcnRzIHRoZSBmZWF0dXJlIG9yIGl0IGRvZXMgbm90LiBJ
ZiBpdCBkb2VzIG5vdCwgdGhlDQo+ID4gZXRodG9vbF9vcHMgY2FsbGJhY2tzIHdvdWxkIHJldHVy
biAtRU9QTk9UU1VQUCAob3Igd291bGQgbm90IGV2ZW4NCj4gPiBleGlzdCBpZiB0aGUgZHJpdmVy
IGhhcyBubyBzdXBwb3J0KSBhbmQgZXRodG9vbCB3b3VsZCBzYXkgc28uDQo+IA0KPiAoSSBrbm93
IHRoYXQgdGhlIGNvbW1lbnRzIGJlbG93IG9ubHkgYXBwbHkgaWYgImV0aHRvb2wtd2F5IiBpcyB3
aGF0J3MNCj4gZGVjaWRlZCkNCj4gDQo+IENvb2wuIFdpbGwgcmVtb3ZlIHRoZSBzdXBwb3J0ZWQg
Yml0Lg0KDQpTaGFsbCBpdCBtb3ZlIHRvIHRoZSBsaW5rX2tzZXR0aW5ncyBmaXhlZCBzdXBwb3J0
ZWQgbGlzdD8gU28gY2FuIGJlIGNoZWNrZWQgYnkgdGhlIGV0aHRvb2wgLWsgY29tbWFuZC4gSSB1
bmRlcnN0YW5kIHRoYXQgdGhlIGh3IGZlYXR1cmVzIGFyZSBlbmNvdXJhZ2VkIGxpc3RpbmcgaW4g
dGhlIGtzZXR0aW5ncy4NClRoZSB0d28gTUFDcyBzaG91bGQgYWxsIGJlIGluaXRpYWxpemVkIGF0
IGRyaXZlciBzaXplLiBBbmQgYWxsIGZyYW1lIHF1ZXVlcyBzaG91bGQgYXNzaWduZWQgdG8gdGhl
IGV4cHJlc3MgTUFDIGJ5IGRlZmF1bHQuIFRoYXQgbG9va3MgYXMgbm9ybWFsIG1vZGUgY2FsbGVk
IHByZWVtcHRpb24gZGlzYWJsZS4NCkFueSBmcmFtZSBxdWV1ZXMgYXNzaWduZWQgcGFzcyBwcmVl
bXB0YWJsZSBNQUMgY291bGQgYmUgY2FsbGVkIHByZWVtcHRpb24gZW5hYmxlLiAgDQoNCj4gDQo+
ID4NCj4gPj4gICAgICBhY3RpdmU6IGFjdGl2ZQ0KPiA+PiAgICAgIHN1cHBvcnRlZCBxdWV1ZXM6
IDB4Zg0KPiA+PiAgICAgIHN1cHBvcnRlZCBxdWV1ZXM6IDB4ZQ0KPiA+PiAgICAgIG1pbmltdW0g
ZnJhZ21lbnQgc2l6ZTogNjgNCj4gPj4NCj4gPj4NCj4gPj4gJCBldGh0b29sIC0tc2V0LWZyYW1l
LXByZWVtcHRpb24gZW5wM3MwIGZwIG9uIG1pbi1mcmFnLXNpemUgNjgNCj4gPj4gcHJlZW1wdGli
bGUtcXVldWVzLW1hc2sgMHhlDQo+ID4+DQo+ID4+IFRoaXMgaXMgYSBSRkMgYmVjYXVzZSBJIHdh
bnRlZCB0byBoYXZlIGZlZWRiYWNrIG9uIHNvbWUgcG9pbnRzOg0KPiA+Pg0KPiA+PiAgIC0gVGhl
IHBhcmFtZXRlcnMgYWRkZWQgYXJlIGVub3VnaCBmb3IgdGhlIGhhcmR3YXJlIEkgaGF2ZSwgaXMg
aXQNCj4gPj4gICAgIGVub3VnaCBpbiBnZW5lcmFsPw0KPiA+Pg0KPiA+PiAgIC0gZXZlbiB3aXRo
IHRoZSBldGh0b29sIHZpYSBuZXRsaW5rIGVmZm9ydCwgSSBjaG9zZSB0byBrZWVwIHRoZQ0KPiA+
PiAgICAgaW9jdGwoKSB3YXksIGluIGNhc2Ugc29tZW9uZSB3YW50cyB0byBiYWNrcG9ydCB0aGlz
IHRvIGFuIG9sZGVyDQo+ID4+ICAgICBrZXJuZWwsIGlzIHRoZXJlIGEgcHJvYmxlbSB3aXRoIHRo
aXM/DQo+ID4NCj4gPiBJIHdvdWxkIHByZWZlciBub3QgZXh0ZW5kaW5nIGlvY3RsIGludGVyZmFj
ZSB3aXRoIG5ldyBmZWF0dXJlcywgd2l0aA0KPiA+IG9idmlvdXMgZXhjZXB0aW9ucyBsaWtlIGFk
ZGluZyBuZXcgbGluayBtb2RlcyBvciBzby4gTm90IG9ubHkgYmVjYXVzZQ0KPiA+IGhhdmluZyBu
ZXcgZmVhdHVyZXMgb25seSBhdmFpbGFibGUgdGhyb3VnaCBuZXRsaW5rIHdpbGwgbW90aXZhdGUN
Cj4gPiBhdXRob3JzIG9mIHVzZXJzcGFjZSB0b29scyB0byBzdXBwb3J0IG5ldGxpbmsgYnV0IG1v
c3RseSBiZWNhdXNlIHRoZQ0KPiA+IGxhY2sgb2YgZmxleGliaWxpdHkgYW5kIGV4dGVuc2liaWxp
dHkgb2YgaW9jdGwgaW50ZXJmYWNlIGluZXZpdGFibHkNCj4gPiBsZWFkcyB0byBjb21wcm9taXNl
cyB5b3Ugd291bGRuJ3QgaGF2ZSB0byBkbyBpZiB5b3Ugb25seSBpbXBsZW1lbnQNCj4gPiBuZXRs
aW5rIHJlcXVlc3RzLg0KPiANCj4gQWdyZWVkLiBXaWxsIHNlbmQgdGhlIG5leHQgdmVyc2lvbiB3
aXRoIG9ubHkgdGhlIG5ldGxpbmsgaW50ZXJmYWNlLCBhbmQgbGV0J3MNCj4gc2VlIHdobyBjb21w
bGFpbnMuDQo+IA0KPiA+DQo+ID4gT25lIGV4YW1wbGUgSSBjYW4gc2VlIGlzIHRoZSB1c2Ugb2Yg
dTMyIGZvciBxdWV1ZSBiaXRtYXBzLiBQZXJoYXBzIHlvdQ0KPiA+IGRvbid0IGV4cGVjdCB0aGlz
IGZlYXR1cmUgdG8gYmUgc3VwcG9ydGVkIG9uIGRldmljZXMgd2l0aCBtb3JlIHRoYW4gMzINCj4g
PiBxdWV1ZXMgKGFuZCBJIGRvbid0IGhhdmUgZW5vdWdoIGV4cGVydGlzZSB0byB0ZWxsIGlmIGl0
J3MganVzdGlmaWVkIGF0DQo+ID4gdGhlIG1vbWVudCkgYnV0IGNhbiB5b3UgYmUgc3VyZSBpdCB3
aWxsIGJlIHRoZSBjYXNlIGluIDEwIG9yIDIwIHllYXJzPw0KPiA+IEFzIGxvbmcgYXMgdGhlc2Ug
aGFyZGNvZGVkIHUzMiBiaXRtYXBzIGFyZSBvbmx5IHBhcnQgb2YgaW50ZXJuYWwNCj4gPiBrZXJu
ZWwgQVBJIChldGh0b29sX29wcyksIGV4dGVuZGluZyB0aGUgc3VwcG9ydCBmb3IgYmlnZ2VyIGRl
dmljZXMNCj4gPiB3aWxsIG1lYW4gc29tZSBjb2RlIGNodXJuIChwb3NzaWJseSBsYXJnZSBpZiBt
YW55IGRyaXZlcnMgaW1wbGVtZW50DQo+ID4gdGhlIGZlYXR1cmUpIGJ1dCBpdCdzIHNvbWV0aGlu
ZyB0aGF0IGNhbiBiZSBkb25lLiBCdXQgaWYgeW91IGhhdmUgdGhpcw0KPiA+IGxpbWl0IGluIHVz
ZXJzcGFjZSBBUEksIHlvdSBhcmUgaW4gYSBtdWNoIGJpZ2dlciB0cm91YmxlLiBUaGUgc2FtZSBj
YW4NCj4gPiBiZSBzYWlkIGZvciBhZGRpbmcgbmV3IGF0dHJpYnV0ZXMgLSBlYXN5IHdpdGggbmV0
bGluayBidXQgd2l0aCBpb2N0bA0KPiA+IHlvdSBuZXZlciBrbm93IGlmIHRob3NlIHJlc2VydmVk
IGZpZWxkcyB3aWxsIHN1ZmZpY2UuDQo+IA0KPiBBIGJpdCBvZiBiYWNrZ3JvdW5kIGZvciB0aGlz
IGRlY2lzaW9uICh1c2luZyB1MzIpLCBmcmFtZSBwcmVlbXB0aW9uIGhhcw0KPiBkaW1pc2hpbmcg
cmV0dXJucyBpbiByZWxhdGlvbiB0byBsaW5rIHNwZWVkcywgbXkgZ3V0IGZlZWxpbmcgaXMgdGhh
dCBmb3IgbGlua3MNCj4gZmFzdGVyIHRoYW4gMi41RyBpdCBzdG9wcyBtYWtpbmcgc2Vuc2UsIGF0
IGxlYXN0IGluIExpbnV4LCB0aGUgbWVhc3VyZW1lbnQNCj4gbm9pc2Ugd2lsbCBoaWRlIGFueSBs
YXRlbmN5IGltcHJvdmVtZW50IGJyb3VnaHQgYnkgZnJhbWUgcHJlZW1wdGlvbi4NCj4gQW5kIEkg
ZG9uJ3Qgc2VlIG1hbnkgMi41RyBOSUNzIHN1cHBvcnRpbmcgbW9yZSB0aGFuIDMyIHF1ZXVlcy4N
Cj4gDQo+IEJ1dCBJIGFncmVlIHRoYXQga2VlcGluZyB0aGUgaW50ZXJmYWNlIGZ1dHVyZSBwcm9v
ZiBpcyBiZXR0ZXIuIFdpbGwgY2hhbmdlIHRvDQo+IGV4cG9zZSB0aGUgcXVldWVzIGNvbmZpZ3Vy
YXRpb24gYXMgYml0c2V0Lg0KPiANCj4gPg0KPiA+Pg0KPiA+PiAgIC0gU29tZSBzcGFjZSBmb3Ig
YmlrZXNoZWRkaW5nIHRoZSBuYW1lcyBhbmQgbG9jYXRpb24gKGZvciBleGFtcGxlLA0KPiA+PiAg
ICAgZG9lcyBpdCBtYWtlIHNlbnNlIGZvciB0aGVzZSBzZXR0aW5ncyB0byBiZSBwZXItcXVldWU/
KSwgYXMgSSBhbQ0KPiA+PiAgICAgbm90IHF1aXRlIGhhcHB5IHdpdGggdGhlbSwgb25lIGV4YW1w
bGUsIGlzIHRoZSB1c2Ugb2YgcHJlZW1wdGlibGUNCj4gPj4gICAgIHZzLiBwcmVlbXB0YWJsZTsN
Cj4gPj4NCj4gPj4NCj4gPj4gQWJvdXQgdGhlIHBhdGNoZXMsIHNob3VsZCBiZSBxdWl0ZSBzdHJh
aWdodGZvcndhcmQ6DQo+ID4+DQo+ID4+IFBhdGNoIDEsIGFkZHMgdGhlIEVUSFRPT0xfR0ZQIGFu
ZCBFVEhPT0xfU0ZQIGNvbW1hbmRzIGFuZCB0aGUNCj4gPj4gYXNzb2NpYXRlZCBkYXRhIHN0cnVj
dHVyZXM7DQo+ID4+DQo+ID4+IFBhdGNoIDIsIGFkZHMgdGhlIEVUSFRPT0xfTVNHX1BSRUVNUFRf
R0VUIGFuZA0KPiBFVEhUT09MX01TR19QUkVFTVBUX1NFVA0KPiA+PiBuZXRsaW5rIG1lc3NhZ2Vz
IGFuZCB0aGUgYXNzb2NpYXRlZCBhdHRyaWJ1dGVzOw0KPiA+DQo+ID4gSSBkaWRuJ3QgbG9vayB0
b28gZGVlcGx5IGJ1dCBvbmUgdGhpbmcgSSBub3RpY2VkIGlzIHRoYXQgc2V0dGluZyB0aGUNCj4g
PiBwYXJhbWV0ZXJzIHVzaW5nIGlvY3RsKCkgZG9lcyBub3QgdHJpZ2dlciBuZXRsaW5rIG5vdGlm
aWNhdGlvbi4gSWYgd2UNCj4gPiBkZWNpZGUgdG8gaW1wbGVtZW50IGlvY3RsIHN1cHBvcnQgKGFu
ZCBJJ20gbm90IGEgZmFuIG9mIHRoYXQpLCB0aGUNCj4gPiBub3RpZmljYXRpb25zIHNob3VsZCBi
ZSBzZW50IGV2ZW4gd2hlbiBpb2N0bCBpcyB1c2VkLg0KPiANCj4gT2gsIHllYWgsIHRoYXQncyBy
aWdodC4gTmljZSBjYXRjaC4NCj4gDQo+IA0KPiBDaGVlcnMsDQo+IC0tDQo+IFZpbmljaXVzDQoN
CkJyLA0KUG8gTGl1DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
