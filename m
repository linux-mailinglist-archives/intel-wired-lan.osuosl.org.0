Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2111D9C8828
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 11:55:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56A6B60A5F;
	Thu, 14 Nov 2024 10:55:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ytQ_Joegv35z; Thu, 14 Nov 2024 10:55:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45D5460A5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731581732;
	bh=K6URZqJTerTvTnsegFVB5cVUOEFdgSfBoXEeui4ZTzc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HM4HvkNfq99yT4bb253bhgiJr6PH/nfqG63KRXvx1mUGiI2WatuQN1i8w6PGcN+qq
	 jKL7exipjC/0HBjBSMtitYbVHf9KvNZPhNSEdDcHMPQie9cbcq36fzPDnFmR07IWBM
	 l6bGbZD+7rwM8WcBCKhpgfbrkBGE9fFan7YSzpuHWDr/rQ5CfyvhZXoLldO2mQhT3j
	 siB36L3atJPrqKoBAwVkbgQNUp2vlVhjQzCj3DNYvAT0+qir95hoNJq+vuZr3oVdAx
	 Vylb9Oj6E17zhadn2QB9FgeC/LkE+z5WEuDc1+FjGz3dZ12coL5bzHGiUiNhimtQwN
	 z2xIzK/iMEc/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45D5460A5B;
	Thu, 14 Nov 2024 10:55:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E5A2972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 10:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C57D80BE9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 10:55:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SiLDfpLBcF-i for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 10:55:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0FC2880BE4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FC2880BE4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0FC2880BE4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 10:55:28 +0000 (UTC)
X-CSE-ConnectionGUID: /HQ0OoF7QN6Xxcnfnp4lug==
X-CSE-MsgGUID: Gqlkj69DQVyuz66NX0az4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="42899146"
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="42899146"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 02:55:29 -0800
X-CSE-ConnectionGUID: ovMLp6ErQv+rKBdTY6XCnw==
X-CSE-MsgGUID: AKUcdcYeTz+ZeZXPr95rHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="93104054"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 02:55:29 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 02:55:27 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 02:55:27 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 02:55:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vSl8lwUUn4+rbNman+6E7On0SXnf3K7MqwjMs7v7WyuzkFvkqi80nT2P+h70rfGsZcw8lucRQKJWnx8778yTOqmhviOOg2Prwk/nVVKHTtoi3VeQ/4ty1gW8WYDKqTKCYmDehzo6xWWCg6J0ecTio00Bbh9xvm26hCK0q/fEpRROtnHJZY8BxlZBfM9ZrOQS8vFvB45yFKtH1ab7vi8bNTAp4MviXjgLHjsKTQmDkOBiyxonGdOm+v9t/tkOLB6dq0q/Y7tNUl031n+vC8XJLrSmw7KZi9JGkLPw7sL30fbXYdkSbaE/2ijaLPONYxsy2N/3Wt+/DOjESjBlt3yRDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K6URZqJTerTvTnsegFVB5cVUOEFdgSfBoXEeui4ZTzc=;
 b=e+cIRPomMgwCYL9y7t1wrQPr1MNHcmaklwvIOTfQmylphnnDr4X6lTCSTR9b5Jr9LvDyRW1PPv5/AwKU7SYm0dhgoar9JzdtNXFj1HlPJxEVu8zOg7xzjgqQKyxd+f3RX+gohzJKwb6DFUm1J56WZz27o8wIeCObB00/MzIz1MO2r5tFtecfLetE2CNq20vL7ueKhFQz+YncNSE/HoQx7nIgz6Oq5CVYl7ovMqYlESa92EREBj9FTbLyS2A4NHHuGVJu59U3NJogNLlsU9LV+Rxk6mZbyLjHhK7L/0fz9ZZ7h2QO3GluILfeH3mQkajQTIcL4sDwfIX9QgLGCTUWiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CO1PR11MB4849.namprd11.prod.outlook.com (2603:10b6:303:90::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Thu, 14 Nov
 2024 10:55:19 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.8137.027; Thu, 14 Nov 2024
 10:55:19 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY Clock Recovery
 availability check
Thread-Index: AQHbE2hbxPrbZSAn6E+NzBVfcsFVlLK2roSQgAAx2nA=
Date: Thu, 14 Nov 2024 10:55:19 +0000
Message-ID: <CYYPR11MB8429822EFB04472D4392F6BEBD5B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240930183622.897485-1-arkadiusz.kubalewski@intel.com>
 <CYYPR11MB842913EABF37263FF28D32BBBD5B2@CYYPR11MB8429.namprd11.prod.outlook.com>
In-Reply-To: <CYYPR11MB842913EABF37263FF28D32BBBD5B2@CYYPR11MB8429.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CO1PR11MB4849:EE_
x-ms-office365-filtering-correlation-id: 461d9112-376a-4aaf-c4e7-08dd049ad4ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Zv0ER6BbsTEnC/oPL5J8T/DaBTMPIiiw7/70uVSztnykxJd28btaVbwk42hb?=
 =?us-ascii?Q?V0cNdulVxt0hIejnF6bq7GWuO6WGWqTB4C2nkGnPaaiRqNMi/Q6ybkkMhun5?=
 =?us-ascii?Q?4gemGjiq/gpUnuaWLc7mgbNxdX09YOxdA/adqS2fOHVYJZvy3Xs4Kfidk0gn?=
 =?us-ascii?Q?JUcBHHwHqqVLKSvoyoehBnkrQXlwd2M5ShCLpuG+PAr55RsrNQd8MvvOoGUi?=
 =?us-ascii?Q?9KQaCc9ikkDSV3lDmzfmD//mgeNAU6hn+yQoN6nnT+vQNr0XAmG6Pua9XTs5?=
 =?us-ascii?Q?77M5MYxlcpN+ylbIgu4HY0L9Lm5erULRL7Bdfner6sGJqkk/ThGtwGUN5uLH?=
 =?us-ascii?Q?r42FcwC8DtxEl8khDlZigf5OjNZIe0Y7UChnynXoxnCsEgAPFLTVrLS/ww+o?=
 =?us-ascii?Q?ZK6lB8ODGzZ4Oq31tN7Ntrwz6YkstECyik7uiXDjCpz/cw2AsGIzkZ79QkhW?=
 =?us-ascii?Q?ISWxeE8w7vbnxMWRQKsq+sOjTfo+91PJ06zhlsJb6E28/nVmfiKj+FpZ/38N?=
 =?us-ascii?Q?809PDS7lWihq5iXnEoo4HBayjgUybfdNQsc1C4+KtCKYG7ij54WyE/0YBaHq?=
 =?us-ascii?Q?xmo04rQm5lRWJ7ZUTCdHdqJypW3E8fdbQ/3KRk8UAqe6CA7HP9TI5tj1MpcC?=
 =?us-ascii?Q?iV3/fMm7CgksNcehlMDSTbZEaNAXfykHdsM1N8bDWi8sd7tDqJNeFzmY8DN3?=
 =?us-ascii?Q?IZUB8Gu/JWrOvtNmY4XTjh3f67rzfWexjkBja7MwPdcnr09DeRPbhtbjJsb6?=
 =?us-ascii?Q?3WMMF99dJzZDijpQbjt9eZNb2/jfZ2Q8EnZnjZ9GlgyT6Snvef0O/gJkxRFR?=
 =?us-ascii?Q?0bkmLsg76FyvwxnflfbT6Qje3MinsB53uH/X+k8C/hgoL/USAtukNvCkHDwF?=
 =?us-ascii?Q?mbRlGekTNBNYZsnqJDgU9Am5/1iMGfA+sFwYiG1hv82n7GhhnajIptpukeIx?=
 =?us-ascii?Q?MF1WSRyygIZcPfS7JWQXmnTQSgdCxwWrCsJvzUej7s3zMWUly/fkTzkY8e8K?=
 =?us-ascii?Q?jwrQ/O35H8DmrWqOmPrdGOxLJ4jvvrifkG1aqOkATMIAepwHP6mXNrLaC4Kf?=
 =?us-ascii?Q?S1QtjxrW8aNRwV1hZ1i720hVpHKj8jIMSH2d22pzI0Gkty3wrai2b6SwhLEi?=
 =?us-ascii?Q?HQcghNY7JX/NKVqHapiZk3p38eY4ewdNdcjEVlm31wGZBAoAazYT2ZfJoSfU?=
 =?us-ascii?Q?tL72MYHJQpcAm8QLifyfqU4qVvJ4pmGe7qmjNJ1r20q8iT0ssQJvbei01RRp?=
 =?us-ascii?Q?qabHXioctVeX4BkB1g7eRD8mYetRQfWW/25jRt+kmy0qAS7ockAw8MrcKLXs?=
 =?us-ascii?Q?Iqndcw8lEKACgCjqpM1oYfUmPKsMZpeEclZySmZQXmSMeF0Y9sHZnYMs4PEw?=
 =?us-ascii?Q?w6xFnQKdlb4hZ9jdozoZWJsWaSRx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iAeot2NMOpN5BAyXVr67B1ugvW4ITgM3O/M1OiilhYw7vVNF5veoVtF5GzoT?=
 =?us-ascii?Q?3j1jPRCtpUxBFStNeOHyys9aMTW3MhN4X/ZIR46zzMeyn1yUj31WJNsZ1+5h?=
 =?us-ascii?Q?8JEjBtHWLKu+MpNMd506Ex4s++syjhQZJALzwIsyKWMAo5mJakOLlM3EGwDM?=
 =?us-ascii?Q?i5+aRmi1gsvJbG5yMZHLMzeyI6LEwNP/9+puMBFKckO297KXee67HWhDX4NZ?=
 =?us-ascii?Q?zSJDUg1R4szNWAc3s6ildcnz9FIs8j7CnTSlX5IomN9/ZUq3npaIFJzA9mrN?=
 =?us-ascii?Q?/0oTVaviphQR2CpmVckx2pYu2mb0QkW25hHgoWp4+Ng+TDsmSHAzWfQGEBId?=
 =?us-ascii?Q?KwYCvYyb4V18kQ7Ov9VOTVA7fb1ynm+UK8+kL1pm7tzdySQd2wMOa3JkbMZK?=
 =?us-ascii?Q?9f2Eip6uQUj1riCYeNA4Fjb+emsh289YwFbbCYhbFuC84tUJqQrOA+diY3S7?=
 =?us-ascii?Q?uGfUyZSyXIRkBD11HgZoYElyzv1cDL8grVqDxTadO85G8fybpMYETvKYxIto?=
 =?us-ascii?Q?4AEy1CObUyGQjA1VOSGUvdoct5sqVmEIzLKXwLDkkV9PlykhkF2PEfYjxOuN?=
 =?us-ascii?Q?y+4cvk7ykdZKgxEFM9bNtRAIRDiA0oabT7woG17EB14KffUaJPL/Zjtroh5j?=
 =?us-ascii?Q?roj/Lye6wQsFOrDWHKrYnjeafUVMnbvaIFHYZR3D6ifro8Tt6xvxcHlpwYQ+?=
 =?us-ascii?Q?Q3ni3Qa24Z2r3/oOmDbtNSw+lAmFpMppbcfGykIeXfZuAEV2NbEmbPLk/XuZ?=
 =?us-ascii?Q?PmkIfaVxf6NZEIMylxIq+vddWWbfAXN5FF6aokAv2yRRj7Z6JMkI7qly3UYE?=
 =?us-ascii?Q?Kyi28pHLMIStscbe+jmw+1shv9Qavt0zPIZeIOSOM/vdBVPHNmF7Kgvc3lWF?=
 =?us-ascii?Q?KC0yHy0MuNyJ/R9krY/DcyrBHmM8qjRmjdJBnDI1PH/nDBxbIHBtc/5/7nOt?=
 =?us-ascii?Q?1YfyQwkcmbwbaPJjg/mMHh2REfOerbw7hu7QH+COpAGISyVaZ3Z+f0Z5Rofd?=
 =?us-ascii?Q?rAG07dpPPQ8CTrXJ6TMW6fTF/QTZ1NqnkCQDRTDDIMA36obo5sjYE1jZheKv?=
 =?us-ascii?Q?KcMVKEHOicnA7eb41Zi9d7Nh//48KgQGSQ+eGK2pP+ChLh/ti/BK49X9+Za3?=
 =?us-ascii?Q?Zd2UYOroM+te511TefnNJuPKcfsofR522FMqzp9YciejThYmws8OpNlUUTVH?=
 =?us-ascii?Q?1XXabn930Al5k4Abn6SrWnMQoO9nkE/kMIJRXVV9jG1lQ5etbh8L9vMm2kvh?=
 =?us-ascii?Q?xLCW3nOOZ0nMg3x77RpNdai5+AosNtuq+s+K6bn+P/DyUjJkyhH30A34iQhy?=
 =?us-ascii?Q?R4QQee+wYnnzlEg/R5vc8xe+u8HfhEN00C/f6cGmG0Rygp3J/5I8JWxtFBTS?=
 =?us-ascii?Q?BS7i8OUJoUaDCXRg+hWDvA+2ceFbC3QUg++p7XQFmLKkwHSMhFTsdbhDuEoE?=
 =?us-ascii?Q?E1bqQ+gJdIV1+Ffy6psXPY+ypiWJcd06MWycOV1r26DH6gcYs9crJWWpCf0c?=
 =?us-ascii?Q?HwWMM3oLvq6yFHZZfe4bV1ODQWORqwDLnVyU32gyWk+DbVmrLj32B8qWf4We?=
 =?us-ascii?Q?i9jJO6fvov7B/QmyF0yhCwDNCfwCWmSIsBg/xZtZDoWSxOOjLP4as+Xu/BIb?=
 =?us-ascii?Q?Kx5uAIlwy5ot5l31/Ex35EnVNssfK7PYXmH4DaqUyhiAGNj+QH3RDnd+cDNz?=
 =?us-ascii?Q?abK8Cg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 461d9112-376a-4aaf-c4e7-08dd049ad4ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 10:55:19.6017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PQUIz8lCqFsikE5aFD+W8sWSWR5mws1fjWmG6Tw9hooTpzKfWY0AGIQd87NQ1LDeThm+o1RgGBTJTp+dypKLYU7tKxL8lrsMOvvhYxOGOVL8z6ZYiKto8cblCkn/4vCc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4849
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731581729; x=1763117729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vn3uLrQGIu1sLrU1rav4iM+eRRbDLodT4I37L+pQh8s=;
 b=Xx59c0TgG/UlDy0hsXpNAmzDbVKygm19DKpdeujdR/68zW9qgkRXMZhX
 705+uQ//pz+v6Ugi8AVPpZoJmhnIZgG1KJYZqRoaF3Ff0W7rirpvJg6+A
 WR6YL6pUNNv47xzovnhYDsINI0QT1s0bQWmYDc5roufX9ZJvhIeCG83kX
 E2JS6i4OqZaMcxtLkcfxmlbMxFAP8LorQDUcXSFJMRJS/JBY+3Re5IRR4
 MHQqvdfOBouXM5eS4piNFuHVqYh81qR0wWW7W76t7qok1Aeym7Ks2fhOX
 KyBHyIR5CUCJJOjlvjeCEB3ncFC7v+wa6G4i6yGt6kNePBwpCvZA2aLjC
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xx59c0Tg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY Clock
 Recovery availability check
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
rkadiusz Kubalewski
> Sent: 01 October 2024 00:06
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kubalewski, Ark=
adiusz <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY Clock Recovery=
 availability check
>
> To check if PHY Clock Recovery mechanic is available for a device, there =
is a need to verify if given PHY is available within the netlist, but the n=
etlist node type used for the search is wrong, also the search context shal=
l be specified.
>
> Modify the search function to allow specifying the context in the search.
>
> Use the PHY node type instead of CLOCK CONTROLLER type, also use proper s=
earch context which for PHY search is PORT, as defined in E810 Datasheet [1=
] ('3.3.8.2.4 Node Part Number and Node Options (0x0003)' and 'Table 3-105.=
 Program Topology Device NVM Admin Command').
>
> [1] https://cdrdv2.intel.com/v1/dl/getContent/613875?explicitVersion=3Dtr=
ue
>
> Fixes: 91e43ca0090b ("ice: fix linking when CONFIG_PTP_1588_CLOCK=3Dn")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 25 ++++++++++++++-------
>  1 file changed, 17 insertions(+), 8 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

