Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCDA9BD8F9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 23:45:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4DE640677;
	Tue,  5 Nov 2024 22:45:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U7tAj-iq2qAF; Tue,  5 Nov 2024 22:45:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B37D44067A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730846751;
	bh=7uM88lAknvsLndtk78AUHAkdNyFTaWYiR8zoZ80Gtl8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TFC7Sz2VNx5LdHfxAbe41tbu1KbkMV2KGpW+9+MPFsWW9MYAWAh0HbAbj6xbVsSye
	 ebuXm9I5w2++vCa20bw7fmBuA9G8Q1kF2EkfA55q2s66j8trMpHVLJPcIjKvaUMM6V
	 cmQuzo1ElYuV82xEmsUNlU7P8vbUwl9bFxrQ2dw7cRz1r4p4wCEIuUbWc8fkOqViEp
	 gsF92yUrb31FxL6cHmM6p8AuZQL52K12fs4P2L9e+GLrkKf9m35PJ54fvM/yM0B/vm
	 AxKqne7AZndbIWzwDII1D+Dy+XlDtCvWrCMWqbK27IMk422YR3AqBmD9uJQat1o+f3
	 VgTSXmd6elHzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B37D44067A;
	Tue,  5 Nov 2024 22:45:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 616AB27F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:45:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40AA140126
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:45:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CjuO4pgvBOyZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 22:45:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 01A76400EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01A76400EF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01A76400EF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 22:45:47 +0000 (UTC)
X-CSE-ConnectionGUID: 3Nv3L0BiSaOAt+vXcj2odQ==
X-CSE-MsgGUID: S3W5T7VlQtenE+xli7fNJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30472962"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30472962"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 14:45:47 -0800
X-CSE-ConnectionGUID: dJb8AQ/zTVKGDeQg1mcuvw==
X-CSE-MsgGUID: T47idwwfQ46k6rVTrINEsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="83849698"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 14:43:57 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 14:43:57 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 14:43:57 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 14:43:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rSD7p1+Gk2dUnrPtz9A0SqFVf2QgDKRpELrLiEy+CI0L8Jk/LLTXFOBQi/UvflppIGI+wMCnrtZa19VIFXaj36JD9DxQL3VBgVTtElmjFWO7UUBbY80VqYbpBuPYJwsgvhcFkSX2iTLBAEH9HVrj8iOqXMFuxcgm9E+fl4LgD20foQ93pCDHC9JZWZ20AaRc0hs2LTkxfXVv4TyAgYGhc0x3DC6thLpua7YzgnZ2CgssZIZRzffM0RrR4AX/0FZa1PBpXB1j0uAl0F6U8KJpPYQSaMBplUXApMmy8lSyAMT9Flda9zDe5MAK840XHOeVLQXDLBUEhGyZzpjiPrZaXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7uM88lAknvsLndtk78AUHAkdNyFTaWYiR8zoZ80Gtl8=;
 b=kcqDm+in1CxTBU3VXsZ2bOklescANEAsZNPaxBhor/Ai6dTFdbnm2KVKXxka1FDGQZ/ZU5jT+LHJ8UMQeO10N8RFnuESPzeuwoN+cow1T1z8C38jCIIwVbiwLjVlUcQWavolXNj/vJ6eaJcHe0wcOVm5puFdeW5/6Yveqtjv0DW/R3/Fg4006p7KqWwXkvZ4shWhy6W2V+lwLR1YLyD2EVa0jQKxHf+1mUa+eIGO/rgjJcdMAPHT4RxIkCdZ91ALJWAG25iep7u74nJKqbgmtOwvfe3pqvAUA4ABMMZoZj7q8lJYVqoJvSJfx/xgeulTZ2cgHVZLz22IFSlmyIv71Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB5311.namprd11.prod.outlook.com (2603:10b6:5:392::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.18; Tue, 5 Nov
 2024 22:43:48 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8137.018; Tue, 5 Nov 2024
 22:43:48 +0000
Message-ID: <e5a02919-65d6-4d5f-b09b-7ce227a1b960@intel.com>
Date: Tue, 5 Nov 2024 14:43:46 -0800
User-Agent: Mozilla Thunderbird
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
CC: Yifei Liu <yifei.l.liu@oracle.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
References: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
 <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-2-f556dc9a66ed@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-2-f556dc9a66ed@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB5311:EE_
X-MS-Office365-Filtering-Correlation-Id: a88c4169-8c30-402c-dadb-08dcfdeb502e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R0pKVk9CVWJ4cW5OcVkyd1M2UDdwd1VZTk50cXNMNStFWVFJVURaZWpMWXRh?=
 =?utf-8?B?TUtYaXFvcndrcjYvL1NEekVjSVJBd1JLOVlycVBET3V2cWFWay9NTEdxUUs4?=
 =?utf-8?B?NWNPK2h1cm9hN2c5OGExNTJHL1d1Mm51UFByS2w5V1dSU2hCZWM5YzhSRCtx?=
 =?utf-8?B?VWpwbjA1M042RnBwd3hXd3hMZEhwQkQ3TVRUY3ZsUzZQdHJHcG9ZbTBYQU5y?=
 =?utf-8?B?aW82ZVRRYjQyQUtLcWxjRkMxcFVka29qc1AxUnpLUGJLRnhaV0RPYWFNT1A5?=
 =?utf-8?B?Vi90YnJ0eTJxbi9zcEFXVlZBbnh0Kzh5ekVqQ2VOWjMzZUNwNlNMZlZkS0dz?=
 =?utf-8?B?a2lOMERNV0ZBTkJEMXFlZU9QSndzc2tMRjhOMFdMOXFTcmUvQVJtNE04RUdm?=
 =?utf-8?B?OUdxWXBrMDlkeXFVTGdhWnR0aGxpdk9xcjJ6dDdNcnJGeWJHcmJ0QTAwY2JX?=
 =?utf-8?B?Ry9nbzNhYTFyTWlaQWZPS2d1TWQ2Z2dZVmRrVHN4a2VBRllnd29wYUpkNDlM?=
 =?utf-8?B?VnluaVQyTWszM3Y1WWFaRXVQem5UbkFLUENzQ3VsM0F6QWM1U0ZMSk9GMGNT?=
 =?utf-8?B?NUNadWpZMXd3UTNkam9DSlF6akJBMnNEWElscyt2R0ZUazMxdnVXckVWUEZj?=
 =?utf-8?B?TFN6ZEc1SmZqakFpUkhabWRIQWdlbkNPV0tjYjY5VGF6bVVlTXZvOGloSXlw?=
 =?utf-8?B?ODVJMlVqMERSbGROem5WWlIwK0FnSE1nM09wdUxYRVRxK0Z5N2t3TWV2UUdy?=
 =?utf-8?B?TXBpeFJkd1BrdElNMll3ODEyMjZUVDBkNUF1a1l3K0EySVZsQndTeFhGZGZm?=
 =?utf-8?B?ZW1vOXY2Z0hwQlRYUXVLcEJaY2NxWm1obmx3cTRMUFVjUU42UHhtVTZnQkRj?=
 =?utf-8?B?dUNkVVN3eXBvRE1haHdJT01KQTh1aExaL0hJTjNQbHRVZWhUV0hUNHNFUC93?=
 =?utf-8?B?Qjk4M1dLRGlrdGRmT3lYZThqTzBGNmpEb0Y0TnJ5NUo3QXpYamd0UGFaOFBh?=
 =?utf-8?B?bEZUZHpEZXFsSG5zSzJFN0o1ZXlOWngxL0p3S1VMZHdFQmM5cjQ5NkRJZkRm?=
 =?utf-8?B?NWVIcFJWRVFKNk11dXVGQzI3dUtQbG9FeGp2SmJTcW9kUjNPejhMY1VKZksz?=
 =?utf-8?B?cTdsWW4vY3RaWThmZG56NEZnNmh3RloyUnZQRDdCOS9aK09pT2ZERVhNVmhp?=
 =?utf-8?B?cTJlWm90cWZNMzF5ZGVpVGZJY09BdEsvdWdXYkpjeDY5THJvY0dVdmFtWEdw?=
 =?utf-8?B?K2t5cjFZRnk3ckx6L3ZISlBEaWpVMW01b293RXRNOFIwbTV1TkJrSEFoWW9O?=
 =?utf-8?B?UXFyVDJNVE02aXIrWjhMUzdlN3VhZGMzVEtjZk5KODNiTXpkQ001TUw3YWFU?=
 =?utf-8?B?QkJoMWMvaUtObU9QbE5zSW9TcHpQV2RETGdRb1VoRVVic0tKY1JzdWFVbDZV?=
 =?utf-8?B?NlI2dGJUMXg4akNHTll6RG5ybE85MVlpKzNaMHZpVnpCV0F1N1FKSTUwU25m?=
 =?utf-8?B?em9WVS9rM0srMHdsQVJpaVN2MnVVVnIyZ01kNnJJM2lHTG9OcDlkeW9BSW5S?=
 =?utf-8?B?bjc3Z01KMnRhTjdVcERoNjRFQlFPVk9lVlFIUDV5OHNaYzhPa2hpbCtlQmVj?=
 =?utf-8?B?YnBTK3BWUmorNEhJcXQzcm5ONVlDUCtNTW9VM3paUXlCUHFwUVJTZVM4akVV?=
 =?utf-8?B?anVZM1dkMHpJd2tPVWlUdklzOGZ0ZkRLMWhEeVpSYzk5TEVUK1VOZnc5TVlw?=
 =?utf-8?Q?ICSRJFUJag4Lod5UXqnxMi8oQcOCMT1m1BwZYvs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sm1wRHNLTlFHa3VvQXQrZkJCSGI3VSsra2labHpMWVNUajZ3N3RnTld5WmRu?=
 =?utf-8?B?TTNGNFVlMEVVYTJkVXBtTjNzVkVZZGRlZ0NEbEZTaHpnT3ExNmFRRFdLcWRl?=
 =?utf-8?B?bkJ6SnZhQkJ2V3pkRzNlS1NZZjZwa3FFeUUvcWcrVGh4MG1uSTZNZWpzWDFO?=
 =?utf-8?B?eTlleEtvcmZZemhMNlVQc3FIaGRQUVZyLzhka05LM1ZOc1dHMnY0amt5YTZV?=
 =?utf-8?B?cDkyZmU1MTVJMDFlV0NSNDhsQ0E5NlUxR1dtdStZeWowTkFnbHIvY2ZabmIx?=
 =?utf-8?B?Q2ZlbWtCZE9Gc0FnN1A5MTFiSjh0aG5icjVVVHdMUU5ZbjRpZ0tCTzAyTzJl?=
 =?utf-8?B?RERWMnNqOHFIeHl2LzZkTEtXc3FnRGhoRndSalh5SXZuQjErVGpJcnRTYWxt?=
 =?utf-8?B?aWdON1FnWkVqbUFTa3I2U3l4U2h6YW9nbEJtOEh2c0J5M1FMSUxCVHpKZU80?=
 =?utf-8?B?RW1PZWEyd2FLVGJXSzBpUHBuUVVYRmFmVUJ4bVBmMXA2OFZUeVpTUkpjYlNK?=
 =?utf-8?B?Vno2cEt6MEVJSkluQ0lTRG5lNittNFIwbE1PTU95ZFl2OGZjaU12WloxeGdk?=
 =?utf-8?B?cHdxVm96TStVSFVIOUVyWU5lQlFGN0tEeEdrdi9WbCs1OUJUbjhwUzBmUTlL?=
 =?utf-8?B?OFE4dFl2TWw2UXl1akV1cnZHVTVoc2xydU5scTB3eWp1OUZHMi9yN2l2bnZ1?=
 =?utf-8?B?SlhKMTk0Q3V4NHFNTlltSFVYekRuUWJqZzgzcUdKeHRmK0ZqQ2JwNzluUDhU?=
 =?utf-8?B?bHFZSjhMRHFJSkVVelkzZ2xmYWZSWVZ6bnBaeXFnVU5tdHNUZW1LbUVoNGFJ?=
 =?utf-8?B?d3R5Y0I1bEV0YlFQSDNHYU1iTzY2R0tDUkVOK0QyMHBWdldRVzJlUDdVL2dE?=
 =?utf-8?B?cDk3Y3BlSzIvUHUwVjQ5MkI1SzdSREpySS9WRytGaHpHWGlGdEdBeWhMblND?=
 =?utf-8?B?RWlTWEkxSFRyaU5aYnFhL2NQZ24xNGd5MmZUdHNvd2c4ckYvOXZDUzNrQThH?=
 =?utf-8?B?R3dDdEJ5emdRK1hMUkFGeEkzWHVKNmJaYjg4ZitWVjVhYmRvOGpjdnBnZVZi?=
 =?utf-8?B?KzYvbmVkZ2NBVjhaSzFKNno1TzhBRnQ4akJVZElnS29XOHBLenlUaHVrTTFN?=
 =?utf-8?B?UGV2THduT0lFMzZGcjBoQ1VDZkxzNUNxOHB3VFhIckYxb0xpZUx2NE9YeUNa?=
 =?utf-8?B?Y3Yya2VwSHlqZUlRLzY0ZlI0N3FNQ1dIV3FPZVBFRE5mcGIwWURPampkSk50?=
 =?utf-8?B?dXFwWEQ5R1BEL2xDNEtoS2ROd0tkMXZlekFJNUxLOHQyU1Y0ci9FSHlBeC8w?=
 =?utf-8?B?Ykp0KzZVdjQyTTBidmVKYkJZSnlpYURvaWNkY01pUmJZd1ZBSHBDTllsWkEz?=
 =?utf-8?B?czg3RmZXSG92S2NPRGJybWZISDVtVFA1S3NLbDdqRWxOS1dWY25hZDg2MWI2?=
 =?utf-8?B?QTd0ZTNBYmxXUkVqeDZFM1lHdWlaamdIMUltQmgvOGI1ZTA1TlphWmpyQmt6?=
 =?utf-8?B?NVYwUFduMnJkNjBlRllzSC9SNzBBSFZIckZCVlkvZU5TYlhBVDZrNEtEZW5q?=
 =?utf-8?B?a1l0eEllZTN1OTFYQ0Qxa0x1cUxTZHV0aTBZWWNZSklWQUFEQkJDZ3FIRmdU?=
 =?utf-8?B?UEFlS3NpRENJVFlueFRCa3BYam42bHJ1MTJzbHpLMGFUcTdhUURKZkd0N0tl?=
 =?utf-8?B?bExqbCt3S1laVG9Cb05BNWx4RDBnZGFrWnlqb2FPOFRGSm8rR1lpd2FNbzky?=
 =?utf-8?B?Y0VReDZ2dERXaXV6NHNrMXYyUlFYSEsvTEpWMmRWem91Q3dLVFRRb290L2VP?=
 =?utf-8?B?bmFMa2syajZSc2NyWDBtZVhMRXNNcGVZdUhVZDRSNVhZVUNuczlQTEEwTFpr?=
 =?utf-8?B?N0N6TWZuajBjTjBOL1dlMmZzRE9XNWppQnh0Sm1TQzQ4RXoxdGJrMUpEeVdS?=
 =?utf-8?B?UWVJN3g2RzFwb3lxVEpESmU1dXJwSnVZK0NSYWtjV0hCU0VLWkpMa1hHcWtV?=
 =?utf-8?B?RktWbGxscTUwaVAybnp5U1NoRzMrdGZYYk9PYURmNUdvL0ZwbFkxQWRwQTV5?=
 =?utf-8?B?S0Z4ZDhRaElkT1RYWTk3ODhEVVdQWEtqQXRTditIV0krWGxyVDFXR1loRE92?=
 =?utf-8?B?dWR0bUJEWGsxVGVoS1RxUy9ZOXVVRHQ1WGJYOTFLZUVEK2xmd2hHYzV6ZUpY?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a88c4169-8c30-402c-dadb-08dcfdeb502e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 22:43:48.5507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VylLYOpu+xneGzsjbsLwcQ8cQogBosWKsR/st6EGFgxTYHIaY2vfpRspzsy6EWCzu8AGbD1M3K4ThYPMR9vW2Et0zgYhJ2VUHNEP4mcZoo4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5311
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730846748; x=1762382748;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xEvZfvxBRO/mB/kuNXW4ypY2a8h36JUsRfeV5zSZxxk=;
 b=BhDtBmsP3w08xceuFlbqQ7tjPDyNTrXPkzjJZaejW2jZNRHsfyIyDVRK
 mMuj5yDfgmyJyYC74GmyoDNVE5cs89DDQZhHW3TzzcbRL9IwyATEo13q+
 5AH3CrqmIjQ8mp6voPHPrIaf8c11RY2on/871ivK12vFy9Ji7SdPQIrvG
 5LXQfDYr94GaM1R2tg9mBcmB1/Q3shWtiMNMhMyDvd0FdfP/xIwdBUrQ8
 dwXl+ooLSQiNH6IiU3ji7TaDlsdXu33UuhLHSaorQlL5paSKDJGhqyN/F
 7pCmXU89qNGlLS0U+qk4NG+Zyb12UeqWgVeornjrG9VE99R4BWFinB5Li
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BhDtBmsP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ixgbe: downgrade logging
 of unsupported VF API version to debug
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



On 11/1/2024 4:05 PM, Jacob Keller wrote:
> The ixgbe PF driver logs an info message when a VF attempts to negotiate an
> API version which it does not support:
> 
>   VF 0 requested invalid api version 6
> 
> The ixgbevf driver attempts to load with mailbox API v1.5, which is
> required for best compatibility with other hosts such as the ESX VMWare PF.
> 
> The Linux PF only supports API v1.4, and does not currently have support
> for the v1.5 API.
> 
> The logged message can confuse users, as the v1.5 API is valid, but just
> happens to not currently be supported by the Linux PF.
> 
> Downgrade the info message to a debug message, and fix the language to
> use 'unsupported' instead of 'invalid' to improve message clarity.
> 
> Long term, we should investigate whether the improvements in the v1.5 API
> make sense for the Linux PF, and if so implement them properly. This may
> require yet another API version to resolve issues with negotiating IPSEC
> offload support.
> 
> Reported-by: Yifei Liu <yifei.l.liu@oracle.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Fixes: 339f28964147 ("ixgbevf: Add support for new mailbox communication
between PF and VF")

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_common.h | 2 ++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c  | 2 +-
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
> index 6493abf189de..6639069ad528 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
> @@ -194,6 +194,8 @@ u32 ixgbe_read_reg(struct ixgbe_hw *hw, u32 reg);
>  	dev_err(&adapter->pdev->dev, format, ## arg)
>  #define e_dev_notice(format, arg...) \
>  	dev_notice(&adapter->pdev->dev, format, ## arg)
> +#define e_dbg(msglvl, format, arg...) \
> +	netif_dbg(adapter, msglvl, adapter->netdev, format, ## arg)
>  #define e_info(msglvl, format, arg...) \
>  	netif_info(adapter, msglvl, adapter->netdev, format, ## arg)
>  #define e_err(msglvl, format, arg...) \
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> index e71715f5da22..20415c1238ef 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> @@ -1047,7 +1047,7 @@ static int ixgbe_negotiate_vf_api(struct ixgbe_adapter *adapter,
>  		break;
>  	}
>  
> -	e_info(drv, "VF %d requested invalid api version %u\n", vf, api);
> +	e_dbg(drv, "VF %d requested unsupported api version %u\n", vf, api);
>  
>  	return -1;
>  }
> 

