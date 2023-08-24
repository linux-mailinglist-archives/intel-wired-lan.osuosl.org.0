Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F977873BE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 17:10:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07C9E8329E;
	Thu, 24 Aug 2023 15:10:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07C9E8329E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692889837;
	bh=vEw7pSyzuYtv0LvCewgjHpZ0pzS09nNqOAv7Pe4e3A4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LdaxKhbhXOXjsxmswfh47pGzZ7yALLvV35E/WmI8bqza9dDwcxe3s+PhYEBZJDXfs
	 PmBcinOJVMTkPVVgP9s7rwbxSSbrGUBHhrGYpditTn6tejSjmDWv5WRe/b8GZvw63E
	 Jo9btyE+g7r5vPNOYseaZ67a87qAh5Enh0Kko/cPpNHidMvfeo4facHZcQTS1A8jrl
	 1pT030uxzd53hrVQP91qy7IgD1GQAZbH/WQjUMxTj8N1I21/7S9UO1PjeUEbvAXETR
	 8V21Fr8F3HafPbD7scS1E0PBzsxhHPiFPzdmp9XyuWvUHjqGVmX+8xWN6IOO3avUU8
	 bdEeWHWRbzlwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oCUMg-IaCiPX; Thu, 24 Aug 2023 15:10:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBB3181AA7;
	Thu, 24 Aug 2023 15:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBB3181AA7
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 409C81BF350
 for <intel-wired-lan@osuosl.org>; Thu, 24 Aug 2023 13:25:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F12A7401DB
 for <intel-wired-lan@osuosl.org>; Thu, 24 Aug 2023 13:25:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F12A7401DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id md-UbUHi7cer for <intel-wired-lan@osuosl.org>;
 Thu, 24 Aug 2023 13:25:39 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
 (mail-am0eur02on2059.outbound.protection.outlook.com [40.107.247.59])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D178440192
 for <intel-wired-lan@osuosl.org>; Thu, 24 Aug 2023 13:25:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D178440192
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WZmHbJfGTeiqJEizCgUDKUOVAMioF/RiiWxvgoUY6v6+beiydELAIAB5Q8AWpVnQfUyxoNgIXLVJ0WqICzkP4zIn8gTIbzTCER5sxzHVboxPdU8iXs8NUotGyVsS2OGx4E4/pTfXfBLFEEanwNt2N2nZfqBipw3wWnswrkMFyVJCG1jkRBs+9DIfTCvMxBW3B44J/WTm+y7VS+cEWJNAcPaNeaV+zLUCOZ2GNq8dle8Og7M+JBvTo/lhDEyXJ2wUpSpUQ+qtfsU/2K7yn6jd/5Jvp7e8UbT5ajaHfDBTZCWnK4ElRMXfG4nYXAS8HvrPdvz7oxDejQXHwMi0ns7dQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xLtyMOZUCBTGQCTOS4WbYwNBAmf6ompyux4r+R2LCOM=;
 b=cyMtWn/swtCf/heEeiTe20HzUs/ah1RQJ7xxjOxP3QpttbDcp8UXTIENtijm9EIJzxQAK4345FEtieG9qboAg/K4gaUmgqgmhNhaCyX9sa7QvxEg1+krS2TR1sLJtIs5o2zdqZLS4O0aeqbo0ofu01EFi0S9gbUiNRGfAJJAnU3pcS/FS5yBwShrbUIWsepFHWjWTJkm2iKTlxX9YhKp1zat8U8DaGBVf7FIYZgtGXv1PXKT7VrGpyKyU1JyKjEXhbD41DidkebSZ6kYmOE05rH37/PRDBmnqp+d8KmGkiZC6+4TWPfyB9hR07PR1fjadoX38QpN9GFnv6dawneYTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
Received: from AM6PR07MB4070.eurprd07.prod.outlook.com (2603:10a6:209:35::24)
 by PA4PR07MB7374.eurprd07.prod.outlook.com (2603:10a6:102:b9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 13:25:36 +0000
Received: from AM6PR07MB4070.eurprd07.prod.outlook.com
 ([fe80::4100:841c:d853:e6c1]) by AM6PR07MB4070.eurprd07.prod.outlook.com
 ([fe80::4100:841c:d853:e6c1%7]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 13:25:35 +0000
From: Ferenc Fejes <ferenc.fejes@ericsson.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: igc: link up and XDP program init fails (BUG?)
Thread-Index: AQHZ1o52OY9R3An1tk68KVE24156ow==
Date: Thu, 24 Aug 2023 13:25:34 +0000
Message-ID: <48d7cfe04f87669ee9acef5e053d4e7f68a69a20.camel@ericsson.com>
Accept-Language: hu-HU, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR07MB4070:EE_|PA4PR07MB7374:EE_
x-ms-office365-filtering-correlation-id: a56dea29-5f85-47de-407b-08dba4a59935
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C4qZ3JaZWY3chPO6ZHLCMw0WAQ51YapAmspGBzoDeKY3NTk0kO8Bzfl7TYrrw3AQsUnTfialEt/T43npySxQU1RwEuefG0mriDFG9TCvSxykvGLUk39fmcn8UFyd2pvbYh1iOruD8oNknKmU4qanMrszIsog2+ZBXNSZdRGIXB+lfaIYY1Lj905C/1pZCqPss+MN3WWlbuMn1UOjMVTaeVV3L/F2uRW+GqMe832v1S7esBCVhwW/F6UYulk/WWMlIFuCNCHDRFqJupN1uuBy8XNRuOJ4Z+waCl3W36eZrrOUdLYjNnrSqRM9oSkzjVZxkjSOxGOmeRd6I+28qT4yTlOHtc4K0RVPdLsJQGHXV0Dc1CzHNbYA2Dn0AShV8DxG3ml0KbA+5RW+AR+CTjY+fZg/ZJALZ0xpy7JdfpxgfdrZrRke3EDFDJFHptGD5MJwi4xoumG6qF+kLDHi57LRWCY6aU2ABnfEC+3s5iqhm7YD6G6TraR8U3Pw+L7ivHugOi/2AC5HNTB/ZT9TYFErCH1dITFJjGALojbPhZnA+yrUtB4X6FNx/JRsKUPxGe1152qM4CznX/GsXnRdhfHxLhFexTywiq5cFtuhHfxfYLtezPyX/TIuZ07bp6tVYiI/Gy0V09VESLnFIvjKQame8Ca/68R/4V+ugrlaZ8aqI1jIwZ+LhF96fJ/xu8+wxY3asmaJRzxG3tIeasGnjdFlCg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR07MB4070.eurprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(376002)(366004)(346002)(186009)(1800799009)(451199024)(2616005)(5660300002)(4326008)(8676002)(8936002)(36756003)(2906002)(83380400001)(44832011)(26005)(71200400001)(38070700005)(38100700002)(82960400001)(122000001)(66476007)(76116006)(66946007)(66556008)(64756008)(66446008)(316002)(6916009)(91956017)(478600001)(12101799020)(41300700001)(6506007)(6512007)(86362001)(6486002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?di9TUTViM2hyM2ozWkdtblpuL3FvMXB2MEJqRW5nV3d5eFlUSEFLRU1rSFBQ?=
 =?utf-8?B?MHlKN1ZnRWdZSlhzV216VkdyaCtIclBwQ0IrYk9xNlVqSW8ybjlqVXp1cTUy?=
 =?utf-8?B?bThzTnZZOGlJMFcyKzVGdlEvTk1McnF6c3lXdk5xaE53QTEwalRoaldMM2M2?=
 =?utf-8?B?Vmxydy80bVRDQmNlYmFLeDVhbVVKUUlqYy9QeFBFR2FpbW1TRnByUjg1ZHIr?=
 =?utf-8?B?WC8rNkJkcFRweXVzeERpN0kzWmFoSjliTXhHRHNkSG4vN2RNMnJxajJZT1l3?=
 =?utf-8?B?Y1dXNnBkUDhzUHp0N3JCcnRRaXpWR2JJNS9reEJERTc1YXpRZ21CMGh4RVNa?=
 =?utf-8?B?ZG1wRU9iZXBDc3czZ29XVEJJdWl3emUzbHpnaURFK0p4TC9QZ1dWMFVaejQ3?=
 =?utf-8?B?THQ1N1F1enVMelVURG5JZk5SNER3emdGR3NyNHZGRWFPcXVNM2ovZnZsSGEx?=
 =?utf-8?B?M0s4eGQ5azk4QUw1VFBQK3lDWkdhOXVtZmRmSVpiOG1qWXNjWjdtN0F3TWY2?=
 =?utf-8?B?YkFNeWlvNWFOUXRaMEF4THV6WlJBWUhERFhobnBzTGsrUkJBdTR2ZEZ5SnBR?=
 =?utf-8?B?VnpIckJtWGRDS3A3dm5DdnZmcGUzdDBsVGwzUjh3dElSenU0STRSdGhtUVBI?=
 =?utf-8?B?YVZaSHpDQndWRmhsakI0N1Q0L0thWGFjYkR6ald6ZThwaHBTaTI2b2tZVjRu?=
 =?utf-8?B?dmt2WHVkRTdpQWM5K1JvNVBFYmxYR0VYOEkxM3VxYll1VWFyZXZuUU5lMjJP?=
 =?utf-8?B?R05xY3Rxd05abmZ3YzhuV1NQNWxXN2dHRzUxakVyRWdDVkoxOW5zV2I2SzNl?=
 =?utf-8?B?czA2NS9QbGdYUEp5SzRsZFlkbUFoZ3JpbFBoVFdKQlFQcSs1QlhvTlBBS0Y4?=
 =?utf-8?B?NDZ5QkFIVmt5YzZIM1dqOGlSeVZNdFIybGZpSjM5MTdQRDQvTzRkbkdQMEpH?=
 =?utf-8?B?elVaRklJSXFkWTRucHJKaUlpVmRSY2RvdDB2ZXNwcFNWOFQ5WnI2elhFaWEy?=
 =?utf-8?B?RnpKZEhVS1loei81S2JyM2xnNVRDaklNTWl5dHc3RDFzb0NGSXQxdXo4QmRK?=
 =?utf-8?B?MGY4SWlNNXN1am1MTEJQeGdGMWpBR29Da29BM0NqWlhxaXM5K05tT3FTL1d4?=
 =?utf-8?B?TjBiMy96cUdJWmZaZjVtZXNtU3BCa1dETUVVTlA2MXhNWnlYK0IwaUZCeXJF?=
 =?utf-8?B?Q2tkeTNNN216dnVCdWNHOGVaNnhacW9pcWF4QTI2YU9rTFhCU3NLYitiWG9H?=
 =?utf-8?B?WTBNS1dLWnU1djViWC9xV2k2c09yL2ZINDBuMW9OZ3hQWE1kZG9TdEdwWVdS?=
 =?utf-8?B?SFczOVN0UFR5eTRTb0ttN0Y0YkNwY0N4allSeWFzSFh0dFBhV2dzaC9pYUFv?=
 =?utf-8?B?dkFtbkQ0SFBlN3RDVThqN1hObVBob2FLckFWNFRDalRrb05DaTVtaEdQbXBJ?=
 =?utf-8?B?Snk1MVQxL0kxc3hHWFRra2NXdG5Kdi95SWthdEQvcUd6OUJxTHh1ZENQZVkv?=
 =?utf-8?B?b0lQRjFLTG13dlcvL040aUpnNmlhWDRtL2dDL3gyWGdzOUpidTFkWVJpNzRF?=
 =?utf-8?B?OXdTN0RFTVRzUVZrTkRTT1NMZEhLT09ZQ3QwNk55T3ZrVG9Nc1JQaHNxQ0Rm?=
 =?utf-8?B?T3BOVDVYcGk2MzlYc1R5dWNMRlpTNTRkQzlOOGJkaFNHbFVhSWFPb05EVzkw?=
 =?utf-8?B?M0FFYWNjRkJwNGNpb245TUg4dG1pTlVJc0tab2s1RE1OcHZSWjdrM2ljWk5j?=
 =?utf-8?B?RzFNZitqaXJDU1VOSXFWejFSMDl4VldoQS9JcWlqcWtXNXJaUlNzbFBIREto?=
 =?utf-8?B?dG14YS9BOE5uWDJ2cFMxTEl4dEpOcjJwM3VMbHN1ZGJXRlNqMWdGWjMwSWEy?=
 =?utf-8?B?VU9rajlYR2d6d3NOM1daYVFlNncrcTNHTGh3STNsSTRzYXZZOVEyaThrREcz?=
 =?utf-8?B?UjJ0RXdWeUdsc1dZdGRTOTdrS2FMOXBpU1hGYktVTVE1emR3S2U4NDZiZWxN?=
 =?utf-8?B?QzdVOVh0OFIzclFYYW9sVXQwdForYnlZOXZ0akdhNmtsR2IxS2hmOFNxc2Z0?=
 =?utf-8?B?amxUU3RPMXZTNHhDNEJDYWJPcTNXV1BNR1dTbGlGbTdRdkNsTkJCcnhLNUd6?=
 =?utf-8?B?Y1RRbHp0eFh0V3FpYWJ4Ti9ET3NvSXhQdklMMVd2REF1V21pY1dzRVJrSXcz?=
 =?utf-8?B?QWc9PQ==?=
Content-ID: <7EA91E6B7818014CB392B1027A9E2BA6@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR07MB4070.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a56dea29-5f85-47de-407b-08dba4a59935
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 13:25:34.9617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zdsvrqm7znPgnOPcdVE4q7GXoFNb6VMiz0k0VSMHisltASOe89dtnJupxd5T2ZHfic/KAsSWFkQzZ6BWEOki48JW5laWjW/QbrIzjQ610u4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR07MB7374
X-Mailman-Approved-At: Thu, 24 Aug 2023 15:10:20 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ericsson.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xLtyMOZUCBTGQCTOS4WbYwNBAmf6ompyux4r+R2LCOM=;
 b=LAKWT1uJWEwfnkpmY3UVnyTekXTeXGvlug8l+KmPEMPnW4I+7Nbqi58RwZYwKxXlnXiC2uLD6kU7MxJhwzOLYH5bi6on24gWiPozhbDmb0KeYvBIoh/GpQDXupiliH4lo0hMSNFgaLoza9YYe27qUMuagH43uq6FWnDwSjoG09Q=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=ericsson.com header.i=@ericsson.com header.a=rsa-sha256
 header.s=selector1 header.b=LAKWT1uJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ericsson.com;
Subject: [Intel-wired-lan] igc: link up and XDP program init fails (BUG?)
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
Cc: "hawk@kernel.org" <hawk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi!

I noticed that ip link set dev up fails with igc (Intel i225) driver
when XDP program is attached to it. More precisely, only when we have
incoming traffic and the incoming packet rate is too fast (like 100
packets per-sec).

I don't have a very smart reproducer, so 4 i225 cards are needed to
trigger it. My setup (enp3s0 and enp4s0 directly connected with a
cable, similarly enp6s0 and enp7s0).

veth0 ----> veth1 --redir---> enp3s0 ~~~~~~~ enp4s0
			  |
                          +-> enp6s0 ~~~~~~~ enp7s0

ip link add dev type veth
ip nei change 1.2.3.4 lladdr aa:aa:aa:aa:aa:aa dev veth0
xdp-bench redirect-multi veth1 enp3s0 enp6s0	#in terminal 1
xdpdump -i enp4s0				#in terminal 2
ping -I veth0 1.2.3.4 -i 0.5 #slow packet rate  #in terminal 3

Now in a separate terminal do a "ip link set dev enp4s0 down" and "ip
link set dev enp4s0 up". After a while, xdpdump will see the incoming
packets.

Now in terminal 3, change the ping to a faster rate:
ping -I veth0 1.2.3.4 -i 0.01

And do the ip link down/up again. In my setup, I no longer see incoming
packets. With bpftrace I see the driver keep trying to initialize
itself in an endless loop.

Now stop the ping, wait about 4-5 seconds, and start the ping again.
This is enough time for the driver to initialize properly, and packets
are visible in xdpdump again.

If anyone has an idea what is wrong with my setup I would be happy to
hear it, and I can help with testing fixes if this is indeed a bug.
I have replicated the setup with veths and it looks fine.

Thanks in advance!

Best,
Ferenc
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
