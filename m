Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F091B3E141
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Sep 2025 13:15:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF94341489;
	Mon,  1 Sep 2025 11:15:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kO0UDMKoQs8e; Mon,  1 Sep 2025 11:15:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F411E4148B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756725318;
	bh=Nx0Tb1uPhP6Xu6jL5BqujwQN5hYro9DYCPLDnY9CecI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P5Zd/XHgIlwEWTBPTMFgugDkglVnViQraLgdeCuPNeAyrkQ++XG7jrTMaz6Qt89VE
	 cv8xEm+hkJJ5+N2xFW8l1Xj53O96fy8ro74+T1FGuJq5DxLNJRWM/rVgjSDpvw32gY
	 HNq2D/eHK1DjRRL/r9ay/jBssbMlCvt7j3SR1r1no95qw/DNohzTn07L0GGPyMnXML
	 9RETFyZgqEuwSwqJKPzfrHrBJw3PVoMzSs8CaaYmMZOYBsvX9FABuwpcib4PBo0y50
	 4U5k9jsnP9UXnK/B5CY1KS/GiQqx0XuSdON6+4DQ0zFCi6iaXBMeYMHDaSr6Etn7f6
	 zkK6U/k7cRuMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F411E4148B;
	Mon,  1 Sep 2025 11:15:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D22D10E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 11:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6F6A60BC0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 11:15:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ai8p1ENMKbYa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Sep 2025 11:15:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5E51360ADA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E51360ADA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5E51360ADA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 11:15:14 +0000 (UTC)
X-CSE-ConnectionGUID: g+iNUXfHRf2bVEvLn1aj5w==
X-CSE-MsgGUID: cZ/usOiKRfi4PIe1OOqwWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11539"; a="59086919"
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="59086919"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 04:15:13 -0700
X-CSE-ConnectionGUID: SrdBNNMiSX20ToNozI3gjA==
X-CSE-MsgGUID: D5qL1xobRrC6uIph60sY+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="171164898"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 04:15:14 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 04:15:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 1 Sep 2025 04:15:12 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.54)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 04:15:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=inO0Jd4XOIDUbELQfhzF3N/c+6xt6X6b8z/4/GIw8yHEcR9XECqPu2hNuZCvhBCf+O6yP7NnkP7q3Kkg+o+W3YsMKGarExT8AbmE6hHb/EHUGjVq7fj+qnlX0fUMYvbKYpYX09vDClTxgkAvPa4O/u0YbK4k2Fo0iTVtiNViXUpxRL2sC0KJrADlu5jpy86Yu9MTRhyR2OAdSRh7KYYEg08qSkC6+KYrxxd5/S1QEhDLnE0BJDCE3+5sB9UN6psEI1v0CsrFsWBuyfvxL4BMkswujxNK4+1odqK25zzLX2OdBT9laH363FHZxWZ/qMQ1UBwjuu7sMAKDsNtEiLk/pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nx0Tb1uPhP6Xu6jL5BqujwQN5hYro9DYCPLDnY9CecI=;
 b=mYQx9P/MdQ+dDF3mijz/26/wn3sAArySajUU89HobPGCtkcoqhxuGyVNrKwicB/82n5izb/E1Q/lkEY/ZxBjRt0B/R/HtPTDFIB42q3bckQ4rvggRygpJZ5o9xrlS9WxeoJs14heFCzr/GOjbQ0xn79zL1j0e/1WzxfQnvAB7OdCFtLParxgwDzNm1TieEYllVsnELB2Q+vqHKZcDJ9XV8fWHbmOysXlvVdovFt9qRaCVH83hd9P7bBS4fxdAwick27RO4TFhmQce5GGrklQr9cAHmKaSVNzX4gy0fLQLrCruNg/RComnuETWwUoTyZDjJJD85sPmbrJ+K28K2nQ+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MN0PR11MB6009.namprd11.prod.outlook.com (2603:10b6:208:370::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.25; Mon, 1 Sep
 2025 11:15:09 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9073.021; Mon, 1 Sep 2025
 11:15:06 +0000
Message-ID: <412ac86c-583f-4952-9723-d0c8b7fe2566@intel.com>
Date: Mon, 1 Sep 2025 13:15:03 +0200
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>
CC: <intel-wired-lan@lists.osuosl.org>, Qi Zhang <qi.z.zhang@intel.com>
References: <aLVix68cQNQr4CC8@stanley.mountain>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <aLVix68cQNQr4CC8@stanley.mountain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0245.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::25) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MN0PR11MB6009:EE_
X-MS-Office365-Filtering-Correlation-Id: 43e3d946-5124-4bf5-1266-08dde948ce60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SEZtclF5S21sa2xiZ1hTd2JXYlJ3TzlmRVpjaXhGUUxUYlg0Y0hMMkJmUDVS?=
 =?utf-8?B?WlNYSUk1emN2VlJqRUQ3Tm85Z2gvS1UyNkJ3QmZUbE42NDAvVHRKb2FKNlVM?=
 =?utf-8?B?b1JlQ1FrT1BlVkM3N2RRa251MlJuTTBmRVdPa3FmUHJjazhmeE9uTGdTWXpa?=
 =?utf-8?B?dU42bFkzekpwdUhTaHc3ZUp0RUpLajArNmQ2TXFpcitlOUZCRWMzWHNrajBI?=
 =?utf-8?B?aVdmYWNuTTQxd0pUSFFKS0JqM2hkcnZSbXM0bURoUnNLRFhtaU84WjFEMEFQ?=
 =?utf-8?B?UExwMUFvU1poT3JNSWIwMGo2cXhhZmlLdTVGQUpKdXBab01iM1Vuc1E3R0xt?=
 =?utf-8?B?TEo2TnZ2T1lnSHB2bjRkKy9RT0dwOXpWK1E3bWljbWtHOVcxb0FJM1U3amk3?=
 =?utf-8?B?Y2IzV0MraytzT21nMEtzMCtLUUpLcGViZHRCSHgzSFpTRzh3UHJIeDhRNFFw?=
 =?utf-8?B?am9UT0s1WU9Hbys1WDh3d1NTNjViOVNlT2NlZXBndEdFb1pyTmZvakhEd2I2?=
 =?utf-8?B?VlQ2RWh3VEFmZFJYWDdVbUs5cDluL2Q4LzVaQ2lYS0hmRU9adGh6UGdudnBE?=
 =?utf-8?B?V1BGdDBoR3dXTzJKcWRERGhTNWV6blBnUGE4eEc5Z0VNWGQ1NkM3YUk2b2xL?=
 =?utf-8?B?YldEWS9VTEEvdmNJKzdqc096K2dxSFBRMmFCQmdsdDJYemtXNUpLWlNSVFhF?=
 =?utf-8?B?WUx4b3puMnBWNUQ2VDczSHFQVWFoWHlVaC90UGl4cEx1eUV5ekJKV1Y5c1Jp?=
 =?utf-8?B?K3FSZDdMVzRjZWZ6UVFBZGh1bmQ2TGNSeGFML1lHenZqTVdMRS9iYjQyS0lK?=
 =?utf-8?B?SlVjc0Rqd25JOUVBR1FiZU0zcTVtOTd1Y0lHRUtOM3lQbWZ0K2ZYSVJudHdZ?=
 =?utf-8?B?c2J4cFVGcWMrdEhqa1R2TFl4SVRTMnB4emtocUxJQjEvbzFBZW44cWxIcjVQ?=
 =?utf-8?B?VFZwc01oVDZhMjIzYkNLL0pmOHpOZnRSZ09yZi9IZHNjRTA5QjJZczhqR055?=
 =?utf-8?B?R2liR0JvcVJ1cUkrVzZ3Ykp2NDF5ay9FOEFvQkhzK0NxSmd0ZXUrTS9pVFRL?=
 =?utf-8?B?clFpR1owckFUbXF2U2ljSmFUUTZtL0Z2cDlNWG15NmVieU4vWWttVzF3RlJz?=
 =?utf-8?B?eWtSVDk2eU5VelZOa25mM2ZldW0rdVdremxPUWRPa2VkMWRqZUF5TUpqczVC?=
 =?utf-8?B?RkhHbGNwaUMvd2lNSEsyRjBlUjZPWks0eU5yb3V1SisxdElPRkVSQU9BVDhm?=
 =?utf-8?B?TW9VRm16dExLZWZJaW1COUt3amE5blQxcVQrWEMza2p3aXZiSHIyUzZwQnhP?=
 =?utf-8?B?MGdweUlraXo0NXJoUlVrYll6TW9yQitsdUwxRG43cGpaK0ZZbEEwUHZ0NWJG?=
 =?utf-8?B?ZFRITUNyK0RLKzgzYngvNWl4WnE0NUNuVERBL001ZlVRRHh5WkdPYUduSXkw?=
 =?utf-8?B?OXBabnppbkk4YWUvaXBCSGZ5S3czTUpRalRlWE83MkFuMGZpU2dWbFVtaXo3?=
 =?utf-8?B?ODVQNERCZTgrc0FDZ1ZyODA2Rld1Tno3RU9nME9YWnFXQmMySDFFRk1aOVFO?=
 =?utf-8?B?V0d2bFNhUXRYS1FHVWd2U0djVzhjTkxqbWJJQmdRay9kbXVkTUdwaWtKenlP?=
 =?utf-8?B?UHBZRkFLRG8vVWpFK0hOR2dNZkxreU5XRENGTTRkTlcrWkNweHNTU29ILzZM?=
 =?utf-8?B?N2dCNUxDYzZQcDUrSmtlNStOVGZFVUxyUXI4dWZiYnNNRDh4NGh4cDJmbm94?=
 =?utf-8?B?MmRSZm0vTW9XVHNTQnd0dTh0ZWlpeUd1dnVBNWViY1Z4Qjdhd3ZzMHJQQWhR?=
 =?utf-8?B?MkdrMTBnd29Iakk0WGlmQU1UM3RrbHdIU3EwajdHcnhIdERLNndzK0Z2R1Ew?=
 =?utf-8?B?cFZwQTMzOHd1YzZVVXlSRmFDb3o4bVU5MGRCcmN5R3hJdERYa05rUzVCQUU2?=
 =?utf-8?Q?88wsdVLEays=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFAyczIzSURrd0wwYXkzNURZZUVCS3dYK2dkQWtwaU9YaFUyOXRIVDB0aEJy?=
 =?utf-8?B?NDVad1ZKYXJSN3dtNW9JYkErTW9LeG41Y3MyUkNIM3lWdXpnb3QxVU93bWNy?=
 =?utf-8?B?cjl4WUl2bThHUWRGU2dHZ2c2V2pyS1g2ZTFhSUVpbWhQY1ZQMUdCQjlNZFVi?=
 =?utf-8?B?S0MwL1lsb1RlTHFhSkhHdzhReTdKMGVaNE42QjdiKytSRUVCaEZHajgwM0M2?=
 =?utf-8?B?MHJJSFdiUXJkTGZmQmJKNXUxbXR6aW9QNE1UQWNPZlZsd1MyYWVNOVpVNDIv?=
 =?utf-8?B?Q1cyUjZQaTJyZFFVd2JNTWhJbW9XZkVic1BESkwrbU5ETkNZSmMzam5uSFRw?=
 =?utf-8?B?SUpSZ0R2S051UlNXSEZWb2FhdUV1Wmw5THRWVWVEZ0tKWjNJZ3FZNWdDeFlB?=
 =?utf-8?B?SnRSMXpzWDU5WndGUzlMcStCOGI1di9lSUpyZXdlL2pYZGRuZHlyelpETXo1?=
 =?utf-8?B?Vzh0c1kyUGpjaGUvbFVVczBmRjVwRjNmNEFmdktrR1NCcndYQlB6SnJxdnJz?=
 =?utf-8?B?K2hVUXZNTFZ5VjNXSm9rbng3VlFzMUJ6UURkY1ExV2dJSGkvbEZ3aVZ0SlpD?=
 =?utf-8?B?L0NocFZJMTU0THRtR0wyZng2cEk0NkpoQzZmTUFJTDN5OVcxSDJrbTRPSGhy?=
 =?utf-8?B?NmNTQWEvMVVad3dNL3dFZnhOb20wWWtwSmNpNG1TeW5UVlYrZnJjOHpwRXhK?=
 =?utf-8?B?QXRheUFhcXJIdEFHU29MbnRoaS83RjFaRUxLUkowY1BmWVU2eGFjRnhWbFpp?=
 =?utf-8?B?OExWYitTVXBMNDJ0VklNK1hUd1cySlIxRjRqRkExRUNpMytqdmIxVWNvelNY?=
 =?utf-8?B?ZUExa3I4OWkxN051NEs0VG5iak1qdDdQekIxT3NWOFZSQURkOUI2VE9pMmhk?=
 =?utf-8?B?dlVLZTBSREpldXJmVm9lWEJFTHg5TlFLVDVKLzZzd0E0cXNQZno1RFgxb2tj?=
 =?utf-8?B?NnZxVzRpQlFGWUlRUkNzZTF0cGFKd3J5c0xhQTFPOFlxaldNVitoQkpuVXFW?=
 =?utf-8?B?ZDRNaXF0cGZJclZPWEdDNXN0RUlSOTRTWmFNZ0plUElBMWhsWlBSVVA2cnBk?=
 =?utf-8?B?eFVNd2hsQWh1VVIza2VCWUFTKyt6di8xNWxaUWw3Q0pjazlxbVdDbkw5VmEv?=
 =?utf-8?B?NXVlMisraUtEbFVRaTZwMnhwNXpIUkh3RXI4MEpRYmlqU1ViS0JjQmxTQ21E?=
 =?utf-8?B?MytmbG9MY3E1N1RLVWxaV1hMVWw0dG14Yzc0RjNndC8wdnFCTEZWdW1zL3lP?=
 =?utf-8?B?ZS96MWk5a3UwcmNtUUh5OFVlK255QUJONmp3MGx2Qjg0MHZLbTQvM3J4NlBl?=
 =?utf-8?B?ZGZ4WWl3WWpSTUcrNFYxZGRGc3FxR1pKMnAzdmZ3REJuYmNyVmp5WHpjSDVv?=
 =?utf-8?B?THYvRjBnN3NVeG9TZGxlaEN4NTNsaWN1OURuT054L2J2MW9QcXZLSVZPVUVP?=
 =?utf-8?B?WmdNL0YxRDJOVUdsSVRTblpBTXlMMjlrQWdUT1c1M3ZydUs1bGJHR0tNakdV?=
 =?utf-8?B?dFdWZnJDYlVUS1pET1B0TFYvbW5FVHk1WHNoUCtIODY2ZXF1QUE1ZEQ5bjdj?=
 =?utf-8?B?ZDZKcDVCVlJ2bFRXSGNMMGVSRjV3dm4ydG5FaUU1QVBYWE1pMG5mQW1raisy?=
 =?utf-8?B?VTVaRlovZU80YVRPYVpwc3Z0NzFuMWk0OFNHWS9FT0d5NTN3QTlIV1BVbDk3?=
 =?utf-8?B?U0tLNk96Y0d1dkVPWWpuQ2V0QUVCUGlIam9hUVNBc3l3ODd2cEhISnkwVnpr?=
 =?utf-8?B?UW1RVGZIdmY5M05qeUJiaGNRcVJZYTRKMGRCc09LaFRScjRveGdaM0QrT1BG?=
 =?utf-8?B?NUhGNjZrbGhoN3hpZ2MwaC9tdkpPWFNtVWZsam1FcEx5bWJyNTc3S1lnU1Q5?=
 =?utf-8?B?cndqOEY3dXlaVlphZU1sQUI3TWVHa0d1Z1BJRDBQMzJDUWhVbFlUN2l6VnBC?=
 =?utf-8?B?Y1l1RmRMbzFZOXZFNlpMVlBnVFpnZ3Y4aDg5UXhtWUtLTmtoRkpxVGZSVkxR?=
 =?utf-8?B?QmI1ckJpdHM1eVJFQS9PSVhNQnJQdmU4alA2TFJkVXlXTC8vU2tyNjJCc3Fu?=
 =?utf-8?B?dVF6Zi9PbDJuSmJHQ2QzNHBTQ1lsREc4OHEyNmVxdWUya0pkTjQzN0h0Ym03?=
 =?utf-8?B?NjJTRnczb2krR3JtQ1ROSFVRZy9TV3hHWE9UTm52R3FNRmFGLzVWTkNqM0x5?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43e3d946-5124-4bf5-1266-08dde948ce60
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2025 11:15:06.7318 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ksXf84eo/C4UjNviOTTT2hZEtN0709nJKKbd7ZSo1j9HLC40/3ZN41jRLqZgY8UHVeTks7+LoQNce3313wzteBZ9O7XdXjT9BtWPps5x1Zs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6009
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756725314; x=1788261314;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xMHd41Vm8svr2OFZohpeAiKz8mr1IZNuQDhXNg0xY3E=;
 b=ZjuhBR5fwbxHRAHY94EoMQeegS2rVUAy/n3y62cvUK0PKEcC7oJr3b1B
 B+mLGDtjRQaISYBRcg9dXRJYg9iK3qMt522nq++16VlNjDPM7TKnERIwI
 pHPVQvaVIKhWvE+DcyBMQ637eJEClzFfOBNpt17YWR1k67ljW5Dn80p63
 Ntzrozrc78/igZz2eBDqRhiAVYQAAQEY7Wa95DU659GYkmol5yzTSUYXk
 BMD9vfJCmKWuITa8sLK50iQDmGMqHt4pNH27U/tCQR+HC+cS55X+5qjlW
 X/SV2s8CjPO3nz5NT3XTOh0szqxUKykP0eWg1Bfsdn9922pv8SkYS9tOY
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZjuhBR5f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [bug report] ice: Enable FDIR Configure for
 AVF
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

On 9/1/25 11:09, Dan Carpenter wrote:
> Hello Qi Zhang,
> 
> Commit 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF") from Mar
> 9, 2021 (linux-next), leads to the following Smatch static checker
> warning:
> 
> 	drivers/net/ethernet/intel/ice/virt/fdir.c:2339 ice_vc_del_fdir_fltr()
> 	warn: missing error code here? 'kzalloc_noprof()' failed
> 
> drivers/net/ethernet/intel/ice/virt/fdir.c
>      2311 int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg)
>      2312 {
>      2313         struct virtchnl_fdir_del *fltr = (struct virtchnl_fdir_del *)msg;
>      2314         struct virtchnl_fdir_del *stat = NULL;
>      2315         struct virtchnl_fdir_fltr_conf *conf;
>      2316         struct ice_vf_fdir *fdir = &vf->fdir;
>      2317         enum virtchnl_status_code v_ret;
>      2318         struct ice_fdir_fltr *input;
>      2319         enum ice_fltr_ptype flow;
>      2320         struct device *dev;
>      2321         struct ice_pf *pf;
>      2322         int is_tun = 0;
>      2323         int len = 0;
>      2324         int ret;
>      2325
>      2326         pf = vf->pf;
>      2327         dev = ice_pf_to_dev(pf);
>      2328         ret = ice_vc_fdir_param_check(vf, fltr->vsi_id);
>      2329         if (ret) {
>      2330                 v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>      2331                 dev_dbg(dev, "Parameter check for VF %d failed\n", vf->vf_id);
>      2332                 goto err_exit;
>      2333         }
>      2334
>      2335         stat = kzalloc(sizeof(*stat), GFP_KERNEL);
>      2336         if (!stat) {
>      2337                 v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
> 
> It's not clear if this is deliberate or not.  Maybe we could add a comment?
> Here set v_ret.

thank you for the report,
ice_vc_del_fdir_fltr() is only called from general virtchnl processing
handler, which returns void, and only logs errors on info level, there
is nothing to do about the error anyway
in this case failure at kzalloc() call is on ice/kernel side, not on VF
side, so in principle worth mentioning/blaming; but, from return code
(we don't have much variety of those in VC, but for memory alloc failure
there is one) VF side is knowing that error had happened exactly here
in case of FDIR filter DEL operation, so not much value added


> 
> 
>      2338                 dev_dbg(dev, "Alloc stat for VF %d failed\n", vf->vf_id);
> --> 2339                 goto err_exit;
>      2340         }
>      2341
>      2342         len = sizeof(*stat);
>      2343
>      2344         conf = ice_vc_fdir_lookup_entry(vf, fltr->flow_id);
>      2345         if (!conf) {
>      2346                 v_ret = VIRTCHNL_STATUS_SUCCESS;
>      2347                 stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NONEXIST;
>      2348                 dev_dbg(dev, "VF %d: FDIR invalid flow_id:0x%X\n",
>      2349                         vf->vf_id, fltr->flow_id);
>      2350                 goto err_exit;
>      2351         }

[...]

>      2393 exit:
>      2394         kfree(stat);
>      2395
>      2396         return ret;
>      2397
>      2398 err_del_tmr:
>      2399         ice_vc_fdir_clear_irq_ctx(vf);
>      2400 err_exit:
>      2401         ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_FDIR_FILTER, v_ret,
>      2402                                     (u8 *)stat, len);
> 
> But then "ret" is generally going to be success.
> 
>      2403         kfree(stat);
>      2404         return ret;
>      2405 }
> 
> regards,
> dan carpenter

