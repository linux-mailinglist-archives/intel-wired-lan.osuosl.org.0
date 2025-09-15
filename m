Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A55B5B57776
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 13:02:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F37E60F61;
	Mon, 15 Sep 2025 11:02:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1KX3LcWTaCu0; Mon, 15 Sep 2025 11:02:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D0C3610E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757934128;
	bh=Ov6IBHxsXYXjyWFtaciZEMGKw61SpKQtE/6k8LG/s1Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NZVOzc5L9Hij8Iopfe1I+krTvl9ws5vGB6LdmQkl6NO35zE+tguQP39ozt0ILL+zN
	 sKipV434y8ekiOeG6N08Gl8MdbvfIRzRig/KocLdWs5KQU0WEhLoXAq/3xlGbzY66T
	 FVw+i2plTWH+57+0VtQ7UFcikxzSjJxOBWzJuY1zMhxuK3MRoQ0cejXgMNVDXNiaMu
	 XHVwJHs2xEWSmpNSxOpYMg0ivqAgelXSMrvHL7Gch+YgugDUQAIcvlFbCxh9EzrS+J
	 iqy2up0ES2Yh8Ih2DnEh2sUSJlN9QkOjD8mSEXstDUvl7b1yznsDSRJQNfa3VkryRG
	 QAGcoIEmtQ0fw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D0C3610E1;
	Mon, 15 Sep 2025 11:02:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 97BF622F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 11:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 767C5405B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 11:02:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mMGgApHvVUL4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 11:02:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9EE8C405A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EE8C405A7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9EE8C405A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 11:02:05 +0000 (UTC)
X-CSE-ConnectionGUID: cl00SXeuSN+hP5PcJyf02g==
X-CSE-MsgGUID: 6MXQQsV9RR+8u9P4qTozbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11553"; a="71608392"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="71608392"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 04:02:04 -0700
X-CSE-ConnectionGUID: UeD1OegQTK+H9001ayUuPQ==
X-CSE-MsgGUID: rMBz1KG4RHKRpAZKWAMStg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="178954718"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 04:02:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 04:02:03 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 04:02:03 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 04:02:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pg1Bh1UGDLKtRSp9ijruy/dktSfeeRlknaxKT0di/vSiV6G9XJy6OxP/mw4rNiI2lAAm9y+8ULBR6qa1Qpmh0ro3GuIGgAweQqQnGP9eLIKZigYXfg309Q8aiKmKA7trL8JDQlHxgPtgaC3a6Tgjs7dqobd2w9w3V6UyQsEbuslZuRUGDqMAxDPqSa5gMpL4toGHl5ybzHsAI13SXOLCeFGY/rSBDIsFaQ294RNQ/y7NghSBrfqW2eh/ei9N8eMHdycylr0hKDpEvfw52LXvbDgTA4pVPS/GnRVCfxiVZVvu4VfMENBm9K/QkAwjaB+mHFXsWspR37qzYsZCJs4sZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ov6IBHxsXYXjyWFtaciZEMGKw61SpKQtE/6k8LG/s1Y=;
 b=AvinJwrprkBA+afrmEBk1Oij63VvzWmzmb2AeGce+viBYYpz/+qFsUerZc7elDf5YHd4l5eZ1YCQGez1PwZ4M4AgKNjCqnXvhO4CdAiMpEQI8n/K4vBuy9rJjIqSiI5vBCKe6aY5Y0V3KIpQV1SbrUTte+26PN6hp15QrZByUfuz1UeP/aN2xt/YA9ztQQMnXy36yBwJ0LsD/mwfi1XqlgM8UE5EjWlzca++UZKI0Jusi7HWRIJyW5SKz5qe6CaWNo9JLa4R/xbIj5XnEWAdONDq1GBh9esZWCmzt7s92V3eZ3/NAHHVpuh2fmtfpkJE3FWUOJpRjD9a0Yb3RV9x1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CY8PR11MB6843.namprd11.prod.outlook.com (2603:10b6:930:60::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 15 Sep
 2025 11:01:59 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 11:01:54 +0000
Message-ID: <84554f92-5b57-4fcd-85f5-89d9ec0f2523@intel.com>
Date: Mon, 15 Sep 2025 13:01:47 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-3-przemyslaw.kitszel@intel.com>
 <20250912161938.1647096b@kernel.org>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912161938.1647096b@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7PR01CA0033.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50e::11) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CY8PR11MB6843:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ba1db99-d63a-4b73-f4c9-08ddf447478e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UTVYUXNVc2ZKWExWTlRySDFUd2pqaWxGZG5YZWhFaC96YlZsSlJ2bUVZVnhV?=
 =?utf-8?B?ZnJSSFlHc2gra2pjYkY4ZjM0ZC94dGFiR01LMlYwWHhoWmpIQlNTb3RaWkJN?=
 =?utf-8?B?aG9VOWV6Ky9kazgrUVExYUFCcFN0VmNVOXFLZHlBODVvNWU2RXV6dlNSOTly?=
 =?utf-8?B?UHNmekovczMrc0QydFZ0a2RZc3RzRlpDMFlIMUtiOCtpRGx3TWxiNlFDT1dp?=
 =?utf-8?B?WXJlNkUybTM2YTRiNW1PUXNwVTRLQzFVRTdQWWRURUo0YmpneDFtemFMMkda?=
 =?utf-8?B?UTRsWk9nUVk5Wm1yREg3SDlBa3gvL0pjallWQ3BrdUQzeDlVMk5CT1B5SlEv?=
 =?utf-8?B?c2xYT0VVTE9NN2JIS2xvellBcWgvVGdLK3gzTzFwbkdUK3hzbnVJM1I0a0hn?=
 =?utf-8?B?WFNsZEFWSWJzVXExSHRpKytJbVBkNVNwdi9wcEdNTmpIb1hFL2lFdFBHS0dv?=
 =?utf-8?B?bVVINUVnczZQUGtRc3FnT1I1VUJLRkg2cHZKc3lWRTFaRGN3MGx4bTdqUjc4?=
 =?utf-8?B?V2Z1RUhRNGd5eDlVMDltNXZiTEY1MEU3dGxSdk5ZbmlmQkhJMXFETlR1ejR3?=
 =?utf-8?B?Kzg2VjhFL0RwY3JCVGlHK3JwUVNUNm5INmc2MUZUcG9NSXdQeWoxcW92MzJ1?=
 =?utf-8?B?YU9WOVB3WVhMWGhPUDlqOVlvV3hTTDUxVFE3M3pCWGNuRWE3RUtROFoyV1R2?=
 =?utf-8?B?bGVIaFdRcm5Fb2U5bVdDb2NPZHY3ajJ0dTJ1YnVSTk45b243K2lneVp5SVJn?=
 =?utf-8?B?ZVlzQ1pCeVJMSStQTXZiK3FoazZmSUh4T0hhSjBSZHZxRjAwU3MzdjhYQ1Ev?=
 =?utf-8?B?S1pjS3BTcld3NXBuNitQK2dXcXpmTW56dFVwT1ZVTnZwN2taSEk1NEVVcDB1?=
 =?utf-8?B?bXBKZlkvZlM2d292ZllOZG5BVlpxV1VZTGNjdFZOdmx2K0V0VVYzUXU0TUFp?=
 =?utf-8?B?V1BjM3hjL3FDQ0JxOFZxVGRuQjdBeDQySUh6UmZUZURBaUtob2lOWS9MSm5r?=
 =?utf-8?B?emlOMTZoZzJwdmtOcUE3akZHUytmKzdvYkhmUW1WVGMyaDUyOVFFWXFLK0h6?=
 =?utf-8?B?SW9LRmF6eXVTSmhpbXBteEtEWDIwcDBSeU1ncGdWa2c4anVBS2NQa09lbDg5?=
 =?utf-8?B?TEJjOHdBUlRnbFNEQ3JpZHFZMHVLOTI4c2xaVmtNeFlJa0FpQ1U4WlRIQ1Bz?=
 =?utf-8?B?VDB4U2JGZFJvY1BGQ2p5YTBLN0t1dGRXb0dPWVoyd3dJbG1xY2RqYllzTHk3?=
 =?utf-8?B?ejhTRkFTcURtN0lyUTRJb0hkd01oZTEwT2Ezb1Z5dVBmaWZnM1BOV0NocVNE?=
 =?utf-8?B?QVp0aEZ1V1JLTXNiczgzd2sxQnY4TU0zdHdSTFpSTGdTMzVDcTFlYUtxMlpn?=
 =?utf-8?B?dG5GMllGM2dPTkx2N0JuUXplMjRmQnF4bEdQVVY2VzZlZGF3MmR0UnArNGgw?=
 =?utf-8?B?VDl5KzZ6dzlNZmVqdU00UTdTbnY4aDExQ1Zta2pQZkEyT3U1NXRsMjV5QWRN?=
 =?utf-8?B?K2xSTWhCZGhOTnFmWW16bnlEWHQ2aVhnaUVEMG9LL3dkLzZEMlBmMU9mVXRt?=
 =?utf-8?B?dHdxTDhkZkdkZXdTOWh2bjF1Wmc3cTFsajI3cnh0WUNNa0Fhc1U1cTQrbDR2?=
 =?utf-8?B?bmh0eHQ5TG1WZjJFcVBKbGlIQ2JNOEhtdVFXYTI0S2ZnSlNQWUp3ek5LdU81?=
 =?utf-8?B?TEpRb2RWYmtyUDg2MmM2dnhmeUpNM29qa2s2S2hEUE96d1FpUHF0SGF5U1Rk?=
 =?utf-8?B?QUxCTHk1V3Y0eElNMmNhdzRnR0JVYUdEcUtZdFpBK3UycFZGS2RwTkFRTE82?=
 =?utf-8?B?N2RNMmJrWmhQc3Nja3pFN1ArTm1SN004WmQxdElpTlIrTjJ5Ykd4QnFyTk1N?=
 =?utf-8?B?YmRYWkRZU0RqcmpBZnA0cCtZb1hoQ2tCTVc2eUJOUWNJRHc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkhrQ0FEeUsvM29VTUV6a3lOUUUrcWhrUCsxSU4wMnJ5Wmw1eENxS3dIak56?=
 =?utf-8?B?empLRWdkMjJYYXFaRDRxb01wcllCbWlpUnEwUWlERmc3NnR3L05ZM2cxMFBP?=
 =?utf-8?B?SDR0VS9yOG9VNTFyWmhjU0lUbkRCWXBkS0RtOGozUVJJMkNFREFZY2dCNlBB?=
 =?utf-8?B?clVWdnRiNVFSb0VmMGh1SFNpd2VVV0FnWTV5QjRvbldPYmJ6UjNQRGh4WEF2?=
 =?utf-8?B?NWgvdkRDS1BITXROZytsZXFNUU5tVThMRHRxbjJEL2dpTVd6UldJTlIrQ2FE?=
 =?utf-8?B?anVBZXpOVXhUa0FKc1RPc3I4YUFITlBwdXBPOExCNTFDRUVDUkNWenpXTFpI?=
 =?utf-8?B?cndITENZd3BxMUxsTjhlb0s1NVNIMUVNdDVtN04xVlRjNVdhd3JzRTNta2h4?=
 =?utf-8?B?ZStUc25OaWlUTWZrc0VqWnVQTmxEUm5ZSGRxaDlTdHNTT3NqRm5wNndUbnZ1?=
 =?utf-8?B?M1VmOHJlM05LbGIrdHJ4SjNTV3h0SWtwd2tuTDVhTUc3aGlNNENueXdaRndr?=
 =?utf-8?B?K0xFWTJLS3JuM3M0dFBhdmZ6c1VQT1Zoc3BmTVNLMDNoZmF1d0FMZU8yR3ND?=
 =?utf-8?B?UWtsUzQzRnc1Mmpndi9jbHJ3M2RFa2NhS2JMQ09SYkRRdzZZRjBQcjJPekI0?=
 =?utf-8?B?cU5ZVE05aGFwK05JeWNYNzJRSDNqN084Yk9zOENJNjd4TkpoZHdkZy9kMldT?=
 =?utf-8?B?akdGSy9paWl5elNaakROZFBOQ2VFTFJVT0RqWHdrVi9vRWtGVjA0Ny9UdE9s?=
 =?utf-8?B?ck96K3NCNXpXNjdLZXpnMlFSMG5tbmVKNEF0eU5hV2NqRUxUTE1Sb2puSmFZ?=
 =?utf-8?B?UVdQRk90SWpDYXNLOTY3SkxaV3cycFJlcUl6NXBOZGFqeGpiT1NsQzFFZ08v?=
 =?utf-8?B?K2VKcy8vZGNkdGZjUG9PSUpaWm1OZ0hCOXF5ZWZBUjRYR0hkSEVJbUFxUStx?=
 =?utf-8?B?dXBNd1p6NTRVQ2tkaXBvMUpTY3pDekZSQ2tNUG1FazdYRzErV1J0aU5zd1Fs?=
 =?utf-8?B?dGdqTU9HVmJrMEZpeG1Kc21PS1l5UzdmbXJnZGxGc2Z6YW4zWDFBOEZxVzN4?=
 =?utf-8?B?elEwZmN6c0FsYjBvRGp0R0VaM1ZBN1hSYkdtVUh2NjV0QnlVTURIb29BQ1RU?=
 =?utf-8?B?d2dNTjRQNmtoVmdjZXY0YS9vRGk0WUZWS0ZrTDhaNzZHZkFoWHhSa1l0MGZ0?=
 =?utf-8?B?b2lpNXNhSUhXTkVQdHZlSGpma2ladDhOdnYxZGczb3REMGFzYnRMS2E0QTll?=
 =?utf-8?B?YmZ4STk0eURJZVFiTTJqUE12R2lmSFRnN05kWUdsMlVsN1drSTduTzBsVGRD?=
 =?utf-8?B?cEIrRWhkTE96ajBzMkNwVmcvak8zbDBDVGUyeXYybzVnWGE1eUZBRE5OQnRE?=
 =?utf-8?B?UVU1bUpOdEh0Nk1zRXc3VFc1blBCMnprRXpRZmxub3RPVkx0TEl6R0dxNU1J?=
 =?utf-8?B?UGtHSHp6K0dHQ3R1QVMrdnR3SE1NWnk1T0pnRjBRQmRSZUNWaDJXRHVBbXhG?=
 =?utf-8?B?Yk5meUhMaVFpT1o0K0pQYnI0aEdVVkI5WVJsc1BvSG5LNWR1UllnbS90Sm5y?=
 =?utf-8?B?Q2xCZ2J6dGV5OWE4QWJSbHl3ajF0VHlRR0lFOVFPT2ZZRUFUY0wxRkd6ZlpJ?=
 =?utf-8?B?QUREZlVVWTlzd29JVFk2cXhORXB2Vm9kWjlCdmMxMFRkRm1wY01yUUxsY1dU?=
 =?utf-8?B?ditjN2lrR2N6OXVsaldkOWZSbG15N0FhaDZxQ29CWFFGS1B0MDAwVXVRNjh5?=
 =?utf-8?B?WU92QVN1bklaTlNucUg5RVhMeDI0VCs4NU9qL2hFa1Fqb1hQSm81VnUwbzJ2?=
 =?utf-8?B?c3lpUzh5SWd6UU9SN1UyYmNKbmd6OHllT0tKdTlqMU4vVG94QWlPVkV4ZFoz?=
 =?utf-8?B?N1ovdGE3MWZrM01SNmNnMndJTzZrZUdMdW15Y3lHU09zTHBIRGFtK2h3ZWRJ?=
 =?utf-8?B?MTBJdmFyZ0VjZnEwaHQ4WVVwK3QxajJJMDdhNjRwQ21oTmNEVUhPdEV5a0NT?=
 =?utf-8?B?ODAwOEIxR2JxbjkzTGNnNitrN05JTUtLUUthNWx2RXdyc0RiMm5aYmVjYjgw?=
 =?utf-8?B?MUpoREZsanVqWHl1WFdJSEtycWI0U25qNE1lYW93TGhUYkFYeDhCeXNRWGxj?=
 =?utf-8?B?UzlWUGZXVldCY1lQY1p4aEFoQlJaVW5Fcy9YTFpKWE1zTXl5eENFVWFmWW01?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ba1db99-d63a-4b73-f4c9-08ddf447478e
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 11:01:53.9061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uQ0Lj51zsmwfYzPFMjCZGymp9GCQ/glDW0h2IUTArYnKYmruH7qJLxMEaDpf3iDhTEOc5ZPRyZbyA9XNWxyqq8Zd8yTFpa5FmVdbcT69mCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6843
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757934125; x=1789470125;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fbAyZoTzF3S5tSu+9WF90jPdQ91CoEKHnNHOP/seB2s=;
 b=i5py4TaP7XZ1FUGnYWFwAryXANtoH/rqWNbz4hJytcYzWz59gj31hpKZ
 rlSfMTzI+298IIg59Sjpkb9Bh3myZVyliVRSqU/o4Y2tkGDeMKhwz8GLL
 6BLXKlgYbRiFThHg+BAqewd7iP05vnlSu10Gk5ChmWUIEjOf6OllwFxG+
 ptndP+S4mvog2tDRJtFi2hbZXj//uMPZw2eTXfp6j/1+fpKYYM5/VT+tk
 nzheAnSettw/UgpqvqYTkXvxxXLmooIsJ8GfOEiDLTPX5+ESdeXu4KOif
 SCm1Eu9IMfIHeFYbuVqF62bKFYeEvxeimr8uzPdGoNvy0gJrhikkxyVVo
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i5py4TaP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/9] ice: move service task
 start out of ice_init_pf()
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/13/25 01:19, Jakub Kicinski wrote:
> On Fri, 12 Sep 2025 15:06:20 +0200 Przemek Kitszel wrote:
>> +	timer_setup(&pf->serv_tmr, ice_service_timer, 0);
>> +	pf->serv_tmr_period = HZ;
>> +	INIT_WORK(&pf->serv_task, ice_service_task);
>> +	clear_bit(ICE_SERVICE_SCHED, pf->state);
> 
> I should just read the code, but this looks like an open-coded
> deferred_work ?

I wanted to put some joke about our driver, but it is not funny :F

ice-service-task is scheduled both by the timer and work_queue (ice_wq),
there is more flags that I could count around the scheduling, and it is
a pain to stop/reset the thing - I will definitively try to simplify
the thing (esp. given I have a bug with driver reset on me)

but for now, the cited thing is just a little chunk that I have moved
from one function to another (and the whole series is not about a race)
