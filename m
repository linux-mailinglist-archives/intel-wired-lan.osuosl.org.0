Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B061D526BB0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 May 2022 22:38:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CBF383F89;
	Fri, 13 May 2022 20:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C3guZ3YTQVuN; Fri, 13 May 2022 20:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEA2D83F6C;
	Fri, 13 May 2022 20:38:46 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4F211BF3CD
 for <intel-wired-lan@osuosl.org>; Fri, 13 May 2022 20:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE4E040160
 for <intel-wired-lan@osuosl.org>; Fri, 13 May 2022 20:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silicomltd.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aIXccdcZVAUT for <intel-wired-lan@osuosl.org>;
 Fri, 13 May 2022 20:38:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2091.outbound.protection.outlook.com [40.107.22.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A413F400EA
 for <intel-wired-lan@osuosl.org>; Fri, 13 May 2022 20:38:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C0muRwBuMJTkMAKKCHnCEGZ1DhsBvia2oyjANHDtvxQiUBKbI1NGIVF2zxuRNU9UTqjfbJCPM4U27eJhNBHSJ0i3saRIjFjh/EJ5Rg0DKmCoJ+KD80q8sd67JgsrxBr40RQSdMYMJjCTDyJjIeceaqy+9yPy/xVmu3n/yDVy6Ybpob+14RZI1Jbao3AG5fK6PINljZ1ja/LQB+cPgVvwPjNCo0S2PvDxxQx8TkG7kbIz8xxc0OXwgeKT0PI0+BcC+dh9LoaCJFo3u+khbD35DOgBnnAIMi26DZjihIBW7/AiIK2rCdHZeZFOjWqg/yEvytqEFXg6iLQxqyClQC2hnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=47N8EM0spfJhiGaKx3jVraaalULx9+kIAtxJmMXmxxg=;
 b=B0G15EIeZXT/1Tauh5Sa22kNkciCy4NHPmuuq/vZ2NvD7E82MpoCuq3L32hY/A3tOzcdfcuGRlB/RR/ayqFASb9uvNLgHynF2WB+bZnX3Vtii7xSUDgcMCvzTUAeREGRKLEGKgKJdjFs5Ga/5YHYYBtONZKggJFn6fJdaKL18A50f7GHguUTUaJhM+4slLbyd9huiwZej7VUfNY36Ev5zkj7kSkrNn16YwAFeRQvrRRZl2OKwbYcH879KKZh4twNYnIdhXzTLJTQF6TPzKuYvo6ou59EBy69tpV1s48rHcoAIv7xNMXaj7mRO2qI/0aFUDHmsNR+m56pGbOxsvvRvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silicom-usa.com; dmarc=pass action=none
 header.from=silicom-usa.com; dkim=pass header.d=silicom-usa.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=SILICOMLTD.onmicrosoft.com; s=selector2-SILICOMLTD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=47N8EM0spfJhiGaKx3jVraaalULx9+kIAtxJmMXmxxg=;
 b=dLfmsy6iDW/jEMsdt+9ldVd9TYncL9hCjyvPlqPs+91/B92xj21OP30WANymUKwBwhmA9Z/iAc4Jd3x+059Gsd1X/X9RSjXOYiKJWXWs5V7HKwLI21Nez/rA50HY7G+4SFoS6il6Z4rQ8YJLFj9UwaUWGxOjaAgfgALim1NM1ME=
Received: from VI1PR0402MB3517.eurprd04.prod.outlook.com (2603:10a6:803:b::16)
 by VI1PR04MB4318.eurprd04.prod.outlook.com (2603:10a6:803:47::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Fri, 13 May
 2022 20:38:37 +0000
Received: from VI1PR0402MB3517.eurprd04.prod.outlook.com
 ([fe80::d92d:6b1:cc94:fe26]) by VI1PR0402MB3517.eurprd04.prod.outlook.com
 ([fe80::d92d:6b1:cc94:fe26%7]) with mapi id 15.20.5250.014; Fri, 13 May 2022
 20:38:37 +0000
From: Jeff Daly <jeffd@silicom-usa.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>, "Skajewski, PiotrX"
 <piotrx.skajewski@intel.com>
Thread-Topic: [PATCH v2 1/1] ixgbe: correct SDP0 check of SFP cage for X550
Thread-Index: AQHYWKbugTda+MigG0adrRulWMX2cq0blMSAgAG/bYA=
Date: Fri, 13 May 2022 20:38:37 +0000
Message-ID: <VI1PR0402MB3517DE4A2EFD5E3B0A377E0DEACA9@VI1PR0402MB3517.eurprd04.prod.outlook.com>
References: <20220420205130.23616-1-jeffd@silicom-usa.com>
 <20220425131758.4749-1-jeffd@silicom-usa.com>
 <fd59c0e8-7f84-a09a-f673-339919b4a056@intel.com>
In-Reply-To: <fd59c0e8-7f84-a09a-f673-339919b4a056@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silicom-usa.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ea62971-e925-4dd1-7663-08da35208eb9
x-ms-traffictypediagnostic: VI1PR04MB4318:EE_
x-microsoft-antispam-prvs: <VI1PR04MB43188493CA4130DF2CD3499CEACA9@VI1PR04MB4318.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /CQb6KlA0tOwUQTeACEedwAANmXTuhYZPgWjIjH+yBMSet7k4lU37tb81FzifhUtU2ry87D12+V9gYYoA1qzf2JM529/v06Cz+bYSoiHs36l0CK4MdeiE112H4FbWc2K1HBraFe4bGJBQyZUloTnc+n/xs8BEcVmqq3Yc7CxC11HIk2kdeCdr1TZgM8MKiZUAvTJ9bhndZaqftMYBYHFKK3D/hXxLDTH/frD2KUNmeMq6GHLJYTYKEi3C/Ez1Y31kGLLGK3I6nWegaE7rgpSrOT0Ha8BGtl6nY6ioVM00Xc9mzwl/JFxydJaOryxEZMz9RZW3We6lHfDy669i5odNsGh4G/5LwJf1Xy3Oz6coHpghyzyUcGXuF5oORjmb6fYS5KZIQVxVYx9S7cBVz78E5eNZ6FSTNo5biBsHu2c0i0PKAyWcc1PxQC2+DsS2FvYK0DAUKCaoIEqLPm8oArfkaAIsHqJfBS61uOhVpdIhtqJX2YK3mJE3nMrAuf/3kGMdVwObDIWkEkb3zCifuWH8q1xB8zVZnTHEW+taPXpB9asoFvPoycirRIeJezadIgXeptPdKpkZFBTj49+rP70LI101KKmagNvbiymcDXFAFjoxvIK1nr6bIIrLkCr5RUVF2Jk+0uejEdx/+9phbb5Ez2QWX8Niby1Q5IGlUUCf1l4/BZc54GSntYFiy1qloK/0Q6ppkZy432DjL7ckxNiYA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB3517.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(316002)(122000001)(38070700005)(9686003)(38100700002)(53546011)(33656002)(54906003)(110136005)(6506007)(7696005)(8676002)(66446008)(66476007)(4326008)(76116006)(64756008)(66556008)(66946007)(508600001)(2906002)(7416002)(71200400001)(5660300002)(83380400001)(186003)(86362001)(52536014)(55016003)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZzRsdDcvY2FqVzhyRVVER09BY3JFUTdUQnl1M1B1MWNLUVZpNkVNcFJMeGZk?=
 =?utf-8?B?b3pValhGTVNXSVZNeDNUTVpEZHhaN1NvUVNjaDVrVDZtOGlTOFBwNW9tME5i?=
 =?utf-8?B?VjFQNkJIRUtwTkJVRVBXeHlrWWFpMm54ek5qK294WmMydytVUUl1Y2FIaWRj?=
 =?utf-8?B?NC9PeWpRRFN5M2RSWmFoTjlYbnhaaWZCcS9lTjhVWm5DU1RQaUZoQ3hVSXBH?=
 =?utf-8?B?NEVzT2c3RkcxNk5JK2dOQzh5MnZHWDNJblladU5pSHNzVnVJYy9MQ3N4RWsz?=
 =?utf-8?B?L2JyNmdBMHJjZ2ZiVVl1YzZUQU5mRzMxWmhrSlE5bnljTEFaWTFhS0dFbGV1?=
 =?utf-8?B?T2NISW1WWS81QXFqNkdLQjVDdlI4SnZxZnlXdUU4RFdrUi9lNE9wQUN5QktG?=
 =?utf-8?B?Y0ErN0l4b3c5SS8yZUxjR1FkNWxGMko2RE9ka2tGY28zZTNMNjFZcWhnQkc0?=
 =?utf-8?B?VHZwd0lEN0FwUldVdVVRL2FzYm9QMHlZVWJwdkJ6b2w4UDJTNEsvVlhxQlBS?=
 =?utf-8?B?R2RlOC9pb3dFazdyK1JmT2xjV3lNZ0xNWjdkYVdxNWpPRUNJaFFabHNzcHJw?=
 =?utf-8?B?OVNIbk5oTWFMQW9HZ2hBMDFNZCsxNUliRk1LUXN1bDNZNExjYWNTUHF0TGRB?=
 =?utf-8?B?T2Q2V2VPSHFUNE5aSzZ1OWNpY1RrdmpPOWFZbGxoeVo5QnZYSkllYm51eFpB?=
 =?utf-8?B?UWtlMHdsamU0WlhNNklDZDg5cFp3VU1POWxYay95SkprUnhBK2JkaUdDblFu?=
 =?utf-8?B?bG1oa2ovMTJacmZLRWdPeWUvc1IvdGJMQnFwQnRiMUg4N3A3NzQzYXJJZXdB?=
 =?utf-8?B?QzNJMENPd2M2QXQ4cWY1SWFjeGprYWlPYUZSMWNHVnhMTVg3dVRoVUlyQmpz?=
 =?utf-8?B?Zm0xMXo0bGg5d1k5ZEp1bHJRNnJvbzFKRnBEV0EvbFNoU2xBUUd6YzhaZVhC?=
 =?utf-8?B?b0RVdE5nT2d5Y2x5QjdJb0JuQWlyekpyYThQSlFUWDlBb1Y5SzhPYVA3VHdi?=
 =?utf-8?B?cmNnU3MzSFNQS0dsd1F6OU1pYW1sQzV3YW95NWJDNUNhQzlmc2svT3lNM1Y1?=
 =?utf-8?B?cm9hWTZoQzVzbVBpNmxObTIwd2dLSU8rcGZ3L2ZINEJ3Q2doWnRITmkzc3d5?=
 =?utf-8?B?aXNXWGliNzZzOHBoSGtMYmFvNmQ3NWtIdkZSbVNvWDZCRXZ4R1FLT0JCVFds?=
 =?utf-8?B?cEk2NmplMEJWMFlBdXRxV2JLWXFhQVRDVWJxdFJjMUZ0bllHVWtHR3l0T0Vp?=
 =?utf-8?B?cWY3VnArdFIzeUVnUkdaOVgxdFFXeDZPUzRvbkRuUER1TVk1c2UxaFN4V1h1?=
 =?utf-8?B?Y09ka1JTQzVNZVAwSnZidzJPczkrUEVXenAzUHloVS9LWm9SQVAvamtQeCtr?=
 =?utf-8?B?MDlzYlIrTUVPaExoeExFS01nKzJaQXgvcW5zc0VMdlo1NmFGVzRrSmZiNDF6?=
 =?utf-8?B?TGcvbHRuWEtKbjVGUXllNUZVS3U3QWRUL2R4S21yejJNM2pKNVNUekdRSDZH?=
 =?utf-8?B?UmxXWldHYUQ4cFp5SFowWEROeU1nYVd4UEJrbW5zUXZRZmNyeUgzNzB5SFJz?=
 =?utf-8?B?d200aVV0MDlmY1k1bmwxYjJROWJmYVIxSTRDUkcxYW9NSFA5bDhjeDVEUmRX?=
 =?utf-8?B?NHp2d042aGpWV0R2Z2xXY21GK1lNam1qL0EyZmFYZUh5QVVDNGlOaGt3bFBj?=
 =?utf-8?B?MzA3em5XQ0d6b1JsVHFlL2ovV0JkYnJXbEtmN3ljWXV0akl2cjFYN1dlK1g4?=
 =?utf-8?B?NTFub3lNMXhOb29wZHpmU0hkRlZsZWJhVkRWL1lJU0pOYmVtbG9mUDh1L1lv?=
 =?utf-8?B?MFJoZy96SXI5RkpDMUx2aDNaRm5lYTVYMHgwWG50VHVTT2xzRFRZbURHVGZu?=
 =?utf-8?B?WGFCNnlWQThxYVIydFRrejZrNURWN1hXSTYydFR4ZGF2UU1rMnFCSWhleHBn?=
 =?utf-8?B?L2ZreEpxOG02dFVKcnVQcGFwWmdyOEZMUUFBYXFuWS9DUjRiT1pyQ3VKbUg3?=
 =?utf-8?B?ay9DV3JhaGVLdjQ5UGh5NGVxVGRBcjMySVNka1d1UVpFWmE1ekR4cmlFNmdS?=
 =?utf-8?B?OFdkblJGVFNwOEhTQm5DZFAwSkQ5SXNqRDNUWlRLbW9hcFFBQng4djZlcGdQ?=
 =?utf-8?B?ZVFXTHhRNzRzb2k1YUlqWjEwcXhrUnBkYzJxTmV1Qk1ZRmdDNnNnR0FoaVE5?=
 =?utf-8?B?bVJWTXZ5V3RLOHNVeDB2K0x0NkZGMVp1YysvSnJpbWdpZDZnQjcyQ2doeFlK?=
 =?utf-8?B?cEd3ZXJOZlUwTVF4dnZwQlhieFZHcVVoL2dQMnhFRFMzbnRVempMKzlZT0li?=
 =?utf-8?B?MVNpNVFmMElEVm80Z3hXM1NDaUx2RjVzN2sxWDZGWUNQOEVMbXl2YmxyeGc1?=
 =?utf-8?Q?w8PXoCPGObqB9YXy6iMR/TgOQqlQtnk2mDN/+SwzKY/gZ?=
x-ms-exchange-antispam-messagedata-1: hSoDHTPSTJXhqA==
MIME-Version: 1.0
X-OriginatorOrg: silicom-usa.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0402MB3517.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ea62971-e925-4dd1-7663-08da35208eb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2022 20:38:37.5622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c9e326d8-ce47-4930-8612-cc99d3c87ad1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SQ1VvZzOPSirkYecR2gzSoEoGzqoORGBbUMpPCyz3L6PJqlG65iu71jS0a2aiMyYVeDQhs8bGUj/T6ko3z0i/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4318
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] ixgbe: correct SDP0 check of
 SFP cage for X550
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
Cc: Stephen Douthit <stephend@silicom-usa.com>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Tony Nguyen <anthony.l.nguyen@intel.com>
> Sent: Thursday, May 12, 2022 1:09 PM
> To: Jeff Daly <jeffd@silicom-usa.com>; intel-wired-lan@osuosl.org; Skajewski,
> PiotrX <piotrx.skajewski@intel.com>
> Cc: Stephen Douthit <stephend@silicom-usa.com>; Jesse Brandeburg
> <jesse.brandeburg@intel.com>; David S. Miller <davem@davemloft.net>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Jeff
> Kirsher <jeffrey.t.kirsher@intel.com>; Don Skidmore
> <donald.c.skidmore@intel.com>; moderated list:INTEL ETHERNET DRIVERS
> <intel-wired-lan@lists.osuosl.org>; open list:NETWORKING DRIVERS
> <netdev@vger.kernel.org>; open list <linux-kernel@vger.kernel.org>
> Subject: Re: [PATCH v2 1/1] ixgbe: correct SDP0 check of SFP cage for X550
> 
> Caution: This is an external email. Please take care when clicking links or
> opening attachments.
> 
> 
> On 4/25/2022 6:17 AM, Jeff Daly wrote:
> > SDP0 for X550 NICs is active low to indicate the presence of an SFP in
> > the cage (MOD_ABS#).  Invert the results of the logical AND to set
> > sfp_cage_full variable correctly.
> 
> Hi Jeff,
> 
> Adding our developer and adding his response here:
> 
> "
> Our analysis (using 0x15c4) showed that every time the cage is empty SDP
> indicates 0 and when cage is full it indicates 1. No matter what transceiver we
> used, from those we have. The same happens even we don't use the device
> which fall into crosstalk fix e.g 0x15c2.
> 
> When proposed patch was applied, the devices are no longer able to negotiate
> speed. So basically this patch should not be accepted.
> 
> NACK
> 
> BR,
> Piotr
> "

Here's the issue:  the pin definition of SDP MOD_ABS is that the signal will be a '1'
from the cage when the module is absent.  it's up to the platform to invert the signal
if it's intended to be used as an interrupt input since the SDPx interrupt detection
is only rising edge.  you can see this implementation on pg 107 of Intel document
331520-05 (rev 3.4) as figure 3-11.  while the document is for the 82599, it clearly 
shows that SDP2 (as in the code below) is used for MOD_ABS indication, vs in the
X550 platform implementation where it appears to (always?) be SDP0.  But, since
it's a platform-supplied inverter that turns the MOD_ABS signal from an active high
to active low (and therefore is read by the code as a and active high 'MODULE PRESENT'
signal), there should be an option to change the polarity of the signal to indicate
presence or absence.  I submitted a different patch for the TX_DISABLE configuration
for platforms that don't use SDP3 for TX_DISABLE and it was nack'd because there
were no more module params allowed (which is ideally what this patch would also be).

So, it doesn't appear to be specifically required for the platform to implement the 
signal with an inverter, shouldn't there be a configuration option that makes this
opposite polarity depending on the platform?

> 
> > Fixes: aac9e053f104 ("ixgbe: cleanup crosstalk fix")
> > Suggested-by: Stephen Douthit <stephend@silicom-usa.com>
> > Signed-off-by: Jeff Daly <jeffd@silicom-usa.com>
> > ---
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_common.c | 10 +++++-----
> >   1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> > b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> > index 4c26c4b92f07..13482d4e24e2 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> > @@ -3299,17 +3299,17 @@ s32 ixgbe_check_mac_link_generic(struct
> ixgbe_hw *hw, ixgbe_link_speed *speed,
> >        * the SFP+ cage is full.
> >        */
> >       if (ixgbe_need_crosstalk_fix(hw)) {
> > -             u32 sfp_cage_full;
> > +             bool sfp_cage_full;
> >
> >               switch (hw->mac.type) {
> >               case ixgbe_mac_82599EB:
> > -                     sfp_cage_full = IXGBE_READ_REG(hw, IXGBE_ESDP) &
> > -                                     IXGBE_ESDP_SDP2;
> > +                     sfp_cage_full = !!(IXGBE_READ_REG(hw, IXGBE_ESDP) &
> > +                                        IXGBE_ESDP_SDP2);
> >                       break;
> >               case ixgbe_mac_X550EM_x:
> >               case ixgbe_mac_x550em_a:
> > -                     sfp_cage_full = IXGBE_READ_REG(hw, IXGBE_ESDP) &
> > -                                     IXGBE_ESDP_SDP0;
> > +                     sfp_cage_full = !(IXGBE_READ_REG(hw, IXGBE_ESDP) &
> > +                                       IXGBE_ESDP_SDP0);
> >                       break;
> >               default:
> >                       /* sanity check - No SFP+ devices here */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
