Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADANOyUJeWmxugEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 19:51:17 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C5C995EB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 19:51:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BC3940800;
	Tue, 27 Jan 2026 18:51:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kW8gSh1JxDi9; Tue, 27 Jan 2026 18:51:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAC69407F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769539874;
	bh=8RN1A2INc/vuJbRVWc+apeMa5cQ+tyilbWwhAfZqL9A=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MHEOHXygwdlY+uwzu4DekUdxgSRJQUy8tX924fNRXCvHVTYFhGCaBtvDS1ywtaVew
	 P7oTyVTmf1bQ1/Jq/X/PrWmMz+JXU/zThUULtwSrkDobBWt2Mi88bWcpfYA5Re0mZo
	 T8DKYt+OM9680QZkbBJ0Chh2+Vpb5BV9wv89hKnBfDYcNpEe03QWXyzwtysQzdKGQv
	 sBjHBgoD/5MoJz5wgCuzumg1MjkR/QlMJl3B81vNdXg2z9+ucNSOlA6Mow2xzt7o7H
	 koaFx/jlyvAssGSSnVxiO1PyIejlNQbmvKRAmH+Z79TQIchoNiD51uhYn6wiVSr2Yx
	 okUVUeWcpRIww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CAC69407F7;
	Tue, 27 Jan 2026 18:51:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 22F9F23E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 18:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 04F48407D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 18:51:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1DzzJ7CTplbZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 18:51:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F1122407D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1122407D4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F1122407D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 18:51:10 +0000 (UTC)
X-CSE-ConnectionGUID: y6FD5U6HT7CBVVJygvfFxw==
X-CSE-MsgGUID: 9KVsDfwsQ/a+oXjm+QknvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="73332475"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="73332475"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 10:51:10 -0800
X-CSE-ConnectionGUID: QMfxcaxVTTiPhbGqEshEGw==
X-CSE-MsgGUID: 4PDyOSahSAm8sJ2bhziV1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="207844026"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 10:51:10 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 10:51:09 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 10:51:09 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 10:51:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UzOrO+mC8OWO6HcgWoyqYQl3RG+0DTA2FockQdQsitN4fLdg1wvig7ztnzkcVNevUcQ5xYD+plypMtEo7g+p0GaCByFAfbdxEoeJa3CVZE0v6wcqKuQqTcXZCkNXKcfegCpSvt8Czdi/vMbTKCv3eQ9rMZC18saWp1AT/T4GSn1kNSgZlgViztDRmG69Rn46C+U8ICXMrY4w7u1+kv+F5XssOKNoXUZlPPb5EB81m/5FEsJnoJ0DzAFseYqQ/0wiy320hu/yZbz/YKvgsdoSF3Fe7lFUlVDZoHW/iqz4CLasKyO+yD4DQZTQrEuuNVluJUmwJeg3GSAAg1gdcrE99Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8RN1A2INc/vuJbRVWc+apeMa5cQ+tyilbWwhAfZqL9A=;
 b=SE42sZGlEiNaZUBCLNBJsQeVaFiXklHcKr+M7sL1Hk6nxiDPN0aTRN/xmloLFStQeNHRrybdVG/XU+SdnltVIP83JuIU1wXcnrEUqgul5sYjprt+2iwxDCo/J3NMbjvJTJovDBhJ3atitTUpFYMra2Q1Yt4i+ENf2EVRM6K4O4IVNa9CnUioQ7auvBB6ckmx9VeOsHotzqVKFVaTTHlf7ngFj01w0/naJsad26uFHZhKzabiwPR3FNPb1Qx/k5MciEGgr8YDLbk+KIQ5LFYunQD8u5sNv3E6HfomE2hwmtSCBXPD13zaTJpyPHNVcbKxJHfnxcDz+UnoXF+65Odu0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6449.namprd11.prod.outlook.com (2603:10b6:510:1f7::17)
 by CY5PR11MB6536.namprd11.prod.outlook.com (2603:10b6:930:40::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Tue, 27 Jan
 2026 18:51:07 +0000
Received: from PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::383b:f937:dab2:be0f]) by PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::383b:f937:dab2:be0f%4]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 18:51:07 +0000
Message-ID: <d3193abf-e758-4ee8-995b-72d850f99c1a@intel.com>
Date: Tue, 27 Jan 2026 10:51:05 -0800
User-Agent: Mozilla Thunderbird
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "dan.carpenter@linaro.org"
 <dan.carpenter@linaro.org>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
References: <20260122164632.112607-1-piotr.kwapulinski@intel.com>
 <aXPU4YQi73T088lS@horms.kernel.org>
 <CO1PR11MB508945D598B6284773B6E9E4D694A@CO1PR11MB5089.namprd11.prod.outlook.com>
 <BL1PR11MB597993D5BC80645017BF6F60F390A@BL1PR11MB5979.namprd11.prod.outlook.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <BL1PR11MB597993D5BC80645017BF6F60F390A@BL1PR11MB5979.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0123.namprd04.prod.outlook.com
 (2603:10b6:303:84::8) To PH7PR11MB6449.namprd11.prod.outlook.com
 (2603:10b6:510:1f7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6449:EE_|CY5PR11MB6536:EE_
X-MS-Office365-Filtering-Correlation-Id: d6e2698e-15b6-425d-ac96-08de5dd507bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmFwZjduZnp6YzRwS2dTK0tqcE1WdlRyTG45aXlYMkE5N2NhKzZkZDdoeUNw?=
 =?utf-8?B?VGkzeWxEOWRJNUc4LzhGZEZBRmJ2bkpSaW5KRzFONnEya0hDdVc1NmxENUJC?=
 =?utf-8?B?Vi8xM1N2aUhOY3dqZmt1cWdCN1MreERmZlduLzhFQVp4aWEvRTdDNEZGNVpH?=
 =?utf-8?B?YU9rVnFkbm5pdHdGN093aEFHQStiWVhGbzhybDJiRmw1TXdEcHFGMkpiWGYv?=
 =?utf-8?B?bVpGenE0RkFwSFV5ZnNyYWpKZnhiTHl2c2RPaHV1NEVFUFMrVkEzQjBVK3FK?=
 =?utf-8?B?NTBZMnlvWDlITzBoQUF1LzZ4RXdlalZxNTIyUnJnbUdBbUdyY0I0RHROUVhw?=
 =?utf-8?B?TU44NEhuY3pqcXdhS1pJeTE4QWxlbUluYTN6c0dsVVZoMkg1Y0RiVC9iKzBz?=
 =?utf-8?B?ME9aVXk5eFNzWUp4Sm5HUlBaMHlqaTBrRTB2dEt4UFdQM3RIblRSMFd5aEI4?=
 =?utf-8?B?VnVjRW5iaW9vREI1VHFNKzJ5VEk5Y3d0NjU3aWR2UzV5SmJ6bWs4RWJLNFlX?=
 =?utf-8?B?R3dqYndmUWJxNlduQTUzQVl0SUxjdzg5cGFnSk1MT3A1Ny9idTBnajl1VWZC?=
 =?utf-8?B?eHViME14dGliMHhzWmUxcDlNdllIRDl6R1kweXZGSWcxY3hud1ByNmZFN0FK?=
 =?utf-8?B?d25ZeXdyV3FWczk1VmRaeXZrQVJCeEVXbmJsdnJGY2hFaytrYlpqZCtPWDVo?=
 =?utf-8?B?UFYwZFQ3OXA1YmQwVzNobzNNT1hyUnhUK0gxaHRCZitIdHlMUlMwK2NXNWtl?=
 =?utf-8?B?OWZQODRaeXhIb21zZk1aOEgzYmNxb2V5M0ZGYjBhVURHYlhyZ0tzNFRHN1Vx?=
 =?utf-8?B?ci9YQmZHWVlaUnFTQnVkZk00Ym93UmxNZldKbzZ2c0dORzZzVjN3UGpoaUtx?=
 =?utf-8?B?dXpnWERYYStlQTBEc2piN3VvcW9IZXp3MlNhNUltckRSZTFCdWpSN0pXbXlI?=
 =?utf-8?B?YkhLSTFhSHo2VGloWFhrNTJOdERScTR5emFpZ01NQXdTV2l4b00xTmJaZnV5?=
 =?utf-8?B?N256UkliYnJmc0pQOVpPWWw5SlRpTVU5RnVJRGMzN1VVa24wQmdPbUtlUU1o?=
 =?utf-8?B?MnF1anVqS0w3Z2FOcHY3VnZ3Y3kyYmdZd1EwZ3dteEF3TXZlK3RCUnJ2TDVa?=
 =?utf-8?B?Y2c0QkppeHd5SWRPRGVaN0VLTTdIRDl4cmJGcm1ZMDVpbE45RThNc3AxdHNW?=
 =?utf-8?B?cklhSERTN00rNVczUWlmc0YybjhTeWJ6OW9VclFaaGFvZWd0bWNTOUp2dlly?=
 =?utf-8?B?MjZxM0hVcGNXMkxyS29iWkswc0NvT29GQ1EzYU82T2g5allhcCtZU0lrR1M1?=
 =?utf-8?B?N1Z6QUl3WDE4KzRVcHRDYTlRSHhpK2dHeUk0TE42MVY2c2NtditmeXorK3Fi?=
 =?utf-8?B?c1hYV2RRM3NYSVF5T2I5ZUJ0ZWJzV0ZNUFFOd2RJZ052Q2pOajl1L3B5YS9s?=
 =?utf-8?B?OFgvenFHbEVxcGs5SEdGZFhGdVVOeUFSTmVURWpqS3ZvWTV3Ymk0MnYwVTVl?=
 =?utf-8?B?UDVucHJtYUNxSWpkckUxK0dzVmdKWUNPUy96TjVORTBEdDI1SFJsV0hCeUUw?=
 =?utf-8?B?TjVXZ3RIVGZWOWJmc1U4dHgydGlEbHBmQlFOOEIyUlF2bnJ3U24zWC9kVHJs?=
 =?utf-8?B?MWZYVnR6UTkvYWR4YXY0aStUR1dhczkrMjJIUlQzS0ZJWUhLSjdsbGhNdGhw?=
 =?utf-8?B?QytBdzkyaXVCQXFadVQ1emtPZlViZ2lzVHNJUkwxdzVoYThlemNDdHBNV0Zh?=
 =?utf-8?B?TEpDSGI1bnZqcVNkZlRVM25JUTNOZmpsN3BNb0hQTmYrdUFPbmJhbExlTFFS?=
 =?utf-8?B?dW1iZmlMeDIzSnRCcnlZWFd6blJJUTBOV1RKMkwzeTZ5RlFkVmhnYTZhclpI?=
 =?utf-8?B?bUt3RU1UVCsyM0FuYXVLQ1kzVHdXMkJUNHE3bXJmL0FjNHFKcDd5REFRa3lW?=
 =?utf-8?B?cFBYWHFFcTM1bWlUeFp0NFExc3NheDZzMktQN0k2ZEE1VDlidUU0ZU1GalBw?=
 =?utf-8?B?Wm83RXNwQW02RW5TdWVLQW1GMTFmSTlFSWQ4QTdUNDE4cnA5OGVNN0ZUZ2ZC?=
 =?utf-8?B?TFVqSW1IeTFtWVZkZDFTUnAwdzFuNG9aL1krTlZzNG96ajNuV3Uvb0lnVTRx?=
 =?utf-8?Q?B/5c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6449.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tk1NSW9xNE9OZWlQOUZQcjJTS3J6cDBuV3E0Mzc5d3VDYWc3T01FZm9jTThI?=
 =?utf-8?B?OXRlZDd3SmpObmQ4eENSREVoMEdnOWJXTWY5emlRclFqSDJEMkRDdkZubXhN?=
 =?utf-8?B?eUNRckExemFjOWNXVC93RXVCOUJVd1EvZU80KzExT1BqTFRmYVZYUGE0NnJI?=
 =?utf-8?B?Um1IWTk3eXF4Qjl5Rlhob0ZaMmFlZzVIU21ZREE3WFhmdUJUSEVqa3FraDJH?=
 =?utf-8?B?V2hacGtTWUQxR3NJYnhlVFJsK1greGFoaEV4MlBrU1hUTWRDb2h1QmQ3N1E0?=
 =?utf-8?B?R1BuN3VQMUtDVzF4YkhISXFEZGNxY2I3MFR0TzQ3TjhzUm9TaUVIb3o4elFW?=
 =?utf-8?B?RE5wcER5dUNweDRiOWlxeGxIUTVSd2lPUis1d0hSWlByRHBvRksza1ZoeHcw?=
 =?utf-8?B?NW9nNkhEbGUyRHpjUm1aTFFIYnk1VGRidXIvUU5CdHJsSFVnay9MVXdmVDlo?=
 =?utf-8?B?eGpJSnlWWkNGZFZ4QzBUclhGbndtSnh4NTZQWTVqSnVOMkZOTGg2a05ERTND?=
 =?utf-8?B?S1pNaEdqTkVHTDdjVkVzQW5hYmhDYjJEVFRYcFBaMEpyVE1GYkZ1RWdnMlVt?=
 =?utf-8?B?OGFvWFl2WTZPaHBxa1ZrTUd1a1IrSjJSVkgxTXU2WHNmWHYyWFNOSzBTQUZX?=
 =?utf-8?B?MkFGZ0xlZlBUWCtPNzM1TVljbi9UcHFGeFZXaWdFaERJTk96S2xJU2dGVHJL?=
 =?utf-8?B?bGc3RVZnTXVINStNTnVxN1NPNXdCS2pxczBrYVhCRld0SXhiZStOREdsVGdC?=
 =?utf-8?B?ZmpXMDh1MUFOdUc3aWdKZnVJYTM3Y0FmZ0x1VWJGeTcxYU5iY0NicmdMZHkw?=
 =?utf-8?B?ZmRNbFpEdFF4QzVTOTAyMHNGM1JyR1M4WVVvM1lUQUhiVVE0MU5RYUwrY3NQ?=
 =?utf-8?B?RSticmVyaW10VUlVaE9KVFljWmdaVzljV0ZCVWpiSXpwTlcwT0tBQjFpNVFV?=
 =?utf-8?B?U1pzWEM1bWNPYjZLTUsrbEdEWVQyWGdkQlZ2VHlKS1dzQXpIZnJrWmNEamRy?=
 =?utf-8?B?WklLZ2kvM0x1N2FKWjVJYUNGREJBejdDWndMRTVwT3E0OUZMS3VBSnFiOVRW?=
 =?utf-8?B?WGdQNWRDaG9zakNTdVo4QlBUZ2llcXBrdGhaemZNaTZTZkx0QUdpSHpTWEdj?=
 =?utf-8?B?NUo4QUVyUVJZanBZYVZnTEdBNXBwTmtUSE9MQUMwd09zeWJaQXdYbnFoZ0Vx?=
 =?utf-8?B?V3Fyb2J3bkVVNjVmTlpwRFF5K3Z5amJ4MGJpMXFXWG93cmVadFpvckxMZ0R1?=
 =?utf-8?B?VVY5M0RlenBOSGxMVEQ0eU1IUUFRYXo5d25NNVZLNm9IcnlmNkdiZ2kycEI2?=
 =?utf-8?B?Y2JLV0RBL3BEVm5BNlRwWHFXMGlKS1YrZ0NCN01uQitYTnM0VmRwSTRpNDhQ?=
 =?utf-8?B?L3d0QTFzekp3cktVK1UvdEtON256QjRrSzRPTlhjaWwwRUwxYVg1TEdOMTcr?=
 =?utf-8?B?b1JkNmEraDV5dmcvb2tnOCtJTytxRkpaM3VSWkgwNk5aS2dlaU1WSE82bkVF?=
 =?utf-8?B?MkJLdEJEVHNpT2xNeUpvMW1OczZxaXBjUW9wQldxb3lRZ3pvbEhOdFJ6ejl3?=
 =?utf-8?B?UE9waENPU3VveC9DM0NIUHF6Rk5TL2ticFByRmNnNzAzSXk4QTcySnkzVkNx?=
 =?utf-8?B?QTNXRUpPUlZiRnpPb08zZ3FNS0xkdEc2VU9KWWtUTENGRGgvRlRXQVFuOWNB?=
 =?utf-8?B?d3VYbTB0ZnYwNGJrVnp3aU0ySFEwZ1lHTWRGS21DYnZBWDlaYzgreE9ValpZ?=
 =?utf-8?B?UTBZUDRJb3c1WFdKbzkzdnY4MGQwU1VKTjM0V0phQ1ovaFRuQk9uTHhLMHUz?=
 =?utf-8?B?ZmRQZ2xyQWV5cnFSUm8vNElDdXJGL04rNHJhLzQwZjk1WkJrUVUzSWpRZEI2?=
 =?utf-8?B?M3VNYnJCdTIwb1hMVXhlYXZBQS9DMUM0ZVBFZEhqUFROMTB1dlJIekJFZmU4?=
 =?utf-8?B?YWpqRXhwYUY1UTJEQmRnckVCd1lsNFZzT09rOU8rSkl4QktHRWFXWFBLVTFS?=
 =?utf-8?B?OTh6blpQN2tnUytwQ1Y1SHJRRVhTM2psei9hTkFWRVhkcmc5SUo1VFRKRlc1?=
 =?utf-8?B?dkdEaWl0aWZnYVNoMlgzMUdDSEY1bEhKejJWZDJoYmpubE9VY3B0WVRqcFAv?=
 =?utf-8?B?YkF2eWprYS9qZzROaWpzZXFsT2d0Mml2SktodUZZcm5yamlZdVphZnZXVlha?=
 =?utf-8?B?R0k3Mk82UnBLV3RrT1VHKzdOeTYwWmVqTlYwbHRmUE9wRXBrSHZERm9CaWta?=
 =?utf-8?B?NWJORUhocDNDQVpzOWdQL2J0OWI2WkRuckFSK2lZRThuL3ZFSTJKYy9jc01T?=
 =?utf-8?B?UzBEWGhHOFhLQlRKN2xOVGFrZkMrQWlXdWhPTjliamljNTE5UCtSTHV1MXFk?=
 =?utf-8?Q?A4AqbdcmrOpSgPwQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6e2698e-15b6-425d-ac96-08de5dd507bd
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6449.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 18:51:07.5415 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SiodCTFP9oQFTApGEbAtgt5qYa2mwWmSyyewkdDzo0hXVAAXqRahpSRcyaltz/Yq7D8igVM0MDwEu+YZtEC8kbmJc0nSEFxHqDHHd2ddYwE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6536
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769539871; x=1801075871;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AcowgcbdnItPvkeoKcHy5G40Y/WMzNP9mX9twxL/o+M=;
 b=NQiSt3x5fSWxSRRqEcvax5/BVcxRI7Hw5OkWqvidfW/a1YGVDiwvAGRV
 Y8dQwvpwZKNp1Mdh3JVJiqgyB5XAyuBxvW6m+AICewX2xcArYD2fla6pX
 avaMLGwXAxnwuPfpe0IES9Fapsfrq+v82RhEgEpNxg6mWkDXwtJT3lyso
 uPUfptOx2QAiUi17VRy7Rx4pQsCMzqGFrefR2kJ3x83qKO+EPMn8Gt3By
 h5PK7APk13SDFFK1yYYSs9h4t8Em0TI4w3aPXchbFVHhjVsW9EgIrVHmT
 DZ4JT15uvMx883y81JG7FhOaW9DZXJ14H3RBO4Pwxga2IGp6+vHDuwEJt
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NQiSt3x5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ixgbe: e610: Convert
 ACI descriptor buffer to little endian
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
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:piotr.kwapulinski@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:dan.carpenter@linaro.org,m:pmenzel@molgen.mpg.de,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: D8C5C995EB
X-Rspamd-Action: no action



On 1/27/2026 3:31 AM, Kwapulinski, Piotr wrote:

...

>>>> @@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct
>>> ixgbe_hw *hw,
>>>>   	if ((hicr & IXGBE_PF_HICR_SV)) {
>>>>   		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>>>>   			raw_desc[i] = IXGBE_READ_REG(hw,
>>> IXGBE_PF_HIDA(i));
>>>> -			raw_desc[i] = raw_desc[i];
>>>
>>> I'm also curious to know what the intent (if any) of the line above was/is.

...
> will drop this patch,

Could we remove the raw_desc redundant assignment though? I think 
there's one other instance nearby. You can send it separately and I'll 
make it part of the same series as the other patch when it goes to netdev.

Thanks,
Tony
