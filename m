Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FOmI0LLcGkOaAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 13:49:06 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA1B570D6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 13:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07BD06179F;
	Wed, 21 Jan 2026 12:49:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gXwRlFmmrAr4; Wed, 21 Jan 2026 12:49:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F33D617A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768999743;
	bh=VMA87vIcTiqgNhaM62R0fyENl0UR4bjkzITX4ToXl34=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p4968F8tRzKuoiPqndMIjbCtuPLy2FBgplXn++5hEr6hT1harBktO5T2JQPhtiHyt
	 +MC5YeJwAE3zYju7bYjp3jEtnIIVED/mXHN6KY3wx2wDQt+7EqMPK5OQgEnU6EnSa1
	 QjlqAXHi0EveC64H1pkl2oszTa3iBp5Du/XSdwkuQK0YTyuaBb4+0j8UciBMniIK0C
	 ffkN8w5bWU0D1mtG1Tb9jMagxe9n/bSx2AVI71gQCMkZgsHgwNTHyS3VRGDVnpbquG
	 lq1KhiVNlSANFo5nvsfvg0pZdCNf6HozoLX0/IEfZQWJnrwcIITqjEtnWPMTIPaqil
	 AsJxNzSj8XLUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F33D617A2;
	Wed, 21 Jan 2026 12:49:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 12341160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 12:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE2CA6179F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 12:49:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 15W1CSZzXZCS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 12:48:59 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 21 Jan 2026 12:48:59 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 53F806178C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53F806178C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 53F806178C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 12:48:59 +0000 (UTC)
X-CSE-ConnectionGUID: M2R1qmzsSiW/oVsGK38Cmg==
X-CSE-MsgGUID: uvsTltlKQHyhqJQvQgG93A==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="80526994"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="80526994"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 04:41:51 -0800
X-CSE-ConnectionGUID: ZBjwN8yOT/a9YBFYmaHPpQ==
X-CSE-MsgGUID: XEQnemFuSaa3MAMBMkh4XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="206052069"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 04:41:51 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 04:41:50 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 04:41:50 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 04:41:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tOvPvS6lkRFm8ULzzgrMDeI00MhC4Mo7shvwPEfQkadS7GafA72MdGWmnJqBwf9kt8ZT6yY+sOcYNGyo1/CoGeKPMM7O7Qr6yVWkjKG44j3/pc9iPK+hFprrSllb0UTNH6PyN6oMacQfSmlCQnbQ77O2cBByGJWQiQV4ZHU0SfIB61EEEj5ANHxd8+C4553iYs0cRZgF4hVhFKhjCbeUh+erSKZWHblj/JObvB0SlgfguDlU/HgXhbCGIPqPlm6Bt66o/7Ga/9pKjwUP7zyM4n9ZtybgmNZlLjL7BIaemmzsS4Che2rfO05PF0K7NasyvlJiZNk+ppGRxYiwj/IXbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xGw/0m7hI3aIMMKQiHW7jDfvlFedRcKrxmB4KyAsaU8=;
 b=GKtfEF1JhZlTz26VadgeYZLSuDMkkZuNUN0MeGQA8L16gqDrdUP0RMZ4mllUTKomGEUfu4BF42vAeJiBv0fxdBzF4jCx4NpfMPM19ltT3Luwi7ocDKfsFdD1amJMxi66gTM3t9PGpcBCSE+vB4iT6vS/3oUBs9Ox8JoCFD/SzYE7JeWEUP7bA+hAeL8rA1OGnuHWKfJ/UiZ7K3SwrvvRewBLknNOf0DNy5jX98T0cxaAo4oVryD9SbIKIWUkh+SqgI+OY+ZakNOHhlRq46fi8mM90JXSztue/CMF00AzF/6qOmGEQnmH+mDnRLQ9E1A9U8TYtNnMAAa1R47qPZ3ecw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.9; Wed, 21 Jan 2026 12:41:47 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%6]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 12:41:35 +0000
Date: Wed, 21 Jan 2026 13:41:28 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Behera, VIVEK" <vivek.behera@siemens.com>
CC: "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "magnus.karlsson@intel.com"
 <magnus.karlsson@intel.com>
Message-ID: <aXDJeFxA+jPneSoi@boxer>
References: <20260120075053.2260190-1-vivek.behera@siemens.com>
 <aW96U5l2ffl4JCpB@boxer>
 <DU0PR10MB53873D1F725A7C13C6656C978F96A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DU0PR10MB53873D1F725A7C13C6656C978F96A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
X-ClientProxiedBy: DU7PR01CA0038.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50e::20) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MW3PR11MB4716:EE_
X-MS-Office365-Filtering-Correlation-Id: d338d3fc-12fb-49ad-7052-08de58ea695d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?YHDgoB5QrRgMz8J+06/mRPCQkyLanHhwVT/Rt1ivrD94GJQYFEIRYtFbNP?=
 =?iso-8859-1?Q?YYK7/+pT4GP4FxDpxGGxs5CSg5exsiPbJFVLgAowkUkhd6KeH+HqS0EESI?=
 =?iso-8859-1?Q?kZQjIysU+2ou//HR5AyRA5Zn7SRgX90+02uytKGlfQLVjuu8VZgifFB7hF?=
 =?iso-8859-1?Q?CD85NmXx501a4zqeDoN5xKYo35OMV4Q7WybAmqNl7KDOtsC+UkTLwGjfs2?=
 =?iso-8859-1?Q?8f1lFhVk2iuVCdk+7dBtERB4jzmmJDys3l9/Avgra9DuFmf4SdnmKVFtoX?=
 =?iso-8859-1?Q?EF1UWgedNUeGOGzGaWxP1c8PDB//lduw3PI+kyRjnUGYCrB3y4RwEQagB1?=
 =?iso-8859-1?Q?3oe6eB6TNivigi+z2RHjT9oek76ahA+p/JxE8gVwPXm0saW2SZ/6iXMMTy?=
 =?iso-8859-1?Q?TGwOxZutBwiTbZCSDVVJe7c84k8K8KqLOAno0gY2I3rPpgNN1vZI8ozUx7?=
 =?iso-8859-1?Q?Zs3b72cZ91esOpNzu/w95uR8+Aed74+hL1C9A2VxNOY+/mJmM+EGMpxAiI?=
 =?iso-8859-1?Q?eTTQPizaFEIGRKicNAZCngjuhOgpuFUCn/4cUhhtkknASuYBictcC+tjEt?=
 =?iso-8859-1?Q?njTNACLMEtV+6rjEJAOMQMKsvCiYGfgILCuTCLOb/jnxKlJi8l1CkAl88T?=
 =?iso-8859-1?Q?wOqzJ4jwnNXhQrCv1UEg3j+q8goCtzEmVqQUXcfKhVkFUGaS0YdXJtaC6n?=
 =?iso-8859-1?Q?PZaFr/wLPGlxpUzobuFABgyeGJysrC0ebn1xo1Cw39So5YqOT3y66XtiGq?=
 =?iso-8859-1?Q?XnCMtuGDYRELBNbzZlCHnmLCwjkLg5eoU4fw7kb1YmKnIkm1SK8cV66Ur6?=
 =?iso-8859-1?Q?VKbK4eD5Ho8WOZxSCVNdlWdwbtUc5cOzyWQZz9voz1FMx6+STCHt4SenuI?=
 =?iso-8859-1?Q?rI+FkvsaaMAGSkxYoCJ3BU4Fp1DszVY31ocM5pYiFZtl0Vh96NIggxIudF?=
 =?iso-8859-1?Q?s01lfScfdkc9ajIxhkVdmaBIv9utl7tAvTu6lyI6AjcI/fckY/46LC1flZ?=
 =?iso-8859-1?Q?NO27CS/QUAOgGUlQx1cmw0A3uzm17dc+ZmLUjU6Vvp1h4madldMWX5gAXE?=
 =?iso-8859-1?Q?cMnXP+RiTFLgQLPOtXs3TnYlvTyTmFyyVScTzgqutbbdmsRvAUjTNfFFWC?=
 =?iso-8859-1?Q?LoztGfr6RJ61U5YuMlxfXMfKgb2mdMn1ZcjXH0wj33FqRn/gVASb5reSaa?=
 =?iso-8859-1?Q?xDrMbPa+WylavV1qlaI9vHWf56T7pyXVCu29xuhS8Cq8ZEosGcITic4HWy?=
 =?iso-8859-1?Q?2h1ck1CZ1ku/J3Z4bkSmklsy6khS25WM0/Mt9tcf0EpMJukiCN0xSRC3Pa?=
 =?iso-8859-1?Q?nKj/uNe/4G8EYbdfziw4vb8dMLZrUQtO/ZjhEO3HmYYOAKKAC+vtv+vjDl?=
 =?iso-8859-1?Q?pKxSCu2DWgbWxWLjXRQG378I9PXN62zX92MiiB0SE3JsYF470q3D1BaGlC?=
 =?iso-8859-1?Q?f3ZwgbbIaZ70Hl5ytQJwVcd1ZjJycbF/7CZqtMnxFxGmvc+bRr3s7MNo8O?=
 =?iso-8859-1?Q?n8A3W4S2wVHDRAHNQtU8XUG21m93OzghkcinbU2YJx0FM0FOtm6NJ6TgZV?=
 =?iso-8859-1?Q?rgFjTn9ARLZKpPfx5dy7Zph6Zr48fU+mMVgY8WW/cuulwEYafglE830kNl?=
 =?iso-8859-1?Q?eLh0xsLj8VlJY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?SsaU5Rs3Xr5jfZYRfezJoXpHBjOfNUGJKR5Ahkp1Wb8An+OtSplrUWTD6E?=
 =?iso-8859-1?Q?iF5UbUc4G6vGVMrKUrvKRjtFaQw0XRiLJ24EvriioRp6pS4hbBBzrYzZlW?=
 =?iso-8859-1?Q?voTiv25gxFKOqVaXs7dwIwax77wQZ78Ua2Iajhf+9MfFxdUmcVdQ06Gd4z?=
 =?iso-8859-1?Q?CZjPo7cBto3Y00xR31xkMNWus7J/uXQJ2oxDkeh0FH2XsOzo91W2RZBVZL?=
 =?iso-8859-1?Q?T/KEtHSTMP4wgqD8HMxU0tcDXUBLoVvkAM6SuDhzrKDjW3Ro17brf4plgN?=
 =?iso-8859-1?Q?8kYnGbN6uQTxrQQG5d9p8U97wbFxh5wMg63+Nlyi2SZreRJgbkpwW2N+5D?=
 =?iso-8859-1?Q?SKxqY7a/IDdOdEHr7MPdhYfW0rgOIiM5ScywS2Lo3bXImpHwbE0UAudoaz?=
 =?iso-8859-1?Q?NrR19A+Yf+32MAfag+K87f+4Y2fyOje8DVhT1FLHumEEWyThNrSSwm8/me?=
 =?iso-8859-1?Q?tPdhWP6XRjx6fe+ItLFIePi8kvnxdx5hoS5aan0cuJbgF+f8J7ZhnWAj5Q?=
 =?iso-8859-1?Q?YoE/wQvbGSCijRrr3kQSszP0Me7Wv50sHl1l9QTm799qvVN04XdOJ9QJ+X?=
 =?iso-8859-1?Q?uVxlpUSl6S7O0STlO3wt78O6J4HiERsfTXt904NJ7ViIP8GcYNGBaOIwLI?=
 =?iso-8859-1?Q?vuOzjo40nXhxhmWiQvy62xkhze5fSgXib2xFpjKhG0TXkdpa46EHUOfqyx?=
 =?iso-8859-1?Q?Bzi1WH6Ot23IFhHxD23GgZ9IlIIACbE847hWo/0hWuE15hArKDNYX7O+B8?=
 =?iso-8859-1?Q?W72HY1AUsUIpCExMEUomyICEjotFSyJJLzTj7x1e/ilrPzMCir5InHwYBx?=
 =?iso-8859-1?Q?JLoKHclBKSiZZWCu2BJYLAZgeK52Qm92cBFNoUKvTFMvn82YW5W1zeNBhm?=
 =?iso-8859-1?Q?Lju8S1ECO8pgfBageTcA2YuAMwpyTRtlyXBxdkG/udQQjZfgwuoNO9ugSV?=
 =?iso-8859-1?Q?v/pR+wUktCGJP0e0qgpjxjhXok+VAJNial/91yYMDiXSTHx5sK312Mxq56?=
 =?iso-8859-1?Q?uIrtbftFxLMApew/Tid4TjTMIiUPi8AJ7hpF3wUQ3RGgdg0/VWPXr7arlk?=
 =?iso-8859-1?Q?KYuO/bX8SIcNszYc5dvpJ0Zt4bBxb+S1aurafW6S/46T4yX8sw1lxsBCDq?=
 =?iso-8859-1?Q?4bm2Be4lf+kqqs71i/jiIjjATz70NfeGvZQopklm//MbM+h2dKBxRpDCi6?=
 =?iso-8859-1?Q?bChBcTOODwvbSqHfjkDxKc82sgB6gaR7jGCNW1HlmbnBI7/GbDDfGSKB3s?=
 =?iso-8859-1?Q?Cf1fD/prw7fSxFuuDACjnf5h5m1cZ7ZB7mX1SLbQkhhEPmrtDq0eHItlAE?=
 =?iso-8859-1?Q?LTKD+jlH8n8V+P314QDU56UzVEkdJvmeBbUndZs97T/fspC+S/FztCd3tp?=
 =?iso-8859-1?Q?zprTp6cs49JeiDvrLbuBficG01pywEZPaWmxGkUfjhsf2G80gAHbcdkbmH?=
 =?iso-8859-1?Q?tbkwPkfZffMJDE8EvL1LKqjkqmAwhJZH0R29PprwhjyaQfIeGSQg9649Ue?=
 =?iso-8859-1?Q?Viabr5Eqchf9OqJspPzifGD+a+xUFx9slro5u4T+fi4tGig+OYCbsfbT9E?=
 =?iso-8859-1?Q?ZPy8qYgng8ldq/NNp9jFjUpLdNLwLBhvYgE9dvR8RJMs1U453byzFQA9pp?=
 =?iso-8859-1?Q?XzXGMasfdsPrTqqt9lVqLVCswoAkGFdFJFNZnCO+PzrhcoidIQE7jRmv8d?=
 =?iso-8859-1?Q?a5cyk/5H61nqK+26wc6cz/feshhyINfNff1uTkkHHW2WLy0KjNzXxi0dRB?=
 =?iso-8859-1?Q?ZplNrCuo2oi3Ji05S+TmwXO0yvbTTUClFg42LiJbRiejYCigpZtAo12evb?=
 =?iso-8859-1?Q?UYUZpRw6os49vDbHJkJ6eC2CPyQBnmY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d338d3fc-12fb-49ad-7052-08de58ea695d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 12:41:34.9043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZAbDrA+RRD8AUUgTZBMnxWFFJzEyZ91u5+9uv7lffT4/5X3sXdQFFVZeGzgJRhgX91H0WYkPiefkQC5GL8VGKKRW6n2nnZ+tudUpdsGhr1M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768999739; x=1800535739;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=LSkN69ukLXNnVJ+WV7DLfCon7xGRykguQiK5lRQ5qE8=;
 b=HSdgK0Bbz3rF+b+NUeq7PgXeS/azcaoM6TiQsqLLNowqkm441qcZeZwe
 ltPwlwZ0QfH1zAKQfo98DyDVEb9t/J/0sRtaetp/l19uPlii6NffvWALd
 t7xQsF181rxeAuKIbGG852ITQ36foCS4vFUvdNP/xP81srh0I/m+RlD8d
 YReh70pGicOA8IWwrc6oLqkntyf5QUsgU0EU6RoHOxHf+8SfTjyKmnuJq
 FAooCIiifZHPOInq8eVqMSnmE0GIa8fwrQvzHstTf/Tlvb5GNAg9bxfUP
 B3GkKhI2J8fseJ1s41jswAX/JZxKDaBt3jFT8WbIMpO3HWz7/JlcsjgmU
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HSdgK0Bb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v7] igb: Fix trigger of
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
X-Spamd-Result: default: False [0.79 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vivek.behera@siemens.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:sriram.yagnaraman@ericsson.com,m:kurt@linutronix.de,m:magnus.karlsson@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 5BA1B570D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 07:02:47AM +0000, Behera, VIVEK wrote:
> 
> 
> > -----Ursprüngliche Nachricht-----
> > Von: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Gesendet: Dienstag, 20. Januar 2026 13:52
> > An: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> > Cc: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> > anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> > sriram.yagnaraman@ericsson.com; kurt@linutronix.de; intel-wired-
> > lan@lists.osuosl.org; magnus.karlsson@intel.com
> > Betreff: Re: [PATCH iwl-net v7] igb: Fix trigger of incorrect irq in igb_xsk_wakeup
> > 
> > On Tue, Jan 20, 2026 at 08:50:53AM +0100, Vivek Behera wrote:
> > > The current implementation in the igb_xsk_wakeup expects the Rx and Tx
> > > queues to share the same irq. This would lead to triggering of
> > > incorrect irq in split irq configuration.
> > > This patch addresses this issue which could impact environments with 2
> > > active cpu cores or when the number of queues is reduced to 2 or less
> > >
> > > cat /proc/interrupts | grep eno2
> > >  167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
> > >  0-edge      eno2
> > >  168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
> > >  1-edge      eno2-rx-0
> > >  169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
> > >  2-edge      eno2-rx-1
> > >  170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
> > >  3-edge      eno2-tx-0
> > >  171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
> > >  4-edge      eno2-tx-1
> > >
> > > Furthermore it uses the flags input argument to trigger either rx, tx
> > > or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > > documentation
> > >
> > > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> > > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > 
> > Hi Vivek,
> > 
> > I gave you my acked-by on v6. I don't feel obliged to call out such things but since
> > we have completely changed approach of fixing things here, Aleksandr do you want
> > to keep your review tag? If so then please go through the code again.
> Hi Maciej,
> 
> I am okay with removing Aleksander's Reviewed-by Tag if it is no longer valid. 
> I had also mentioned during the discussion on the v5 thread that  
> due to the changed approach, you might even consider submitting a fresh patch by dropping mine. 

Patch is fine, just add my ack.

> Nevertheless, from my perspective it is critical that we can start upstreaming the fixes included
> in this patch along with the igc for my Stakeholders who are planning to release their Products on Siemens IPCs with I210 and i226
> cards in the next quarter.  
> I just want to communicate the urgency on this topic.    
> > 
> > Thanks!
> > 
> > > Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > ---
> > > v1:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > > .kernel.org%2Fintel-wired-lan%2F20251212131454.124116-1-vivek.behera%4
> > >
> > 0siemens.com%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7C3219ce1
> > 35f
> > >
> > 81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> > C63
> > >
> > 9045103048376499%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> > UsIlYiO
> > >
> > iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> > C
> > >
> > %7C%7C&sdata=bFd0kGibsg8vv0%2BCsCV5HU%2FccorvAphaprPLtfAgnA8%3D&
> > reserv
> > > ed=0
> > > v2:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > > .kernel.org%2Fintel-wired-lan%2F20251215115416.410619-1-vivek.behera%4
> > >
> > 0siemens.com%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7C3219ce1
> > 35f
> > >
> > 81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> > C63
> > >
> > 9045103048417392%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> > UsIlYiO
> > >
> > iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> > C
> > >
> > %7C%7C&sdata=4IzCdXUlEaWODsWCru2F3xIy02NwfoPYTtsnLjHN1Q8%3D&reser
> > ved=0
> > > v3:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > > .kernel.org%2Fintel-wired-lan%2F20251220114936.140473-1-vivek.behera%4
> > >
> > 0siemens.com%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7C3219ce1
> > 35f
> > >
> > 81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> > C63
> > >
> > 9045103048455269%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> > UsIlYiO
> > >
> > iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> > C
> > >
> > %7C%7C&sdata=2%2BhI0oizG3q8bl3dxLTnFbXH%2FpMAdQonSl9rNLIyCFc%3D&r
> > eserv
> > > ed=0
> > > v4:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > > .kernel.org%2Fintel-wired-lan%2F20251222115747.230521-1-vivek.behera%4
> > >
> > 0siemens.com%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7C3219ce1
> > 35f
> > >
> > 81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> > C63
> > >
> > 9045103048497301%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> > UsIlYiO
> > >
> > iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> > C
> > >
> > %7C%7C&sdata=oJXJyzmla5rvnYNu4OHS0b7bYY%2BjOXe66QxrT79YfJs%3D&re
> > served
> > > =0
> > > v5:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > > .kernel.org%2Fintel-wired-lan%2F20260112130349.1737901-1-vivek.behera%
> > >
> > 40siemens.com%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7C3219ce
> > 135
> > >
> > f81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%
> > 7C6
> > >
> > 39045103048534301%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> > UsIlYi
> > >
> > OiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0
> > %7
> > >
> > C%7C%7C&sdata=Z%2BYULMIoUWG8BfRHegGxiWVE39on%2BctH7YTbzkfz%2F
> > Co%3D&res
> > > erved=0
> > > v6:
> > > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore
> > > .kernel.org%2Fintel-wired-lan%2F20260117145112.2088217-1-vivek.behera%
> > >
> > 40siemens.com%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7C3219ce
> > 135
> > >
> > f81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%
> > 7C6
> > >
> > 39045103048568401%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> > UsIlYi
> > >
> > OiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0
> > %7
> > >
> > C%7C%7C&sdata=mnZAzSk6WTEAN15HSWdsDzJvx6QetZLg7akqqnjrkiU%3D&re
> > served=
> > > 0
> > >
> > > changelog:
> > > v1
> > > - Initial description of the Bug and fixes made in the patch
> > >
> > > v1 -> v2
> > > - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> > > configuration
> > > - Review suggestions by Aleksander: Modified sequence to complete all
> > >   error checks for rx and tx before updating napi states and
> > > triggering irqs
> > > - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix
> > > use case)
> > > - Added define for Tx interrupt trigger bit mask for E1000_ICS
> > >
> > > v2 -> v3
> > > - Included applicable feedback and suggestions from igc patch
> > > - Fixed logic in updating eics value when  both TX and RX need wakeup
> > >
> > > v3 -> v4
> > > - Added comments to explain trigerring of both TX and RX with active
> > > queue pairs
> > > - Fixed check of xsk pools in if statement
> > >
> > > v4 -> v5
> > > - Introduced a simplified logic for sequential check for RX and TX
> > >
> > > v5 -> v6
> > > - Further simplifications suggested by Maciej
> > > - Included review suggestions from reviewers
> > >
> > > v6 -> v7
> > > - Removed redundant braces
> > > - Updated comment block to improve explanation of implemented logic
> > > ---
> > >  drivers/net/ethernet/intel/igb/igb_xsk.c | 38
> > > +++++++++++++++++++-----
> > >  1 file changed, 30 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > index 30ce5fbb5b77..ce4a7b58cad2 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > @@ -524,6 +524,16 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct
> > xsk_buff_pool *xsk_pool)
> > >  	return nb_pkts < budget;
> > >  }
> > >
> > > +static u32 igb_sw_irq_prep(struct igb_q_vector *q_vector) {
> > > +	u32 eics = 0;
> > > +
> > > +	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> > > +		eics = q_vector->eims_value;
> > > +
> > > +	return eics;
> > > +}
> > > +
> > >  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)  {
> > >  	struct igb_adapter *adapter = netdev_priv(dev); @@ -542,20 +552,32
> > > @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> > >
> > >  	ring = adapter->tx_ring[qid];
> > >
> > > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > -		return -ENETDOWN;
> > > -
> > >  	if (!READ_ONCE(ring->xsk_pool))
> > >  		return -EINVAL;
> > >
> > > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > > +	if (flags & XDP_WAKEUP_TX) {
> > > +		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > +			return -ENETDOWN;
> > > +
> > > +		eics |= igb_sw_irq_prep(ring->q_vector);
> > > +	}
> > > +
> > > +	if (flags & XDP_WAKEUP_RX) {
> > > +		/* If IGB_FLAG_QUEUE_PAIRS is active, the q_vector
> > > +		 * and NAPI is shared between RX and TX.
> > > +		 * If NAPI is already running it would be marked as missed
> > > +		 * from the TX path, making this RX call a NOP
> > > +		 */
> > > +		ring = adapter->rx_ring[qid];
> > > +		eics |= igb_sw_irq_prep(ring->q_vector);
> > > +	}
> > > +
> > > +	if (eics) {
> > >  		/* Cause software interrupt */
> > > -		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > -			eics |= ring->q_vector->eims_value;
> > > +		if (adapter->flags & IGB_FLAG_HAS_MSIX)
> > >  			wr32(E1000_EICS, eics);
> > > -		} else {
> > > +		else
> > >  			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > -		}
> > >  	}
> > >
> > >  	return 0;
> > > --
> > > 2.34.1
> > >
