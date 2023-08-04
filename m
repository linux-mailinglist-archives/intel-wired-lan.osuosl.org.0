Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD2376FF23
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 13:00:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B69CA6148C;
	Fri,  4 Aug 2023 11:00:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B69CA6148C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691146813;
	bh=xpQ0VUfZdxn6C8SpOIWGOQpQcYhVnv2rlZU76TEZZbo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=424cV8SG0yiTSfdg/vAPqL2CxJdPbR5ghdvkQvTYYWRUpKFXWjC7VT8QE9mlx8oYH
	 By8J90eqtjO3JwcvNi67fGkGNwV9G74disLvl5ArCZUTIUFZiQGIXzEOmQgLn8S+mX
	 okUH3wu6cTysUcZXzh42SiE9wN4WCBshvqqTtgqwJEzWABgKrcvDipgsi6iClrwoQW
	 ss26fLAtlOnr6BijV+KkunI46Y1pIjJU71YwHLaBwkt2fqQKbIOFULDEaTY+Jh1q9F
	 2UQfSMTdrnfhclsXjdjAvWwTbPmhdZZRBjR3fg5feGc9S3/myUDswSs2OYAi2mhuPn
	 XY3gqY1sXFMng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f4K06E2f1LLS; Fri,  4 Aug 2023 11:00:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5246460BA5;
	Fri,  4 Aug 2023 11:00:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5246460BA5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DB401BF99A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 11:00:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8146560F86
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 10:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8146560F86
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TIQTdT11xc5X for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 10:59:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3534560BA6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 10:59:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3534560BA6
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="350429799"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="350429799"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 03:59:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="795376360"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="795376360"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 04 Aug 2023 03:59:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 03:59:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 03:59:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 03:59:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 03:59:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eXuPKLJAsQynMuW/eGZYfLSWs4ofA+ii8VcHTGynlN/sYnMIhSPueAA9sn+ptzCg1v6qmD15LTHDeJfkz0l6lS2ZhBdUH04/spg27Wo4G/3vpnv6QG+dOPxx+ZeZNQvjNpC15eNZhX9wKVnNPyMYfbfRrQCUrquvW/Hc77ftaz7BFkxzAGDHHEtgEkah1wLCxyJq/1B7hylGXuFYWHNXyCgFRyV/JYOfCvHxCxCN4RLhoOS25X5+oSN89emDNb7coz3mFTuBX8OPIGXdO+1m5jlEfamXqeKcjAl/qicuzjQXJULzYtDxcQ6z8eP+JXcpue8sMTRVhQWNDVj6crYERw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6OS1dFX5Ssr73k7+ZFNF5ojJif4Cktufw9yJMdQMj50=;
 b=H4XthifDKK0eTBcYwAmyOVHkEY6GRcsHN65k15QZYAko6WNRSXmQR289mGwRFRThZVv9i5qdq4pwLWwQ23r39Cxgrm0GKCvU9pkwI4aSyHiEEGaZ1Sz6Oiy0p8CSQpgCGr13fBWHA2rJSoAqDhBlp5p+RpukljTdnaWrVsiZKICZeVinL78V5Omr5qRdHL3GoPea4U5pFAGS/BNsAq0/7A35DOmRDpIMjF6OMwftwiDtJurzGkJlh2Kbqw8G+8B1WbgGeTyeEu4RE7CmiqV7qf4VFzE1F2XOe7SoefirvnjWDCYGDtuuGPEf9AZgO/eNGFoF81B0QoUhRgSazyhcyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by DM4PR11MB6020.namprd11.prod.outlook.com (2603:10b6:8:61::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.20; Fri, 4 Aug
 2023 10:59:17 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7ed4:d535:7f41:de71]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7ed4:d535:7f41:de71%6]) with mapi id 15.20.6652.021; Fri, 4 Aug 2023
 10:59:17 +0000
Message-ID: <d67257c3-6f3d-7b69-9689-6437f91a5858@intel.com>
Date: Fri, 4 Aug 2023 12:59:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Kees Cook <keescook@chromium.org>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-2-przemyslaw.kitszel@intel.com>
 <202308011403.E0A8D25CE@keescook>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <202308011403.E0A8D25CE@keescook>
X-ClientProxiedBy: FR3P281CA0109.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a3::9) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|DM4PR11MB6020:EE_
X-MS-Office365-Filtering-Correlation-Id: f27d6b97-ca77-4c88-c84e-08db94d9d8ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jLC+CcaaxP1LKuPjs9+HOpMRn+dYXRSAkPJF1k7x9UYaF0lpAQ6zQjvMpBqjc3WzKMJxxZnoIFyE3KQ9vNWgByDUZK0Oj1QQlU5khecNXMIPV+cpah/0T4GvWqTxXgJl4PwGAIcv+Aq5FR9UVjfKXC/HiEWhBE1vDiNYc5M9kIjGg0/U+Irw9OQk1Q3mXhM1YZJz3RET0FvcCFRaj0kVQVAfr/loJzVEivnv+ew1vX7z81DIU42lSUk6Q5aM/gcuuOjWT9/ty4Sd/B4vQXEijSxcQBKeEFkX5Sdp/z/0JO554ubA/YQpGz4rU1KnyavtakEpguEWzXvgOlUDC72PrB8aScZtxc0vJu+vogSZy24bjSzzdVQPHkk5cdfKS8961znXpvTlRIE9hmRB6kpnIC96+IdE4mVflf5c7g37TQoO5ZhDMRu2gpJMvEuYifaP3HnUAJAnxECfejFtYW+e2zEydU0N7dBFAgbEKaHfNgrputXTTtM8hbQCGfU47qc0vtsFhnUjhUdGFkBiHdbaGd/zUY9I3+4C537/o5oVMqkcUBkZfCwBmfty6nAoPzOQcul6iPligU1VljARzPiaSo7i9Y51YOnW9HOtFQsoprTaVtzK8R+qKlKJdv+SID4BojJpypUF8P7Ie9TS4ZkANkUBpqJbGR7imuJzFPmp2HASLY6fTFdwYen1Kr4f90rX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199021)(1800799003)(186006)(41300700001)(8936002)(8676002)(83380400001)(53546011)(82960400001)(26005)(6506007)(107886003)(38100700002)(2616005)(31696002)(86362001)(316002)(6916009)(478600001)(6486002)(966005)(6512007)(54906003)(66556008)(66476007)(4326008)(36756003)(6666004)(31686004)(2906002)(5660300002)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WlZocFNEbUZDSTRpTFpmS0IwbStCaDlVWmtVVm9PVVp2R3loSGtUQkExQndM?=
 =?utf-8?B?VTRTa0RqWityMTFmSkFlbmJxQ2E0MHJrZ0tGbVFWaDdLZ3VoS2dldlFoK0k4?=
 =?utf-8?B?WnhpOUZKNXRGVm1QWERFOVNZMHFXdXhuMXhjUDZGWGNRTS9RaGttMjBIL0FL?=
 =?utf-8?B?cm5LdXprUVVjVEFydktaSDZNMkE1bUhobWhjOE5EWE1wUDN6TGx3eUo3ZjNB?=
 =?utf-8?B?Q1VsZHVxUVRUanlaVjhIL2IrZzNkZXJyWk1PaFQ2WWRNR1BCbHdCb2czZVJr?=
 =?utf-8?B?OGVsOHhjbE9xeWhzNjdmSWMvQk5RRUx5bndJK25HQzNpUEdhYnF0TFhKYjMv?=
 =?utf-8?B?M29OVHFOazF4Y01PczJZaHQ1T0VFQkJhc3lWMUQyTWhnOVRlc0FaZVE0bk91?=
 =?utf-8?B?dHBDU3AxNDZPVUczZnd6OVFSRmJGUUJsQ2l0ekljVVhwbXlnY0ZaeFJJTCtX?=
 =?utf-8?B?QkI3SEhNSEN0a1hOZHZSdWx6ZFZpNEpCL0IyTkxLdkpkQjhNSEhkdHkvZkJu?=
 =?utf-8?B?WUZETnRXU29Cc3QwNVhRRlhIdDQ3bHE5UjN2eWI1eGpSVlFBb1EyL2xmdVEz?=
 =?utf-8?B?eVU0aHVaTnJLL3h4WFQwd2lVclJoWEtabEI2WTBMN0VyT1Y0RDRZNlpuZzFn?=
 =?utf-8?B?Vmp1bENtVUZXV1hoOVFuLzFOemE4QlFjV3lnZ0I2cDh6OUMzN205Y29sSm0y?=
 =?utf-8?B?cUh1L3RDd2wwOUNBbkt6UWFJRndDMXFHZjAvMmw5V3NOMW9adTBvaXFKNCtK?=
 =?utf-8?B?QXFNVDZZaWUzT2J3N0NIY09IbFlGRWFmUTMrSlBiVDN2SVVqQlN2OUZ5enI0?=
 =?utf-8?B?ZTZlOE02MHBDTUJlSlZuQmVGWTVTZG8xK2YrbnZrQmVwNm52VHBCUSthSjBV?=
 =?utf-8?B?YThZOGg3SG1qRnZFcHZGSDdDSFROK0xxNG1QcUMvaDhzR1BrUGdrSzdOT2lx?=
 =?utf-8?B?OGNKNGd0ZFBveUFuaE1XUEhPQ2djNWRPUnJIWTJCNGhlZjAyN1NXdlBPak5k?=
 =?utf-8?B?NzdVNmhEMWZyR2tSaGQvYWVZSE55ZE5PRkhVM1FQT3kyeEhzMlF4NHBnZSti?=
 =?utf-8?B?SHN0UGJTUUdmKzJhOS9GYld1dWFNYnl6K21rMHRCN2N3bE84UXpTTEdhUXRK?=
 =?utf-8?B?bVg5RzBsY2ptZGlIaXphdzNDRzBHR1hDUCtVV2ZId1Z5WUpVOGUxZjBsWWli?=
 =?utf-8?B?M2pndmJuM2F0T1ZtZHBaRWsxaXF3T1FxbUhVRTRyMFVUcFY4Kzk4MkNubWlQ?=
 =?utf-8?B?Z1d4MEIxQ2pySVdKUlZlTUZ6RU5JMy9QM0hDaWM2RndiMTZBUFoyRnJHblpY?=
 =?utf-8?B?a2F0enVaUkJ4SXozNVo0VFRTRzNDZnNWUlR1cytSU282U2JVMC9HRll2K040?=
 =?utf-8?B?cGUyU1Z1TU1YalBycEFCQWMzY3RZZE4wMm9vMEVJNXN6a283bDAyeUVwYzV6?=
 =?utf-8?B?VFByQ0d4YTMyWUJJeG9abWNBUWRPeW5Gdk9PcmY1RDVCUGJpZ05JbExTR2Iw?=
 =?utf-8?B?Y25JMG1Qdnl0MDJlZDhObzVLSG1hQmY2UXR0KzdBQTRDZXNxTzRCMFZiVWh1?=
 =?utf-8?B?ME1IcU5aT2RVWXNmRHB1QmFrb0tMaWVuM0xsdGU2VldVK2ZCeHY0WFRldGsx?=
 =?utf-8?B?aTVRN01uaDQwWEhpQlgxWWlJdk9pRnBiRGR1NDlOd05hVXVWNnJ6bFBSeFpl?=
 =?utf-8?B?MTBGaW9xaXprdTh5aWZLU09WZUd5dWVFZEV2TTRnK2oxRGxjMzFGRHMyT1hE?=
 =?utf-8?B?dmcwRWhTbDMzUndQbXYrNUZLWTUwa3A3dTRGTXNQTDB2WTA3M2QybS9WVVc2?=
 =?utf-8?B?MExSa2d0SjcxZ3RRTFc1Rm1KV2xhMGJseHFDRzlOWXdkNllOdW9OTEg0eTZq?=
 =?utf-8?B?NGwxdDVZdVd3SEdWZ2g0d0RIZlJZRXR6R2VSenVkWHl4NE5QVUtONkE4bUVm?=
 =?utf-8?B?d1I5OGphcStyeCtIQmhrOE5PdGZuaXNxNTd1bGFGM2ZQSkpRV3hPV1B0a2di?=
 =?utf-8?B?ZVNjelBYSmJrbDVCOWhoRnhpQmczUGJVdktuUSsxT1Q2d0RRSzQ3UWN3d3Zv?=
 =?utf-8?B?MTJzWnhVY1hZNys4cXFYOC9VTnBPbThxYyt5TWJ0QU9IYml0Z3pVeDN4YU0w?=
 =?utf-8?B?SWNQenBxbEhpc0NKQk9hWHdxbmZxTEhHRFl5bFpvQml6dS9NdExmVDQrMEVx?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f27d6b97-ca77-4c88-c84e-08db94d9d8ba
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 10:59:17.1359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zCjwCyGKnd2ccI8spqYC6qWZuKpT0t2jV2u09Y+QrwtAv0ArL3JwvOh0rwabHc1YyYo7E+RwEZEVqLnRSwhCEJwcQsDtQJROoxMxEFXmj8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6020
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691146768; x=1722682768;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rsnb87PatC0aP0+GGqnMD9YuHsiFW8y/zoMtgEqz0sA=;
 b=Bz6HFtk78NFKo+4nsj3l6ILpV2x1HXpNpMjmWTfAn3YCnCcTpRDggfwK
 JsHeB1++KucB5fEsNMlJzCTRXE3RHy5/uVDOi669KSXSO2BlSYvh6KAyR
 si6ZXhU30rJVunaHMLD2UCMm8DNprQh4IOQBofeoNLs97tH1DYVtftDvR
 k42uGTlvTnVWsr4s+DtPqgQfqPcsMMYsVAMTMRNuOmY7O8hAkaZTLZL/7
 /qXM7L5rXOy+3C75+FEicjxZvnBvIm0B1elYI2NKruQxBg9YLbOkHB5TB
 9BHF2os0du8HbMHXhIbL1WhJhNAZW2gnqyAiZQzWyond6YWU+eH1a3XNi
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bz6HFtk7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 1/2] overflow: add
 DECLARE_FLEX() for on-stack allocs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/2/23 00:31, Kees Cook wrote:
> On Tue, Aug 01, 2023 at 01:19:22PM +0200, Przemek Kitszel wrote:
>> Add DECLARE_FLEX() macro for on-stack allocations of structs with
>> flexible array member.
> 
> I like this idea!
> 
> One terminology nit: I think this should be called "DEFINE_...", since
> it's a specific instantiation. Other macros in the kernel seem to confuse
> this a lot, though. Yay naming.

Thanks, makes sense!

> 
>> Using underlying array for on-stack storage lets us to declare known
>> on compile-time structures without kzalloc().
> 
> Hmpf, this appears to immediately trip over any (future) use of
> __counted_by()[1] for these (since the counted-by member would be
> initialized to zero), but I think I have a solution. (See below.)
> 
>>
>> Actual usage for ice driver is in next patch of the series.
>>
>> Note that "struct" kw and "*" char is moved to the caller, to both:
>> have shorter macro name, and have more natural type specification
>> in the driver code (IOW not hiding an actual type of var).
>>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>>   include/linux/overflow.h | 14 ++++++++++++++
>>   1 file changed, 14 insertions(+)
>>
>> diff --git a/include/linux/overflow.h b/include/linux/overflow.h
>> index f9b60313eaea..403b7ec120a2 100644
>> --- a/include/linux/overflow.h
>> +++ b/include/linux/overflow.h
>> @@ -309,4 +309,18 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
>>   #define struct_size_t(type, member, count)					\
>>   	struct_size((type *)NULL, member, count)
>>   
>> +/**
>> + * DECLARE_FLEX() - Declare an on-stack instance of structure with trailing
>> + * flexible array.
>> + * @type: Pointer to structure type, including "struct" keyword and "*" char.
>> + * @name: Name for a (pointer) variable to create.
>> + * @member: Name of the array member.
>> + * @count: Number of elements in the array; must be compile-time const.
>> + *
>> + * Declare an instance of structure *@type with trailing flexible array.
>> + */
>> +#define DECLARE_FLEX(type, name, member, count)					\
>> +	u8 name##_buf[struct_size((type)NULL, member, count)] __aligned(8) = {};\
>> +	type name = (type)&name##_buf
>> +
>>   #endif /* __LINUX_OVERFLOW_H */
> 
> I was disappointed to discover that only global (static) initializers
> would work for a flex array member. :(
> 
> i.e. this works:
> 
> struct foo {
>      unsigned long flags;
>      unsigned char count;

So bad that in the ice driver (perhaps others too), we have cases that 
there is no counter or it has different meaning.
(potentially "complicated" meaning - ice' struct 
ice_aqc_alloc_free_res_elem has "__le16 num_elems", so could not be used 
verbatim, and it's not actual counter either :/ (I was fooled by such 
assumption here [2]). Perhaps recent series by Olek [3] is also good 
illustration of hard cases for __counted_by()

>      int array[] __counted_by(count);
> };
> 
> struct foo global = {
>      .count = 1,
>      .array = { 0 },
> };
> 
> But I can't do that on the stack. :P So, yes, it seems like the u8 array
> trick is needed.
> 
> It looks like Alexander already suggested this, and I agree, instead of
> __aligned(8), please use "__aligned(_Alignof(type))".
> 
> As for "*" or not, I would tend to agree that always requiring "*" when
> using the macro seems redundant.
> 
> Initially I was struggling to make __counted_by work, but it seems we can
> use an initializer for that member, as long as we don't touch the flexible
> array member in the initializer. So we just need to add the counted-by
> member to the macro, and use a union to do the initialization. And if
> we take the address of the union (and not the struct within it), the
> compiler will see the correct object size with __builtin_object_size:
> 
> #define DEFINE_FLEX(type, name, flex, counter, count) \
>      union { \
>          u8   bytes[struct_size_t(type, flex, count)]; \
>          type obj; \
>      } name##_u __aligned(_Alignof(type)) = { .obj.counter = count }; \
>      /* take address of whole union to get the correct __builtin_object_size */ \
>      type *name = (type *)&name##_u
> 
> i.e. __builtin_object_size(name, 1) (as used by FORTIFY_SOURCE, etc)
> works correctly here, but breaks (sees a zero-sized flex array member)
> if this macro ends with:
> 
>      type *name = &name##_u.obj
> 
> 
> -Kees

I like the union usage here, it's a bit cleaner too.
For the counter param [for my, perhaps other] usages it does not fit 
well (as of now) :/.

I will post a v1 series to move this forward though :)

> 
> [1] https://git.kernel.org/linus/dd06e72e68bcb4070ef211be100d2896e236c8fb
> 

[2] 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20230731150152.514984-1-przemyslaw.kitszel@intel.com/
in that [2], I have this:
-	cmd->num_entries = cpu_to_le16(num_entries);
+	cmd->num_entries = cpu_to_le16(1);
as "num_entries" is not a flex array counter :/

[3] 
https://lore.kernel.org/netdev/a8466f4b-f773-4d0a-f22b-34c83a7aa942@intel.com/T/

-Przemek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
