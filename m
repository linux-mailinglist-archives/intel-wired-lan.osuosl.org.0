Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B2ECD5B09
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Dec 2025 11:59:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EDCB81775;
	Mon, 22 Dec 2025 10:59:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZZ6SeCMT7gG2; Mon, 22 Dec 2025 10:59:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8D9381778
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766401145;
	bh=+l6iG59HtQDPjKV6mDEZ+iP+U9pSpdhKLCxZ4C1tmT4=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=6JGv8YPT7wd3KxgK3rjcYIp1N/hE5jwjG+7gW9ERz0CYyf96U4nbDP5Ud3VCeqE9m
	 xmllcAMKlDfEncorF3JzieIcVNis0hsmH5cDiu42q+MPKlQCQAe4XhBIugfif1SuRr
	 UpZq2kEW10bcsVaKwUOlkWeVcDCUhqGoqn/w6V6myhKiz1J9MDvU7ReJ/PNHnsp42U
	 8BaVbG34ehtzxB+YlPIdjZ5DUaD+r3NmCit4LRbL35msgv79z2cffsguplVapMg8JY
	 0jMod7FLPxb1+42zSGK7NWtN85DuSJLes5+KPyi7rvyjVkffHOLYd7K6oKI5v6xqRU
	 pGjQ7GZ6UZsAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8D9381778;
	Mon, 22 Dec 2025 10:59:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CDD61119
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 10:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF6F76085F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 10:59:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R40uF-2LslAw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Dec 2025 10:59:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.70.65;
 helo=as8pr04cu009.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D827C6081B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D827C6081B
Received: from AS8PR04CU009.outbound.protection.outlook.com
 (mail-westeuropeazon11011065.outbound.protection.outlook.com [52.101.70.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D827C6081B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 10:59:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VVb5Fx6hIilZGdDEXYkWtLk/mrRLxQasnCqzLVtBfwN1oRvWjzLYlJtVmzrHNCw4LHdJf2o5TOhMn8IFNSAbjmN+yI+9pPS+dPFDz6yPwiNrE8WT6bfT4RQHwL3SR5pk/XuPWmh3XhGyoLYVB6A4uC5lEsliYB2AOA+5mtnf0qyEhERsTRFJqvolqJ0lAQs9Gg4/IuuiQYTLRMIC7b+ayXduQ9xOWvE9OUwRMfjxvdjVIVvcLryCysJsgHoqQBW+5r1mQ8eg3xcAWnpGnUxiF3ZUvc/x1twRGor04hOnGI8tMUvYjN+Z6jmbL5KmGo45GtEtFQVMKwXtVoapfLLtog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+l6iG59HtQDPjKV6mDEZ+iP+U9pSpdhKLCxZ4C1tmT4=;
 b=n112wL9ZQ/4WpFipclZ7JVQzAL3xUiBOESKX26wvlfYIDLoUOktykvuVUB6yD8iLUaZt9yvfGt44gcIz99O8IgX8vtq2IlNeirbsx/SodkCjWIiGlQ8l1vJC+5zaij81/Y4YKSRnXmTiNblhTwkifBVujF562O1nCSKGiDi1H9Q3tLYLWuAB++MaxYgQ+Lb1LRZ/B+F4XFP/Ly3uTaYFvYtl3NU3xN8MPVKE+jNpFsWLAg2OZxnhNVu7mM2sFtc/5I2Yk+X4Eie13jZS7mgG8xV1U92sZGKOv/DMVVvR/D6BIcI29PxvGaXTZ+n4pQJirfTPOIQfIm5I6tyIdUiOVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by DU0PR10MB6875.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:464::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Mon, 22 Dec
 2025 10:58:57 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 10:58:56 +0000
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHccaa+rve8VX5aPkKGb2s/ECPCObUtRpUAgAAInCCAAB45gIAAEr2g
Date: Mon, 22 Dec 2025 10:58:56 +0000
Message-ID: <AS1PR10MB53927310D6972035AA5E27E88FB4A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20251220114936.140473-1-vivek.behera@siemens.com>
 <IA3PR11MB898607BDEF754C95744048ACE5B4A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <AS1PR10MB539248A2C18B9B9EF54957038FB4A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <IA3PR11MB89865509D618FEA7EDC11DF5E5B4A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89865509D618FEA7EDC11DF5E5B4A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=2b211175-bfbe-4042-b434-b753fd4a9186;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-22T08:01:59Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|DU0PR10MB6875:EE_
x-ms-office365-filtering-correlation-id: 2733a3f3-8464-4225-fafc-08de41491aa0
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|13003099007|38070700021|921020; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?aGO2YIom4Ctu1myFWaPft5qIYnDMWO2hocuom0iHDsKmmyKW5oeZopE3QL?=
 =?iso-8859-1?Q?SBqxHrSRWYu8YBUzjjIlap9QplP/BdwXUoAr20+hc55W4cMfT3Fob3lCEr?=
 =?iso-8859-1?Q?zVWmKFcunEVdVYIvfZEUOVO7Ti2n2FVq3vn2TzaD0RMHZz2MBALsmNB9xt?=
 =?iso-8859-1?Q?k+YX+wrP4hKeJJeO8Bw3bxTBBQHRpJ9IR07B8faK4+8QOZtpxn+0d9RzpI?=
 =?iso-8859-1?Q?p8nG9sZ17hLrv5G5qUKYtok8CZjOVcXRFl8kM+2Hn7H93qc5pND8JAMx/3?=
 =?iso-8859-1?Q?Uoh3h1OJh///KXeUY96Qf4ncdXF0GP6je0glw1muiWaNZsraJ0N6uASHfV?=
 =?iso-8859-1?Q?sM1PMQdDV8nzNwMxrUy9fa2Jt8HW/iVVFEBwuPJXbanY3kGz29QMuth6oZ?=
 =?iso-8859-1?Q?VerImmENVGYGqTKOHPPhn3vkjDvdC0VRRkddJqZ+GDQoS2K88ZsUF1ydIV?=
 =?iso-8859-1?Q?ZSr6c6OkND953uGU4K1tRwqkej8tmvooKjdoUqnE5ZFN2psZapJvklniVY?=
 =?iso-8859-1?Q?IGZlv3BCWKuOzZkA5jFCzMHxIlHhI7F7l0Z1MIictymD7+89UBHBeQoOtK?=
 =?iso-8859-1?Q?lIGcwJELtvW4Ixt9DDXlhA5w8ZpyqaG2yL/L5ePXxe+jlaIewN4LVSSHLQ?=
 =?iso-8859-1?Q?rj7W16Opp5QZ/k+uPGR2E7jywN3l40jB2U5NW0xRadyAWS6duG4uoVrmd6?=
 =?iso-8859-1?Q?CEnlqV0o+kMOY7Z+5nK6TJr9dVLpaQ5BFScZKWFiV7ieOyPn79B2cKjW7e?=
 =?iso-8859-1?Q?e/+THGP/3z609UBiV3TwSbUyLewQzqhwnyEsnUIXbzL4YQEfN1LgXE3lEp?=
 =?iso-8859-1?Q?2DbwIqbM5Bxg/qf/Lu9Mgtc8a3KBj8AgCYSR7h8Ftoe8/aXLPSopSOzyUO?=
 =?iso-8859-1?Q?d3XHMTiWU9CvRE0NrbLj7/cmLIxmaUhOpeBD8fVfM29c0BH3BiRBUwYnuM?=
 =?iso-8859-1?Q?IGXmp7xAAzhyzqSKuJNrGDmVF/qt4UqtIhHsrb7SVSg+9zjiy7H/I7EHNt?=
 =?iso-8859-1?Q?qfx4y7IRqY6YnM5e54w1eW9bzZK6jE0N+j15S6CyKxV5ZQKeR76L9aWyv5?=
 =?iso-8859-1?Q?Da3I2rGFkNYnTcgvqlU76ZET4oSMT1DrO7OgCFBD/osjVhoI1dHxS7aMvH?=
 =?iso-8859-1?Q?2Zty81NQKwi0zuon+F95/G+g8BWyY8eFgCxigKU98W5vwZPFj/jBaVjzR5?=
 =?iso-8859-1?Q?m74ggxzcwdw8zZfBvNZHsOgvhO0VIrI/iwBX8FG4oxACSg0gvcfWxUu+gY?=
 =?iso-8859-1?Q?tvQH+N8gVi/5TOMUKL8hAof8dVR95gWFt/j67IUvCQt2bE8a2NVXFOjboa?=
 =?iso-8859-1?Q?9munamQld4gBcK5YrnmbiKiL7aocbwBkR8qhrxbvfKNDjCrPSDdQEepBzi?=
 =?iso-8859-1?Q?Tqgm8hJudsoGHntc+5NswoMSXvro+jcDnatl/+Xrh6C9uh4h1lVSdBxKUC?=
 =?iso-8859-1?Q?/9ck0qZOyOxK7BlNdlW/0hkjoZtsTfbMhUApL96lS164aK0neqJHboU5VU?=
 =?iso-8859-1?Q?CF5zAmLgRYj/OyhPoZ2TZq/UYT0SAVzMEv8mly5uIAs3gwbGGO4oKXN/P7?=
 =?iso-8859-1?Q?78WYthg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(13003099007)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?LXHhPwHwxMdr1+41rmXjQtLsqvIXj9Y7psiqUokV+8pqL3SjHrKrGtobX2?=
 =?iso-8859-1?Q?NaiDcAo7iAp0YZswnUZalMHBmg6EUl3Zad7kVQmcS1lrHh4tOsYy0CpwxZ?=
 =?iso-8859-1?Q?4x13Kuy4gCX/fiJcKFnbfcu3BF5ep8NdDubSaw0WsZwcmJbLPEoQGyzbCZ?=
 =?iso-8859-1?Q?Ox7RRimTbQ5ehhJ6ZWDNqVYRbBPO/qKFEzRSr9ldhQY8CXSKzyO15nQFNi?=
 =?iso-8859-1?Q?YzQtl4x8/YWusE8OcQ5+99G50d7iAwUIKHtlespowDe6ickDaW4mL//6nZ?=
 =?iso-8859-1?Q?jyJKfXgindggI9qQ7a6KQhjrmKotzPLhp+rkKD5FVQAkv/R8xd3A/hWuy0?=
 =?iso-8859-1?Q?vtOECgOx3Tj9BovSeUNUlx5ikehfxt6bLwDAWA+Rna1xMCN2YUKH4rZtF0?=
 =?iso-8859-1?Q?KXgJKKPtq7ZEbkxAkXY4egTqw0nuKldZMZtmV3G5FQE6i6Jq78+RNsC8oE?=
 =?iso-8859-1?Q?ePPgK+q3IUTbRATGRw8p6vGR63I6Ays4x3HNkmhOo/KCYUqO6gkdoEv4hh?=
 =?iso-8859-1?Q?63fDP9fdy2/3n7TWruG2JciWcJaOOWp2ojYFsEoTPs2cf5AmJ5dMN8Z0qi?=
 =?iso-8859-1?Q?InsNZjitrSRARCoNwnCtpw5TsDUY0i2GqW9/IBfQDzaNECHh5TIk40Y2i1?=
 =?iso-8859-1?Q?3picXJGOgENMKZEFA97tmmBCjjtoftq2rpExlxeYQ8mKi1VOJPXMerLRIY?=
 =?iso-8859-1?Q?jUSgguNMR8z8KwqZnGTw90iys7SBUBpdQT2dlSiNud4NQKu+M6Sr8lN1T2?=
 =?iso-8859-1?Q?PKVq1UKqeDfNaiV6cwSivQSDi4Lv13OuXxY06Y7hUFabQccEZQUJmQnRXv?=
 =?iso-8859-1?Q?ZcpC1nzGCEATQn/2EwgDwDd5q7ElOaTwriDx3oHkRycaSChl4sR5a9bBlk?=
 =?iso-8859-1?Q?nIvV8O2XaERzYXsEiNHNpCmjabsmT5FoZj78i9th/XrYWd+LAmmqy3P9dL?=
 =?iso-8859-1?Q?/NA/QudquG3hoGQcvqS++yi06wh7sAyjNof4ipcXXRwAXilrwqTbvC1Oyr?=
 =?iso-8859-1?Q?FPI/3DvdpOrUWcRXb9g/gtnDJYJswaOkR4wriK7OxWC9ibNWKFXhj5wv0F?=
 =?iso-8859-1?Q?/VUKq+J/nIs2pjn9TLN6bhQyowTfNOY3F3LoLmvLlAk8oQMxGYjXaY3m9F?=
 =?iso-8859-1?Q?cXFIFG2G9moJV4x/IuKwU1VtKTs/lseNSAO7pnV2+lFEukHAiVJFrJT/tb?=
 =?iso-8859-1?Q?/96HMY/OQ9eQqRkbFsxUHgyH0p9KNhq6s7+cdIlSi8OkqVUEm8av0PF2Ht?=
 =?iso-8859-1?Q?MOTuz2F5RjK14YwHcCyrDBJDH3kVCOFLxp7h0LFdOG22bubFrGdJJEMOQ8?=
 =?iso-8859-1?Q?qTO5BTsGpA7cIUjDiQZGHiTxHwlOE6kwwq6VqYEHrWa/SIiJ3SBFiT9mqf?=
 =?iso-8859-1?Q?QW7GygiagWOyq77wAO5eDpA/gRNp/hV8k1IUSfwW6j90JE8OEEvoNg7T5B?=
 =?iso-8859-1?Q?q6f+yD58O8VePmTnCt7GjPichy+bycmQZOfFiWtLMHc8/XcVGIXGOKyye/?=
 =?iso-8859-1?Q?iHSw/SrJweV7S0HNc1y3uLFdUJSxph47IyqtoKAViu4scSme0LeZPX1XEK?=
 =?iso-8859-1?Q?a10LPLtrVz4kxYuQe5kmmPfbAfYqaSVujLN77ZJI4jXqPHunYHFmibhkem?=
 =?iso-8859-1?Q?xN+pZogaRo4oQ4oI9kyPJ5xW+eg/k1wienFkAYiOhVxebjeQFLtVrPFnut?=
 =?iso-8859-1?Q?H6772DHmQybdyMDfFcQvs+OLA4TPLiCsd5sHCRoV0asHLUQCzwWWXy32Gj?=
 =?iso-8859-1?Q?pTAcqlfVWURsAxt4z2qC1eJyuIG0ds0Rvwe7GAq6Ml/zdMrFgZi56uOtYy?=
 =?iso-8859-1?Q?2oY8mTZAMQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2733a3f3-8464-4225-fafc-08de41491aa0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2025 10:58:56.7789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gwkrh9DpD/jWTOnrcCHwgr57sQZIYGjWLFWlwd6WySwib9WFuzj4Jv2g8ZNIIkYIGyvGATPyvFH04U7TZhb+0Pyye5vpyo3Z6Mc7eP1Fa+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB6875
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+l6iG59HtQDPjKV6mDEZ+iP+U9pSpdhKLCxZ4C1tmT4=;
 b=jbIDTxy7syPbrBgx2wjICpg49UZ9PMIiQc7fZeKSyK/Q/oRbDhFjYfCnlZ9r8Oy0To2FDyesMaIDNOV6dAAO15eELXH4iTM1DYrq7HMY33OrhW1aKu3Du3t7ilO+cy/ToMZ/B8+RS5nZaT5TW2jjirFDzWzs1mbEChDQXLs6SWdGUXC6Vn0ZZdx9etvDyynV6zYhGkG3+MCrVGfZNSzoxq3khnsAaZi1XHIB9G/OnS1pVDq5sXEKCRRMdM7Zt9xE6h5yJkEjfh8CD4SviFTqLoV+EUcaPXcq2AnbEApj8OlpPMobjYDxg5OsCljM//SiXenb+IFLg0SQqzkyn2Uufg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=jbIDTxy7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igb: Fix trigger of
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
> Von: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Gesendet: Montag, 22. Dezember 2025 10:50
> An: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>; Keller=
,
> Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org
> Betreff: RE: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in igb_=
xsk_wakeup
>=20
>=20
>=20
> > -----Original Message-----
> > From: Behera, VIVEK <vivek.behera@siemens.com>
> > Sent: Monday, December 22, 2025 9:21 AM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> > Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > kurt@linutronix.de
> > Cc: intel-wired-lan@lists.osuosl.org
> > Subject: AW: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in
> > igb_xsk_wakeup
> >
> >
> >
> > > -----Urspr=FCngliche Nachricht-----
> > > Von: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > > Gesendet: Montag, 22. Dezember 2025 08:31
> > > An: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>;
> > > Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > > kurt@linutronix.de
> > > Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek (DI FA DSP ICC
> > > PRC1) <vivek.behera@siemens.com>
> > > Betreff: RE: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in
> > > igb_xsk_wakeup
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Vivek Behera <vivek.behera@siemens.com>
> > > > Sent: Saturday, December 20, 2025 12:50 PM
> > > > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> > > > Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > > > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > > > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > > > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > > > kurt@linutronix.de
> > > > Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek
> > > > <vivek.behera@siemens.com>
> > > > Subject: [PATCH iwl-net v3] igb: Fix trigger of incorrect irq in
> > > > igb_xsk_wakeup
> > > >
> > > > The current implementation in the igb_xsk_wakeup expects the Rx
> > and
> > > > Tx queues to share the same irq. This would lead to triggering of
> > > > incorrect irq in split irq configuration.
> > > > This patch addresses this issue which could impact environments
> > with
> > > > 2 active cpu cores or when the number of queues is reduced to 2 or
> > > > less
> > > >
> > > > cat /proc/interrupts | grep eno2
> > > >  167:          0          0          0          0 IR-PCI-MSIX-
> > > > 0000:08:00.0
> > > >  0-edge      eno2
> > > >  168:          0          0          0          0 IR-PCI-MSIX-
> > > > 0000:08:00.0
> > > >  1-edge      eno2-rx-0
> > > >  169:          0          0          0          0 IR-PCI-MSIX-
> > > > 0000:08:00.0
> > > >  2-edge      eno2-rx-1
> > > >  170:          0          0          0          0 IR-PCI-MSIX-
> > > > 0000:08:00.0
> > > >  3-edge      eno2-tx-0
> > > >  171:          0          0          0          0 IR-PCI-MSIX-
> > > > 0000:08:00.0
> > > >  4-edge      eno2-tx-1
> > > >
> > > > Furthermore it uses the flags input argument to trigger either rx,
> > > > tx or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > > > documentation
> > > >
> > > > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and
> > > > helpers")
> > > > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > > >
> > > > ---
> > > > v1:
> > > >
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flo%=
2
> >
> F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Cefe284bc96394ac4faec08
> de
> >
> 413f8258%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C6390199381861
> 762
> >
> 35%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuM
> DAwMCI
> >
> sIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdat
> a=3Ds
> > 1ibDomK94wJm36PXD5zZI30WDRPX5uvCN9cs%2FCjAbE%3D&reserved=3D0
> > > > re
> > > > .kernel.org%2Fintel-wired-lan%2F20251212131454.124116-1-
> > &data=3D05%7C0
> > > > 2%
> > > >
> > >
> >
> 7Cvivek.behera%40siemens.com%7C164e180ed5e443da63c408de412c1b1f%7C38a
> > > e
> > > >
> > >
> 3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639019854838314101%7CUnknow
> > > n%7C
> > > >
> > >
> TWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4
> > > zMi
> > > >
> > >
> IsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D95%2FeVnmg9
> > > JiwCd
> > > > oGd3sd441VWbvXi%2FBYFTtbW9ddXfA%3D&reserved=3D0
> > > > vivek.behera@siemens.com/
> > > > v2:
> > > >
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flo%=
2
> >
> F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Cefe284bc96394ac4faec08
> de
> >
> 413f8258%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C6390199381862
> 000
> >
> 95%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuM
> DAwMCI
> >
> sIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdat
> a=3DB
> > W0eXA2EA7t8cu1Rzshdn8MngOgwlNPu5UcXNbrTch8%3D&reserved=3D0
> > > > re
> > > > .kernel.org%2Fintel-wired-lan%2F20251215115416.410619-1-
> > &data=3D05%7C0
> > > > 2%
> > > >
> > >
> >
> 7Cvivek.behera%40siemens.com%7C164e180ed5e443da63c408de412c1b1f%7C38a
> > > e
> > > >
> > >
> 3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639019854838342225%7CUnknow
> > > n%7C
> > > >
> > >
> TWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4
> > > zMi
> > > >
> > >
> IsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DniEnO3XufusM
> > > bVGs
> > > > l6QO0mj3yWC1Zr3dl5azIYRqs24%3D&reserved=3D0
> > > > vivek.behera@siemens.com/
> > > >
> > > > changelog:
> > > > v1
> > > > - Inital description of the Bug and fixes made in the patch
> > > >
> > > > v1 -> v2
> > > > - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> > > > configuration
> > > > - Review by Aleksander: Modified sequence to complete all error
> > > > checks for rx and tx
> > > >   before updating napi states and triggering irqs
> > > > - Corrected trigger of TX and RX interrupts over E1000_ICS (non
> > msix
> > > > use case)
> > > > - Added define for Tx interrupt trigger bit mask for E1000_ICS
> > > >
> > > > v2 -> v3
> > > > - Included applicable feedback and suggestions from igc patch
> > > > - Fixed logic in updating eics value when  both TX and RX need
> > > > wakeup
> > > > ---
> > > >  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
> > > >  drivers/net/ethernet/intel/igb/igb_xsk.c      | 88
> > +++++++++++++++++-
> > > > -
> > > >  2 files changed, 81 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > index fa028928482f..9357564a2d58 100644
> > > > --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > @@ -443,6 +443,7 @@
> > > >  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status
> > Change
> > > > */
> > > >  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min.
> > > > threshold */
> > > >  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset
> > > > Aserted */
> > > > +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc
> > > > written back */
> > > >
> > > >  /* Extended Interrupt Cause Set */
> > > >  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> > > > a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > index 30ce5fbb5b77..3dbc2573b47a 100644
> > > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > @@ -529,6 +529,7 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> > > > qid, u32 flags)
> > > >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> > > >  	struct e1000_hw *hw =3D &adapter->hw;
> > > >  	struct igb_ring *ring;
> > > > +	struct igb_q_vector *q_vector;
> > > >  	u32 eics =3D 0;
> > > >
> > > >  	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,14 +537,80
> > @@
> > > > int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> > > >
> > > >  	if (!igb_xdp_is_enabled(adapter))
> > > >  		return -EINVAL;
> > > > -
> > > > -	if (qid >=3D adapter->num_tx_queues)
> > > > +	/* Check if queue_id is valid. Tx and Rx queue numbers are
> > > > always same */
> > > > +	if (qid >=3D adapter->num_rx_queues)
> > > >  		return -EINVAL;
> > > >
> > > > -	ring =3D adapter->tx_ring[qid];
> > > > -
> > > > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > > -		return -ENETDOWN;
> > > > +	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> > > > +		/* If both TX and RX need to be woken up check if queue
> > > > pairs are active */
> > > > +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> > > > +			/* Extract ring params from Rx */
> > > > +			ring =3D adapter->rx_ring[qid];
> > > > +		} else {
> > > > +			/* Two irqs for Rx AND Tx need to be triggered */
> > > > +			struct napi_struct *rx_napi;
> > > > +			struct napi_struct *tx_napi;
> > > > +			bool trigger_irq_tx =3D false;
> > > > +			bool trigger_irq_rx =3D false;
> > > > +			u32 eics_tx =3D 0;
> > > > +			u32 eics_rx =3D 0;
> > > > +			/* IRQ trigger preparation for Rx */
> > > > +			ring =3D adapter->rx_ring[qid];
> > > > +			if (!ring->xsk_pool)
> > > > +				return -ENXIO;
> > > When IGB_FLAG_QUEUE_PAIRS is set, the code sets ring =3D
> > > adapter->rx_ring[qid] and then falls through to the common path (if
> > (!READ_ONCE(ring->xsk_pool))).
> > > However, the common path only handles a single NAPI and single IRQ
> > trigger.
> > > In queue-pair mode, RX and TX share the same q_vector/IRQ, so
> > > triggering only one direction might not fully satisfy the
> > > XDP_WAKEUP_RX | XDP_WAKEUP_TX contract.
> > > The logic appears incomplete for the queue-pair case when both flags
> > are set.
> >
> > Okay. According to my understanding when the queue pairs are activated
> > one q_vector is used for the rx and tx. And this napi instance is
> > saved in the common q_vector. Below is the example of napi threads
> > with queue pairs enabled for the 4 rx-tx queue pairs ps aux | grep
> > eno2
> > root         561  0.0  0.0      0     0 ?        S    07:44   0:00
> > [irq/162-eno2]
> > root         565  0.0  0.0      0     0 ?        S    07:44   0:00
> > [irq/163-eno2-TxRx-0]
> > root         566  0.0  0.0      0     0 ?        S    07:44   0:00
> > [irq/164-eno2-TxRx-1]
> > root         567  0.0  0.0      0     0 ?        S    07:44   0:00
> > [irq/165-eno2-TxRx-2]
> > root         568  0.0  0.0      0     0 ?        S    07:44   0:00
> > [irq/166-eno2-TxRx-3]
> > root        1247  0.0  0.0      0     0 ?        S    09:08   0:00
> > [napi/eno2-8197]
> > root        1248  0.0  0.0      0     0 ?        S    09:08   0:00
> > [napi/eno2-8196]
> > root        1249  0.0  0.0      0     0 ?        S    09:08   0:00
> > [napi/eno2-8195]
> > root        1250  0.0  0.0      0     0 ?        S    09:08   0:00
> > [napi/eno2-8194]
> >
> > So in my understanding a single q_vector and a single napi is all that
> > is needed to trigger both the rx and tx. Essentially with the queue
> > pairs enabled irrespective of the flags we will end up triggering a
> > single interrupt for the associated queue pair and have the common
> > napi to deal with.
> >
> > Is this not correct?
> You are right.
> The /proc/interrupts output confirms this with the eno2-TxRx-N naming pat=
tern
> showing combined IRQ handling.
> Perhaps adding a comment in the code would make this clearer?
> /* In queue-pair mode, rx_ring and tx_ring share the same q_vector,
>  * so a single IRQ trigger will wake both RX and TX processing  */
>=20
Yes. I agree the comment would make ii clearer. I would include it in the=20
next version

Regards

Vivek
> With the best regards
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> > >
> > > > +			q_vector =3D ring->q_vector;
> > > > +			rx_napi  =3D &q_vector->napi;
> > > > +			/* Extend the BIT mask for eics */
> > > > +			eics_rx =3D ring->q_vector->eims_value;
> > > > +
> > > > +			/* IRQ trigger preparation for Tx */
> > > > +			ring =3D adapter->tx_ring[qid];
> > > > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> > > > >flags))
> > > > +				return -ENETDOWN;
> > > > +
> > > > +			if (!ring->xsk_pool)
> > > Shouldn't it be: !READ_ONCE(ring->xsk_pool))  ?
> > Yes. indeed
> > >
> > > > +				return -ENXIO;
> > > > +			q_vector =3D ring->q_vector;
> > >
> > > ...
> > >
> > > > --
> > > > 2.34.1

