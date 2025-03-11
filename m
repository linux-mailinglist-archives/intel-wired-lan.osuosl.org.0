Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A852A5BD5E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 11:14:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08A8A80C89;
	Tue, 11 Mar 2025 10:14:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xgsfgChI0BOK; Tue, 11 Mar 2025 10:14:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FDD380C7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741688066;
	bh=IdmkIEJfuq/xb653o9srsE0CQhQWM0IfGe0TLVvSSiA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nMrEOBEx+2OSCtR3KdIuo5wsC/6o7b6VcxriC6Ql5QEjO4Lr96C5tq3Ryi+pRbTph
	 FnO8NJ5Gz8SCVkq+HJxM5qJWhAF42NsC8RzpYMQMY8KqpSacN2dZBBeOgmFvdEz/Uh
	 TOV7pz/2K9RdLh8bs+8pPOSJ8ts7gVFjbgYQ+vCioFckZ7gQ6PbOJCOvyn2OJo/Cyg
	 cAqsB407LkvJMtZiPRti3I7/tOCsYTjF2s8ZVuKqarob/CPSoHi7IJ4Cpv8hm9njhu
	 PSVZIGPVRl+ktlggkYRAKztNgv76Z8WgdPLKR7PU/jqiMfzmUBWtQd29GXScJzjRVq
	 8c1tsZCHp2VAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4FDD380C7A;
	Tue, 11 Mar 2025 10:14:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 458A61DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:14:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 323E960B06
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:14:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZsB6AN24T4qu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 10:14:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4C87260621
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C87260621
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C87260621
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:14:23 +0000 (UTC)
X-CSE-ConnectionGUID: HbbE9CJYQT+aMprfIGjECw==
X-CSE-MsgGUID: hgqCNfgGQFCnaa/J4zdvLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="41971103"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="41971103"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:14:23 -0700
X-CSE-ConnectionGUID: CVk9Tr9+SbWd0I3ZFss+gw==
X-CSE-MsgGUID: T/o3ox7vQjmRo3WBAU6L8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125312402"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:14:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 03:14:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 03:14:22 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 03:14:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yKRYn2sF+tWpEuH/qJH+T6oHt+c2UBFPVyfQgtff4KS62uxh3kkv50Hg8zpRbvhoD3VhlF0iitrvgqz9yFJ7AfASglKVBjrLQ4LIBZ2k6mwOI8aFt0mkd2uBA5xwLEEtbMhY7bgAny4i2obJKDPgWbYS8l1LL0rvBFSFujs2rVDb4UHzB3bcqPpWrXwp9CyytVW5WM2aubwwt5v8DOLIkKZAO94vas6ghW9hkZLkivvbt2FVanLvcdSWf8gA1hscC5JAiCyGOD9xZacMRX7C411DW1OzIqCCgyy7Medmwn+LYsg70N3SLZhXAYYsG/zMU+gEn+h1NYlSIZ3pwM3IvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IdmkIEJfuq/xb653o9srsE0CQhQWM0IfGe0TLVvSSiA=;
 b=m9AQ2Qub8ggJ7nAIVfALbRXCzXpetJGCHFS4jldkRBMz2ci5chNFIhVzBXsPD/QsTzgN3aK+1nLkuTEj0g9aSy/AIV1ZZ9WRdz9yXcXLugUXDJjGQJC08LrnNKrcwloMhXkiYn+r2pztjAdNijtRVK+uo2DD24WZGybRfrnGWdEEdukNL3jEO5664wRTbm3zaG0jPJclrH8f2r/5uOF6Yd+k720UBOkFnrKadc+BOBrm3PCTFRreVj0ZUXYtmk+WY/UF5CQwg5On6TZh2xJoQGMzi4j3tYO7uAPsI4DmTrVhpNEzs/mUSs4UNcUsLsYbjNIAy/QFnX0FG1qs+naxUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ0PR11MB6718.namprd11.prod.outlook.com (2603:10b6:a03:477::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 10:14:19 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 10:14:19 +0000
Message-ID: <9727f77b-907a-49f6-b277-51387c499a6f@intel.com>
Date: Tue, 11 Mar 2025 11:14:13 +0100
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20250306211159.3697-2-przemyslaw.kitszel@intel.com>
 <pcmfqg3b5wg4cyzzjrpw23c6dwan62567vakbgnmto3khbwysk@dloxz3hqifdf>
 <MW3PR11MB4681A62C71659C430281A15680D52@MW3PR11MB4681.namprd11.prod.outlook.com>
 <144fbab5-0cd6-478a-9500-838cd6303a73@intel.com>
 <ogvnbkqy73hjndtr7ncmuzw7ai2w35w2osaadb2w4sel3pyrry@yqk3csgruxth>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <ogvnbkqy73hjndtr7ncmuzw7ai2w35w2osaadb2w4sel3pyrry@yqk3csgruxth>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0007.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ0PR11MB6718:EE_
X-MS-Office365-Filtering-Correlation-Id: 95f897a0-ecaa-4d78-a667-08dd60857c7b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?enl3eUlXS2NVQnhUNzhtdSs0cVFEeTRjcmdmRWtUVDVrSnZodGZ6VEVoRENC?=
 =?utf-8?B?cENWM3JKTzB6ODdDYXJUMU9SN2s2U0ZYSzJIQ09od3U1RHhDVE5nQnBPejls?=
 =?utf-8?B?MTBEWDZuTkZ6V296K1Z4OUpQSnF1bHJFREJhSmJqTGJuSDAycWxXRWM3c2FC?=
 =?utf-8?B?ZXZ0Q0FzZDNmMEZNOW5BNDJSWEw4blIwVmFZZTZQQmc2aHdCS0NPU1haL0lC?=
 =?utf-8?B?R1NoSjZ4QXNTSzQ1TGsxLzZPdWFlL1pCMk10ZkdOeDQzZUN2emhrY0lkdVox?=
 =?utf-8?B?dWFOVFk2aGxPQ3A3ejZXRkhKRU1CNmlOb0pJaTQ4Z3k0WVQ2VGQ5MjdiR0xO?=
 =?utf-8?B?ZmxTdzVwbnFDYk54dGRobkZselozelZYdFlXcXhQV2JULy9mdmxvSGF3QW03?=
 =?utf-8?B?dGlPSGxTeGx5MmhXOVp5QjVLcW1DeWRPcWlKZytEcDVmdWNNa2ZtdlRCMHZN?=
 =?utf-8?B?WjhBeUlxc1hjamtJdTdJdGh4YWoxUWhib2JrWDFFcVMzZTBhb095N0lSUlFZ?=
 =?utf-8?B?bEk2TWc0T1VKREd5aVo4dnZCZ2dHM0psWmk0dG54SzhINTZKZEJBZkZFMDFB?=
 =?utf-8?B?QUFPaUZ3bU1KZWl2R04vcktPUUJKSVMrR0t5VDZQNloyTFlHbHJoNjdsem8z?=
 =?utf-8?B?VDNnSnpFMURBVURnTmNlbm1RK3c2Wlp3WSs5YTlwV3lqeFg1RjB6dEZsazlB?=
 =?utf-8?B?OFU1eFh1S05Wa2RiNHdrdmM2OUVkYlRRdSt5elExTXlKZ21pVjRLUHlHYjhj?=
 =?utf-8?B?cWRtS2xWajZXLzFMREROZFlrRDAvdzZCOEV3YnRSWmE2YmFWelREV0RCUlk3?=
 =?utf-8?B?VW9QWlRPbEdmeDBaL2xnbGx1M2xGYjJUUmlZYjEzZXA3TDRWRU1Nd1ZrNmlW?=
 =?utf-8?B?VDhGdnF0YkxlTWFYZ3N5aUp3SUo0MHA1RXcrZWlidnFHMENhYVI4RGljZkRp?=
 =?utf-8?B?eXlBb2MvRTZFcXBKZWpwaUR5RVJ6bTMzaFdRSnBYTE1FaHJmMFJlRGI1VkNE?=
 =?utf-8?B?MnBLTmt2Tkx4V04zclM4S1l3QzRNWlBaQVdrRkhoWE8vdE9aTy91ekxyNis3?=
 =?utf-8?B?WlBhdlgvczc5MnBNbk9BYnpoZitrbkQrUVJZbzhEVW10WVJSZ0RUenozQ1BT?=
 =?utf-8?B?V1RDeUkzblNvclR3MWFFY0ZYNFZXdFMzNzlsc0lFR2x4NXl5SEx4VlhYdWNi?=
 =?utf-8?B?Qnl2LzU1ZStuamd2MVo4aklCbWxlUUxrR1lwL3d1UTdEL3l6V3VzS1FVMlRj?=
 =?utf-8?B?UG1qN2sxZTI2ZktITllGdDkveDU2TDNoSnZQMHZxd1VmUlNjS1MrSW9abE1V?=
 =?utf-8?B?RWV5VTlsZjR3Q1pSYWc0cGtlUGpab0FWVGh5ZlgrSkZTY0xMRUV4cXcrUFVW?=
 =?utf-8?B?LzBOYnVhdFRVbjhhU3VwUitYMkx1RzVXaFNmaHIyOGhIUnBVR1ZxN2tHbm9G?=
 =?utf-8?B?b3cwQVdRZ3NBdGdJOWwrKzNxWTNKK1VPSXVoSlhRclJRckRwejRDcVZ1TVg2?=
 =?utf-8?B?b0g2OWFQaG93RXpIeHp5ay8zMzc4Q1R0VlJTL2FUZHZRVFozWUdtTjJoczh1?=
 =?utf-8?B?L1k2VExmMXQ5K1drUEpIZ0xnNVFPdWhRbzd5a0NHcTVTZ0VMYXFDUXhmcUFP?=
 =?utf-8?B?Z0lNTW9lc0ZMeW0vQ2NPNk51YVQ4cE9Pem9WMzE0cWZiRytyWGRRWUFxUU5O?=
 =?utf-8?B?bkxaM3Q3Z2E2eHN6M2w5b2VaMEl1UUpOb0tYTU9VYlhhK0RQeEo3ZmNVbmVn?=
 =?utf-8?B?N1cyNVpwNktFaEg1ZmJONWZhRlVXdG9WSFI3RnNWdG5CZ0taak8wRkJDNmJU?=
 =?utf-8?B?N0pvejdJcDBYdTZQWUFuMCtnVThZdTBxZWpoUjU2ckN2WHBHSE03akhLNzRq?=
 =?utf-8?Q?vrisf9RKywWfA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmY2cHRGcWRzTW9PNlR5T2lDczdCa0ZoUE9WY3JQdmdHVXp6cmx5RFYxbVpw?=
 =?utf-8?B?M2VOcEVxQ0JDcHdOb0JpYlBSbFEyOGV0UzhNRFpXTUtjUGIrWTZOM1Bibjl5?=
 =?utf-8?B?VEhYNkdmbkpSdTVIUVRuVWt5eWVrT3YzQVpoNmZIcEh5dDFGNDc4a2FLUjUx?=
 =?utf-8?B?aVNzWitRVFpSQVJIZTUvekppZHh4U2NwUVF2a2h0R3hLMUE5Wkc1dU1Dd0N4?=
 =?utf-8?B?dWhlS2ZteXRzWmVTTU1YR3AvRVQ1MzYvMFFacEw1MVVWbkR5R0FKRmkzdmow?=
 =?utf-8?B?MjJQNkVkNFJzcEdneDErazUvMXJFVXRQQXVaOXhDdHhkTk56bWhrQ3dVRjgx?=
 =?utf-8?B?SjVNNXF1N21OQmtYdk5UY0lXZUUrenhTcjVVWit2SFpwS1R5S1YyelhBTkRY?=
 =?utf-8?B?d1FuYTBGVUcvbnBFbDBEQjlUOU1QTExmNExLdUZEMGZvWjJnNGZnZWZvalEz?=
 =?utf-8?B?RzVzVmttaStkZEVMcmphY1MrR0t0VU00eFEzWFEzUnpkaDFpZUhFMkFGVXJD?=
 =?utf-8?B?cVp3cWNNRmwxK0hIUFB0a2pIaE1YRU9zRXNwckxwK0xsY2k0QWVzM2RscGlr?=
 =?utf-8?B?d3pJODZ3dm9wUWdlL0dnMXdHR0xBQTZmczdoT3dQRnoxZkN5TU9mdDFpVW80?=
 =?utf-8?B?ZFp6ejhBRS9lMjFLRC83Q05vU3d3YmpWRTQrTW9GMFVkK2s4M2NxNnZtSzBo?=
 =?utf-8?B?dlZrQTQwVU8ybVhGTEQ1NGs4eW5oRlJrdDBXUm1Eb2dJa1JiQkE0NkU5T1B2?=
 =?utf-8?B?S0Z0ZjlVK3gxUjd1a09XL1gxeTQ1SzBwVFhxYXB0TkpDQ0tRTEJqbnB0cDZu?=
 =?utf-8?B?RklpMmhIdmswUndMcVNYNVBOK2o0MExjQlkzQ0YyZVlWdThzWitiTEhYdEpK?=
 =?utf-8?B?RkNCNVBwdlRESXZNWmlLbkwvKzB3ZFJWSENFMXZ3TTBSNWtlMkpZZVZlcmhJ?=
 =?utf-8?B?MWkzRC8wR2I4Qk96WWdSNE5wSkRCZXNUOEpBNWFsUHVubUlCMitpbUNjY2JG?=
 =?utf-8?B?Qy9mVHB2QklITG9VY3g5QkdjREZra3NuUW9JQTFRYTNoWjh2YTNKRUVFQklq?=
 =?utf-8?B?S0dEMkM5eG1NcW0ydkZjWXFBL3NLY1hCSkF6SmRjMnVFb0trZkJYaURhQlV2?=
 =?utf-8?B?NTgwSVVUZVVDN2x0bEtoRSt0alYyQncvdmJYOUxidkZ1QzR1SE5xT1dUemI3?=
 =?utf-8?B?LzRHbW5lTkJLRWx2TkVwUzNqdnlYemNvWWkwRFNqRzl6M0ppV2FiVGRubTFw?=
 =?utf-8?B?d29PNjljR1lyNXBOU0UrU1pkaFR5dmFNdDlOL3JiOXVjaXFHTy80YWRBTUVx?=
 =?utf-8?B?UEJ4Y29DODNlMWtvWlIyd0RGM3Y1anBTb2FhVkZSZDNSblRiMDJFRzFFOFhS?=
 =?utf-8?B?Tm5YUFd4QXBUdXlrZXp1TWtCdnFpOW9laklNQi9EbnIxUVpaNDVzUEpsMno4?=
 =?utf-8?B?VXZ0b2pZSDYyYmovQVJsVWpheGtZVVR2b2t5K1d3NWFpSG1RK2FQSytaMkVV?=
 =?utf-8?B?Q0luQmNrYi9EU2F5UGwyT2NXME5WRklMY2RvTWVwNW92Mncra2NpWHpyV1cr?=
 =?utf-8?B?bTk0WUF3b1BPWVkrOFRMamVHOHJ3dExPbDNYcTd2RnptNXZWMU9tWlpnZHht?=
 =?utf-8?B?UGdQSGpkenM1UUlHSUU4US9UTHRDNjlWSTZCUVJVbitIQ2dXelhEUVl4S2xW?=
 =?utf-8?B?UUhtTGNPL0t6RVpDZGtySzFBWGJoandXRG1qVlh1d3JEZllzbXRwc0szeTdN?=
 =?utf-8?B?STEwSmh1V21ZWFc1NEs2WmZNN1FWcy82UDM2ejFyREhsLzg0YW1BVUxvZjBV?=
 =?utf-8?B?Z1lkUkZkU1FlSnFkcEl4YzMxT1oydW9QTmJlRmZ3T2FCUkpFT0VQTW5lVkgx?=
 =?utf-8?B?S0phMnM3cVVqZmYzck9PRGY5OXVycGRjV1FuN05zVlBpWlpoRmFZV3lWWG5j?=
 =?utf-8?B?dFBzNUFYMzlmRmJPUXBnQmRiNUpmZFVFQ0pXbUFjUEdQbkMxWTZzTTJmb3Bu?=
 =?utf-8?B?VTFQYnNCeXpNWndUNjBTMXcrNzNBUlg1M0JmMnYyQk9JRm1uUGp0NkFPT3N2?=
 =?utf-8?B?TlFxMWpzb0lGZGY1Sjg0QU95SFh0ZCtvaTJ1WnpJb3FXajM1bzZTczAxWWJP?=
 =?utf-8?B?Z0JERFNtU0I5UXFRK014RkRwTzdQaElTOFhIU0x5QmIxRU9SdWRlTlBNRGw4?=
 =?utf-8?B?Q2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95f897a0-ecaa-4d78-a667-08dd60857c7b
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 10:14:19.3053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nyAk33tCWrczv3JEBZbm+tZAw3FsDiBxG+fDRd+xaoVQEIV963R2tGj7i5UKfZdbxtp8oN60hmp/72wAlbt9itObgLjiYWoDny4SgTlCCMQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6718
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741688063; x=1773224063;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qWj/ttsZOWIYzOjg2lf+eBqCj/2jnmdblAZ+2Rzu4Rw=;
 b=Tf5JpS9hamQxEJ97xVAIlz8zb9YFL1k+FsSoe8s4ohcmF7nfskd9X3ci
 0iWrk+t5Uste02kakRhrR9OYlRXZDyqJJM4+OrT8JYdSmLIWCcv9nu9h/
 AHe9FSZq1UYklTGcXoiOfsTTsxKxY3J8RdSHoxTycrMLzy/Eovf38DH/i
 kdUbnv90KJHTuwbyH90RhNUyd+aZYARuJyliLdMQJtMXgEc/Ybt2Pto8X
 MrtBgSodkvzPUYSg86rMNyLycBPhQEMPpwleDThMGAumuvli4QxVIlSK3
 A/PnoAhIApHsUa8q/HDDoHj6vYCsdNAT8EKuJcwjuyS+8bW7N7RdAWi5B
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tf5JpS9h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use DSN instead of PCI
 BDF for ice_adapter index
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/10/25 13:23, Jiri Pirko wrote:
> Mon, Mar 10, 2025 at 09:40:16AM +0100, przemyslaw.kitszel@intel.com wrote:
>>> Subject: Re: [PATCH iwl-next] ice: use DSN instead of PCI BDF for ice_adapter index
>>
>> regarding -net vs -next, no one have complained that this bug hurts
> 
> Wait, so we are now waiting for someone to hit the bug and complain,
> before we do fix? Does not make any sense to me.

no one is waiting for a fix, but it could affect users with weird NVM
images, so -next seems reasonable

> 
> 
>>
>>>> +	return (unsigned long)pci_get_dsn(pdev);
>>>
>>>> How do you ensure there is no xarray index collision then you cut the number like this?
>>
>> The reduction occurs only on "32b" systems, which are unlikely to have
>> this device. And any mixing of the upper and lower 4B part still could
>> collide.
> 
> Passtrough to 32 bit qemu machine? Even how unlikely is that, you are
> risking a user to hit a bug for newly introduced code without good
> reason. Why?

I will combine the two, by simple xor

> 
> 
>>
>>>
>>> It is also probably necessary to check if all devices supported by the driver have DSN capability enabled.
>>
>> I will double check on the SoC you have in mind.

IMO an NVM issue, will handle this offline
