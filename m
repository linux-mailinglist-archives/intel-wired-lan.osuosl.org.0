Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FE9B011F5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jul 2025 06:10:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0F9840694;
	Fri, 11 Jul 2025 04:10:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8CFmjbTUB9wz; Fri, 11 Jul 2025 04:10:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AF61406D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752207030;
	bh=D5SHZ8C8wTcGFxKaeoGyAilkIwu1b6KTzO90QOAb1Fk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lQrUIOlK52rGQCHyIujTgx3x39oASSnRRADg3HybobBK9FtFiYxik+h+r3gmt8q04
	 pJPiilrT4c8l/jYZwYv0Ap6+RPX8b3uL4F1g7OayYHZzb/vlbZscisFZR1va7WJ/rc
	 dK/RMjLTWuaaU7h3sKQ733KlVnbjpF++WCbTrO2VvecJwaKoNuSgIb20Gygjg5inUS
	 n/fcB82QpMhJ/Pl08WUg+pkZ9L7Yb+2cg+8f85y7F3rObFoevU75pKZJZ68fCkax1A
	 Tg/sOA0ZA7dTUVbIGwXQId6OfgpH+gUD+18Is3CaVQN8zQj5oHqZzutxqawpj2t8L+
	 3sfADlUrAjqyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AF61406D0;
	Fri, 11 Jul 2025 04:10:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C2D91E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 04:10:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D37A40668
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 04:10:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8pTHEB3KQjtD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jul 2025 04:10:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9C66A40649
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C66A40649
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C66A40649
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 04:10:27 +0000 (UTC)
X-CSE-ConnectionGUID: /t+5xHiwQAKzSnHNvKnKBA==
X-CSE-MsgGUID: iUhnH1mVR++AW4LyRidAsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="58264822"
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="58264822"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 21:10:27 -0700
X-CSE-ConnectionGUID: L4XjtBdST9mbPIs1P7mG1Q==
X-CSE-MsgGUID: LnGp0ZmoTPqmWFGl+je1Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="161966236"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 21:10:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 21:10:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 10 Jul 2025 21:10:26 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.69)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 21:10:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FdsvNOx97+Zhhj6VsFKB4I5ZuytFZa+eo5F9BaSBRGdOhvjew6StvYO0dzw2K+2CP+MRHDhVEy7YIaIofKsfGIM3diJUZ+RASucuNwIRo6aKD9LI0Jzlvu1TgNKo6WM6vnSlp+aFTMwMcbBoka3PYQ9wCgoGO4kaWrWuZSiYoKNKIJbOqgjmkdCD6g6G49xqlfP74UGsNjI9ILm1BamAGyodMgZUAmKO9B05CO+eTm8e7NHXRf+nIycP4b3F4+6Ws/qiUve6VoLtE7b6m9HAPoHDdkjf1FA8NLXZ3BoYj8Kfi0pIJKwmVHjq0Qsb5AndsgEGLaZdEYdgn+HRw9lG3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D5SHZ8C8wTcGFxKaeoGyAilkIwu1b6KTzO90QOAb1Fk=;
 b=NqEEIPDry3l/EMgT8khheTOG3K4fIVrok/53K5Q7zChjRWX/YMpi2cUItiB/Jy03XhN8HX6zqEkfV+jWLrh1EW4hmxzmSUY8D3Dw3CBeAly0SLF+sQqJoIeyoPW8JL4Y7gCvN1AJ8mGmpAJQhN6d8541QxtfUYc0BQfNby5t5PP+6StGPrfkZqHrLOAVemL4ecmR6lUCS/DxMhWHnA51Yh21WkkeVapVcJt/A1UDvdFKOGU1Q0PZw+HwsgWWq+btHIbwmzDsFx0kAbdhFzxF4u5yotAsjo+YMjeGEEE4+waENgQzEfw7QuwKw61C9CiKzkjfiUfl8hep0igHSO/gfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CH0PR11MB8191.namprd11.prod.outlook.com (2603:10b6:610:181::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.27; Fri, 11 Jul
 2025 04:10:20 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%6]) with mapi id 15.20.8901.024; Fri, 11 Jul 2025
 04:10:20 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Brandeburg, Jesse"
 <jbrandeburg@cloudflare.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: convert ice_add_prof()
 to bitmap
Thread-Index: AQHb4ERUZDaoJzOv5ESlWXfcwW+jdLQoEwmw
Date: Fri, 11 Jul 2025 04:10:19 +0000
Message-ID: <IA1PR11MB6241F18819B62819DE4066628B4BA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250618112925.12193-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250618112925.12193-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CH0PR11MB8191:EE_
x-ms-office365-filtering-correlation-id: 64475680-48f2-44e9-441f-08ddc030d9bf
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3qlav89DqfZbgzMcfxwpiLFm6am32E5l/rEcE+QsVZZdWawddQ2kdz23oAOQ?=
 =?us-ascii?Q?Rx1OGNk5kkdHgCY96OKwHYR9/Q+uPOm8ZnWfcoC3uav4D4eIThBnH24XlhCp?=
 =?us-ascii?Q?wf3LvT2sOicTt/RKEJfXzfedas4t2xoVAF5fGQ/NdYRT2fiRuxvAAoDydKa1?=
 =?us-ascii?Q?eVcWSfpYE7gye4ZccYfZ1GkIRq0ZD1alNshL9ESzTkkKWLJtRujqOo3aJnXL?=
 =?us-ascii?Q?HlekAvOIYDmk1KNNRZ7BJ6XQFQS3z977Fekwf3Ib9m5Vly2xyLB4/upnNILB?=
 =?us-ascii?Q?32GhXgH7U1qa+2Q8CPAK+3jWmHSOqYScwf8/C4VH9T6/MhIZWDDo/sTuuzFj?=
 =?us-ascii?Q?LTD63K2IYI0D+w23Tjaxh//w6HpaBMyFcKPNJicpuD3hs8UVcM6rnW9E4XHh?=
 =?us-ascii?Q?UZmssgDndbSo2I7jJxOzdIWb/+DIBWxZ01/G7qMR7TPZXGIYBhl2rh8TN3lg?=
 =?us-ascii?Q?GBTk6v7MUkrcUN8xBJCXqd2vHoFGVOpWVew/tXmzxmQ1pm4HjlXpSoVFYisg?=
 =?us-ascii?Q?0hD/yiIcTY+i0bI4CAGPbb3LltX+/iBxAz7gkNaRjK8psl9z5V2SacIqNb2n?=
 =?us-ascii?Q?BSJznlOaTlc3qEJgpfR5+K4lIzytYGyVnhOi9zzSebu0dv70+IQamaTL4EJt?=
 =?us-ascii?Q?W5La01r7y3umlY0rM8iZFFMcfXMcxBU3HVUReaDs2btvlZM6jUkH/aitCwfm?=
 =?us-ascii?Q?iTbRKFFH8s3TflJIVJ48uy970I8fkSTVM/YtYSwu2pveZGhdP2FzKK17SkzC?=
 =?us-ascii?Q?xVZOjWfyx/pLgaW/dGDcdKeLeJ8rLYSKjhcciMS57ioOcHMWus1XyPsY91JH?=
 =?us-ascii?Q?qf4N+hnFRlmBOP7VVkQfFmIq6F5fpg5VRrf8TpjaVabiWhJZCAviv7ZDCF5k?=
 =?us-ascii?Q?mcnHn1Uiiv6t6INmUU+Er0lGBrktWVKgZXHfqpeyXZ8czGM56oIyk54+eOdv?=
 =?us-ascii?Q?1l7MLLWwMtp2sQ6o1s+y325c2+xPfophufEx7E+TnrrrcE7ZJIGxEWE5gntS?=
 =?us-ascii?Q?gN/2BFVMhZBVnGl5KS2vmb1/4nclxOepYy/TXTlBG2bHIuut8OTY7cN17Yit?=
 =?us-ascii?Q?Hj7QwQP8D2qH4mevL2K+7G0Y8J5cTPSoeJfPDHWadnODlJtI/c3SvMl9MJ4O?=
 =?us-ascii?Q?A/cZLyQM5CPrO2DvmZmzpISsGFpeKPpVvXSirt0cuadkmRc4zSdbd+u/i/Jn?=
 =?us-ascii?Q?fdyRusGcL5ZwE45Bt4NbVgODqTmNsUAa+IacLGhpoTrQ8yBv/TWEzIpqQkuV?=
 =?us-ascii?Q?ZIELHs4ap4K9mBhFNZL7fMk3CTkNKIQyOJiMFQHbH5UIfcYOoiTy+CIK/KDk?=
 =?us-ascii?Q?Bbiy3Ef4iiHUycw5JcgcrlUMOQBvdRbdeD2IzRLGc5pNbsoqnXkpdobYXEBF?=
 =?us-ascii?Q?NVH4//rwqwjE6iqQMWsvlVaZFydgLMOlRzMLF3fNpjzDq4oWLdxXjxGETS/i?=
 =?us-ascii?Q?jBEtfeGLRIus9ETOTChO97aYAYv0UT1tQqLvzma6AOVXrCrF6WWwpA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?r5Hthjw4zymV5Hu/xWJ4RpSLS5KkF4J40S0/Zc9oWXbCA2jxdF//+LClBA7Y?=
 =?us-ascii?Q?zXZhf9GAszx+dwbzn06Lg0NjTHGHSOxLQ2CBtYJIB2gehKZTBcQQBi6sLQZv?=
 =?us-ascii?Q?hojuGQdB6SZVpjmvo7xutaERsXvDCKclDU7RtVZgOZPyN4IMWc0AiG1VyAPm?=
 =?us-ascii?Q?WwSsuz/Xl1n0Lm3UQHcAG7Gh7oHk8mfPL3HlyC3SxEfo7JFTcPNCaruUKenN?=
 =?us-ascii?Q?UT7dHTVakZq4o5JwKxxI34JBA0JYHodTgHS9rPtiigQ/V9eMryxdackMnDbO?=
 =?us-ascii?Q?WwiuGAqJoGPdIQj9pj7G5YEEyNJIU4Prx6a6imNhx+f3b6jghdL4oFTPwnSR?=
 =?us-ascii?Q?SJrmQaTwxiEE9Ld6d6qVrr57yY7im3BTmsMRs2LZe7P4ZY462cDwdd54pVoN?=
 =?us-ascii?Q?ZBn+cy+Fz4MnPELsrh02169Il4lNARrG+djAl3HwWl6BWio0nbkknivaUPX/?=
 =?us-ascii?Q?C3UczDKsQlSY3SWDN4HNd2Vvbb/WAPCFiz5cnSkWbFMAz1xUPOify1isF2MC?=
 =?us-ascii?Q?QpsctDalwoIN9ilkssm4HthdJnlhiFcjbtaOiP+4EpzmqR6bBWaIdrItgNeH?=
 =?us-ascii?Q?LbNqXnlFuhjP2TX6XThOPX8d5j6dwtZclpMNJ1bcTsSozzmxGkykNDQThLnO?=
 =?us-ascii?Q?x3rMc6DqPhnqxK0hFEHxUGuKOpDVUn5QzAsb6K6UO4nWrnyk0j/9b+F3n9GL?=
 =?us-ascii?Q?xOdKUlfB+6yrixGGMOq34TTfj3n2AZJ75JWqHXjcR5CDDbu/v+PVaYlzSsOp?=
 =?us-ascii?Q?kMLHklQ2aJOh1AiHdpF7d2w4+CCufr8B23Hc1ufy15Mv2qUh8GGvs8O3Vzoy?=
 =?us-ascii?Q?5dN8VyEI0dB5qPOJ/WOaB4oCOTp2uYQbd/OZJ07EhIgug7b7tdVM+1JFJDck?=
 =?us-ascii?Q?biLLOaY0vpDv1A+HXGrBJDy6E18qj2T8zMLhLzCBxNWNPFiBDVV/hKSz1dgu?=
 =?us-ascii?Q?JYvwQGQJ24jM8P8X50/5cgmTu0/l7UcL62vwSR5aMU/F421/jvIUsMbVw6xG?=
 =?us-ascii?Q?4taOhfcG5oBxKrysckkRWrU/o0efc/NAJeCCSldKVTl4BXnX9vu5US2Xz2mn?=
 =?us-ascii?Q?Z5HF2kMqiy4plvYJ5o8sMzAymUpBs5vFtrRIy884kblsRT64PHtRkwqoJyBM?=
 =?us-ascii?Q?gCWTvr4oOMTadyhDpksEnW8dRP1iTrVO1VWfZ4+4qy+B5ns1ax1kcPtZw2Ca?=
 =?us-ascii?Q?Xsk3e1NF4VmNJTblvhyxNf95EWx8cLmuePryYtF/9Nl75Tnoy4DLvxformMc?=
 =?us-ascii?Q?H+UQ+XtSMH2oh7or1f2eiTWc0/IzqQ6i1dpB9FJFItZMLyrUzzZ52t9Mv8Fs?=
 =?us-ascii?Q?v1p8WjP0YsR1lMwXXSVXrD/2cuURpNBGQMwQ5B4TNRXdefc6f0ITcSnJbjOU?=
 =?us-ascii?Q?TIuRIrue1Va9bwJS1uRBJiJsKrl5orutHEn5u/hmbw2LXVXY0tqtEuXM9vn3?=
 =?us-ascii?Q?BHwEWI4Y11anWa0yC2tQrPfdYvIT0YpFE/jGTKIJXY8HmV2woUtoala4WlgG?=
 =?us-ascii?Q?9Z5TQQGizgiHuqByabjg1IYWN8hYuZDQw9EpKhN/A9GH9y3hzJ1kNtWxZ93A?=
 =?us-ascii?Q?1jCXF9Znd8BuH5UWN10QEzUO8xZZwRlb6N4IwQ9M?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64475680-48f2-44e9-441f-08ddc030d9bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2025 04:10:20.0328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LAXAvmCFiT8j6LrWn+4fqFe0dhjDZKToevv9N5OMeujuaAtJJNMUJzdwig4bLZ3PIpiZgUz6qjNUGVslGAeowA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8191
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752207028; x=1783743028;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zg4cuHMLmbgdlgrzU3oaEYohXuLZ9U6Hx73aP7VyoS0=;
 b=JFab8pOPr01sG11uaI5+FVYQecfdsPhcjyN15JO4ipLdHC/bp3gDv62D
 O2kRwxT8A4A8utUkytki/v5WZYxmtR0M5IUyHmC8lBEiWjln+ZwDaacVJ
 HB5SYoadZF/k6DrXceJPw/SN/u2nF24ZYWyi4/4BQWC4RRRAXYKszrI12
 yqxmSDAXlUxS7XmiQr3Gp0oAq55JQsUxUL09w42/FB4MKwAtE2brAEyh0
 GxgFG1Wd9OBE86W7Xe1mrSAJoWuk/yX3MgEp+f07J1IUUB/dKUNavB8Qh
 aztiuDXglOsY6nW9mbrBGUxSTHzC+NqwKZbbTg9hT4cGcHvyAg8RLXvC+
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JFab8pOP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: convert ice_add_prof()
 to bitmap
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: 18 June 2025 16:59
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>; Keller, Jacob E <jacob.e.keller@intel.com>; Loktionov, Aleksandr <al=
eksandr.loktionov@intel.com>; Brandeburg, Jesse <jbrandeburg@cloudflare.com=
>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: convert ice_add_prof() t=
o bitmap
>
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
>
> Previously the ice_add_prof() took an array of u8 and looped over it with=
 for_each_set_bit(), examining each 8 bit value as a bitmap.
>This was just hard to understand and unnecessary, and was triggering undef=
ined behavior sanitizers with unaligned accesses within bitmap fields (on o=
ur internal tools/builds). Since the @ptype being passed in was already dec=
lared as a bitmap, refactor this to use native types with the advantage of =
simplifying the code to use a single loop.
>
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> CC: Jesse Brandeburg <jbrandeburg@cloudflare.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> .../net/ethernet/intel/ice/ice_flex_pipe.h    |  7 +-
> .../net/ethernet/intel/ice/ice_flex_pipe.c    | 78 +++++++------------
> drivers/net/ethernet/intel/ice/ice_flow.c     |  4 +-
> 3 files changed, 34 insertions(+), 55 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
