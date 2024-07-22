Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C24C938B29
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 10:26:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 774C24029A;
	Mon, 22 Jul 2024 08:26:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ysVdFBdBjea; Mon, 22 Jul 2024 08:26:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48C8A40256
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721636760;
	bh=Y71VKafGctelsd0XLJpasQNfYyj3DBc16kxr8EVIfrs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RMjCP3trFqF3thoDHxQFqWa04d/TRKlplulcJGxWEWHd32QpFbu3ujEnQnySu8eUQ
	 KZJKDOIhb1QnPmhT42/iar8nruarTfWH+0bCOveuwxyz+jCJXdPOCmnCkbbn5bp6SF
	 BaM/kHf1x1qY5iUdVsAALw1IAEHOKahcqIRV0RabcX4hcx4d8fTTqGg8jESBHcCZwy
	 Y0karKoJzwarswUG1tDURpDyRZQeCmN1b6njfzborZmzUHPiCCEFfAZDZaZpuojPbY
	 dKGQI3N+nb/++NJXGJi/nPpn8cipdtHlp9BA7dU41kVtcxP6O+EXKy6iEkP/PYn+AJ
	 6evcDB4rONvRg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48C8A40256;
	Mon, 22 Jul 2024 08:26:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B82A91BF291
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 08:25:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A54C480B59
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 08:25:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t_3j7c9A-4-j for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 08:25:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.161.124;
 helo=pr0p264cu014.outbound.protection.outlook.com;
 envelope-from=rodrigo.cadore@l-acoustics.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 561C080B51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 561C080B51
Received: from PR0P264CU014.outbound.protection.outlook.com
 (mail-francecentralazon11022124.outbound.protection.outlook.com
 [40.107.161.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 561C080B51
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 08:25:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TcjeeAGRV0tM6o2AN29vdx3JMg5ZsYM8QM9Ci9rEb0WHCnJpQIMj7s4Ogkal+zUHJrJ4++r4HITLJdnJBK866J+2eUj/nKDHzOBl/aMop2+Du/k2H8aezfA3E9z9Iy8a/BXvxF0wO1O0Vx37TOzKuwU2HxnGs5NFjQA7znTxPENOvOcLc9AqeDG72Aq29k+MHhOIg4gDRBuPYuek69AoorScx0c4L8etALpe8S66R1y7WrFzmNpxyBw/RjHS8vNMgqHdasNntR4lHY+8YqyFxkASCEevuzR7ifv1+mQPOw4jlyExz9hr5IM/YHeYJvVk6TBFVkWkKiobmQe4FWsFXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y71VKafGctelsd0XLJpasQNfYyj3DBc16kxr8EVIfrs=;
 b=xx8X86dJVupwTEmNMuu9nwhrsFeDqOrHsutrT/q9KKtpJ6tfAx8PbS9Jr9wh2A8v4aGWo/8iJ40cjuVkF2ChAxSZLjtKUkcrTZfo7PJ94GE9bnD1xiuRKfoT7TNmUwsPu/W8IBKlyy2SwPupAw6AfMZplZA0Su2ziyvuCGMxdXFDbwO7fzpyU7U9jtcbP8MYYHgQjjPJSjN0imNj67M62cgUNLcMozfhN9YAft6GuubDL6meVXHP1ZQqSp7Ul2BRGbBFS6qkuDsugCMDDET9/B3ZpMJoIXCgGdeHi4k0faBE+zn0U6LulEjB5p4dA8AOqh2nzj7Ym91vit9Lya8R+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=l-acoustics.com; dmarc=pass action=none
 header.from=l-acoustics.com; dkim=pass header.d=l-acoustics.com; arc=none
Received: from PR0P264MB4464.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:25d::9)
 by MR0P264MB4890.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:4e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Mon, 22 Jul
 2024 08:25:51 +0000
Received: from PR0P264MB4464.FRAP264.PROD.OUTLOOK.COM
 ([fe80::8062:2bfa:50b2:8368]) by PR0P264MB4464.FRAP264.PROD.OUTLOOK.COM
 ([fe80::8062:2bfa:50b2:8368%5]) with mapi id 15.20.7784.017; Mon, 22 Jul 2024
 08:25:51 +0000
From: Rodrigo CADORE CATALDO <rodrigo.cadore@l-acoustics.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, "Abdul Rahim, Faizal"
 <faizal.abdul.rahim@linux.intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Simon
 Horman <horms@kernel.org>, Richard Cochran <richardcochran@gmail.com>, Paul
 Menzel <pmenzel@molgen.mpg.de>, Sasha Neftin <sasha.neftin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 2/3] igc: Fix reset adapter
 logics when tx mode change
Thread-Index: AQHa0yMzVmPogmS4tkOu4N6MFlYsB7HxasMAgABqGoCACLNUAIAA+8EAgAbwiXA=
Date: Mon, 22 Jul 2024 08:25:51 +0000
Message-ID: <PR0P264MB446411F81A817554D03922B2C8A82@PR0P264MB4464.FRAP264.PROD.OUTLOOK.COM>
References: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
 <20240707125318.3425097-3-faizal.abdul.rahim@linux.intel.com>
 <87o774u807.fsf@intel.com>
 <6bb1ba4a-41ba-4bc1-9c4b-abfb27944891@linux.intel.com>
 <87le27ssu4.fsf@intel.com>
 <2c5a0dcf-f9b0-49da-9dea-0a276fa4a0d9@linux.intel.com>
 <87msmf3cdd.fsf@intel.com>
In-Reply-To: <87msmf3cdd.fsf@intel.com>
Accept-Language: en-US, fr-FR
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-lsi-version: 1.0
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR0P264MB4464:EE_|MR0P264MB4890:EE_
x-ms-office365-filtering-correlation-id: 4ef00e93-ce8a-4c11-1bd8-08dcaa27e5b5
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|921020|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?GlGZMDOYDYf6iBhHk7YkU4m6JTQH2QbFpCUhCNADG419Zjenl+LsMVzEskx3?=
 =?us-ascii?Q?Oi0a1IJ0fFjVG9EsuXt2Pm2M6HRwvwTHEzNpAGBBT7ZQIhuxI0RFsaLvhI87?=
 =?us-ascii?Q?X7jLsEA9oPlW14HaMdtawBpYTjbJkYY8s75sz+cCpEp9xXL7rIsAGhHHvMML?=
 =?us-ascii?Q?FBWI9gzFnvI5XC2nWEwET1z/dzJFmDOVIvVipyBfYtmgMpixucxJfKf/vlC4?=
 =?us-ascii?Q?SF20UY9rBjeDNCldUxG+50LiAF7uugU6kO7ebQaXLn7lyxtlK/0R6GdtT6L/?=
 =?us-ascii?Q?Qa1EfCpChcQRwd74LNULuFQI2nVi4ohvVzaL4h8DwgnlaB75vLQJySY9r6EB?=
 =?us-ascii?Q?9x4qxc8cEcMJLzYH/54z8rC94dDT6Bpc9XBtMUn3SnIFUC1l/6smo+M2WnD6?=
 =?us-ascii?Q?52EaRwRT0nOuaRwJMjnQkYuhEcuYI77R542GXm9r4/+G44FSOTJ1z9G0MHml?=
 =?us-ascii?Q?OETXmcL4vMcGxuuooSoiXKfoaQAXHAEJqYrScwOV9f/SgByCpaw4j6Qy1DtV?=
 =?us-ascii?Q?n8iM8RVeVeTFtu30ZUgmAdmvTtxthLZ2usVgvp9CdThzIWFBbQkGZ+vPOpmG?=
 =?us-ascii?Q?migWDJ0AxhGBPsYoRiWAUwjrgBSlzmwk9luJvtvrcAsdqGeJkvIXw9AqPwh5?=
 =?us-ascii?Q?NGly12NzoJK0pibc0Y2bPhqpUOYVObf7z9fHRSlVR+vdJo1vUoVAzB/sxiEh?=
 =?us-ascii?Q?8d0Vnw9LpI/yjKQdsQ8QKejd7o2H50b0s4CPvwBb6BoaGwyVgVdYVl2qWSEB?=
 =?us-ascii?Q?UPqSrw1rNfA89LFFZaPlAvjEalPt7TBlzyi7YCqz0tVpMjWGXyPUC+cEdlJG?=
 =?us-ascii?Q?BbvaEprvWrsIcPqxDrhvHuBJSG7/0HDyIpP10YsjnP0Cl2k1JNEsqBLYrU2K?=
 =?us-ascii?Q?VnsQCQ7GOTahSV5EsP0ZIZZtvsjcORuuLsvuSYm6IQoATM5Ac79IwTYOjkiv?=
 =?us-ascii?Q?TPh/K4alGbE/WE0j4wCWshPYgSfARyvUNrTt2xGbGQ7IHk4Cougalg9/n3Ex?=
 =?us-ascii?Q?igrvDYZ7nM3cLswmg4zR/KQgQNpRLm/FospaqUgW7xKAKv8aqP2kOcy4ujj0?=
 =?us-ascii?Q?KaasNoBshNVDEczGhX1ms2tPUWaYLR4/SqHAZpiTDezZp2VElUzue5etDqFB?=
 =?us-ascii?Q?y9Oz6OlGVaelKqzLsacUiPS8udB9/+6MyI6cdOuBPq1eZzQad5TNB6BenmSk?=
 =?us-ascii?Q?fFZsmr08vc+PlyBycBIxANisQ0fy6xJf2Bz19BhAW8eyqoRYbHG8hOdIR/26?=
 =?us-ascii?Q?a5M8rOyW+GgFKGIx4ZK1X5DJIzIGZDybHR6UX01mV9kAV/q7n8aaN3QhgFdW?=
 =?us-ascii?Q?d2h7GKzIM1f4uA2t7chCGDIeg+EoMIntJwJTLjhxmM1lHvSQw0FMBPkwisHn?=
 =?us-ascii?Q?Y64rObqbbTzAku5/gC407mMeZroY87+NuSosDcZqVZnkCEANAf2GzFeyCaGP?=
 =?us-ascii?Q?FCyAe+eUHRk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PR0P264MB4464.FRAP264.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(921020)(38070700018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XgoI6BImgSJtF91URHkg2WwDXZR91AJIhh/4+8naGjUuKVHKQcWWfb9/YCLO?=
 =?us-ascii?Q?dCbiAoBA6D4SoWWdC7cgd0ysWFMOJUZuUvwvQk0vwnFyURx4UpsP2oTTJCNh?=
 =?us-ascii?Q?zV8ZlkGklAi4XjLE9zANV1XDxTRcCIyyGMZqheyuNhPwRaDnFwKq1V7zcvub?=
 =?us-ascii?Q?j4kkfj7AtqEQlFVlt/TO6GabPKlDSz0AEKdhTvCNUJ0UYkl/Hoj2TmjYnwqb?=
 =?us-ascii?Q?xZ1/eyqOizs+eZbD2uDweNV47e/bBzBydJPgiHgVD6ZRTfF5pIZqMhsuDm7s?=
 =?us-ascii?Q?feFwSdXB+QYJf7VRLVn9IoKcQ9VP9qndH9bsYMb5zuhGO01bZaJCgV4/y2fX?=
 =?us-ascii?Q?TptOU0l49r0SFhpcwnL1NnB+REGicCzOxXnNAyrLHGJqO/lGmYuHbokC9hyN?=
 =?us-ascii?Q?ukDWfnsplAMjSluOKvPOfqmYcOYmSLfGFQCpdcvAEYfK6mC4TwJMQ1It8ABR?=
 =?us-ascii?Q?lzPQYqFjm5empFjOz9UYy7ZVVVjV1Bx6oQNm5UCD9Q0yN754CLz0KiCK39Dk?=
 =?us-ascii?Q?IDmiuaKKkTDny+u3glnNX8nHfg+xZYg+sxUXrUGEZmd4nVod+Hq3CBNX17Lw?=
 =?us-ascii?Q?zst4zLSxQ29dIVFf6zuHE28IvJAyZmTJq+EfZoask3n8i0OVHlwArBLU/SCY?=
 =?us-ascii?Q?H2FzLAx/xKvxeoADnvdNEc/WCS9SCGVAUihcvuGpSvGd+fR59ON5x8ksD3ae?=
 =?us-ascii?Q?iCNlb+0Logf1aMlTc8Y7TKI9178l4DNvjNPEb858eQrfXfDQ+Ac8fTTOYXfZ?=
 =?us-ascii?Q?zgO+eaxUjoIisOqUj4vNd3OhI3HXDQFDyog9WIlOTXoSOUhunIFCSjFjQsTo?=
 =?us-ascii?Q?lswNqo67Ig5jJ40cUuXe2RNh1A7pOnkmXJ78JK016iUZ8tfo92Aqfd0Kf3Vu?=
 =?us-ascii?Q?5vEnSIjqjy9zs28IBeMazMUJOFT6LM7aUMEBEJpYP7pRRHBvSXTWFMmDwYwZ?=
 =?us-ascii?Q?JCIG9oP0Rsr2RXsNwW83ZVoUONqOjpr1hB0ckBTNvmeVP3d36wmFOF/3iS93?=
 =?us-ascii?Q?fWLsRKzmyHw55tlTDOV7teS68c28HwXmR4htfUjBinHgCb8hovu4buCmhtlj?=
 =?us-ascii?Q?+eiLzNF1LJSYIlWoug2cVBZ/wGCJGvkh+1OXOfut+CtF1nJZ1PsJEverR6va?=
 =?us-ascii?Q?Mw0RuDgaOXkgTFA5uuXUN549Gj4mEFy+MuZEOjB/kjM5CgsZ40tHvJE/eE3m?=
 =?us-ascii?Q?rjo+y6vjiwdTiwD5XYMUaWSSfGEFT+Yb+3htzOurWDQDt2sLPZIfUzeWQ1yh?=
 =?us-ascii?Q?H1S2nE4kdomSW6dJb9HI6HDmjdmOgq7r2buzCJZQtbYRZYGeAvk2cuPWFR7K?=
 =?us-ascii?Q?/mXonrp6x1306zLXFMtt+cr+iEmwSleSjGn0BdBNEFJwh8IMeIzzKgI78Wpk?=
 =?us-ascii?Q?JWTpCm+srhZMxwL1+7jzLRsl3V2wb80q9gpFE6miy22mbDYbLcs0rIm56LR2?=
 =?us-ascii?Q?NY1ibPKKYd9OekuTUPciXXmA1qTc7GfRcRfd6tS/ymfStxDnKTcEGQbKkFI5?=
 =?us-ascii?Q?1W6CEkQEqafS/9e6XZ0nwpMY7MeQmGFD1oAbkUqvFuzYr2D9GLoqSSb/9vGB?=
 =?us-ascii?Q?HsEHufis5QxLXNKWfd2g7If9Yqz6lC4dTLR0HR9T8GGzyAc9w1uaoG7w2C9R?=
 =?us-ascii?Q?7g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: l-acoustics.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB4464.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ef00e93-ce8a-4c11-1bd8-08dcaa27e5b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2024 08:25:51.3450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 68e431e8-d632-483e-ae79-f28a7b4c69e6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z/IglzwGjatOj/mOw4I/gEruDA2tY4k3bq84VQOp11w1v1BO9HTncsR6dO3f70u3Q/VHa/YJeRe98/x1OLR1Lwc5SvuEXNa5CMVMKLMF260=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR0P264MB4890
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=l-acoustics.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y71VKafGctelsd0XLJpasQNfYyj3DBc16kxr8EVIfrs=;
 b=a3WTl0RmxI8PPKvuVR6MKVDGdpcMfm0xyH8xSTEiCeRYOuFcOH/KXqm2xyeevLUPrv8ScXMuPGovd22TufjVu/svRdJs0glSssDoORbTZHIf2bvEJLp5ugrTH+ndXvUKR9Thq9crNdJjeMVl1QZbT01avxNYmJ6n694LhzF1vjY=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=l-acoustics.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=l-acoustics.com header.i=@l-acoustics.com
 header.a=rsa-sha256 header.s=selector1 header.b=a3WTl0Rm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=l-acoustics.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] igc: Fix reset adapter
 logics when tx mode change
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vinicius Costa Gomes <vinicius.gomes@intel.com> writes:=20

> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Hi,
>=20
> "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com> writes:
>=20
> > On 12/7/2024 1:10 am, Vinicius Costa Gomes wrote:
> >> "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com> writes:
> >>
> >>> Hi Vinicius,
> >>>
> >>> On 11/7/2024 6:44 am, Vinicius Costa Gomes wrote:
> >>>> Faizal Rahim <faizal.abdul.rahim@linux.intel.com> writes:
> >>>>
> >>>>> Following the "igc: Fix TX Hang issue when QBV Gate is close" chang=
es,
> >>>>> remaining issues with the reset adapter logic in igc_tsn_offload_ap=
ply()
> >>>>> have been observed:
> >>>>>
> >>>>> 1. The reset adapter logics for i225 and i226 differ, although they=
 should
> >>>>>      be the same according to the guidelines in I225/6 HW Design Se=
ction
> >>>>>      7.5.2.1 on software initialization during tx mode changes.
> >>>>> 2. The i225 resets adapter every time, even though tx mode doesn't
> change.
> >>>>>      This occurs solely based on the condition  igc_is_device_id_i2=
25() when
> >>>>>      calling schedule_work().
> >>>>> 3. i226 doesn't reset adapter for tsn->legacy tx mode changes. It o=
nly
> >>>>>      resets adapter for legacy->tsn tx mode transitions.
> >>>>> 4. qbv_count introduced in the patch is actually not needed; in thi=
s
> >>>>>      context, a non-zero value of qbv_count is used to indicate if =
tx mode
> >>>>>      was unconditionally set to tsn in igc_tsn_enable_offload(). Th=
is could
> >>>>>      be replaced by checking the existing register
> >>>>>      IGC_TQAVCTRL_TRANSMIT_MODE_TSN bit.
> >>>>>
> >>>>> This patch resolves all issues and enters schedule_work() to reset =
the
> >>>>> adapter only when changing tx mode. It also removes reliance on
> qbv_count.
> >>>>>
> >>>>> qbv_count field will be removed in a future patch.
> >>>>>
> >>>>> Test ran:
> >>>>>
> >>>>> 1. Verify reset adapter behaviour in i225/6:
> >>>>>      a) Enrol a new GCL
> >>>>>         Reset adapter observed (tx mode change legacy->tsn)
> >>>>>      b) Enrol a new GCL without deleting qdisc
> >>>>>         No reset adapter observed (tx mode remain tsn->tsn)
> >>>>>      c) Delete qdisc
> >>>>>         Reset adapter observed (tx mode change tsn->legacy)
> >>>>>
> >>>>> 2. Tested scenario from "igc: Fix TX Hang issue when QBV Gate is cl=
osed"
> >>>>>      to confirm it remains resolved.
> >>>>>
> >>>>> Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is close=
d")
> >>>>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> >>>>> Reviewed-by: Simon Horman <horms@kernel.org>
> >>>>> ---
> >>>>
> >>>> There were a quite a few bugs, some of them my fault, on this part o=
f
> >>>> the code, changing between the modes in the hardware.
> >>>>
> >>>> So I would like some confirmation that ETF offloading/LaunchTime was
> >>>> also tested with this change. Just to be sure.
> >>>>
> >>>> But code-wise, looks good:
> >>>>
> >>>> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> >>>>
> >>>>
> >>>> Cheers,
> >>>
> >>>
> >>> Tested etf with offload, looks like working correctly.
> >>>
> >>> 1. mqprio
> >>> tc qdisc add dev enp1s0 handle 100: parent root mqprio num_tc 3 \
> >>> map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
> >>> queues 1@0 1@1 2@2 \
> >>> hw 0
> >>>
> >>> No reset adapter observed.
> >>>
> >>> 2. etf with offload
> >>> tc qdisc replace dev enp1s0 parent 100:1 etf \
> >>> clockid CLOCK_TAI delta 300000 offload
> >>>
> >>> Reset adapter observed (tx mode legacy -> tsn).
> >>>
> >>> 3. delete qdisc
> >>> tc qdisc delete dev enp1s0 parent root handle 100
> >>>
> >>> Reset adapter observed (tx mode tsn -> legacy).
> >>>
> >>
> >> That no unexpected resets are happening, is good.
> >>
> >> But what I had in mind was some functional tests that ETF is working. =
I
> >> guess that's the only way of knowing that it's still working. Sorry th=
at
> >> I wasn't clear about that.
> >>
> >>
> >> Cheers,
> >
> > My bad.
> >
> > Just tested ETF functionality and it is working.
> >
>=20
> Awesome. Thanks for the confirmation:
>=20
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>=20
>=20
> Cheers,
> --
> Vinicius

Hello Vinicius and Abdul,
(I wanted to reply to the original email from Abdul, but I subscribed too
late, so I'm replying to the last message. Apologies in advance)

This patch is very useful for us in L-Acoustics.
According to Milan/AVB specification, we must use CBS for streaming audio.

Until this patch, we could not change the CBS configuration at runtime for =
i225.
For instance, adding or removing streams would cause the card to reset and
drop all streams.

To be precise, we submit a netlink request via `tc change` command every
time a stream is added/removed.

We were using a home-made patch that I planned to submit, but I forgot..

I tested this patch, and it is working as expected for CBS runtime changes.
Thank you!
