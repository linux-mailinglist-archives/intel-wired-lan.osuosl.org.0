Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7957EEA01
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Nov 2023 00:36:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EF326FADF;
	Thu, 16 Nov 2023 23:36:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EF326FADF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700177789;
	bh=iR6RGU7v2VyoIVi2b3SD25iJeGZKHCvm6Q6azgVtABs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=POVe2mQnLsqu9EFIl11lysn7DABGCWJc2uL0aZo52CzDdUmXfS5ek62FoO2IaAt9Y
	 1j+pLK26jJfU+5x+vqmWdITGZHQAlhQhEusMXGo/Ig2qeKAQdDmhh0i3rh45agz87I
	 OVVOvj+Ti9c5XW0CX6cM6at2ScK6MdgVqWxHhRJ3svgC2+s+GYzRCgUVXQwfW7YlUL
	 phDwun4QBz3dbzVYFDndAoZBcnMjha8P1b5LsEJTYnMhsUjnDHpl2t6WYskeyq6IZ4
	 olBGeHorEwYa4mNwg2qTTuG7deOVuF/CNIGuo5RS6CQnUlpXskR5mSpdUSgw1aKJvv
	 7mV7rrXRv7Fow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W-54KHIqLHMC; Thu, 16 Nov 2023 23:36:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD38B61230;
	Thu, 16 Nov 2023 23:36:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD38B61230
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E9A0A1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 23:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C0EDF41D9E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 23:36:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0EDF41D9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s7ihWdw1y8PC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 23:36:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A03641C22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 23:36:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A03641C22
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="395126990"
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600"; d="scan'208";a="395126990"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 15:36:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="831434566"
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600"; d="scan'208";a="831434566"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Nov 2023 15:36:16 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 15:36:10 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 15:36:10 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 15:36:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oa1+F/6k2bjFDODnrLc5n8iSCAmsv6VVoI8r+bKJYrfN7c7BBFmH41K8oc08Uefm8RobFzhHawKozMNzA33lfIOyvoCOt5rhAP0sCuiByr3wzK8jHa+f5ijrRP2bAPn11skvkE5ZksStZb9RyAfFfjbotN7jyvDfCSpsbaWVuWCEEilbpDq9Hbda8zcusuNkruQI936qxOvtZlOSsNCUQIdZN5OjoRL7DTzqcw6/IEjs0WgT1wxi5hXSmGbgIxOg7ymD1JyXeO1D9MGt9CRZJvR06OEfYzeK1JNfgEspg/gV016IF0Ftn5XaVHXWPdIhoeyLpNsnDwRCxRK19LcRbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=If6hLHD53ILJQ8Ia/ew/+trmj564qWqbVzmRUdjqn9w=;
 b=c7Eh3pxjMX2uvbIiV2dn1XI/d1dXBrj1GW5qLn0yjrA4Ok/FZDi+HCfKMHdsu5C/vKcpya7sF7qeoeVR25lTynOc3J1upyqG71iaWlInWK9TJ436LENtO+hjVSanfDn9Ys3JzJopdhNUgopIQiQN9kQZJvsOkyQBi3SE+yS5yWfW5oxuaeXrfWjKzJZelvNJYKR0j5EdsFcRkOR3W0Y6jFDLtlfhniFJ5PJEOFsPzBBPe4+Zk5hUgrS0RTDi4dWeS3P1ozndBRfEonM0IxY1RZLu7iqt52MpNssk5Jev4RZd1ZWHx/1pZUhGMI1XOWQs4UdToyrPqRsI1D1EL6Kf6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA1PR11MB7811.namprd11.prod.outlook.com (2603:10b6:208:3f9::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 23:36:03 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 23:36:03 +0000
Message-ID: <64d5c6e8-e163-62a4-60dc-0aec37afba21@intel.com>
Date: Thu, 16 Nov 2023 15:35:59 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231114091054.68301-1-jedrzej.jagielski@intel.com>
 <20231114091054.68301-2-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231114091054.68301-2-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MW2PR16CA0054.namprd16.prod.outlook.com
 (2603:10b6:907:1::31) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA1PR11MB7811:EE_
X-MS-Office365-Filtering-Correlation-Id: ccf4bde1-e855-4204-0f97-08dbe6fccb89
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /S4o9PdzKarsz0UAWxh00iQNf3YrZN7BwP+HtiHb/SgraVgjq4e87qK+W/xQcISaSiVg2CKGT2vlSC+EqQDt/taF8kcUVjplzcD2FRG8fsHGYBrYkOURjKS84mWdK8Lz9qU7JKe/dN5f7HA2ixPKCxviDQClKq9a2qe6uLM6fpirmrf0aTRnUY223DiFlKjJWITTnxs6aKCs3F8Hk23hXTMENV6vafB26uWSWDPKsueUZYyJRoiSfYF53aac5B9S7Hef/nq7JIfi+Lb6VX4xAVouRsZ920GdCoXfC+uuLLD3Dj54NfogrKgah9zZ7Lsb3bNcKgoAQKTjD1q2hhCQdKponaSs/IOmvLx/FHywuHBmMOJUtKYW5tFL9hdMpfAaDtKeFNCJuS57uGhG1PqMvASE+e/rlNn0EDGGWUfQvwiR2CRQJ74IdIwERBNxpXs5R/EESI/MCik5+ctbTRuf/BX/HK9ojgtvJZfkmzPiq7sf3c7Tzxc3lpCpWa0QQFt/Y6uKaQdJeia7/R+IAuNOwZG8p3KiHi3UN4XhyzEsb1nOQts5OyNCqPS4OoIFTEp14+7/ezQ73R+UTJ0AbX0tqhueaxGhUj3mtJOoSqc1SOtYqVyn8KNoB5awb+/PQQfKNhlwi7DiJJqezpE6z7OxyyfBSdYQK1xGVLrnge6YVm0cERQSOo0EMUGUzFxbmAaK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(376002)(346002)(396003)(136003)(230173577357003)(230273577357003)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(6666004)(83380400001)(107886003)(2616005)(6512007)(53546011)(6506007)(26005)(82960400001)(316002)(38100700002)(66556008)(66476007)(66946007)(5660300002)(31696002)(2906002)(41300700001)(86362001)(8936002)(4326008)(36756003)(8676002)(31686004)(478600001)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWc2cXhkcy9kb3g0TnY0VmRWQWFKMjU1RmNkcjV4L3R0SWpBQkVnVEttTlBG?=
 =?utf-8?B?c0cwQVdnUUtvOGxSVVdOK1dDNjVvM3d4QWx1bTM5TzJYYXR0WlVjU2VjMmYw?=
 =?utf-8?B?eWZOTHlRKzkxM3pTTVZQb3pjWDhkSFpUcGRVS3lvVTZMT1lRVnlSNHc5Mmhk?=
 =?utf-8?B?cnA0ZmpzNElleURGKy8yZTRKakJLOGF4Z284Z3k5dHlJT29xZE5Uc3ZCMHRP?=
 =?utf-8?B?ZVArTzdGdVZYOXR0a2VZdEdBaVptTWZ3RHpEN1pMOHkwMWVVVXVtdmhreE10?=
 =?utf-8?B?UnJpamhMcWZCQ01oYVJLOUJOdzdCQXZkQndXbjEwSFV6elFLdFlCZ21ZOXMy?=
 =?utf-8?B?MkszSTFibWE1QzNBNExxQ3pwUjcwaTd6Mnp0UmRGM3NBWDA3RDFMRnNDL1pq?=
 =?utf-8?B?R1k1d0IvV05PL2lmTGY5N3pMVit1SE5jRlFBc3R3UlNVTkR0Yit3WE5qeDhE?=
 =?utf-8?B?eXJPNkJRemVxOSs1Q01CMlZqQ3FURGR2ODkvWFB2NmFZZEYweXNlV3NXU3NN?=
 =?utf-8?B?dTd0MGhpcEROYmxYbzYySjY5UFhZRFNhRW9mV3BXK0hCanZSWVBvU1lqWHJJ?=
 =?utf-8?B?YnpLV3BmVjFvMmUxZWREWi95ZUF2cWUycXZUeEoxREF0RHZJb3dNdlN4eTZO?=
 =?utf-8?B?RCs0c1BNOWFYY3U1SVViWUprQkhBUVkxTXJ5VFlvd0U1UzYyT0hiK1ZiclBl?=
 =?utf-8?B?NE05eHFmUmIyNFdzaVRsL3N3UlNqNHUwb21kVUk2MTZPMmt6U1dJZnYvaUw1?=
 =?utf-8?B?c3pxcWJ0MkRFTy9WRWJ0anBNSFd5QTExR0tuZ1ZMdUR6TVdSRHliSm01UUtZ?=
 =?utf-8?B?SmFSZmxBWExUZVR4L3BqTXllbmUxYzVjbWZUTGFpa1ZSYlNUakhHZ3Z2ZGlt?=
 =?utf-8?B?K2xvbDVEek5QM25QMFphUTlBZ3BFSkdDdEc1YkFnTlZnRGFpWHIwKzUrT1Ev?=
 =?utf-8?B?M3Q5N1JGeFFTcGxQQUJtUnUzdFlwb0hUY00vaVpma1Fqd1NLTkNta3k1c1I4?=
 =?utf-8?B?QXdGTGRiMngwNU0zS004UUlxaDBwcWxSdnd5a0dUN3o5bGxMNStmRWtGdlpW?=
 =?utf-8?B?YUpZcWIyTlhIVVhrdE4wQjFyVklQOWV1TDZvV00xeHFTaHh3YVl1UlJlRWhY?=
 =?utf-8?B?d1BHdlNiNHpxdnlYK25QbHVOZnQ3THBSOS95Ymkrb1dvbDEydkVJU2U1VFR3?=
 =?utf-8?B?byt1MVV3dVVRU3ZZRW9HcG15cGpnOE5SNUdsV2VGNFkyRkFIeFBkMUFWZ0wr?=
 =?utf-8?B?bnBGL2ZXQk5tRm5OaW56ZDFOYTY4ZzRHZ3FPdmx4Mk4vMzRlazdaSk8zQlZD?=
 =?utf-8?B?dmdZcldaRHBQb21od0lrWWFUbUZMaFN6Nk53MzRIWWpTL0Q2Uk5FeHFDSVVD?=
 =?utf-8?B?RkpYS3M5OWJsRmpjWVhGYVdqN0hrVFVReEFTZE5DaFBwWWgreFdqVmppOEdT?=
 =?utf-8?B?dnU1bzFQY0taUUk0ajlUcVlQVzQ0RlozYzNSNGJpWTFGT2REa1dKZ0N1NGNw?=
 =?utf-8?B?TWV1akY1Mm9qZEZ0Qi9GVm5Rd3dqSFBRSlo5Mk9uZ0xDbUVDTzluOHo3ZTJP?=
 =?utf-8?B?d0xsVFZmSUlsTVZGWXAzdHhSMkxzS2xYOUhYb2Q2akQzZjlPbUtIUmZsQ3Vo?=
 =?utf-8?B?eVdPSUx3bTEyRkVhWGxmaFdXaFJ5Y1lRU0VIZTNvL2JHQmdSVlloRWVUQTh6?=
 =?utf-8?B?Zk16T0lPQkE5SEttaGNReE9EdFFuTjRTV21OZ3dVcEc2NktrMmJGSlJCekNo?=
 =?utf-8?B?NHN3Nys1aHExQUJIMk0vNEovWDh0Z2RIZ2JTRmExUDZUZjRNcXdxWHFDWm9y?=
 =?utf-8?B?K0ZGYTYyTEVjSWgvdzlzZ3o1YnNVQjFPVkxaVmRCMDJyM1g3Z1BxU3NHL29a?=
 =?utf-8?B?N3JTQkFmMWVxcjZNK3RWZ2gvY0JSblNsUWZBVnNTcmVoMzk4Y01xNVk0M3B0?=
 =?utf-8?B?M0lYdU1kT1gyRHBRcmFmY3FWOVZ2M0p6dDNSNGRpcmVMTlpqWFd6S0U0Z29s?=
 =?utf-8?B?RVRXTDRTR1hwWGVuVEZzbCswZVoyVlZFeXJzZGtDU3YwMjhpeXVFNm9zRHJu?=
 =?utf-8?B?RDZENmZYamJFOXM5c01EZHhvQ1ZCaHBCanF0dWljUzVvcHV3NmZ1OWFmSDZJ?=
 =?utf-8?B?SUNWOFIxRjhIYy85OEpZU3dmY2x0WHdreVpCRkY3cjBZaUQzNG8yQVpWM01H?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ccf4bde1-e855-4204-0f97-08dbe6fccb89
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2023 23:36:02.5631 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i4YBQvOrGHwBv311dinyaNOj5sEw8zcXaeh6MDM//rKzk0mlT6wKWDVMjMJzpmKuy6zUqN8/dYqklLjz+BVhG6QsRqfZ66XUev4kJ9HkP8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7811
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700177781; x=1731713781;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0R9VBEz5CJfZbZerCPWiNjzUfETiCg+7I1bPqfgR1fI=;
 b=XpL6M7DnTKm2zSL3WGv9C9xet0DFkTH34d1iwLCMeyvB6zTrVnjPduqB
 sf3+DohD2yL6RW3kZejyYXkE71wMqs6KgKMmTsBTymBY1LXmzHQtyBDf3
 50TtxaCv6A10qRfah9R+hPfAt9qBhk+hskzm+YDxFXvhPC43ub5jTA8in
 rIwcJvDHr0ipKBl7uudXSGxsDFRsrAZZYwZlt9fgLkL3jc1c77v4X0yOv
 SsoJFlydW397VB7pMAUGkMMNZYsmpAPaC9NoMQ/8reFMKNEfuOQzv9vP3
 2qk4ERhw2Am4Yz8PyZTpfVPMaqa5r4zZ5j4z0uc80HT6xDdiTyrt0CdbT
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XpL6M7Dn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] ixgbe: Refactor
 overtemp event handling
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/14/2023 1:10 AM, Jedrzej Jagielski wrote:
> Currently ixgbe driver is notified of overheating events
> via internal IXGBE_ERR_OVERTEMP erorr code.
> 
> Change the approach to use is_overhaet variable
> which set when such event occurs.

I'll likely have more questions/comments, but an initial question. Is 
this variable intended to hold the state of the PHY as overheated or is 
this just communicating at the time of the check that it's overheated?

> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 12 +++++++-----
>   drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |  7 +++++--
>   drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  2 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 19 +++++++++----------
>   4 files changed, 22 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 1726297f2e0d..78fbfc768f57 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -2790,14 +2790,14 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>   		}
>   
>   		/* Check if this is not due to overtemp */
> -		if (hw->phy.ops.check_overtemp(hw) != IXGBE_ERR_OVERTEMP)
> +		if (hw->phy.ops.check_overtemp(hw) != -EIO && !hw->is_overtemp)
>   			return;
>   
>   		break;
>   	case IXGBE_DEV_ID_X550EM_A_1G_T:
>   	case IXGBE_DEV_ID_X550EM_A_1G_T_L:
>   		rc = hw->phy.ops.check_overtemp(hw);
> -		if (rc != IXGBE_ERR_OVERTEMP)
> +		if (rc != -EIO && !hw->is_overtemp)
>   			return;
>   		break;
>   	default:
> @@ -2807,6 +2807,8 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>   			return;
>   		break;
>   	}
> +
> +	hw->is_overtemp = false;
>   	e_crit(drv, "%s\n", ixgbe_overheat_msg);
>   
>   	adapter->interrupt_event = 0;
> @@ -7938,7 +7940,6 @@ static void ixgbe_service_timer(struct timer_list *t)
>   static void ixgbe_phy_interrupt_subtask(struct ixgbe_adapter *adapter)
>   {
>   	struct ixgbe_hw *hw = &adapter->hw;
> -	u32 status;
>   
>   	if (!(adapter->flags2 & IXGBE_FLAG2_PHY_INTERRUPT))
>   		return;
> @@ -7948,10 +7949,11 @@ static void ixgbe_phy_interrupt_subtask(struct ixgbe_adapter *adapter)
>   	if (!hw->phy.ops.handle_lasi)
>   		return;
>   
> -	status = hw->phy.ops.handle_lasi(&adapter->hw);
> -	if (status != IXGBE_ERR_OVERTEMP)
> +	hw->phy.ops.handle_lasi(&adapter->hw);
> +	if (!hw->is_overtemp)
>   		return;
>   
> +	hw->is_overtemp = false;
>   	e_crit(drv, "%s\n", ixgbe_overheat_msg);
>   }
>   
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
> index 689470c1e8ad..2c99b644aeb7 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
> @@ -409,8 +409,10 @@ s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
>   
>   	/* Don't reset PHY if it's shut down due to overtemp. */
>   	if (!hw->phy.reset_if_overtemp &&
> -	    (IXGBE_ERR_OVERTEMP == hw->phy.ops.check_overtemp(hw)))
> +	    hw->phy.ops.check_overtemp(hw) == -EIO && hw->is_overtemp) {
> +		hw->is_overtemp = false;
>   		return 0;
> +	}
>   
>   	/* Blocked by MNG FW so bail */
>   	if (ixgbe_check_reset_blocked(hw))
> @@ -2763,7 +2765,8 @@ s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
>   	if (!(phy_data & IXGBE_TN_LASI_STATUS_TEMP_ALARM))
>   		return 0;
>   
> -	return IXGBE_ERR_OVERTEMP;
> +	hw->is_overtemp = true;
> +	return -EIO;
>   }
>   
>   /** ixgbe_set_copper_phy_power - Control power for copper phy
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> index 2b00db92b08f..f69cfaae9c36 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> @@ -3652,6 +3652,7 @@ struct ixgbe_hw {
>   	bool				allow_unsupported_sfp;
>   	bool				wol_enabled;
>   	bool				need_crosstalk_fix;
> +	bool				is_overtemp;
>   };
>   
>   struct ixgbe_info {
> @@ -3692,7 +3693,6 @@ struct ixgbe_info {
>   #define IXGBE_ERR_FDIR_REINIT_FAILED            -23
>   #define IXGBE_ERR_EEPROM_VERSION                -24
>   #define IXGBE_ERR_NO_SPACE                      -25
> -#define IXGBE_ERR_OVERTEMP                      -26
>   #define IXGBE_ERR_FC_NOT_NEGOTIATED             -27
>   #define IXGBE_ERR_FC_NOT_SUPPORTED              -28
>   #define IXGBE_ERR_SFP_SETUP_NOT_COMPLETE        -30
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> index aa4bf6c9a2f7..cf2274d3c4d6 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
> @@ -600,8 +600,10 @@ static s32 ixgbe_setup_fw_link(struct ixgbe_hw *hw)
>   	rc = ixgbe_fw_phy_activity(hw, FW_PHY_ACT_SETUP_LINK, &setup);
>   	if (rc)
>   		return rc;
> +
>   	if (setup[0] == FW_PHY_ACT_SETUP_LINK_RSP_DOWN)
> -		return IXGBE_ERR_OVERTEMP;
> +		return -EIO;
> +
>   	return 0;
>   }
>   
> @@ -2372,9 +2374,6 @@ static s32 ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
>    *
>    * Determime if external Base T PHY interrupt cause is high temperature
>    * failure alarm or link status change.
> - *
> - * Return IXGBE_ERR_OVERTEMP if interrupt is high temperature
> - * failure alarm, else return PHY access status.
>    **/
>   static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
>   {
> @@ -2412,7 +2411,8 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
>   	if (reg & IXGBE_MDIO_GLOBAL_ALM_1_HI_TMP_FAIL) {
>   		/* power down the PHY in case the PHY FW didn't already */
>   		ixgbe_set_copper_phy_power(hw, false);
> -		return IXGBE_ERR_OVERTEMP;
> +		hw->is_overtemp = true;
> +		return -EIO;
>   	}
>   	if (reg & IXGBE_MDIO_GLOBAL_ALM_1_DEV_FAULT) {
>   		/*  device fault alarm triggered */
> @@ -2426,7 +2426,8 @@ static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
>   		if (reg == IXGBE_MDIO_GLOBAL_FAULT_MSG_HI_TMP) {
>   			/* power down the PHY in case the PHY FW didn't */
>   			ixgbe_set_copper_phy_power(hw, false);
> -			return IXGBE_ERR_OVERTEMP;
> +			hw->is_overtemp = true;
> +			return -EIO;
>   		}
>   	}
>   
> @@ -2550,9 +2551,6 @@ static s32 ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
>    * Handle external Base T PHY interrupt. If high temperature
>    * failure alarm then return error, else if link status change
>    * then setup internal/external PHY link
> - *
> - * Return IXGBE_ERR_OVERTEMP if interrupt is high temperature
> - * failure alarm, else return PHY access status.
>    **/
>   static s32 ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw)
>   {
> @@ -3199,7 +3197,8 @@ static s32 ixgbe_check_overtemp_fw(struct ixgbe_hw *hw)
>   
>   	if (store[0] & FW_PHY_ACT_GET_LINK_INFO_TEMP) {
>   		ixgbe_shutdown_fw_phy(hw);
> -		return IXGBE_ERR_OVERTEMP;
> +		hw->is_overtemp = true;
> +		return -EIO;
>   	}
>   	return 0;
>   }
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
