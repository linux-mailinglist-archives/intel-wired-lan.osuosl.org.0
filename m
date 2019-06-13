Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B056D4373F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2019 16:35:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08B50882AC;
	Thu, 13 Jun 2019 14:35:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UXDvhRdxOJ6k; Thu, 13 Jun 2019 14:35:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF055882BE;
	Thu, 13 Jun 2019 14:35:31 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F6B51BF308
 for <intel-wired-lan@osuosl.org>; Thu, 13 Jun 2019 14:35:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 130A8865AB
 for <intel-wired-lan@osuosl.org>; Thu, 13 Jun 2019 14:35:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hlK8xx1sexww for <intel-wired-lan@osuosl.org>;
 Thu, 13 Jun 2019 14:35:28 +0000 (UTC)
X-Greylist: delayed 00:18:18 by SQLgrey-1.7.6
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr50114.outbound.protection.outlook.com [40.107.5.114])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D513086088
 for <intel-wired-lan@osuosl.org>; Thu, 13 Jun 2019 14:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=SILICOMLTD.onmicrosoft.com; s=selector1-SILICOMLTD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rCE0aSItkZFxa2BA8IEfaXY/iLXZV3bvOzfR9whyWAA=;
 b=Mq7/i6y3skWeny4iuIvZIRn/GsOMw86JrXNCpLWF552Cep0dv1SxwycrrOfHsKx6skfPvr12SWUwrArmlgWglqkPNAq/FJTdyMHyFxsK9+IT5NDJl59b6wEiEtpWIWfDdgo2Rf8CrtbOgBWAjUZXVgf7TRK2K3HQqAstpd4HTGw=
Received: from DB8PR04MB6426.eurprd04.prod.outlook.com (20.179.249.138) by
 DB8PR04MB5610.eurprd04.prod.outlook.com (20.179.8.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Thu, 13 Jun 2019 14:02:09 +0000
Received: from DB8PR04MB6426.eurprd04.prod.outlook.com
 ([fe80::8d44:be0b:cdaa:ba55]) by DB8PR04MB6426.eurprd04.prod.outlook.com
 ([fe80::8d44:be0b:cdaa:ba55%6]) with mapi id 15.20.1987.010; Thu, 13 Jun 2019
 14:02:09 +0000
From: Stephen Douthit <stephend@silicom-usa.com>
To: Max Lapshin <max@flussonic.com>
Thread-Topic: [Intel-wired-lan] i350 software defined pins sysfs access
Thread-Index: AQHVIJnzYMyL0CLnc0KHZnEaqpOIHKaYQEGAgADnawCAAHhJgA==
Date: Thu, 13 Jun 2019 14:02:09 +0000
Message-ID: <91ca0c21-d1c2-bf4d-0a0a-6c04c65381d1@silicom-usa.com>
References: <C0C7FF38-286F-46CA-909D-1A02EFDBBF0C@flussonic.com>
 <3827f4b8-506d-f55a-3279-f8a17699ee5e@silicom-usa.com>
 <640C4F07-20AB-4D98-8A6D-770F0CE1C412@flussonic.com>
In-Reply-To: <640C4F07-20AB-4D98-8A6D-770F0CE1C412@flussonic.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MN2PR04CA0019.namprd04.prod.outlook.com
 (2603:10b6:208:d4::32) To DB8PR04MB6426.eurprd04.prod.outlook.com
 (2603:10a6:10:107::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stephend@silicom-usa.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [96.82.2.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f8b7c1a-f919-412a-9f53-08d6f007b9aa
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB8PR04MB5610; 
x-ms-traffictypediagnostic: DB8PR04MB5610:
x-microsoft-antispam-prvs: <DB8PR04MB561064F4E2779DC43F2D580594EF0@DB8PR04MB5610.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39850400004)(136003)(376002)(346002)(366004)(43544003)(189003)(199004)(8936002)(99286004)(446003)(71190400001)(66446008)(73956011)(11346002)(81166006)(64756008)(386003)(71200400001)(66946007)(3450700001)(81156014)(66476007)(31686004)(6916009)(68736007)(2906002)(186003)(6506007)(52116002)(66556008)(305945005)(8676002)(43066004)(6116002)(53936002)(26005)(5660300002)(7736002)(256004)(76176011)(36756003)(53546011)(102836004)(316002)(3846002)(31696002)(6246003)(6512007)(14454004)(229853002)(6486002)(478600001)(2616005)(6436002)(476003)(486006)(86362001)(25786009)(66066001)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB8PR04MB5610;
 H:DB8PR04MB6426.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silicom-usa.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HP0qdkDrSq08NEWKnpV8JdLILNlTWs5EInTbtGqpqftKP+gMb5x24Hbp2W4yem/bnEGQcxB922tyax0G2q1PKNwJgkW5WKg8FngkzhjoVQ9b/YiE98uclwgnNLSG+A6nW40r2Zt8DuGowRKp43Y162V8Zry/Z3SM3anH60Pgp7h5Chs3GomPN8GwU0J9hWWKlAvF20vWkELqv4AZYfDma3+mvlObP/xyTfcYS/d4zx3HeJjoq1JfuD8oSoKcdl2JmxLO4L7UUdpAl+QbHkSOR0ZNF7YqxyT3KTIAb5tk8rfHDpIun4pWxaXrL2yf5CVVGjD194tf03Dx6hqyqf/jL3C9s4QHvNLvtHRD5IufdDuy2kv6jqsM22Ivq2TsNSJF+TWdf4WNqeWlUX2dUwvT+DlCucFIu9pc6aOSFyAcnbA=
Content-ID: <3F97176FE60B2A45A1A765C2700A163B@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silicom-usa.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f8b7c1a-f919-412a-9f53-08d6f007b9aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 14:02:09.2856 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c9e326d8-ce47-4930-8612-cc99d3c87ad1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stephend@silicom-usa.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5610
Subject: Re: [Intel-wired-lan] i350 software defined pins sysfs access
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
Reply-To: Stephen Douthit <stephend@silicom-usa.com>
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/13/19 2:51 AM, Max Lapshin wrote:
> =

>>
>> The igb driver already uses these pins for PTP if that's configured and
>> the 82575 uses SDP3 as a power enable for SFP cages, sgmii PHYs, etc.
>> You'll need to avoid letting userspace poke at SDPs that the driver is
>> already using.
> =

> I should write code to avoid touching these registers for these cases?

If you use the gpiolib framework, then I believe refactoring the
existing SDP peeks/pokes in the igb driver to use gpio descriptors
should take care of this for you.  In the cases where the driver needs
the SDPs it will have already requested those gpio descriptors and they
won't be available to other requesters like user space.

>> Assuming this can coexist with the existing usage, why not register this
>> as a gpio_chip with the gpiolib framework?
> =

> Ok, I will =A0take a look at it.
> =

> =

>>
>>> Subject: [PATCH] i350: Add support for Intel i350 software defined pins
>>>
>>> +
>>> +/* Software defined pins 2-3 */
>>> +#define IGB_CTRL_EXT_SDP2_DATA E1000_CTRL_EXT_SDP2_DATA /* Value of SW=
 Defineable Pin 2 */
>>> +#define IGB_CTRL_EXT_SDP3_DATA E1000_CTRL_EXT_SDP3_DATA /* Value of SW=
 Defineable Pin 3 */
>>> +#define IGB_CTRL_EXT_SDP2_DIR =A0E1000_CTRL_EXT_SDP2_DIR =A0/* SDP2 Da=
ta direction */
>>> +#define IGB_CTRL_EXT_SDP3_DIR =A0E1000_CTRL_EXT_SDP3_DIR =A0/* SDP3 Da=
ta direction */
>>
>> Looks like e1000_defines.h already has this info.
>>
> =

> Only partially, so I decided to copy it to avoid situtation then I have i=
n one code =A0IGB_ and E1000_ =A0defines.
> =

> It is not good?

I think it would be preferable to just add to e1000_defines.h where
they're all currently located rather than duplicating them.

-Steve
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
