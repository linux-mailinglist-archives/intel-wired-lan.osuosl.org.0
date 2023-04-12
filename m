Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 220146E0020
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 22:48:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE97341E1C;
	Wed, 12 Apr 2023 20:48:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE97341E1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681332506;
	bh=YSGUE8DYn5+PCrdJWrmuw10VGpQW7KepIplMfyCmDNA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qecUnhobCkp3SF6fybc2pD9cOYDVIzFTDxWVwY0/4PVcwMMnvuAhPgNyb9lhQY62/
	 GuZjg1xxNnZz+69wk3Le+OlcYTjbZadnBtcY9Ct2k8r4RLwkO9Jn7gcvDq7VKJq6Dx
	 OKkZsvmfsYYQm/2d1oUy4iM9EPu/AZ88TtB8qmEkhVADtJW8M0bJWvOxj60kC0x4Vs
	 givqTPfY7f/mKwXkp0+yi62GAnsyFCX4YyclClDLo6OEhmGTuJ7I9oOSfd7TZZNJAx
	 fNy9b0UhKIJfcMvOfxaj/Ma7Q05eSxhpQUBlHqeLsXax4RftmhhkAUKo7LLJTmTupR
	 Cc3xmLv4AwVtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvwzoroOgPFH; Wed, 12 Apr 2023 20:48:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6AC241E16;
	Wed, 12 Apr 2023 20:48:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6AC241E16
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A15BE1BF403
 for <intel-wired-lan@osuosl.org>; Wed, 12 Apr 2023 20:48:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E18E4031B
 for <intel-wired-lan@osuosl.org>; Wed, 12 Apr 2023 20:48:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E18E4031B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IUwksH6fMsJq for <intel-wired-lan@osuosl.org>;
 Wed, 12 Apr 2023 20:48:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EEE14030E
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2EEE14030E
 for <intel-wired-lan@osuosl.org>; Wed, 12 Apr 2023 20:48:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="430306129"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="430306129"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 13:48:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="863458590"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="863458590"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 12 Apr 2023 13:48:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 13:48:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 13:48:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 13:48:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 13:48:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X1knSuyVKXX2tRniGxzf4IO2iiOFxn/ujayG5PI+dzNX+/h2ZYP8sm9lfUnvzJ7XJ0hQXjOXjptfKH84e3lVHryRAQ7/bLgY0ZX1Yi2ccXdtbWhhk6vzO2c2jIBk8wNxNcG0BpSYcdJU11xripjgflgakY99z7vU8IcvPzY7tVgRtuXZzZ1v0U8f90ECgtL5M3/Mk06Zf9dMVSAZFJG0TTCCizBHG6Wpd2Z1AapL9A221H/o/YiIOnfPAjmDP3CbMvLI/6tAI/u2SIF1Fzo+6gs6MyZscI3uWAg4UeYp7JQiQyvh9j78qb1bzR7zYKns3WauvpZVo9BDFReAfn10hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qe2SppmRlCQWLx1Q05jMSaJaphqXgnVhMC4qZG97JPQ=;
 b=MPJ9XXOP7VicA6OGIZG0vQX3XCMcwjCZBlCGswe0ZRdl2QtKkY+Vdu1IdDbXt/ye9KCvXZfc56kUidh2LUDrogPfWP/+IQ6zc6Xf+5ionnZcdpii7EE2XYD9ZARrF7d/CHRfyHu2KSgLtscBbxH3PbYmm1Wj1hT74zE72GXhvqOoDD5ftA0puv3hUuN/OfQmy5gp9mFwvnvXKxcPOv6QqmhGiat6kzWulBoKcJ8wiG5i94fzKLeQNKvjjiAFSNOhZnRvC2iEVoP7WV7h9oWTNybo/GBipCAAKZmwMUhdB8ylqaH8zc3Y+gOeeh7G+WIy+2uLKlvB+nrAwUsxpltGDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB4878.namprd11.prod.outlook.com (2603:10b6:a03:2d8::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Wed, 12 Apr
 2023 20:48:15 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.030; Wed, 12 Apr 2023
 20:48:15 +0000
Message-ID: <697a3d04-e82f-e40d-bb7d-88a907497b8c@intel.com>
Date: Wed, 12 Apr 2023 13:48:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <168132888942.340624.2449617439220153267.stgit@firesoul>
 <168132892548.340624.11185734579430124869.stgit@firesoul>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <168132892548.340624.11185734579430124869.stgit@firesoul>
X-ClientProxiedBy: BYAPR02CA0049.namprd02.prod.outlook.com
 (2603:10b6:a03:54::26) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB4878:EE_
X-MS-Office365-Filtering-Correlation-Id: 367abdda-1957-43d1-9166-08db3b973d16
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I/WjKVj9oCP9I/7UJwLoyvzqbuSvU9XYxtVby627zwHsmC7sCDCGEbO7wBGZpAQ/gDqmL97j1obDAS6bFi7d1MctLc26gWm4TSPXCdrhQBMgKYSnG9bd8hEPpqdnmsKGWgOVfg28hLa9k337Mfy4bS3xUJqf0C7uWVgvc0c6TP2gpsuh3G5kO4pmXbAAoFe8+CzFwNJtLI8Hm9QsZdiGB05mnv0gW/OBHOzRttq+PyDfh/TyJiOP1k3dos+jO42VqIGgCUWsiJDp3imRJb4u/02dqiSyfxMtnNziHtswO0mlWf0TZlbAuiPH9sDvD6P4Qv6/++/ipuIi4nuLEY1xDBXmdvqJjwDHi/DAMalTlQYjwK4fRyowCfeoHOcV5bjMn39a41i7v9r4OxltY5iBndReXrx6UbjbmCV+STGKLJRUsb620zN4TXL9nj1cL6AQXKIicORahjcligd6VjMl3VXCbkQr3xcFSAc2wzw+oTdH9RBvglB76Yqa+8/4FrFL6228moqW80/W1WoBZElpaux/8YE/1cNfh2C84tD9VLpQC8pYEWMZbDGzl6PFCenM03YGkP86hZGiykxuhVlvM+euGZenWnVyk/wloOI11GyWEbN0TghaUXgXX9jMUBGpBNiHVxEyRkxoCL1oVEjoGQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(39860400002)(346002)(366004)(396003)(451199021)(31686004)(66574015)(6506007)(2616005)(83380400001)(478600001)(6486002)(6666004)(53546011)(26005)(186003)(6512007)(2906002)(4744005)(36756003)(316002)(5660300002)(38100700002)(66476007)(66556008)(66946007)(82960400001)(41300700001)(31696002)(8936002)(8676002)(6916009)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVJWc1ZZSm9kWm1ORWlKa21yTVVGY0EvZW4wdEl0WVg0aGlyd2NoU1FHRTBN?=
 =?utf-8?B?NW51N0owZGFsVE9ybU5iOWlmYnZXbVN6Q0MydGVyb054bFhsVS9jV1haUDJL?=
 =?utf-8?B?VVBJbCswbGE1VUQ1NytpMW5WUnlERU5JdmRScElQZWZtQktybTRxYTNSSnBO?=
 =?utf-8?B?b0hHZ3lWRFFQaE5KTzRrRXQ2RlpYdzdka0kvMkhaWUxMUHd4WlZtR0srODJG?=
 =?utf-8?B?WG9yaSt0R3BUVC90WTNYWUdoTjc3OUtuNWNTdUVCSW82K1NrRllpSEVaVmpJ?=
 =?utf-8?B?Q24wb2dER2E2U2k5VHQ3S3BISXo0SHFYUmUvd1hDWEt0c2NoUEZQRWplajN1?=
 =?utf-8?B?NStOMEozL3UzMmRmVE5BRGZEMzlEUTh3ck91K2xyWjBjWjFrTmc4VUxYUGVj?=
 =?utf-8?B?WGdHaWV1STFGS0ZVQmtxbkdwdTlGcEplT0VZa3dGTG1IL1ZRWjFDVFhTRXY2?=
 =?utf-8?B?VFJxMUdnWjhaemVZTS9ZMGFCU0loQnhCUDVQeWh5QTNzcEl0MzY0MUZmcWlK?=
 =?utf-8?B?TTdUS3psK2JPZVVBNDBKaHhDVHg1WUh3MVFvUHFYVlZMQmYra3ZWYWptV2lW?=
 =?utf-8?B?Z2Q0aUtaNU1ZSFQyUkNtRVdRZW9xYkZMSE1EYUJSS2loRUgwbDBBQk9oMHlL?=
 =?utf-8?B?VENXMVFxRjFYZHh3bFFQcTBSVjRrbWxCaVpMMjc4ZWphSk1Jbys3bU1ZSXJw?=
 =?utf-8?B?VjVxQkFZUFhPSXhVOXlzK0F4NTArdHdMVWVqOUFmTU9uNEprWkxFN2ZlaTEz?=
 =?utf-8?B?VE4rcU9jdnp3dStWL0RXY3I0b3V0YzI0WklhZEtlWjczc1gzMnhpTXhvYWY0?=
 =?utf-8?B?TXRIV2MwNU9wSzRLamozbmNQZ3hSbTJUbjBMa1Jmc2tWbTYyUkdpWHZVOUlM?=
 =?utf-8?B?alJ5NEsvQkMvZXEydGhpTTFlRTZvcHVBamtJRmdiYjRjZGYyUzNNNU9YYWwz?=
 =?utf-8?B?aGZUd1BnU3dVZzY3M29aOFRQQ250VjhsVldOdjdoSEZHaGtTRjFOYU1OSnBR?=
 =?utf-8?B?b3BGekJUYzQwbkpncE1PcVV6c0tvL0s4bUwzeDBGQ1BWZ29vdytETE5Rc1VU?=
 =?utf-8?B?NFNuWEtHRTBpb0E1OHFmWlF4eVpUelYxVzBUSVFJU1IrTGZnV09oNDdTQTZ0?=
 =?utf-8?B?V0lDYm5IQ0RoRDcza3hBUjFZNlMyZDdwVUNmWEcrWmZ0Q1NvNzE3eUxYNkJG?=
 =?utf-8?B?MlBrQVI3TzF6UWFzYjhZMkpYOHJLeVhsL3R3S256MEppRzAxSUt0cmNub3FD?=
 =?utf-8?B?UjZMMVQ1Q3gya0dPcEgwQ1NRREZZUDQvZmo2SkFoSnp2V3VVMjZjSVBxdm5o?=
 =?utf-8?B?SUw3VTNaU2RHTERVaitGbHByS2FtUDdGZHBDQXdMa09SREFuczV2WGZPZTF6?=
 =?utf-8?B?WDFRdFRqNEFFTmdsREI0L1FGS1I3MFc0OXFId0RXWExSa0JuY1dhaG9DN3Iv?=
 =?utf-8?B?SzRBcWVRQldWNlJLNjBraC9BWGt0ck0rNGFrTUVPWDlYUkF1NVFpUUtDNWF4?=
 =?utf-8?B?ZFJmQXlKWDFQNzFFUEl2UlptVVVHb3BGREJCbGxiYWxtMGdXVm9Cc2thelR4?=
 =?utf-8?B?dmZseFpYRUhYZ1A5azFveEpmbENHdnBvZWdZaFVJNm9od2Z3bnV2VDdjb0lv?=
 =?utf-8?B?QXpBWjdVcXd3WjJ6dTc0VW1sUmRuUkU1UUtmOHY2cnlBMXdPTWp1RTRhcWF5?=
 =?utf-8?B?SG1RU3hKWnlSNFlQMzNFeWwxaTNPNHFzNW55NU1WbEdjNUJYRy9vU3lTTkJk?=
 =?utf-8?B?SU9BM1BkbmJxK05ZRU9lQm9QQnd3ZXBCQTA0dm9NVUVLSnRsSkRBNWdqeWRm?=
 =?utf-8?B?N1hPclZxMklRc2h1bUdQT2pSQy9PSEZOSFhIbzQ0NWE2Q1NOUlp0eDNzOUFW?=
 =?utf-8?B?Q3hYdmNqRWpESEc0aS9ldFdJRElPL3dZdWtKQTdOSFlkWjBZOGt0bzJBR1Iz?=
 =?utf-8?B?Uk8zQ1ArM01WMjVlSko2UUhyODdFc1lJRUExQ1Uwb21IajUrakhrMGRrTDVL?=
 =?utf-8?B?RDQyVjRsMUZWTGkzMzhRNE5XMmQxZkc3SXRoNXRiamlmVjVhdUpyYjhtYVNJ?=
 =?utf-8?B?SU5aZDFoTXJHQTUxdytjRXNHcWZXZWJUUENleUhhS0lYRjBMd3BuN3U5NnpK?=
 =?utf-8?B?RWhTWm5ISFB5cEVpKzVOS1l2a1Z6bmx0dVRtQjBCUlFSQ2JxUnRvS20vUFNI?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 367abdda-1957-43d1-9166-08db3b973d16
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 20:48:15.6482 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a7Ub81fhxHXeEC1AnxxG+bUBmamokC6ePgF04I6BjELnZKxH3H0G4oXjeHEv8cLZBihS4kxa8AX4MfKCLIsgwNIbaMYH/fLYU4TKlNH2wJ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4878
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681332499; x=1712868499;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eJiBNvRLQylqC0a2ZtnBxATWzFVFjsVCuQlaw625b1U=;
 b=K7KaVA6yevzEL0ClEEvehSiAoL4920XWrObvFHMdJIdlrvSDDvkmkpwn
 5sCa271quDd7U8+rA8t03xc2/FhhqghRFfJHuGG1EpIF/uc9ZKkipK5Lg
 O8XJGgFdp69OAatbRAcRj5IiBM2s5FbusC3IlFIbjHB9IGeHUpBMHN2Cb
 aImUzytQcwGwrtGD8v9xb+aH1ikdgD90e5Zsi8IvI2dP6G+4Joc7IMf+Y
 K1A+jB7nkLVU/ffwbK/p1L0VtdKJNBDViW90WYQ07r7DJbxP0/C+NFcgE
 UNMcLslWznW7WajEvfgpo9D0ut6VpK2het91XwKwaS9/vrIJ07HIHEusB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K7KaVA6y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf V10 3/6] mlx5:
 bpf_xdp_metadata_rx_hash add xdp rss hash type
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA0LzEyLzIwMjMgMTI6NDggUE0sIEplc3BlciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6Cj4g
VXBkYXRlIEFQSSBmb3IgYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKCkgd2l0aCBhcmcgZm9yIHhk
cCByc3MgaGFzaCB0eXBlCj4gdmlhIG1hcHBpbmcgdGFibGUuCj4gCj4gVGhlIG1seDUgaGFyZHdh
cmUgY2FuIGFsc28gaWRlbnRpZnkgYW5kIFJTUyBoYXNoIElQU0VDLiAgVGhpcyBpbmRpY2F0ZQo+
IGhhc2ggaW5jbHVkZXMgU1BJIChTZWN1cml0eSBQYXJhbWV0ZXJzIEluZGV4KSBhcyBwYXJ0IG9m
IElQU0VDIGhhc2guCj4gCj4gRXh0ZW5kIHhkcCBjb3JlIGVudW0geGRwX3Jzc19oYXNoX3R5cGUg
d2l0aCBJUFNFQyBoYXNoIHR5cGUuCj4gCj4gRml4ZXM6IGJjOGQ0MDViMWJhOSAoIm5ldC9tbHg1
ZTogU3VwcG9ydCBSWCBYRFAgbWV0YWRhdGEiKQo+IFNpZ25lZC1vZmYtYnk6IEplc3BlciBEYW5n
YWFyZCBCcm91ZXIgPGJyb3VlckByZWRoYXQuY29tPgo+IEFja2VkLWJ5OiBUb2tlIEjDuGlsYW5k
LUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KPiBBY2tlZC1ieTogU3RhbmlzbGF2IEZvbWlj
aGV2IDxzZGZAZ29vZ2xlLmNvbT4KPiAtLS0KClJldmlld2VkLWJ5OiBKYWNvYiBLZWxsZXIgPGph
Y29iLmUua2VsbGVyQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
