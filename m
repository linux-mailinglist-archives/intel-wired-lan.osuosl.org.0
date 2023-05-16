Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE047044BF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 07:37:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1716240338;
	Tue, 16 May 2023 05:37:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1716240338
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684215443;
	bh=22gvmgWdIeVffQORjaMy3tyAWbr3pZCRUveH1H0JGSM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wo/Xe9clgFJLnuG/k2rEqbDIx4Nxgfl8CWNLyvu+noPXtW0hYzQoUycbMZCZ/0fCr
	 VRs3Hkr8FbRsm0odGd5l6w3wlmiAw+QdaDAVNA2bzQ3PY6gst3M0mP8zrbedAO+BYW
	 dq7FeJFKGUkAFw3RLnDGCU5fk5pIBHAybfw6XZc82kZ/d538kccrkyFppPad8t3pIN
	 1SWYBHooOnBsENmRgmKzxK8yE1hdTl4WjVmRYzeaIxXIYaFbahV83V8dSBtqddwzsI
	 KBo8qrJ/1BjOIkhmwN+B/LNUEL6WDNLtw9sqVYh4yvAambhZy5sk4eIfQj1qBF6agN
	 MN4zObwjhTuag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tTZQSBDAeVcX; Tue, 16 May 2023 05:37:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 13F6040166;
	Tue, 16 May 2023 05:37:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13F6040166
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D8CA1BF34D
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 05:37:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E56FA84008
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 05:37:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E56FA84008
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Y-I2razi11z for <intel-wired-lan@osuosl.org>;
 Tue, 16 May 2023 05:37:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 373F583FDD
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 373F583FDD
 for <intel-wired-lan@osuosl.org>; Tue, 16 May 2023 05:37:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="331003518"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="331003518"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 22:37:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="651697181"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="651697181"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2023 22:36:58 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 22:36:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 22:36:58 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 22:36:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AgJNnAvDeZO7azy33evdUVfBSJqNDHCFLbF1sOPWMgRVAxlUFzVXTxVRIG8VdUjg4sqMJLVu8yrQPpOkBPoiATOX0QGcUDXtJxygbOD7wPyb3X0/Fy4w91dNUE/RLUqxZJQonl6TPGcGtXnomSZtyU7qd27bbyVIggGxetemmxgGzDD/jzEs/AxgKZVOqbTzGWF6rOErCvV8zAabHG18Ieu0A4wg+oG6wPMZ7lMoWkjW2f3ahaPdrEOd6Vsv3RPDbhiAgLtfMw6NvUE+sIpamh90CxeuSNf9M68Jwg6GxIJPXwYa2NWFXikihc15UrXG6MzYqfMId3gFG0l3NJfHqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jqPKZpitVYWRn+F/rG9VVmFizEEFa9Q1EjIZVRCfIyc=;
 b=WtVR7KEdXR0C9elWJikcss6PJe/k8pKS6BR0dJeiGIr7bjzhleMSKGfi5N5XfRfHR+sby8Zd6/IyX6uLQ4/YpaG1mh5BYwL0Pks6yq3acSFyjNyDp7Hrx3n4HONEWHBuukbBgBftd62BeHBA9HvhMk7lmcs7BJmi99A6zjqgHx5yh72lJsBzus7f6H4YozXwk05j3f2jJBfl09LAVfysbBrcsCxf+1Ybun+2iPrr81YR3WpOfU9e/fnufPFdNLCA5pEMVTaiOF7l8g3FwmB1xCo09wb9px2t7lDv9Iz9LCDhFyNGp0nArAHZiNUU7eE7ddLaO/rcRbiEuMp5Tuq50A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by MW4PR11MB8292.namprd11.prod.outlook.com (2603:10b6:303:20c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.32; Tue, 16 May
 2023 05:36:50 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026%5]) with mapi id 15.20.6387.033; Tue, 16 May 2023
 05:36:50 +0000
Message-ID: <9e1d4083-19a2-1d4e-461b-7574d098f58b@intel.com>
Date: Tue, 16 May 2023 08:36:41 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.0
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20230516035113.4147-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20230516035113.4147-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: FR0P281CA0238.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b2::13) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|MW4PR11MB8292:EE_
X-MS-Office365-Filtering-Correlation-Id: 344f98c6-8b54-4592-7f7d-08db55cf8bea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Wp6ygm16huSrfzG+jxi+ZQEFUz9uA0o5oIXFJzPF733bb5yu447bltXwgSq7+X/fWNzE527XtaWxrCLYUOqmH+csjEnw0/iAdlY9l6dBgVW5+ITJpJavG4uDt75UuPaWLC2tHeH0E7rL9wOP5Xqcuxk/PDU7Q0PopOzBtKTu1aKxjbqc5D7Nz9y9Ri56vFnhhRPSRdcG0wtLzSfFsySlzwIFeLz27VJh+xPaCINKsRU/xH2tMeknNdUIuQCTxywnuLU7YiklJdky05lB1mBICaEdSe4AzKrLEnqs+brU5FemMmdvaNSjvio5PsZ4QnTJ0F93lNkbP+Oy7TolgSamphBTMyt57n5NlbiJBKleW3Oq79kUCKOVvnyEpliBgxDHR4QhwONVvYErTEJB3iE3itOo3TzKubMbMnLCryvqoDWUuee4YmYnZrH54gDSsKGW3is6EXzdsHL2CgDmFQgZTIwDNTAvuNAVy1yd/XQ2khN6UnKVnH4MBNokZJM16PTrH6ZhrVETxdzLhhhEF3IMKAR/u0P9y2DJrKw6ntXap5QL4yA8u7JvF55S4p/lRz4c3fX97DJekDLt+EonMCJIkffQH1/y8to8L1Yt0g4fOapZMQ0R3K5JeYq3FG4Re7fOIdaScW1PipwhtdL+cCrRnw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(376002)(346002)(396003)(39860400002)(451199021)(31686004)(66556008)(66476007)(4326008)(66946007)(478600001)(316002)(54906003)(6486002)(86362001)(31696002)(36756003)(83380400001)(6512007)(6506007)(186003)(53546011)(26005)(8936002)(5660300002)(8676002)(2906002)(41300700001)(2616005)(6666004)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MEVtazk0V0x2MDhwc1d6T0hLc3Q2d2NxUHBPNk9EM09BcE8zbXZTOUhseGlE?=
 =?utf-8?B?dkFVbERTakRHVFc0RnR2ZndsOTFJMVI3UnNZZ25QcHJ3L3JncnNUam5TOThH?=
 =?utf-8?B?K0VjN0hjRGovNGlycXZFOWdhbjA1MkRubkNiakJodHhUejdRbkltMnQrMTBk?=
 =?utf-8?B?KzJRRDdHdW5nUEp3bWo1cEVESE0zUHdzR2lsNjNFZ1h6OGE2OVd0QVhqWHhm?=
 =?utf-8?B?cDdZUEVaTmlsZzFrSGMrVDdDNElEdnhxY0V3QnBXcmxuajVlT3RadUpRa1lS?=
 =?utf-8?B?d3IwNTVnV29GWW1oR1RRL0UvQzQxQ29yMy9hUzhqUU95TnFOZDdIc25nNytY?=
 =?utf-8?B?VERjQlJNbXRldDQ4UVA4akxSYldCWTVoUjh0R1JEWHUvZjJJZFRlQjhHM1dW?=
 =?utf-8?B?bFJwN1lLZkVXSDJMSit0dHFpd0FjR3hYeFppQVNXQ0hlSnZJU3FRelUvQjZz?=
 =?utf-8?B?M0djMUEwQWpCdzA2S0NtSXlRTWdDOXBvTnIzRXgwMzVMVS9vdDNiOWdOL01p?=
 =?utf-8?B?UnBNMHhaS0d6MU40bVlFTWd0T1RoK0d1REttSm1YUTRJZFQyTEVhbTJTb3d1?=
 =?utf-8?B?QmpacWJ6TmNtUHlUbVdidE9ueEJNS3laZnNlSlJadjJrbzdna2VYVVo2NUs2?=
 =?utf-8?B?bUZtS0RuaDlkRXYzb3AzNStVNEFvd2Fqd3AzdWpIeXpXem04VGh5NUhGSFBM?=
 =?utf-8?B?Qm5LVEk4WkFwZHFUbTFUczJtajhDTkk1aHpRT01XSzlCejlHd2E3ZDdWQnNQ?=
 =?utf-8?B?YXFmMnRrRndTNGRXU3dYRHlrSlJKY0MvczM5SENxN2lqMDhrdWZjWUVmSEhI?=
 =?utf-8?B?ZTdqUEd5MVN4N1dpN2ZjeUFKWEJtaHBPVWF1WVJtaFlsUlVSd3dCNllSU2cr?=
 =?utf-8?B?aWJKeFlZaDFWQ2RDSitNT2pZblloZlNjYlZXTVdJWk9YeEVDdXpCTmNWWGJN?=
 =?utf-8?B?QWdMc1FMNW5VQUlmUFpaMThNN0NueEtaUkJqMkhManZiQnp6RWZHYXk2Sy81?=
 =?utf-8?B?S0hUYWRFQ2lqK3UydGJibFV1RnYwZzVvRWNpeGxVcS9wSUlLQ3JFREdFd3R3?=
 =?utf-8?B?QW5oSHdFenFDY3MybU45UlRCZzJsUkFueHlJSVFRS0l0ZGN5ZDkxdkNkUE5O?=
 =?utf-8?B?U1N5eU5RU3IxZTZFQ3c1M3QrT1h0bjdaMzJYbCtxdzVRZzMzUlNlVEpydk5L?=
 =?utf-8?B?WGs2TEhac2Zaa0tFV3pFRVFpdkRSR084UE44VDJUYWErc3NmU1oyRmlrTlZQ?=
 =?utf-8?B?bWZqOFJ4bk1OM0N3WndDNTlDVm5uMElhZ0Rrb0lteVpCWVd2eVQ4ZnFHNTBl?=
 =?utf-8?B?Q0pudkpsMUdDa1VpaFQ3K3VmNnoyZ0lUeEJRaWtrK2xVOGVFZFJiUUhxV216?=
 =?utf-8?B?akZZd0tSNDZ0ZUFyenFtV2EzT0xnSUlJTnZaVE5uUnNWd1VsK2VvZU9ScTlC?=
 =?utf-8?B?RVRBNzF0Y0JpSG5QL3BQb3ozdDZUeFFoZ3hEUnNXOElTV0plVnloNHArYXBj?=
 =?utf-8?B?Tm9qL1ZKT1F4QXBaRm1wV0Z3a3NEWmZDeDJ5TkFDUzdBSkxZaXU3RGhvS3Ny?=
 =?utf-8?B?UXBUVXBYRG5mbEU3aWJJOHlSMWk0U2d3cDNJNTRVZFZHN1F2d0haSGpSSjRT?=
 =?utf-8?B?MG5iSTdoYkVHYkJaa1l4Rkt3aExPMURtKzZocUlRWGxsQTlwQW1od00zeVh0?=
 =?utf-8?B?SllaMWRxUkk0TjlUdDk2TU9kbHlHakZvZmJGUDFtYXJ6bVB6MU9WVW44cm5I?=
 =?utf-8?B?eGlBQi93cm9TY1V2QTRGMy8vTjVnbTYxalhRbnFJdEtwZWt5YncvU3R1STRV?=
 =?utf-8?B?N2ZKUExzbTZvdjRFL0lhSWZiTjQ5YUdPeEhhRy83UHptV3B0dHVBTUZxd3lP?=
 =?utf-8?B?OGptUGhiWUpqbHN1SG1WcnF6SXFoOXRSZG4rZitMcmFMQVBONUdhYjkrUktw?=
 =?utf-8?B?Y1YwQmk3V2JKOWxUbE1SZGFyTEx5cTN0aHZSaVdPRU1XUG42Ujdqd1NkMUsw?=
 =?utf-8?B?K3E4NWRvd2ZWQ3ZhdzZ1V2U2MVRCNkYwVUpyM2wzMUtUS3EvcytNQURTRUZT?=
 =?utf-8?B?UTVRMmsrNXQ2QVVHQnBjcFBQM1VQWUx1ejV3ekkzREc0TW9ZM1ArdTNzSHVz?=
 =?utf-8?B?aHpteDhpNWFmWjdVZkFuYnZrLzJYaFptQ0tiTGNnL3lHNW1VSmdiaithWi9E?=
 =?utf-8?B?b2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 344f98c6-8b54-4592-7f7d-08db55cf8bea
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 05:36:49.9876 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gNc+RdBN/Ch5jAEPbjElm8OfVo7JGffUv5AMAje6h5Q4ICv74F4NqTxN69stKmvi5dXs02QKWvd8jr77RLt8bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8292
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684215436; x=1715751436;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4qxOtFBXl8x23Yx+NKrJw7CGrAqOhTo7mFn2j/kuKkA=;
 b=OaoZghpbM1x49OY7+em/pw9mJAgn+zs2+qlx1r0g5TezD4/sNkVCmJjD
 Kf5L8demO7i+ch1+8BqeZLO10Jl+GSqErx6l0z/gOe0bZtHSIkDiA34hu
 BY1ERcM9Ey5nJhI71zpSaUOLRe+/SsUA9FNQ/IGAyLTo2z2XcZZu6bgdM
 3moxaoaw1OEnZBjPNZVSblhT7MF/iX0mzF7f5ebzfvTISppzCSN1tuLzN
 CYXJVhIicUeLT1NBi7m+ImDkVyxUA4gxIL8j4sA5pKS0s2AxwWMdMTsTo
 G/SmXE1RQh3RNcbYccE4XX7vDMZaYhUsfUh+17ZtoYEEUD9nOdZCn9DiT
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OaoZghpb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Remove delay during
 TX ring configuration
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>,
 anthony.l.nguyen@intel.com, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Avivi,
 Amir" <amir.avivi@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/16/2023 06:51, Muhammad Husaini Zulkifli wrote:
> Remove unnecessary delay during the TX ring configuration.
> It doesn't mentioned about this delay in the Software User Manual.
> It might have been ported from legacy code I210 in the past.
> 
> Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index ca0e6d4141a05..b1d0b3a8bdc41 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -711,7 +711,6 @@ static void igc_configure_tx_ring(struct igc_adapter *adapter,
>   	/* disable the queue */
>   	wr32(IGC_TXDCTL(reg_idx), 0);
>   	wrfl();
> -	mdelay(10);
>   
>   	wr32(IGC_TDLEN(reg_idx),
>   	     ring->count * sizeof(union igc_adv_tx_desc));
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
