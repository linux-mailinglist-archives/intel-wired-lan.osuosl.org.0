Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFCE7990E5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Sep 2023 22:12:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB7F64149D;
	Fri,  8 Sep 2023 20:12:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB7F64149D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694203952;
	bh=b8UWDUWpx2iynlcoZNnj7TL9bgtcV+K7/5/5ZPuNKnI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8SnHJjAT6utqMYFyZlfh1CQguznJ5sGk+JBvf4dVg7d/RKi5YEBc3CyvCDqbxX/sz
	 BIqoriJWCKisaHj9tcK/LlkeBtlPdz/oIJ8eIGGyPMwagnqoTubOPrXBf6pN7B8kZP
	 NHtYabLINXpX+If60LgOY+fsCo0VPtAgc9Iv8dcdCSImybyVmT+e+KAtLizznch7mz
	 NGO+gsIn/k18aOwye5ubVqJzoTmzL/DILGcVoSBEusKvOOuBfZheogg3IChMhNcZVw
	 Y/Jf8142VkxRtazfA63/tQmgo7EUpG4/DdE3f4HMhbCidDl2o10GoQJYVOLDgGKM5H
	 z2FupUBrvWfRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hUPz2Ytj7PSA; Fri,  8 Sep 2023 20:12:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 508CF410A4;
	Fri,  8 Sep 2023 20:12:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 508CF410A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 314111BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 20:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 04914830E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 20:12:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04914830E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IDGLoDi0LK9O for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Sep 2023 20:12:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0EC4F81FCF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 20:12:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EC4F81FCF
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="381559155"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="381559155"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 13:12:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="745727627"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="745727627"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 13:12:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 13:12:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 13:12:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 13:12:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DBcCOCzyQ5uPt6e9zQs4dxVyO1KHweYgMJqL36YgdQL+1q1OLTPR7csQKS9U6uw2vqCyUz/PxIFoSi7hUio5AaIQtqpoQAWz212bEcoBd9eHNlSAQWDu1NTYB1GLmj/lvhURyK8g05RHWx0ppynfh+2J2o7rJpIj3t9NJzEgb6SXFqcs3b9wc+MX7kvkicvVjcLB/UulpCuJ7mLXNhLjkfnXm+ATE8JG4pv9Of6aTEozXcvGhpS2OSsdaN+e0TQZmTlEyrPf5rmB4YB/MxVtcAxxEyI85HOpqaDQJU6LXlzQNSakRTCkr5NhxZHfvtQaCr27FmSSWahDZeE4WmCHYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2SBD3Q84RBZMJUITc1EE4NoSnpBH20l9bb1DlOtidHk=;
 b=kk1TbTxMMYAgYnUn+YNbE9ZgX0OnD1mWEMt5lvKqUkmm1sphOldTE3a48/UCPGzywmWs5Gs4SOeAcZPsMT3YBpVCu6U4hEgwMaSfhPuo0jLYdVI1MZC6wBYg2cleRbHF5GCJTcZea/+vcbqKQYMYAiEh8Af4Jt+rZ8mOtlcD9iHIhq+n6bHIoKAWpja6xBCtH5w7i4VuHAyh08b0T6+DxwjvnBYdobSZBob0esjI+32G1s+2BVKUTfR7yN547gZVzSo96tJBQ5cHilIF2q8WAfRLBh//KAAEzPfnJ779kaeLjeZHkihM8BZKMuSXJREGwmtj5EPpmsoeZceDFIaelg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CY8PR11MB7848.namprd11.prod.outlook.com (2603:10b6:930:6c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 20:12:19 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 20:12:19 +0000
Message-ID: <45868903-e8d7-f514-13f4-f4599a227730@intel.com>
Date: Fri, 8 Sep 2023 13:12:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Maziarz, Kamil"
 <kamil.maziarz@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
References: <20230908113101.153591-1-kamil.maziarz@intel.com>
 <MW4PR11MB5776D2C4833945112513F628FDEDA@MW4PR11MB5776.namprd11.prod.outlook.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <MW4PR11MB5776D2C4833945112513F628FDEDA@MW4PR11MB5776.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4PR04CA0339.namprd04.prod.outlook.com
 (2603:10b6:303:8a::14) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CY8PR11MB7848:EE_
X-MS-Office365-Filtering-Correlation-Id: bbf6c113-c676-46f7-d874-08dbb0a7e7b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aM7sxJEHo1u1C2P2WT7YZ1IxdDZpMLoZnFOU8tHhbcCQ0IqQf1i7eVJCpq56nO/R4Y2lMm58IX2fNfLsJwty1L536VpE2Bazmf0F/EVU3rAt95ws0IZFVLjZuUm95Ur8HFQjJAOWptS8nndPOl/mdjL3yeg60vfIQn4dF/Ihta8RnlahcuAb+zLbBz7fCn5++dlMjL7vA5f5+6CqqLDLz5IigqhtrUBSIH5Rr9B9j/c+dkQbXg5LK2QIeEyeait+fs8NPbjXdqCfrLUAhHPv4bbMgWTIgmByUDDsC0Q5B6psQe8AboxvflHLLOEwiBQgJm894bKEOqr0QNYelGt8QH2lW3105jDB/Zh0XO36spG255K1yT4UaKZFjK8M779Hl+S9DyNRFT+oghQSuqXuhaNWjZFOUmcEz0OFnoARhpwf/reOuuTLy9flr0a4IDOYmVXc8Zj1GtM4ucGp8MoC6JRmfzlP4vRcNH0N6WiYLruN3Rm/Tsi2NBWTGup8Jzb77AHAtoZ/+EgeaW1/WNHDh8LQJ6WF5TNzdqD2nxyiRaAVd1GRn7rk9wq4XUSXhOkb7XsQulYCWLEggcgNyrO0wbqgA3VAJ0DTHu2BJFrjvnsXBQ9Ao9rXPrseAdz+z7yV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(136003)(376002)(366004)(1800799009)(186009)(451199024)(53546011)(6486002)(6506007)(41300700001)(316002)(966005)(36756003)(2906002)(86362001)(478600001)(31696002)(110136005)(66476007)(66556008)(6636002)(82960400001)(38100700002)(66946007)(6666004)(5660300002)(2616005)(83380400001)(8676002)(8936002)(26005)(31686004)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjlWL1F5WTA5eTMwS3B4bDcrMSs4b1R6dXR0UXdEVDMzYUE1REVmbnlxKzF3?=
 =?utf-8?B?aWJVVWdvR1hWenlJK3ZRNytYNCtQVjdkeEx3UDY4aXZmeWd2bnZzVUxNMXBm?=
 =?utf-8?B?TFVBWUlqTjBDQmlhMVBMWW9CQ2VXVGdEaGlHZHUxSk5leFYvb1VKWFVtcUtT?=
 =?utf-8?B?T3E0UzYvNG0rOEtwUVVHdWtsZzJwTGgxcXhQOWhYeFJteXRIeW5aaTBTSlZx?=
 =?utf-8?B?NURrT2ZRRlpLUUFRdS9mN3ZuN2tjWEtsWlUydy9nVDliN21aeTBjdXBwK3pi?=
 =?utf-8?B?bHJMYVQrdTUrci9lNzVTbGQvVnRlYUtLUGdrd2tGaWRXT0NVbCtBclo2QkhC?=
 =?utf-8?B?Tityak5LMlJENWJjWU1Yb1lGb0EwTHAzVXEwM2NwZFFreUIvZlpSU2h6Qncv?=
 =?utf-8?B?Z3VhdVM0Z2VHVGNOWFhCUzZBa2JhYno3bzJwR2JFU2pRMkh5NTM0QTN5VDdR?=
 =?utf-8?B?NWZmL1h0VFo3bUloMWJXZXNWU2QyR1NtaDkzalBucWV6d1M4SEl3Z0JoczJk?=
 =?utf-8?B?WXk5c3JwT1pRcDJXbkprTUdlS0tobXJxdk0xeDRBRmo3NGN0ajliUWV2Q3N3?=
 =?utf-8?B?OVRnajc2Ui9xdXVEdkpLdmp2elFLT2FXSXVNSVp3TzM3QWVHd1VZbkNyNE1q?=
 =?utf-8?B?Q3ZQbTJNc1NrMWYrYU1wMU40VERvSytidHpjNjRiNGtxaENIS0FpV1Nrd2g3?=
 =?utf-8?B?a0YrK3lNYUJGbUVxUGxQc3pLeUtqRHUwMFoxdnBnN25hSU1mTWtDN1pSSlhZ?=
 =?utf-8?B?Y1hzWUtLRU43Z2J5SVN6THR5cUUxSTIvMjF4TzY0c0hhV3VIWGkwUHJYNlFx?=
 =?utf-8?B?R3FQUlQ4ZkNOR1VQbmpvMENFK01WQisrdGR0ZlMzSW11NWNIajRHTFlkKzJ2?=
 =?utf-8?B?eGd6a0E2UTcyYU9nbS95MFFJMEQrblVsR29qS1gvYVk1SlBJUW1BVFNLMXNw?=
 =?utf-8?B?cDVIZVRUUDNzbUFpUm1YMzFuaE5VMnRKNU5CSjAzUWE1UzVZcGlQb0NRY3NC?=
 =?utf-8?B?SllFOGI3SWNkMVJaY1g2WjJoN2dpcXd5TDRMYjlOMWtQZC9VajlrVkFhTnNk?=
 =?utf-8?B?R25Gb0N3U2Mwb3E4bUNPMFZ0dm5YNEtGQW9iSkhlV2tiems2YUFvaUNVY0lh?=
 =?utf-8?B?SHh0K3JDQStJYWg5OWVxWkNYWkZERkUxbWs0L1BIdTdEYXhEV2RNSTZnbUZw?=
 =?utf-8?B?akdTSHUrT0ZGZXh4QjY5cDJWWEd1VXdVSlZMa2V5STlkREdDU0FZN0VoT1NC?=
 =?utf-8?B?alI1NDkySWkwUnJMRytMUklJbE0vWmlma2R6eDJGM25veEJlcW9WbHBicnZs?=
 =?utf-8?B?QVNDWHkrSFVNZ0VNUlFteTlTY1NJZllYUUFhd09DR2drdVJhcDgva0VjdUdM?=
 =?utf-8?B?MmtkSDNxTlNQREhEbktzV2NOTHErSHRwQW52VVJlRWZkb3V6NVloRi95bnly?=
 =?utf-8?B?UkcreXUzbllhbGFZMHZScHoyQk9yQ01xNEUwT3gzYkpqeU1ScmlLZURuRngr?=
 =?utf-8?B?a3lieXhRU2EwdFprSHN3LzNXbDF2STNjRHE3Ry9XVzIyMCtRNzdGWHBKREdk?=
 =?utf-8?B?bU9aZWxGNjZhZWpaS1BOLzJENUJqT0xvck1NN1l3V3dTbEdQMzc1aCt0THZE?=
 =?utf-8?B?OHEvYkFsbjhkenB3blRqcWY3UnhNekxKR2tGTEFEc1owNVN3bkVqTG9jU21s?=
 =?utf-8?B?OWJCT1FLY2dqeFBZWmhFZE1sOTEwK2lQMEhaM3ovNW1KbThGcVVFN3lZUDRx?=
 =?utf-8?B?ZjZLVDVQSURIVFlWOTRuLzg2L2owdE1YL3lydGVkTjVsRHZmSlU2MjJpOVps?=
 =?utf-8?B?Uis5ZmdEV0c3aHp6MWNDWWxkQTg1cVZDV2FGZkUxZncyRmN6UkVFeEF0c3Q0?=
 =?utf-8?B?V0JIYUlzaEFTZjlPUUpWOGdhYktSNmlGOEc5VTVCOVBkSjJiNjNwV2FQSDhC?=
 =?utf-8?B?TVljUnJxZjBHTG8za1NIc1NSYzZoQllsQ0w4RUd1N05XY09JdlpCSVVBRDVt?=
 =?utf-8?B?em1HRnR1Z1V5UHhHL05HbDJGUW82NzJ5WWJDNko1eDdnNXZZZXQ2MHQzVlZQ?=
 =?utf-8?B?V1kzOTZEcjgrbmdBZWUxb3owQ1VJcnVCNC92VS9FNkNWL0hTajFKZ2VyeXE1?=
 =?utf-8?B?TzdnZllCV2FDaXFZTjFOLzZHaHowWE14QUhlMFJ5cGxpMHJJdTdZTVFqRUNj?=
 =?utf-8?B?dmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbf6c113-c676-46f7-d874-08dbb0a7e7b2
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 20:12:19.8559 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /dUS+ofJ5H/8NrO9smFjdXZ07v1wx+LpohyR173TEr9miPEXlr9KRUAZYDwDVtsbDvcBaeoDN7zW7WujY6OdKiQhqkZSIgInz4o+EacVERg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7848
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694203944; x=1725739944;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XAvvADyQpWpPYiX+7jUWR2DfTj8TbW1SIRdPttOErXk=;
 b=LoTHoVXgd3KqW2vaS45lmpv8yKgLnA4MUQZVb/Jx+/ojjXcjo840tzuu
 eO0JOW6z1/rv9pvSEe/tCEM05HwkARjpySbh3z5jjjPgKaRrBpSLutc6H
 B1+2LZjGq0hL69n7VvaT+rzE21U4pmn430u+S4rnFSzorPpnkJCCA9RxF
 PE7DWNe6SUmRJsdw9jQcmaEjy/lmv3n7KmoQille1JL9Pzu40KxLJ229o
 gCWNv9K1XCQpNPCMG8IRIY3mXSwBIL0XTuDvPoSgG6NsLMZNmpTua7xz/
 lHYQx6bJcYKAh53+R8e/+xMSRcGXIWNFY1lgU5JNRlFAzpNepJ2mGAXSp
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LoTHoVXg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: don't stop netdev tx
 queues when setting up XSK socket
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Cc: Maciej

On 9/8/2023 4:36 AM, Drewek, Wojciech wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Kamil
>> Maziarz
>> Sent: Friday, September 8, 2023 1:31 PM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: Maziarz, Kamil <kamil.maziarz@intel.com>
>> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: don't stop netdev tx queues
>> when setting up XSK socket
>>
>> Avoid stopping netdev  tx queues during XSK setup by removing
>> netif_tx_stop_queue() and netif_tx_start_queue(). These changes
>> prevent unnecessary stopping and starting of netdev transmit queues
>> during the setup of XDP socket. Without this change, after stopping
>> the XDP traffic flow tracker and then stopping the XDP prog - NETDEV
>> WATCHDOG transmit queue timed out appears.
>>
>> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
>> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> Why Piotr's signed off? Is he an author of this patch? Missing Co-developed-by?
> Although the patch is too small for Co-developed-by tag IMO.

Also, missing a Fixes:

>> ---
>>   drivers/net/ethernet/intel/ice/ice_xsk.c | 2 --
>>   1 file changed, 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c
>> b/drivers/net/ethernet/intel/ice/ice_xsk.c
>> index a7fe2b4ce655..cd56ceae8aef 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
>> @@ -179,7 +179,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
>>   			return -EBUSY;
>>   		usleep_range(1000, 2000);
>>   	}
>> -	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
>>
>>   	ice_fill_txq_meta(vsi, tx_ring, &txq_meta);
>>   	err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, tx_ring, &txq_meta);
>> @@ -268,7 +267,6 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
>>   	ice_qvec_toggle_napi(vsi, q_vector, true);
>>   	ice_qvec_ena_irq(vsi, q_vector);
>>
>> -	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
>>   free_buf:
>>   	kfree(qg_buf);
>>   	return err;
>> --
>> 2.31.1
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
