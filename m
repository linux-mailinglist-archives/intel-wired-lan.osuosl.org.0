Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FBC96FCE7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 22:49:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9EAF6066B;
	Fri,  6 Sep 2024 20:49:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PE1zamO62KVO; Fri,  6 Sep 2024 20:49:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AE7C6066C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725655763;
	bh=2leasWT/JD2243P8PPXNVEwH6fC+fc0QnuzMIgR5TdU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z8mn7tEDRDgKAclyZGSu3+u94Rtbqi13zrGMTitQE3tVsGV7PiYm8Kmn4oi8ctGsJ
	 cezdSZNiFJ/vL1b3Z4C0JIveyzANuCvc/H3gKTWxV+clESvAM8nJRHCTYHDckEjhw4
	 63mxc2Ky74dV6XTGY7KIoKYALiEnDio4T/gV9DhXNaL2e1JEE3DNHPTdPvQ2TiFqbm
	 1kPm4IxfwmYCo7x9u4G2ffS0r/lmT/JY0glNcuXF/WsSF9+yqDsnsiaYfak4kOjHX/
	 yYVows/N/jGkzEJRnEpAh2EdS+8fS1R+O0kGNKofLig/vfbhCrXj4vCdWBhc0GyWsa
	 Hvf8y92zX3Ljw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AE7C6066C;
	Fri,  6 Sep 2024 20:49:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB5CF1BF328
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 20:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D859D81990
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 20:49:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xhyW-r-GpTC4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 20:49:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.69.97;
 helo=am0pr83cu005.outbound.protection.outlook.com;
 envelope-from=jeffd@silicom-usa.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7965681971
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7965681971
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11020097.outbound.protection.outlook.com [52.101.69.97])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7965681971
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 20:49:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bbXW4yPoyAAUvQKuRzuk9ILXtbF/RbRn0BUqy2UawPYtq4lWUUJ0uqJ4hMFAjscurSNuqWfDMrhlnjsDDRfXSyiWesJf9QHB0PZpP15qxsdZetlu5SaPNiYu1Z21rlPuqBcX1z32IVbIgVZSxcROJXKIwkDn2nuEOHH07TKOXD0wEFHLhdibeiA6t8B7kLxvxeaClstaY/HtzK25EQQMzZUkANOk+Dh8RUh10VnRwRhqKA+NZJxH+XYRZPBnxCVpZaZ0FClMFTmAe1i/MdhZ4urs51X9iDDCrFePZCnwWLVy3Lal6IBy4U8xnIhfHOa4qUroav2vOBHyp3RyrEozDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2leasWT/JD2243P8PPXNVEwH6fC+fc0QnuzMIgR5TdU=;
 b=n10+cPuadSk7ncZ4T7iPXc18apn9Yl0MDB6x59bYtcAO5cZwWUsbv7l0XxR4f2w08CaK/UvLNqFlpm0YpK6v36MscO1ASm6xmnPmXXlDS4Fve1MnD2eM/i6CVv/xsrcP22ymS+fS87FYCRVA9JWVFtAMoALyytrC2/ZiS4wsOaseVCvRD9Cc3RwHE8i01RqyTwX/4tUk5P/3eLqH8gH4oKr7svR3MJHw/QdrucZMRQi7eFXuhEyEup6Hu8rxQn1+RicV6cvO6/9ng8+qN8jtvxCOyLAQJGKyHMz4bRuW+mm9Y34ICbNkjNd6169kWk613zMVPJVjQvBDfkDRnI+FhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silicom-usa.com; dmarc=pass action=none
 header.from=silicom-usa.com; dkim=pass header.d=silicom-usa.com; arc=none
Received: from VI1PR04MB5501.eurprd04.prod.outlook.com (2603:10a6:803:d3::11)
 by DB8PR04MB7034.eurprd04.prod.outlook.com (2603:10a6:10:128::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.17; Fri, 6 Sep
 2024 20:49:16 +0000
Received: from VI1PR04MB5501.eurprd04.prod.outlook.com
 ([fe80::610a:d9da:7bd3:b918]) by VI1PR04MB5501.eurprd04.prod.outlook.com
 ([fe80::610a:d9da:7bd3:b918%5]) with mapi id 15.20.7939.017; Fri, 6 Sep 2024
 20:49:15 +0000
From: Jeff Daly <jeffd@silicom-usa.com>
To: Andrew Lunn <andrew@lunn.ch>
Thread-Topic: [PATCH] ixgbe: Manual AN-37 for troublesome link partners for
 X550 SFI
Thread-Index: AQHbAElnQB6kTGxClkGw2bZQ9JRTDLJK6aGAgABP6cA=
Date: Fri, 6 Sep 2024 20:49:15 +0000
Message-ID: <VI1PR04MB5501C2A00D658115EF4E7845EA9E2@VI1PR04MB5501.eurprd04.prod.outlook.com>
References: <20240906104145.9587-1-jeffd@silicom-usa.com>
 <becaaeaf-e76a-43d2-b6e1-e7cc330d8cae@lunn.ch>
In-Reply-To: <becaaeaf-e76a-43d2-b6e1-e7cc330d8cae@lunn.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR04MB5501:EE_|DB8PR04MB7034:EE_
x-ms-office365-filtering-correlation-id: c260895b-dba8-4789-735f-08dcceb55ed9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?P66lgsHJxyXNf4bd0yEtk7ODaodEMCHm03JMZDMldSYp1P3B3KoS923bnR3u?=
 =?us-ascii?Q?KHDXlQpggcHSgkyIjb0aEWb+rfcuaXa1FHEwZpgGcFaOvsSVGV3NayYUs6Pp?=
 =?us-ascii?Q?TMg1muyQN1dt0q4gj06NzaALD7o9oyokqQsDpz5YyWvhITz4P17MDTpgliiR?=
 =?us-ascii?Q?/EyrA9eC+jUklJymmUxS6PDkQaKWzQBRq8M3GKmljNQ4+iC6wnBzOpumqtNl?=
 =?us-ascii?Q?Wk2FXOYtY/jFzX0kjQEB1J9dy8DCYPDhvdyfoyrG0oWwhByd8loRdTufduZl?=
 =?us-ascii?Q?W1UxSVKsIjs0T+SZQdzq6qqP9V53BspH/wnjUD+RCL+bPh3skh1BxYs9qGdl?=
 =?us-ascii?Q?asUVKgTgYQE3UhcjJuFLG2t5XbLYdHRbKyGzFHdAyfxie+wtWxlTZxirTxZ2?=
 =?us-ascii?Q?QN+FkpD00cUXYfOI9iTN4g0ezdJoEzlwwDfSVySS2z102tnIL/06vpFlDtpV?=
 =?us-ascii?Q?hFKv1+AmLy1W6OCyDE2ZE+pvyZ6fpcIdY/jhePn4Lg5dNS9qHSMlbXmX+YsC?=
 =?us-ascii?Q?ImZuoPJzfn9MJGQevnSNJnPO1kavTRLSnDW7X2rL0w8CeYO7HEIolPfclCng?=
 =?us-ascii?Q?/sSJs1Vx8XXXKgx4Y61dKmWM4nYvrT0U9AlYJIq9kDHYZc3P88BpqEBQce1U?=
 =?us-ascii?Q?OH7uLmQPNycblRsj5WsxvVuo3nAM/OnPGhMQZkOdGfQhvifGFY9s02ygZiCb?=
 =?us-ascii?Q?hQQKOPw+lNYTgzplGoby17Ek6z8Gg+Bse3PC8S4lST8gYLrJtAlUkH4jmtky?=
 =?us-ascii?Q?EdeOVL3zqhgXYFEOVWr1NsBv6Mp3Mld/w5w0TZB5CBL0iW70WJsHSwhls3EQ?=
 =?us-ascii?Q?hF++Ov6p89gJciqVajJH4XKZIv+K1SF+KwJhad/aZoe6e+2vmDY6AqgaWQ8a?=
 =?us-ascii?Q?BkhmiS3tRbBmaqJ/IYgzgvTBGfxeJ27WPG+bhAwu4My8TQx/z+CqTc40gTQb?=
 =?us-ascii?Q?Fg2G1lVH/FTvYZSO5nRaJIAMlC4JWeH+h+cmgf4Z9GMMdgOYyPLyxNfQPOVv?=
 =?us-ascii?Q?ZiLk3cPoAirxipmvwzYHk41fKCZDdkf2XE2Sp5eC9A1LXVegmmad7kAeGPvv?=
 =?us-ascii?Q?5I6hu1MYSiI3sF/QpRHnvH3cR9k2ESakiKaaw7bH5RUi+qxx1tp5qNiXYD8k?=
 =?us-ascii?Q?uvi1Lb5E1ZAUkiG2M3NHRRMif8Nhti8s+y0HFXB3bX70LVWw/vLt6xCZaFmY?=
 =?us-ascii?Q?MHPJhlM1qol1klg7vWOc28maYfdmjjABg3pzE20sotor1AB/6jWhlJXMPfco?=
 =?us-ascii?Q?a+cGGoFS3x7Fr5NBzBH1KdUjdF6BpJK2v0f7lwqcFcXTductrymTeY4VV+Ny?=
 =?us-ascii?Q?Ui7ye3+CRBPOPdPF0NLFNIBHC1gekNFX1/d5YuzSeR02ONA8Q6TO2zsxGZyV?=
 =?us-ascii?Q?ziWCLeYHNASk1BaP4Ke/YiQ1mQKGR1Rgzqn9fhtSDL2ihqFJ5A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5501.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018); DIR:OUT;
 SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RVEGGiowRDV4mmO2srSgkBBFu1dX4o8AQ/uoafDkTiQ6ZC6g7v6y7pagLyIi?=
 =?us-ascii?Q?4M4+EpxiCJ8ao+EMn+oLOOSkqA/uBSbNKRwb0UgpmYmHPqqQccfz8xUMRPR4?=
 =?us-ascii?Q?OPz6LY6BbMAmEn2H5LIm1NqDfjEOUsYBZlbN8UFBuSKoq/nInJQ59GNGuhM4?=
 =?us-ascii?Q?ihdbq3qJG60TwXBY/WhWFUFho6g3iGg31oJXLUOwrchlhQ7LRFpmzJHiU+zl?=
 =?us-ascii?Q?YZJd8Kv3cheZgprJf6bbKJ2T4MkGCULv3ZZExXuPtpnTKQEEcxNopvL1k3OJ?=
 =?us-ascii?Q?6Q6V10RR2f8xAv3WoY9s6/POPm5RzMrimar2DdhY47OVCIbJauvrI46r936e?=
 =?us-ascii?Q?71YzbTS5ocfRsUXDFptzZy5VbgKKEhhR6ooaeXIxCpS812OyZksK/56Y+W6/?=
 =?us-ascii?Q?iC6T78l5/OM7kbmzs8C9oK2GDZXmXToAq5t5P1b8OMSjL+RDZvzz0JTtlEWQ?=
 =?us-ascii?Q?l+jU6/VyNErwc+z5oyZfXuAKIgNLDk7zHrS6TnYqvU1mjRYomjVxOyzXHI3J?=
 =?us-ascii?Q?uU/+gLHejDSagLoKYE/IU+GQ04yoFiLREtgc+j3UKUFGcHCUTQrmm5IqIBlq?=
 =?us-ascii?Q?iRLmk2Vgvpt/Bgs7UDYB8HranIg7IsxySYOGu69TH0ubr6pOIXUUUfIFuAdI?=
 =?us-ascii?Q?JPyW9+bH/hWpN6YwoG+9Tqhr4Qzyy3P1RmVJLIlPPz3Rzipjl9YgskjG1t19?=
 =?us-ascii?Q?yGTi4OSIa7t4n/eonUeTKy3GzOExdViSw0wC2+CoTh6kdx710MJ1UH3kRmLv?=
 =?us-ascii?Q?I2XiIv4E2u/WqKctcF6GlvvdzdGKUeQKAt7StdM+/DKymEHTojMp2HN+j67c?=
 =?us-ascii?Q?+pfvkZGry66wp8dzx1BqVNa9nt6REe93dwGtIg8jcYAKrE6pXU1YZDzz8INA?=
 =?us-ascii?Q?i5NO2vMwtgBo8apcqk+EsKoNZ8KcHI1qtFgV1lZO5lRgqRZ6bf+4hc6woVMT?=
 =?us-ascii?Q?n4kxwCsZUdPtQii3qCEHikwG+MSyW07F94lsYKR6qmr0mMlGfM0OmRmvkqVg?=
 =?us-ascii?Q?sJAd2cO1qXusC1DUF/yinhzptEK1qgfTqpsE/oIICV49HBym9nq81rxWa/1q?=
 =?us-ascii?Q?e89vowKHgbgzIXasJDxYIh0tKeBTJmJo6uQNNUdboUMgCKupfQqOXCCaJA4h?=
 =?us-ascii?Q?m10yf64JQ+52/oBDhmJHhg8sZWmkaiuKBTOOB0Tgh9pK+W+vPuxd5nkcXoFT?=
 =?us-ascii?Q?qHgFg071lNqoTxWgFpXJpcvqSUddSDgnj1ymniqs3t3PT3xXMdr+ZdItFN4s?=
 =?us-ascii?Q?hrThR/Kc6QBcaSZGhdg91J2M30e6qOPjoyJw+2KPfmH1mV8v/mvxNex0BxP9?=
 =?us-ascii?Q?MKKMZUZuHeYvro6AsY0ZvPjg22hVQeAMWQv07ra4HQVLjC/ip8YpTFs89cL5?=
 =?us-ascii?Q?zW3MeE2GZSq0kh4Bw3iskIYqoA2JdndQH6kkdw8+9yZtdmtifliVuZeSv+Pd?=
 =?us-ascii?Q?orHBeh6cRUUZto+mIfoDIX//6Xxs7PCn/fHfSoL0DmgtNQo0eHJG7Ay/JVLe?=
 =?us-ascii?Q?N353SvKTzbT+K4+iONR4HNZATpiZElSPvmj0ODi2hDvIiCj+EJGEeXhqFf8S?=
 =?us-ascii?Q?gYIP3cSQXKzrm0qxEO6IJocumJG5eJ29xqeBf2LMr6DtbghrVAkYA7dPQpeX?=
 =?us-ascii?Q?eIlDcrEYC26os7b+Rhu8n+tfJ4sPTBSPpAfkSDneQxCY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: silicom-usa.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5501.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c260895b-dba8-4789-735f-08dcceb55ed9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2024 20:49:15.5242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c9e326d8-ce47-4930-8612-cc99d3c87ad1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wX1GVgyaAYrFmVfa1OsC4KUoRtsD+PNiADFqLlJW8y6GQb3U2cI+Upmhzv7kFzEJXH4xMHPtG7y+k5LW29hRZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7034
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=SILICOMLTD.onmicrosoft.com; s=selector2-SILICOMLTD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2leasWT/JD2243P8PPXNVEwH6fC+fc0QnuzMIgR5TdU=;
 b=tR3AtmYZeDNys0Wh77UKTVJupvcKpC7c1XbYMDwzXRBX/Xnn6JGHqxLlpTPKw0u5SI6bQBVdQy9ArX+hnuVCd+kHQD7AOmqtZlV0wJ2489dXhQLuwqzWshmo6BPm1rF8WWkc7jApWyg0mx1BdVpZCxxficI7Kfphx+L+soL9Hi8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=silicom-usa.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=SILICOMLTD.onmicrosoft.com
 header.i=@SILICOMLTD.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-SILICOMLTD-onmicrosoft-com header.b=tR3AtmYZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silicom-usa.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Manual AN-37 for troublesome
 link partners for X550 SFI
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
Cc: "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

=20
> On Fri, Sep 06, 2024 at 06:41:45AM -0400, Jeff Daly wrote:
> > Resubmit commit 565736048bd5 ("ixgbe: Manual AN-37 for troublesome
> > link partners for X550 SFI")
> >
> > Some (Juniper MX5) SFP link partners exhibit a disinclination to
> > autonegotiate with X550 configured in SFI mode.  This patch enables a
> > manual AN-37 restart to work around the problem.
> >
> > Resubmitted patch includes a module parameter (default disabled) to
> > isolate changes.
>=20
> Module parameters are not liked in networking code. They are very user
> unfriendly, and poorly documented.

Completely understood, which is why the original patch didn't include this.

>=20
> Why do you need it? Is this change risky?
>=20
>         Andrew

It turns out that the patch works fine for the specific issue it's trying t=
o address (Juniper switch),=20
but for (seemingly all) other devices it breaks the autonegotiation.  A few=
 months back it was=20
reported that there were issues with Cisco switches (which we didn't have t=
o test with).  The
parameter was added in order to isolate the specific changes from affecting=
 any other hardware.=20
