Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C215371F24D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 20:46:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B1E8843CB;
	Thu,  1 Jun 2023 18:46:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B1E8843CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685645196;
	bh=/pNoIEq/CTFpUwa5fLcBqdlgfEsfbmdSBB6jaNpfnLo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YNjLeLCccDo/ubN9ZWcFybOGgAzwWgAO5mAz/XlA+n5bgfNlTZLR28byUdRDHjY7L
	 nnZbA50sX0eElD+haIGib0cZ2tMnigmVIjTByaNOTx8Immn6mK5emFlch4aJzR/P4X
	 5TQkDIUNpZaWpWBkFTb+pEWtUd9A1Eo3Kftjecfw23W1835Zf1Sg9hYDTaUUZmX5f+
	 /a8fb0AzZ2BUo8GANHIwruAw7Z9YKvZdge/T/eyzfEJ6aDINFSiOf3ffKo5EjYFMai
	 vZJaPZvTz5ll7wqd73ve2oM59cDP+W97iQzZkZI8ewYKhQ7IFoRuWhYZI3P5ThWAND
	 7fJFbSC0Ok/1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Zzo4WQvdKTk; Thu,  1 Jun 2023 18:46:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3CAC83530;
	Thu,  1 Jun 2023 18:46:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3CAC83530
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88A541BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 18:46:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5EEB6416F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 18:46:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EEB6416F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JyZMxO2Ou_iL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 18:46:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D8F54017A
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D8F54017A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 18:46:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="419177544"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="419177544"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 11:46:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="701660887"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="701660887"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 01 Jun 2023 11:46:27 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 11:46:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 11:46:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 11:46:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 11:46:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ERDRlmIqf7qt2rscNmrtOC0UNBrRXn6NMqzPn5iR1QVwOR1UkYvmugyaW/pWdKivc79V2wdfsAHy2VMhMI7hcw650umnvoxNUdYqeGXa+TnXdZMXvl07v0FKhcNXiBHMH4L6CTjQCQcyji40dOsBL/2EyX72z7ep5fnxxam/7ZQC8e0dBlvc08R4B5nSl01TIX5Z/Q5N2V66MaAL1KG1AvNUe3/uodoy/iwkqU79B/W1Hvi0TI+356KTGMMGmVnnXO1fNZtyGLuNxJlhG/ayaNXJRpne3QhsTCwiQRmCQSdfTSnSLDl7u8oPzLjHjousaWW5ZLuFLHOuJaagLFHKsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FPQaMSkporK22AOWy+UNmKzIYy4Atka0wh8nYgT9WG8=;
 b=hqlJXDxnE5TruWjn3g5yFxMHnCb9rixXdv/TfzZv0MuX0Ct+EhNFrsN55C5TTIEZGu/60arwRG0g3AKO8tBvb+8mOMP5CX1Jg1az4bsdsNAN5vVk96D8WH/Ol+vhE+iCUeKtcqUjVwM4MRCHUNcd3kP90qEpqow1EcVYbmSVntAEA3e63vtHTByyyrxDgbMnXqv193IqoeZsM5+TJJw208NntnmjBdEkjErK8tPQiVtFqhNi77My2QQhRfvFTO7fijh74GBz0bbOG75XqqYcLDZLm1GDPBLHbEWn59ExPKjR84OLWjlAzTIbhgHgBikNr3KcPjSQ1/8ovlzLKdByKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by MW5PR11MB5908.namprd11.prod.outlook.com (2603:10b6:303:194::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Thu, 1 Jun
 2023 18:46:18 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::ce1c:e002:49d:9185]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::ce1c:e002:49d:9185%4]) with mapi id 15.20.6455.024; Thu, 1 Jun 2023
 18:46:18 +0000
Message-ID: <ff2ae1ce-98df-48af-8079-4b47e5828f0d@intel.com>
Date: Thu, 1 Jun 2023 11:46:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>
References: <20230530174605.2772054-1-jacob.e.keller@intel.com>
 <20230530174605.2772054-6-jacob.e.keller@intel.com>
 <CADEbmW0zqcb9AqHTcy=+bk70ippSR0Ze9FJDMcXBAeT7XWgsLg@mail.gmail.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CADEbmW0zqcb9AqHTcy=+bk70ippSR0Ze9FJDMcXBAeT7XWgsLg@mail.gmail.com>
X-ClientProxiedBy: SJ0PR13CA0127.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::12) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|MW5PR11MB5908:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ef2d484-93eb-49cb-8916-08db62d07c65
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TFnMFpwoh1rivP5JfUIEW29KmBp/hZWkAa+VCAVhwTyCJ4niy2S8WBzKujPeFbApeJYE+IxKMAyQo1ECzFIPMjnh8TMppJVWhuzsgvLjtfTfF3tZutqCGUx8XL+9eVjaNvpqw7tAce2YmPUgBlai1bgK+PhYtbNZ0QNRdGkYC9P0j1GFZEdjq4Re5v5012fvdwK+mXs08ZyarpzrsLugRO0KRD331DoM59TlYdOBvnOLbuW/yTsQSYTiAMdBuoKRcIIiBPypy8EAEBhvJCsTVwpPG59bQYqOGGluZI70POj+MjuJugDn+sz5NEAGr45H9DzjW0gXNJFKRs06DuYAk+HrMlkyWG+IJxzSeek6km0Y+JnYWkwx0+/n6akevttGt3Ko1l3F9hu9HIBsFuYCU5KYkKd/X41vW4Rj4uTu1w9jcQDr2+ewYuZlenaC0/HFVtKTTJzxmS3rdEHTaW0mWEU1QtQHy+XWEkr98tRNzUSbRVvxU2TzG8/PeR3/sjMdBAmKNfgPVvGEFSHXRzlEH7oq0AX3tHbZ7L3pKtHe55DgtSmLusDlsRImRoiOlyxJ23BftWUfY/Bz103G99DrisBJmEeMOyQAW20ceflwawizQcO2JCRML8xAQ/vDiCnfKktFwFwtCJ1muUDaIJF5Tw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(136003)(376002)(396003)(39860400002)(451199021)(86362001)(31696002)(36756003)(478600001)(54906003)(4326008)(316002)(66476007)(107886003)(66946007)(6916009)(66556008)(6486002)(41300700001)(82960400001)(8936002)(2906002)(8676002)(38100700002)(2616005)(6512007)(186003)(26005)(53546011)(6506007)(83380400001)(5660300002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTlmZnMzK012NjcyS1AzZWFXejB2bFdxMXN6T0RQME9TZHlYNE5IQ3VFNHhQ?=
 =?utf-8?B?bmk1ZDBSei9RVmN6c2RNNlBjcUFvYXhjcHhsYmp0VDJsb2NvY29xZEVrMTlX?=
 =?utf-8?B?eUhJSCtrUUNTOVliR1RiSG1mVzR5bTFNeVg3TVJwTWZ3WXNodkRUOEM0V2RV?=
 =?utf-8?B?WWN1cC9lczhXOGVTVE01SWFoWm5sVEhzVnVobGR3eE16a2NJbWF0bU9GTUpH?=
 =?utf-8?B?VDhHMzRJRGdYcUpwSkdPSlhFL2YzYWs1c0JSaCtBWWtXUkRsY1M0SkRhd28z?=
 =?utf-8?B?R0FWZDdzNDl2a1Q4aStvd1JnNGl6bGo0Y25tT0p0a3djd1NJZkZHM3lMVTZv?=
 =?utf-8?B?cHlxN0NucUFsVXJaZG92Q1BsSjVIaGJndlNCeUR0cGV6RDlvQS92dmloajhi?=
 =?utf-8?B?dVlpTjN1ZWFEY1Y3bUVYcitZOGMzTlhoeTB1RnozQlZ1c0s2RWpKcmVWNmND?=
 =?utf-8?B?aXQ2c3FWSDVyVmc3Snl5TFY2emhTTXkrZEtRSkp6dHlYNzFJVVdxaDhOd3hx?=
 =?utf-8?B?aGVhTGQ5TGRrYUxjOWE5eFlWbjJ0Rk1sR0p2Uk82MmZqN1E1a2FaYnJibjZk?=
 =?utf-8?B?R0ttaEFyOWdaRWdtc2U3M1l6d0srU3Q3QlVCMSs5Zmc3QkNXN05NR3I3cXZW?=
 =?utf-8?B?RDUxaTgycVRMQ2pVMDl2Y0h0SDFZWUpTejJOMDlubWV4Nk5iSFM4NTFGZ2Mr?=
 =?utf-8?B?UldvU0k5QkJhUURoWGVLRWZBazN5OTNMR0EvcnE2Y2l4N0ZCMW5OWWE4VkV6?=
 =?utf-8?B?Z0thN2NnV0FGZUJOdVNtZk9nRDAvR2JHOXg2TmpTRHdmR3NwVCtXSUFIRk5F?=
 =?utf-8?B?VWF2ZU1EakpFVmpxYVJrd0RsSFBwYjdpajI5V3lhZzlhR0ZKTmdtS1NUZ0Rm?=
 =?utf-8?B?Z1dzakhpWFJnRWtRUy8wTWVwSlc4RnlYeUd6WURUckxGTGZNK2VIQnhxYm1p?=
 =?utf-8?B?RHJTUXQyYzI2VU5MQlVrdjA0UDg1Ly83S216SW9Eb2U3NHVMNFdnOUticWV6?=
 =?utf-8?B?azJ6aE1KaWNRbW1kcW1xZjZ3OEJQdDVWaXlFWW12dUk0cnJpcE9sVDh0QjdM?=
 =?utf-8?B?N01HRGFxMm9tbGRXdTlBemxRMGdSOURQN3QzTXRxcFRUbEhsNTBXZGtOUS9W?=
 =?utf-8?B?aVU3SzE4TlpwZzF3ZW14bng4Y2dXc3N2RFFSYUxuNmpxS1NUMThqeHM0TmtO?=
 =?utf-8?B?NXZVMWUrL3drRURiUkhwSFlGdjM0S3pYSVlMWThtRjBmck5iUGo4dUFvRTdU?=
 =?utf-8?B?UFNTQlBTeXhGUHlmU05icGFLWDVMaDFmZ0c5amw5c1dPQ05UWDdyZ3NjTUUy?=
 =?utf-8?B?d1JHRHozU2pDcE5VeXNqcEpLYUVLaE9pZFphUDJjeW96Wm1pUjZTSXp0SDR5?=
 =?utf-8?B?ejhBaTZRTFZkRFNEL1p4NHcrTEhHQ254bzd5VkJGZHlMa1ZWemZwdEp6ODQx?=
 =?utf-8?B?V0dRM2ZZK0NWR0ZZTUhmaGpEMFNHTUNsckQwdjRrWmtxdk1teVpEUWhwNkhY?=
 =?utf-8?B?ZWMwR2Z3N2p2TGFjTW8xTlRMZ012eFFFbFkrZmJwZ1J4TTAxUmkrRllNbkxx?=
 =?utf-8?B?NnJqOTdWWmNvNjM1emdGMmVpYUU5NGVoV1FuYXpadElId0twenY2VTduRHBS?=
 =?utf-8?B?d3dFaS9uZHQrSUc4ZG1NU09yOEl3YXZZdWptTWhoV3lHUzkwN1ZHQTlUak9a?=
 =?utf-8?B?c1U0c2xrTE9oY3V4MVRKMmNCbWhHTEY0ajhpSUxpZlYvM1BzSHc4Z2xxb3I5?=
 =?utf-8?B?QThSaDExQk50YzVrNnJzaGVLU2pHV3JpaXNBZ0EwWjFMTS84bHhGNXAycXlN?=
 =?utf-8?B?a3dDcXVkcG90bmY4VEJzamNVOXpEdmlZZDFaQWN5eCszSjBrYmpHVDFXYlN1?=
 =?utf-8?B?S0U5WTZuKzVUM2FZMi80Y2xuUXQrMnVIMVFMZElJbGNDRUJ0bDFtRmRqNmor?=
 =?utf-8?B?ZExYVXA3TlFSMnZXWEdjOWxHeGNKbUZFN2FlQUxtSnN1ZFJ0MFlWWDdCYkZ1?=
 =?utf-8?B?dWJFZ3VqV3ZkQU9TRU5TN1d1ZmNaZ0Vja0kwTE5xUXF6eUo5cUxnT09pdWZz?=
 =?utf-8?B?QWdXUyt6SGFFeWUyM0NLcGJwTVc4OThHaVZiYXE4dTFFSWgwTFlQQ21CWDNo?=
 =?utf-8?B?aEV3S29aeGplN1R6R2JFd3UrSGhOTXpYL2swVyt0bzVrS1I3amJoSzJrTDlx?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ef2d484-93eb-49cb-8916-08db62d07c65
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 18:46:18.5827 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6MVteJkiBhXL3r+9pvY83zGL9lFxzMBDxzH+l+JYi7MTUy5xFejmszI0HrIC2sUuEY/d8jVYbrN2FdbgvWru/LAqc407qSAx6zAVErye8xI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5908
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685645188; x=1717181188;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=22e7pI9pl4T1XEhFNTXNEsSoBr7W9clHXv0Bb/p+3IY=;
 b=av/GIcVgn7OwN4LY6DAXbjkduKeWxlQTZe74cwiDj3CEJAW6rnuix8oo
 C6UyWaFfTqb+MKHins32BObBUa2AE0t/tK+TC+yuNylEGQPQTX/bTvIU+
 tp28trp2m0xOZjnwB9ceYF12hz5JnJus2SOcIeSE5/kuNj5yyeD0/1x6x
 qWKpj+jK04CXSPoycv+lQUyZRrTxlb0/jpdWpkY8GApR01elllldpUqBe
 okFWkWr2jFhZrXxvL2qtzbENbs8U5tom6mKR9rKGKUUTtrXneXu1FBG3x
 D5PrWasOOjh0/bivx1K4ObqdjwJXtBh88CW09zcuFeBWZQsHohwoSyIam
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=av/GIcVg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: do not re-enable
 miscellaneous interrupt until thread_fn completes
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA1LzMxLzIwMjMgNzoxOSBBTSwgTWljaGFsIFNjaG1pZHQgd3JvdGU6Cj4gT24gVHVlLCBN
YXkgMzAsIDIwMjMgYXQgNzo0NuKAr1BNIEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50
ZWwuY29tPiB3cm90ZToKPj4KPj4gQXQgdGhlIGVuZCBvZiBpY2VfbWlzY19pbnRyKCkgdGhlIGRy
aXZlciBjYWxscyBpY2VfaXJxX2R5bmFtaWNfZW5hKCkgdG8KPj4gcmUtZW5hYmxlIHRoZSBtaXNj
ZWxsYW5lb3VzIGludGVycnVwdC4gVGhpcyBpcyBkb25lIGJlZm9yZSB0aGUKPj4gaWNlX21pc2Nf
aW50cl90aHJlYWRfZm4gY2FuIHJ1biBhbmQgY29tcGxldGUuCj4+Cj4+IEFjY29yZGluZyB0byB0
aGUga2VybmVsIGZ1bmN0aW9uIGNvbW1lbnQgZG9jdW1lbnRhdGlvbiBmb3IKPj4gcmVxdWVzdF90
aHJlYWRlZF9pcnEoKSwgdGhlIGludGVycnVwdCBzaG91bGQgcmVtYWluIGRpc2FibGVkIHVudGls
IHRoZQo+PiB0aHJlYWQgZnVuY3Rpb24gY29tcGxldGVzIGl0cyB0YXNrLgo+Pgo+PiBCeSByZS1l
bmFibGluZyB0aGUgaW50ZXJydXB0IGF0IHRoZSBlbmQgb2YgdGhlIGhhcmQgSVJRLCBpdCBpcyBw
b3NzaWJsZSBmb3IKPj4gYSBuZXcgaW50ZXJydXB0IHRvIHRyaWdnZXIgd2hpbGUgdGhlIHRocmVh
ZCBmdW5jdGlvbiBpcyBwcm9jZXNzaW5nLiBUaGlzIGlzCj4+IHByb2JsZW1hdGljIGZvciBQVFAg
VHggdGltZXN0YW1wcy4KPj4KPj4gRm9yIEU4MjIgZGV2aWNlcywgdGhlIGhhcmR3YXJlIGluIHRo
ZSBQSFkga2VlcHMgdHJhY2sgb2YgaG93IG1hbnkKPj4gb3V0c3RhbmRpbmcgdGltZXN0YW1wcyBh
cmUgZ2VuZXJhdGVkIGFuZCBob3cgbWFueSB0aW1lc3RhbXBzIGFyZSByZWFkIGZyb20KPj4gdGhl
IFBIWS4KPj4KPj4gVGhpcyBjb3VudGVyIGlzIGluY3JlbWVudGVkIG9uY2UgZm9yIGVhY2ggdGlt
ZXN0YW1wIHRoYXQgaXMgY2FwdHVyZWQgYnkKPj4gaGFyZHdhcmUsIGFuZCBkZWNyZW1lbnRlZCBv
bmNlIGVhY2ggdGltZSBhIHRpbWVzdGFtcCBpcyByZWFkIGZyb20gdGhlIFBIWS4KPj4gVGhlIFBI
WSB3aWxsIG5vdCBnZW5lcmF0ZSBhIG5ldyBpbnRlcnJ1cHQgdW5sZXNzIHRoaXMgaW50ZXJuYWwg
Y291bnRlciBpcwo+PiB6ZXJvIGJlZm9yZSB0aGUgbW9zdCByZWNlbnRseSBjYXB0dXJlZCB0aW1l
c3RhbXAuCj4+Cj4+IEJlY2F1c2Ugb2YgdGhpcyBjb3VudGVyIGJlaGF2aW9yLCBhIHJhY2Ugd2l0
aCB0aGUgaGFyZCBJUlEgYW5kIHRocmVhZGVkIElSUQo+PiBmdW5jdGlvbiBjYW4gcmVzdWx0IGlu
IHRoZSBwb3RlbnRpYWwgZm9yIHRoZSBjb3VudGVyIHRvIGdldCBzdHVjayBzdWNoIHRoYXQKPj4g
bm8gbmV3IGludGVycnVwdHMgd2lsbCBiZSB0cmlnZ2VyZWQgdW50aWwgdGhlIGRldmljZSBpcyBy
ZXNldC4KPj4KPj4gQ29uc2lkZXIgdGhlIGZvbGxvd2luZyBmbG93Ogo+Pgo+PiAgMSAtPiBUeCB0
aW1lc3RhbXAgY29tcGxldGVzIGluIGhhcmR3YXJlCj4+ICAyIC0+IHRpbWVzdGFtcCBpbnRlcnJ1
cHQgb2NjdXJzCj4+ICAzIC0+IGljZV9taXNjX2ludHIoKSByZS1lbmFibGVzIHRpbWVzdGFtcCBp
bnRlcnJ1cHQsIGFuZCB3YWtlcyB0aGUKPj4gICAgICAgdGhyZWFkX2ZuCj4+ICA0IC0+IHRocmVh
ZF9mbiBpcyBydW5uaW5nIGFuZCBwcm9jZXNzaW5nIFR4IHRpbWVzdGFtcAo+PiAgNSAtPiB0aGUg
VHggdGltZXN0YW1wIGlzIHJlYWQgZnJvbSBQSFksIGNsZWFyaW5nIHRoZSBjb3VudGVyCj4+ICA2
IC0+IGEgbmV3IFR4IHRpbWVzdGFtcCBjb21wbGV0ZXMgaW4gaGFyZHdhcmUsIHRyaWdnZXJpbmcg
aW50ZXJydXB0Cj4+ICA3IC0+IHRoZSB0aHJlYWRfZm4gaGFzbid0IGV4aXRlZCBhbmQgcmVwb3J0
ZWQgSVJRIGhhbmRsZWQKPj4gIDggLT4gaWNlX21pc2NfaW50cigpIHRyaWdnZXJzIGFuZCBzZWVz
IFBUUCBpbnRlcnJ1cHQsIHNvIHRyaWVzIHRvIHdha2UgdGhyZWFkCj4+ICA5IC0+IHRocmVhZF9m
biBpcyBhbHJlYWR5IHJ1bm5pbmcgKElSUVRGX1JVTlRIUkVBRCBpcyBzZXQgc3RpbGwhKSBzbyB3
ZQo+PiAgICAgICBza2lwIHJ1bm5pbmcgdGhlIHRocmVhZC4uLgo+IAo+IFRoZXJlIGlzIGEgbWlz
dW5kZXJzdGFuZGluZyBoZXJlLiBJUlFURl9SVU5USFJFQUQgZG9lcyBub3QgcmVtYWluIHNldAo+
IGZvciB0aGUgZXhlY3V0aW9uIG9mIHRocmVhZF9mbi4gVGhlIElSUSB0aHJlYWQgY2xlYXJzIHRo
ZSBmbGFnCj4gKmJlZm9yZSogaXQgc3RhcnRzIGV4ZWN1dGluZyB5b3VyIHRocmVhZF9mbi4gU2Vl
IGtlcm5lbC9pcnEvbWFuYWdlLmMuCj4gVGhlIElSUSB0aHJlYWQncyBtYWluIGxvb3AgaXMgaW4g
aXJxX3RocmVhZCgpLiBFdmVyeSBpdGVyYXRpb24gb2YgdGhlCj4gbG9vcCBzdGFydHMgd2l0aCBp
cnFfd2FpdF9mb3JfaW50ZXJydXB0KCkuIEl0IHVzZXMKPiAidGVzdF9hbmRfY2xlYXJfYml0KElS
UVRGX1JVTlRIUkVBRCwgLi4uKSIgdG8gY2hlY2sgaWYgdGhlcmUncyB3b3JrIHRvCj4gZG8uCj4g
Cj4gU28gaXQncyBub3QgcG9zc2libGUgZm9yIHN0ZXAgOSB0byBmb3JnZXQgdGhlIGludGVycnVw
dCBsaWtlIHRoYXQuIElmCj4gdGhyZWFkX2ZuIGlzIHN0aWxsIGV4ZWN1dGluZywgdGhlIHNldHRp
bmcgb2YgSVJRVEZfUlVOVEhSRUFEIGJ5IHRoZQo+IGhhcmQgaW50ZXJydXB0IGhhbmRsZXIgd2ls
bCB0ZWxsIHRoZSBJUlEgdGhyZWFkIHRvIGdvIHRocm91Z2ggdGhlIGxvb3AKPiBhZ2Fpbi4KPiAK
PiBNaWNoYWwKPiAKCk9rLCBzbyBteSBvcmlnaW5hbCB1bmRlcnN0YW5kaW5nIHdhcyBmbGF3ZWQs
IGJ1dCBJIHRoaW5rIEkgc2VlIHRoZQphY3R1YWwgcmFjZSB0aGF0IGhhcHBlbmVkLgoKSSdsbCB0
cnkgdG8gZXhwbGFpbiBpdCBoZXJlLCBhbmQgc2VlIGlmIHlvdSBhZ3JlZSB3aXRoIHRoZSBvdXRs
aW5lLCB0aGVuCkkgY2FuIHVwZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2UuCgpUaGUgUEhZcyBrZWVw
IHRyYWNrIG9mIGhvdyBtYW55IG91dHN0YW5kaW5nIHRpbWVzdGFtcHMgYXJlIGluIG1lbW9yeSwK
YW5kIG9ubHkgZ2VuZXJhdGUgYW4gaW50ZXJydXB0IGlmIHRoZSBjb3VudCBvZiB0aW1lc3RhbXBz
IGdvZXMgZnJvbQpiZWxvdyBhIHRocmVzaG9sZCB0byBhYm92ZSBhIHRocmVzaG9sZCB2YWx1ZSAo
c2V0IGJ5IHRoZSBkcml2ZXIgdG8gYmUgMSwKc28gdGhhdCBpdCB3aWxsIGludGVycnVwdCBpbW1l
ZGlhdGVseSBvbiB0aGUgZmlyc3QgdGltZXN0YW1wKS4KCkFzIGxvbmcgYXMgdGhlcmUgYXJlIHVu
cmVhZCB0aW1lc3RhbXBzIGluIHRoZSBtZW1vcnkgYmFuaywgaXQgd2lsbCBub3QKZ2VuZXJhdGUg
YSBuZXcgaW50ZXJydXB0LgoKU29tZWhvdywgdGhlIGRldmljZSBnZXRzIGluIGEgc3RhdGUgd2hl
cmUgaXQgZmFpbGVkIHRvIHJlYWQgdGhlCnRpbWVzdGFtcHMgZnJvbSB0aGUgUEhZIG1lbW9yeSAq
YWZ0ZXIqIHRoZSBpbnRlcnJ1cHQgb2NjdXJyZWQuIFdoZW4gdGhpcwpoYXBwZW5zLCB3ZSBubyBs
b25nZXIgZ2V0IGEgbmV3IGludGVycnVwdCwgYmVjYXVzZSB0aGUgUEhZIHNlZXMgdGhhdAp0aGVy
ZSBhcmUgc3RpbGwgdW5yZWFkIHRpbWVzdGFtcHMuIChZZXMsIEkga25vdywgdGhpcyBpcyBhIHBv
b3IgZGVzaWduKS4KCkJlY2F1c2Ugb2YgdGhpcywgd2Ugc3RvcCBwcm9jZXNzaW5nIGFsbCBmdXR1
cmUgdGltZXN0YW1wcy4KClRoZSBhY3R1YWwgcmFjZSBpcyBwb3NzaWJseSBzb21ldGhpbmcgbGlr
ZSB0aGUgZm9sbG93aW5nOgoKc2FtZSBzdGVwcyB1cCBmcm9tIDEtNywgdGhlbjoKCjggLT4gaWNl
X21pc2NfaW50ciB0aXJpZ2dlcnMgYW5kIHNlZXMgUFRQIGludGVycnVwdCwgc28gaXQgc2V0cwpQ
RklOVF9PSUNSX1RTWU5fVFhfTSBpbiBwZi0+b2ljcl9taXNjLgo5IC0+IHVuZm9ydHVuYXRlbHks
IGljZV9taXNjX2ludHJfdGhyZWFkX2ZuIHRoZW4gKmNsZWFycyogdGhlIGJpdCBhZnRlcgpleGl0
aW5nIGZyb20gaXRzIHByb2Nlc3NpbmcgbG9vcC4KMTAgLT4gb25jZSB0aHJlYWRfZm4gZXhpdHMs
IHRoZSB0aHJlYWRlZCBJUlEgbG9naWMgcmUtcnVucyB0aGUgZnVuY3Rpb24uCkhvd2V2ZXIsIGR1
ZSB0byB0aGUgd2F5IHRoYXQgd2UgaW50ZXJhY3QgYmV0d2VlbiB0aGUgbWFpbiBhbmQgdGhyZWFk
CmZ1bmN0aW9uLCB0aGUgc2Vjb25kIHJ1biBzZWVzIHRoYXQgUEZJTlRfT0lDUl9UU1lOX1RYX00g
aXMgdW5zZXQsIHNvIGl0CmRvZXNuJ3QgcnVuIHRoZSBsb29wIGFnYWluLgoKVGhpcyBwYXRjaCBm
aXhlcyB0aGluZ3MgYnkgZW5zdXJpbmcgdGhhdCB0aGUgaGFyZHdhcmUgd29uJ3QgZXZlbgpnZW5l
cmF0ZSBhIGhhcmQgSVJRIGludGVycnVwdCB1bnRpbCB0aGUgdGhyZWFkX2ZuIGNvbXBsZXRlcy4g
V2UgY291bGQKYWxzbyBpbnN0ZWFkIGZpeCB0aGlzIGJ5IGltcHJvdmluZyB0aGUgY29tbXVuaWNh
dGlvbiBiZXR3ZWVuIHRoZSBoYW5kbGVyCmZ1bmN0aW9uIGFuZCB0aGUgdGhyZWFkIGZ1bmN0aW9u
IGJ5IHVzaW5nIGF0b21pYyB0ZXN0X2FuZF9jbGVhcigpLCBvciBieQp1c2luZyBhbiBhdG9taWMg
Y291bnRlci4KCkkgY2FuIHNlbmQgYSB2MyB3aXRoIGFwcHJvcHJpYXRlIGZpeGVzIGFuZCBhbiB1
cGRhdGVkIGNvbW1pdCBtZXNzYWdlLApvbmNlIHRoaXMgZGVzY3JpcHRpb24gbWFrZXMgc2Vuc2Ug
dG8geW91LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
