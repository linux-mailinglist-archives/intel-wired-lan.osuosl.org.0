Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0288D8D2936
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 02:02:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F4DA407F4;
	Wed, 29 May 2024 00:02:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B3kGmtHPO6G0; Wed, 29 May 2024 00:02:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB564406CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716940948;
	bh=kwOBBGDdwzJ/Emlev8CdFoa9d10amndoJgeLWxiQo2Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rf2S+l6j2O0YBuO6HrNCG27RQ1xIQCwPOyVFcIsbMhArKVzY1FE/6Nc/WyAEHQxqQ
	 F17I85WcPNK1pLdIyy5/+1yYavbd7Z/Ba5stjIq0KPA3Yl8qlPddwmxReI/8fJ2aWS
	 TxHxSgOq9VFPthkt66VC80aMjGvU1hTnb0o00tnfJreeSMkjid+lK/zlBlijWycVO+
	 PNhK7EAZ8f8uyj81FWI67y/03NqFR38yt95QVYqdZ5HCFub0rBt7eWQuW6agkRfA8B
	 YN+k56j8Rlbzqly2lyo4Vx8V3amUJwLLnbbfSlTPneeG+bnohGYznnny1BorKKbwLb
	 fQqqwGzn8fEKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB564406CF;
	Wed, 29 May 2024 00:02:27 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2F251D2EA0
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:02:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE23F40131
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:02:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y32KBZEdW9jo for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2024 00:02:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 21A3E400FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21A3E400FB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21A3E400FB
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:02:24 +0000 (UTC)
X-CSE-ConnectionGUID: +P9ScjPoQN6L7S4908Ee1A==
X-CSE-MsgGUID: 1YXpi5Z4RmqqeeZ1V2+pxw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="11739432"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="11739432"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 17:02:24 -0700
X-CSE-ConnectionGUID: DwpWfffKRraBBc6xAUhhWQ==
X-CSE-MsgGUID: RQjDdlKNTjaYyebwtYEf5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35324394"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 17:02:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 17:02:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 17:02:23 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 17:02:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fHAkcR2ZSAaYwxSeL4ejK1K7GJrl50zIvhgGoiwne7NK69eJd4yynBV14wvhSMb5MoMglSwCeExST6j3PId6qUe06Chbf9/xcwercSL+twvZDfZzXRlx2F4FQC71GbkOfgib3M6Y+ABIl/hZNXvGCu4upoTWjUstWDQRTmWCe3toxfZ8qDfp4Pw5jHjRto41miIhQf+jm84gvxK2ukQsM7FNx0QQKK7+LrYvJU1bt5+S51WAX/ITJ16i/puFjoeDz1HaN3Kpue+Yy4Cp1SV904r3c55SJplOUIBdLkpkzLhm2pfEixVxbd07Sje3qSU/SJjhuTHzvmM8YpSBWGQSvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kwOBBGDdwzJ/Emlev8CdFoa9d10amndoJgeLWxiQo2Y=;
 b=lJK5SVsKKEOYsQKTfIvx4Zi1zhLV6loMkYgMeUFThGZMiZB0tj5Is6VCFEFRzsKpSGG02w5RWHjSfpn5qUHcgh05c5BmW6+8WNZSUkNdbqcF/08C5rjyF8wKd12Y0fUdqZY44vFZWPLRAiYRJ8ZH4iksJBD+/WqFOJEdTb7nvF7xfH5m9GzlyzOrkSBCkm85l5ZhxV6wDp+kyvmZiTBMrF4a0El4/JO4wktIOAAl16Y3oSGRgVFJ4PRx2SIzoIi1nA2yyqkWgA8leDQQ0G93pEuxm1ALA9rvHeQxm9bGVBn0yb4mIRw+DAYWrZyXVMMTBveLzJIDzgqe8nQ/b32cIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB6080.namprd11.prod.outlook.com (2603:10b6:8:84::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.27; Wed, 29 May 2024 00:02:20 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 00:02:19 +0000
Message-ID: <c30ed6d0-bdf1-4f59-a8af-209d0050b7b5@intel.com>
Date: Tue, 28 May 2024 17:02:18 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240528110132.483447-1-wojciech.drewek@intel.com>
 <20240528121658.0bb99e8e@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240528121658.0bb99e8e@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0047.namprd16.prod.outlook.com
 (2603:10b6:907:1::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS7PR11MB6080:EE_
X-MS-Office365-Filtering-Correlation-Id: 5663cb36-9e28-46ca-1d51-08dc7f729b86
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cEUvSHNRUkppZU50TEphSHg0ak5wSTc0U3JBSjJpckMrZ29sUENEalhzODJz?=
 =?utf-8?B?VTRXRzV5L01BekdqRkFPUk5tRnpWOGpVc0dpSXJycXQxbkJrVllySHNqc0I3?=
 =?utf-8?B?ak44T21meUY2NUhIU0VBVjlsUUY3cm1kNDlveG02SjdmK0RnK1hmMGJhdDNV?=
 =?utf-8?B?cStLSmg0V3hvRVVmNTVSbUUyUlZUR3pneDNDTXVQZk9JSncvODZzN0pIS1Na?=
 =?utf-8?B?TDQ5WVNrYVlIT3JyTFcvWDc2LzE5VHR5Z0VMN0pzWDV4VEtycEVsYzVIMEVr?=
 =?utf-8?B?NlNrZ3l5eTFPNFFBVlMvR1UzT0djU2kvU0txT1pxNjR3cjhYZUppL1F0OVZN?=
 =?utf-8?B?REJkZHFKNXM3NUMwNzRQajc4RGNEd0Ztb3NsTlYyZVpUUVh6Tk9TWnBBSXJt?=
 =?utf-8?B?N1J0a1Z5REEveTFKK1pOa3kwTmdDcjRoT3puQTk2bFZZRkZQcFRZSU5lMGU3?=
 =?utf-8?B?TEJLeGpyem9RM295MldGQ0ZsMEM1SDJvV1BTSHZtd1pxMDI1MkdKY3F4NU5i?=
 =?utf-8?B?Z1VkbDlybFNySFJxeXNBdHNNTngrOFNtNzdqSk1yZFRqL050aGdidWtkVjFt?=
 =?utf-8?B?TWhRR1JjNDZHU3hHa2FCMWxXM2lsTjVrNWM4Q3o2NW4xRkI0bkIyTE1XR0o5?=
 =?utf-8?B?TW5VNGFnMnV0MFhYQ2ZiZ2pROEJ6c1VQeHJGZ1pUTndZN2J5K3hBVkZ6dXhn?=
 =?utf-8?B?L0c2Zjd2ODF3amNqTFBQd0xUeTNzRWRvdjNHSmNVdmtsWS9McXl1ZGtqd2ZH?=
 =?utf-8?B?cS9RQVluMUtLeVE1aXA0azRzbmpteHpyY1ZUTXFuMmpMN1NSRG5GT1JrRDNj?=
 =?utf-8?B?cHRaWllQZlpUSldXdU5BT3RwV3lmRjBSZDVhYllYY3ZOYTBIa1BaWmhMZ0Jz?=
 =?utf-8?B?ZFVNcXdRTFIvT09hMzdDRnNYbTQyem9KUlg4YlpIWi9mYW5Pd0l3OFN1NTN5?=
 =?utf-8?B?L0o1STlDVThxRkFJVHZvcVB2citZOHBjeDRRWlRpbWMrSkYrNGlGSlV1VitP?=
 =?utf-8?B?NkdyQ3kvUkZpdDFuM0JKQ09yQit1ZXI4d29JNHFrKzFvYmk2MXR1TDJFUW9x?=
 =?utf-8?B?ZDJscEhZUVN1bmtRZE1qNXVFb0VRZ0w4YkxXSy83T2JkcE4vaEtJa3RkR3ZL?=
 =?utf-8?B?cmFlK0lZOEY2Ym1KQkFtUXdzSEh5d3hiTCtlNy9TK1R2UGloT0lXeDRUaHRM?=
 =?utf-8?B?T1o4SVRVY1dBNm1KM2NmbmhXZ25QMlYrZ1hBaW1NOGlJVlBRUEd0SVVMejVK?=
 =?utf-8?B?UTVMcFZqUWhmSXVER21Ld0FybkI0UWJYNGdFUlZxeDV5aVF2SlQ2cUsvMEdu?=
 =?utf-8?B?SnRqUlNXVllMa1E4K2xaWGxEbGFSTmpmWmNwTGY5dWk0NncyckoxN05yblRp?=
 =?utf-8?B?bHk3UWwxWkQxOWppMHlHOVErbzlkRXRGRGhjMk5JTUZPdkhHQlpKbURHY0FL?=
 =?utf-8?B?dlU3NmJlUlZ3R1FHOTFaSDFEYXRQZ0ZTcGlXUEoxbk83MnppaFV4eG05SmpY?=
 =?utf-8?B?emNQdDB0bkhtcWhNQTg3NW5pYzJmNDRmR055VW5sY0tWTGtjRW1lRG1pYlRR?=
 =?utf-8?B?NUhFYUxuZzl0NlhvM1dkUjMyOGhtRUorREV2cm00c2hmYWZHZGpvOWpLeXBs?=
 =?utf-8?B?R0lmTXl6djN0WWpOa1IySy82RWVDaGNOM2VaYjdiRWNkWHZTeWc4Q0VLMGE1?=
 =?utf-8?B?RFNCSzFpMzVmeDRkRUc0YXJ1a09NMk9ZbWt4VUtjaHFObXgwbHNqcitBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b2ZrNEpYZmdEVXJ0NUVJVFhkWjBEUWlBVVoyYk5kQWZvNlhGbzhRZmFaeDkx?=
 =?utf-8?B?TytLZWpmN3o5WDZsN2ZrZ29rZ3hIbzlEaUdIdTNVMFJMNG5GQmlqVjdWaW1v?=
 =?utf-8?B?TmNUc0NpaTlVOG80d3BpSVZOenJWLzRrSGZMaUFEOHdqZkhUYVMycFVNWGhr?=
 =?utf-8?B?eVUwL3dXMzBVVXh0KzZxQjRjQkpEN2lZUW1LbVhIZU5vb0M1UVRJN0Q2eExp?=
 =?utf-8?B?dFFrTW91aERMc2V5dXdoRngvTUxkY3I4OTc5d2hadEdQbGI1UlVXTml2aFBD?=
 =?utf-8?B?ZElxdFNOcnFnY0haaTdOZVpSem5IWVlaT1drUDdZbmJKdzgvNEVuVnkvdFpx?=
 =?utf-8?B?bU1YNFA1NHh3cWlrRGxSenJzU3hNdExiQzFldSszNlBzbkhzSW9mN3Mxck9n?=
 =?utf-8?B?VC9YaTVIZEtmekhXOVE0Rlc3aTZvN2s4L3VVb2pSK3l5dVFva3lJNUJ3U3Nz?=
 =?utf-8?B?d0VlUFRBdUt5ZGN0MTUwZnZWT0NTVkkzUktXS2FjcDBmeC9OZC9jRFhobHA1?=
 =?utf-8?B?M2tRMEJTYzVXa3pqOVVzUXZzWUgwaS8vaFRiZkNDaDRCUFFLSklXV1lTZHM1?=
 =?utf-8?B?RmtESGo1OWRJTkgyY2dyd1dDZlhEUUdsSEU3dnhqMnR2dWxIZUZZNVBiMlJR?=
 =?utf-8?B?RGZBY2ZxVWhTZDlkb0FkOVhEK1RkV1NmTHZWeERHMHloSGgzbURIN0doSHNu?=
 =?utf-8?B?VHM4RGh0NjhGcmJvU3NnN2JyZE1RQ2lxdWZJTzFGMXNMOXFMMWUrZGZPMHJX?=
 =?utf-8?B?VllMcTB1c0h6SDBTc2tEYndrdmpSUk01STVCbGN1NVpRMnEwdDQvbmMrNHVt?=
 =?utf-8?B?OXV5c0UrUlExcTFHRkoxQnFkRWNwYmYyTkoyMERqVTBUbnhHNm5zbDl3OFdF?=
 =?utf-8?B?QmwrSFZKeUNMT3Bsek5PRUdEZ0t6ekVQdHB4Q3JkMWpuelBIaWorUTFjOXFl?=
 =?utf-8?B?RTk2MUh0ME00Umk3LzZpRWdGWm1lbEJHSkphbVBVbUxzMU9zbGJHYXpEYXRn?=
 =?utf-8?B?bWpoZ1dScUk3NVlZanIyRGpVejdyMEl6MHAxWHdqNDhQY1NPZXJGYlVaUTZY?=
 =?utf-8?B?VzdpeThRbStBTkFjNzZqVmRmTy9FREczVGNJRkdaZEh4elBwRWRzUmkrR0Rk?=
 =?utf-8?B?UjNPRjlFN0MyVStmS2Q2RXpmRmNGSEJFaVp5OVMxK0dlblRBa2JTQnBNMTNa?=
 =?utf-8?B?Um5HYmhCakZqYVdHclNkY004TU1JcGZzUU4rK2cvYnk4L0RVenNnRkhzL1Bx?=
 =?utf-8?B?bG5jRTdZZ1hwcXBGc0dVRWhhcnI1UmFMcGlrd1dDYUV4amhDWTNFSnhQdWVJ?=
 =?utf-8?B?dU9kVXlHMUM0TnJYVVY2YmRPOVlPcXBMRDdQbUsxY2ZNNHQ5TXdhTHdKc1I3?=
 =?utf-8?B?N2RDV2k2RXFvUEp0OFgvaFdoalpvbWpzaW14TndTYWs5dG5jTXJrTWRQMDQr?=
 =?utf-8?B?ZmlqdWhxbVVLRkgwNGt6YlRrU1FtdUMzbU9SbHZ5dmZ4Q3Z1bjJvT1h1QTB4?=
 =?utf-8?B?V3JxTmtzRzRtTnE5cEI2YVJ4UmJFcVRaUTNYSVFSOEtkWlBWYXVadjZvcnZ0?=
 =?utf-8?B?QVgvUHduZk8vVWp5UjRJSmVYV29oMlFrYXJ6M21rTS9XWW15bnJRak1YOSth?=
 =?utf-8?B?cUpsMjV0S1AxUWUwZ1U3VXdxSDBLbzBmNndnMEFCRDZyRDdCejR1MnNvR3dY?=
 =?utf-8?B?K1RmaFN0NmpCVkptSDJuZkF5c052TnBYcXZ1TFNwSWdWazdSWFhidHVLVTd2?=
 =?utf-8?B?Y3FuWmR6UWtHMFZ6akNsK2w1Y1BBMUIzTTJMbmJBMDJ3VUxaY2tobXhwdnds?=
 =?utf-8?B?ZlQyLzJCWXcva1VhZjNFbFBpUU9UUFFTQlBrRFEwalB4czhwTFdkSUs3V0Mz?=
 =?utf-8?B?ZDVNME0zSHorN2N2SUhwaHU4ZU9SWHB0RXk1NytuRjA2bzN4b2JQVGJNWmV1?=
 =?utf-8?B?Y2dnMEcwV056T3JBSXhnd1hjWDllWi9wRTdma0N0Wmx0NTArWTF6Y3ZKWlhz?=
 =?utf-8?B?eDdQc1VyTHNvR1VsL2xSMHltNnJGYXBPOHRMQjdxNFRpbUQ1M25RUC9XUEpG?=
 =?utf-8?B?ZmlXQVRGakVoSDZRQXdwSmY5VDczck51RnRYYXhPb0s4Z0ZYM3pQWTJhMzAz?=
 =?utf-8?B?VTFZMWRPS3BVSFh0UUtWTE8rbHQvSjc3RUJ5Q3JJRHhXMDZIZkxaS3dPVGpz?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5663cb36-9e28-46ca-1d51-08dc7f729b86
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 00:02:19.3292 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x5+x+7jJ5B3Da42H1gfYD8Asb+eMW2DyFbmWvfQe+LGFTJ8PABuGOWw3niku3COhjqE6C2jdZ2fc+EoxudQvyyEQ1W48gcMY0KXjO6WJe3I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716940945; x=1748476945;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fTUsgZjKJtSVk9b/Qf+dj39HWZGkRrsxB47YTJK2Vec=;
 b=cmPpbiBd2FWqG35E0Ibv/+PaTVzfPZc5hv3K0w2cptZ8UlLpDsYyhlBV
 yADik6Fq6SuCgyPNOlDH2QZ/X/DleNdbxiN3Vrgh1Z8A046i+e0MyIaE2
 AqZpf9/LqL+qhJ0HlHlG1A8EOPzGI1oHooW7CWcMlCi7xsDdC6VSHeLX5
 oyvSgE5KjcACMR0je3gejO5mcgeUTpYZac07S4XVYwHjkq1S9Ai/1H1Op
 i1Nmx8RYW/D+FFbBeK5sbRvKfYo3fdarry3q4tHwzkD9n61ShUI5I4+xg
 0HGmCYs2zv+feYavmGy7O78vfi2nLAMRU3cxrT7nrHX4S8QeRcFhyCsyS
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cmPpbiBd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Add support for
 devlink loopback param.
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/28/2024 12:16 PM, Jakub Kicinski wrote:
> On Tue, 28 May 2024 13:01:32 +0200 Wojciech Drewek wrote:
>> Subject: [PATCH iwl-net v2] ice: Add support for devlink loopback param.
> 
> iwl-next, presumably
> 
> Param makes sense, although the name keeps giving me pause.
> I expect "loopback" will control either port loopback or something 
> like hairpin. Would "local-forwarding" not be a better name?
> Not a big deal, I guess.
> 
>> +        ``enabled`` - loopback traffic is not allowed on port
>> +
>> +        ``disabled`` - loopback traffic is allowed on this port
> 
> The meaning seems inverted?

Yea this doesn't seem like a bug fix, but implementing a new feature :)

I like local-forwarding too, but its not a huge deal overall. It should
definitely be fixed to match intuition with respect to what enabled and
disabled mean.

Thanks,
Jake
