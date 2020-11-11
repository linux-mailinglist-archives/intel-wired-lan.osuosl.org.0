Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 544052AF5FC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 17:16:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAD878643F;
	Wed, 11 Nov 2020 16:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p1Fe2mmLzH-q; Wed, 11 Nov 2020 16:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B0B7086752;
	Wed, 11 Nov 2020 16:16:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFE461BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 16:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB65186744
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 16:16:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1wGoZ5NksUEc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 16:16:16 +0000 (UTC)
X-Greylist: delayed 05:33:55 by SQLgrey-1.7.6
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr00106.outbound.protection.outlook.com [40.107.0.106])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6298F8643F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 16:16:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K53YQgN8ex0jwhXvibQ4SfPIKMN8+6ai/fR8hmXJjcgV0SH8J8bAl23NonDNQYK6D6iB8Q+KiRQ/yO3Exm3sDC7xq6E5KF/WfqPId8Z2mZFsk79rraK6xrmQJ/dqa0Y3XfC+epGV+IYotH2Wr5ZZIG+uoLwz5OcEMlIKfl4UwR+ddV/XGko5Ofb+AXmOGrl01lKAupmKkug9NtkmX3iBUkbLxtIehWk9LtMeSmu3JyeZuPob0YooruLqpXWIDunc49/CkvOb5vUOOHhB6XJEq6iKVhgpKJ1f5rihKuvgNSFt2cU7nvzasieEeNyw0YAln5TtEnOvRolhux3dsdzpEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cqKAch4QxZUfV3SzIYqcGGQASmYIDzKZePv/CGmVc64=;
 b=nMjR/KtSnXdZNamISG0JpG37c9O9Sfk1G6abl8qDZWS78g8aKzE2fTfypE5Pw0bWI/s2ZLDlJE9ok2PAmW+TXXF5JU2zECoFclXEDFbfD30nDnKfqDTGT8H7ScdnH44LRHjb4q3sIndjMe71r9yL4sPQuFzBJutoF7UPgyAgnbv9ZRzViwlubIBBIiPakaJMLCsGaayhqJ18UudGO+332kYR8A4cNTtIym4MlTNWLu7ttgKR9H2jY6wnX+Vn80TBFRQsnyV3+4O3Fv0ePbTfOHRrOpl2OT4HBr+RIp8Jc7v4FVyXsg4u+JRC3k79JMU+FhI5xnG6WyGoMBHGKEPzzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cqKAch4QxZUfV3SzIYqcGGQASmYIDzKZePv/CGmVc64=;
 b=WydxbKN3zMUddlFlthV3ZHc4b9i8ckCapihi79ahLUXVvBUyiT5KG73scmbGX42HZkYrf34TWdWLRS/LwgfqPuqJheJ8yoBjWIUvGq6ko3D3ReDa94GscEuvVaYHsw1OdPH9T4acKNvauYEGMhP5KUaupe9dBiEZLT/JcSDbjeA=
Authentication-Results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none; molgen.mpg.de; dmarc=none action=none header.from=voleatech.de; 
Received: from AM8PR05MB7251.eurprd05.prod.outlook.com (2603:10a6:20b:1d4::23)
 by AM0PR05MB6466.eurprd05.prod.outlook.com (2603:10a6:208:13e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Wed, 11 Nov
 2020 16:16:13 +0000
Received: from AM8PR05MB7251.eurprd05.prod.outlook.com
 ([fe80::f132:2cc:34f2:5e4]) by AM8PR05MB7251.eurprd05.prod.outlook.com
 ([fe80::f132:2cc:34f2:5e4%7]) with mapi id 15.20.3541.025; Wed, 11 Nov 2020
 16:16:13 +0000
Date: Wed, 11 Nov 2020 17:16:11 +0100
From: Sven Auhagen <sven.auhagen@voleatech.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20201111161611.xf7yzdm5eoio73hx@SvensMacBookAir-2.local>
References: <20201019080553.24353-1-sven.auhagen@voleatech.de>
 <20201019080553.24353-4-sven.auhagen@voleatech.de>
 <fc1f6aad-b587-25e2-0632-ea43f1032aad@molgen.mpg.de>
 <20201111101050.ffvl7cy34nkin27d@SvensMacBookAir.hq.voleatech.com>
 <f54c2612-0d42-0422-3b0c-ecfdadd31dce@molgen.mpg.de>
Content-Disposition: inline
In-Reply-To: <f54c2612-0d42-0422-3b0c-ecfdadd31dce@molgen.mpg.de>
X-Originating-IP: [37.209.79.82]
X-ClientProxiedBy: AM0PR10CA0088.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:15::41) To AM8PR05MB7251.eurprd05.prod.outlook.com
 (2603:10a6:20b:1d4::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from SvensMacBookAir-2.local (37.209.79.82) by
 AM0PR10CA0088.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:15::41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3541.21 via Frontend Transport; Wed, 11 Nov 2020 16:16:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4a643fbb-0176-4ad0-e415-08d8865d1bae
X-MS-TrafficTypeDiagnostic: AM0PR05MB6466:
X-Microsoft-Antispam-PRVS: <AM0PR05MB64663A5844A2927940C022FEEFE80@AM0PR05MB6466.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ONjMDknm92p0k/OxOiIQQgRXnh+kczOzUkRXE6zhsuhC22TjY8PKqVBN29ZRKxIw4qUwS77w8tNvxsL8WOdTIY5339mWxdJXDWtwf9Cz/bXK22zXIX+c0YfhN8yDhLj4BEFbRfrSq1wT0xIix/ABsanK/91Plg/1cPpmwZX+z9U9PEAnWA8LqueLXI8xaztDi5egx8ySLrvB/BzN3J8SY4P7T0QakxgMOacxLDVHyGDOO+TBAPATaruyzT2slYof++mmRFqcqa7w1a4lBKYna21ajWVtHkw3jGANW8gS0vHycgEGeB3wRpLaTCj4pe029znXlgPLf/MQ0kpCRcZpFVOLT9eik6WIwSQm9A6ydMbYvO37vLfPFjXXWC5iaILE2IsfO+RfLgWSHrwh+W3RdQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR05MB7251.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(396003)(39830400003)(136003)(366004)(8676002)(8936002)(5660300002)(4326008)(16526019)(66556008)(186003)(6506007)(83380400001)(956004)(7696005)(52116002)(316002)(66946007)(66476007)(1076003)(44832011)(86362001)(9686003)(7416002)(55016002)(2906002)(45080400002)(15650500001)(26005)(6916009)(966005)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: imNmHxZFLPjkSY8UXj2uhs6OuuDsEqHgtW4OF0nU+bTdWTYt6Wm1GNjQlz1dmrIXQjx3D1nyjquHvmMx6u1J0IC6z7AJYAeGYodP5l1kP9sMCwFvB4WelFN/rGteJ5jC+FiggWbNO9lQxfPfhCjTR8YPihoClwavGRjo0/GERDWgrjck2BO21zZw1WGUpdg7UtGEiFApPn9de3HCL0OJebQIiqnbQyaLkPZ+LW7oimxFvR7/unp1bkp5xnUxuaKxaOc7ihmGm+Hr8NffDtrQxCBadAUx7oYd1V7tvJ6irxknBEB/IHeHtqWUZVW8pXGupdTI3gZU2LEHSeryWgzpDmkTh/nctjvxSRgKTbWYgVjRGI32f0C1+Brm3bA5Lv+68C2A8iGVHYYCBaVYpHpvBliI+zsk7u73DjeHbiUAbgJ67Q6QQ5OFwZ+eqFPwcC6TB6cfai6Ceb/UM2jnVqn6BjnINB58lG1itRTPKsNSOxKi1OfgGdH9pZcEoe10/YVMS4tSKho3vmuXoMpIZkUjW3ctRxHRkfHZT+Fw1R8WHr03xhZvnddPVU78mWur/oJbUGf0vdqZpwIh84ZJ9vVVeB/kCWjveDRXT6qS0vWTi+SztBF9zKtL8cJho3qrDHk32Rk3V9XAnU6Trc8LrzscfA==
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a643fbb-0176-4ad0-e415-08d8865d1bae
X-MS-Exchange-CrossTenant-AuthSource: AM8PR05MB7251.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2020 16:16:13.0508 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oJcvs3MHbMC9fBPB5Prurj3F7OmfHh/bZD5lu38lM6OFiU/44n2/GhH5yJnyRWjeVrdMNztnIvRhKtFQ6m8lXpArmvmZGdaJx36fTgye36c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB6466
Subject: Re: [Intel-wired-lan] [PATCH net v3 3/6] igb: XDP extack message on
 error
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
Cc: nhorman@redhat.com, netdev@vger.kernel.org, brouer@redhat.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 sassmann@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBOb3YgMTEsIDIwMjAgYXQgMTE6MzU6NDRBTSArMDEwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gRGVhciBTdmVuLAo+IAo+IAo+IEFtIDExLjExLjIwIHVtIDExOjEwIHNjaHJpZWIgU3Zl
biBBdWhhZ2VuOgo+ID4gT24gV2VkLCBOb3YgMTEsIDIwMjAgYXQgMDg6MTE6NDZBTSArMDEwMCwg
UGF1bCBNZW56ZWwgd3JvdGU6Cj4gCj4gPiA+IEFtIDE5LjEwLjIwIHVtIDEwOjA1IHNjaHJpZWIg
c3Zlbi5hdWhhZ2VuQHZvbGVhdGVjaC5kZToKPiA+ID4gPiBGcm9tOiBTdmVuIEF1aGFnZW4gPHN2
ZW4uYXVoYWdlbkB2b2xlYXRlY2guZGU+Cj4gPiA+ID4gCj4gPiA+ID4gQWRkIGFuIGV4dGFjayBl
cnJvciBtZXNzYWdlIHdoZW4gdGhlIFJYIGJ1ZmZlciBzaXplIGlzIHRvbyBzbWFsbAo+ID4gPiA+
IGZvciB0aGUgZnJhbWUgc2l6ZS4KPiA+ID4gPiAKPiA+ID4gPiBTdWdnZXN0ZWQtYnk6IE1hY2ll
aiBGaWphbGtvd3NraSA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT4KPiA+ID4gPiBSZXZp
ZXdlZC1ieTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29t
Pgo+ID4gPiA+IEFja2VkLWJ5OiBNYWNpZWogRmlqYWxrb3dza2kgPG1hY2llai5maWphbGtvd3Nr
aUBpbnRlbC5jb20+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogU3ZlbiBBdWhhZ2VuIDxzdmVuLmF1
aGFnZW5Adm9sZWF0ZWNoLmRlPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICAgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jIHwgMTIgKysrKysrKy0tLS0tCj4gPiA+ID4gICAg
MSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+ID4gPiAK
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9t
YWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+ID4gPiA+
IGluZGV4IDBhOTE5ODAzN2I5OC4uMDg4ZjlkZGIwMDkzIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4gPiA+ID4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMKPiA+ID4gPiBAQCAtMjgyNCwy
MCArMjgyNCwyMiBAQCBzdGF0aWMgaW50IGlnYl9zZXR1cF90YyhzdHJ1Y3QgbmV0X2RldmljZSAq
ZGV2LCBlbnVtIHRjX3NldHVwX3R5cGUgdHlwZSwKPiA+ID4gPiAgICAJfQo+ID4gPiA+ICAgIH0K
PiA+ID4gPiAtc3RhdGljIGludCBpZ2JfeGRwX3NldHVwKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYs
IHN0cnVjdCBicGZfcHJvZyAqcHJvZykKPiA+ID4gPiArc3RhdGljIGludCBpZ2JfeGRwX3NldHVw
KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsIHN0cnVjdCBuZXRkZXZfYnBmICpicGYpCj4gPiA+ID4g
ICAgewo+ID4gPiA+ICAgIAlpbnQgaSwgZnJhbWVfc2l6ZSA9IGRldi0+bXR1ICsgSUdCX0VUSF9Q
S1RfSERSX1BBRDsKPiA+ID4gPiAgICAJc3RydWN0IGlnYl9hZGFwdGVyICphZGFwdGVyID0gbmV0
ZGV2X3ByaXYoZGV2KTsKPiA+ID4gPiArCXN0cnVjdCBicGZfcHJvZyAqcHJvZyA9IGJwZi0+cHJv
ZywgKm9sZF9wcm9nOwo+ID4gPiA+ICAgIAlib29sIHJ1bm5pbmcgPSBuZXRpZl9ydW5uaW5nKGRl
dik7Cj4gPiA+ID4gLQlzdHJ1Y3QgYnBmX3Byb2cgKm9sZF9wcm9nOwo+ID4gPiA+ICAgIAlib29s
IG5lZWRfcmVzZXQ7Cj4gPiA+ID4gICAgCS8qIHZlcmlmeSBpZ2IgcmluZyBhdHRyaWJ1dGVzIGFy
ZSBzdWZmaWNpZW50IGZvciBYRFAgKi8KPiA+ID4gPiAgICAJZm9yIChpID0gMDsgaSA8IGFkYXB0
ZXItPm51bV9yeF9xdWV1ZXM7IGkrKykgewo+ID4gPiA+ICAgIAkJc3RydWN0IGlnYl9yaW5nICpy
aW5nID0gYWRhcHRlci0+cnhfcmluZ1tpXTsKPiA+ID4gPiAtCQlpZiAoZnJhbWVfc2l6ZSA+IGln
Yl9yeF9idWZzeihyaW5nKSkKPiA+ID4gPiArCQlpZiAoZnJhbWVfc2l6ZSA+IGlnYl9yeF9idWZz
eihyaW5nKSkgewo+ID4gPiA+ICsJCQlOTF9TRVRfRVJSX01TR19NT0QoYnBmLT5leHRhY2ssICJU
aGUgUlggYnVmZmVyIHNpemUgaXMgdG9vIHNtYWxsIGZvciB0aGUgZnJhbWUgc2l6ZSIpOwo+IAo+
ID4ganVzdCB0byB2ZXJpZnksIE5MX1NFVF9FUlJfTVNHX01PRCBkb2VzIG5vdCB0YWtlIGFueSB2
YXJpYWJsZSBhcmd1bWVudHMKPiA+IGZvciB0aGUgdGV4dCB0byBwcmludC4KPiAKPiBBaCwgSmVz
cGVyIHJlbWFya2VkIHRoYXQgdG9vLiBDYW4gdGhlIG1hY3JvIGJlIGV4dGVuZGVkPwoKSXQgcHJv
YmFibHkgY2FuIGJlIG5vdCBhcyBwYXJ0IG9mIHRoaXMgcGF0Y2ggc2VyaWVzLgoKPiAKPiA+IFdo
YXQgc2VlbXMgdG8gYmUgdGhlIGNvbW1vbiBwcmFjdGljZSBpcyB0byBhZGQgYSBzZWNvbmQgbG9n
IGxpbmUKPiA+IHdpdGggbmV0ZGV2X3dhcm4gdG8gcHJpbnQgb3V0IHRoZSBzaXplcy4KPiA+IAo+
ID4gSXMgdGhhdCB3aGF0IHlvdSBhcmUgbG9va2luZyBmb3I/Cj4gCj4gWWVzLCB0aG91Z2ggaXQg
c291bmRzIHRvIGN1bWJlcnNvbWUuIFNvLCB5ZXMsIHRoYXTigJlkIGJlIGdyZWF0IGZvciBtZSwg
YnV0IHVwCj4gdG8geW91LCBpZiB5b3UgdGhpbmsgaXTigJlzIHVzZWZ1bC4KPiAKCkxldCBtZSBh
ZGQgYSBuZXRkZXYgd2FybiBoZXJlIHNvIHRoaXMgcGF0Y2ggY2FuIG1vdmUgZm9yd2FyZAphbmQg
dGhlIGluZm9ybWF0aW9uIGlzIGF2YWlsYWJsZS4KCkJlc3QKU3ZlbgoKPiAKPiBLaW5kIHJlZ2Fy
ZHMsCj4gCj4gUGF1bAo+IAo+IAo+ID4gPiBDb3VsZCB5b3UgcGxlYXNlIGFsc28gYWRkIGJvdGgg
c2l6ZSB2YWx1ZXMgdG8gdGhlIGVycm9yIG1lc3NhZ2U/Cj4gPiA+IAo+ID4gPiA+ICAgIAkJCXJl
dHVybiAtRUlOVkFMOwo+ID4gPiA+ICsJCX0KPiA+ID4gPiAgICAJfQo+ID4gPiA+ICAgIAlvbGRf
cHJvZyA9IHhjaGcoJmFkYXB0ZXItPnhkcF9wcm9nLCBwcm9nKTsKPiA+ID4gPiBAQCAtMjg2OSw3
ICsyODcxLDcgQEAgc3RhdGljIGludCBpZ2JfeGRwKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsIHN0
cnVjdCBuZXRkZXZfYnBmICp4ZHApCj4gPiA+ID4gICAgewo+ID4gPiA+ICAgIAlzd2l0Y2ggKHhk
cC0+Y29tbWFuZCkgewo+ID4gPiA+ICAgIAljYXNlIFhEUF9TRVRVUF9QUk9HOgo+ID4gPiA+IC0J
CXJldHVybiBpZ2JfeGRwX3NldHVwKGRldiwgeGRwLT5wcm9nKTsKPiA+ID4gPiArCQlyZXR1cm4g
aWdiX3hkcF9zZXR1cChkZXYsIHhkcCk7Cj4gPiA+ID4gICAgCWRlZmF1bHQ6Cj4gPiA+ID4gICAg
CQlyZXR1cm4gLUVJTlZBTDsKPiA+ID4gPiAgICAJfQo+ID4gPiA+IEBAIC02NDk5LDcgKzY1MDEs
NyBAQCBzdGF0aWMgaW50IGlnYl9jaGFuZ2VfbXR1KHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYs
IGludCBuZXdfbXR1KQo+ID4gPiA+ICAgIAkJCXN0cnVjdCBpZ2JfcmluZyAqcmluZyA9IGFkYXB0
ZXItPnJ4X3JpbmdbaV07Cj4gPiA+ID4gICAgCQkJaWYgKG1heF9mcmFtZSA+IGlnYl9yeF9idWZz
eihyaW5nKSkgewo+ID4gPiA+IC0JCQkJbmV0ZGV2X3dhcm4oYWRhcHRlci0+bmV0ZGV2LCAiUmVx
dWVzdGVkIE1UVSBzaXplIGlzIG5vdCBzdXBwb3J0ZWQgd2l0aCBYRFBcbiIpOwo+ID4gPiA+ICsJ
CQkJbmV0ZGV2X3dhcm4oYWRhcHRlci0+bmV0ZGV2LCAiUmVxdWVzdGVkIE1UVSBzaXplIGlzIG5v
dCBzdXBwb3J0ZWQgd2l0aCBYRFAuIE1heCBmcmFtZSBzaXplIGlzICVkXG4iLCBtYXhfZnJhbWUp
Owo+ID4gPiA+ICAgIAkJCQlyZXR1cm4gLUVJTlZBTDsKPiA+ID4gPiAgICAJCQl9Cj4gPiA+ID4g
ICAgCQl9Cj4gPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gS2luZCByZWdhcmRzLAo+ID4gPiAK
PiA+ID4gUGF1bAo+ID4gPiAKPiA+ID4gCj4gPiA+IFBTOiBGb3IgY29tbWl0IG1lc3NhZ2Ugc3Vt
bWFyaWVzLCBzdGF0ZW1lbnRzIHdpdGggdmVyYnMgaW4gaW1wZXJhdGl2ZSBtb29kCj4gPiA+IGFy
ZSBxdWl0ZSBjb21tb24gWzFdLgo+ID4gPiAKPiA+ID4gPiBpZ2I6IFByaW50IFhEUCBleHRhY2sg
ZXJyb3Igb24gdG9vIGJpZyBmcmFtZSBzaXplCj4gPiA+IAo+ID4gPiAKPiA+ID4gWzFdOiBodHRw
czovL2V1cjAzLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0El
MkYlMkZjaHJpcy5iZWFtcy5pbyUyRnBvc3RzJTJGZ2l0LWNvbW1pdCUyRiZhbXA7ZGF0YT0wNCU3
QzAxJTdDc3Zlbi5hdWhhZ2VuJTQwdm9sZWF0ZWNoLmRlJTdDODMyZWE1MGM3MDFiNGQ4OWZkNTUw
OGQ4ODYyZDhjOTIlN0NiODJhOTlmNjc5ODE0YTcyOTUzNDRkMzUyOThmODQ3YiU3QzAlN0MwJTdD
NjM3NDA2ODc3NDg5OTY5NDc4JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xq
QXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzEw
MDAmYW1wO3NkYXRhPUlUUGNpcHhrJTJCZyUyRlIwUVJzc2ZpRjVsbTFLM21HSnNCNXdGa2RGM1Nx
aUEwJTNEJmFtcDtyZXNlcnZlZD0wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
