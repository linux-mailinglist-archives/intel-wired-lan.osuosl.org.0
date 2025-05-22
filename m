Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9060DAC0E21
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:31:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3095F61449;
	Thu, 22 May 2025 14:30:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CiNrpIF35zkB; Thu, 22 May 2025 14:30:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96D726141B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747924255;
	bh=RWIZnEvaeBBhZPufOigjgQ/wg4uJ1kpOyJz6j5kOxEw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YdqzCj8819p/PcpwYKmy/uhp5w8WHDPY1YJWos0M2I9SE/zTev2HGpjLYZxgmTeXs
	 nir9VM++abFWUuJhSMV4f4zcc7iamE8jIXnTuahLw4GiH3DLieX5OMB12a1wU9TrLE
	 CnwmSYyFR9XvcaMLB9h4oIgYDN2e6AAwuKE94XpuK8U44XRnwXhHOV3Vf4Ob8ulcZH
	 qhMB7phf4z7MWMZKxtEzT8oSVg4GTS4g/F8NhQDGZlZIttiaDdvsM12xJrHK0kNtZB
	 S+wO2gSawM/e2Nu6hqHV/Fylex/yFCYlQ+UqBIMj3l3XNynxVl0H0cLcsRfYeEEjfH
	 T+OJFDitZxuZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96D726141B;
	Thu, 22 May 2025 14:30:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 95F83BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:30:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 87F6C40BBF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:30:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rbz75eySlg71 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:30:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D3CDD40B44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3CDD40B44
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3CDD40B44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:30:53 +0000 (UTC)
X-CSE-ConnectionGUID: V/VqVdJqRjyBXaIFo/E9hg==
X-CSE-MsgGUID: AVWYQyC1S3GJQJr8YK7bgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="49948416"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="49948416"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:30:53 -0700
X-CSE-ConnectionGUID: BkOJe59yQYy5hIjl9jMM2Q==
X-CSE-MsgGUID: zkfOTp8XQiutqMyYv5AHMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="140434291"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:30:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:30:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:30:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:30:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bd31G5XKxz0vMntPwT6+MIt17AbUoFhc3EyBlBlIqmdSBPBUmZXx60FExf6qgkfo1iVc8icfCot7hk03f5p928N0ilecujFayxL2XS+MCMvrp1ipOpt09YLLL4hDL3LxhI9nCcXP12jFObbwZJ1KcA1s3lbtvpxym3ehCoW4QADvgTTie4Gbz7t+PYtjCHtBQ7FaJWTtRYgtTXCfPvq3A3r7jo5PmV3pc5N09oBSQgxq3jw3/0jyK7ZugmTBMdYJOpEHzIL/AC3n1tHtOj+CTO/RnZcvUV5Y6MKzaB2HzMctpKxSpZBcQaBDE+IGKPCC8Jec2j7AUWTW5Zh8vRtfqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RWIZnEvaeBBhZPufOigjgQ/wg4uJ1kpOyJz6j5kOxEw=;
 b=wf/xUhwq+IgC/FW9H6nzqlojUyvEG0K+kgun8Lq5Td24c8LIZu3bw3UuN4rwYEPIisuTo7gn9SCSWWuIgskDRRmxQ9OxhkqHWTF8Suqp4w/iZt0shHhfHhxBOw27HZbVAfKlpvHjgehkzQ905kI7oo39py9Q38idWhgplI8exzXjP0IlmbEVOsmKeUFcVr2/INtWpYYP6WeRsjul/h0Iu4kr5VYAzsYjrvQWFiMIQJ76oiYCJ219k4QKTBHBeAwsNhkG/s1HZ9jgDp05zNHZzkBlKQky48CEiR3SObd/zh5yL5d1JI3MSdYDhPBseq8gMIR3Bi5fX/Wev/g9M1rYDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH3PPF066A3CD44.namprd11.prod.outlook.com (2603:10b6:518:1::d07)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.20; Thu, 22 May
 2025 14:30:45 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:30:45 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4 10/15] ice: use bitfields instead of
 unions for CGU regs
Thread-Index: AQHbuuwui8bBxqwdyEKum9CbGdkkPLPe1fxg
Date: Thu, 22 May 2025 14:30:45 +0000
Message-ID: <IA1PR11MB6241D8A0F873C7E7D868A79E8B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-10-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-10-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH3PPF066A3CD44:EE_
x-ms-office365-filtering-correlation-id: 5c2a7519-e740-4797-192b-08dd993d3d49
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cTVVSUdOQmd4aS84akFqM0lmV3haUU9ZOXhHdTJ2NjNTckpiZ1dZREprc3J5?=
 =?utf-8?B?RlA1VkRwV3dEME1nN2dGNUJ2ZDhVbFZxeFlCSkVHNjQyOFNOcnhnaFNiVGhN?=
 =?utf-8?B?OXNsQ1BHcmI5Z0x5RzN2bU9zOCtHN0xwdkdXb2U2RnRSc2ZObWNZZVkxSEdr?=
 =?utf-8?B?TXZBcDlkaEN2c1hHN3RSbWwxUmF6MVVXNjQwNS9SNzJBbGFNMHdQWGFURHA2?=
 =?utf-8?B?TUZSbUEzN3NiZVZkdXJRdHJVUUdyc2VkRGtSdUJuUktqalFmdWFiUkE5Y2F1?=
 =?utf-8?B?dDBxUFJiMjJ1b0hodjNLb0EwRmQra1l2dy9QWm84SnNmdmZHY3JXY2ozazEv?=
 =?utf-8?B?bWVTWGg2MmtZRUZrdTJTMHB2Tmcxb2F3SHhnRXJyalh0NW9YZUlPdXZSM1VS?=
 =?utf-8?B?YWxMZ2t4WHFMcUY5MkNKU0hOMGllNkkxYlNKZFFZOUVna0FXb1RNYitMMlRG?=
 =?utf-8?B?OVZjSlo4WFVocGFwa21FUFcvYmpWYVF2SFNweG5KeCtVZmRseTRESHVjWXFP?=
 =?utf-8?B?UGZ3TlRRWTgrNTA1L0Z6WnBkQmNSWHRoMUlndisxdWljWU5UOFBxQjRvOFNk?=
 =?utf-8?B?WVRFOXJpR3ZQYTJ3eXhSZXVBNTA3K0x0dXBHcGlGSDZaa25zUVhkUU1HcFEv?=
 =?utf-8?B?OWpGZUM2Nmt2V1RuL1htWE5YVGN4Ykl4d1RVRGkzRkQ1WHE3QnAyNHJxV0Mr?=
 =?utf-8?B?S0xXdEJFUDZST25pTXBDTGtia3JCV28xR0l2ejA0cjB6ZXlaZzhodUNyRThV?=
 =?utf-8?B?bzd6YlEwOTAwcmlTRzFFRW1RZGlpKy9sNk0rb0JuRVFBTzBXblRZd1B2Z3dr?=
 =?utf-8?B?Q3ZKRTFvRXJpRTh2YTZhMUVhYXY1Rit4UWJJMDZ2dUQ3NjRCdnNHNFU2S3dM?=
 =?utf-8?B?ZmdZd1ZJTUE5UFZYemtvR3ArOWcwWkxueFRHZGFMSitRT3dnMWh5b1psQk1E?=
 =?utf-8?B?UjQxQmhlS1lPTEszc2RhUjl6R2ExdjZ3RmxFazk1ZHFHZFZFN2o3cXAremlD?=
 =?utf-8?B?TmhsQXBzdGJmcnhNVjZERWtEUWJyZ0xrenpoNGh0T2ZLdFkzdHdVR1ljbVlt?=
 =?utf-8?B?a2w5ejU0VVdwcXFRNXRqNlNxWHh2NCtmUUsrcWg4VVI4QStxbDROSnZBeHl1?=
 =?utf-8?B?dUlBa0k0ME0vVjE4Uy96SzVUaUxwR005ajZFbzBCQUlOSkU4VVFraGNsOCtr?=
 =?utf-8?B?OTlBSEdoVmpkVVEyRHBHWS9YcmdMaGpRRDA2Zk53MFI0NWlwR0MxQnhxTjI2?=
 =?utf-8?B?MmdkeEUwOTVpbHlTK1BHZHJjb0FQOEx3clJRNlJFeWJvWnZ2N0hWZTcvdk44?=
 =?utf-8?B?TE9jbUIzVFZlSmdaeloxOVJHaVlWVWRoQ1d0WTdkUjB6M1ZuSmdRR203VXZP?=
 =?utf-8?B?OXJua3BXSFJYd1h1V0RMVXR3dTBLMThaVHB3N0tzQkV2cW9SUnJPZzZ5b0NV?=
 =?utf-8?B?SjdObnZjVVpmaVJMQmc1UUE5Y3dseFBXb21zSmVMUlkvQW9VTlZPZS9XL0hi?=
 =?utf-8?B?ZkduUGZpaTg4WjdhNERWUVZBbVhJN0plZk9aeHpvMEh4cm9oUFlmMVNYN1RM?=
 =?utf-8?B?Wi9iQUZENTdqNGYwNjZBMGttN1drSDVEUVRZWG5MTGdPdG12QlpBRTZMTG9n?=
 =?utf-8?B?M0xteFFGTDhEZEJWZFlOQ2tJYUx6dVhlRFg4T1VOeElucVBnYUpONmZWRDBI?=
 =?utf-8?B?THkxK085TjhOQTgwQ2FhYkNMb0tFRmFaTlk1R0dqTXJWNEQ1bjFWaXpmdDBL?=
 =?utf-8?B?WTlDVXhrc3hIbkx0c1k1bnA4VGIrSW5kcDRyc3dGZ2NwWDU2M0ltazA2dDU0?=
 =?utf-8?B?T2FpdzNITFJNZG52WTE5U0dKNmNvZCttV0RBaUVCa3FYTkVDNloyTkhzajlH?=
 =?utf-8?B?T2VDdmJBTkVjTXFqWkVVVTFQdmZKRjExTVQyVkhQc0Q4TDl3YjN6cld6WU9K?=
 =?utf-8?B?eHJ0NG1oZ0ozVDdJNlBNcVgzQ3VGRnRFdW5tVmxWYXNmeEVqZTUzd3FkZXhQ?=
 =?utf-8?B?NXNtME01bE9nPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eitNRDlXamtpeHdETFlEcXZiSUtDR3A1blMwTjl2ZmdWeklRc0tzUXZ3aWJt?=
 =?utf-8?B?VURCY3k4ZWV5QklHNXE3KzluV2w1bEtER2VTY0Z6clFsNkNJaFVzd2h0aHVD?=
 =?utf-8?B?TU5YZjhxT0MzR1VxeTNRcTdBNDZIZWNqMlh5UUJPb0cvK0pHTkpxcXFFZUlX?=
 =?utf-8?B?c0NUWFByWm5FaVhGWUhCVWdSMUh6clNKOUNSLytKOEJsN3VrR2RBVlJmSnpa?=
 =?utf-8?B?NnF4MHhlbm1vNXlJS24zQnh3cFFCdEdmQy82am55ekJpQ0xyQTVXTWU1ajRr?=
 =?utf-8?B?NTRablYrazlPSmJXLzVmNjByU3VRZ3FYNTNqaitQNnJIQ2F6dm5iT1VIVUk1?=
 =?utf-8?B?L2xscjJ4SmVGYTYrblJOcTJYK1VEY2k1WFZ3VGpKZWpmMExEZXp1V2ZsYTVm?=
 =?utf-8?B?OFUreTM5TkNjSUt4OGtHNmdrNjJCdkY0NGdGdURHSURKUmhUbVR0RW9nT2lX?=
 =?utf-8?B?TFlDR3RCWGJwZTdhZmdtSUdUNisreTdmdFc4UHkrS05XSUUxbW9LUUhnU2xG?=
 =?utf-8?B?ODhaajB2UUlMZ1Y1cWFLemJmSzc4WjFHNk1XV1BGY0ZLUTNRSU5qOG9ONk5I?=
 =?utf-8?B?dEV6T1RiOUVuaFF3MTNjdC9ZNGhQeFFZWmRLRjMyWnREUytrbU9YKzRZejhU?=
 =?utf-8?B?YkZxRTdGSGtMd2ZuSVNONlQ5NUt0dXhjeWpRcnNZcEVMa056Z21rZDJDVnFW?=
 =?utf-8?B?NU52WnFvN0EyN2toV2tjWVVIbW0zSXdvNkU3WWtzakUycGNXWitOektZUUIy?=
 =?utf-8?B?ak9XY3NIbk9EclNhNW1wN3VxNDI2RFdoekE4UTZiOUFEUVZmd0pTYk5PcG5u?=
 =?utf-8?B?UXRQTG1tMXlmbTRDbkhkcWpHVHljQjhLU1FhdlVjNUc3bzIvSi90eUhBci9r?=
 =?utf-8?B?YTVjV1MyRVliZ0xhUGNnYk1YeTdOTU90czl0enBDZEJZTmtsOHlWV0o0ZUpt?=
 =?utf-8?B?bGtjSGI3MmxCRFZUVGcvenYvQ1AvcENBMDJJblA3cGR5YUpwTms2QmZ5NjZ6?=
 =?utf-8?B?UW95V1BudUF2ejYrUEUwWnByWmU4b1hLSU5obGp5VktRQ3V2REpmWjE5TUp4?=
 =?utf-8?B?cXBmZ1NHcFIvVHhkL0lhajZjVXZSUU1pcUkzNzBTZEtjSWZhektFTkg3MkFu?=
 =?utf-8?B?Tnp3dUR1MTZTYUNoTmlVVksxWS9GVXVxUmNOZG1rNG5sSHJKamZlOG1URmlK?=
 =?utf-8?B?WWsxbDhXVytNR1BQZ2ljWWo5SzBQNXhQSHJXNDhDZmR3d3NDMGtnTTQ3aTJh?=
 =?utf-8?B?QjhMUllQYkVBMjMvMTJpdFJlTlRuZUdxbGFJTVlNeDlaQTdrWmNiWFNCRVNQ?=
 =?utf-8?B?My9IV005Y0NVa3BIaW9CV2RQWDNCUTN2RjUyOEFZTjBRbWsrc2VkL1RvT3hX?=
 =?utf-8?B?d0w3V0FBOUxKaWk3ZXUvS2ExczZNcWZ1QXhoWEl3VGxTbkZvTmNwZm51T0lD?=
 =?utf-8?B?akJIa0dpdTVDVjdqUUU0ZTI0VmZsTnBTOUFJZkpUTlFRTkoyY3F3QTM0TG5P?=
 =?utf-8?B?bENkaVhGQXI1M3p5MldEMEV6K0k0ZERUNFRRd3JLSmFXU3BZWWlJdEx4aUxN?=
 =?utf-8?B?eTJXcTVybm9pZnowSGM0ekN5NWptMFBXempHcWVDK29zZkRVWTdBenVWclZs?=
 =?utf-8?B?TEhDWk55V0p4QVF2eDFJNHBzNXVDVGRYeEpKMW0wd0NxNWlFcUFRV28vcDh6?=
 =?utf-8?B?aTcvOG1kWVpvWjlaaHRTQzV5V2dsZk9QZHJzT1Y2ei9SbTVUbHBvYTVCL29I?=
 =?utf-8?B?R1kyVlg0SDNQTnJCYTd1OGM2SEdrNWlNNUtBTG1na1ZLem10aXZiek54MUQv?=
 =?utf-8?B?RTlMMHpZVjhZRnBjcGlzVnlSMG15NVFDY2VXWlZwd1hiWmJRY0x6amVrRTdX?=
 =?utf-8?B?M2lCNWdsOWRXSTgyM3VUbnJwOGNjVFNGTEVHaXpwQ1gzT1RiRERTNzErVWNG?=
 =?utf-8?B?aTBuSUsvSG5YYUJQQUhhZXpzOFV2Tyt2eHczSUo1NWRmSHhqd09VeFlpRnR2?=
 =?utf-8?B?d09TL1pPSGxWQS82Ui9XcGVKbEJUQ3AwKzVuNExzbTV0U1NBRkRvQUt4dmxX?=
 =?utf-8?B?WEYvUENyY0pBSThoc1pZWUM5WTdkV0ZtYnUvR2RlRzdKSEhhNm1BcTZPU0lv?=
 =?utf-8?Q?2uFPyeTcBHzCyNSbqvULb1zib?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c2a7519-e740-4797-192b-08dd993d3d49
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:30:45.6104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jCGwGNPD3odw06gCTRk0Dlc5Asxl0mIn2PuRjewUtzHov1R7TIKissreBmFKLimf7noyVqYv8uqwjJlIZAtmLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF066A3CD44
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747924254; x=1779460254;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RWIZnEvaeBBhZPufOigjgQ/wg4uJ1kpOyJz6j5kOxEw=;
 b=Psu2obAymPTgBicyn0sh12di28XLWssLulaPvhr/1fr4mXIoTe7Bq+mT
 jTqp1W9j6Vc8qNSEp8gHp0IR2fq18+FrGD/vevc2EfUU7aZQEE8Uz1GUq
 zC2oXb2DHHrUqrHIyrYjFOkS86OBSSKrdDIs7jbQYKoPuN01rb+bPCCe/
 QL1YjLQ+/Rz+vt1Z6ElxO08MPIyhKbMAzzEEM707S6eTe9hzhwbVfC5fE
 xZvzCVmCNzVHUBtYluErQy7Np8frGboXeeaos/7R8jrGz5RxKoszLUax5
 pUmfNW4KVbKa9DU8xcWMyUdr1iaYepz+0WJ/XbCnUTHkvDtx1G6T4Md31
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Psu2obAy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 10/15] ice: use bitfields instead
 of unions for CGU regs
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgTWF5IDIwMjUgMDQ6MjQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEt1Ymlhaywg
TWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5r
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPjsg
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHY0IDEwLzE1XSBpY2U6IHVzZSBiaXRmaWVsZHMgaW5zdGVhZCBvZiB1
bmlvbnMgZm9yIENHVSByZWdzDQo+DQo+IEZyb206IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtv
bGFjaW5za2lAaW50ZWwuY29tPg0KPg0KPiBTd2l0Y2ggZnJvbSB1bmlvbnMgd2l0aCBiaXRmaWVs
ZCBzdHJ1Y3RzIHRvIGRlZmluaXRpb25zIHdpdGggYml0ZmllbGQgbWFza3MuIFRoaXMgaXMgbmVj
ZXNzYXJ5LCBiZWNhdXNlIHNvbWUgcmVnaXN0ZXJzIGhhdmUgZGlmZmVyZW50IGZpZWxkIGRlZmlu
aXRpb25zIG9yIGV2ZW4gdXNlIGEgZGlmZmVyZW50IHJlZ2lzdGVyIGZvciB0aGUgc2FtZSBmaWVs
ZHMgYmFzZWQgb24gSFcgdHlwZS4NCj4NCj4gUmVtb3ZlIHVudXNlZCByZWdpc3RlciBmaWVsZHMu
DQo+DQo+IFJldmlld2VkLWJ5OiBNaWxlbmEgT2xlY2ggPG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+
DQo+IFNpZ25lZC1vZmYtYnk6IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtvbGFjaW5za2lAaW50
ZWwuY29tPg0KPiAtLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21t
b24uaCB8IDIxMiArKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3RzcGxsLmMgIHwgMjM0ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LS0NCj4gMiBmaWxlcyBjaGFuZ2VkLCAxNTMgaW5zZXJ0aW9ucygrKSwgMjkzIGRlbGV0aW9ucygt
KQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBpbnRlbC5jb20+IChBIENv
bnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
