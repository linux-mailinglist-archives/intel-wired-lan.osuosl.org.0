Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E211196DA42
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 15:26:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 900F340648;
	Thu,  5 Sep 2024 13:26:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HaEL1_hA8OcT; Thu,  5 Sep 2024 13:26:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C82D940634
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725542768;
	bh=Wv5iSrUOP39oO2B4zjPBl4pUx8++mbtY+cnPtmo/JaI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AYWDNJ/igIZpoyq3cusrE/tc3Lwfll/fyox0Imysm3w0kyGr5a5ewr+Uf8/FGyS0Z
	 aE3tRF7MRYyMNW2Ut5wUSHapoIcQn+RANt9oUnQM8HAyjI1gM71d0bttY0zT/I6YFd
	 DU7vEOUaEmcYLmLV9BHLMmHMpNOOjhpos/eDNFGvavBeO0FoNKsbkeeCMwW/fkEIOP
	 /Dt3qAdLc9ZSfQWBCraHLrFZhVltsv5x9hGWafvhOrBHD46H8aAaB2JIdINYazoICv
	 2C8sHNDTDJNMKRR/o7KLV0CB0/7bIjs5RfDGalTTf52/Km+VUS5Z66aQHPBhPMEoSl
	 bddPVxjzvUIkA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C82D940634;
	Thu,  5 Sep 2024 13:26:08 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 324D01BF297
 for <intel-wired-lan@osuosl.org>; Thu,  5 Sep 2024 13:26:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFDEC60A6F
 for <intel-wired-lan@osuosl.org>; Thu,  5 Sep 2024 13:26:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PW7Df0lQ7CBX for <intel-wired-lan@osuosl.org>;
 Thu,  5 Sep 2024 13:26:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 98578605A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98578605A7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 98578605A7
 for <intel-wired-lan@osuosl.org>; Thu,  5 Sep 2024 13:26:01 +0000 (UTC)
X-CSE-ConnectionGUID: fCr3thUaQRGWyM2YIDSYzA==
X-CSE-MsgGUID: DfV4fGYETpKbMfnoGuf+6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="35411126"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="35411126"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 06:25:38 -0700
X-CSE-ConnectionGUID: 3CoY0bC7ThqRl+cgMON2OQ==
X-CSE-MsgGUID: 0rvcDSIGRviwkpdOVtZLLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="65637478"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 06:25:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 06:25:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 06:25:37 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 06:25:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vn2Og9u2V6QDHxKP1a6CAeNTRUgtamSGcwKDg6Ywy6xw1TfA+aGgsJru2KXm29RlAEOPJ4+95eCqsDG3RoL4ybpnYQKxR953tqLSDKFMYwkVfGREe3LVcBhidzLZYWP/UEEf351puKLCtpggwu/N3BLQq/1/FzYEMJq0Hb3zaHVb/0i8e02Lzkx4a+eNh6rY2wh3QIKwUtPCXG4cyyxUaeMbI9McIkV/4FwjRfVxvJER5PFyBf3HcC1z0P6gWeCJz25wvKOqeyouOIfr5L2C2zmpTzmmMa+p931Ku0yy7lfxB/zTfQK2cMJNHkN3ndpaAVIsXn6yof45beSiezM6QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wv5iSrUOP39oO2B4zjPBl4pUx8++mbtY+cnPtmo/JaI=;
 b=BxMcDlxz2wF55a9YzYP3AKTVwkjUdNpRTM+yjBiGgxTm7MFfzwKQRI9hdXmR+WIC5TrIqyf0VPyD2T6KK1R3NNkasIjmlYgfKL243cTQO7o2bPwO+hLwHIJbCYZf2ngJc/DT5MGp2rO/2iFEWt6XupLpujtf4AVOMn2w26hYm0MGqWDousERl8C5e2kWFKCKH6HzO6E9Q1Xzf3EFWENqmKRyzBkMXeEOS/pQubdrVB4aUzW9zyznXnkc/kPCXjgs3gBp8Np79rsZhv4VG8pNFvqISGozP+RCHfLZ6llRyLo+IiYlcvNTWnI/X2CkWmwmgqCsK0z8C1mBz/lnTleBfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by MN0PR11MB6085.namprd11.prod.outlook.com (2603:10b6:208:3cf::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 13:25:24 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 13:25:24 +0000
Message-ID: <533570f0-73a3-8f74-fcbb-a2f3a8485145@intel.com>
Date: Thu, 5 Sep 2024 16:25:18 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <3ef52bb5-3289-416a-81b6-4064c49960c8@lunn.ch>
 <20240904055646.58588-1-takamitz@amazon.co.jp>
 <b6b56dd0-b6ff-47d1-a678-d2fde5184723@lunn.ch>
 <5349b6fd-bd22-9b15-25a2-0f42c67b9c9e@intel.com>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <5349b6fd-bd22-9b15-25a2-0f42c67b9c9e@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TLZP290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::13) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|MN0PR11MB6085:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c366b96-5eba-46ab-37e8-08dccdae32ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2JXbDY0WUVCRHBTREpNRFlHY0RmYmtOSVFtZGs1RjZHVXA2dklaYW5TUGkz?=
 =?utf-8?B?MEFGaGR4VnUyUmx2a2dPR1ViaDhVRkd3Wlg5VVF1OXIrZ1JBV0FlVnpXbCt6?=
 =?utf-8?B?K3VjUkZhUjdoTmxVdFVlOU12SC9YWExiOU9kZzBJelpxR2RkRm5xcG03dlh5?=
 =?utf-8?B?MTZyRUpma3o2dnd0MHZsRlVUSjRmalpCencxejNSbE5ZNlQwY2ttem1iRGMw?=
 =?utf-8?B?Q2hMYm9peU1UOVVPdkt5Ukl2dzlIcE5hZHo2VDYvNVVTWlo3eDlvQW5GdXhZ?=
 =?utf-8?B?MHhxOHBDUUtFK3hPMVVxNy9xVDJqai9JZDlCeS8rSFNRK3Z1SUpTcFF4SU42?=
 =?utf-8?B?WHNCclNCa3hqVTVJY0Y3Wi8xR3RERkp0UFY2ei96cmFZYW5OeUdENHpKbjhi?=
 =?utf-8?B?c2lWR1kwbFYyZGdkUlcwNGw3SklLcEQ1T2tGMWJRYklOSXVJUmlJUTFXblA2?=
 =?utf-8?B?SVFGT1ZmMzQ0YXo3UUtLYlJJWWltSVRuRHJtVThaL01jRHJuMUtyZHdTcTZj?=
 =?utf-8?B?LzBiRGVESS9JQkJ3Unh1NHE0cW1BcXBVZVJrSHRLN2tyTUZPeDRpbGQxNmwz?=
 =?utf-8?B?VHQ1bVlhVU1OSWVvRGVxN2tjMkpWRzQ0cHZuWlpxTjNqRWJzS0NROGF0Z0dX?=
 =?utf-8?B?bVl5a25EQVdoM1FpMXRWM2RoaWVBWVUwdjdNcnJvWTVoU2tYVGIwUjM3VTl2?=
 =?utf-8?B?S0NEQS8vVXZjSndGcGNrQTJNTU1MZlRSMWhva2UwaWkySkFHRVc3RjVjRWJC?=
 =?utf-8?B?a0RvM1JFYnJyUFBMWHBWRk40Ti9vMXVWbW01aW9yMmw1ZmVXcW14KzlFK1NH?=
 =?utf-8?B?Ui9ud1FkZzlXb1RNUldZUVRadmpnR0xSTWgxRys4T1lsR3VWcEpDT1RRa0d5?=
 =?utf-8?B?N2dMaGUrL1QrVlBNaWFHTTI2RlRXWnZDQkd6YlRiUDBFR2kyWFFlQS9QRk5Q?=
 =?utf-8?B?NWd0TlRpdCtwL0d0dzd2WmJuUzNTUW5KV1hmKzhhTlN2WGdUbWwvUkVYakJx?=
 =?utf-8?B?dktCajZDNHVTYzRONTBWQzA0dGFsOXJjNDZGVmk2V2wrTElEd2VSNTBhd0N5?=
 =?utf-8?B?bWNvdnhySEMvaUR4bDFXaEF2VjhQSVBQZUkvaVd1ZmZ3QVhsQ3BMZjM5d0hN?=
 =?utf-8?B?RHd0MVBLQnpOWHpaMWtRaUNGU0w0MkJjdEVtOTBMVDZrRXVCK1pwR3pGQ0t4?=
 =?utf-8?B?TmhxMGVkOVB6dGUyWW1tT1JNR05OZFlXcmVEWDRweEpVQ0ZINUxJNkhLaU8z?=
 =?utf-8?B?NWdJc2VTMTRkWVh0RC9jT2RDQThTdlVXQ3ZkSGFOMm1xc3pTRHJtRGtVaXY5?=
 =?utf-8?B?TnhNWmVSZnZmRkRzMFVrWTJaTVRDMjRhR3JEdnBIKzRxL1BOUDVhOW9UK0hz?=
 =?utf-8?B?dTd0V1RKMDRhYUk2QzJyZ1F3b3d3b2Voa1FNZ1RmakVzTVJna0NFU29XbDN2?=
 =?utf-8?B?V2VzTytyQTRFN1FJUGZvM3pJWmpUK1JQVVBWcWxvRENHUFBKM0FQL1QyUERS?=
 =?utf-8?B?dTMrQXIxVVZyOUNmb1luY0FwaEhyMEJacFZDM0tTQi9xdXpQdzE5Ykl0ekU3?=
 =?utf-8?B?RnpMeEc1Mm1IY1lOQ1dPaTZ0b2R5c2NUR2VPbnI1TzdLWmhLQmFaczBDQmtI?=
 =?utf-8?B?MGlKUkx4cE5XZDdSSTRxUEdVZ0ZZMXhJb1diYzRTTExwRFZPU3lUNTFkaVlq?=
 =?utf-8?B?SjZXTUZDUmNqTW0yL1U2aW1Pcno4QVFpOUpybVJsT1lDUFJVNEFaL0I5Mkcz?=
 =?utf-8?B?Yld4V1NxUnFJNGtuNTJkSEpxYkxrWlNYT2FsVC92VWdWMEh5WXRyWWRDeGpL?=
 =?utf-8?Q?ssd7yS8UNnmQDKB/Tu/xyzr4NIA9Frv0hDmMU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YllCSmFZeGk2SXV2a2NkZVlQeXFXK1Jkd0lET0NEUWZwVHdnNXVVVTkyY0ht?=
 =?utf-8?B?YTdNOTlrUkpwMWtRQ0dKYUxEeWpUMHd2bXJ4b2ZyMkpUbER2NGl6RjRJT2Ri?=
 =?utf-8?B?RUhKc1dtd2JZWUQ1aDkyY0Q4MmhIdzRzWE5tUUFXbFpNR1ZWbnBSVjhXV0pH?=
 =?utf-8?B?NVB0QmxsMERRd0tYRHJGRTlLckpMamZDYUVoM0tSWk5JQkZRRVhrNk8reGdY?=
 =?utf-8?B?VmRMcmNUa1pEM0syUkMxKzQxSkdqZlI0ZHpaUGNkTE9OeVRFUmxSMkZxNnhO?=
 =?utf-8?B?cmUxQ3Q3Lzlsa1htcy9xODlOTHF5YlIvZ3N4OVUrYmVlS3RpcjRaMG1QTGVp?=
 =?utf-8?B?YkUzMjRNRjNKMGdOK3FhWmFvVkJ4S2J0dzF3VlpIMWNWbytHSzRybndTVFRY?=
 =?utf-8?B?UjhsRGU5N3dQTEFGUDJuaWtkS0wrMUd5dElXYVljZUV2TE84aE5YNTZVNXAy?=
 =?utf-8?B?NmxwT3lsVEE0SjkxUjFhb1JRMTBpVFJob0lJRnJBRmJHR1dRcnh6TGJITzVl?=
 =?utf-8?B?SzBZbC9IbGxmeW9ZSkVGM3NHcHBOUG4yY1RGb1pKRnFGOEVmTzRXeEkzMzFJ?=
 =?utf-8?B?dzhBSW9nRXVyUFFwTnF1WDBlaDAzWHFuMENycmFTU2R0SGpmTnl3a0xYejVW?=
 =?utf-8?B?RnZDcVI0aUllTTJtWWRkVzJlYnlxR08rYVlOSmVjczFqNFQ1YnBHU1R2aXFQ?=
 =?utf-8?B?c0xmR2VoVHpSanQwVTZ1bklnYmg5QysvQjFRMWJYWG12Umx3L3R4SUpKeWlU?=
 =?utf-8?B?Q3M4N2ovK0w1ZUhoWE90RnFZMHk2bmx5bzQrNkVzcTJoK2tzaGJqT3hzOEVG?=
 =?utf-8?B?WVpsUG8wSEJhTDgxSVFKUktRNkVmN01ZTkFtMkVTL0E2RXd4WUpaZC9lUjhY?=
 =?utf-8?B?TnVZUTRyclpGN2t6OGlZWk4yWEp6dkY1QnZRZSt2dlZrM1RiWTNPUEx0MXhS?=
 =?utf-8?B?TGNsaU9kOGIxWGRVV3V1QUZNTXdpUVBrNmpyelJBSUo1M1U4SkZKSGlBdWxQ?=
 =?utf-8?B?RUcxSU15Z2dTWTVoUVdDS1pRdVVnZDJFa3k2M1poMFZ6NE5wZ0tMcU8yblkz?=
 =?utf-8?B?RUZIdEljRDZIaXJhUnFtVzdCK29iRndCa3lNYVR4Q1RwbWpnd0l0S2FZY0px?=
 =?utf-8?B?MjV3U2JqdHFLdWVMcUlGc3BzYTZhbEhrWFZUcldIYXJhUytGTVFBQWtNbGJ2?=
 =?utf-8?B?cE5WSUFsRVVJS1A5emMyUkZwaW1xcitxdlNHRDhTNnlNcE5sYnZ3enVxeWlu?=
 =?utf-8?B?ejF3dDg4czc1S2pSTzhzUVNROXR5U3pKVmZ2RzB3cERETitxUS9XV3d0bWVx?=
 =?utf-8?B?b0RzbWI1dlUzYWMwTXJreHB4QmFFS3pOc2FiTnpVL0t2Q3lmeVJRZmkzUEc0?=
 =?utf-8?B?OTlHWnI0UW1kSXk2SUdiV1RLRlExNWtCUmFtUVBDN2VrNWMrTHFLbzd6dnFG?=
 =?utf-8?B?dmg5MmtVNDJ4OXhVR0tvLzZsdWNXZmEvWkl0UEQ4UkFkdUV4L0ZKblhIVTcy?=
 =?utf-8?B?S3RBcWtmRVdOQlNKcFhacnRUaEhCQzd2cXplQTVtbFY4NklzRGp4QXlRVVZt?=
 =?utf-8?B?Z0NlR01mNU5QSHhROXU4dUJCZ0FIbTlOU0twRThNVGtlRUlxSnQ1TGg2KzFh?=
 =?utf-8?B?VmhNaEcyVXE4dDBtWWRvMXR4dE5jVUpPM0hscWJNWTZ0ck50VVNyK1h6eWVB?=
 =?utf-8?B?Z0lYNENlQ3YzNmJYc0tMZGpkM0tXVUxFZVhyQWNmVlNLTHgyQi9yOEJNY05k?=
 =?utf-8?B?VGxlaHl1T1RreFdvaFY0dWRCZ24xSklQTHZrRWwyUnAwYklPTjdvdEZWUjhI?=
 =?utf-8?B?a1FGOFNDOHJOWkRGRE5RVUt3ckZkcnRNaHV3TGk4N1pQQ0UyTnQ0SlN6ZDRN?=
 =?utf-8?B?LzdrMUxUMEpBZFBadjZ1NTg0QjFlN0kzU3hSbkQyRVVuRmtxYlJDNGlmYXZu?=
 =?utf-8?B?dEVweE8zdmRCTWsremYxTkZxcTgyZU9YU0NlQXRKUUpvaXhJWVViMEpydGlI?=
 =?utf-8?B?cVFIOVNaM21XOTQvRnpDMnNuTnhuajBuaFhUWjljejRMdnJQTUpPWVJrblVt?=
 =?utf-8?B?WnN2NFFCcHpIOU9CLzB6OXpMNURETFNoN2FtRERxVWZPY2p0ZnJkOWxTQW1B?=
 =?utf-8?B?S3dDWHVSdnMvRU1jSEJHdTI2YzBMU3RzZVRCRUNHRWhLZ0tuYmdkNjg3SE9H?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c366b96-5eba-46ab-37e8-08dccdae32ee
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 13:25:24.6043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OoqEPDmSNULPcK6BHSHJ98TeNmvqmvaxLaIXH2XxdRSUy5yXkG2SsfjTRodyAAVK0PUxyc9V4qG5jmpxtXeW0IWf7DkWyLCrufVeKH8to74=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6085
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725542762; x=1757078762;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hUAyDXqfAqYl0RX5MsAiBfXt6g0qg7g52/7GgAekYTQ=;
 b=E8B3xvjY/RdyVODTIM/aScUJ6zlbzG7CIcGVrKwF8SDlZEahuyvh4Hg6
 93l7kyU9XUm9hNdPVao2Hohak9ovK+Kf40bVJxL9XLeoXx2uDZ/cg/JLX
 CibpVNd6eEnCzAl3I/D86tVzjXvUVOfxFm2j+Q+itn0uenQq7CrHo/1fA
 TwMT+0D2TA+p+H+NqcjGj46vTa8hGPlGV8eKPfjLm7ULGgkKMicbyA6r8
 8aL5/bVHs4PDuyAykpOd/wfsu+lFaJ7qmEUcl9MXvcLyzrHqk2dCbt5or
 3AIRZa4FUY5gsfFEr7+66NBfA2wRZx1AniNoogBx7v79j6bTvhnextYrw
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E8B3xvjY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 net-next] e1000e: Remove duplicated
 writel() in e1000_configure_tx/rx()
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


On 9/4/2024 3:36 PM, Vitaly Lifshits wrote:
>
> On 9/4/2024 3:13 PM, Andrew Lunn wrote:
>> On Wed, Sep 04, 2024 at 02:56:46PM +0900, Takamitsu Iwai wrote:
>>>> So you have confirmed with the datsheet that the write is not needed?
>>>>
>>>> As i said, this is a hardware register, not memory. Writes are not
>>>> always idempotent. It might be necessary to write it twice.
>>> I have checked following datasheets and I can not find that we need 
>>> to write
>>> RDH, RDT, TDH, TDT registers twice at initialization.
>>>
>>> https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/82577-gbe-phy-datasheet.pdf 
>>>
>>> https://www.intel.com/content/www/us/en/content-details/613460/intel-82583v-gbe-controller-datasheet.html 
>>>
>>>
>>> Write happened once before commit 0845d45e900c, so just out of 
>>> curiosity,
>>> have you seen such a device?
>> This is just risk minimisation. I don't want e1000e to be broken
>> because you removed a write. I'm trying to ensure you fully understand
>> what you are changing, and have verified it is a safe change. I don't
>> have this hardware, so i cannot test it.
>>
>>> My colleague, Kohei, tested the patch with a real hardware and will 
>>> provide his
>>> Tested-by shortly.
>> Please resend the patch, adding his Tested-by: and update the commit
>> message to summarise this discussion. Explain how you determined this
>> is safe.
>>
>> Thanks
>>     Andrew
>
>
> I believe that this patch should not cause any damage, even on old 
> hardware, but I would like to test it internally first.
>
We ran a few tests and this patch appears to be safe.

In addition, I reviewed the code of the other OS drivers for these 
devices and it indeed seems that the two writes were added by mistake.

