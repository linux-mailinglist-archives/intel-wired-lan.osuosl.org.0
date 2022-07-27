Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0205A58270B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 14:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E78A6410D0;
	Wed, 27 Jul 2022 12:51:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E78A6410D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658926294;
	bh=SrZrpDDIvgmCaLvZUFegD9lGbc2tfaY+B2PpAoS33Cc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u6Qgu48feSkGdBGB/PCs5/X1cPNeQjV9jJHdHlNuLY0C0nR1VwgQzqK/OUjI5iQQD
	 icL9Y2a444ErsIfUXqBuLDRDpwfFXBri9gY/0ba+GywBGeLuQDZ5oSoroIUOoVTdpX
	 mtoJAx5SzqQ+DOhFQyM/Ope5MVAhbc2PfsQKMJn09sZ4OE5hKaidFatLlcklO3WbuD
	 wuJd4xaXoEpSkIIUOXf4Zip9H3/wu2qJimHp99kxxLUcli/vR1XG1fYAycqloHEagH
	 NnH2YWFXWuvHzXH3kl7MSXB6SYM4oyBmG0JHbxi+Y1QXGtuKvhhyh++3G4QHWUU2/F
	 dLuQO7GRx+j5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VX1uzRebUhXV; Wed, 27 Jul 2022 12:51:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6984D40A7A;
	Wed, 27 Jul 2022 12:51:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6984D40A7A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A51711BF372
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 12:51:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D40760BF6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 12:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D40760BF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ruDXud2MTMwf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 12:51:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59D7360BD6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59D7360BD6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 12:51:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="288987597"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="288987597"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 05:51:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="633193294"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 27 Jul 2022 05:51:25 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 05:51:25 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 05:51:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 27 Jul 2022 05:51:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 27 Jul 2022 05:51:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hF2tBjPL2OM6mbcxoCySyafiD2CRVgBP46g5cvOqfzUbCAldQkYclPf9VDw9hYo6+dcZXNwz0nLHzZDfgar3GJ2S80Qy1gg/qR8Ow4NjqcG/qjihTjyXFMLePs+Bk4GdsQUbdocyUs4c46tExo7FG3XSbXqcBRnfzqQ6h9arOKRqAILn+Vr1EupLziS5JKBu/L3O7TaL8DtiROvJMwqdiycz8fW+GtgAi6CGpYc/6mvwNFLMmTkDHuvSIZDZGgX2hxFx6DFLqfkhYJLd86hUmdSY0L9a5V+HBG70cuW8GDXRQ7geEPWl8JBk0yP+KtGaUCnXBifxY6VpBgyWM5tu8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oZrd7MVZTATvWVtOrMiVJTLCIg5bnmwBSONdVqv9w8w=;
 b=mkr/TxZEeYimrU+M+lLJsyAGok7y2rz3Ol0qPGIC/8PhOO2L67D3tSx3cs3/YS53xZXDHdpiT5W3qJPdjb7MCRIu9WXEiEToXSBFAbUsjNZUMeMDMEsYdH2JSQRs4pHhQTOqrP7E1kGXQymVHQ/OcWhnJiAcawcJN4Vzdq764YUjU6WW+HUdZk3Q5nlFGQ92pLdl63pM+xRYcjRsgrATyT0HK3iRYMIc9bsSc+J5325KUZYMd5kw031ZytD9GhQY2ucOr0YOxuIUkcwnzuwKwUAEiAKfpBCd4OIx+FNPjphFIDEbeq0I23OvkIOL5Ffjk0YpKgzfKuvFWI420heGlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3449.namprd11.prod.outlook.com (2603:10b6:5:d::30) by
 DM6PR11MB2972.namprd11.prod.outlook.com (2603:10b6:5:63::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.6; Wed, 27 Jul 2022 12:51:22 +0000
Received: from DM6PR11MB3449.namprd11.prod.outlook.com
 ([fe80::543c:e7:1ab9:668c]) by DM6PR11MB3449.namprd11.prod.outlook.com
 ([fe80::543c:e7:1ab9:668c%5]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 12:51:21 +0000
From: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>
To: poros <poros@redhat.com>, "G, GurucharanX" <gurucharanx.g@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 1/3] ice: Fix double VLAN error
 when entering promisc mode
Thread-Index: AQHYkgO8c+Hv7GhaGUOFdxFQWWdjKK2QPmWAgAHbDICAADFu0A==
Date: Wed, 27 Jul 2022 12:51:21 +0000
Message-ID: <DM6PR11MB344990ADA7EE8FA40918C64D84979@DM6PR11MB3449.namprd11.prod.outlook.com>
References: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
 <1657199751-256188-2-git-send-email-grzegorz.siwik@intel.com>
 <BYAPR11MB3367E7DA6E06013CAC612C91FC949@BYAPR11MB3367.namprd11.prod.outlook.com>
 <668ad644d03b30975b88ac84c9e4a1263115095f.camel@redhat.com>
In-Reply-To: <668ad644d03b30975b88ac84c9e4a1263115095f.camel@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb634713-d079-4e93-312f-08da6fceb51f
x-ms-traffictypediagnostic: DM6PR11MB2972:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jTzWW1ovcSni4br2cJsNao3/p+eNFonCzOfupPQpooZvrkQYmEyAoFmPLL1D7GEuG4MWTPblDA6JW4L0udTh3yJ+cDPzxTePZc/HcbgYX6vWaPa6OO1KSHe/rakagjTex2GJmSysTJBexEoDdf/jxflT+xemcviCu9Wc/gRq/xEsy+NpuhQ1SmfRKwuGiDbTKZMAo2VQEFbJsWshTm43bGtkHRUvLsuORk0xYy/KzV7a8qtNXl7UUg6kBrJAH9rus5dsl+h5dL1Q6XpyNxe7rtzkFghj/JWOwF+yNUjU4ugn59e4RsWfdtL1QhKqTwn89CH9EqxjXpYQ7DEh0cT1KaGioYM3+NtepbP1b6XI5FhT0t+dNPVpR+Bbw2bvoNjWLmJVRv7kMCo5SqAjsqv9pzhgR9CpeocLX7x3eb+nOKxR0gkPTgmIToMPXsHVXuktc8JBNsL30lcuyF4iFafGHXz9OMpI400KJFgG8vvOj8HFHot36bSD/kgcN2O3FUoogA3jyPo/dYwDguXLT9I2OX/iYiqiRpkcZbsvVnkJrJ3Itp9Qq57tUUH8DvL7yIDE2Wr9FWik1tZE+KkLs+s+q33OrhP6cLA5MYBPUleW5B9IljYOhG+sJw6s5m0w0j6RuADfkmR5Xrch8eunD7Vc8b5xIUDvXtBlQPqoraKfBVjICymvgxSq4LSJRXFEfNMY2dyCdJQS0boa7sZANEBveDdPVAo0mMeHROSa0EkMQcOBavaekGbJL7OzvV9zTts03TcmzsbTjwLZl6EOSuFAvirVeFDjxx+RdX/zfdeLN+z9KGPr5OE5fX/2MOortdYwyuINsLHWdsLNIFUDL9YSvwGgmqdgL31blCngG8VOH4lg+gzVHsf4cRMfphlfdZUr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3449.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(136003)(39860400002)(396003)(366004)(83380400001)(316002)(110136005)(478600001)(966005)(38100700002)(122000001)(41300700001)(186003)(9686003)(26005)(7696005)(53546011)(5660300002)(55016003)(76116006)(71200400001)(2906002)(66446008)(66556008)(64756008)(86362001)(66476007)(66946007)(8676002)(52536014)(82960400001)(8936002)(6506007)(38070700005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NW5SQ0RvV0JVZVlVUVRoZk55dFdBT3hXSzhRQkNVb05DZnFobk84ckxIUFlM?=
 =?utf-8?B?dGVhc1FHUFgwcGIxdGFMOW1odWJOcFJidnZtRUFVeDRWa1pRU2N4VTY2NUlX?=
 =?utf-8?B?Zmx1Q25aTTJTOXNVcFpEMWU1RzNDVGRRTHlRbER4S2dpYktyVEFQazR0Q0JL?=
 =?utf-8?B?UmFpUVI2azhBQXY0VEZ1aFQ0Q09vTHcyRE5aRDZPaXNPeGRkb0s2NlF4RXQ3?=
 =?utf-8?B?U1g5UGZWTTFxK3JNRDJJNE9mK3FhNTZhc09TY2g5N2dscldmQlowNC9WeWU2?=
 =?utf-8?B?OFV3K0pkRjFvQWZLbytFd3J1MTJRL0VrRWRIR1RpOHJDQkdWQS9xcDdMV3Ny?=
 =?utf-8?B?R1RLYlFaWVNIVjNmbWF2RjlHLzdpT0tuMngzWFlRbFplYlFaOVVZcllreERa?=
 =?utf-8?B?YmlMNXhoeGsrNG9oOTlBUVVZZk1TN25WYzZ0VVVCbGlTOU9Ka1BhUWpEc1Js?=
 =?utf-8?B?SlkzN0FWRE9PRmRaOVNSb3lCUTZRWkJVdzNXL0xzSVJvVzdOcGc2VFAvbGZK?=
 =?utf-8?B?ZGtTVWxjTkJpN0NHRm5vRjBzYzNKOWo0Sk5CRmh6MWRzTWtNK2RzMjNHV1JP?=
 =?utf-8?B?ZkZwaWt4a2JpeUI5TWpxYTEzRjAzMElvR2xtUVpXckFSQzJ1UUFHdHliOTdn?=
 =?utf-8?B?dlUvZk9ERHZuajNFNUM0QmFheS9TYVM4SGJYQmJyZ0YxbGt3bzNsN2dzOWxo?=
 =?utf-8?B?bThhRFVXdS9Oa3hPc08wMVByMjA2enViQkNNQnI5eStWbmIzdzlwdlFnc2g5?=
 =?utf-8?B?TUhnZU1rMWdWYmhqWDVEbnhLM3ZobXlhcHJXL3lDN2RzL0p2cVk4YjlhMEQv?=
 =?utf-8?B?Wk1JYXFVOC9rTFFSVDBVY2J4T0dBcS9lcEJUVE9YMDg0QUtRM1FMdDFLUE4x?=
 =?utf-8?B?cnRuMWdadGZOTFIrbTZFdmYxSGxEQU5Ncm1jcWlRVzZOUmEvK2VxaGRsZUdm?=
 =?utf-8?B?NFgyQVByMXZZM25Obzl4UUV1Y1VVQnVZOFpad0o1TXFyV3N5YWIvQ0lzcFRK?=
 =?utf-8?B?QXdsNU80TE1CNVFZeUNYUVhhVDZDUnBMM2FPWjNDOThiZkxJb2VqeitXSjVE?=
 =?utf-8?B?MmExU0t4QkpJMDN3SC9Td3NVVm9EekVCcG8vWVU2WG5NUTBnYUpNSnNGc3JB?=
 =?utf-8?B?NUpCSjZGMHlhaFZyRXN0YVVINDZGSllVbHVMdjJzU2YxYlpZNmh2QWF3Tm5H?=
 =?utf-8?B?TW1ORnVKb3FlSENlbDZ3KzJyeXYreldYQlNKQnJaZ2s3SVRydXJINVVyVkx0?=
 =?utf-8?B?eU5KZkthWFQweDl0YzhhcGd4T1lxbWhBNHczUFhiQk5iNlVpZGpUdWR4Rjli?=
 =?utf-8?B?QTRoOENDZjZ5RjhSNU9pRUpMUDFzS0xFMDVXVi8rVFo5WWpwNkJBOEVkUzJw?=
 =?utf-8?B?dUlZakRBVDdNdWpBdTVCck81bXI2V2pqejRveFdZWEtkNnY4bGpoQ3VGZE4r?=
 =?utf-8?B?T2w5bW04RHc1UHU1VmdMcWxqODN1bHNUYzNXd0dQOG5XUEtSM2VYeUhzM2NV?=
 =?utf-8?B?QW9YOTExMDh2N1FjVzdUbVdtYkV5K1VTT012OGJjUVJJYjBSTmwzSk1XS0JK?=
 =?utf-8?B?TzJDQ3FId205ZTdWQ2FJWlc0akFrRG9NNmgvRTVPUEZPNTV1c2lrYkRscGIx?=
 =?utf-8?B?dEs3VWx4bVpIdFF5NTdyVlhXMm9ma0Vqc1p5bUd2WDVqVEVCbWdiQUxzYXJ4?=
 =?utf-8?B?SGI0Kzk2aERIbkpoNTBqMldzbnRaWTRpYXduaVBRNUpVWkdEbForMFdJa21s?=
 =?utf-8?B?d0R1UlVRelY2eWRvaWVTSUhueCtOc09HQ25sUkZSTDdLQzlVTWVDVEE0ZkZ5?=
 =?utf-8?B?OVkrazNVbnhzRVU4WGZ1NXF2bVV1czdXNStDZE5hNHVzNjZFTTF2ZVNwbVRK?=
 =?utf-8?B?Z0V2b3lkaEkzWGhJSnR5NkVaTmpQNkh4NlA3RVM1QzBnbTNOTmJXakVHcTYy?=
 =?utf-8?B?SHpZNWc1Y1g1TEdrVXZuZkZmMU1TS1l1YVNya1h5dEtNQWxLcnNRKzNyQ3ph?=
 =?utf-8?B?L1lPbSszcWZBVjI4ZE00Ynk5YWdzbktvRndvVi9nQk9IRDhINktsT0JVZ1pS?=
 =?utf-8?B?bW1sMDU1TGlOeFlKZmk1TkUva1AyZU9VZWNoY3pNcEJTQVEyeXFwNHBHVnF4?=
 =?utf-8?Q?z1QrwiCTZj2QTry5wScpijfiY?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3449.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb634713-d079-4e93-312f-08da6fceb51f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2022 12:51:21.8544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +KIpkpYuRoU2LunC7N8gFSwOwIek8dHtIS8s/G/PXUN2qnhaHNYC5wV/db2g/CCNnG5rlfilTfEyP20ANTU4dph3skFHBeBC0srk6LezyLU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2972
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658926286; x=1690462286;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oZrd7MVZTATvWVtOrMiVJTLCIg5bnmwBSONdVqv9w8w=;
 b=CAT22G9xUX1oPjGg+mVXv5GBosifY6RfUWqX9bd3xoZ4UyjwQzZaveRA
 l4JbMrEAT/snC3B56/IGilyhGRe5LGKvtX0udY/ANGiL+EZTwvvQUB/Mk
 kqbjieiQXtWUAtnYb+1PogEs60yzYW7JsEjJnEAE4h5KDKgsN4skCNjIX
 /UpTrtS/OFNKQHcnTyg9U9nekJUDrKG1nC7Bqw6sLc0tEBKiXr+MKoqqx
 +U5IY58WkLqLlqb2Je7TJtomCOI1gOVGHCKlClkl1qVlYj8qvr1Ywj2W4
 EZqHVKvmObjKfRtoJMiDkEQ/jsQ9LK9X+K2eTSU45wlw/Hz19Pvjprp4z
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CAT22G9x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/3] ice: Fix double VLAN error
 when entering promisc mode
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBHLCBHdXJ1Y2hhcmFuWCBww63FoWUgdiDDmnQgMjYuIDA3LiAyMDIyIHYgMDU6MzMgKzAwMDA6
DQo+ID4gDQo+ID4gDQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJv
bTogSW50ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBP
biBCZWhhbGYgDQo+ID4gPiBPZiBHcnplZ29yeiBTaXdpaw0KPiA+ID4gU2VudDogVGh1cnNkYXks
IEp1bHkgNywgMjAyMiA2OjQ2IFBNDQo+ID4gPiBUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9z
dW9zbC5vcmcNCj4gPiA+IENjOiBTaXdpaywgR3J6ZWdvcnogPGdyemVnb3J6LnNpd2lrQGludGVs
LmNvbT4NCj4gPiA+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQgdjEgMS8z
XSBpY2U6IEZpeCBkb3VibGUgVkxBTiANCj4gPiA+IGVycm9yIHdoZW4gZW50ZXJpbmcgcHJvbWlz
YyBtb2RlDQo+ID4gPiANCj4gPiA+IEF2b2lkIGVuYWJsaW5nIG9yIGRpc2FibGluZyB2bGFuIDAg
d2hlbiB0cnlpbmcgdG8gc2V0IHByb21pc2N1b3VzIA0KPiA+ID4gdmxhbiBtb2RlIGlmIGRvdWJs
ZSB2bGFuIG1vZGUgaXMgZW5hYmxlZC4gVGhpcyBmaXggaXMgbmVlZGVkIGJlY2F1c2UgDQo+ID4g
PiB0aGUgZHJpdmVyIHRyaWVzIHRvIGFkZCB0aGUgdmxhbiAwIGZpbHRlciB0d2ljZSAob25jZSBm
b3IgaW5uZXIgYW5kIA0KPiA+ID4gb25jZSBmb3Igb3V0ZXIpIHdoZW4gZG91YmxlIFZMQU4gbW9k
ZSBpcyBlbmFibGVkLiBUaGUgZmlsdGVyIHByb2dyYW0gDQo+ID4gPiBpcyByZWplY3RlZCBieSB0
aGUgZmlybXdhcmUgd2hlbiBkb3VibGUgdmxhbiBpcyBlbmFibGVkLCBiZWNhdXNlIHRoZSANCj4g
PiA+IHByb21pc2N1b3VzIGZpbHRlciBvbmx5IG5lZWRzIHRvIGJlIHNldCBvbmNlLg0KPiA+ID4g
DQo+ID4gPiBUaGlzIGlzc3VlIHdhcyBtaXNzZWQgaW4gdGhlIGluaXRpYWwgaW1wbGVtZW50YXRp
b24gb2YgZG91YmxlIHZsYW4gDQo+ID4gPiBtb2RlLg0KPiA+ID4gDQo+ID4gPiBGaXhlczogNWVk
YThhZmQ2YmNjICgiaWNlOiBBZGQgc3VwcG9ydCBmb3IgUEYvVkYgcHJvbWlzY3VvdXMgbW9kZSIp
DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHcnplZ29yeiBTaXdpayA8Z3J6ZWdvcnouc2l3aWtAaW50
ZWwuY29tPg0KPiA+ID4gVGVzdGVkLWJ5OiBKYXJvc2xhdiBQdWxjaGFydCA8amFyb3NsYXYucHVs
Y2hhcnRAZ29vZGRhdGEuY29tPg0KPiA+ID4gVGVzdGVkLWJ5OiBJZ29yIFJhaXRzIDxpZ29yQGdv
b2RkYXRhLmNvbT4NCj4gPiA+IExpbms6DQo+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvQ0FLOGZGWjdtLQ0KPiA+ID4gS1I1N01fcllYNnhaTjM5Szg5Tz1MR29vWWtLc3U2SEt0MEJz
K3g2eFFAbWFpbC5nbWFpbC5jb20vDQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jIHwgNyArKysrKysrDQo+ID4gPiAgMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gDQo+ID4gDQo+ID4gSSBjb3VsZCBzdGlsbCBv
YnNlcnZlIHRoZSBpc3N1ZSB3aGVuIHRoZSBpY2UgZHJpdmVyIGhhcyBiZWVuIHJlbW92ZWQgDQo+
ID4gZnJvbSB0aGUgc3lzdGVtIG9uY2UgYWZ0ZXIgZXhlY3V0aW5nIGNyZWF0aW5nIGJyaWRnZSBv
dmVyIGJvbmQgYW5kIA0KPiA+IHRoZW4gZG91YmxlIHZsYW4NCj4gDQo+IEhpLA0KPiANCj4gSXMg
aXQgcmVncmVzc2lvbiBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2ggb3IgdGhpcyBmaXggaXMgcGFy
dGlhbCBhbmQgbWVudGlvbmVkIGlzc3VlIGlzIHVuZml4ZWQgcmVncmVzc2lvbiBmcm9tIHBhc3Qu
IEkgYXNraW5nIGJlY2F1c2UgcHJvbWlzYyBtb2RlIGlzc3VlcyBpcyB2ZXJ5IHBhaW4gZm9yIHVz
IGFuZCBpbiBzZWNvbmQgY2FzZSB3aWxsIGJlDQo+IChtYXliZSkgZ29vZCB0byBtb3ZlIHRoaXMg
Zm9yd2FyZCBhbmQgbWVudGlvbmVkIGlzc3VlIHdpbGwgZml4IGluIG5leHQgcGF0Y2guDQo+IA0K
PiBNYW55IHRoYW5rcywNCj4gUGV0cg0KSGksDQpXZSBhcmUgY3VycmVudGx5IGludmVzdGlnYXRp
bmcgd2hhdCBpcyB3cm9uZyB3aXRoIHRoYXQgLSBpdCBpcyBwb3NzaWJsZSB0aGF0IGkgaGF2ZSBz
b21ldGhpbmcgbWlzc2VkIGluIHVwc3RyZWFtaW5nIG9uZSBvZiB0aGVzZSBwYXRjaGVzLiANCldl
IGxldCBrbm93IHdoZW4gd2UgZmluZCB3aGF0IGlzIHdyb25nLg0KDQpCZXN0IFJlZ2FyZHMsDQpH
cnplZ29yeg0KDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCj4gPiBJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcNCj4gPiBodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
