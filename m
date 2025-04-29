Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1653AA1AE7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Apr 2025 20:48:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5448D60EE4;
	Tue, 29 Apr 2025 18:48:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NlytzyLhBmn0; Tue, 29 Apr 2025 18:48:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50EA460E78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745952503;
	bh=Zsl3xvvbw9zDSDg900UZ6WZoxd8m1H99zkj14J2XZcY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FcsiI+Z6d1QyIcD6ZHEpF13f5uCfvWvQhj4dTp+BO1zz94Y++nAm4HxCjvffjV+r7
	 VFSH8Hwot65pbUX9Gi5bynNbFHGpVUSsfVviX9z6G89/U2btiwbS1BW43skgNQpAY7
	 SbibOGYX1YSys2VHJD4/w/Qp6aUh/hGUY7DLAOYj+5wOcZUNfoIRa6niJZGNkfMnwk
	 x4sWWzzTMq2dzOmeoboElZeJulHX2B4LZ3bo01G6qFLEox7DCFKufosZDoTat6pBx4
	 fOGqLe1SkIxxXIlzrwCHeOHTCmwGxBBGGUeBSDSZWub1jTJXxhVok11Ygj4hjdQ894
	 JKo9h8Q2xqAVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50EA460E78;
	Tue, 29 Apr 2025 18:48:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6AC2FE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 18:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 51379401B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 18:48:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id seoWYTQ8WlQv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Apr 2025 18:48:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 93E73409BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93E73409BC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93E73409BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 18:48:20 +0000 (UTC)
X-CSE-ConnectionGUID: qXi8lEEtRtepn/1L244OJw==
X-CSE-MsgGUID: WEGrCcLLRimSLxMe+kWEBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="47475887"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="47475887"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 11:48:19 -0700
X-CSE-ConnectionGUID: RzGob0r5RaWCr0JoD2mJpA==
X-CSE-MsgGUID: 9a5T/F3iQB2tuYnBnkBWoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="137924564"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 11:48:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 11:48:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 11:48:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 11:48:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j2tvfoxoJKorH80GBioyqTAkWMPAdPOSUNH0IkT4Yn2zqSe2giN3o+1V1KddgDcKt9z/IuuC7dL8P2yWjVSAIqX+yoc7OYS0Mls5xTP+7H5s35i310uaBxrMfc3qcHQXSuSs3V/2Ps63VAuaplZ9pmnxbGWgsgtRCLu+opzA1mCWLjK9FLydW76+PEavDjAVh4/zLmovQEnEG38edkSsrygfgNDfMNJkKRSVJagXfwX06eh3pjRd19GKVIWuqJZ/rWdFovXOO8LX9goXGYEgyTYVD37kP3uOjMolWshzY+znDtwAy3/XJDcLmzi0sFaxDjcOsVxrMPPm+MVum+x2kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zsl3xvvbw9zDSDg900UZ6WZoxd8m1H99zkj14J2XZcY=;
 b=wixBhbOxClZjNCgoAaKYVOmQTSJgEn4p0QiJ97qMvF/bKwAyOxL1fBLhOJxomWJN3bSC0r33YTGBnsxDc1usaU0eN1lfIgkJ4H18sd+FTMk9A/ZxNzXynPAIfZoOUmI0hQNZtLDlRJtjrit17I6e3RqL3QRXwO5Y0X7DJ1p4aY5QlR6SptznmUqyu8U9lP85zeml6hHs+g3LCenpafr7SIymX4LopNp+8x495H/5jwJ4BrqYvF+4dwmY5J0EgvHR6o0KSiiAf6xG7Ao43L8FOcugWUyrEthclD8GDW1+zi3EjrTHT2MYWHuJ/D9g8weYXS/0C4Nqk4ALkDm5TRyUDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB6828.namprd11.prod.outlook.com (2603:10b6:806:2a3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.31; Tue, 29 Apr
 2025 18:48:01 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.8678.028; Tue, 29 Apr 2025
 18:48:01 +0000
Message-ID: <10fd9a4b-f071-47eb-bdde-13438218aee9@intel.com>
Date: Tue, 29 Apr 2025 11:47:58 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Larysa Zaremba <larysa.zaremba@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Jonathan Corbet <corbet@lwn.net>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>, "Tatyana
 Nikolova" <tatyana.e.nikolova@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Lee Trager" <lee@trager.us>, Madhavan
 Srinivasan <maddy@linux.ibm.com>, "Sridhar Samudrala"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 "Madhu Chittim" <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, 
 "Milena Olech" <milena.olech@intel.com>, <pavan.kumar.linga@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-2-larysa.zaremba@intel.com>
 <20250428161542.GD3339421@horms.kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250428161542.GD3339421@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR05CA0027.namprd05.prod.outlook.com
 (2603:10b6:303:2b::32) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB6828:EE_
X-MS-Office365-Filtering-Correlation-Id: d00b6b78-931a-4f99-7b17-08dd874e5dd7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUhONXdvZndJRHN6R3dyeXJtaEQwWVJOcEd0VXpadzl6ZEovMDBEa1dWeHF5?=
 =?utf-8?B?YlUvbEVLYWV6blgvdmRrdldUQjRMK21OK3EzU3dBY0doODZlK0tTaFhBWXdG?=
 =?utf-8?B?SjhYQ21wREMrWDMxTDlNQTR0dVkvZEx2Yzc4eVNaYklmanVhL09aT2RmMEFr?=
 =?utf-8?B?WFI4eVF6UjFCRDZOTjVzVGV5bVFXVWpvWWhRV3BlSjV0Z0tvSFZYT1dHRml0?=
 =?utf-8?B?ZjNzM0VDR1lDM0JpYnNTK2lZMHp1MmhRRjRDY2toVVBIMjdpdk5pdFNRcTJK?=
 =?utf-8?B?TmFhaUgrdnJ3RmRucTNoOXNqYytkRW9ZZmsrMEpnR1BWMDIreng2MHc1dENs?=
 =?utf-8?B?QnJxTjU4TTFmRHVmNlZHc2VtWlFPNnhZdmJBZ3QrSEN3Y1pjSHpGRTkvdzEr?=
 =?utf-8?B?UU5zSjRkL0JqczVmMXdIR0FwU2RYUmpCUTZjVUVlUEcxYkJKMitMNEYvZlh4?=
 =?utf-8?B?K2EyQXY5ZThxYXd2bW4zVG9lZkFwbHR6akw4OHJ0NEJ5dDNQSXFCKzZENm1x?=
 =?utf-8?B?OGh3TVZ6dWVrZ0NTbUZrbjh6V3M1SFJBN3MwL2lrRHpFaXBXNHFrT2RrNjlD?=
 =?utf-8?B?ajh3T2JYTU9DWGxhUmN5bmlqNWVHZWlGRmRNdW5WcnF2aklYTVVIVzgvaU9Y?=
 =?utf-8?B?bWJMaHgzbCtmV21wWm9acHNSbG95WjA2Y3Awc3BPYmlRRmo3blprOXlNRHE5?=
 =?utf-8?B?MERzeERhSlBBZGxHak5KZlFFbEFXZEhzbk5MamkyRDdOaGZWU2pBQWc0THFT?=
 =?utf-8?B?S3h4RHh3Zk5RSmZ2dXJjMHk1Yi8xWWhvTGtvQW5IdW9VOHRpSVY4VU1IWHlB?=
 =?utf-8?B?azZiaVdhN3JlSytsWTdZelY3Ull6YmJVRlBhYWVZQXROZHFxL0xpeVRLNFAz?=
 =?utf-8?B?elR4Ulc5Wlk4VXRWMklJY3FyYmJJQk1XYldiYjZTelpnSElsazIxYW1xelBv?=
 =?utf-8?B?Z3FvZXg0MnBKL01qWjF3WUg5M2RiMHlsRzd6QUszZEMyQW52eGk2VmExaVdz?=
 =?utf-8?B?N3N0Wkwwak5oNWZLNENHL3UzZEtGRXlSTmNJZWx0S08yZHM0NkFkcnR0RDdn?=
 =?utf-8?B?Q2VnSlJBcUNGUTNmMklGT21xUE9oaWQ2UE5vMXFaY3BXRXlQblJxSmYrV2Qr?=
 =?utf-8?B?WU5YS3RVd0crSnVmb2RtRi8xZE54UGJsdUxlelFPOHZObGpUcW5BL1JuSkZz?=
 =?utf-8?B?bzVseWhkZHFQaW10Tkxab0krR2VRK3JTeXRFSWFCclRKTDMrSGNySStJOFl5?=
 =?utf-8?B?SlFqSWsybmE2cW4rdVlaVXVIbjBGM3JSZnlBTzgrbmk4WUkxakROYlVLQk5Z?=
 =?utf-8?B?WWVya3NNNm1vUERvbEc3eVlBYkk4SmtMcTZJM01YZXhGeHBKWTVtcklQYWFj?=
 =?utf-8?B?K0txVWc4alhrTWxrRGNLWlE1ZjBraTFzVktET1VTWTgwWFpkSjUwdUxJNURW?=
 =?utf-8?B?citvZ09GUWhQSzUzV0lRRjBHUVE2Y2kvZWpNSFluYVcvS0NFUGhlZ0tZc09H?=
 =?utf-8?B?TkRtTG5La2hudXRmUitsZXFudURVQ01WYU10TTFZSVpkQlJQYndCRjlya2wr?=
 =?utf-8?B?ZnJaY0g4SFlWSjZ3S2hFcG5TZW5CNml1SzljRGV5VFQrRFZMS1BBamgzZFF5?=
 =?utf-8?B?SGxueW5JVTg4TVMyVkdRWU4zSzZSaXlldU1DTEgzb3RRb1h4eXBrOGxwZURw?=
 =?utf-8?B?M1NsQ1FKcStPK1VCTHFZTXo0bW4rVjdvcDFYT1prWWJGbjhvMXZ1Tll3b3oy?=
 =?utf-8?B?bmdVTUxkUkhJYVVGZHU4VGZBYnhhWG9qWEQ1TUErWGd2ck8yR21WRUVIL3hw?=
 =?utf-8?B?eEYzbFR3RlZQSG1CYXR3dDk2dDc3bVlzcjc0Tmd1aDZ6TnZhSnpVbnNHSVFQ?=
 =?utf-8?B?VThXOHU0dW5xSlUvdkFTbzhpdmtVdTIxSFc3WDJPVEV1UGFDL0NRYXI3M2Qr?=
 =?utf-8?Q?r5ju28xaGaU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnlJVXE2bTFGY29SazJJU3FURXVrbC9JbFNLSzBuN1N6UWRZbXdBdDVzV3dD?=
 =?utf-8?B?Wng1ZW1ZUzFuajlqb1lqbVc0cGRhOS9YYmY4ZjhYN1c1NjUxMTR4d04zUUMr?=
 =?utf-8?B?eFpsY29sV2FkZk5qMUFaeC9DdjZjanIxbXJ0YXgybGNKV1JUR0tDZ3RwazNJ?=
 =?utf-8?B?VXVURE8wQW5MOTBrREFXS3RqclJPdjRqaG5LZEJBcXNYY1lZLzRIRkFBVTI2?=
 =?utf-8?B?TzJuOG5BTTdsd3U4MlRyR1l1UFBTV0t2YmMreVJvaUNZQldVUVRWU3FTK2dR?=
 =?utf-8?B?amxxck1TMUtVYzQ5aUZLU1VlNWpqQXI0dlpvV2F1VFk4dG5ucmVDVERIRTFP?=
 =?utf-8?B?WlpPT0xaY01iWDVjM2lnUEMzOEtRcnE4VHBpOU5HRlpYVVhBWEZqbTFMdmNU?=
 =?utf-8?B?SjRBMUdCREN5YTlLZnlYRVcvaFNIclJiVzMrRmxNVzFtQ1FnTUpKSjhvNDh0?=
 =?utf-8?B?VkpNWFdocTZnMU5iemJiVVoyV2YxclFQdlIyQlVqcThtcGJ4WU1uS2RZSUVq?=
 =?utf-8?B?aUF4aThZVUlCQS9hNEIyaWZvRVVITjNhSHBGOU9Bd0VxWlFwTXJVTnVJMmNq?=
 =?utf-8?B?Z0JqcGZQWE1hQ1F6TjRJK3dFdnU1MExuUWlzYWN3d2JGRmtjL0RQb1JKOVRm?=
 =?utf-8?B?MnZvRmlURkJiRENWZUt5MHJsUXVMeXBzcEVqQ3lVc3NwUGVrWHN3RkJtUVhI?=
 =?utf-8?B?Q1oweXhlZnhEL2M5ZzArblkwWlR3MXZsai8wbVQ5d2VpMHBzNjFXbTVUeXFl?=
 =?utf-8?B?MzZzSFc4dVZrQlljdWp3NzFPMUNQdnhDMXQ3QWFZajBLVzR3cDIrQ2hWc3Zv?=
 =?utf-8?B?ZDFZYzBKRENRS2dMbXc1T05Bei9PL0FObmJCRFlFVnJUV2JlSWR1aFBpZWxa?=
 =?utf-8?B?di82Y3dRN3QxLzV5RU9lUEkraFpibWxLaFJQWXJWdXRNWjhDUGdKWHdkU2JI?=
 =?utf-8?B?dFhGS0luc0pxdFQ0QXlVeFAxUVJzY3RuejJJM2Z5WGVVdFlxUGliL09vbFJi?=
 =?utf-8?B?TTJKckIwaVZsVGNwYmQrRVVhMDB2TzRMRnlsQlFaeml5aDFLdmx2NVIySy9h?=
 =?utf-8?B?WTFsMGdzVTZtc09COW91dVF6a0IxY0ZXYWdxMHljU01UdGxJeXVyY1ErMHVn?=
 =?utf-8?B?MlFrR1JvNUdXWHhCOTRlb0paV2o3Skd2YWNLQVBPUmlSRnVNR1phdWNFRnJr?=
 =?utf-8?B?U2NEaEFnSWwxUDJPWFNXQlR5UGFQZis0dncxYlpLdVhhd1VRakE0NGNYSFZM?=
 =?utf-8?B?Y241eEVFeE1vTy9wRUU3WElKS0tEK25vMWtxUUNQM0lUT0tOZ3lCWEFHc1RQ?=
 =?utf-8?B?YlpTZGttcGN5aXA1MGN2RGs2UzJrK0hKVlNXdlFaYWZzVFh0S1pvVENZNVBt?=
 =?utf-8?B?ZGJWbGJGb3BRWUZOQVNlMVk4R3ExN29UdGJTY0srNWlJOHR3aW8yK0c4WW96?=
 =?utf-8?B?Q0JoRGI5eUk1UUIrdUtBcVlmODY5SzIxN0Y5cHVoaUFyZ3pnZ3pwR1AxZzRQ?=
 =?utf-8?B?ZHNsUzFWSGN2QWNiMGh4UndidFE3S0piNEliTVMyMkhOUEZpcDNjYWhsenBr?=
 =?utf-8?B?d010bEFZVGJreVNmN3A1TGo0OEJvN1RoVnJqWWtYQ0NySTdqaWVSRUpvSFlO?=
 =?utf-8?B?UGRRQTMzU05qZENDdWQ4ZXdWUjVWUWVxVnMzQjI3UTdJM1d3OUhzNlFuSUVx?=
 =?utf-8?B?S0w1S3lvZW5TVVpLQnUyMTRqeTFvSEdSQnAxZTN3RUg1ZXNIdWpaa2pQYUpX?=
 =?utf-8?B?RG1tS0ExSUxhdTQyWXVvTXNwM1YxRWkxaG8yVXBJTmlvc0ZIN291Y3VGenJ1?=
 =?utf-8?B?Zld6NzkrTXhXMlhjSGRlUkVvaTVEcWRLS3hUZXVlbUJWQ2tKY0pKVmZBaERX?=
 =?utf-8?B?ZTRSUWxlRDg2cG9rOVJlUnFxcWMzQU45ZnZwUEZQU25JLytBdDd0TllQekNv?=
 =?utf-8?B?WHpkYlNYOG1pQU42UG40ejJWd2ZjV08ydkVsOFFnajhHMjVtY09MRkpQZGQ3?=
 =?utf-8?B?U1UxWHJSYmRJekNKdk1rcXNPcEpoN3NSYnBIYkljbXdZZmFwcTRVOGZtam04?=
 =?utf-8?B?dVcwQklkWTRod0ZEbW50d3k0ZVNSYzM3TE9UQ1dLUmFXSWE3MHBFeklaVENi?=
 =?utf-8?B?cjJIY0s5VXVienp4RDBFcUYyTXhQN1hGeTZoL3JHSG0xdDQxTnl4RTdjMWdW?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d00b6b78-931a-4f99-7b17-08dd874e5dd7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 18:48:01.2023 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KRyR8IIonprdeVyRz7jP+CfKxOvMW+88nGzhiFDA4XdxJjLH4hRu6D/BMaPwAkHLnceJIacdwIItPj69hFNStqZPzjyxtwag0eCiuxO3YIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6828
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745952500; x=1777488500;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z9fwHc8bAQBQod2cS10Tfg0abZQoHC4QIM5P9wdvz1E=;
 b=jV87+Tyfdqvjv+qupz0JgYVxdGKUV60sOdS/0EkkSVmH8IWIe/Fh3SSq
 yPsw58gwJXvKZ5ycUnvfNBu4HTy0H5b6M1GhelJ+bQ9jGXY3D7xYnU5GL
 n7CEbwjQa3Hqkd0oLe1yV7VukWftoeoxvoKuG/BJ+MbFXEGdtQ/IAnhOs
 auy339qaZCGKJfz7gGp6q5dQGc3rxHfEIcEm1FvY6uqt6X/b/5uBhraOR
 iCKI4joMDPacf02ur1xmrIAjx9ax4s8s7taiPV50Twc5IuYSH4zrVnihV
 Jqa0RwQpIYq7qrubCWAhiQd0grELK1u56g/A2yFDbQAComi0oaE8h4Dpp
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jV87+Tyf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 01/14] virtchnl: create
 'include/linux/intel' and move necessary header files
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



On 4/28/2025 9:15 AM, Simon Horman wrote:
> On Thu, Apr 24, 2025 at 01:32:24PM +0200, Larysa Zaremba wrote:
>> From: Victor Raj <victor.raj@intel.com>
>>
>> Move intel specific header files into new folder
>> include/linux/intel.
>>
>> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Signed-off-by: Victor Raj <victor.raj@intel.com>
>> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>> ---
>>  MAINTAINERS                                                 | 6 +++---
>>  drivers/infiniband/hw/irdma/i40iw_if.c                      | 2 +-
>>  drivers/infiniband/hw/irdma/main.h                          | 2 +-
>>  drivers/infiniband/hw/irdma/osdep.h                         | 2 +-
>>  drivers/net/ethernet/intel/i40e/i40e.h                      | 4 ++--
>>  drivers/net/ethernet/intel/i40e/i40e_client.c               | 2 +-
>>  drivers/net/ethernet/intel/i40e/i40e_common.c               | 2 +-
>>  drivers/net/ethernet/intel/i40e/i40e_prototype.h            | 2 +-
>>  drivers/net/ethernet/intel/i40e/i40e_txrx.c                 | 2 +-
>>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h          | 2 +-
>>  drivers/net/ethernet/intel/iavf/iavf.h                      | 2 +-
>>  drivers/net/ethernet/intel/iavf/iavf_common.c               | 2 +-
>>  drivers/net/ethernet/intel/iavf/iavf_main.c                 | 2 +-
>>  drivers/net/ethernet/intel/iavf/iavf_prototype.h            | 2 +-
>>  drivers/net/ethernet/intel/iavf/iavf_txrx.c                 | 2 +-
>>  drivers/net/ethernet/intel/iavf/iavf_types.h                | 4 +---
>>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c             | 2 +-
>>  drivers/net/ethernet/intel/ice/ice.h                        | 2 +-
>>  drivers/net/ethernet/intel/ice/ice_common.h                 | 2 +-
>>  drivers/net/ethernet/intel/ice/ice_idc_int.h                | 2 +-
>>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c               | 2 +-
>>  drivers/net/ethernet/intel/ice/ice_vf_lib.h                 | 2 +-
>>  drivers/net/ethernet/intel/ice/ice_virtchnl.h               | 2 +-
>>  drivers/net/ethernet/intel/idpf/idpf.h                      | 2 +-
>>  drivers/net/ethernet/intel/idpf/idpf_txrx.h                 | 2 +-
>>  drivers/net/ethernet/intel/libie/rx.c                       | 2 +-
>>  include/linux/{net => }/intel/i40e_client.h                 | 0
>>  include/linux/{net => }/intel/iidc.h                        | 0
>>  include/linux/{net => }/intel/libie/rx.h                    | 0
>>  include/linux/{avf => intel}/virtchnl.h                     | 0
>>  .../ethernet/intel/idpf => include/linux/intel}/virtchnl2.h | 0
>>  .../intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h | 0
>>  32 files changed, 29 insertions(+), 31 deletions(-)
>>  rename include/linux/{net => }/intel/i40e_client.h (100%)
>>  rename include/linux/{net => }/intel/iidc.h (100%)
>>  rename include/linux/{net => }/intel/libie/rx.h (100%)
>>  rename include/linux/{avf => intel}/virtchnl.h (100%)
>>  rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2.h (100%)
>>  rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h (100%)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 657a67f9031e..2e2a57dfea8f 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -11884,8 +11884,8 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
>>  F:	Documentation/networking/device_drivers/ethernet/intel/
>>  F:	drivers/net/ethernet/intel/
>>  F:	drivers/net/ethernet/intel/*/
>> -F:	include/linux/avf/virtchnl.h
>> -F:	include/linux/net/intel/iidc.h
>> +F:	include/linux/intel/iidc.h
>> +F:	include/linux/intel/virtchnl.h
> 
> I'm not sure that I understand the motivation for moving files out of
> include/linux/net, but I guess the answer is that my suggestion, which
> would be to move files into include/linux/net, is somehow less good.
> 
> But if file are moving out of include/linux/net then I think it would
> make sense to make a corresponding update to NETWORKING DRIVERS.
> 
> Also, include/linux/intel, does feel a bit too general. These files
> seem to relate to NICs (of some sort of flavour or another). But Intel
> does a lot more than make NICs.
> 

'include/linux/net/intel' seems fine to me. I agree with moving
virtchnl.h there since it is quite clear that any historical ambitions
about AVF being vendor agnostic are long dead, so having it in its own
'non-intel' folder is silly.

Strictly speaking, I think the goal of moving the files is due to the
fact that a lot of the core ixd code is not really network layer but
instead PCI layer.
