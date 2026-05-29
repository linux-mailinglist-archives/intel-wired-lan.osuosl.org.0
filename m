Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGxFIv2rGWpdyQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 17:08:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B2A6044BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 17:08:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2167E60EC0;
	Fri, 29 May 2026 15:08:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I35X587WHGJ3; Fri, 29 May 2026 15:08:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C0C660D6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780067320;
	bh=ot5lc94AmVEPwYpWFa1Scwq7GhhRHy0MdVdjFQwvo3U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fOcLj6G6LerZRIM433Cqmee6QlWMEEToJ0tBZRUEkQ4KUnu4dPWeII6u24tcQjHp4
	 gUmLNYp9l/j7e1ZsbUiYD/Ko0dvCsJpGC1gOVEf123HzOoXSLM+lmGgBqJ0BA/moBK
	 pi14RQhmJmlNUvRzxBIh2dIu8Lj3gJYQkrW4Q6c2C6bbN63POaD2Ch2wIuE1YDrIof
	 QIBtS48SUlchStWkqbKAvfunh0t6Ig4izi1kCCzatkOwL1iV7OwVVLqQ5XpdW1XeHd
	 47OIPpiG0IUzzaVQr8CUJIcB9usSryOdYCJWgAoAmt6nWesZ53BM7vEMglb1wXrwN2
	 cZuJyVDEtpx2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C0C660D6A;
	Fri, 29 May 2026 15:08:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 26306D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 15:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 025C7822FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 15:08:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tSVEPhPQSHn1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 15:08:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 47D5B822F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47D5B822F8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 47D5B822F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 15:08:37 +0000 (UTC)
X-CSE-ConnectionGUID: AqAya4gzST+MSnqUj0NILw==
X-CSE-MsgGUID: Pn5GQAEbSXuSe1OkdLSJDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="83496161"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="83496161"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 08:08:25 -0700
X-CSE-ConnectionGUID: G5b4n3vtSq2V8FUi0HCcHw==
X-CSE-MsgGUID: MAsFtMgESS+2OvdqTcpnnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="238692448"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 08:08:25 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 08:08:25 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 08:08:25 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.25) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 08:08:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F2Y9EQ/1iX/DuEsUQm6TLFsl4CBcpXf37nNPJqzRVJzHfedAvWx39pDdb+qrHIka0lYrNUcbnWsB77h5+kDSe3mQ41g7y6UirCGlBjD4BTJvY6t+chTD9zL7DdML0L7dDPuvL3ncQ7T2+4vBVecYZeXXtUv2IAkb8bjydAEBd1ZQOnTDpOgg9zPpAeVAW+Q6CiT1Hj/TCyvfe9PP/3iDvtlCBL2O7q2h4/NVwllN6lel44S451Q3Pur/684iYF3mHzw1Ym/x74/FMImWRl37mne77DR189aT6V02dNfVU8IN/fbi+Em+uRUsGHb8Vzdh6ziIxI4fxxguwT9rEL1Ehg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ot5lc94AmVEPwYpWFa1Scwq7GhhRHy0MdVdjFQwvo3U=;
 b=dO7+7qpbxMF7F555iOlvsey3a+zeLz4dDYTJ9lOkLmT1hwi+E8TGAGSQlr0+zO92WWqbQh5413zWijoYr4UUW58fjtR6ig1sPnhqnsmQXIGuG6wLr96nDN0Qp/7kLarFGNFWN3axAqxZlrx8XLQjwEJHm2njwmuu274iP/UHDJPSjykp7oDckdImoX2yxMuglzwaAN6rOPQbDwINDtEPuWxSkJq2yyL+5ts8BweqNPNdP3EXOhTAkHQRlsbcUgyIt6AWj89T8uunbdvFGdMbDcySzYlCH3q69P7U7G22IsRekdS9ApVh2EV5z4YhBQ1kyh1jHwWw0j38NeymPuRSUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by CO1PR11MB4884.namprd11.prod.outlook.com (2603:10b6:303:6c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Fri, 29 May
 2026 15:08:17 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.21.0048.016; Fri, 29 May 2026
 15:08:17 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v11 net-next 8/8] ice: implement E825
 TX ref clock control and TXC hardware sync status
Thread-Index: AQHc7POq2HU394TKcUmnf6bJdkUnwrYjXz2AgAG/4nA=
Date: Fri, 29 May 2026 15:08:17 +0000
Message-ID: <IA1PR11MB6219123619C75895EB11817992162@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260526093419.639220-1-grzegorz.nitka@intel.com>
 <20260526093419.639220-9-grzegorz.nitka@intel.com>
 <IA3PR11MB8986FE74C2D81A583F9B3546E5092@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986FE74C2D81A583F9B3546E5092@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|CO1PR11MB4884:EE_
x-ms-office365-filtering-correlation-id: e932e652-8613-45e2-644a-08debd941cf8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|56012099006|4143699003|6133799003|11063799006|3023799007|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: jCz/Gco77zUhH0eHjAJRJRGvzr1pPv5AODdod3BOzIAK7PGOZvtCai/GYlaGtWqxocqxpa3zCF20eUlvtDIFI/YPVepc6UkPvuFxxIQmVf7OxqcgT15la7qkJLTYD52Pi7B/nEaIOcJwz/OHlyBWPPE7HFa7WGZfbzG/4rpkeDzEoMWf19M0ggXJ/dEbqDJsB7lBrlwH1HZZzTziZXhi7wgFVByjopSP/lQFBCax5YuhauTV0pyeiQCJd5tahLcXbT/KQFyof9Hg2e7+EpBBzFEBmFvGtE9icymJSAkC4J8WXVauvsMbMKTzciZM12YTTM3ppxJy/V2/c7fawiIjEfkbyHR2nmtClHE0vH5xh0VGLVnE8KGo6CrHOZ05Phj4FC2vzYw5DsUHkugfLmz5C8ncYNY31crWrgM7yT88xu7+vYvIu9bO7GA8Ha/4lF16dCHVrYuP6L2XRflqqK8DX4A5LAs/XXBgLddDQfXSEPZAIlQfEAfsAeKKdgnn+E0CyMi9goQbids9j5FONjPCweL13GySI0xD+aMQv3yGeAWkPnsnr+PLaEOhVeuq154S/pAet68Xi57IFsgVp02fmbvUnR4Ft9YMceJtVXs/b3rGDUP38w+WjN/M6/CpMnWLyoPYtYflKM2mhjVpv2tXR0glzEvl1Q77c9xtp1DeDBBwp1HVJvgSKw4IScWUmIG7ES29nA53IWXzbIC7U3qS8YeTyci6hYQlQbeM6figZGcLBhQLVH/dJSAsZa7gUA3U
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(56012099006)(4143699003)(6133799003)(11063799006)(3023799007)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lCJextVXaln6Itb/Wpta7ifbDgSSwl8gXuYnSg9CgKEl2Hwo/WHVqmrq3atl?=
 =?us-ascii?Q?PbXxDJRCLpNXSLWXJMSm0ufHiYJJkFoDp8rDHzkxKBdKyiMZ/lxJ+HCGU3Wi?=
 =?us-ascii?Q?rFEwqEFHar/K9iRObJ7BAwKpKwgc2cE38q/54uKK0rvYvGg2oBFUDvRZQOKV?=
 =?us-ascii?Q?CEe8QBc3RqRD3i2EnSt5zVVV3MtXsDScKM3CJmp3TLC3jfBOUn/k2h5odY/6?=
 =?us-ascii?Q?nadZDdtiiztF+hEMIWodKPqPIBvSnZPEeKmI0y1AnlAw7oPvKxxVxxrcSEe7?=
 =?us-ascii?Q?49SF74g+uM/SMhDIMItf/f4ifW07a0yPpb8rI2WAURnREKsxaTdLVUUTVAlg?=
 =?us-ascii?Q?Ll+AdksYQQJ646jdM65YNEi+r5T0ybW2l6yv580bjLfCtIGKcFxQ6Uvxuh//?=
 =?us-ascii?Q?YiJj7EimGtLtCPkexZScMutkXl0Qu9x3iBhL4gg1pYmNfa/M/AJpY0O6yW/g?=
 =?us-ascii?Q?IeSQjQEyQJLxDwK5OxyhtB01j/5a8brDcOBhRy42VND0gUdjlf94LcL2Cjxb?=
 =?us-ascii?Q?7RE5WrDsoeQHqaXBiHn/RI1sWJBwWEomHq92hrlRdqZEaoA+N1T1j8C+gswM?=
 =?us-ascii?Q?eaijtdNYhfhYyboggpwzr5miRfapnGGtzzNMx7XhcKX9fSclgToVWL1L3nSF?=
 =?us-ascii?Q?LsIYKwXj5DXz87cLIDwt1953UKHm1yw6Fho1tdNx2eoxMksaaSMjjUYnlWGk?=
 =?us-ascii?Q?rqXkhvCTVgBnwoPEAG46C1/Yrky8EKslwcm3SiNxaGKETnh0ONAmyDL4S7yZ?=
 =?us-ascii?Q?xme4sVI99tqkPz1B2Y5PqD124MGRwPwa/hbfmifmy88epQNPeV15z/5Veol9?=
 =?us-ascii?Q?/TpQs9fwaoCjc3XtXgwN8YmH2pWFuwhZAbjAt4qTWQfEYXSA60txCpTsDbpc?=
 =?us-ascii?Q?o9Nqrqrm2TLRkygUc5X//pqG2vtW5hy7tgN2KNF0+WrR7obk/PAbB/ICUZNo?=
 =?us-ascii?Q?a70jBdIx3Q/Dh6vPuck5QD1VFoqFtZDLFM8oAoaSkJld5DiZe599kG7LRZ8s?=
 =?us-ascii?Q?nGlJP35s8MDEsCbQ8ClxS/X3a3R2cgbJMrmynh7J4VtCYb/iKB+rxWSafIBB?=
 =?us-ascii?Q?rzIJSSmasNgvoVKg5JwyKaLrWsfsxe9ku6QRVPrr6XrzpzwDbTlrVMd/HfiX?=
 =?us-ascii?Q?uuBKt4DViUNChvyrxNVBRjPZaMExr+qhoi0d758CC3BtxXSCXa5ldpLgl63w?=
 =?us-ascii?Q?E+iqZmOyZelIMNnn3yLvgG+64bvGuTkNoxXIfvrfwqd5+AjAIT8e3wz9f3jb?=
 =?us-ascii?Q?Ko+8ZPyYDQSjepw/D8aLTdqGT+9XQw7iI0PjtoYPHiSsl21ZSf3v58MFfUyn?=
 =?us-ascii?Q?bBccDoR2bvz0Lwpjv5mJuLr4yUnJVFGTYz3scHs8ZqCaMzlBIYFVdQzXxoOi?=
 =?us-ascii?Q?gV0CkljiSfoNGzwZCHLYUtkYPXpeNqrWl+5N7rPN3TE+u+dFAAuIYfqAyAQV?=
 =?us-ascii?Q?+JsTQy2hxIYCTDwC34eh/2vN5ACRFuQfVfwWfSkHEK1O/wOCBTqu4mhrNrx3?=
 =?us-ascii?Q?pOid9Exduk0C4R1DyK89sDYawIRGvNuoaKJ62/uDq4kqv+NlxFgWs1y+5tXR?=
 =?us-ascii?Q?cVrw76wVBuramH5a8FcSQxCpAz1akIMn41cgMuTgJcd3dngOVpYtSP/vv59A?=
 =?us-ascii?Q?BUsoXCUAdclMQms8i5iBNPvipI5U9ijVeSkSY15OPbSTBwYH7ny7agbel8cq?=
 =?us-ascii?Q?XlYcnDy/G5Fh8ooTRZmDFeO9/KKxdQcORpm23y3bDIarw35V9KE6sTAPmY0w?=
 =?us-ascii?Q?6quYlEFBUw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: SYH9QS9rMBEt5KfrrpwBQbvmELKWj8YqT2CNTBwPPiG88daW12g7E9SYJkUh37QWxQeTrl4vvFOSZObvxO2qXqoP2NGXm9hnTDlYizek5gkcVID9PKygf9nx648QgbUztelg9XfC+R7+K0TzMdVa01OslgFFlq7WQ0WOKf0ShJMJZFche3NOZ9Lyd/EM4UKb7paawpclYHCczoitWPAWUFdM1bMU6LWRAgfgobL1A//h/wCX5oMTN+uJTG6K8h0T7raMDz6HWKWQ18KZM+PLsyNi4H+tVVkWE0XZ3ewlj3t7CrIt3GSARsAnOOLEPQ0MNZDbMw6PzAh0tNa8gK20Aw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e932e652-8613-45e2-644a-08debd941cf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 15:08:17.1280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AoaNHygA9GqLuJgtUockp1VJ7wwM7vHWMARa921bwqp/Dt2ArldWe5jpyNUxNpuhmdqmp5Ix6UgsLILNaeE90AOYWN5uueQa8+vm9Xb0gzU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4884
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780067317; x=1811603317;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w8+FYw6D5e0QSehowGzN9+M5AY3qI9kDeFGRekQvVbA=;
 b=WzYBTpTmVsXIZi/jv1FUXE0SGXT2s/4gXGkKhuSgI5AazqDQROmXOs1v
 4Yz2koTiFiHZDJgzmpA2wU9hcEnoFquk2jdDP6MW42/f1J1kzLjjyDzVT
 NaO+1a6AU66uH5Yj9Y4J0R2aSCrpAmP/jE9C+ApE/wVVRLoJXQF3KB2SU
 XscL1MG4jLPzX2HsLDgqYDO5FEON7QDn0uF9+uW/UwJGmyXIwGqm69bO1
 groN42xoSxhQg7I3zWDJpwXLO9Zg4QJpYI6R+mrZA0TGLD4GfQwB+07Q0
 NFi51d3TqdHABOzfz1k6Y7SwNgdEjdBFZ2T/DoaM3zI7SiPwtBlQrgm/J
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WzYBTpTm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v11 net-next 8/8] ice: implement E825
 TX ref clock control and TXC hardware sync status
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Queue-Id: 19B2A6044BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Thursday, May 28, 2026 2:22 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>; netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: RE: [Intel-wired-lan] [PATCH v11 net-next 8/8] ice: implement E8=
25
> TX ref clock control and TXC hardware sync status
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Grzegorz Nitka
> > Sent: Tuesday, May 26, 2026 11:34 AM
> > To: netdev@vger.kernel.org
> > Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> > kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> > donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> > Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> > intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> > Prathosh.Satish@microchip.com; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; pabeni@redhat.com;
> davem@davemloft.net
> > Subject: [Intel-wired-lan] [PATCH v11 net-next 8/8] ice: implement
> > E825 TX ref clock control and TXC hardware sync status
> >
> > Build on the previously introduced TXC DPLL framework and implement
> > full TX reference clock control and hardware-backed synchronization
> > status reporting for E825 devices.
> >
> > E825 firmware may accept or override TX reference clock requests based
> > on device-wide routing constraints and link conditions. Because the
> > final selection becomes visible only after a link-up event, the driver
> > splits the observation into two complementary signals:
> >
> >   - TXCLK pin state reflects the requested TX reference clock
> >     (pf->ptp.port.tx_clk_req). After a link-up, the value is
> > reconciled
> >     against the SERDES reference selector by
> >     ice_txclk_update_and_notify(); if firmware or auto-negotiation
> >     selected a different clock, tx_clk_req is overwritten so that pin
> >     state converges to the actual hardware selection.
> >
> >   - TXC DPLL lock status reflects hardware synchronization:
> >       * LOCKED   when an external TX reference is in use
> >       * UNLOCKED when falling back to ENET/TXCO, or when a requested
> >         external reference has not (yet) been accepted by hardware.
> >
> > Userspace observing only pin state therefore sees user intent, while
> > lock status is the authoritative indicator of whether the requested
> > clock is actually selected and synchronizing. This matches the DPLL
> > subsystem model where pin state describes topology and device lock
> > status describes signal quality.
> >
> > TX reference selection topology:
> >   - External references (SYNCE, EREF0) are represented as TXCLK pins
> >   - The internal ENET/TXCO clock has no pin representation; when
> >     selected, all TXCLK pins are reported DISCONNECTED
> >
> > With this change, TX reference clocks on E825 devices can be reliably
> > selected, observed via standard DPLL interfaces, and monitored for
> > effective synchronization through TXC DPLL lock status.
> >
> > Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/Makefile     |   2 +-
> >  drivers/net/ethernet/intel/ice/ice.h        |  12 +
> >  drivers/net/ethernet/intel/ice/ice_dpll.c   | 172 ++++++++++-
> >  drivers/net/ethernet/intel/ice/ice_dpll.h   |  30 +-
> >  drivers/net/ethernet/intel/ice/ice_ptp.c    |  37 ++-
> >  drivers/net/ethernet/intel/ice/ice_ptp.h    |   6 +
> >  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  37 +++
> > drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  10 +
> > drivers/net/ethernet/intel/ice/ice_txclk.c  | 320 ++++++++++++++++++++
> > drivers/net/ethernet/intel/ice/ice_txclk.h  |  40 +++
> >  10 files changed, 646 insertions(+), 20 deletions(-)  create mode
> > 100644 drivers/net/ethernet/intel/ice/ice_txclk.c
> >  create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.h
> >
> > diff --git a/drivers/net/ethernet/intel/ice/Makefile
> > b/drivers/net/ethernet/intel/ice/Makefile
> > index 38db476ab2ec..95fd0c49800f 100644
> > --- a/drivers/net/ethernet/intel/ice/Makefile
> > +++ b/drivers/net/ethernet/intel/ice/Makefile
> > @@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=3D	\
> >  	ice_vf_mbx.o		\
> >  	ice_vf_vsi_vlan_ops.o	\
> >  	ice_vf_lib.o
> > -ice-$(CONFIG_PTP_1588_CLOCK) +=3D ice_ptp.o ice_ptp_hw.o ice_dpll.o
> > ice_tspll.o ice_cpi.o
> > +ice-$(CONFIG_PTP_1588_CLOCK) +=3D ice_ptp.o ice_ptp_hw.o ice_dpll.o
> > +ice_tspll.o ice_cpi.o ice_txclk.o
> >  ice-$(CONFIG_DCB) +=3D ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
> >  ice-$(CONFIG_RFS_ACCEL) +=3D ice_arfs.o
> >  ice-$(CONFIG_XDP_SOCKETS) +=3D ice_xsk.o
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h
> > b/drivers/net/ethernet/intel/ice/ice.h
> > index 725b130dd3a2..f72bb1aa4067 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -1155,4 +1155,16 @@ static inline struct ice_hw
> > *ice_get_primary_hw(struct ice_pf *pf)
> >  	else
> >  		return &pf->adapter->ctrl_pf->hw;
> >  }
> > +
> > +/**
> > + * ice_get_ctrl_pf - Get pointer to Control PF of the adapter
> > + * @pf: pointer to the current PF structure
> > + *
> > + * Return: A pointer to ice_pf structure which is Control PF,
> > + * NULL if it's not initialized yet.
> > + */
> > +static inline struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf) {
> > +	return !pf->adapter ? NULL : pf->adapter->ctrl_pf; }
> >  #endif /* _ICE_H_ */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> > b/drivers/net/ethernet/intel/ice/ice_dpll.c
> > index 1b193e0c35ab..fcc70a7add3b 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> > @@ -4,6 +4,7 @@
> >  #include "ice.h"
> >  #include "ice_lib.h"
> >  #include "ice_trace.h"
> > +#include "ice_txclk.h"
> >  #include <linux/dpll.h>
> >  #include <linux/property.h>
> >
> > @@ -19,8 +20,6 @@
> >  #define ICE_DPLL_SW_PIN_INPUT_BASE_QSFP		6
> >  #define ICE_DPLL_SW_PIN_OUTPUT_BASE		0
> >
> > -#define E825_EXT_EREF_PIN_IDX			0
> > -#define E825_EXT_SYNCE_PIN_IDX			1
> >  #define E825_RCLK_PARENT_0_PIN_IDX		0
> >  #define E825_RCLK_PARENT_1_PIN_IDX		1
> >
> > @@ -2615,6 +2614,82 @@ ice_dpll_rclk_state_on_pin_get(const struct
> > dpll_pin *pin, void *pin_priv,
> >  	return ret;
> >  }
> >
> > +/**
> > + * ice_dpll_txclk_work - apply a pending TX reference clock change
> > + * @work: work_struct embedded in struct ice_dplls
> > + *
> > + * This worker executes an outstanding TX reference clock switch
> > +request
> > + * that was previously queued via the DPLL TXCLK pin set callback.
> > + *
> > + * The worker performs only the operational part of the switch,
> > issuing
> > + * the necessary firmware commands to request a new TX reference
> > clock
> > + * selection (e.g. triggering an AN restart). It does not verify
> > +whether
> > + * the requested clock was ultimately accepted by the hardware.
> > + *
> > + * Hardware verification, software state reconciliation, pin state
> > + * notification, and TXC DPLL lock-status updates are performed
> > later,
> > + * after link-up, by ice_txclk_update_and_notify().
> > + *
> > + * Context:
> > + *   - Runs in process context on pf->dplls.wq and may sleep.
> > + *   - Serializes access to shared TXCLK state using pf->dplls.lock.
> > + */
> > +static void ice_dpll_txclk_work(struct work_struct *work) {
> > +	struct ice_dplls *dplls =3D
> > +		container_of(work, struct ice_dplls, txclk_work);
> > +	struct ice_pf *pf =3D container_of(dplls, struct ice_pf, dplls);
> > +	struct dpll_pin *old_pin =3D NULL;
> > +	struct dpll_pin *new_pin =3D NULL;
> > +	enum ice_e825c_ref_clk clk;
> > +	bool do_switch;
> > +	int err;
> > +
> > +	mutex_lock(&pf->dplls.lock);
> > +	do_switch =3D pf->dplls.txclk_switch_requested;
> > +	clk =3D pf->ptp.port.tx_clk_req;
> > +	mutex_unlock(&pf->dplls.lock);
> > +
> > +	if (!do_switch)
> > +		return;
> > +
> > +	err =3D ice_txclk_set_clk(pf, clk);
> > +
> > +	mutex_lock(&pf->dplls.lock);
> > +	/* Only clear the request flag if no newer request arrived
> > while
> > +	 * the lock was dropped. Otherwise leave it set so the re-
> > queued
> > +	 * worker run picks up the updated tx_clk_req value.
> > +	 */
> > +	if (pf->ptp.port.tx_clk_req =3D=3D clk)
> > +		pf->dplls.txclk_switch_requested =3D false;
> > +	if (err) {
> > +		/* Roll back the requested clock to match the current
> > hardware
> > +		 * state so that ice_txclk_update_and_notify() does not
> > +		 * misinterpret a future link-up as a failed switch.
> > Only roll
> > +		 * back if no newer request arrived in the meantime;
> > otherwise
> > +		 * the re-queued worker run will apply the updated
> > value.
> > +		 */
> > +		dev_err(ice_pf_to_dev(pf),
> > +			"TX clock switch to %u failed, err=3D%d;
> > reverting\n",
> > +			clk, err);
> > +		if (pf->ptp.port.tx_clk_req =3D=3D clk) {
> > +			/* Capture pins for post-unlock notification so
> > that
> > +			 * userspace observes the requested pin flipping
> > back
> > +			 * to DISCONNECTED and the effective pin to
> > CONNECTED.
> > +			 */
> > +			new_pin =3D ice_txclk_get_pin(pf, clk);
> > +			old_pin =3D ice_txclk_get_pin(pf, pf-
> > >ptp.port.tx_clk);
> > +			pf->ptp.port.tx_clk_req =3D pf->ptp.port.tx_clk;
> > +		}
> > +	}
> > +	mutex_unlock(&pf->dplls.lock);
> > +
> > +	if (old_pin)
> > +		dpll_pin_change_ntf(old_pin);
> > +	if (new_pin)
> > +		dpll_pin_change_ntf(new_pin);
> > +}
> > +
> >  /**
> >   * ice_dpll_txclk_state_on_dpll_set - set a state on TX clk pin
> >   * @pin: pointer to a pin
> > @@ -2626,7 +2701,9 @@ ice_dpll_rclk_state_on_pin_get(const struct
> > dpll_pin *pin, void *pin_priv,
> >   *
> >   * Dpll subsystem callback, set a state of a Tx reference clock pin
> >   *
> > + * Context: Acquires and releases pf->dplls.lock
> >   * Return:
> > + * * 0 - success
> >   * * negative - failure
> >   */
> >  static int
> > @@ -2635,11 +2712,36 @@ ice_dpll_txclk_state_on_dpll_set(const struct
> > dpll_pin *pin, void *pin_priv,
> >  				 void *dpll_priv, enum dpll_pin_state
> > state,
> >  				 struct netlink_ext_ack *extack)
> >  {
> > -	/*
> > -	 * TODO: set HW accordingly to selected TX reference clock.
> > -	 * To be added in the follow up patches.
> > -	 */
> > -	return -EOPNOTSUPP;
> > +	struct ice_dpll_pin *p =3D pin_priv;
> > +	struct ice_pf *pf =3D p->pf;
> > +	enum ice_e825c_ref_clk new_clk;
> > +
> > +	if (ice_dpll_is_reset(pf, extack))
> > +		return -EBUSY;
> > +
> > +	if (state !=3D DPLL_PIN_STATE_CONNECTED &&
> > +	    state !=3D DPLL_PIN_STATE_DISCONNECTED) {
> > +		NL_SET_ERR_MSG(extack,
> > +			       "unsupported pin state for TX reference
> > clock");
> > +		return -EINVAL;
> > +	}
> > +
> > +	mutex_lock(&pf->dplls.lock);
> > +	if (state =3D=3D DPLL_PIN_STATE_DISCONNECTED &&
> > +	    p->tx_ref_src !=3D pf->ptp.port.tx_clk_req)
> > +		goto unlock;
> > +
> > +	new_clk =3D (state =3D=3D DPLL_PIN_STATE_DISCONNECTED) ?
> > ICE_REF_CLK_ENET :
> > +			p->tx_ref_src;
> > +	if (new_clk =3D=3D pf->ptp.port.tx_clk_req)
> > +		goto unlock;
> > +
> > +	pf->ptp.port.tx_clk_req =3D new_clk;
> > +	pf->dplls.txclk_switch_requested =3D true;
> > +	queue_work(pf->dplls.wq, &pf->dplls.txclk_work);
> > +unlock:
> > +	mutex_unlock(&pf->dplls.lock);
> > +	return 0;
> >  }
> >
> >  /**
> > @@ -2651,10 +2753,21 @@ ice_dpll_txclk_state_on_dpll_set(const struct
> > dpll_pin *pin, void *pin_priv,
> >   * @state: on success holds pin state on parent pin
> >   * @extack: error reporting
> >   *
> > - * dpll subsystem callback, get a state of a TX clock reference pin.
> > + * TXCLK DPLL pin state is derived and not stored explicitly.
> > + *
> > + * Only external TX reference clocks (SYNCE, EREF0) are modeled
> > + * as DPLL pins. The internal ENET (TXCO) clock has no pin and,
> > + * when selected, all TXCLK pins are reported DISCONNECTED.
> > + *
> > + * During a pending TXCLK switch, the requested pin may be
> > + * reported as CONNECTED before hardware verification.
> > + * Hardware acceptance and synchronization are reported
> > + * exclusively via TXC DPLL lock-status.
> >   *
> > + * Context: Acquires and releases pf->dplls.lock
> >   * Return:
> >   * * 0 - success
> > + * * negative - failure
> >   */
> >  static int
> >  ice_dpll_txclk_state_on_dpll_get(const struct dpll_pin *pin, void
> > *pin_priv, @@ -2663,11 +2776,18 @@
> > ice_dpll_txclk_state_on_dpll_get(const struct dpll_pin *pin, void
> > *pin_priv,
> >  				 enum dpll_pin_state *state,
> >  				 struct netlink_ext_ack *extack)
> >  {
> > -	/*
> > -	 * TODO: query HW status to determine if the TX reference is
> > selected.
> > -	 * To be added in the follow up patches.
> > -	 */
> > -	*state =3D DPLL_PIN_STATE_DISCONNECTED;
> > +	struct ice_dpll_pin *p =3D pin_priv;
> > +	struct ice_pf *pf =3D p->pf;
> > +
> > +	if (ice_dpll_is_reset(pf, extack))
> > +		return -EBUSY;
> > +
> > +	mutex_lock(&pf->dplls.lock);
> > +	if (pf->ptp.port.tx_clk_req =3D=3D p->tx_ref_src)
> > +		*state =3D DPLL_PIN_STATE_CONNECTED;
> > +	else
> > +		*state =3D DPLL_PIN_STATE_DISCONNECTED;
> > +	mutex_unlock(&pf->dplls.lock);
> >
> >  	return 0;
> >  }
> > @@ -4674,10 +4794,30 @@ void ice_dpll_deinit(struct ice_pf *pf)  {
> >  	bool cgu =3D ice_is_feature_supported(pf, ICE_F_CGU);
> >
> > +	/* Clear ICE_FLAG_DPLL under the lock so that any new caller of
> > +	 * ice_txclk_update_and_notify() observes the cleared flag and
> > +	 * returns early. In-flight callers that already passed the
> > flag
> > +	 * check hold txclk_notify_rwsem for read across the out-of-
> > lock
> > +	 * dpll_*_change_ntf() calls; the down_write/up_write barrier
> > +	 * below waits for them to finish before pins and the TXC DPLL
> > +	 * device may be freed.
> > +	 */
> > +	mutex_lock(&pf->dplls.lock);
> >  	clear_bit(ICE_FLAG_DPLL, pf->flags);
> > +	mutex_unlock(&pf->dplls.lock);
> > +
> > +	/* Wait for in-flight ice_txclk_update_and_notify() readers */
> > +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
> > +		down_write(&pf->dplls.txclk_notify_rwsem);
> > +		up_write(&pf->dplls.txclk_notify_rwsem);
> > +	}
> > +
> >  	if (cgu)
> >  		ice_dpll_deinit_worker(pf);
> >
> > +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825)
> > +		cancel_work_sync(&pf->dplls.txclk_work);
> > +
> >  	ice_dpll_deinit_pins(pf, cgu);
> >  	if (!IS_ERR_OR_NULL(pf->dplls.pps.dpll))
> >  		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu); @@ -
> > 4706,6 +4846,12 @@ static void ice_dpll_init_e825(struct ice_pf *pf)
> >  	int err;
> >
> >  	mutex_init(&d->lock);
> > +	/* Initialize the txclk worker and its notification rwsem
> > before any
> > +	 * code path can fail: ice_dpll_deinit() runs unconditionally
> > on
> > +	 * failure and calls cancel_work_sync() / down_write() on
> > these.
> > +	 */
> > +	INIT_WORK(&d->txclk_work, ice_dpll_txclk_work);
> > +	init_rwsem(&d->txclk_notify_rwsem);
> >  	init_completion(&d->dpll_init);
> >
> >  	err =3D ice_dpll_init_info_e825c(pf);
> > diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h
> > b/drivers/net/ethernet/intel/ice/ice_dpll.h
> > index 85e38752056d..103ba3e49068 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_dpll.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
> > @@ -8,6 +8,8 @@
> >
> >  #define ICE_DPLL_RCLK_NUM_MAX	4
> >  #define ICE_DPLL_TXCLK_NUM_MAX	2
> > +#define E825_EXT_EREF_PIN_IDX	0
> > +#define E825_EXT_SYNCE_PIN_IDX	1
> >
> >  #define ICE_CGU_R10			0x28
> >  #define ICE_CGU_R10_SYNCE_CLKO_SEL	GENMASK(8, 5)
> > @@ -126,7 +128,8 @@ struct ice_dpll {
> >  /** ice_dplls - store info required for CCU (clock controlling unit)
> >   * @kworker: periodic worker
> >   * @work: periodic work
> > - * @lock: locks access to configuration of a dpll
> > + * @wq: workqueue used to schedule DPLL-related deferred work
> > + * @lock: protects DPLL configuration (see Locking below)
> >   * @eec: pointer to EEC dpll dev
> >   * @pps: pointer to PPS dpll dev
> >   * @txc: pointer to TXC dpll dev
> > @@ -142,6 +145,28 @@ struct ice_dpll {
> >   * @input_phase_adj_max: max phase adjust value for an input pins
> >   * @output_phase_adj_max: max phase adjust value for an output pins
> >   * @periodic_counter: counter of periodic work executions
> > + * @generic: true when generic DPLL ops are used
> > + * @txclk_work: deferred TX reference clock switch worker
> > + * @txclk_switch_requested: a TX ref clock switch is queued in
> > + @txclk_work
> > + * @txclk_notify_rwsem: drains in-flight TXCLK notifications on
> > + teardown
> > + *
> > + * Locking:
> > + *   Acquisition order (top to bottom):
> > + *
> > + *     txclk_notify_rwsem (read)
> > + *       -> pf->dplls.lock
> > + *         -> ctrl_pf->dplls.lock
> > + *
> > + *   - @lock serializes all DPLL state mutations on this PF. When the
> > + *     controlling PF's lock must also be taken (e.g. updating the
> > shared
> > + *     tx_refclks usage map), acquire pf->dplls.lock first, then
> > + *     ctrl_pf->dplls.lock. Skip the second acquire when pf =3D=3D
> > ctrl_pf
> > + *     to avoid recursive locking.
> > + *   - @txclk_notify_rwsem is held for read across
> > + *     ice_txclk_update_and_notify(), including the out-of-lock
> > + *     dpll_*_change_ntf() calls. ice_dpll_deinit() takes the write
> > side
> > + *     standalone (not nested under any other lock) to drain in-
> > flight
> > + *     readers before pins and the TXC DPLL device are freed.
> >   */
> >  struct ice_dplls {
> >  	struct kthread_worker *kworker;
> > @@ -168,6 +193,9 @@ struct ice_dplls {
> >  	s32 output_phase_adj_max;
> >  	u32 periodic_counter;
> >  	bool generic;
> > +	struct work_struct txclk_work;
> > +	bool txclk_switch_requested;
> > +	struct rw_semaphore txclk_notify_rwsem;
> >  };
> >
> >  #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> > b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > index 36df742c326c..380833a24327 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > @@ -4,6 +4,7 @@
> >  #include "ice.h"
> >  #include "ice_lib.h"
> >  #include "ice_trace.h"
> > +#include "ice_txclk.h"
> >
> >  static const char ice_pin_names[][64] =3D {
> >  	"SDP0",
> > @@ -54,11 +55,6 @@ static const struct ice_ptp_pin_desc
> > ice_pin_desc_dpll[] =3D {
> >  	{  SDP3, {  3, -1 }, { 0, 0 }},
> >  };
> >
> > -static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf) -{
> > -	return !pf->adapter ? NULL : pf->adapter->ctrl_pf;
> > -}
> > -
> >  static struct ice_ptp *ice_get_ctrl_ptp(struct ice_pf *pf)  {
> >  	struct ice_pf *ctrl_pf =3D ice_get_ctrl_pf(pf); @@ -1328,6
> > +1324,9 @@ void ice_ptp_link_change(struct ice_pf *pf, bool linkup)
> >  			}
> >  		}
> >  		mutex_unlock(&pf->dplls.lock);
> > +
> > +		if (linkup)
> > +			ice_txclk_update_and_notify(pf);
> >  	}
> >
> >  	switch (hw->mac_type) {
> > @@ -3090,6 +3089,21 @@ static int ice_ptp_setup_pf(struct ice_pf *pf)
> >  		 &pf->adapter->ports.ports);
> >  	mutex_unlock(&pf->adapter->ports.lock);
> >
> > +	/* Seed the per-PHY Tx reference clock usage map for this port.
> > +	 * Only meaningful on E825 (other MAC types don't expose tx-clk
> > +	 * selection). No locking is needed because this runs during
> > +	 * ice_ptp_init() before pf->dplls.lock exists and before any
> > +	 * link event or DPLL callback can observe the map.
> > +	 */
> > +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
> > +		u8 port_num, phy;
> > +
> > +		port_num =3D ptp->port.port_num;
> > +		phy =3D port_num / pf->hw.ptp.ports_per_phy;
> > +		set_bit(port_num,
> > +			&ctrl_ptp->tx_refclks[phy][pf->ptp.port.tx_clk]);
> > +	}
> > +
> >  	return 0;
> >  }
> >
> > @@ -3318,6 +3332,19 @@ void ice_ptp_init(struct ice_pf *pf)
> >  			goto err_exit;
> >  	}
> >
> > +	ptp->port.tx_clk =3D ICE_REF_CLK_ENET;
> > +	ptp->port.tx_clk_req =3D ICE_REF_CLK_ENET;
> > +	if (hw->mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
> > +		enum ice_e825c_ref_clk tx_ref_clk;
> > +
> > +		err =3D ice_get_serdes_ref_sel_e825c(hw, ptp-
> > >port.port_num,
> > +						   &tx_ref_clk);
> > +		if (!err) {
> > +			ptp->port.tx_clk =3D tx_ref_clk;
> > +			ptp->port.tx_clk_req =3D tx_ref_clk;
> > +		}
> > +	}
> > +
> >  	err =3D ice_ptp_setup_pf(pf);
> >  	if (err)
> >  		goto err_exit;
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h
> > b/drivers/net/ethernet/intel/ice/ice_ptp.h
> > index 8c44bd758a4f..c4b0da7ce20e 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> > @@ -144,6 +144,8 @@ struct ice_ptp_tx {
> >   * @link_up: indicates whether the link is up
> >   * @tx_fifo_busy_cnt: number of times the Tx FIFO was busy
> >   * @port_num: the port number this structure represents
> > + * @tx_clk: currently active Tx reference clock source
> > + * @tx_clk_req: requested Tx reference clock source (new target)
> >   */
> >  struct ice_ptp_port {
> >  	struct list_head list_node;
> > @@ -153,6 +155,8 @@ struct ice_ptp_port {
> >  	bool link_up;
> >  	u8 tx_fifo_busy_cnt;
> >  	u8 port_num;
> > +	enum ice_e825c_ref_clk tx_clk;
> > +	enum ice_e825c_ref_clk tx_clk_req;
> >  };
> >
> >  enum ice_ptp_tx_interrupt {
> > @@ -236,6 +240,7 @@ struct ice_ptp_pin_desc {
> >   * @info: structure defining PTP hardware capabilities
> >   * @clock: pointer to registered PTP clock device
> >   * @tstamp_config: hardware timestamping configuration
> > + * @tx_refclks: bitmaps table to store the information about TX
> > + reference clocks
> >   * @reset_time: kernel time after clock stop on reset
> >   * @tx_hwtstamp_good: number of completed Tx timestamp requests
> >   * @tx_hwtstamp_skipped: number of Tx time stamp requests skipped @@
> > -261,6 +266,7 @@ struct ice_ptp {
> >  	struct ptp_clock_info info;
> >  	struct ptp_clock *clock;
> >  	struct kernel_hwtstamp_config tstamp_config;
> > +	unsigned long tx_refclks[ICE_E825_MAX_PHYS][ICE_REF_CLK_MAX];
> >  	u64 reset_time;
> >  	u64 tx_hwtstamp_good;
> >  	u32 tx_hwtstamp_skipped;
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > index 2c18e16fe053..8e5f97835954 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > @@ -486,6 +486,43 @@ static int ice_read_phy_eth56g(struct ice_hw *hw,
> > u8 port, u32 addr, u32 *val)
> >  	return err;
> >  }
> >
> > +/**
> > + * ice_get_serdes_ref_sel_e825c - Read current Tx ref clock source
> > + * @hw: pointer to the HW struct
> > + * @port: port number for which Tx reference clock is read
> > + * @clk: Tx reference clock value (output)
> > + *
> > + * Return: 0 on success, other error codes when failed to read from
> > PHY
> > +*/ int ice_get_serdes_ref_sel_e825c(struct ice_hw *hw, u8 port,
> > +				 enum ice_e825c_ref_clk *clk)
> > +{
> > +	u8 lane =3D port % hw->ptp.ports_per_phy;
> > +	u32 serdes_rx_nt, serdes_tx_nt;
> > +	u32 val;
> > +	int ret;
> > +
> > +	ret =3D ice_read_phy_eth56g(hw, port,
> > +				  SERDES_IP_IF_LN_FLXM_GENERAL(lane, 0),
> > +				  &val);
> > +	if (ret)
> > +		return ret;
> > +
> > +	serdes_rx_nt =3D FIELD_GET(CFG_ICTL_PCS_REF_SEL_RX_NT, val);
> > +	serdes_tx_nt =3D FIELD_GET(CFG_ICTL_PCS_REF_SEL_TX_NT, val);
> > +
> > +	if (serdes_tx_nt =3D=3D REF_SEL_NT_SYNCE &&
> > +	    serdes_rx_nt =3D=3D REF_SEL_NT_SYNCE)
> > +		*clk =3D ICE_REF_CLK_SYNCE;
> > +	else if (serdes_tx_nt =3D=3D REF_SEL_NT_EREF0 &&
> > +		 serdes_rx_nt =3D=3D REF_SEL_NT_EREF0)
> > +		*clk =3D ICE_REF_CLK_EREF0;
> > +	else
> > +		*clk =3D ICE_REF_CLK_ENET;
> > +
> > +	return 0;
> > +}
> > +
> >  /**
> >   * ice_phy_res_address_eth56g - Calculate a PHY port register address
> >   * @hw: pointer to the HW struct
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> > b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> > index 10795d023f44..16b1988e993d 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> > @@ -383,6 +383,8 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw,
> > u8 port);  int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port,
> > bool ena, u8 threshold);  int ice_phy_cfg_ptp_1step_eth56g(struct
> > ice_hw *hw, u8 port);  int ice_ptp_phy_soft_reset_eth56g(struct ice_hw
> > *hw, u8 port);
> > +int ice_get_serdes_ref_sel_e825c(struct ice_hw *hw, u8 port,
> > +				 enum ice_e825c_ref_clk *clk);
> >
> >  #define ICE_ETH56G_NOMINAL_INCVAL	0x140000000ULL
> >  #define ICE_ETH56G_NOMINAL_PCS_REF_TUS	0x100000000ULL
> > @@ -795,4 +797,12 @@ static inline u64 ice_get_base_incval(struct
> > ice_hw *hw)
> >  #define PHY_PTP_1STEP_PD_DELAY_M	GENMASK(30, 1)
> >  #define PHY_PTP_1STEP_PD_DLY_V_M	BIT(31)
> >
> > +#define SERDES_IP_IF_LN_FLXM_GENERAL(n, m) \
> > +	(0x32B800 + (m) * 0x100000 + (n) * 0x8000)
> > +#define CFG_ICTL_PCS_REF_SEL_RX_NT		GENMASK(9, 6)
> > +#define CFG_ICTL_PCS_REF_SEL_TX_NT		GENMASK(28, 25)
> > +#define REF_SEL_NT_ENET				0
> > +#define REF_SEL_NT_EREF0			1
> > +#define REF_SEL_NT_SYNCE			2
> > +
> >  #endif /* _ICE_PTP_HW_H_ */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txclk.c
> > b/drivers/net/ethernet/intel/ice/ice_txclk.c
> > new file mode 100644
> > index 000000000000..5230081c53b9
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_txclk.c
> > @@ -0,0 +1,320 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/* Copyright (C) 2026 Intel Corporation */
>=20
> ...
>=20
> > +#define ICE_REFCLK_USER_TO_AQ_IDX(x) ((x) + 1)
> > +
> > +/**
> > + * ice_txclk_set_clk - Set Tx reference clock
> > + * @pf: pointer to pf structure
> > + * @clk: new Tx clock
> > + *
> > + * Return: 0 on success, negative value otherwise.
> > + */
> > +int ice_txclk_set_clk(struct ice_pf *pf, enum ice_e825c_ref_clk clk)
> > {
> > +	struct ice_pf *ctrl_pf =3D ice_get_ctrl_pf(pf);
> > +	struct ice_port_info *port_info;
> > +	bool clk_in_use;
> > +	u8 port_num, phy;
> > +	int err;
> > +
> > +	if (pf->ptp.port.tx_clk =3D=3D clk)
> > +		return 0;
> > +
> > +	if (IS_ERR_OR_NULL(ctrl_pf)) {
> > +		dev_err(ice_pf_to_dev(pf),
> > +			"Can't set tx-clk: no controlling PF\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	port_num =3D pf->ptp.port.port_num;
> > +	phy =3D port_num / pf->hw.ptp.ports_per_phy;
> > +	port_info =3D pf->hw.port_info;
> > +
> > +	/* Hold ctrl_pf->dplls.lock across both the usage check and the
> > +	 * enable AQ command so that two PFs racing to switch to the
> > same
> > +	 * (phy, clk) cannot both observe clk_in_use =3D=3D false and issue
> > +	 * duplicate enables. The tx_refclks bitmap is updated only
> > later
> > +	 * by ice_txclk_update_and_notify() after link-up, so without
> > this
> > +	 * the check-then-act window is wide open.
> > +	 */
> > +	mutex_lock(&ctrl_pf->dplls.lock);
> > +	clk_in_use =3D ice_txclk_any_port_uses(ctrl_pf, phy, clk);
> > +	if (!clk_in_use) {
> > +		err =3D ice_cpi_ena_dis_clk_ref(&pf->hw, phy, clk, true);
> > +		if (err) {
> > +			mutex_unlock(&ctrl_pf->dplls.lock);
> > +			dev_err(ice_pf_to_dev(pf), "Failed to enable the
> > %u TX clock for the %u PHY\n",
> > +				clk, phy);
> > +			return err;
> > +		}
> > +	}
> > +	mutex_unlock(&ctrl_pf->dplls.lock);
> > +
> > +	if (!clk_in_use) {
> > +		err =3D ice_txclk_enable_peer(pf, clk);
> > +		if (err)
> > +			return err;
> Local PHY clock was enabled above via CPI but
> enable_peer() failed.  Function returns error without
> disabling the locally-enabled clock.
> Isn't it a problem?
>=20

Thanks for that comment. It's not desired situation of course.
But no negative impact on functioning of the device

> > +	}
> > +
> > +	/* We are ready to switch to the new TX clk. */
> > +	err =3D ice_aq_set_link_restart_an(port_info, true, NULL,
> > +					 ICE_REFCLK_USER_TO_AQ_IDX(clk));
> > +	if (err)
> > +		dev_err(ice_pf_to_dev(pf),
> > +			"AN restart AQ command failed with err %d\n",
> > +			err);
> > +
> > +	return err;
> > +}
> > +
>=20
> ...
>=20
> > /* _ICE_TXCLK_H_ */
> > --
> > 2.39.3

