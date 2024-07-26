Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE2C93D428
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 15:25:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A210360AF9;
	Fri, 26 Jul 2024 13:25:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VO_h55Yhh4ub; Fri, 26 Jul 2024 13:25:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E345C60B0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722000322;
	bh=Gtm8prPeylMgEQGLBfevxUw9mKeG+POhFbhYQ4gJhN4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JYwUxOQRnG8DljDX2V4Vz6da30C1Ej3VOVbbJSlG/aefjCL3KrK57DEldakAUz9o0
	 BQCq+LX3udAMqTcwBPtNbvOrcEmKzUKjkRlzZ79ccMke4zI9hhsJ8wIphkIDPDPsY8
	 0L8e9PjWCxdZI69+poRl2r1l4VJ/b8mGnmULv0vsMx+GPlIdeNB2jWUFlWis/3S3aS
	 cW5pJbKKWTNFCmfx3FsliDvaVTUgYaJioelyobA+kzLSGh5jObt9OQZVB4ppe5PvXU
	 OfpbQ3qhsWq6v0CDesbZlXGvIDYgiIF91BxAKPe9iVmN2I1J4deDZmXkxhRcCJlaN8
	 BF/qFTFYBNJvA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E345C60B0E;
	Fri, 26 Jul 2024 13:25:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D99011BF344
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 13:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6AF780A77
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 13:25:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OWvcAuJa6GPb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2024 13:25:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0127180A90
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0127180A90
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0127180A90
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 13:25:18 +0000 (UTC)
X-CSE-ConnectionGUID: 3xs8hd5aTXyhdxbXdvlZ+A==
X-CSE-MsgGUID: 99mhMeuKSNywoO4uRUwY1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19591604"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="19591604"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 06:25:18 -0700
X-CSE-ConnectionGUID: rCAuBasrSkiycJyts1u6Tg==
X-CSE-MsgGUID: W1gCL+5TTsudPo1Psgxp6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="84234745"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jul 2024 06:25:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 26 Jul 2024 06:25:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 26 Jul 2024 06:25:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 26 Jul 2024 06:25:16 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 26 Jul 2024 06:25:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rx23OD1PgXJStiiJYts1ADdl5ifODLrIdCnVggfy/PyNH5KBi6pP9N3ItdzCHfTIPWtgT95SLwIemPsKMMVFj80dr0Dh3dsI9einGQje+8vxeQC65qs6zgJRi0sFDypGmozdM9bQKdhA8aBzLcsOpuhJpgW00ucEdHz+jsPbscmi1H8EKypVnszHLzkQkzcBtLFH+3L9Ty+545/saC8DO5NUzd3IEDI2nuOU/CGAzEM0SFlCjXjB6y14JiLced2xUSilQJbxXgi7EzZVwr9KhihGUBnFQtYzhtp+0V9JizcLQlu2z2jXbbWauGrUJ9lcvRnXVX8RP5jPsLaeemFYTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gtm8prPeylMgEQGLBfevxUw9mKeG+POhFbhYQ4gJhN4=;
 b=NdD5MK2IN28L2T3A+jtJy0ko+nAE+IHmI84/XHCnR18LQD/hqR+kCAhhK01EUzQCsa5slSDHcVs5K+DyuS1a22wuha3l8z0rTElcwk2tGPOwMRzoetG+nD3hA22/BYN/IXIyyNnt9xD7Bv1fiCjg0EJHOBYqSgIQSS0kYvqEQ6n/kqR3sHNRfwCGKHliWfjH5EY3fj7OdfG+XuhcQ+OrTaYlX1Tt9tYqG6g6O8afg04dYX21g2dT6g6jZHGxW+PqI0JDoujYWcPLoWtjA95GZBN8XUzeDm5PbpHPVsM2+J7KMUlTletBzvZTLyKwcLdNO542Nx0MMKokiX4BtcDElQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA0PR11MB4749.namprd11.prod.outlook.com (2603:10b6:806:9a::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.32; Fri, 26 Jul
 2024 13:25:14 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7784.020; Fri, 26 Jul 2024
 13:25:14 +0000
Message-ID: <88973bd7-53cb-4594-ac95-6a837b22a045@intel.com>
Date: Fri, 26 Jul 2024 15:25:09 +0200
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>
References: <20240725093932.54856-6-karol.kolacinski@intel.com>
 <20240725093932.54856-9-karol.kolacinski@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240725093932.54856-9-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2P250CA0005.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:231::10) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA0PR11MB4749:EE_
X-MS-Office365-Filtering-Correlation-Id: c8693043-7c4d-42f6-b767-08dcad76621f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z3VreG1sZ1hLTkd6WDRpM3A5YUxaYithM2FORXE5SHBGVUNrT1psSmZPR1Jk?=
 =?utf-8?B?MFhXbldncXVJSkl3T0RiZ0g4OWJya2RpRUhpMXozOHJ5anFZRmppQjMyd0g3?=
 =?utf-8?B?ajZkcCtjaWcyM3YrSXlzYlA3ZkZteFBRVVdGZ25NOWdHVm5CZGxnRW0yL0ZC?=
 =?utf-8?B?Q2VTTmtYeG9FSW00QnJVNGNxb3FPVXlwT0RFOU1Ed0gwNzVkdkw5RkNDNmd4?=
 =?utf-8?B?K3BCZ21RZ252MVFUVjFxZGc0VEhQZGZmNGdYQ2dYQlNPREZlMEZtUTgyUS9F?=
 =?utf-8?B?TFFNMjZaWWRtVythM3MvZFdDNnJXMlVkMXl1cGw1dUdRbTBjelF0YkpqcE4y?=
 =?utf-8?B?ZzVZcFAvN1BwVlByS01rOG14Y3FsTEFRUzhUL3RWVmlNRWdOdnk3SlhOVzNP?=
 =?utf-8?B?cmVvRTA5eHJwOGZnalZtRm5pNnFFdWxFcUliS0RzZlRrczhISm5YZ1BPY0d6?=
 =?utf-8?B?cm9wWjBENVlNZGxmQ1VGd3orU1pKYkJkdmVGTzFuNk5pdksrRTI4RzFzSVl1?=
 =?utf-8?B?emZKYVhwNWVYYlVodU85YkJ2a3RYWGFjc3NHaXBUTVdmLytreW5YcDcrVWwr?=
 =?utf-8?B?emxaenhYb1oyTVlqbWNDL1lvU1ZLNVc2K1F6YUx2Sk1EbzdqTlV5QUx5bjNG?=
 =?utf-8?B?RkdQNkVqYWlEcTBKS3VvbDJHQXJFOXE5QmFwVW91dTY3ZUtZc2xMMW9SbThE?=
 =?utf-8?B?WnMzeHA3MSt5ODNVemZ5bVpGbUhBT3R2cmdzQ3U0a1g1eTI1YklVZDlJT1Ir?=
 =?utf-8?B?VHhiK21CRjZ6a2lmUFU3emwrS0YvZ3VkWWgzemFxMnRrSDU1d3lFQk12VTFU?=
 =?utf-8?B?ck5uSzNNTk0ydTcxZzhjTlFNVjU4YVpUWXpkbVZKS0drb1JGQ25UZmxiQU9E?=
 =?utf-8?B?ZnVaZGhtUVhvS1BBQTlNekkxcjZBdkxSSWcrWHlmYm1OdlRhSmNPcklXc3g1?=
 =?utf-8?B?bkJPc2lwd1NLclNwcm1mNUI2QTlJM3B6L2lSQkwrZDFaYzQ5NHVCREF1VnJ0?=
 =?utf-8?B?UnVzZG9Gamp6dlNsNzlNR1I0MDJWY051SXhhOThSaDI1VXRqaEdhZXhJcmRS?=
 =?utf-8?B?UTV1aWloNVdSR0xzWlZTYkZHeFY5eEdtZHlDbWpTVVdFVkFpWjlINi94TFVk?=
 =?utf-8?B?dUFRMCtMVk5mejBWUlpMYjNSR00rN01MamEwSWMvaFV2ZXRFM2xDMGJwRVpT?=
 =?utf-8?B?ZDE4blU2MmV0UVFEZmhiZkdEYlRHbjNWL2dMSHlzUWVPVElzME5zQ3Z6VVF2?=
 =?utf-8?B?aGhQQlpFNXRsdER6dGFYbXZiM2t1SENhWStycmxHVHR6cktmcS8vMk1jOUhv?=
 =?utf-8?B?d3hKQmZPeXpTVTJkRFdFbDA3eVZXMjZuVU5WVDM4Rk5rQ2tadTNZQldFdjVE?=
 =?utf-8?B?SllZWXFHakVOL0U4QXFGWXdkOXBpYTdzWTV2b1lJRjI3UExRdHd4RnJYUFBw?=
 =?utf-8?B?akU3TDlqYW9ZV1BTdXFXM2V2TzdJZ3ZPd2FWZlZMYTBEUkVIKzROSTVlQ2R6?=
 =?utf-8?B?aGNnS3NybFUwOFhrUFJoQndFMlVGY3pGblcrMk02ek41akl0a2RaMEMxZEJa?=
 =?utf-8?B?V3FmMGllVDJXV2ZzMFRlN3BkSFNWN1JzSlZSdnhpK20vMVZOV2VOb1ZDbWhY?=
 =?utf-8?B?ZXoxVkZrODFBSjRoZTNST2xRSm0vSkp6ZkJGbWJCaXpXajRVN0o2YXBTcEpQ?=
 =?utf-8?B?MXp6QU5RVTJleWFLTG5xYzZkZllaNVA2RkZZM0Fabk5Vcld4V09MdU04NFg3?=
 =?utf-8?B?MVpYK2FwRjZwSFovWXdLVnFCQ3gxU2VrVXkrVHUyMXZpMzBwbldsbm8ybVkr?=
 =?utf-8?B?N25rb1Y0R2hoWkp4YWI1QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnZpVStOR0dtM1FTd2JHb0llb0hUaStCK25iR2hzZGNncmN0YzNYOHJ3a1g4?=
 =?utf-8?B?OElKSnJtRGx0QUdyM29acGk1cjdJQlJDWTdCZDcyWTkwN1h6SFdmbjE1OVQ0?=
 =?utf-8?B?ODk1YnQzV2x6R3M3RTh3ZmloR3lGczJNYXV2b2VRWE1BYi9Tb2pSZjZFUjRT?=
 =?utf-8?B?MnlsZSs5dTBjYmxPOU5CRWhmSTRJWVdiVi9Ebm1SVmFjVE9jcXdjNXdRVUtO?=
 =?utf-8?B?ZWlDL05QdlF1akkyT2pmK0xmVlJudmVRZWdFRWpPWWNVckRHUGY4V0tqSGNO?=
 =?utf-8?B?d0FnTEQ2Nzlwamg2bjY1cCsxVytUSUp2TE9uKy9qbWJpbUg3V3FacnFGU3hh?=
 =?utf-8?B?ZFBSZjV5STRmMW16eWJiUkI4NmhjVFo5Q1ArT3dFazRxZTF0cFpVQmMvUkdK?=
 =?utf-8?B?eDV4SWloZzk5cDJXMWNWcmIyRkRSYzNxU1ZuUHJtRElkZ0I5WDhhRThhb1cr?=
 =?utf-8?B?RUxXMCtYVE9lTTZOaU4vdzlpd1FGV0wreFEremVPcTNSUGVHcXREcEJ0cHQy?=
 =?utf-8?B?aEMvSE9CS3o4amd3SjM3RXBCcmhkVkZrbTl2a2FNWW42UEQ1elhKWVo1YkpS?=
 =?utf-8?B?RXV0L3pGQ1VlaFk2RndxLzhlYUdpRXZJc3lrRHdFM0ttMzFIOG1hWHYzRndF?=
 =?utf-8?B?cEpBRi9VTUkydlVYRVBxWXZUY0gzamM3eTNPaEJubkZab2Z5Skw4Z2NIaXF1?=
 =?utf-8?B?c2h0V2hRbnZaVlczY04vNzVtRlA1eUg5dlNUbUk0eUFadDVsQjBJcE15NU9Q?=
 =?utf-8?B?b1dkWCtyREZLOGVzSnJIUkNnN2VDWlpTY0h4V2Q1azlKS3drQld1SzhVSHZs?=
 =?utf-8?B?NWdaQ2dwMXJpdHZiT3FJaFNweVdVdVlXSHMraFd5bkQyR2hjRFpGa1E1bUY2?=
 =?utf-8?B?WlNwWkNXbkk4bGxWcU9FRGRQb1AvbzNrZGswWlNCemFpUmt0STRSNGFyTHZN?=
 =?utf-8?B?TWN4bEVHZVBMTUF6MGlBVlFNZ0M2R0tuVE1Bd3o4TzNnaG9TVXFqOXlNeElw?=
 =?utf-8?B?UTI0Z2JJL1JmSnFDZ1RLZC93U1ZpVUdCbFNKcXlIWlRIOUdvSmNETnRCT0F5?=
 =?utf-8?B?NEN3WFhhWmNCQ0JnRno5ek95ZHF3Z0hNeVlMSkw5NmdhTmNmK3F5YUJIWE0v?=
 =?utf-8?B?aEc3bUtBalVwNStocGR0VmZ2VVdMa3psQjBVQkRqNzVpS2cxNGJ6UHJqZUNW?=
 =?utf-8?B?bEVVc090Q0x2Ky96SWFDUUxVanNIdUgrSmZXditndHFoMlp5em1VY1IvTDhi?=
 =?utf-8?B?LzczTS9YYmlIZ1FIQjdERWpXTHEyeW1zblAzUmk4bGVRaXpwVGNOb2E1Vncv?=
 =?utf-8?B?VWJiUEZJRXJrazlpOGdHWTZBVGRnaFBCRWo3OTN1amVTeWtlMjZidmEwcXNE?=
 =?utf-8?B?bGE5UzVZcEFIVDEyK3NsRHpNU3FUbGdzMmVhWWttdGs5OCtVTWJKUGxJTEJF?=
 =?utf-8?B?Wjg2cndUWkt4SHhvaG1QOHF0TnpZUlZyUVBMc3l5M0xkTXlycXV3bHg4MkJp?=
 =?utf-8?B?bXBNWENtamQyRnphWHRqb0xLMm9CV3RPU0xKZDBkVUZJOUhPakdsWmZSNFdq?=
 =?utf-8?B?U3VxeUgzWmFGV1plSDY3MldkME1lTzdzWGNQZE1xamczbUY4aGdFNThYVnFV?=
 =?utf-8?B?RWF3UTRmVk9RRlkzREpqV1lPWGIrREh4ZXIrSDM3Z0RUdm5Ob0htRU1vSnVY?=
 =?utf-8?B?WWpkZkdOVTRmbEI4MGpaWFhpMW5nZFFMUkhubVEvUFJYejkxSXQvREEyYUNK?=
 =?utf-8?B?TklId0dvMzljQk1FNFpqcDZGMlE5ZE44UWR2RmYyQjNGL2FyblR2d3MzWHkv?=
 =?utf-8?B?OE5XTUprWlJWK1QwaXRoMVJ3bExvc056ZHhTQk1SQnJ0VFhMZ0FiL3d0UGNz?=
 =?utf-8?B?NWFGVVZjRTYzY0ZxR3VCWVhlcGR6RGFaaDN0c3Y1RkNuQ0s2UUhpeEswWHE3?=
 =?utf-8?B?dGNwVm53cllBdlJReW1Na010SkY2eVozY3IxSzU5RkRUdm1XQzJSZm9NVnRP?=
 =?utf-8?B?Vzl6YjFZZ0I1NW9tc3M5Zi9hYjJ1Z1BlRlkzWC9DTlU3NXdkNkFKbkoySXJN?=
 =?utf-8?B?V21sNVJOMWFsNmw0eDJJcXNzdXRUdDFUdW5ZdjFiWkRUdWt6b1FkSnFMellB?=
 =?utf-8?B?T3VxcGprN0xRWmZGUUFOV1VVRFlnbERncVdaNFZ0bDFJYnpIQTdUUmtJeDZH?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8693043-7c4d-42f6-b767-08dcad76621f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2024 13:25:14.5618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n/bZFpP0TJD4V9F4spPStEHXjyyxmz4sR5IF7modgB8ml/gCkiIjws/wMh6rMlv45faYuochefp6Ckl8oqw/vdJJiSYY1HuCPqrvERxEcwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4749
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722000319; x=1753536319;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fDUsig1MDMYCy4KRkpTrggG0PgdCGl7Od8NHS/oMkSk=;
 b=FigC1FBo4neasEb9QsiVYkSvPAp5MMiOa0RgqQwQBOT/YD4FVlz/7Xzq
 Id2cv9wH0f78R8knm0C/YCo79yvvmRsWqUUhl++8xc3DEehpFfVTtVH1q
 uySwZRaj1dkHq8O5yKvF5PzXo75o9BlZrxs/YUfMyYlZVQYdLDBX/mFh1
 331nG7900B1/R1ptY8O08NwptO9x8gbjHy2ZuwSIwvXinTK4KR6/srmPp
 ODj35CxGh3L0RQjjETf6UYXtD3YB3St9RUr7LQqm0yOf5LE5NPClYuF59
 2ii2+JLI8GuYId/2+bVXXjiZTSrd9sHkvj/aP2z7Q1WblknsKa60jtAuI
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FigC1FBo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 3/4] ice: Add timestamp
 ready bitmap for E830 products
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>
Date: Thu, 25 Jul 2024 11:34:50 +0200

> E830 PHY supports timestamp ready bitmap.
> Enable the bitmap by refactoring tx init function.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

[...]

> @@ -987,24 +965,25 @@ ice_ptp_init_tx_e82x(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
>  }
>  
>  /**
> - * ice_ptp_init_tx_e810 - Initialize tracking for Tx timestamps
> + * ice_ptp_init_tx - Initialize tracking for Tx timestamps
>   * @pf: Board private structure
>   * @tx: the Tx tracking structure to initialize
> + * @port: the port this structure tracks
>   *
> - * Initialize the Tx timestamp tracker for this PF. For E810 devices, each
> - * port has its own block of timestamps, independent of the other ports.
> + * Initialize the Tx timestamp tracker for this PF. For all PHYs except E82X,
> + * each port has its own block of timestamps, independent of the other ports.

A 'Return:' block?

>   */
> -static int
> -ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
> +static int ice_ptp_init_tx(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
>  {
> -	tx->block = pf->hw.port_info->lport;
> +	tx->block = port;
>  	tx->offset = 0;
> -	tx->len = INDEX_PER_PORT_E810;
> +	tx->len = INDEX_PER_PORT;
> +
>  	/* The E810 PHY does not provide a timestamp ready bitmap. Instead,
>  	 * verify new timestamps against cached copy of the last read
>  	 * timestamp.
>  	 */
> -	tx->has_ready_bitmap = 0;
> +	tx->has_ready_bitmap = pf->hw.ptp.phy_model != ICE_PHY_E810;
>  
>  	return ice_ptp_alloc_tx_tracker(tx);
>  }

[...]

Thanks,
Olek
