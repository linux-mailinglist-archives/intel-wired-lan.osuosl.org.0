Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA29AE6D17
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 18:57:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAF8260E80;
	Tue, 24 Jun 2025 16:57:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qJmA6RlehYM5; Tue, 24 Jun 2025 16:57:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BB1F60B33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750784271;
	bh=E25ygOc0qaBxCzOSumLPTYbixMtOgOeOH09S7cMKRc4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g7gMqDtYinrN+cy3AwiHGwP9/qDUkFJBMg/qfTE71oMLjOwRrmoQr5zEbHX37FNAD
	 W0kTvVn5gQFu5pueF2Y707OZbena7ml/8aA2o3wyY1o3B1v2kic9Syo5PNpI02rKYB
	 DLctrKNTnZgufIcrzx2D+WX/fqtErrmHdMMTCU6/1eSnMp9tOQX4C64IFEs7lvS/Ri
	 eEFjzBt7PuGEyMKeV8+CEsfsrQouhXVWrWjPe+dxe9i4+kbTCbOebRV/Fn73z2fint
	 PVEo3EOTp8WWC51qf+n6vteChQDAlJbQqucWqpo5s/8gMVbkkIbl/6i+d21g48XPjJ
	 CPySSGc5yCNJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BB1F60B33;
	Tue, 24 Jun 2025 16:57:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 78870154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:57:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A98840D61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:57:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CbIUOl9M2f7M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 16:57:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B28B640D75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B28B640D75
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B28B640D75
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:57:48 +0000 (UTC)
X-CSE-ConnectionGUID: 4BCuSzmOQi+Gwl/tpIv9pQ==
X-CSE-MsgGUID: iycvI5TET86m6oWBpOVgeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="64466344"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="64466344"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:57:48 -0700
X-CSE-ConnectionGUID: ctEVdjNqTZGIQ/WooxnCYQ==
X-CSE-MsgGUID: XLx9OtLhTX603vmlxsLR4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="157459503"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:57:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 09:57:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 24 Jun 2025 09:57:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.59)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 09:57:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bx9sVdYNadziDW/QIvRW/1JTeZfGYU9x5pzgSCsghYL9jXqR0xEPCRhdpQ6R3eUfAfNMCspG4YGtL4nUMKhzB2QxevaW8YqEgfMmqFFJDInGnxJM7YbHMhnS5Khy1FPcLbk7jECPrm4hi2v863IFyIY0Gc/A9DjRBtQ+BqZYBY9GQBO/J+YhAZnd+3QwMUxnXSXiqdVVwtjfsZSDSrMLVxBsbooLVHfXDR1tpd/3ZaUjHTFvU3/7Br3+KGOe2F8N+LpWoPmWbdT6ZMZnbABGlDR7oynjqEnOp8srihym65S3VJCntzBPNCR3TT7+k8do7FZtDQyGtsGl8MgeCHP9gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E25ygOc0qaBxCzOSumLPTYbixMtOgOeOH09S7cMKRc4=;
 b=YcRkLndrFhTP+lPmMTxQISvyS4b8AiCJE8yoAZkNIQCsmGHTtfIqcaJmINC3LQ7XHDogM4ipASz2zbI2lbGZ5orDdL/6SPukbVL+UugTUv2zRXOmGnZ1l4Hyq7U1/GxrL9sosdm8DH2U3otpa2Hz7W06lr0MJYjjSIQkNqCKTuNXnAObQyALcOhANMjFePG7AI+6wtMKtull5CFEcxGtf60W5jJRNEh8bQRZs9Bgdtx8Amhe2mgEGpczkA9f7uCJNwv9qa+GMhZeBE8ykXO6l9I644PJnjY43QDbeTRqoGJb6nMPgNZa7083vW223+8REZiPQ6pHjdNxGNjjzKkz+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA3PR11MB7581.namprd11.prod.outlook.com (2603:10b6:806:31b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.25; Tue, 24 Jun
 2025 16:57:28 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8857.026; Tue, 24 Jun 2025
 16:57:28 +0000
Message-ID: <2cc1a2ee-25f9-4201-8a17-c1280f618c90@intel.com>
Date: Tue, 24 Jun 2025 09:57:25 -0700
User-Agent: Mozilla Thunderbird
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
CC: Anthony Nguyen <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 Karol Kolacinski <karol.kolacinski@intel.com>, Milena Olech
 <milena.olech@intel.com>, Michal Kubiak <michal.kubiak@intel.com>
References: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0238.namprd03.prod.outlook.com
 (2603:10b6:303:b9::33) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA3PR11MB7581:EE_
X-MS-Office365-Filtering-Correlation-Id: 01fbd3ad-42c8-4dcb-4f40-08ddb340336d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UythaEIrQm16TzRSNnBVUmhkYmNiaHZ5cFZpenh6b2JoWlh6alhKUHBta3ZT?=
 =?utf-8?B?ekRyNzhhNkU5aTBwdVRJTmJNVHc4UkVaWkplS1c4UXUvYnRaSHlvMjNhUFQ2?=
 =?utf-8?B?dVo2OVdxTGZnRTVwSlVkcjFNQW85STA4QVlUNVVPM0p5aFQzNzlLb1NKbjNW?=
 =?utf-8?B?M0dwN3VrU2JCWG1hTnd5c2FEZ1RSSjV5ZTBuNlplSmFUOWZmcWtSck56Z2VR?=
 =?utf-8?B?YU0zY0lFdHVtUVN4b0RtcWhXMjVhZTJFbWMrZWVQUmYyWVplQzVwV1ZsMmRw?=
 =?utf-8?B?K3NYQnlWdFdnN0dKSjZpMkZFbTdLcjFScC9aaXN0ZHlKTVorU1dadlRYQXhJ?=
 =?utf-8?B?RWNvdDBNUGxFV0tOL2VvaTVKampOcGhPaUk0WlA5dDlHd1FCV25pVmlOSU8r?=
 =?utf-8?B?NWNHSWJmNXlJNVFDN0xzUG5nUTRsYnpoU1FPdzlwZ0xmOUlKYVRHa0RpR054?=
 =?utf-8?B?czY5UzRVaGtqdkVCajZQdUVjRkxlQlEyWnovUitoMUZ2RnErWXE4QWMwR0xY?=
 =?utf-8?B?YUJkMXBJeXBoNDRwM2NRUmJTdkI4QTlhVUV1UWJyaTQzbTRyQWtCMC9XZkJn?=
 =?utf-8?B?Z01WS1VSS282WThOdkJBQTV0YnBwZGY0RHJDUm13RUU3eHpyOG9uZEJZQ3hj?=
 =?utf-8?B?QTVCUXViWDFtdUc0UWZvcUp4d0EreWNPbHRoekttVmc4Y0lqOXdhc3Z6ekZq?=
 =?utf-8?B?elJUb2NqeVkxdjZlam1BRVY2MkkvSkdTUlBLemVBZ2FuSHlRUjlxSlg5eDdT?=
 =?utf-8?B?VVZkS3lPUVd4OE9vZ1VoSmFCL2pqWENTckNJaE9sYmVFYXJUSmVhWFc2elpJ?=
 =?utf-8?B?TWxxOXVaVG41NFJjRGFCNGJsYWMwTWZzZmNEZlMva0NRMnZqSmVuVWtQelYv?=
 =?utf-8?B?NmNMK2I0NFFoUmlFYmRjRldWYTc4L1cwN083by84ZnljbHo1UEZKejJaTmpT?=
 =?utf-8?B?QWt0SUtwVnZ1SlRJN0pEVXZncDlOV1NNUVFnQVpsT3J4V0dXU1RYck1sS2t0?=
 =?utf-8?B?Tkl6Y20yODhnRm1WcTJ1TUxmb3F0S2NqYnZFMU1CZUYrZWo4Y3V6d0R1K2h3?=
 =?utf-8?B?TmkxQ3BFeHZxZUhML1pGL3RzMEFoeDd3L3RVMW1KS21hNitKMk1KalBRTDds?=
 =?utf-8?B?bjFQUlN1YUlsVktnTHdCWVN5cU5VbUJyd3hPVHE5WEhTdUlqamh0TS9MMkFn?=
 =?utf-8?B?REZFeG8va2I3MG9LWFVLcEZyUHJEQXZJMk10cEJyZjN3V21sZjJ0aHNReUhW?=
 =?utf-8?B?NEJIYVowcnE4Y2dVVElhb0JnVDlxQlRlNDFmRGJQZUo3cUUxc21VVU9IcW1P?=
 =?utf-8?B?L2crSzd6aTA0MkdPdFBUa24xWGN6ZmRTZ0lGL2tUVjh5aXlObk5DZ2JFOGNQ?=
 =?utf-8?B?VEx3NHEzT2tiRXdneDh3MUhXMElTTHBCVDFQb29QVTVzY1RvSmtSWDE3NDVw?=
 =?utf-8?B?Q3pSVnFOYUZIZ1FOcUJzaGdhVjRQanRtakRLaU1DcFRRSDB2NDNVQkg1S0dP?=
 =?utf-8?B?b2RvYk1CMDhUOVg0eGVCcTdQN0RVbVdBdWVuTllRcXdVUVlTL0ZKRjNmd1I1?=
 =?utf-8?B?ZkF1cmZ2dktyZ2VQeE82eFFzL2xuREE1WXRnOUlsOFI1cjBSZUt4Q0tBOXhH?=
 =?utf-8?B?NmZIby9qamxmWHo3bk1mYmIyZGpjWERqSEYyZXFEci9rcnNibE8wdmI5dVUv?=
 =?utf-8?B?Q2tmaTc2bE9vTm4vYXVnbWpvdTZVTENBc1cvQktYNjZjRUpmeVk0RWJRcW9a?=
 =?utf-8?B?UklxU0RsQ1RnM0lhTHFpdlprMTM0aHpGeThsQ29zYkxpaWpyblA4d3lwd3VT?=
 =?utf-8?B?SENBZXZiT2JRM2NaQVlmbmY1K3VHVnpiRVBoOGVzNWQvUGQ0NDBIRmdVbkFr?=
 =?utf-8?B?eDhCcU84bDI1bEpmd3BvRStjNzN0K0NmRnVaRG1YUkduSW5xemZDWSthU0Rr?=
 =?utf-8?Q?6IV7gAcZns0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STE0TisxRGRweW9valdyR0VBUllmZ29LdFVBYUczVDJuMUh4WC8xazdkSXB5?=
 =?utf-8?B?WEFDWXA5N1dDQ2tla2E5V2VQNXZ6c3drMVc3TWI3MDZZS0htc2c3b1lUUEFR?=
 =?utf-8?B?NytmV3N4eVRQTEp1Y1E0cmJWMGh4WVFiY0VydVVkWmhKRlNRckNXa2pXUVJp?=
 =?utf-8?B?QUx6N09HcDRWQWI4VjA2VS9WeXRYVENDdWdDd2xJZTJnQ0Yvb0hXYXVYZmdt?=
 =?utf-8?B?dEVjT2lqUXRQNENNanVBbGRHT05NaEVIellhMUlKWmVJTWdYZWdmZTFCY1RG?=
 =?utf-8?B?TlhVckY1WWZ2QzIwVzI5elEzblZPMTlQOGhJbU5DTTBhUTJXa3VyNzJBYU1H?=
 =?utf-8?B?bzRqaEdvMnZXNk9UM2Q4UEVYblo3WmxFWUNXUzJZMG9zOVZZR2syWXRMSW9Y?=
 =?utf-8?B?SDJkc2pwYUFNbk1nM0dPYnBKMmdHaHBMemZyYmxleWc0Q3BJcHhmQiswanlz?=
 =?utf-8?B?ODZtR3FVOGh5OGNMRHlsNkhNc1Z5L25VOFVSang0UjVlVGlrTVRFNkJmOFZO?=
 =?utf-8?B?VVlpR2FnQk4zUm9jYzNZcHdHS2FQWi9JaUdCYTF3NTFtK2VyU2k5SEljejdm?=
 =?utf-8?B?aTg3U3QrcUVVWnNnb1ZXV3pMeC9KYkZLSlR3TVdzRXlIR0dLeVV3TjR3d1Bx?=
 =?utf-8?B?OExVcm9hME1iUE5NQWJHOTJscjZxUkpzR1VSdi9yendZVElGVXdRZklERnY5?=
 =?utf-8?B?R2Q0NjlCN0hGbmgrWEg4aXVhWElKdFBaeHZ0NmRUWDNPVFFHZXRQUE45Sm42?=
 =?utf-8?B?alVDTDhJRVcyRTdHY3B1dHVnU1VtdzdyR0psc0xMWEcwbHc2em1BTUZNRmVp?=
 =?utf-8?B?NHBGNnNFYUdjZjNRR3N5dXVGekJzZXVGQm1uYzQ4clFFVGs1RW55TDJyVzVK?=
 =?utf-8?B?VGdWK0V6ZDFENUViTGtHcjlnM3MyY2lTcGlyY05kc01IbWlHQU9XNmVkU2xF?=
 =?utf-8?B?NWtqMGljOU5teUdiTlkzWkprUDVDbGpqYUcyaW55YkRNenpOSGdwRHg1aVZz?=
 =?utf-8?B?ck5qRVlkeW5jWHBtS0JmUGlhbkJDOWNlYzhOTTI3SVI4SnkyOCtOVXhEQ1pM?=
 =?utf-8?B?MWhHdkFEUWZkR0tiWjkwWlhEUjFIdzlsRm92VXk0Z01Ycmp4eTFKMmpPV2ZK?=
 =?utf-8?B?SCs1SWNFRjVDcjNCaTJWM0RrSXhLeDh2UytLbGhWeHI2WDkzZHp2b0ZvK3V3?=
 =?utf-8?B?bDBDTGRHb0Y4aThKNW5zOGZKUWwyY1ZRY2FmZklzbE9hbjVtck1OK2lVUlg1?=
 =?utf-8?B?dmpKTDVycloyNUZQSHd6OXk4NHJzdWpNbkVNMldGZlg1U1NUSWgwQ2VVL3Rp?=
 =?utf-8?B?OEYxMDYrQTR2aWQwLzdZQ3FnbE1JN1pibnNHanZkUStXZ1VOR1FRaHpMZEx1?=
 =?utf-8?B?SUdrclhMUFpIVDNuQ2hHanRBdEhQdUp6N0VLRUIvVmlORExtM3RkOVovOWFp?=
 =?utf-8?B?Zzg1bSs1RHZLdmhBSG5UQVp2cCthQUtiU0taTlU1eTJPeE4xSnFKQVJWUnlM?=
 =?utf-8?B?bEVHVFh0RkhwNzdaRGV5Q1RIS2JRejJMOVlHRjh2aVZpRHV5TVoxMzZza3V2?=
 =?utf-8?B?ZVNjYXBGWU5VenhNb2dmREE1V3RMTXZsTnJ1WkhaMHNYUDJPSmxrV0txNWRi?=
 =?utf-8?B?UlQ4L3krNjB1elc0b3E3dkpiSXJoNVhaa01ScHRzQ09xU25kMGhJTjVaaUtB?=
 =?utf-8?B?cEYwbWdzK3JmcG03clgzMjhzVVU1YXRVeCtiUE5WVjhvY3haYmFza3JnOFBp?=
 =?utf-8?B?R3lCcjlLQW5ObHA3NjRjd1h5YjlldVdYVHBpVEJ4alZGTEJwOHFwZWdPc0VT?=
 =?utf-8?B?M3gycWFlRWY0ZmY4YlhpNVppT1BmYSs0VVlMR2RpWHdtZGRyM3E5bWVBV2Nr?=
 =?utf-8?B?K09DbE5nYXpmWTlXWTJnbjN2bU9OU2tSVFU0NDY1WFcxV1dKVWZVNm5IQm5E?=
 =?utf-8?B?N3E1L3E0dkltek1BRGprQTZFV0NDOTB5Umt2RWxvT3hkRXBxWDBLc092SDZT?=
 =?utf-8?B?T2lXbU1HZjZvUDBZdmlBbVdnbE1kYjlHblVXZGcwZllGVVZEZ1VUSzJTU3lF?=
 =?utf-8?B?MWp3b0EzZWNUemhPOWRQa1pHd2lWSTkvelRETENyU25ZVmRnZ01Kci9RdWhO?=
 =?utf-8?B?V1k1NlpkVHpHeTRFRHVWbDZqeFdPaW1PM3dEOUlDdHdLajV0Q2JpaXJGS2Ez?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01fbd3ad-42c8-4dcb-4f40-08ddb340336d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2025 16:57:28.0351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SyL/HVJQNEpD63QArqB4Y0+/GFIUnDN5F6VZtrRuBVd/YIyl10462glFXT358E/bcOVht1lRY1tHVrebPtXdv4Lu/n1RSUIp02yUvVdSkWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7581
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750784269; x=1782320269;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=73+DTwAoN88ZBJZtA3K1k49yyqpHReYS+AqzAj1J/fY=;
 b=hLlxrVFoWuwVNfnqGZGqTY3jwTrBLtBBEklZeeQtwAgNjcOj8yXXyY4y
 OVnoy9J99aAGMlshm1A7Nym1gCBdyuHHYTeRmh9Mi232OqbRrXpIoHA1r
 Vm1vAfLHd1/Q62IcY6GNW2IXZX/ycNWqr81OO+MiWWa/7979tkKhu6vHw
 Qa+xI8MOI+gSH6/kbfaN2oULdTxczd4hsNr7pznKdXqOAip3GQPp3U38N
 SLD6IpBeCdLYwNp35vfDIEunWg69qZVO/CNUH2CBfGEWKbPzKy73BFcrA
 g0HTBBf5nvjFNpJQPoEeMP3Q+wtxBTufiuln8fSKdnEMagpmSthP8dTYh
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hLlxrVFo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 0/8] ice: Separate TSPLL from PTP and
 cleanup
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



On 6/23/2025 5:29 PM, Jacob Keller wrote:
> This is the remaining 8 patches from the previous submission. I've rebased
> them on top of what Jakub pulled and deleted the control-flow macros.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Jacob Keller (3):
>       ice: clear time_sync_en field for E825-C during reprogramming
>       ice: read TSPLL registers again before reporting status
>       ice: default to TIME_REF instead of TXCO on E825-C
> 
> Karol Kolacinski (5):
>       ice: use bitfields instead of unions for CGU regs
>       ice: add multiple TSPLL helpers
>       ice: wait before enabling TSPLL
>       ice: fall back to TCXO on TSPLL lock fail
>       ice: move TSPLL init calls to ice_ptp.c
> 
>  drivers/net/ethernet/intel/ice/ice_common.h | 212 +++-----------
>  drivers/net/ethernet/intel/ice/ice_common.c |   2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  11 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  22 +-
>  drivers/net/ethernet/intel/ice/ice_tspll.c  | 425 ++++++++++++++++++----------
>  5 files changed, 315 insertions(+), 357 deletions(-)
> ---
> base-commit: 96c16c59b705d02c29f6bef54858b5da78c3fb13
> change-id: 20250417-kk-tspll-improvements-alignment-2cb078adf96
> 
> Best regards,

Tony found a couple of nits in the earlier patches. My attempt at
mechanically removing the _OR_DIE macros ended up with a couple patches
inserting and then a later patch converting them back to the non-macro
form. I think he's working on fixing those and the ones applied will
have this issue resolved. Shows what I get for not doing patch-by-patch
testing and assuming I'd get merge conflicts for all of them...
