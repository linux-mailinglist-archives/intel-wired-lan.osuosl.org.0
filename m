Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0138CB9411
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 17:26:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CFF2817C3;
	Fri, 12 Dec 2025 16:26:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E0Vx19Ros-Qw; Fri, 12 Dec 2025 16:26:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0CAB8176F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765556765;
	bh=satXERwuLlmWaeUftv9RYjbSv+EVZ7wvjzf/XuHsczE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pAU8lRm4hiqmIEfSqIIkBJ6aD748Z3rRrc1h0u2nlpdRgTSN6kYdZzSo/EK8cpYLl
	 cfQooA8gUBT5bxuSqNFA3dfKd99eYwXmws7hI9BQ5ipfDHSsbkW/7u9LEK3vinsGgG
	 WNXgp1YPd1r2l6yqEyLkvqp36v8gND0XTWq1tpBTCDl6sVKFXDyGntrwzy6GJiSmXi
	 /4h3BTJf8Cr0ygWsR3D4hgzb++WpCP4yvdC7IUgw6yACK3hZU2jCEe0n+QMQ7Cq0rs
	 B09GOG/e9j+zRUoiESCnHoJTH9BjExjzWTgcyOC/roP91CsFWbgu9vrgv2D8FPVIIm
	 Bc/t9mz7lxQCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0CAB8176F;
	Fri, 12 Dec 2025 16:26:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EE7B32C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 16:26:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD82081764
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 16:26:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U-6nGqxDViET for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 16:26:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.65.38;
 helo=du2pr03cu002.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F2DF081705
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2DF081705
Received: from DU2PR03CU002.outbound.protection.outlook.com
 (mail-northeuropeazon11011038.outbound.protection.outlook.com [52.101.65.38])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2DF081705
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 16:26:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XQhSHEVLYSJcxktJG5pnyXeuioNstQr+DTcFKEU9g9eKcEE8dPHpeI6O7J3Lh3ccFymt9FSpWnYeYOwc5QEySCr9BwLb9mhGSROBl3bO/NHMX41HTGMOv3ApEjrBUu4yNFkQCSCmSCtzQEYiBYGaxi9JnNKYd0WixeT5U4Ui2hbeq3W62vl76JuQUn3NeWZy1PtIJLdH0eSUtXufMBZ6GiIn9nvV7RKm+yh+nMy2NgqU5MuJAdpOSqA7i5+nwpel7rwy3Obr7aERMQU+lzsuQGuOrsQufLIBcwdkwI6AM8AqHGhTkMZPB9DTAzmSkfrGjve6wTJ0eTwslNV2vDYgEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=satXERwuLlmWaeUftv9RYjbSv+EVZ7wvjzf/XuHsczE=;
 b=gyh104fm5rz4ylinEdkx5ftaxbdAAe6iNYeQBcNKHNUsNC68jNmtQYyQb9K747XiGWUmFTjS6ZimR1B5nEerXZ+swEe/FMOZC6fSB0bvDcDhyW/H0qoM/U5AcO0ETx1A0Yo6CFNclFbKNqCeHNn6BBb37h06MpeF68r2r0EzSQN8OVx/TB+qxmAIgEbYU63y4yzeKWtXCKzZtd0ZlL8nHAw1McoqitJbWzsep7RyGQEWRULySlac3VV863BWQYjFJ2L0XWWsUi/oTgVQx2RSQ3REu8k+NziIrncL68MemmXvzROZ8L0vapx3/bSweOHyZrQmvesqVfwZ8G3u/+/fCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by DB9PR10MB7291.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:45d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 16:25:56 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 16:25:56 +0000
From: "Behera, VIVEK" <vivek.behera@siemens.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHca2leje8v5krntkqau+LeqsXMu7UeByKAgAAburA=
Date: Fri, 12 Dec 2025 16:25:55 +0000
Message-ID: <AS1PR10MB539220210B2B5255BBE6429C8FAEA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20251212131454.124116-1-vivek.behera@siemens.com>
 <IA3PR11MB8986039C808FEF65791C01B3E5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986039C808FEF65791C01B3E5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=2d3c64a2-6a57-41a5-adb5-1aabc174264b;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-12T15:34:45Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|DB9PR10MB7291:EE_
x-ms-office365-filtering-correlation-id: d8a7babe-6e8a-4173-78e1-08de399b2067
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?9R11Rlg6v0CHIoavBLqQX44JH1KJIdpVFz4CQOQlF0nUrNSdE+L9/mujCjBZ?=
 =?us-ascii?Q?xu7U37Psfs3TJcG0JgEfkVlzyW1yMr6qChcB1jFPfpZd3H5EBrBWepXKIqO9?=
 =?us-ascii?Q?ab+pmiK8FhiE2v0UxTLqu7CQV42eFqa9zhsHDiOtrbFL0JeGImGDltGcAZXT?=
 =?us-ascii?Q?nNL9pIVxjASy1nDIT9lLO1JHVp6h/8IcpveC7ePvOD2aSK6nl2vEt7lJ1Nda?=
 =?us-ascii?Q?ySw67DU5vNPt0FrjHDqBPhoSdKF9niOEket/5Cski5UYZV816Hy0JAoxz2Lq?=
 =?us-ascii?Q?t9zZEPJFO3ZUTvuU4hyMXiuD62sBmwPHSvmZbjwG8tykwxyJtTUNP44LZmOk?=
 =?us-ascii?Q?QQsipHVkeRk87taqxglVjI310QQr09a+yM8cmFvjTx20DOl3saxgUt1JIbKY?=
 =?us-ascii?Q?guIz1Fl7JGZj4ynR4cuPV5WgaX9VJSkDt43oIMPL3Ob4U+PfbggiKIRZ7emJ?=
 =?us-ascii?Q?t01tJRCnztfCKz56AfazYEW6xHpj/+VYQZHdaxBPxt1dkrhTOUa4m5E6LW70?=
 =?us-ascii?Q?R5QaWELwljIVGA0Daj/OV2AoC1dvYKsOcWHCpwe71JiacQjHoA4jLmY3W1sH?=
 =?us-ascii?Q?V/uvdb36sw0dtu8a0NjrZ+nTnT1BvSD4ToYrqbmwztOBfQV/ruFV/PTrnUfr?=
 =?us-ascii?Q?5G1GEz1EVDssEav/vtJAujY/KGAsxhIEOmE7omF+1iGihW/XTyyOKtA5RvXa?=
 =?us-ascii?Q?hwyiFKODITsw1mvJR/Yi1EMJXfse5ud9PVdAUAOS6kRE5n1TTEOidN3ZG6gW?=
 =?us-ascii?Q?QNtrekoEcxWY9hlkdXYT0BAEnvLx8a//IBFTJ2AuGv2DQ1CZU8XPPu08Zzsq?=
 =?us-ascii?Q?tsu/aELAaUnpW+WhLNWlHgziPYa3f1o9DrxDlrRJyggmlEFU/TUnVmg3OG2/?=
 =?us-ascii?Q?iW+X05EahxZNLqUZIhht8SDRY7zWz1mJNG1O2qC8lqCv115xY7fHXtfWKY0h?=
 =?us-ascii?Q?p0v5c4R6fn2TBCqjvuKGRK9wHqlk7gQ84XMsxIvjmmkn6QHQVvfATno8Yq2q?=
 =?us-ascii?Q?hRxsE1ufECLmso5XGctx9Jr1R3qv+wpi4qEmoCreuDnWHlJEQF2fZ40+UAb0?=
 =?us-ascii?Q?YajnP6WxOoFogLa4z3HtJYkKFjfjFtmtf5RmT12DadRAZS+DUjaPZZ/FNzMy?=
 =?us-ascii?Q?JKAGs40CYuAiue0ozMo17m6IH/qTh1a9hZGuJdG0gPsK4hO2MX0ysIrJ0Sev?=
 =?us-ascii?Q?zVV7b6o64xLFePmW/So7Wz/XEh3iIWYlxs6ykDVq4HyUobCMZwGewQ8dF5+E?=
 =?us-ascii?Q?sNY6ODofl02Qk9k0SZwdfDe9xiicqsyt6hDSr4I8jh0wSVJzMoWYuvGucYMa?=
 =?us-ascii?Q?D1hlQaxyqkuxS+9E7B+bgRhYb8etVIN5gzcz3wgDfN8yRJMckNq3G1LHHY/W?=
 =?us-ascii?Q?taxwkLNDZb7s0EY/GebsotpF+2b5Z4WB5Ne/weTgPBKm4CpSCFPn5aF15ui6?=
 =?us-ascii?Q?GAcyeOvHE4WUVk7AnpWcBJ3kqckrMIuhcVQnlK+BEDK5wDRzBIdBDeqSkCnQ?=
 =?us-ascii?Q?FjkXb1eTMat3C43JMm0o/pemwZ8urJNXozvcubKhSq5XIrxcpj7CGtAorw?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PZyqD3ycLL/ZIjnQwmgfTtYEcLmCYJB+RkJbgpyqxBVd4CdTlsDpN0Mjcsx2?=
 =?us-ascii?Q?v4/uNIq/6mvqlt/jEdE/hDLiBk/JtW8/SRmb2Eh9ZoINX+xQjkUHtFu4Uq1d?=
 =?us-ascii?Q?qfv1KzMg+meOox82JEMamKX8q3yU+kxwMc4JSSaQ1iTVP+1NJWucXifmmZgt?=
 =?us-ascii?Q?Bx7V5WG5Mj8aEJnq8Dh23aUYR7Rd+Fil1AYHFiwtCLSGnlihT1txdR++jfpA?=
 =?us-ascii?Q?35txN95zjARGti8nnn3mAK9OjMYLQXQMtJh8wyhvfOWQIakkjt7QkP0tm6Ri?=
 =?us-ascii?Q?UC0X4zztBNHtUCuW2dwiPu9PwRdvik1alwRA9JO0lGduqhdPLA0ibGnCqMKn?=
 =?us-ascii?Q?N4P5+i33D+ojnrSqobd3YdUSGRSzK3SfnrtPUDqXsjlhFjLC9Vn7Rnwwj01G?=
 =?us-ascii?Q?B1jnGpFIAaKsxJm9pFpJFBQPPAGi2C889cWfcCZUnHs737AkArpiFBAM4JqN?=
 =?us-ascii?Q?NLBNxMabJUJKSv1mYLLbxqDlhmeF4JBRA75fClfGqZzBwB0WP+dnU934T/07?=
 =?us-ascii?Q?Ps/UbPOV9t9S4hSIDaJEszMDR94q0u5XOo84TXtjHT5QG6BR0MpEi5YbDsDA?=
 =?us-ascii?Q?Tjz6P4E7n63J6I9mI8Ic5yT6XLnVQDRmOZkQKte+RAmkjbBjVhS18iciqJMA?=
 =?us-ascii?Q?wh3c1EJst7IabYfQcbkidct/DNhikQ0RfEN0uvFGKfowlF+f7y6DTWE6a3i/?=
 =?us-ascii?Q?Ot+21hP9gJpIkxREYBGA5tuobFTLsCrkMeyFvoAF4NhK0xoiTX2taq6gbV6F?=
 =?us-ascii?Q?vetKAOMQGSWCo/zTjuhmpi8SOQYQbO3kwzrd+andjUpwyxDYnstpLCFvR02+?=
 =?us-ascii?Q?QZXAhdsyMa7xBaW/+KWNgmlanBTxWnueZQWY41z9YGklv43jRq7aDIxyEd7D?=
 =?us-ascii?Q?639bJkGGwzdykTd09O5A02Z008QP8+kyuwYdoNIYkl68DhPyiVd3+Nl24jNu?=
 =?us-ascii?Q?CpugDFkVx7ZhniDRCT2/zoFx0UX3BcDCJ7PbWI8oQHBNdOSOUDNug5xHEAvK?=
 =?us-ascii?Q?XuUuoRoYK7subgxg/EEGrrpHjFTN7SfSZygDw1wOcnU4BW7tVRWOmsLdZ/fY?=
 =?us-ascii?Q?5IcWkUjdli5YYPkIGzqr5zI1UNKXkJXixrrS0lMNUcbQwVW1/BRUsgoF/rI0?=
 =?us-ascii?Q?00oAS8mlSnJKBbYpb9nKdrEuZtzR76CMcw+6bchURZObTnAq1tBPpHMDoRjO?=
 =?us-ascii?Q?ajtekuVJXJ1hUGs4q26l3kMBQFC+sq24guOhZV0zGLreyHBwBG0UbeXJ2oWR?=
 =?us-ascii?Q?wk0b6j5BfNqAVcWsiyNr2ryp8snKJpt3nKBgZl2qm2npgePmwa4FRSMUCASK?=
 =?us-ascii?Q?7NpRss8YnlatpdvH5ccOTEEjBuXITXXmqMR96haZqHHCUFhI3LrDF+IfGkp7?=
 =?us-ascii?Q?lxWZX62AKUL2hoJZkkhAPJkj+r4lKPKft+V84KI+emH9RqPxx82S7RSkj+Kg?=
 =?us-ascii?Q?JLUu7doMNJbD/1Nxmriw90//nNroi/ma9120+zHCLfJp4oDyRi+sb5yfvwOi?=
 =?us-ascii?Q?iQp41xQv7dipvjdGwMXWYcK4/Wm33Jd9sUxhXGd8TP5fuRwHeMgUUKZ/bA6V?=
 =?us-ascii?Q?e1/5OkyL8kZN+v/TNoJKSU9nal3xLYxoPjjHt1Ne?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d8a7babe-6e8a-4173-78e1-08de399b2067
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 16:25:55.9339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YDFBVugiU6EwhwP0NQBzi5R7Z6OjinWC8dx5sJRyoS2YGKnBtcXaxMy/fCdjZii9mZB6DqvokK/hcH1BgExjJoL4d0KxLKGUyQItoAGyBNI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB7291
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=satXERwuLlmWaeUftv9RYjbSv+EVZ7wvjzf/XuHsczE=;
 b=thVPPH+Q59y/Xtlf3LmaEqOnKQpuBQ5fu8k5BHdqFism9KsZrOrfmFT4rc+xXJNzrsX7fMbFW8b3eByWp2csPBvQXYpsODpRu34Ft4hwV5qXW9gFEQU2YRSZS7K84R6SJOMIFht8bXcIeHye7MoRm5QG+iMw92EdKE5wiFO+GGnpbDddV3dQ6lVN8GvqMzNXXCNGakwSHDjWGgrypnWyC0Wcm32+/wnNnurMhn/eAJwx16Uk2h4c3fNa2YxFNuepAFjxgaKFVwktoqCoJSA8aSMihsHi38Jy0HV9xXitCInUC1Qh6ytu/n1By1QHEXu3oH1rP4GkmSk3doIkpnRREQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=thVPPH+Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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



> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Friday, December 12, 2025 2:56 PM
> To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>; Keller=
,
> Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek (DI FA DSP ICC PRC1)
> <vivek.behera@siemens.com>
> Subject: RE: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
>=20
>=20
> > -----Original Message-----
> > From: Vivek Behera <vivek.behera@siemens.com>
> > Sent: Friday, December 12, 2025 2:15 PM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> > Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > kurt@linutronix.de
> > Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek
> > <vivek.behera@siemens.com>
> > Subject: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
> > igb_xsk_wakeup
> >
> > The current implementation in the igb_xsk_wakeup expects the Rx and Tx
> > queues to share the same irq. This would lead to triggering of
> > incorrect irq in split irq configuration.
> > This patch addresses this issue which could impact environments with 2
> > active cpu cores or when the number of queues is reduced to 2 or less
> >
> > cat /proc/interrupts | grep eno2
> >  167:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0    0-edge      eno2
> >  168:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0    1-edge      eno2-rx-0
> >  169:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0    2-edge      eno2-rx-1
> >  170:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0    3-edge      eno2-tx-0
> >  171:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0    4-edge      eno2-tx-1
> >
> > Furthermore it uses the flags input argument to trigger either rx, tx
> > or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > documentation
> >
> > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > ---
> >  drivers/net/ethernet/intel/igb/igb_xsk.c | 77 ++++++++++++++++++++++-
> > -
> >  1 file changed, 71 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > index 30ce5fbb5b77..9f23e6740640 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > @@ -529,7 +529,9 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> > qid, u32 flags)
> >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> >  	struct e1000_hw *hw =3D &adapter->hw;
> >  	struct igb_ring *ring;
> > +	struct igb_q_vector *q_vector;
> >  	u32 eics =3D 0;
> > +	bool trigger_irq_no_msix =3D false;
> >
> >  	if (test_bit(__IGB_DOWN, &adapter->state))
> >  		return -ENETDOWN;
> > @@ -537,13 +539,76 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> > qid, u32 flags)
> >  	if (!igb_xdp_is_enabled(adapter))
> >  		return -EINVAL;
> >
> > -	if (qid >=3D adapter->num_tx_queues)
> > -		return -EINVAL;
> > -
> > -	ring =3D adapter->tx_ring[qid];
> > +	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> > +		/* If both TX and RX need to be woken up */
> > +		/* check if queue pairs are active. */
> > +		if ((adapter->flags & IGB_FLAG_QUEUE_PAIRS)) {
> Extra parentheses in if().
Noted. Will remove in the next version
>=20
> > +			/* Extract ring params from Rx. */
> > +			if (qid >=3D adapter->num_rx_queues)
> > +				return -EINVAL;
> > +			ring =3D adapter->rx_ring[qid];
> > +		} else {
> > +			/* Two irqs for Rx AND Tx need to be triggered */
> > +			if (qid >=3D adapter->num_rx_queues)
> > +				return -EINVAL;
> > +
> > +			if (qid >=3D adapter->num_tx_queues)
> > +				return -EINVAL;
> > +
> > +			/* IRQ trigger preparation for Rx */
> > +			ring =3D adapter->rx_ring[qid];
> > +			if (!ring->xsk_pool)
> > +				return -ENXIO;
> > +
> > +			q_vector =3D ring->q_vector;
> > +			if (!napi_if_scheduled_mark_missed(&q_vector-
> > >napi)) {
> > +				/* Extend the BIT mask for eics */
> > +				if (adapter->flags & IGB_FLAG_HAS_MSIX)
> > +					eics |=3D ring->q_vector->eims_value;
> > +				else
> > +					trigger_irq_no_msix =3D true;
> > +			}
> > +			/* IRQ trigger preparation for Tx */
> > +			ring =3D adapter->tx_ring[qid];
> > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> > >flags))
> > +				return -ENETDOWN;
> > +
> > +			if (!ring->xsk_pool)
> > +				return -ENXIO;
> Looks like violation of the API contract:
> When XDP_WAKEUP_RX | XDP_WAKEUP_TX are both set, if RX can be woken
> but TX cannot, the caller expects a clear error with no side effects, not=
 a half-
> prepared state.
> Shouldn't we validate both RX and TX rings before preparing any interrupt=
 state?
>=20
I am not sure if I understand correctly what you mean by a half-prepared st=
ate.=20
Preparation of Tx and Rx purely includes(unless I missed something) validat=
ing all the necessary conditions
required to wakeup both Tx and RX. Only after all checks are done tx and rx=
 rings a single trigger=20
is executed either over EICS or E1000_ICS right at the end.
In my understanding the ndo_xsk_wakeup with RX and TX flags set expects bot=
h the xsk pools to be woken up.=20
So how is it a violation of the API contract if we exit immediately on erro=
r during our checks?
 Any failing check eliminates the success criteria defined by the API
Do you mean that the error should only be returned after doing all the chec=
ks instead of exiting the function with the corresponding error immediately=
 when a check fails?=20
>=20
> > +
> > +			/* Retrieve the q_vector saved in the ring */
> > +			q_vector =3D ring->q_vector;
> > +			if (!napi_if_scheduled_mark_missed(&q_vector-
> > >napi)) {
> > +				/* Extend the BIT mask for eics */
> > +				if (adapter->flags & IGB_FLAG_HAS_MSIX)
> > +					eics |=3D ring->q_vector->eims_value;
> > +				else
> > +					trigger_irq_no_msix =3D true;
> > +			}
> > +			/* Now we trigger the split irqs for Rx and Tx
> > over eics */
> > +			if (eics)
> > +				wr32(E1000_EICS, eics);
> > +			else if (trigger_irq_no_msix)
> > +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> Shouldn't we use a combined interrupt bit or set both RX and TX bits here=
?
> 	wr32(E1000_ICS, E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
I think the bits for both RX and TX should only be used if there isn't a co=
mbined interrupt bit that can trigger both RX and TX.=20
I am not sure what is the correct setting for this use case. What do you th=
ink?
> >
> > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > -		return -ENETDOWN;
> > +			return 0;
> > +		}
> > +	} else if (flags & XDP_WAKEUP_TX) {
> > +		if (qid >=3D adapter->num_tx_queues)
> > +			return -EINVAL;
> > +		/* Get the ring params from Tx */
> > +		ring =3D adapter->tx_ring[qid];
> > +		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > +			return -ENETDOWN;
> > +	} else if (flags & XDP_WAKEUP_RX) {
> > +		if (qid >=3D adapter->num_rx_queues)
> > +			return -EINVAL;
> > +		/* Get the ring params from Rx */
> > +		ring =3D adapter->rx_ring[qid];
> > +	} else {
> > +		/* Invalid Flags */
> > +		return -EINVAL;
> > +	}
> >
> >  	if (!READ_ONCE(ring->xsk_pool))
> >  		return -EINVAL;
> > --
> > 2.34.1

