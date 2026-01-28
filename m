Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDXfDdxjemmB5gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 20:30:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC5FA8294
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 20:30:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E31A409C8;
	Wed, 28 Jan 2026 19:30:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HF_iBJ4uPL_2; Wed, 28 Jan 2026 19:30:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD729409BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769628632;
	bh=luoOYBWGHwyBbmCTHiDg7YuAiGqk+x3iEqu7YgHFYDQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iqb0oUhTmWw/0OsSQAcrNo0bqztL4gAx+/PoOgDB/N0PFuimQWCSL9nBDWprhfPnS
	 lW9yZBMwabS2H1yQxz9wUEpRHcTGIhoAsgyGG7zrnlLwHqmtZUnUrI67jGzPIMGv3t
	 zn3enGupdAbhMS5P3h31oLPVEYXa2W2tx8hQbCrrtAk+LmQTa1QrwBgcKD4Qg73XpJ
	 mvVpIol8dgKffF7D1c20NUAy7bTIWeOx6/lrQ77ToAsHg0FLxY4UqvGRh2SbZjNZLg
	 YlqpV4fwj9GpeyqqsbtgzXIjazoWoWvpi0a5WvhkmeAxitSCofsRsM7ouHHKRNAFB6
	 7+73kQoJ0sRFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD729409BB;
	Wed, 28 Jan 2026 19:30:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A27C0118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 19:30:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 85C2F821CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 19:30:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nJrLOFszBTa2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 19:30:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8A76D82177
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A76D82177
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A76D82177
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 19:30:30 +0000 (UTC)
X-CSE-ConnectionGUID: wsS2otPtQru0lrMjyWO/RQ==
X-CSE-MsgGUID: fki0THnNSvq7avjJDDA/0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70569858"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70569858"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 11:30:29 -0800
X-CSE-ConnectionGUID: i5c6qlvgTva1G6btVtW0+w==
X-CSE-MsgGUID: NFKC6GLISE2VPMrBGScCHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208380231"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 11:30:30 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 11:30:28 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 11:30:28 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.47) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 11:30:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nF5kpPT/6SllHKbcEBDVpweu3hwmUNDTSL0K8OGODGzHW68DTA+ttFOeRmtotpdwMTHKMXzu1gvg1GDqE3KQdd76fO1zoAr4T9tKnOkyRGeyl6u7s4WiIqnBKDT04W9OOWjm4nRKIFiXi/MjO3THJ2x9WxOHtKl1eRm2Gxp2kuuyszlQdty0Rj8xBK2TihwrIxE4xzS+OTs0eRR3k2tUAQmNBjbCqqbzfpRaKTC1moW68QPfpw7jcW+fau37VzAL5gK8yQzsU88MlXJlwqfH9OONEnrSSb6Bg54ypvV7z+NHdq39ThDI5KvLMHfohxsREDx8JlJiOGHpqyz0iNKKAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=luoOYBWGHwyBbmCTHiDg7YuAiGqk+x3iEqu7YgHFYDQ=;
 b=bCM7V6bta3q9xLQFd0zaGe5anHJTaizs6gwYMuTJZP5oYC6RkXVlGWqKwlKA5AMzRg+8UR0r/TGMUKaCT9Vdm9pG9jHtHpXLCZkeCYAmFpBB4U49ehTEctARQICD5FLt7Dvg3UeDuj4yEt8JVhNXJDdfv3SCFttg6shKrvXbQWCBnxwf8Rb9/j9mbnf8dkfPFnF/OzIYT+RN8kOyLIenzvACnL5Np3dhfx+gAlzmOHsQ4zrov0dL8eyb7T+hXNKgAZfEyX34BJJgk4rGlUOa1paPureRbrxeYCjgLCt2NiySTHEfKfA3u4yLjVZKcO/TR8dM6FAhey4CKTAlG91QcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by DS0PR11MB6471.namprd11.prod.outlook.com (2603:10b6:8:c1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 19:30:21 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3%6]) with mapi id 15.20.9564.006; Wed, 28 Jan 2026
 19:30:21 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix missing TX timestamps
 interrupts on E825 devices
Thread-Index: AQHcX4DX04vhQUCrBUuYe60yAyBg97VoVP6w
Date: Wed, 28 Jan 2026 19:30:21 +0000
Message-ID: <PH0PR11MB75223BA2F0B80DBE1790B5CAA091A@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20251127092558.914981-1-grzegorz.nitka@intel.com>
In-Reply-To: <20251127092558.914981-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|DS0PR11MB6471:EE_
x-ms-office365-filtering-correlation-id: 0160ee91-516b-4c3c-a555-08de5ea3ad5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?SNfPD6JM4qZHpwiBhRDSyZbkXOYLklr9TYz2v00z8V/HrBhUTKFURR8hT10P?=
 =?us-ascii?Q?f7txTfIICLtQo4l3W8sKmGEcyET3T/8riDGGQOuBlJBK56VwHGC3+hztZoo6?=
 =?us-ascii?Q?+hPH4cNsSLaOvSKCepBphDcBK1pnr+c/tce5ar/25ZJKfDZev5DUbYs1BRzY?=
 =?us-ascii?Q?hvgN71a1LgDDtgtG83bIL9Ef/oiYj+zfGQwdPdu81TLDv0u63La9DlP8iV52?=
 =?us-ascii?Q?hSCpmBnGspBxmSC8jDq6gOFwPxYpCeuk3zpAyhJkHYiFnqSFwn7oDZpzm0nM?=
 =?us-ascii?Q?MfXBJlBwlbPWmmIRJMlFqK3R+bV2tYTh9lCteZgHUdjemJqxhgVwcx2V8Mjf?=
 =?us-ascii?Q?C/AJoKPhR9mWmor+4jigIFjk27GbWPK3e2k3k6SeIQhfd9jBW/LHMr2C6k+S?=
 =?us-ascii?Q?QNnmuXv8APd3/Kz8/ysYthOHmu8CqtOkGC5g3HFzGDdhql0/ZnoKIE2pG6Jw?=
 =?us-ascii?Q?Dhe4KAJxF5yl+zZVP4+QXnsVPKGQRGG+PxP9MZTQXLl56Niy78wUnXuEhAAV?=
 =?us-ascii?Q?eks861R5KfbKeUzov15gPFzQ3rAQjv4u+SEhUeOFDzux1WGGowrEDOxM0eqm?=
 =?us-ascii?Q?II1LYqyo0vOr0cRlcAaAADqYuTj3cbyVKotyWPGWypO93xzokg5tEkxVKqNL?=
 =?us-ascii?Q?RZNLn9Z7mSsoEN9BWCqf1kiyfnnqMoyG8jWt91+ATc1lU+HQifW13P0DhXSi?=
 =?us-ascii?Q?TXd5U+Uiw1ZI2X9KyVJ6YvDLoW0BXVIAvvvaQcFf1U+FrjSE7XSJMPmMO4/q?=
 =?us-ascii?Q?jEpiTVpvLQWPd/kvk7t41ZW5koZKkybtibMlkRD0gwXLWAzbyz7LbNkh0ypE?=
 =?us-ascii?Q?3tJNfKb3JON07LYbrsdz9ds9Po4e7hGtwOFFegAGBVfd754CFa0M6EmXgRuI?=
 =?us-ascii?Q?q51fQa1S2W13rZia37xjalgAiwNJm8uA10Xd605hzz5HzporIlPhYTnvML6W?=
 =?us-ascii?Q?R8R4v7Jul4rmMNNzuHjf+tbCCa8qqZ0Z2QHTizd4AMQgFztYflwCc4Gkcrz9?=
 =?us-ascii?Q?xLRGxr9qqd672q5YBQvoTrqiJh546C3qk1s01Pwhqk1b3g9tfhLslUFrLcul?=
 =?us-ascii?Q?NcbYwefSmj44OefD7/fZba9z6cKdxovZeOK3ezTJHHK/h2N5HbpDOu/gsx8f?=
 =?us-ascii?Q?CjMNMeiPwvB6w6jGVV4qedf/1mGjhJE0rDHw7bVnHa6i62DS6+rssvc0ul7p?=
 =?us-ascii?Q?zyCGyn0E5fvFr9nE01DZ4jy7o3j9lt6B+vlsB4AYrknUUOgFJbsNeOgHYKbq?=
 =?us-ascii?Q?87qJTm3JZ/5xIondjlvTVZ5l25eNLIxzLGQtSERRHx/y7m53Ojl9Tf64JeZG?=
 =?us-ascii?Q?YAWKdMjryPNEs7syP2yEvfTK1smHPG9LuJ4B074k+6D50r/9CoYwQcrDciXD?=
 =?us-ascii?Q?skEvWwgPS1B0VlNly+H+CM9hL66hFJk5ICPfa8ta/x3qRPM9xmaiUzV3sj0g?=
 =?us-ascii?Q?/iQXyAQDhxRiZAL/sL4NtPS7OU7/CekzqxY1mYiC91aRhbbo8C7VjNIg4ogT?=
 =?us-ascii?Q?zkhzUMUupUaKlI+/bRw3GIuKqQLjtobIyLi4SPorfU8UQnlgsdzG9gwCTLQx?=
 =?us-ascii?Q?9pllyW0VgOWwiijp7s4kGh0U0tcJKC+n99CdFbV62WvEDGXoAXRTC53ogDlP?=
 =?us-ascii?Q?Z3Gu4K0K+JDH+/+56N0MQyY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?N1hFZKpNjywO+Cn1ZiEGoc7oxlPTDM4P6a+IrkONoUSLFEeky//pmd09Igfq?=
 =?us-ascii?Q?5a4JnVID2jDWqJeEaTen1ejg8y1eTack7sG0FDpPbG2Cz1xRRqYazxeP1fEs?=
 =?us-ascii?Q?TThK6w18EwPZrLKER9EcbsWAuray7k6ay+92hkbP0UqzX8KICzpKUdUrOTxb?=
 =?us-ascii?Q?uDkzK93bKnmruHFeLxGQyrMQM5ZoPoPAjVKyyoAcbGACsKZEZetwmqmTdBlB?=
 =?us-ascii?Q?gHx7ZLok+m1xTSJLL5DG7dXqYaTq5r3JInlyqN9EnnjeOHa0pA/b+BFItTuE?=
 =?us-ascii?Q?FbU1ySn20ggP8mxJozN99yGnJb62yjuxovf0ch9pxuZzDXJ6Mo81t92o0kZp?=
 =?us-ascii?Q?gHUtKeduURiCMJEeoynTvghdCbs6cIS/nxfV+QmS8ybxM/Aws8Eo7JSYuvsb?=
 =?us-ascii?Q?H9oKWezZOvM1vXvjLGYaTZG7LyKzLx+fKCvaLZ2/werYTNqTXeTIJ+0xsXza?=
 =?us-ascii?Q?CBy9kZenda5amdrfzbkNTBvrxkPVqDjC4Es/0i4UjtTv1Y4oMnpra0tdImCc?=
 =?us-ascii?Q?t0S9W3LU8tXip6b12jOgI+7tEpb0lEs/AWLho3F5aU4h12iNa+WWuyP1vMU0?=
 =?us-ascii?Q?Y47/4rwNxMjkVxYcoINqgSCJqDRcuXNe1906YoEBmshPlic5v0ZiyKXUIK6T?=
 =?us-ascii?Q?Pm22lFwljLg+W+aKk4cFO/ktrLEKVJN9bnuww2VEsY9m6sMhxE3cE+La5dIa?=
 =?us-ascii?Q?JUmmTj1HOjO83YAcuOuNlQfvbOPKOTkhLctJZ31QmtPU3meLNTIiuqZ0ACG0?=
 =?us-ascii?Q?0egp6VpoQ9NIgg6KekDtlMgw+PAgnJ2WJKgfUNmoZiTKz5uuqXtuNW4ar1ro?=
 =?us-ascii?Q?9nP7XWFKsLgJ3DO8kQx0xFbYojFUCncg5DybPrp3nT1U1v/pCApeexvcxmyp?=
 =?us-ascii?Q?XqGVBeEjooOg/8cYqugG3Mh2wE5L00PPE9fMFEQ2Zk9GauUK1yQqzVPFbrbH?=
 =?us-ascii?Q?AcceOxsnW2T8gj4LBeC5LY0g2Np/DXuG6G54bvw/w9kjrdNhgX0ULrwJU4KC?=
 =?us-ascii?Q?yUqYU1V652/tcCroC19BltHEfrPOCGZ7Dh9b/cMfkWtblEWICCYoGMexYxHb?=
 =?us-ascii?Q?s/gjoqxVSQR3DynrrOxxvTsbNGjx77yxtiGvpEa/PWfNzeaaLVea4zX6xwK5?=
 =?us-ascii?Q?N+PYV5vpeagZaVjS5IoRNtERUVwiWSfAAbqJkaIMaHtNXf7Oj05KNRxm1M41?=
 =?us-ascii?Q?mXKRxXtAb1W/nEaiYDJ59B9kJ7X0lzaFY3Tp8VV26wvd4yFpnKGD9G68ZPTL?=
 =?us-ascii?Q?3dZWSFY7JBDpW0VJlUn4V2LONPQCLfxlsNL8+g/9yHjy9Y+aGfX0XFuJL7n0?=
 =?us-ascii?Q?5qkCs70CkVqp4jKZJODiZzyprW+M/uk9bkX7Jf7A91MtpUzW3RgBpdVG7Jem?=
 =?us-ascii?Q?oCEO5H9FVvxxJFGxfxXEEHZic5x5bCLSDLKZ4lUM4WxuzARohEIggS6dtKYu?=
 =?us-ascii?Q?vh3xnCl+F7tIxfXyAE8lIJSWjCc95EeUtKbVDVYT2KbnpKyEHbsQfx6lqjv9?=
 =?us-ascii?Q?0LbMQSuKKPF+ylHdA+1Lzn+E4QPJWvJ+8lU2Mhih7Q8EprN1ELzRZPmj0Y/o?=
 =?us-ascii?Q?s/be9CKHjq4P0Jl4Hn1cfO6gWCVwX/kD+jKe2grtqtP/F6Ns2b2xSAbFzmOO?=
 =?us-ascii?Q?7k0hoJb+X3/HYBIUQFIACaSeuw4xUSRCKvtrjaDYmyJbMlYronGpw6NphXBr?=
 =?us-ascii?Q?I5Kd7L76GcB5uyAN9OpOavgGSGeGRIJkJw6MC3mqkmDgO42yX5VnwO25miYH?=
 =?us-ascii?Q?PR4aRVM+dXaYv1lRpvR9CYH1G8qZtvo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0160ee91-516b-4c3c-a555-08de5ea3ad5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 19:30:21.3663 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bZya8iYmeEvaeKmAy7MPuIDmuhzaHSwqBSwNG9Cmu+Cdx4cDFolj3781R+4VNFKhJnyHc1EcvMdSGrx4Jm1hF/AITe/u+C++3SvUm7rlSWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769628630; x=1801164630;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kcYgp3hilXOV3BO5MXu6h1OxTJBDOYhrsr8btU8SNyU=;
 b=PDrxzLlEpmRVdr6DLJH1iZEqQnRyJKPKJWRTlIBkn74qbIFWLZwdB97g
 ZjD5FRduLK9InqMMTqlSV6ctVYkuW/9EtOdLWCkBVxlsB31EKVpkYvz9P
 PsRJtmB76McdMrNgg97d6GBEYw1L+KO/TFY7ulEl/xKli6+s8HAiml6ld
 U7HMrj/T/n/wuqQz9WBhPf7HObbWlCrJQstAPiD0fao1k069gDUmwXC3Q
 AKTOgnHugBYMNIwg8LgmOYoZ9+dO/4WxV7FKr1zod8WL9zPQu/ixqZjtG
 42iuojlBBgYV2K6XWUA08f4l+kV8mvOrX1GYdaal3UvNcy3/OP72XYty/
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PDrxzLlE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix missing TX
 timestamps interrupts on E825 devices
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: DAC5FA8294
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: Thursday, November 27, 2025 1:26 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; netdev@vger.ker=
nel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemysla=
w > <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix missing TX timestamps=
 interrupts on E825 devices
>
> Modify PTP (Precision Time Protocol) configuration on link down flow.
> Previously, PHY_REG_TX_OFFSET_READY register was cleared in such case.
> This register is used to determine if the timestamp is valid or not on
> the hardware side.
> However, there is a possibility that there is still the packet in the
> HW queue which originally was supposed to be timestamped but the link
> is already down and given register is cleared.
> This potentially might lead to the situation in which that 'delayed'
> packet's timestamp is treated as invalid one when the link is up
> again.
> This in turn leads to the situation in which the driver is not able to
> effectively clean timestamp memory and interrupt configuration.
> From the hardware perspective, that 'old' interrupt was not handled
> properly and even if new timestamp packets are processed, no new
> interrupts is generated. As a result, providing timestamps to the user
> applications (like ptp4l) is not possible.
> The solution for this problem is implemented at the driver level rather
> than the firmware, and maintains the tx_ready bit high, even during
> link down events. This avoids entering a potential inconsistent state
> between the driver and the timestamp hardware.
>
> Testing hints:
> - run PTP traffic at higher rate (like 16 PTP messages per second)
> - observe ptp4l behaviour at the client side in the following
>  conditions:
>	a) trigger link toggle events. It needs to be physiscal
>            link down/up events
>	b) link speed change
> In all above cases, PTP processing at ptp4l application should resume
> always. In failure case, the following permanent error message in ptp4l
> log was observed:
> controller-0 ptp4l: err [6175.116] ptp4l-legacy timed out while polling
>	for tx timestamp
>
> Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products"=
)
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_ptp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
