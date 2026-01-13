Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D72BFD16EA0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 07:55:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 943DE84828;
	Tue, 13 Jan 2026 06:55:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tVUtz9_JrvHW; Tue, 13 Jan 2026 06:55:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9007484829
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768287341;
	bh=8qS4jwjUgNhIiY0AHg0sAsRAxT/TuWGUVso9VwVKqnk=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=1WoAnWF+iGYd8tPvJcaL8DALaR9+/KPXnZkYKW4nAF6Dn5L3amSxEPdpwezJy28Kt
	 WGmzlNMRgyaIuIwsdo6H6p6HkVgoP8Yp5Fmw/UZSp74HosdIdbBxpy+ADBehokvmUt
	 NqlDdZPPad9dCyCOHDXBKIt24d2ESG2oRDjYgRFfOelSpVLAxyyx/DXy8ZldpQwv8e
	 dboK+4FE1rz+1sqpZRRpN+IT06um2NdLOb1Ld+WmOnqb66M9/f6gU5LjEylHtMZ3TC
	 Rzv5rDhIZHPFsJf+tR8GG4RLkmxJWOORBAzsTS++v560tvqhRe+pD/Io5+nqdJjEFg
	 0hE1JIXe3dG0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9007484829;
	Tue, 13 Jan 2026 06:55:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AAC3F231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 906C184827
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:55:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JTbeMNL05B4S for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 06:55:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.72.46;
 helo=am0pr02cu008.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C633384825
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C633384825
Received: from AM0PR02CU008.outbound.protection.outlook.com
 (mail-westeuropeazon11013046.outbound.protection.outlook.com [52.101.72.46])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C633384825
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 06:55:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IJLAG1B8xtODc+H0fzMrYjK3cgBuDCBIDIjKQKINGcq7SArBSSB+QKcqFpgYs19y5F27d0ADxbDfhNz6Cb0J4S4clfMSJcqp5l979fXHclD7YZOBVrUw0HqG3leNTnpHl8J4PdDJNrUy5W+keenRNx1dGkVaka2SvfkjL7oBVIOKEYU5pHh+OTqmZrC8H35zc/cV7QVE/ykuEcNDgQqHAJcucXphkrDBqT/aVA82k0AbCFR53WRrb5FxH3LrhDB6+iVV1GXi9Iww5e306EiaAw4OSYv2idKdYDWUhXrce2MWxpRAwvgitwBclYg7vLSysNQ9D3Xr4Ho7bE3Qy9htDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8qS4jwjUgNhIiY0AHg0sAsRAxT/TuWGUVso9VwVKqnk=;
 b=IszRZZ6irk6fO9DjA4BlOa0QwYj8ThLtAYy842DPMsD29LBRmVHs9f42gb/LG2OikxZd9F99SqYDMisU4JJgL2QwOAGpJpl85pbkypWRziroc9DwS5Ou85KnB0eEqfF4az+M88IwcPX+J277nsD82hUKzMFpVuIdySjnb0zsVa/dl4wzN9+/izQ7ABTb/GRgfASv9ZeNikpakeK8h1v+bA0J3v0EGa4vdy079GVsfUqdN8tAfSSc/ziCAmniXkcUeyKsNo3sz5ML1QB1MyhO9WlkdnuGQLLwSl6cjBU+OKSQOfMiQSr/y5RCJM4mmTndIdcIEHOkeAhwabyzkwnqHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:329::14)
 by DB3PR10MB6762.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:43b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 06:55:33 +0000
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef]) by DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef%6]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 06:55:33 +0000
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
Thread-Index: AQHcg8PrekTNf/vlH0OQtQBQJq0k07VOnwaAgAEMPOA=
Date: Tue, 13 Jan 2026 06:55:33 +0000
Message-ID: <DU0PR10MB5387A6BF488BD7CEDF886C848F8EA@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
 <PH7PR11MB59837734EA694328F53A8AFFF381A@PH7PR11MB5983.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59837734EA694328F53A8AFFF381A@PH7PR11MB5983.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=7cc5468c-3108-4702-85e8-bd5264c8822c;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-01-13T06:53:59Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR10MB5387:EE_|DB3PR10MB6762:EE_
x-ms-office365-filtering-correlation-id: f34a13c8-33e2-466c-7d78-08de5270bf83
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|13003099007|921020; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?sGBNPZaYkCm5o8wnwIsTdPV1+fwl0u+XJcnb2cQrhwrs1vFyMRitbUP6Y+?=
 =?iso-8859-1?Q?Q+Jwj2N7g0fsGEtl2OehwO/jB4xEhstz7H5LHoPTu00XAT/yxzJiiFF6eA?=
 =?iso-8859-1?Q?yN3VH9cDGCJB/XVP1sSSxPLYJrDdIyc6zxXGAVzLTdyBG9HhM+fM2XQqXD?=
 =?iso-8859-1?Q?TNbm0W7QM4rg6vgbdLiid9kogjH0IBWR43Aj8SVaQCOZW/zsyxAVIT3gZh?=
 =?iso-8859-1?Q?VpAqiPxJDOwsn0ksczYzEBKTRK2LFJNSdDPH4A2ZuLxF3G/dInfPDNUaOP?=
 =?iso-8859-1?Q?4unhPDVhRMILnk0W9E6ItorD5D7WAves7yfYkqqr0aFkUktjuawjxDOJ6L?=
 =?iso-8859-1?Q?eadwj3J8TWX+s37ogXELuMWDwL85p7rqVUNUUBMjeKCqF4eZ4ADLe0kMog?=
 =?iso-8859-1?Q?GclfnFtUV8zbVACNA8AxxGC81r1G0GQ3uskVeZYhyunj563f/l/w4DxVBS?=
 =?iso-8859-1?Q?a+602CHZW9QKB0FXDt1muQ9UiAPScZlV+b/JEy0AWueAjUCktLhSS51F+7?=
 =?iso-8859-1?Q?6O7mNgpCpPCA6uK+weigTp4lwZVG9gcL9mkim3L2SlkRv1onSUGR6iVjSR?=
 =?iso-8859-1?Q?opnMElLSrZ6soBP7Lq5TCCiubWxVhT8F0pqNPW2y0+Rf+Oxdd2rlKSY2sl?=
 =?iso-8859-1?Q?MM0gbTSlbAnkL1HBv2ozZaPAz47uxAlzriamOngA/vQkedXjOFkxZ3HChD?=
 =?iso-8859-1?Q?X/46VS/gamXoHvx4EwdCANFnH+dAsHRPlE1OV30Q2eB6Mr7MkSpcb9P8ji?=
 =?iso-8859-1?Q?UfDVPJf4xoTpkysPPJqdQ2WLBY167X6kPrUunykYGtHIIkmnUFvwt9Zu89?=
 =?iso-8859-1?Q?Ze2WMQSwACXG+l7BIdVNcbMlcnCxHRpGApAsR7vvXeX9Uqh8iot7IJ2XSY?=
 =?iso-8859-1?Q?dlRUZG7A4U8/XRtRMtsxX62Xms6OpHsk8M8a6t/q5lOr4qOHcy4+LA5IIk?=
 =?iso-8859-1?Q?ACrposhQ42x4swrSYztk3tTVA45ES8QUgea/ZRmgrTBuZpmLqusqLW+jat?=
 =?iso-8859-1?Q?jUUHJM0fCD4GBz2emDw3si9z4aENlDy0ZlXgHdFUpr9JASmKVc2VZcPHfq?=
 =?iso-8859-1?Q?93nACcPdsynzxOWSZB+IJblITCE570ryjxO6WDYrfINhoK7H2ZJ+6i2Zr9?=
 =?iso-8859-1?Q?U7Y2+m5jWjydSWXAtcp0BL4gaya4Fgcl6/S0jebAHY2jE+ZuNolgGghR+5?=
 =?iso-8859-1?Q?IPOLsLCKbJS5WKr+mhXmBwYHYh6cmRHSqQ65sjlL7GsNxtyvpb9etPsR0l?=
 =?iso-8859-1?Q?ZDi1d7oLu4pPd1PKmaZu/I66LhJ+ez/P9DKWyLVYoCG/59TFIiEfoejQ/S?=
 =?iso-8859-1?Q?ZP0Iteq2B+z8nXyo1Sc7Di617j3AsmedCOWQaw0fn/jSf/AFRTnNjFr5lq?=
 =?iso-8859-1?Q?mTG7R5RWlwPuS1Wk/7/hE4E+6/AvAGasIU/03SKWtT5LtNPZnRAI0KS2GK?=
 =?iso-8859-1?Q?PrpZeRQ2tyuA41Pk358com0VmHVzi8AG7lpemCUZSCUR0d3VQmm0GVZlY6?=
 =?iso-8859-1?Q?6jzfxxDt5cp1ptHGGmsVUwuQBJxi4kJ6hEILR8/6xw/g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(13003099007)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?LKlNs2eQqG5zN5xpAYLt9IeTJnnHpbaAf+IZ6sF5oAjCi1iE96A3PWzemn?=
 =?iso-8859-1?Q?R6+0hu/SeV5Grd9QS0tIpVhehnpa0h7PzlFzXUHaX+7XOxTDhDJBlYI7+O?=
 =?iso-8859-1?Q?VUxtf0be3xrV/gApd/uVhwlAZZlodr7aNq/pvTzAARGYYM9xS4as3OsAF3?=
 =?iso-8859-1?Q?3tx/JE810CYpqZCN1/i93xTDBSWxDuvxcv1g6W1Jg/byN0rHtSJslgskmw?=
 =?iso-8859-1?Q?PFtyUo00ANqi9a1afZRYWZQw2jzN6YxiyRZx0LT5JUOBjvn32S0VsVcUCJ?=
 =?iso-8859-1?Q?NDcIpTz9NSjyBezxI0gHvlI17+GWrvO1e4RgfDLdq80ufnuWGitsmCTBnX?=
 =?iso-8859-1?Q?Tp5uH0gfe5LM6H1bcwNBlwkQVsTE1upOh+L/8fuxExXNfJoqvQdW1iN7ie?=
 =?iso-8859-1?Q?zMcrWd1VwNyEiUV0YxmF6DII8IEf69t+SPY7ZsAREdCsxWZIN1EkgysVnD?=
 =?iso-8859-1?Q?Lp6Tz2XU+LH4kl7mIsR2CWNQk6lL6wX5hhOPy94KJgyAZ8m9ia9jX2KBKu?=
 =?iso-8859-1?Q?wWpcvQ+EKdmW3PGKOLOvJnfceAS95EyLIjgUCAXstd3Wu43yJsz1ZJxT09?=
 =?iso-8859-1?Q?aJKjJD6m7ygLSbtQyk5hLSJtOrxVwLpoDBFH07PH85RBa+QCGHk4qFPSML?=
 =?iso-8859-1?Q?VVggw98FijOej3xUabPEh0LoJcaDDS17NPEMffV8AIUKG/ePyleeBwyw4i?=
 =?iso-8859-1?Q?IJUCFNnMIz4/Taqs8fDuA/lU7oJDm4Y6HJjqoR2ifLEYZuLbzXCC2cjSpQ?=
 =?iso-8859-1?Q?Zg8h3viHWy5tcjA3H/9enL+/44drmplC77/rcDEq6RJVfYXbvdbi/ZjJ/3?=
 =?iso-8859-1?Q?jfsxXzXsjYzAiAKVeHQ9ch4GqV+hcoEY3CsyfAp8adWKGgSm/NBpIMW7k3?=
 =?iso-8859-1?Q?/XImuzw2QS+hAzYTIEuLVnF2MOTH7K5OVT0OYrZvit1ZwVbpacLn/3j+Ek?=
 =?iso-8859-1?Q?eDmbUOOH8w9rIDqiC1OoOPSQuNsQymY5DZE08WHhSYF6yHWYJzL3DYH5GA?=
 =?iso-8859-1?Q?u9SszeaNXlym1G0G3S3AVlu6g+EnnUao2HMkyhEbBXCPUGjXRAi11oFmVe?=
 =?iso-8859-1?Q?W/5JK18D8Od+6UJjmbVoXwNkRRtpsgqORE53VZVmYaINfscbHpoEUzxmiz?=
 =?iso-8859-1?Q?ZAii5trZ7CY//qpGHT7k1+bJkcGCConNlIB7r8tJQZ8MePHt9UHU2IQXGy?=
 =?iso-8859-1?Q?hDXIYmrD5nFXbWflJPpCZ82wYNK3m0KaO6Dfhqi7Y2N7mGhlrKG6BeG2er?=
 =?iso-8859-1?Q?GqiPzeb/Ct6p84n1HaotG8nh6sY77kVV1DD9TKzsKuV+n64nSU+VKqs2GY?=
 =?iso-8859-1?Q?8PO4X8SGzg4b0Cd3JfEYt1yQ1198cSBnmH2Baeral7DNdLQlUwtMjBjUj+?=
 =?iso-8859-1?Q?T9LTExWoXuYf4HwgiLgoXs9ZzwlT7tKYQysKdMigR1ddjYKvLpxNCUke29?=
 =?iso-8859-1?Q?MoRLa1ukC9aE+X2ZiFtcdWP9rZpPc41Y++fmNRF2eNwa4oPUamWdl6YrIv?=
 =?iso-8859-1?Q?/HkSZ4mOGzsehrRVIJiL1QhYk2ncqenyJgVnKCFC8bNm0VG3JH4qeg/IZn?=
 =?iso-8859-1?Q?VCprr0MZ2MPWu8fvgfu2d2HnRvQDhre52TdSXDzSPj7pwjlo8zLYe1sJUS?=
 =?iso-8859-1?Q?cgxoR0J+EbpPU5dnhEumgGFtYfK3ylSAqFFNLiE3+aleqKpIivzeyVR9Ri?=
 =?iso-8859-1?Q?XIIXmjshQoWOSS4kNf7kUhyilYyWtCr5sCTYt/JDm5MmwBpno9IVL4M9Xp?=
 =?iso-8859-1?Q?m8Eca9Q3RL8+ro9JS7Pt8fLKFkBRiipX8dlV1z/wpqpCLWhDVOBANX29C4?=
 =?iso-8859-1?Q?/oI4O0/2dw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f34a13c8-33e2-466c-7d78-08de5270bf83
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 06:55:33.5000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sEcwhYxLRxi/2ei++qXLarUxPq9hphaLDl1z2c6EL9Q6ByKQX7olQzroMAcfw/7Z5GAV4L3Vir+uGFaubzexT8FdS+u0gZV66w8DEkXDSl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR10MB6762
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8qS4jwjUgNhIiY0AHg0sAsRAxT/TuWGUVso9VwVKqnk=;
 b=pgqGQ46YRXrh+ock1P+wHfn6Jnl0r+skGRv+uyBULFciM/d+7FR2qv6N6wWjhbKTsDtIIuKK9JV6xhNvML6qrXLa8WZlrBDMEn9bi09yitfB2IGeWkry4NZPhK4C5Wwx1wz63npVMRf4QUhvBsC0pDSX1wWaDPLb5qW8tVKSnqmVgRKVNSHRBEKUe+J8CH1kTWBgYmg0SsEypu5uK/FYNi7Y5q9oX/phCOXxJpaIFrMBY2wJyivnPNzg1BcZwI1FyIGHk2Tgjm0uGTr4AJNqVvpyysvRy3lAUoCEn0l4TlhaTaJGLPmGEhUC/ZuYRBcFEitfHBvClThAVjN/8P2eFw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=pgqGQ46Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
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
From: "Behera, VIVEK via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Behera, VIVEK" <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Urspr=FCngliche Nachricht-----
> Von: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> Gesendet: Montag, 12. Januar 2026 15:54
> An: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org
> Betreff: RE: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of inc=
orrect irq in
> igb_xsk_wakeup
>
> >-----Original Message-----
> >From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of =
Vivek
> Behera via Intel-wired-lan
> >Sent: Monday, January 12, 2026 2:04 PM
> >To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob =
E
> <jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> >Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek <vivek.behera@siemen=
s.com>
> >Subject: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of incorr=
ect irq in
> igb_xsk_wakeup
> >
> >The current implementation in the igb_xsk_wakeup expects the Rx and Tx q=
ueues
> to share the same irq. This would lead to triggering of incorrect irq in =
split irq
> configuration.
> >This patch addresses this issue which could impact environments with 2 a=
ctive cpu
> cores or when the number of queues is reduced to 2 or less
> >
> >cat /proc/interrupts | grep eno2
> > 167:          0          0          0          0 IR-PCI-MSIX-0000:08:00=
.0
> > 0-edge      eno2
> > 168:          0          0          0          0 IR-PCI-MSIX-0000:08:00=
.0
> > 1-edge      eno2-rx-0
> > 169:          0          0          0          0 IR-PCI-MSIX-0000:08:00=
.0
> > 2-edge      eno2-rx-1
> > 170:          0          0          0          0 IR-PCI-MSIX-0000:08:00=
.0
> > 3-edge      eno2-tx-0
> > 171:          0          0          0          0 IR-PCI-MSIX-0000:08:00=
.0
> > 4-edge      eno2-tx-1
> >
> >Furthermore it uses the flags input argument to trigger either rx, tx or=
 both rx and tx
> irqs as specified in the ndo_xsk_wakeup api documentation
> >
> >Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> >Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> >Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> >---
> >v1:
> https://lore.kernel.org/
> %2Fintel-wired-lan%2F20251212131454.124116-1-
> vivek.behera%40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.c
> om%7Ccb7787910aa7418c604008de51ea6e02%7C38ae3bcd95794fd4addab42e1495
> d55a%7C1%7C0%7C639038264488251701%7CUnknown%7CTWFpbGZsb3d8eyJFb
> XB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbC
> IsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DMQHlgMmrbsKJOnjBXpN3r0XDa2
> omFxwgw9eJrfypeyU%3D&reserved=3D0
> >v2:
> https://lore.kernel.org/
> %2Fintel-wired-lan%2F20251215115416.410619-1-
> vivek.behera%40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.c
> om%7Ccb7787910aa7418c604008de51ea6e02%7C38ae3bcd95794fd4addab42e1495
> d55a%7C1%7C0%7C639038264488322888%7CUnknown%7CTWFpbGZsb3d8eyJFb
> XB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbC
> IsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D6bf2asonyRHwDTgMKdsrtuuprEn
> oDSC8FH9lXaNOmcc%3D&reserved=3D0
> >v3:
> https://lore.kernel.org/
> %2Fintel-wired-lan%2F20251220114936.140473-1-
> vivek.behera%40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.c
> om%7Ccb7787910aa7418c604008de51ea6e02%7C38ae3bcd95794fd4addab42e1495
> d55a%7C1%7C0%7C639038264488406758%7CUnknown%7CTWFpbGZsb3d8eyJFb
> XB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbC
> IsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DkWSBkyPnmfekbtpSw2pbD2OMf
> 7auXWIfPWRArZuFK98%3D&reserved=3D0
> >v4:
> https://lore.kernel.org/
> %2Fintel-wired-lan%2F20251222115747.230521-1-
> vivek.behera%40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.c
> om%7Ccb7787910aa7418c604008de51ea6e02%7C38ae3bcd95794fd4addab42e1495
> d55a%7C1%7C0%7C639038264488464388%7CUnknown%7CTWFpbGZsb3d8eyJFb
> XB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbC
> IsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DNIanHqowaMuUfVsgYDEDTkY5rt
> RfD8Aj6Tnk1O6aN14%3D&reserved=3D0
> >
> >changelog:
> >v1
> >- Inital description of the Bug and fixes made in the patch
> >
> >v1 -> v2
> >- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configu=
ration
> >- Review suggestions by Aleksander: Modified sequence to complete all
> >  error checks for rx and tx before updating napi states and triggering =
irqs
> >- Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use=
 case)
> >- Added define for Tx interrupt trigger bit mask for E1000_ICS
> >
> >v2 -> v3
> >- Included applicable feedback and suggestions from igc patch
> >- Fixed logic in updating eics value when  both TX and RX need wakeup
> >
> >v3 -> v4
> >- Added comments to explain trigerring of both TX and RX with active que=
ue pairs
> >- Fixed check of xsk pools in if statement
> >
> >v4 -> v5
> >- Introduced a simplified logic for sequential check for RX and TX
> >---
> > .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
> > drivers/net/ethernet/intel/igb/igb_xsk.c      | 75 +++++++++++++++----
> > 2 files changed, 61 insertions(+), 15 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> b/drivers/net/ethernet/intel/igb/e1000_defines.h
> >index fa028928482f..9357564a2d58 100644
> >--- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> >+++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> >@@ -443,6 +443,7 @@
> > #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change *=
/
> > #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min. thresho=
ld
> */
> > #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Aserted=
 */
> >+#define E1000_ICS_TXDW      E1000_ICR_TXDW  /* Transmit desc written
> back */
> >
> > /* Extended Interrupt Cause Set */
> > /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/i=
gb/igb_xsk.c
> >index 30ce5fbb5b77..6e51b5b6f131 100644
> >--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> >+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> >@@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid,=
 u32
> flags)
> >     struct igb_adapter *adapter =3D netdev_priv(dev);
> >     struct e1000_hw *hw =3D &adapter->hw;
> >     struct igb_ring *ring;
> >+    struct igb_q_vector *q_vector;
> >+    struct napi_struct *rx_napi;
> >+    struct napi_struct *tx_napi;
> Please merge into a single line
>
Okay. I will include this in the next version
> >+    bool trigger_irq_tx =3D false;
> >+    bool trigger_irq_rx =3D false;
> Please merge into a single line
Okay. I will include this in the next version
>
> >+    u32 eics_tx =3D 0;
> >+    u32 eics_rx =3D 0;
> >     u32 eics =3D 0;
> Please merge into a single line
>
Okay. I will include this in the next version
> >
> >     if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,27 +543,65 @@ in=
t
> igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> >
> >     if (!igb_xdp_is_enabled(adapter))
> >             return -EINVAL;
> >-
> >-    if (qid >=3D adapter->num_tx_queues)
> >+    /* Check if queue_id is valid. Tx and Rx queue numbers are always s=
ame */
> >+    if (qid >=3D adapter->num_rx_queues)
> >             return -EINVAL;
> >-
> >-    ring =3D adapter->tx_ring[qid];
> >-
> >-    if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> >-            return -ENETDOWN;
> >-
> >-    if (!READ_ONCE(ring->xsk_pool))
> >+    /* Check if flags are valid */
> >+    if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
> >             return -EINVAL;
> >-
> >-    if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> >-            /* Cause software interrupt */
> >+    if (flags & XDP_WAKEUP_RX) {
> >+            /* IRQ trigger preparation for Rx */
> >+            ring =3D adapter->rx_ring[qid];
> >+            if (!READ_ONCE(ring->xsk_pool))
> >+                    return -ENXIO;
> >+            q_vector =3D ring->q_vector;
> >+            rx_napi =3D &q_vector->napi;
> >+            /* Extend the BIT mask for eics */
> >+            eics_rx =3D ring->q_vector->eims_value;
> >+            trigger_irq_rx =3D true;
> >+    }
> >+    if (flags & XDP_WAKEUP_TX) {
> >+            if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> >+            /* In queue-pair mode, rx_ring and tx_ring share the same q=
_vector,
> >+             * so a single IRQ trigger will wake both RX and TX process=
ing
> >+             */
> >+            } else {
> >+                    /* IRQ trigger preparation for Tx */
> >+                    ring =3D adapter->tx_ring[qid];
> >+                    if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flag=
s))
> >+                            return -ENETDOWN;
> >+
> >+                    if (!READ_ONCE(ring->xsk_pool))
> >+                            return -ENXIO;
> >+                    q_vector =3D ring->q_vector;
> >+                    tx_napi =3D &q_vector->napi;
> >+                    /* Extend the BIT mask for eics */
> >+                    eics_tx =3D ring->q_vector->eims_value;
> >+                    trigger_irq_tx =3D true;
> >+            }
> >+    }
> >+    /* All error checks are finished. Check and update napi states for =
rx and tx */
> >+    if (trigger_irq_rx) {
> >+            if (!napi_if_scheduled_mark_missed(rx_napi))
> >+                    eics |=3D eics_rx;
> >+    }
> Please refactor as "if (cond1 && cond2)"
Okay. I will include this in the next version
>
> >+    if (trigger_irq_tx) {
> >+            if (!napi_if_scheduled_mark_missed(tx_napi))
> >+                    eics |=3D eics_tx;
> >+    }
> Please refactor as "if (cond1 && cond2)"
> Piotr
>
> [...]
