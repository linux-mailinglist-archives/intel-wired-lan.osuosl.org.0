Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id VDZrCKkYjmnV/QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 19:15:05 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D14CB130345
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 19:15:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1D2C60AD0;
	Thu, 12 Feb 2026 18:15:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xfU1nbRmWuOT; Thu, 12 Feb 2026 18:15:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD1EE608FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770920100;
	bh=JfyDus1g01wZKRipHESRqguSM8kqcLkAQMxIcAUr6jw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H5aU1i9k14V1Ut7hFVIlhPaZnvLGTaFkmnr9OIdgQtIPXcok+zMU/MP6NSP5VEYCI
	 nLTUXXMkkONsA4zlJwtd60N5jWeNmHQ5JImPMxEeANHLyOZ3iUPMGAjhQ8nc3YZ9BN
	 Q0z1cVyXWAnKupF7YZYBtyDH7vla/DfQcw6HGf0xMUDjRZFqEGckdxDH2jFjZOhRwk
	 id0a7uj3Os2mAVynnWoB8yeiAaQ9ExQxd8S9PQlAObX2vmkTzTWpTBpf/iBJFRTE4+
	 WzsBQse/VA6GKeGDgITZiv1ZE3OiEtdyIbK8Hnu6CJD5TZfI26TtJxbVOQF4xddqXR
	 i0TCpN5mrm6Yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD1EE608FC;
	Thu, 12 Feb 2026 18:15:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 65D8F23D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 18:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 527CE41AFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 18:14:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4epLoBAvJEku for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 18:14:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.103.23.17;
 helo=ph7pr06cu001.outbound.protection.outlook.com;
 envelope-from=harshankmatkar1304@outlook.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0B7A941B13
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B7A941B13
Received: from PH7PR06CU001.outbound.protection.outlook.com
 (mail-westus3azolkn19010017.outbound.protection.outlook.com [52.103.23.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B7A941B13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 18:14:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AwhfJLlqfkAPioiZUJEq3eznPNemZNC6Id/AxKRRw8OFH244X9+8yqklJSD80nY29/CY59llBFjnNmLHn0mUBf1sYb/xsJwaPYxFORFmO0wDe3cKSgPSBCykFJC2QzQrDJkqzXLnXcuDUpWFztFy5qmK5yn3AaqXQH1B5MZe5/1Mn63+s2uxcSCfROKd8iOi6zrD3AAgu8VgQ72ZIb6cNB759Rk0mJIYUZxIYrbCDOpAa2XWj73ubmD6UTfchH0zH7EFtBsKnWg/V6eaqFatn8LepxePRdz+8XjcRU1iD4e2/KU8AbdV5hmXrxy6zT85MNT1PkDaiiZzVWZL0ShlnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JfyDus1g01wZKRipHESRqguSM8kqcLkAQMxIcAUr6jw=;
 b=iW9erRzSntbVVQLhnyKcsLTzQvQHSQN2Ylpwpo3joZ9h1xN4UFNl2c8rirjN+vgUXHy/lc5Leb63HXL5F4T1QoCygXdDBN/LKveM+hLsZp1ym7eppZkeJPSyGKBPktL8pZxRyAVV5WE1ifoUiB9Gss9GtjDUfWJcsPSdmn6Sgq72VU2v0Zv5wS3klfY8XlTNCFzshw/DtAagUKvx92bYHY51cPlfgkd5EvC1dP67Z6FUlzAYODEdr2ldOJSXPDEcBMiOZihlKeH7Nu+PW6AwnoTAlOfJetu5YHUY9LjQN+5ImEdKl1oFfgQ1iEhFdtYw15nWXqShklgb2dTOmJ8+ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MN2PR14MB2638.namprd14.prod.outlook.com (2603:10b6:208:cc::16)
 by CH0PR14MB7143.namprd14.prod.outlook.com (2603:10b6:610:18c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 18:14:53 +0000
Received: from MN2PR14MB2638.namprd14.prod.outlook.com
 ([fe80::101a:ee9b:a260:5e50]) by MN2PR14MB2638.namprd14.prod.outlook.com
 ([fe80::101a:ee9b:a260:5e50%6]) with mapi id 15.20.9611.008; Thu, 12 Feb 2026
 18:14:53 +0000
From: Harshank Matkar <harshankmatkar1304@outlook.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "dima.ruinskiy@intel.com"
 <dima.ruinskiy@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "tony.nguyen@intel.com"
 <tony.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "edumazet@google.com" <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] igc: Add PCIe link recovery for
 I225/I226
Thread-Index: AQHcmsyX2pU9cEBI4U2inzjzUohpXrV9mKqAgAHHDWw=
Date: Thu, 12 Feb 2026 18:14:53 +0000
Message-ID: <MN2PR14MB2638EBC558EAABCE5DCD12EBDE60A@MN2PR14MB2638.namprd14.prod.outlook.com>
References: <20260210203332.23200-1-harshankmatkar1304@outlook.com>
 <589746b5-0519-47d9-b583-89f4d81573a7@molgen.mpg.de>
In-Reply-To: <589746b5-0519-47d9-b583-89f4d81573a7@molgen.mpg.de>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR14MB2638:EE_|CH0PR14MB7143:EE_
x-ms-office365-filtering-correlation-id: bb62293d-6e68-40ff-64b8-08de6a629e99
x-ms-exchange-slblob-mailprops: Cq7lScuPrnr9cOglUl1urTSFBsjx1OD04zSm+vCoTnmknUGxFiXavwb0GNnPMWqClbGFGw71UCstzdNDoaeGWNelIM9koZCEG+Emwf5qSeyqKjQO+WCD15J6RUdOJiBwWT2E65TN89RJtB+IplQJYQ/imHLzofEG52glPbCje3LEw6KLNevub8FfLZBNXUAD3e++nWiU7UtWq7652d1NLBF/3WpcKJ/PcjFnzXSzGe5xFtLFBo0Y4A7CN6i8vTnAQbv4NagWJQsYu9ACDTsHSWxmAt3ct2ZAJrbY0DIHTNOByc0HPkhKXyMpigvPG/Qk11r3BALPckZL3tN7VhJUtMnIxvVdCb4+V1E9mxjljy7pAM5p3bdRCwseV2EjrMEpXASbotxWyUGvG1YK/KNITyabN8MS6JnOshqfswl1j8DI0cy+Y4M8iiwXzyCUIR21N7Vqz5vT65ya+sX0+hN03E3P2GyiuSjQ84jdl6zYqw6AL5YTfJ/wchrpQVQh4ldRs0hS4BZRK4rnY5CJNEjgJWprdbL4nqHPGG4818ghK49d42mAFKiHeTxBM6o/QgjB77+KCkab1SmaTUdFSqsCXRJskiPc1V1zRtIQBzCOtM7D0cMTDvsZ4trNvQoA+ta5fW9rArmwY5V1mQoaBLQYeFXPK6UnZ50aklf3AO1K8ttCa2cahErvMjVpzTemVnX1tiNJN/rO55gwZU/ieJ+oj8nbGkIo6xr9zx3j0cKGNYGKmFxV4eRmVCyfCfaDYpEdG1a0Qo8Faqs=
x-microsoft-antispam: BCL:0;
 ARA:14566002|31061999003|51005399006|12121999013|8060799015|41001999006|8062599012|461199028|15030799006|15080799012|19110799012|40105399003|56899033|440099028|3412199025|102099032|18061999006;
x-microsoft-antispam-message-info: =?windows-1253?Q?LXOJzxZuYzxUNRjJ+AUyVdKDLv6EVNaPGd+YBcSrTuwYIYlxL8xArhOs?=
 =?windows-1253?Q?wJgvIlePHfDPoxOJNOW4HQwBUbnez7vXR57GW5wWOXbWPmyXTWKOcNbv?=
 =?windows-1253?Q?UZ1exYAeghud5vEfkd3V0J9VG6HIInArn1Y2XI/ys0fMj910I+FsKv/L?=
 =?windows-1253?Q?+xIB0YE3UzBJih8rcDJgLJPUt7+dHB8P37KqURz92RSTElrT/xvCg4rt?=
 =?windows-1253?Q?G0DLcKGpr0YXS41kXON7dVIsR8QovB5ySX+5zC8LCOCxzS5FvQjfPpeW?=
 =?windows-1253?Q?yuI01loL/OLuAjJaiNyyZW4KJBORCL4txKFp0dTV91sDfXLn32WQakL6?=
 =?windows-1253?Q?2WdJWYFt+MPS+hWNlZ+rHnBGXdVCdQoPm0XzUKjtP5BE4xbNpU3ecOkr?=
 =?windows-1253?Q?AQvxVIsu4LLon/yuB1DBtLvoDvAk4U7MNDkSlNQfaIks+RT9OEmF8KnA?=
 =?windows-1253?Q?QyNe4yIzhCCxLYwi8momjGMcz5fahKFiecIGDSOlwo9Chcd0PGnxbDH8?=
 =?windows-1253?Q?2Bs7IuNHh3vJiuRrmWmMpZdB0bidNk74Kf5LDFOeHou3p8+BGbjO9YJ6?=
 =?windows-1253?Q?/aCgIFtbN77NUUeRmbqzMja9l0bb0yMocdiSrKwvd0hAM99SF+WvUToR?=
 =?windows-1253?Q?S/ynHPcm7WXkX78dffv4LE6NF/ehCChBF60FfmjC0iSP634KzcDgKTdE?=
 =?windows-1253?Q?MjNDgint47/aAICCVHJ4IgJg3TcIN9/DuijgdeXietLc9pcaI1QVPogq?=
 =?windows-1253?Q?jnr+ZKc6BL914KF1DgQCp2XZ/lPwCQ3qIH6RGXTzqTBLfCVbfwZceeyR?=
 =?windows-1253?Q?IKYYxugd7yjZNJ9V/3cMMcD5oLIN6mjMeaoPYqtlF+i8q3CgzLD28ygq?=
 =?windows-1253?Q?tVJs3zjzfBWZoi+im8feCNQjFgTeN31ReIYILKPAxRmiAo0BGiVhY4C/?=
 =?windows-1253?Q?ZPvyN9jgSbtyJAEhwrC4/l+fS0VdTgi4Ygv2W8k/KjYdGn3JFuh2CRWA?=
 =?windows-1253?Q?Tl4gmA9IdJFrYDM39+TGhfI9cHMi9BWBxHXqen2JunuMJLwgSHL0mJfi?=
 =?windows-1253?Q?vDVJL/6kcnmFkIlL6spX3NHK6+DoDPg/q0qgyoLDfq56U7N4PcP0oDwy?=
 =?windows-1253?Q?7UHk6xn3xTpEEEyuPfrkXwqIFCQldyc5eQZEpvgTdkTNkbgFiQdxG6op?=
 =?windows-1253?Q?V6Kapnd1TP1PcShu6MiFpdinhbsJEe8lK+53HUP0zio8EjaIoCZ0RaRN?=
 =?windows-1253?Q?hBLtnY1FjSP5D9HEWCkgRcIALz7swhQCctPrW8IcmsvS4OIdtQUm/ZP3?=
 =?windows-1253?Q?uBSGadpxHV69rL9LfYBpm5A9chCK8TFr5mdbs6gO8BLVGM8FGDMkGT4f?=
 =?windows-1253?Q?Q/p3oR2BVglp3FjSEDoePkebJ4yTEWIDRHqQwYqZ74IZ29acqDY7TReK?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?windows-1253?Q?u5Fca0Pc0QcWhBHMnpoBx6ojRb8i9BUFgJpC4jY9pGrsexTwl6VsNOxK?=
 =?windows-1253?Q?0jDESyZSd6KtiBPh4BYoIWGTjeUtO82d9xdR7jTWr00wPafup+9I/l6p?=
 =?windows-1253?Q?kQZA7xMoCgPL1r1amGN+8OhXSFJPVZMd02iESMPxpnN1ar43wXxfJB8J?=
 =?windows-1253?Q?tZ5W3+MNFD287fCwQ60Bj3GlYowG23QLBSfu7SvFJES5RdZLPHB089Au?=
 =?windows-1253?Q?jlKhorXWf46STn86HbE5Sxh/W00FFcK73jxTSwaDz7s/d4nrfjsdPiK2?=
 =?windows-1253?Q?Na0XXMmbvj9pWi/uHRyQlWHwny0++uWGhNBkvpvGHEKKlvOjfbi/tV9P?=
 =?windows-1253?Q?zDcttavs5QIuUFbFipHQLIpXGypoemACXwk7/ZSmrgxY+HwCvO3WBlpq?=
 =?windows-1253?Q?GANMWYrqyNlORZs0N4PFmJBHRNoH1VWFTHJlhZt/dI2XxGeo6shTQewN?=
 =?windows-1253?Q?whsyn/wRakI26AF/LHOhAGl5FPcQ1ca6+hLTZIINVHzfc54ejoJTA9la?=
 =?windows-1253?Q?WXaDi4JbIKiPz4whJD5d7/yJqviJ7ZpsfjBBoC14nRIwYVehsvJNHzaT?=
 =?windows-1253?Q?S1dOEoQO1YWtzybxhDsL0fZqBgWQSbKVvAgUu6h9UAv9qdgyTZEYbeSp?=
 =?windows-1253?Q?K8snNEc29NV/DnPvaq47gMGfGjrqR1a1Y3v/3E4LpigJF4q+rlwRtY7u?=
 =?windows-1253?Q?pzzmE7K0rygFZybXR8gyaCy0MIcT2FbIwOdql+Z2PTfU1+7l35XizeWM?=
 =?windows-1253?Q?IoiFOGyCsMveCSMMT9Bxu6qMfzRWZ9A/gw4DQwtowwpH8FPisMSO4WVV?=
 =?windows-1253?Q?kj+bUVDoNk+nfZIhMiyJ7tWakw22UYWPliVCu5p1TOeXn4f/0jztjZZh?=
 =?windows-1253?Q?xtv1Rl24sIbQCZmO3rCLQQj6DhzP4Q0u05LxlY6U1/hqWh+pcSlqTWUR?=
 =?windows-1253?Q?Q6p+YlX5+za199w0dre2dHFnMJ3ftbKCqBVJE7GS7eMMyY1gpO9aIIK7?=
 =?windows-1253?Q?2oeDkTk5ZlF2p/5F8GKMljthsqYUaYiEDS8s0s2wFhJ6uPra/IyNVZ+3?=
 =?windows-1253?Q?4SIuhcXLecPDjEc4dejbQZG6a5IMD4Zim10tV1cVAsgSv4WFuN4TCauv?=
 =?windows-1253?Q?k6QdG9XoKgFLbsyplJ6X1sk6N2CRNK6PSuTCG3Hx5vnEHoo/I5mOUz/0?=
 =?windows-1253?Q?9XLENRgtJYy28TT/FjPaUN/Qn1nFm4JCecmqUAIvcUmG3GgWcguJ4rZR?=
 =?windows-1253?Q?GrhdWXFGtXsLsFjJ61w9zWwEMo/Hg/OyFoeg6zPMYWeza2dv6NU1WXUN?=
 =?windows-1253?Q?KtvJSKHDajia0cspNzU29vOOcUahpHt4MX6eyz3Se6GUiVFWGnRMDgD+?=
 =?windows-1253?Q?5NMkUcXhWPOrylIhBgNEdA/LiVm5VXRB9O2U7FIcZe1dGGHWY1oBOFCL?=
 =?windows-1253?Q?o5WdgCgzDDnS8L7YA2SFVUQTjjLQWdiXpij/Ko8fS+2alGtaBNS98uWh?=
 =?windows-1253?Q?hdhxQgRLZmryhaRMbdVOdEeYmTdif9kfjTl+9GDixOTrFBm7VEQ=3D?=
Content-Type: text/plain; charset="windows-1253"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR14MB2638.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: bb62293d-6e68-40ff-64b8-08de6a629e99
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2026 18:14:53.3208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR14MB7143
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=outlook.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JfyDus1g01wZKRipHESRqguSM8kqcLkAQMxIcAUr6jw=;
 b=cpMRWA+LAEOveG6utzBiMNdgnN0mu+KytG/TonC85ZT69QFHQre8nyCoTi1e53hy15BiVcXNRxdlYX2bEG9XVX/7eP0SIREm61NN1K/WqbWhy9LhzfC/v766Oz/bLKCVQGRx3E7YORaD46OOSrdSTaDlT+NPm6wKHGalDiM9n6fTpnR8nm7S/LBG9b2ExFiVAZTdYHF8EkoCew0WakoqLwI0qA/+rGYIgesoOSBO6y1r2LxE7e2X3CTyt/RpbdDQJLGaz/n2sTzpSc15pUZBDifjAZsZaZRPre7/LhAP15zaNIcnX7JbJ1pS5vFEMD04tHbgcxUyXO16qG355RlhUg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=outlook.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=outlook.com header.i=@outlook.com header.a=rsa-sha256
 header.s=selector1 header.b=cpMRWA+L
Subject: Re: [Intel-wired-lan] [PATCH] igc: Add PCIe link recovery for
 I225/I226
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.71 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[outlook.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:dima.ruinskiy@intel.com,m:netdev@vger.kernel.org,m:tony.nguyen@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:helgaas@kernel.org,m:linux-pci@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[harshankmatkar1304@outlook.com,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[outlook.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshankmatkar1304@outlook.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D14CB130345
X-Rspamd-Action: no action

Hi Dima, Paul,

thank you both for the detailed review and for looping in the PCI folks.

On 10/02/26, Dima Ruinskiy wrote:
> The use of usleep_range() means you will get a "scheduling while
> atomic" bug each time a register is read in an atomic context.

You are absolutely right. I overlooked that igc_rd32() is frequently called=
 from atomic context (e.g. interrupt handlers and other non-sleepable paths=
), so using usleep_range() or msleep() there is incorrect and could lead to=
 scheduling-while-atomic problems. That means the current implementation is=
 not suitable and would need reworking.

> I can understand the read-retry mechanism as a way to cope with
> transient failures. We've implemented something similar for PHY
> accesses in the e1000e driver. However, full PCIe link retraining feels
> like too heavy a tool inside a register read routine.

I understand your concern. In hindsight, doing a full link retrain with lon=
g waits directly from igc_rd32() is indeed too heavy for this hot path. igc=
_rd32() sits on a very hot and latency-sensitive path, so any recovery logi=
c there must remain strictly non-sleeping and minimal. If I revisit this, I=
 will focus on a much simpler, retry-only approach similar to the e1000e PH=
Y access retries instead of trying to drive PCIe link retraining from the r=
egister read routine.

> Maybe we should first understand the scope of the problem we're dealing
> with here - does the issue with L0s transitions on I225/I226 affect
> specific units/systems?

My motivation came from Bug 221048, where users report =93PCIe link lost, d=
evice now detached=94 on I225/I226 after a day or two of uptime and mention=
 ASPM/L0s as a likely trigger. However, I currently do not have access to I=
225/I226 hardware myself, so I cannot characterize how widespread this real=
ly is or verify the behaviour across platforms. Given that limitation, I ag=
ree that pushing a generic fix into igc_rd32() is premature.

On 11/02/26, Paul Menzel wrote:
> Just a note to please version your patches.
> `git format-patch` has the switch `--reroll-count` or `-v` to do this.

Thanks for the pointer; for any future submission I will use `git format-pa=
tch -v2` (or higher) and keep unrelated/cosmetic changes in separate patche=
s.

> > 1. Immediate retries: 3 attempts with 100-200=ECs delays
> Why were these delays chosen?

At this point they are only conservative estimates. The idea was to give th=
e link a very short window to recover from a transient ASPM-related glitch =
without introducing millisecond level stalls, so I picked a 100=96200 =ECs =
range per retry and limited it to three attempts. Without measurements on r=
eal I225/I226 hardware, I agree that these timings are not well enough just=
ified for production code.

> It=92d be great if you added the test setup and case.

This is a gap on my side, I currently do not have I225/I226 hardware availa=
ble, so I cannot yet provide a proper, reproducible test setup or results. =
Given that limitation, it makes sense not to push this change further until=
 I can actually reproduce the issue and validate any proposed fix on real s=
ystems.

> +     /* Give the link some additional time to
> +      * recover on its own */
> +     msleep(100);
> That=92s quite a long delay. Is that according to some standard?

The 100 ms delay was chosen by analogy with PCIe reset and recovery paths w=
here code often waits on the order of tens to hundreds of milliseconds for =
DLLLA and link training to complete after a reset. The intention was to fol=
low that precedent rather than choose a much shorter timeout that might rac=
e with link training, but I understand this is a significant delay and not =
appropriate in the igc_rd32() path.

> The idea looks good, but maybe there is something in Linux=92 PCIe core t=
o
> achieve something similar?

Thank you for the hint. I will look into the PCIe core error-recovery and l=
ink-retrain helpers; if a solution ultimately needs a retrain, it should be=
 built on that infrastructure instead of open-coding LNKCTL.RL handling ins=
ide the driver.

Given the issues raised  particularly the atomic-context constraints, the h=
eaviness of link retraining in a register read path, the lack of well-justi=
fied timing data, and my current lack of access to I225/I226 hardware, I ag=
ree that this version of the patch should be dropped.

If I am able to obtain access to suitable hardware and reproduce the ASPM/L=
0s behaviour, I would like to revisit this with a smaller and better-scoped=
 proposal (likely retry-only or PCIe-core-assisted), along with a documente=
d and reproducible test setup. I would very much appreciate your feedback a=
gain at that point.

Thank you again for the detailed review and guidance =97 this discussion ha=
s been very helpful for me in understanding the expectations around changes=
 in this area.

Best regards,
Harshank Matkar

________________________________________
From: Paul Menzel <pmenzel@molgen.mpg.de>
Sent: 11 February 2026 20:30
To: Harshank Matkar
Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; tony.nguyen@i=
ntel.com; davem@davemloft.net; kuba@kernel.org; pabeni@redhat.com; edumazet=
@google.com; linux-kernel@vger.kernel.org; Bjorn Helgaas; linux-pci@vger.ke=
rnel.org
Subject: Re: [Intel-wired-lan] [PATCH] igc: Add PCIe link recovery for I225=
/I226

[Cc: +Linux PCI folks]


Dear Harshank,


Thank you for your patch. Just a note to please version your patches.
`git format-patch` has the switch `--reroll-count` or `-v` to do this.

Am 10.02.26 um 21:34 schrieb Harshank Matkar:
> From: Harshank Matkar <harshankmatkar1304@outlook.com>
>
> When ASPM L0s transitions occur on Intel I225/I226 controllers,
> transient PCIe link instability can cause register read failures
> (0xFFFFFFFF responses). Implement a multi-layer recovery strategy:
>
> 1. Immediate retries: 3 attempts with 100-200=ECs delays

Why were these delays chosen?

> 2. Link retraining: Trigger PCIe link retraining via capabilities
> 3. Device detachment: Only as last resort after max attempts
>
> The recovery mechanism includes rate limiting, maximum attempt
> tracking, and device presence validation to prevent false detaches
> on transient ASPM glitches while maintaining safety through
> bounded retry limits.

It=92d be great if you added the test setup and case.

> Signed-off-by: Harshank Matkar <harshankmatkar1304@outlook.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |   6 +-
>   drivers/net/ethernet/intel/igc/igc_main.c | 155 ++++++++++++++++++++--
>   2 files changed, 149 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/=
intel/igc/igc.h
> index a427f05814c1..2ef488b279b9 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -346,6 +346,10 @@ struct igc_adapter {
>       struct mutex led_mutex;
>       struct igc_led_classdev *leds;
>       bool leds_available;
> +
> +     /* PCIe recovery tracking */
> +     unsigned int pcie_recovery_attempts;
> +     unsigned long last_recovery_time;
>   };
>
>   void igc_up(struct igc_adapter *adapter);
> @@ -422,7 +426,7 @@ enum igc_rss_type_num {
>       IGC_RSS_TYPE_MAX                =3D 10,
>   };
>   #define IGC_RSS_TYPE_MAX_TABLE              16
> -#define IGC_RSS_TYPE_MASK            GENMASK(3,0) /* 4-bits (3:0) =3D ma=
sk 0x0F */
> +#define IGC_RSS_TYPE_MASK            GENMASK(3, 0) /* 4-bits (3:0) =3D m=
ask 0x0F */
>
>   /* igc_rss_type - Rx descriptor RSS type field */
>   static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethe=
rnet/intel/igc/igc_main.c
> index 89a321a344d2..f0daa3edbb79 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1411,9 +1411,8 @@ static int igc_tx_map(struct igc_ring *tx_ring,
>       /* Make sure there is space in the ring for the next send. */
>       igc_maybe_stop_tx(tx_ring, DESC_NEEDED);
>
> -     if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more())=
 {
> +     if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more())
>               writel(i, tx_ring->tail);
> -     }
>
>       return 0;
>   dma_error:
> @@ -1613,8 +1612,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_bu=
ff *skb,
>        * otherwise try next time
>        */
>       for (f =3D 0; f < skb_shinfo(skb)->nr_frags; f++)
> -             count +=3D TXD_USE_COUNT(skb_frag_size(
> -                                             &skb_shinfo(skb)->frags[f])=
);
> +             count +=3D TXD_USE_COUNT(skb_frag_size(&skb_shinfo(skb)->fr=
ags[f]));

Unrelated.

>
>       if (igc_maybe_stop_tx(tx_ring, count + 5)) {
>               /* this is a hard error */
> @@ -2524,7 +2522,6 @@ static int __igc_xdp_run_prog(struct igc_adapter *a=
dapter,
>               if (xdp_do_redirect(adapter->netdev, xdp, prog) < 0)
>                       goto out_failure;
>               return IGC_XDP_REDIRECT;
> -             break;
>       default:
>               bpf_warn_invalid_xdp_action(adapter->netdev, prog, act);
>               fallthrough;
> @@ -2791,7 +2788,7 @@ static struct igc_xdp_buff *xsk_buff_to_igc_ctx(str=
uct xdp_buff *xdp)
>        * igc_xdp_buff shares its layout with xdp_buff_xsk and private
>        * igc_xdp_buff fields fall into xdp_buff_xsk->cb
>        */
> -       return (struct igc_xdp_buff *)xdp;
> +     return (struct igc_xdp_buff *)xdp;

Correct, but should be a separate patch.

>   }
>
>   static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int=
 budget)
> @@ -3895,9 +3892,8 @@ static int igc_enable_nfc_rule(struct igc_adapter *=
adapter,
>   {
>       int err;
>
> -     if (rule->flex) {
> +     if (rule->flex)
>               return igc_add_flex_filter(adapter, rule);
> -     }

Correct, but unrelated and I think cosmetic changes are not wanted.

>
>       if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
>               err =3D igc_add_etype_filter(adapter, rule->filter.etype,
> @@ -6984,11 +6980,112 @@ static const struct net_device_ops igc_netdev_op=
s =3D {
>       .ndo_hwtstamp_set       =3D igc_ptp_hwtstamp_set,
>   };
>
> +#define IGC_REGISTER_READ_RETRIES    3
> +#define IGC_PCIE_RECOVERY_MAX_ATTEMPTS       10
> +#define IGC_PCIE_RECOVERY_INTERVAL_MS        1000
> +
> +/**
> + * igc_pcie_link_recover - Attempt PCIe link recovery
> + * @adapter: board private structure
> + *
> + * Attempts to recover a failed PCIe link by triggering a link retrain.
> + * Rate-limited to 1 attempt per second, maximum 10 attempts.
> + *
> + * Returns true if recovery was successful, false otherwise.
> + */
> +static bool igc_pcie_link_recover(struct igc_adapter *adapter)
> +{
> +     struct pci_dev *pdev =3D adapter->pdev;
> +     unsigned long now =3D jiffies;
> +     u16 lnksta, lnkctl;
> +     int ret;
> +     int i;
> +
> +     /* Rate limiting: no more than 1 attempt per second */
> +     if (time_before(now, adapter->last_recovery_time +
> +                     msecs_to_jiffies(IGC_PCIE_RECOVERY_INTERVAL_MS)))
> +             return false;
> +
> +     /* Maximum attempt limit */
> +     if (adapter->pcie_recovery_attempts >=3D IGC_PCIE_RECOVERY_MAX_ATTE=
MPTS) {
> +             netdev_err(adapter->netdev,
> +                        "Exceeded maximum PCIe recovery attempts (%d)\n"=
,
> +                        IGC_PCIE_RECOVERY_MAX_ATTEMPTS);
> +             return false;
> +     }
> +
> +     adapter->last_recovery_time =3D now;
> +     adapter->pcie_recovery_attempts++;
> +
> +     netdev_warn(adapter->netdev,
> +                 "Attempting PCIe link recovery (attempt %d/%d)\n",
> +                 adapter->pcie_recovery_attempts,
> +                 IGC_PCIE_RECOVERY_MAX_ATTEMPTS);
> +
> +     /* Check if device is still present on the bus */
> +     if (!pci_device_is_present(pdev)) {
> +             netdev_err(adapter->netdev, "Device not present on PCIe bus=
\n");
> +             return false;
> +     }
> +
> +     /* Check link status */
> +     ret =3D pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &lnksta);
> +     if (ret) {
> +             netdev_err(adapter->netdev, "Failed to read link status\n")=
;
> +             return false;
> +     }
> +
> +     /* Trigger link retrain if link appears down */
> +     if (!(lnksta & PCI_EXP_LNKSTA_DLLLA)) {
> +             netdev_info(adapter->netdev,
> +                         "Link down, attempting retrain\n");
> +
> +             /* Read link control register */
> +             ret =3D pcie_capability_read_word(pdev, PCI_EXP_LNKCTL, &ln=
kctl);
> +             if (ret =3D=3D 0) {
> +                     /* Trigger retrain by setting RL bit */
> +                     pcie_capability_write_word(pdev, PCI_EXP_LNKCTL,
> +                                                lnkctl | PCI_EXP_LNKCTL_=
RL);
> +
> +                     /* Wait for retrain to complete (up to 1 second) */
> +                     for (i =3D 0; i < 100; i++) {
> +                             usleep_range(10000, 20000);
> +                             ret =3D pcie_capability_read_word(pdev, PCI=
_EXP_LNKSTA,
> +                                                             &lnksta);
> +                             if (ret =3D=3D 0 && (lnksta & PCI_EXP_LNKST=
A_DLLLA) &&
> +                                 !(lnksta & PCI_EXP_LNKSTA_LT)) {
> +                                     netdev_info(adapter->netdev,
> +                                                 "PCIe link recovery suc=
cessful\n");
> +                                     return true;
> +                             }
> +                     }
> +             }
> +     }
> +
> +     /* Give the link some additional time to recover on its own */
> +     msleep(100);

That=92s quite a long delay. Is that according to some standard?

> +
> +     /* Check if device is responding now */
> +     if (pci_device_is_present(pdev)) {
> +             ret =3D pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &ln=
ksta);
> +             if (ret =3D=3D 0 && (lnksta & PCI_EXP_LNKSTA_DLLLA)) {
> +                     netdev_info(adapter->netdev,
> +                                 "PCIe link recovered after delay\n");
> +                     return true;
> +             }
> +     }
> +
> +     netdev_warn(adapter->netdev, "PCIe link recovery failed\n");
> +     return false;
> +}
> +
>   u32 igc_rd32(struct igc_hw *hw, u32 reg)
>   {
>       struct igc_adapter *igc =3D container_of(hw, struct igc_adapter, hw=
);
>       u8 __iomem *hw_addr =3D READ_ONCE(hw->hw_addr);
> +     struct net_device *netdev =3D igc->netdev;
>       u32 value =3D 0;
> +     int retry;
>
>       if (IGC_REMOVED(hw_addr))
>               return ~value;
> @@ -6997,13 +7094,49 @@ u32 igc_rd32(struct igc_hw *hw, u32 reg)
>
>       /* reads should not return all F's */
>       if (!(~value) && (!reg || !(~readl(hw_addr)))) {
> -             struct net_device *netdev =3D igc->netdev;
> +             /* Layer 1: Immediate retries with short delays (100-200=EC=
s) */
> +             for (retry =3D 0; retry < IGC_REGISTER_READ_RETRIES; retry+=
+) {
> +                     usleep_range(100, 200);
> +                     value =3D readl(&hw_addr[reg]);
> +
> +                     /* If we got a valid read, return immediately */
> +                     if (~value || (reg && ~readl(hw_addr))) {
> +                             netdev_dbg(netdev,
> +                                        "Register read recovered after %=
d retries\n",
> +                                        retry + 1);
> +                             return value;
> +                     }
> +             }
> +
> +             /* Layer 2: Attempt full PCIe link recovery */
> +             netdev_warn(netdev,
> +                         "All immediate retries failed, attempting PCIe =
link recovery\n");
> +
> +             if (igc_pcie_link_recover(igc)) {
> +                     /* Recovery succeeded, re-read the register */
> +                     hw_addr =3D READ_ONCE(hw->hw_addr);
> +                     if (hw_addr && !IGC_REMOVED(hw_addr)) {
> +                             value =3D readl(&hw_addr[reg]);
> +
> +                             /* Verify the read is valid */
> +                             if (~value || (reg && ~readl(hw_addr))) {
> +                                     netdev_info(netdev,
> +                                                 "Register read successf=
ul after link recovery\n");
> +                                     return value;
> +                             }
> +                     }
> +             }
> +
> +             /* Layer 3: All recovery attempts failed, detach device */
> +             netdev_err(netdev,
> +                        "PCIe link lost after %d retries and recovery at=
tempts, device now detached\n",
> +                        IGC_REGISTER_READ_RETRIES);
>
>               hw->hw_addr =3D NULL;
>               netif_device_detach(netdev);
> -             netdev_err(netdev, "PCIe link lost, device now detached\n")=
;
> +
>               WARN(pci_device_is_present(igc->pdev),
> -                  "igc: Failed to read reg 0x%x!\n", reg);
> +                  "igc: Failed to read reg 0x%x after all recovery attem=
pts!\n", reg);
>       }
>
>       return value;

The idea looks good, but maybe there is something in Linux=92 PCIe core to
achieve something similar?


Kind regards,

Paul
