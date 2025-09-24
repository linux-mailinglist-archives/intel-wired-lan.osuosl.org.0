Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2025B9A127
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 15:40:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A55E440D39;
	Wed, 24 Sep 2025 13:40:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wPBOGk6vcjLV; Wed, 24 Sep 2025 13:40:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1115740D3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758721258;
	bh=eGi3UorgGo/OSXhuaDFukC0DSka2bBQjtBBT2X7ppkw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ncBB04zWhPZV29dAGzCuHddV9eDkS9xiNz9hHErPvAx7xVOIY5XJa8Tr2MXZv2oTp
	 ZP2jJpu+hKm7iwn93X8z+dWv+H6flD/FEmWb2apdGc0Sk+ks1Mrv/CBdp9LtW6TUCw
	 /2HZsu8aLGGYEY7fNX9Ft5zaIdR9JfqaxNSKwFDIW76lqDgTOW38y9uM8y2rZ+/fOB
	 SzZ1mZiB9o8HxOSxFy3ZaPHG8LS0UTqjCac86CPjWG+mJQwl1Ub9peQBGFnxNxCJ/C
	 u+xnuE8M9l9V6JAfV3TJO1noEXszEQ68zi2v4bccRe5dgMHUuf6UAeuD/vvbPnFGSz
	 20ZwGEsqnylXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1115740D3F;
	Wed, 24 Sep 2025 13:40:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C5E4129
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D41760BFB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:40:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gE2YHpXHgCx5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 13:40:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6DCA960BE6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DCA960BE6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DCA960BE6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:40:55 +0000 (UTC)
X-CSE-ConnectionGUID: G5SzW0WpRDCp5Rl11h6UGA==
X-CSE-MsgGUID: 5dyVUkM1S/STQJvkJ8fGsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="48583269"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="48583269"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 06:40:53 -0700
X-CSE-ConnectionGUID: Ajexe2dTQM6tS05ljivMrw==
X-CSE-MsgGUID: VdU8NgeXSK6bBBu7uWGDvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177434160"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 06:40:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 06:40:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 06:40:51 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.30)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 06:40:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AHfk460tn4V+WY54Amm/QJ9S5WCLJaIO82ujGHKtQMpLM3rm50YBCBYswEuwMymJ5AP8w0ee+/yLVgBK/4hIZp4Q1NzZjJZVmTT3cUtG+8CyrS+dhcYPaXnfjJ/0Mb14q9eahaPSSv8S28wwSdnH5AjEgn68flheOTYsJHfyk/aBxHCk3KPQ5zRN0VsKPdf6O2hKBpgoLZEcbfTxeAQBtiDOxQgn7otZom98/uOfBE3l9QSNQuUEeEn9n1fmCR+aMD4zwuM9HvH2MTlKIfWQ33FNENT0btxI9aGrJ06t36dKrq4L0xX+hUfmQryVhhZFm1EOuPB6dxuGyaPuwCr3Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eGi3UorgGo/OSXhuaDFukC0DSka2bBQjtBBT2X7ppkw=;
 b=DjuBAGDhqENmUDl9aqcc6tIzvqTesjGwnw2Z63eoJbvrfWqsALcT1yDg3VVWiLwY4+NqNVlQ3gUmdvI9sHu6TXYZ+QCU32ebpIiD7YE7gX3upTwDiNkowqrpQ0UHY9IUMn4/4n/hqmVC5jTRb/LXEmIcPa5k1yTTvF6haYDpKIQI9ZfE4qDBDpWoqpkFODUeRF8YydwM+8MoFqKF6KAKQy88V5Oiyfvt6rxko/PjwomtUv0UczQT5VckbvEiprze7jd4HFi5NmEObTVcDS1j1zSewcS5xp77ESVdaKk+YKxm+KaGu8zchshjAAUtdyXGBwE1eRDR1bKlbFiJYu4zrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB7002.namprd11.prod.outlook.com (2603:10b6:510:209::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 13:40:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Wed, 24 Sep 2025
 13:40:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jakub Kicinski
 <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Michael Chan
 <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>, "Tariq
 Toukan" <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>
CC: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH net-next v6 5/5] selftests: net-drv: stats: sanity check
 FEC histogram
Thread-Index: AQHcLVCAPuRozXaEzk2Y13vds9cMBLSiVvOw
Date: Wed, 24 Sep 2025 13:40:43 +0000
Message-ID: <IA3PR11MB8986A24E0ADE2DCA018998BDE51CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250924124037.1508846-1-vadim.fedorenko@linux.dev>
 <20250924124037.1508846-6-vadim.fedorenko@linux.dev>
In-Reply-To: <20250924124037.1508846-6-vadim.fedorenko@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB7002:EE_
x-ms-office365-filtering-correlation-id: f2639d13-d130-4f27-8a12-08ddfb6ff575
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?6nFUsZmQj4hYKpQ9ZjXo7/rPIeksi7zD4ZUaQ5qcMXhzBog5dZKZ3tiFsCUD?=
 =?us-ascii?Q?o5GB9Uj78PslnsNlZX9yN2va42CrnCW4N88XBal0dPQ1S0IZlLqUiNFxrm8f?=
 =?us-ascii?Q?1/kWGYJ6w69kO444kfLCa1vWcs4ph0DTz4Be6QGsrl1IlnxsQQJZbcv8lBC9?=
 =?us-ascii?Q?ljL3Y54Q4BaEBmKkO3UaDage8cjiG+UW8pM0AACNvuX9HxlMB63LxKghYpRh?=
 =?us-ascii?Q?DJdysfaovnJol+1GcjZwGC/CZzzrcPvnI983FSNbCo0HRTrS+Voq3GpHmNCg?=
 =?us-ascii?Q?OK5NVAW497YU8w0NnwuETpp5pw+AioBAXm+i3lsYYGdYND694fwfLvAYI2m/?=
 =?us-ascii?Q?16xKEIy/cArU8CWKLlLBFkF1XA9iZs24WgR536l9lhXIWDoBQLyHedC7IQW1?=
 =?us-ascii?Q?ft8ZHe61cBJP2boUStT+d3ViWMd53nan8QIkJ+G166VBYW3+VEQJ1t3Xxu4k?=
 =?us-ascii?Q?RhfKRjiWdViPruk69gJC2WYGwKxKKaFP6Y/p0wSUMjmEpGzg1RhT4SaGBGwS?=
 =?us-ascii?Q?O5r9iNdb3YGpS0yLOf6lU+zsyUjuoUNkUTWz7MjPgf7vgMteXoZYlP9PUJXy?=
 =?us-ascii?Q?HbEIwKcnku1CYeDuLjXDdD9+Y4VMaPFTvKuAGHIXinjxI+iJUYeUfGA/VPtw?=
 =?us-ascii?Q?ki7F4MPJW0HSuVO3CbB7F77NZefpqok5CT2ticab2+B0svx+ML5s3cXcdTuJ?=
 =?us-ascii?Q?DNEUNj7sqEO/fN6cMI87HqyE49M2QexNXt6bq824JNH4iJMOOrgGGOwg5Fhf?=
 =?us-ascii?Q?t2+NLDw+zlBP+trXLVIsAymsxFsEkbhW/HKJcwcNWdheR4TvNQGsffe7Mz9E?=
 =?us-ascii?Q?UC0owgQ/m9zi/+paaRbn+JKL6p/7LAKHBl83NUsu0Gix6V/3J3FqePtuvooo?=
 =?us-ascii?Q?5fNbX1hrBJWv1xaquKBJbwJd7YG8oxxcrGZZoZ5n+Vs/wO3LsNcaf1DH51LW?=
 =?us-ascii?Q?/19fyPz7xSQMtM+swRp+wC7D0QYZ1F8CPNwU9lLsTLlWoigLWQy3xCvm5VX9?=
 =?us-ascii?Q?MEadEk2bixVOUcBaTjnLBvlekk86DW7saf5sSWxoov9PFvIqz7SGgimT/KCP?=
 =?us-ascii?Q?4MwWVWlqmJMmUtesDa8Dhf3aRLorU05Y+Mdasun2GWJZnFH/HzCvA0Kvz4HR?=
 =?us-ascii?Q?GFkfp7wY4087jJa8RpkF4pGYya0g8j7LjrPCJLtRwwsJ8hK0JJgRhi19eOzm?=
 =?us-ascii?Q?ohNzJmX4WUqQWH8VHX42VSJ69utVpzYVc/okFFnDjbFFwi9eSJw010Ck6oFv?=
 =?us-ascii?Q?q64m6WozUsrZhLkR3gnuwDcDkrDTd8dAyRNy1cxJ0goIUhvt/aKlwKtrGpVb?=
 =?us-ascii?Q?MVOlyx9Q6MOfT3aK2DbjSnC7d4vQZ1Rgubq+spIr8Vo3CgqjTwnwcfsWWCgx?=
 =?us-ascii?Q?21y2XShS9aMolcd/PqlFn6olTwoOAVAxWD/94xISIaf2f/+vur2b1bXAID96?=
 =?us-ascii?Q?7l1MDT4WqFcsV/HkoH6IMcFsw9cZhuTVUfYDsm402S+8Z5yp7FD5FOV33hYe?=
 =?us-ascii?Q?j2511uBKKr3KCObTuvz37uzxEgqWLZW8PYoE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?j987I/Og5m0VG1DXYFNaDMYZPczciULYglOOoIhGPcXr5BXF7X7LXE99lz9C?=
 =?us-ascii?Q?I5n/2fcTUGGwnfdPnKdCZlgk6tlf93LCjCrMrnOE0jwcRst3XNzgeBkRdtjQ?=
 =?us-ascii?Q?4G5YuLdE9YTH6CAXrNOKU0N8d9c20QNGN5/LQItbf1Nyk3Elagc033PdMNVN?=
 =?us-ascii?Q?dP026Y/Puv7BoswiK7JiT6Ik69xN144aYxYTbXxGGBUHw1y9QQ/qn9HjPvHt?=
 =?us-ascii?Q?CCupqa+Rbr30tyAbG/5/SCWDyuc7mI/iIyQaenXWqNpsK7+X3RDKEL8STViB?=
 =?us-ascii?Q?3UfHNrQ3VuzQVlJsTcrH16c0x11gjxxYQYPY7mXcBikrURHGdGIwSYQHKALW?=
 =?us-ascii?Q?9wDVd/WSoXcn8S6TbI+05HEIasQoIABUI1eAGxHTNhaG6vcY1olJvTNCg/xH?=
 =?us-ascii?Q?jEDJNUoCsIaEmCSTc32xEt38hL+e5xolzO8ej33zvjZV+W+1o1E/EV9cEYKq?=
 =?us-ascii?Q?WE32cASrz2ttttseEndNtculAMdaXzK6jqEdi0p084ZLj9QAlGG0fEaCJDkl?=
 =?us-ascii?Q?9pf9W1rNtcycK/kXJ/nYDv1oh/ZXgmklX1U8IomKw5F8qDAvquSgUdMyzj9h?=
 =?us-ascii?Q?7y5E6MsHw9fPSUwPdiBz1RxMg8+DAtaqXIUCy/+dHTbQ/jgQQT6o9Tq7fPBb?=
 =?us-ascii?Q?nJbA/jG8P6WVHHDJPfncpBrDoT0kXMyTutwXOxl/RzIfS5MCa1u6W2oP7ztD?=
 =?us-ascii?Q?S6eMJnkVMfqLTl/d9Mi3EupF0SAROn4OlBWaMzjUHd6csdiHZfoF7IgS5/aB?=
 =?us-ascii?Q?OAWHR0H46n5EFGvQ90VJhtERb7kzL0QaakJvgJuvFMGT5gdggXPkpAdEm26e?=
 =?us-ascii?Q?uMk7YKbugYBbxrVkIrlTkt1POWz7pwe/7wZuR/X0EG/2gj5Gm4eyAs8qyo8x?=
 =?us-ascii?Q?Vbb6eaggja7CD4Bv18R/B0/XlL/9TnvTfyOZ2jw3zqKbVzQg20amqj+gemgh?=
 =?us-ascii?Q?fG2246ANGHluZFbxBEecqYWoQH8hrTMqsJ9xD+XbyOOsTO22PjjVj1n5J+ir?=
 =?us-ascii?Q?ZuOQdtXfHR45w2tYaXVdn2Eb6ROJiTRmQEow2TFWJOptRNJEICL5RTAHPVJV?=
 =?us-ascii?Q?ENCltcMB++KLjM+3HjIaAlwBo8zBXaKepZVnsKLmNBvtVPmxtl6K/souryIS?=
 =?us-ascii?Q?MWIHtR8MZV3HWj3irAC5okyT73eQQJtPb2uffplV+WI+/lD04k0xPnrL4TbM?=
 =?us-ascii?Q?OkJ5vrlMxX1ssm433ZozTjQEvLlhuGnoQIDqFDBaMLjGxhONnqH00fuP7ocD?=
 =?us-ascii?Q?VxYflUcSgph7/wykjOBBfgoTw+f4ISU5XeDdr3ZnmCCfFrQLehqyneW4iAE+?=
 =?us-ascii?Q?8sNW30Ss6NHMQBKyCVjtQvnmK7eMlQFc3Yf0x9wYaHAu2pUgCoYempKxeNea?=
 =?us-ascii?Q?ec7zZykyqCH4/EgNfStht72XINn9Id70GTuRm8gXKR8QVxVMYgKEO/4wh/l9?=
 =?us-ascii?Q?Y+DMB4OqXRuozyXtcxwbnCLJr/wk61LRHj6rBLUQT7KTn6IUFeiKvH0mg0iq?=
 =?us-ascii?Q?PxfTmTG4sS0Zb/69CREMfkWV4nKjOLWtTuTpEulEkG7pWnxMQwPe37/9UvJS?=
 =?us-ascii?Q?75VGk6PLwPXQUxzgPFzdIwRiBnmfu0oImRaVBaB1Q79lqKRoU3Gzp0UtF2p1?=
 =?us-ascii?Q?og=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2639d13-d130-4f27-8a12-08ddfb6ff575
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2025 13:40:43.4346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yPuqvi85ns1IPmtpZsH5MCa81y75KzInH7D0/h9QFNt5tYq+ILhgbAK4Zxt4DxMCJuKjvUB6RbKBhe/73boAH0bYZX+aSYqAAwRHWL3Irqs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7002
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758721256; x=1790257256;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NTOncRK3lgSQCvNRqdggLsLMR7HfqOKEBrniqyZOerY=;
 b=LxU4meqiw6uFX0Ez1fu6qKzAr7voApFyfCPdv1fXKV9nU1bWiVG+8kc/
 FAB4pYtdlcH+jXFXBxDIXSV2KbLl5UGjmTPPqkH1EXJ5izBC+bxN4pk2S
 iEC0lkavMXSkyeDYFxCG3bC3hTKkOfPcNnFnSaU0CdgeAjGQta8ltW5gM
 /YV4k2cMmf7D1HdMx3X3zO4hjfASn1fURwk6kThzY8CFInE9fPgC1Hbh8
 lh7Xei/81Ef8C9hrKt9M4pfrJSoFyFfQqbUrpFZcUZWV1GTX41bM1YvzH
 iwRnbaMSffHXBOQO3CQPieeZzobr/NijNs7Ah89/ykGdOGzqn9v5N6H+f
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LxU4meqi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 5/5] selftests: net-drv:
 stats: sanity check FEC histogram
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
> From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Sent: Wednesday, September 24, 2025 2:41 PM
> To: Jakub Kicinski <kuba@kernel.org>; Andrew Lunn <andrew@lunn.ch>;
> Michael Chan <michael.chan@broadcom.com>; Pavan Chebbi
> <pavan.chebbi@broadcom.com>; Tariq Toukan <tariqt@nvidia.com>; Gal
> Pressman <gal@nvidia.com>; intel-wired-lan@lists.osuosl.org; Donald
> Hunter <donald.hunter@gmail.com>; Carolina Jubran
> <cjubran@nvidia.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Vadim Fedorenko
> <vadim.fedorenko@linux.dev>
> Cc: Paolo Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
> netdev@vger.kernel.org
> Subject: [PATCH net-next v6 5/5] selftests: net-drv: stats: sanity
> check FEC histogram
>=20
> Simple tests to validate kernel's output. FEC bin range should be
> valid means high boundary should be not less than low boundary. Bin
> boundaries have to be provided as well as error counter value. Per-
> plane value should match bin's value.
>=20
> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> ---
>  tools/testing/selftests/drivers/net/stats.py | 35 ++++++++++++++++++-
> -
>  1 file changed, 33 insertions(+), 2 deletions(-)
>=20
> diff --git a/tools/testing/selftests/drivers/net/stats.py
> b/tools/testing/selftests/drivers/net/stats.py
> index c2bb5d3f1ca1..04d0a2a13e73 100755
> --- a/tools/testing/selftests/drivers/net/stats.py
> +++ b/tools/testing/selftests/drivers/net/stats.py
> @@ -57,6 +57,36 @@ def check_fec(cfg) -> None:
>      ksft_true(data['stats'], "driver does not report stats")
>=20
>=20
> +def check_fec_hist(cfg) -> None:
> +    """
> +    Check that drivers which support FEC histogram statistics report
> +    reasonable values.
> +    """
> +
> +    try:
> +        data =3D ethnl.fec_get({"header": {"dev-index": cfg.ifindex,
> +                                         "flags": {'stats'}}})
> +    except NlError as e:
> +        if e.error =3D=3D errno.EOPNOTSUPP:
> +            raise KsftSkipEx("FEC not supported by the device") from
> e
> +        raise
> +    if 'stats' not in data:
> +        raise KsftSkipEx("FEC stats not supported by the device")
> +    if 'hist' not in data['stats']:
> +        raise KsftSkipEx("FEC histogram not supported by the device")
> +
> +    hist =3D data['stats']['hist']
> +    for fec_bin in hist:
> +        for key in ['bin-low', 'bin-high', 'bin-val']:
> +            ksft_in(key, fec_bin,
> +	            "Drivers should always report FEC bin range and
> value")
> +        ksft_ge(fec_bin['bin-high'], fec_bin['bin-low'],
> +                "FEC bin range should be valid")
> +        if 'bin-val-per-lane' in fec_bin:
> +            ksft_eq(sum(fec_bin['bin-val-per-lane']), fec_bin['bin-
> val'],
> +                    "FEC bin value should be equal to sum of per-
> plane
> +values")
> +
> +
>  def pkt_byte_sum(cfg) -> None:
>      """
>      Check that qstat and interface stats match in value.
> @@ -279,8 +309,9 @@ def main() -> None:
>      """ Ksft boiler plate main """
>=20
>      with NetDrvEnv(__file__, queue_count=3D100) as cfg:
> -        ksft_run([check_pause, check_fec, pkt_byte_sum,
> qstat_by_ifindex,
> -                  check_down, procfs_hammer, procfs_downup_hammer],
> +        ksft_run([check_pause, check_fec, check_fec_hist,
> pkt_byte_sum,
> +		  qstat_by_ifindex, check_down, procfs_hammer,
> +		  procfs_downup_hammer],
>                   args=3D(cfg, ))
>      ksft_exit()
>=20
> --
> 2.47.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
