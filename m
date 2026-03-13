Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2KgZCwvZs2mzbgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 10:29:47 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E452807FC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 10:29:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66F40811CB;
	Fri, 13 Mar 2026 09:29:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 62mv59dMg82w; Fri, 13 Mar 2026 09:29:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCEE1811C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773394183;
	bh=awDTM8tzrqubVtSyTxWezmswJLPDX5W6ql76cQ40CL0=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DNvVWdlgW57fRFqRp3frz3Vkux4b1Xve0BzNwPOiPhN5hiYyPbw3widOmjDJyMmYq
	 SWcaTzxfqkOQ4UJwBVto7YYRMD0FxAB1UimfN+T/JoutoRKT4ThDizg94IWYvUhzOu
	 GelM93Pg0FTwGo0ew7ozuHGN/z/24LwbdTblRJry9Qh5Pa+V76bnufUXsrQxHqKUym
	 L3IMgyNr2e3rnaCT+MO3HUCfqZCJxM+JPd450dZw1SK7ucRL2gutEdQKaFABebhH+E
	 4NhYhcCaLu2Evugz70r3p7k0xrC00R+/uWzW9LaJ8vZ2N0GguP+pFvLlM5+px3bjAS
	 SeV22He8sdwyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCEE1811C7;
	Fri, 13 Mar 2026 09:29:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 17FB31AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 09:29:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 094CE40A77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 09:29:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EGaJGUV2ORYl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Mar 2026 09:29:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EFDEC40A74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFDEC40A74
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFDEC40A74
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 09:29:38 +0000 (UTC)
X-CSE-ConnectionGUID: 8bs2o4mDSHa2IpmNsO8XPA==
X-CSE-MsgGUID: S59Hvs0ZQrCoyIv2Hi+wsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="92074374"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="92074374"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 02:29:38 -0700
X-CSE-ConnectionGUID: mYaI19+7SviSLE077SOy6g==
X-CSE-MsgGUID: QYqBI0uISxyhNVtSlRKBlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="223480233"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 02:29:38 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 02:29:37 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 02:29:37 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 02:29:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g2zl+jFFEmPXXNqTqcgWF1tMnNn+iNAqvZplXDZfBSr1CUPHmy+UOc2iAaEiGTh347KgU2C8i3L4Xveo5DMKdF9OffJj326Lk9FcCbMCrbbwjukW+fa1awAEwuI4YJgZOgAGaLoCIxyGhN3OtApd75avfu9knyP6XTyEOt5GFCwyGOLMdUaaJiM60ATxHjmw7KZMMG8aAeam3ZocAkKZR2mf7NZtZTFtivBR1Bf5yobS/im/NON6ZunTqDY6UTpnK7PveHO7Q+ye0sCkmXxJ5joKs58cFegBkUmA1wlnnEyrtyAyWiJeorsNFKdbXAL7PT5Z6eZO3F1GcQ5w/RAzWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=awDTM8tzrqubVtSyTxWezmswJLPDX5W6ql76cQ40CL0=;
 b=NhN0JiVic5DuI16pYnaob+1hj9iNc7S8t7c8PLaLI1+H+EZCpznxaHOgEiaNeDXg8zCw9PCtzi1dd2U2HgvlIPuD6zucgnogARdGegfIn6083X30iORZxxJY3Mant9AK5msixDdFKWBO/3ltbKCZ+SvoFvsV6+xtpOVJmT/tTg8wI1QnnxTQgsbJ586LO9R+zcqZOy/M7uV0g7VGQshuQstvRROGqYKT6R6HRyw+nHgEUjcR8KD18S73euTWktIKQyDWar535xNXlb2SoDG60HTharggKAyxohfs1GnzKBsBSzRgUpqyYKHzVWyXD0mvTfDxO4mPqtx7YH3ftS9DHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6097.namprd11.prod.outlook.com (2603:10b6:208:3d7::17)
 by SA2PR11MB5178.namprd11.prod.outlook.com (2603:10b6:806:fa::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Fri, 13 Mar
 2026 09:29:35 +0000
Received: from IA1PR11MB6097.namprd11.prod.outlook.com
 ([fe80::61e9:afe6:c2c0:722]) by IA1PR11MB6097.namprd11.prod.outlook.com
 ([fe80::61e9:afe6:c2c0:722%6]) with mapi id 15.20.9723.004; Fri, 13 Mar 2026
 09:29:35 +0000
Date: Fri, 13 Mar 2026 10:29:29 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alex Dvoretsky <advoretsky@gmail.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <aleksandr.loktionov@intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <kurt@linutronix.de>,
 <stable@vger.kernel.org>
Message-ID: <abPY+aT0SWuixsmN@boxer>
References: <DS4PPF7551E65520F55DBD20987BCAE3C6FE544A@DS4PPF7551E6552.namprd11.prod.outlook.com>
 <20260312135257.71610-1-advoretsky@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260312135257.71610-1-advoretsky@gmail.com>
X-ClientProxiedBy: VI1PR0102CA0003.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::16) To IA1PR11MB6097.namprd11.prod.outlook.com
 (2603:10b6:208:3d7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB6097:EE_|SA2PR11MB5178:EE_
X-MS-Office365-Filtering-Correlation-Id: bf338161-b623-4a56-f360-08de80e30a46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: P6OnlOm1+Wva83yG4ZPzpfDDfHwvBTQqjcRbJexZuZXMOgRW9ZwVeeFcEJNiTn3x5IPLSH9wWvGxoFUKKgE+QTVCJB18ltZRn85Y6UEri9zPCro6JnCsRdk5cYgkXCQ7zFKvFIGo8L1iPiep8sRVNuusumbhs1ACL6SPgQqS68+4bHBVst4XAqoADMUFhJKOgg9MVMA1I8IXDiKNlXUl4JEaaP/b1fqI/+sJQiPS8Sg62nagHJx/IFCWGPECG6SFvN0WdDzUHMvAu0RfAQaA7kQ/p3KteS1tnpKGgOCiAoGnFUIwI8zhEm0V3Ci61yAKYs4mTwhBiPI2NBa8i+02S++96ie0xVyair/5cgSES6FSCEB+EcsGT80l0FGA34k/P8X16RZdp6a6BSSI2drjDzaXpVhFkwfHV0LTCCJFtZ/f7p8hwGMDkAiFhTipUngIsh65cTP8HSd2c2nvzqW4cgpr2dWh0WMSZFVfG1jWZArPH2lzlc+sfKGLyRHhUvV79ehny6avWvYcz3xsxyWIOOb+Yhm+B+lB49J6I7mGIOHLWDgpL/ap2taUQ+uvJg0nVdw6nJpzd+tfLcwWmOisnkmiPxwaG+n+PcnarILCCIEMQhpGMQRg5eVXPCKQCe+IztCgbvsDwahiAan/Pk3q+TaLOH1NJR0pcdeTHqY6XT/FdwAz+nKWtt6LZYVF4oKLEw5KX0DZiPKNjx5t1ugmucRlptscSCKvv8v9H19zUVI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6097.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YndJQ2h3MUpIdFZNdUFJUm8rc2tPcUh0NDlDYWUxemROTGlrUVhuYXhpUWpH?=
 =?utf-8?B?bDVjelYzQmU1NGZ4QmtHb0pBbVNoOHdKU1l4V29hd25mTmo3T1dQZUU2OTZa?=
 =?utf-8?B?bXViNzFGRmJwa3B4dTRXemw4RXlvdkdnM09BZktkRlMxN3VWcDd1ZUU1SjNB?=
 =?utf-8?B?YU1oZVdINEZINkIwU0F4TEtYaEszMkNNb054T096RVl0UndpZlpXYlluVWtI?=
 =?utf-8?B?RDk0ZCtmcVArb1lTK0cwZ3NvbXNROHp6dzROaGd5M043eEl4VFY3MUs4cldH?=
 =?utf-8?B?WXdKR2l1dU8wZkJqMlV1dmFNTjFtM01naUl5MmdUa3ZIT3A4KzhNRjlzaXEx?=
 =?utf-8?B?Nm1YeGhNaHcyV3FSK1FVdHdKYmI5RGlHbGtMWWhLZjZHcVhsT0U2blo2a0NQ?=
 =?utf-8?B?T3oveE5ENFhEZThHUlplUGpTR1RDZzEybVJYdkV3S1FlSDVTajEyUCtReVFV?=
 =?utf-8?B?WVNHZmdOdjNJazZxVGhiaUV0OG5xci9qa3c4YjM5RHE1WWRHZGFFdFBzbHV0?=
 =?utf-8?B?MmNLZWo3anYvZ2JyUDhjMzluYVQrbDNzdUxqSEEvL3dlcGc2bGR1bmUzdWtx?=
 =?utf-8?B?UHBoLzdHT01rSDRwOU5PeXptZlhsSGtKWnFVc2l2NWNJdk9ZUmMrZ21QQkpM?=
 =?utf-8?B?U1YxaVlHV2d1WEZqcG0xM01leUx5ajVJdEtUb2c1cW9OKzlEVitlNmsxQ25y?=
 =?utf-8?B?TUQrNFB6endlaDFseStCU0dINDlHRjF0aXdZdW91VGt4RmYwNHpjeGUwempZ?=
 =?utf-8?B?MGRBM1UxNVRlVTRIM2tyWkF6Wm54blBHbWVreXNrZm5lbWdwbXVaeGdnaFlt?=
 =?utf-8?B?ZUF4NnEyVUF5MlE4d1pkTHA3WENSZ3hmZVhtOWh4RUVMS254Mlo4aU9lZzlz?=
 =?utf-8?B?ZjhvWkRDbW5RdEVuUFZWVzZSbytySDlIdU5hWXh2K3hYM3NNN0xtaXdwdWtG?=
 =?utf-8?B?anVzTUFqYU0yUlBqbXR1OEdBaGpjTHkxb2N6aEhhRDdQcFlOY0NDOEhyd0U3?=
 =?utf-8?B?S2g2OFZOaWlqVCtqQW9WYmFkSEZRdGZrRG4vc0QvVVFCNEY4RkRXMEFOUk1n?=
 =?utf-8?B?eXlPTG1KdmZOOVNnN3lMeG94VDRGS2t6WHJUbmpDVjZUVEhZazFNalZyclRJ?=
 =?utf-8?B?UEl4R20wNmg5U2tIUVZOWVYzd3dLdVJWRjVFNnJjZUxSQzhpVUtEcndyRVE0?=
 =?utf-8?B?WFdVekpsdlAwUWJFWHNhMzV3UGJyZ2tZS1ROaEtaTGQ2ZDAwSytxY0x5WWFm?=
 =?utf-8?B?bHZpMzhGYTdRL2pYdldsUmtYZm40STN0MHROQnBiN1dNQUFCOExJcWlhd1F6?=
 =?utf-8?B?cUh1OEo1S0VJMElBd2VJQk9qSk0rOVdmeTZvTVBpK01Ic0lPUjFMVkc1elRO?=
 =?utf-8?B?TDE1dFBiVHdDZHhQMHVtc1p3OTZDakxOb1NxbDExbkFIOWVJVWlIY2xkQSsv?=
 =?utf-8?B?MFRaM3V2R2ZWbmV4ZXRJWFc4RWhpaC91ajdFNHBta0tHVFpHVzZBUDZFNThP?=
 =?utf-8?B?L0RNTFREakU0NzBIL25TbnBHdFRtZCtEMHN1RXVmRmxka2NVdHNkSnlPcGhm?=
 =?utf-8?B?RFpjVEUyejJLNlVacFpSeUJjZVorSWt0bGFBK3ZGb3FqSVk4Rk1hSVZqYk1n?=
 =?utf-8?B?SW5KMnI5RTh1YXdrZTkxSXB0VDJCaG5qVXk2MWt1cjN5RkQzb3NNQjdNVEU0?=
 =?utf-8?B?aG5GYnl4dWIyd2RFc1UwYjRyTVU5Y0I0eTZqYndpVFQ0RVEwL1VWcUxaNXM0?=
 =?utf-8?B?L3h5aWxmNnhyQmxVRkhEUjNjUHRUNDZJejl0UUV4S0dCVXJncnE4dHlGUzda?=
 =?utf-8?B?TENyOVRndFVKSUVzNDdOdWpRMzdSZ004YW5WSW5kRWtkMUJvU1lyRmhua2N2?=
 =?utf-8?B?bDNTTVBXZ21vWGpDOVphbkROTCs2ZnVucW1jZXJpMnhpSkF0bUhtbHJHcm41?=
 =?utf-8?B?Q09FWkt5YjYvcCtUenROSEw5czB2K0Q5clNScFM0NGZLRTJ3anphUldpa0pv?=
 =?utf-8?B?M2ozSE1uWCtGVmFlaFB4ZlluMFpHUWNDNlFmcUt2cm5ROCtremlVTXlDNHd6?=
 =?utf-8?B?UVVCVURRTHF5Ty9Sd3VQSnVuOVBlQ3JDOXdrUXNpYkRyM3lVZ3JjcWRJbyti?=
 =?utf-8?B?OE43eXdqODV2Z1o5RVlKdkNndmxrVktiVkZacHprQVV2c1pYaHgvVHZRb1Qr?=
 =?utf-8?B?Z1dINHdnSDJqakN4QUdPVDRZZ1B5aFR5SW15aEovNGF0VjJBVnB5MTZzbFZ1?=
 =?utf-8?B?OE9mMVdYUkFPSTRTZEpsMVdEcmQwU3VVZVIrNTl0eVZIU3hyRC9oYVdqdm81?=
 =?utf-8?B?Zmo1SUk2WFNKT1c1NnJMSjV6eERieEFQZEt2aEFkekxMN3F0dlprcEVORGgz?=
 =?utf-8?Q?VPhWPqz6Yh8RPUGo=3D?=
X-Exchange-RoutingPolicyChecked: Svk0wDa/myM+3oxVa+yLNo8nhs4BNAM0uZHFbirTpWDZqyJoYgxGWx+sssmLVFch+xLlPIj2D3Qx+bMAXgATFklVKmhyoiZ4rGGA9k43RlMA0AJwVuVxxCebr8I6lGR1Ne3gR/d3B4WeHR30U2H9pwsDrnLjHH8jYMkRQMODOYzd2gzpUZtY3z8HEv9CMPG/BAECfC7xh8Cmpr9y7bE6mVHhD7tclBptZMogWC8gDOj5lSatLkhAnh/t5uxmQs/UAn4PHbpZFJ6GvgYxgnwuc7nP+mYKO6HuCXNE05S640pjKBO2Ztl63J2R3spg7hbKr1QGROW1DO0ke3KgxvVNNw==
X-MS-Exchange-CrossTenant-Network-Message-Id: bf338161-b623-4a56-f360-08de80e30a46
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6097.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 09:29:35.2849 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ToLodVoCRlbpbFnfkjxb/pLuxsJ7w4cwSxYaVi4Ywqe5LQn5IKmDDtp9nVZ3lSrZIW8nXPGHMEc4EQHJ11215PiZxkIGdGAgzMcscjzlEEA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5178
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773394181; x=1804930181;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=I+yhEyX2XNK/DDce+V1xEfbqJoy6Dubi03RFSn0mzfo=;
 b=Ak1BBvboDQEp0qC5OXKUhMzQdbGHUhsFRcCjVfvd52gTxCpOiP7oNrxr
 BEwuqhGybnGLtwP4YAxD4/oGwY2oq19QgPc6YQFdlW3WgBxaazB9D+LeY
 B7t+Z6xlxrecCwilPU7g/C/J0uLHEbmKWPTWcJOrO66Gp1N5l1krya8gI
 +YpqeqEiF+v5VHodJ/xvKoClu88zm0DdvQ9qJRBth40UaaurC9Gh3JvJf
 LlfNpEkruOhaZ1aXyuW4fh4B0I2AgpvTjafXNzueQz3sexDMOX163ebzK
 B3Q6Q9YFrrR0zrFOHmGvMnigOLgDONkE+2QvR7HCMfoURDeZod7TmoeO4
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ak1BBvbo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] igb: remove napi_synchronize()
 in igb_down()
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:advoretsky@gmail.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:kurt@linutronix.de,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email]
X-Rspamd-Queue-Id: E2E452807FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 02:52:55PM +0100, Alex Dvoretsky wrote:
> When an AF_XDP zero-copy application terminates abruptly (e.g., kill -9),
> the XSK buffer pool is destroyed but NAPI polling continues.
> igb_clean_rx_irq_zc() repeatedly returns the full budget, preventing
> napi_complete_done() from clearing NAPI_STATE_SCHED.
> 
> igb_down() calls napi_synchronize() before napi_disable() for each queue
> vector. napi_synchronize() spins waiting for NAPI_STATE_SCHED to clear,
> which never happens. igb_down() blocks indefinitely, the TX watchdog
> fires, and the TX queue remains permanently stalled.
> 
> napi_disable() already handles this correctly: it sets NAPI_STATE_DISABLE.
> After a full-budget poll, __napi_poll() checks napi_disable_pending(). If
> set, it forces completion and clears NAPI_STATE_SCHED, breaking the loop
> that napi_synchronize() cannot.
> 
> napi_synchronize() was added in commit 41f149a285da ("igb: Fix possible
> panic caused by Rx traffic arrival while interface is down").
> napi_disable() provides stronger guarantees: it prevents further
> scheduling and waits for any active poll to exit.
> Other Intel drivers (ixgbe, ice, i40e) use napi_disable() without a
> preceding napi_synchronize() in their down paths.
> 
> Remove redundant napi_synchronize() call and reorder napi_disable()
> before igb_set_queue_napi() so the queue-to-NAPI mapping is only
> cleared after polling has fully stopped.
> 
> Fixes: 2c6196013f84 ("igb: Add AF_XDP zero-copy Rx support")
> Cc: stable@vger.kernel.org
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Alex Dvoretsky <advoretsky@gmail.com>

Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
> Agreed, that looks cleaner — no reason to touch the NAPI plumbing while
> the poll could still be running.
> 
> v3:
>   - Reorder napi_disable() before igb_set_queue_napi() per Aleksandr
>     Loktionov's suggestion.
> 
> v2:
>   - Replaced 3-patch series with single napi_synchronize() removal,
>     per Maciej Fijalkowski's suggestion. napi_disable() handles the
>     stuck NAPI poll via NAPI_STATE_DISABLE, making the __IGB_DOWN
>     checks in igb_clean_rx_irq_zc() and igb_tx_timeout(), and the
>     transition guards in igb_xdp_setup(), all unnecessary.
>   - Tested on Intel I210 (igb) with AF_XDP zero-copy: full E2E
>     traffic suite, graceful shutdown, and 5x kill-9 stress cycles.
>     Zero tx_timeout events.
> 
>  drivers/net/ethernet/intel/igb/igb_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 7c41e32256fa..0793842cb937 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -2203,9 +2203,8 @@ void igb_down(struct igb_adapter *adapter)
>  
>  	for (i = 0; i < adapter->num_q_vectors; i++) {
>  		if (adapter->q_vector[i]) {
> -			napi_synchronize(&adapter->q_vector[i]->napi);
> -			igb_set_queue_napi(adapter, i, NULL);
>  			napi_disable(&adapter->q_vector[i]->napi);
> +			igb_set_queue_napi(adapter, i, NULL);
>  		}
>  	}
>  
> -- 
> 2.51.0
> 
