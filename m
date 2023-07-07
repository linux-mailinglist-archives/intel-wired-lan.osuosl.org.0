Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4557674B580
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jul 2023 19:04:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F79581F53;
	Fri,  7 Jul 2023 17:04:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F79581F53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688749457;
	bh=X2nc6RmIxiiLijRN9m4t0oYC0dIXuHxEHI++ecJ/Ivg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1DpG6Lutya1GGfZ6MglPhY5bOCuZfKd/PSAcQpt/hbG6Q2WJT4cFxRV1ZDioO0yxj
	 nu8riSpHqAVIXVsUgoDzDzZ98uXAsxgNL2zuQZkFegydPY23NfBeUkVc2HTTnukCEw
	 GRDerlipbTVSo648po02jrJEJhClZBd0KqKKEVE42Gf27bPXZAehn9bWPs6eujVmRV
	 1IOeqDqjThfOw8dSpsUxFJWsC0FSyvk081HUPnuKar4TtfvpxZi4so7awUXQRQiH6N
	 4s1j4TPJh1NyUghXklC6RmLye+VJ3v1+3TYPLVcKlAHt0mI7D9MC3Va42FMGn94Tti
	 E4ANmvsq3RoVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s2wCZHIs8c3t; Fri,  7 Jul 2023 17:04:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C4C181F08;
	Fri,  7 Jul 2023 17:04:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C4C181F08
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B7C91BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 17:04:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D580640AA3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 17:04:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D580640AA3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V4I2WMQms6UL for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jul 2023 17:04:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE5A540A89
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE5A540A89
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 17:04:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10764"; a="367424867"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="367424867"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 10:04:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10764"; a="790046282"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="790046282"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 07 Jul 2023 10:04:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 10:04:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 10:04:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 7 Jul 2023 10:04:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 7 Jul 2023 10:04:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DwqFF4k8KaYEztn42Bxd6dgGLWENnPXdF0EcgINU7pTzTOvbGhnMSXBlnya4KY0m/B7raIUIRNrF9KUiAgcesyaJhoEO1f345xVCQzzmvBOdNT77TEh2pSpTAr3fg0Avfig2pY6cMBfOnFb4inCJ3UUbwspT3JpGAiwEdWlnQbiFlvVOE0WbHW6yLZH2qltA80c44RQZc7hAP6hvCC9p9DuF8RcgVoANsFXErb9P++3Y8w8jQDaFNp4uQI1p6ATRs1kxCMDn6VoRrXWAF/eDtZnuQed8sNve0aLmMZN9CFadlCMysfGH1CgAZfzkGQ8eQGYIFt5QPDU8o4ru4NDa3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fwUqLgXyc6bdyRcVmqLiwJfCHT5I6ZALtbdavS8+LxU=;
 b=LG8cxIMb4WImOIZfXzK4UI57N6Ip4ATGi6zA/mX5vIoHCTrNqVGSb1eWvR4YulMiiZvYxh8RMpLWxJCcJrwjOEwKkDMXbeP1VQyIFd3y18M5jiMIL1q6wRZczUlWtdd0LrgjkeFTaKseNHplpXc0Zdq5BHteRxISl0vOOwOwPHI/TUhfi0nvKm3J2wsD1J83ACuyQttyDQ2bipwHNnKj3/rJobiXZYqi8E0jkL1jUsG7X1jCYC1npXaMpH67Am/evXN7BeaJQiDmAgGPsNShU0WvXN6w/OcpANRVRLSKLhkToPcodfthqoNTAtn2ANasDAspZKrGIivZ2N5xYO4OXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB5230.namprd11.prod.outlook.com (2603:10b6:5:39a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.25; Fri, 7 Jul
 2023 17:04:03 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6565.025; Fri, 7 Jul 2023
 17:04:02 +0000
Message-ID: <711c5c6d-4b7d-d139-e52f-5d15964402a9@intel.com>
Date: Fri, 7 Jul 2023 10:03:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: <poros@redhat.com>, <netdev@vger.kernel.org>
References: <20230619105813.369912-1-poros@redhat.com>
 <eda7b84e56123bce167a64133572440e6806ef1e.camel@redhat.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <eda7b84e56123bce167a64133572440e6806ef1e.camel@redhat.com>
X-ClientProxiedBy: MW4PR04CA0138.namprd04.prod.outlook.com
 (2603:10b6:303:84::23) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM4PR11MB5230:EE_
X-MS-Office365-Filtering-Correlation-Id: dd7a5275-25bc-48e2-003b-08db7f0c2a27
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Rdy26EtZt3QzX9DBz6ydthpR0b8JoaxvxBOP4UmWgZJWCWyljW871bdq5Vc9VaKIV6xfLiHBdwecIeLHmIFke/uKG3sWdHwPzN64gnIH2ns6/Fnrz3kmD9vX9GxBDYDmSFgE2CNDXojoHKDu2KxL2EGc1smzdt9iWkHkoc2gqxGd8+zK7D9i8rRfGkfsZZihPTF2Mu4lh0UuxPaisXVEtdx6ly3sb4zXRylYnXtZkr4ibxxuVvOFUTlRFUpxdnQnEFqrr1ybA8/Aepyp19cOuee9wSD3BljE4f7QH+a8mvhxsyzThatCqtllDQ0KddVHaOqwxkFSdDCcjApkHzhmcjB+wOPKREF9rFpGp6Km1QdhHA1QLHgbpfXe0hOp8iCF6nCgKHDd/iEGqUKzSyubZ8tBbBaHTl3RYRQUGErmCqUuaErbTE3PzFbhoV3NawO9RCZ/y0vWxmFGGpcY24VJmr7PcUKm/mQz6is7Z29wG8TSH+AymrXKfpVojqFFZcZo0+RReDUPRIGDUf9NlMoJVSsHk85JkmYx84aHkJjs8M1tXHOQ1RPewgD2PCu6sWI+jIzk71Q954lG3+wq4JV0HLPqNxIO/tXNRFLyqfoVB+LTaq3W6yUwkQmWWi57MeOTJr+mLZFMA/sisnjZBnLrFA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(39860400002)(136003)(396003)(346002)(451199021)(31686004)(478600001)(6486002)(6666004)(83380400001)(36756003)(86362001)(31696002)(2616005)(4744005)(2906002)(53546011)(26005)(6506007)(6512007)(966005)(186003)(82960400001)(38100700002)(4326008)(66556008)(66946007)(41300700001)(316002)(8676002)(66476007)(8936002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?enVPTS83RjVVZVk3TlZZZzBKdW9vWTdBUDMwd01VRU1GQjlWcE5kWjRvd1F6?=
 =?utf-8?B?WHllaE93QWhtQnhqSmRBZnhhTHdHOHFqNGtNb1dXdXZlczljVDVObmJpMnhh?=
 =?utf-8?B?QjUwYnFBY0REdzF3dERUWVRIWWQ1eUpFMWsxNFFGdE9oTDErSHdtbXErcHZ1?=
 =?utf-8?B?ZUFSUnZ1N0JOalhFZzhoVnJFeVhxaUlLR21qN01pNnFEeXd4Vi9yL3hiT1Z4?=
 =?utf-8?B?SEl5eEt1MjJTdUovbHJoNmw2SU9NWGVodWlRTlBteVF2clJESWhaa3VEUGJP?=
 =?utf-8?B?RnB4bGtzR254czRJQ1BYRk9YMExId2ZuU0k3QVNUQlJUYWpHZkx5L1JJVktQ?=
 =?utf-8?B?OVFaeTUyNGhJbEFKV1gxSWNzbnFPRm9ValVYc054NjViNFBBN2g2RXJSRmoy?=
 =?utf-8?B?amlZMDNCbmdqWWluZk1od2R3RThUMjdNUFVvZDA2SUJ6T0xEK2I1QVRRSXA0?=
 =?utf-8?B?SlE1eHMzQkxuMlkzS1VhU0lYb3FYUGhlbGZvRXdtT2lpU1pXZzlPeXc0VFlr?=
 =?utf-8?B?Zm9oMXJOZ2lzdFowbzJsWDNNR25nb3RHelVhU1JUK0FtVzY5dFNiQmFoK3d4?=
 =?utf-8?B?SEczai81NTM5TTNIM1h6TTZKYWVDWDc3SEVwM05WeHVQSEpDcDFnOW5zN2pL?=
 =?utf-8?B?ZVFTZEtZdnpycjlYOW1mdC9JeWtNZWVZK2w5bVVuVXUyRENkV1BETEd4aVNB?=
 =?utf-8?B?MGZHUDYrbXJ0QTdxVVUrUFBaTEZRdmpSdUpXMlpFVy92clpGMWVmck02bGNy?=
 =?utf-8?B?dHRaYSttR2IxL1htVnc1MzBVaVFpOXIzNllvVWRlUXhUc2k4cEVzSUJuckRJ?=
 =?utf-8?B?L2ZSN0Yzb3BjRlJkZmJJMlU5YTZNMFhPeTk5Uy9vNWZkM1NlcWs0d3BESExs?=
 =?utf-8?B?THVpRnhxT3YzYkwwV1Q0WkJrbTIvQUVMdEhydk8vRFhWakg0QlBwOWRhOTRt?=
 =?utf-8?B?RDJaemF2dDdQZUUzNmw1SlQzOXVtVGt6MDd4ZUdoNXZybHJTTzd6WTBZQ3JJ?=
 =?utf-8?B?emZVbGRaOVdzbGMzMDRSOS83Q0NORVJOb1FIUFBLZzAxdGg2M1JyTnhhUnh1?=
 =?utf-8?B?cjBEcCs4UWxRSTZYTXhoM2k1UkJVR0RlOWg4WGt6ZUE1N3cwUG1aQmF5T2Ft?=
 =?utf-8?B?SE9OSEJaeWNVS3ZSK1Q5bzNsMnBsajNnM0grdFQxdm5CV2I5Y003aUszVWI2?=
 =?utf-8?B?VW1qbEtENFA0NFZNTEFSbUllaERUS081NnhIeXpCa01Ka2N6RWRISFVFRkI2?=
 =?utf-8?B?NHQ1QmtRZ3BkUHdMWW9CamFUK29hYnNkWVZ6dGZzTGVIbEppOVRaVGhURkoz?=
 =?utf-8?B?bE84MGgyVlpwcTIraG51Q3NTZjR1VDJuYitJdnQyMTlGZTd4OERZREhYM0pP?=
 =?utf-8?B?RU1oN2E4M3dPcURsQ3dMd3hhYTREai9wSExaQngvdFlSL21WR1c0elN5OHRT?=
 =?utf-8?B?UVM2YWpSNnRxeUtWb09DTTVMN0J4aU1WLzhFUFYraDBuUzJqTHR3Q0NJbU1u?=
 =?utf-8?B?NjdLalY2ZkhlSVQvYURkcUt6K0hzWTUyeVdmbGpIRmtsQ3RGMEZ0SHpZVWNS?=
 =?utf-8?B?d285dVJrVjY1Sm9YYTZaUkZCMEx5dzM1ZTBiNmMyUmIrcmhFdmNnb1BSd1lr?=
 =?utf-8?B?b1EyMCs5MGM0YjU3VTZ0bHJiNnNWcE8zSTg4elFjOGtOSnBrU0xicE5ZSEJP?=
 =?utf-8?B?V01ESXRyQzVNbjN2MGF0em8zWU05Tmx2L25xdU5Pb0dEdkMwYXRBbUlwWjV5?=
 =?utf-8?B?U0ZMSlAvaFpBR0FiYXlPaVhJZGl3ZkV3UmJhd3ZHL3lMMmZaVmNRUFRsQnJC?=
 =?utf-8?B?NDBWeS92aEluenJlVUZBWVcyZC9XSEwwZUJVd2xSODVVOUw1VncreEVnL2NC?=
 =?utf-8?B?RG1MU3ZzcW5NYU8wQ1ZSYURwcktmVXI4NVhldDEwajE5VE9rZ2Z0Rll4bmxv?=
 =?utf-8?B?ZVlmVk80V0ZIMVZtU0hkRTZML3pQcjVBY0ZNc2NoNzY3TnJzL09YQnVRSUZz?=
 =?utf-8?B?a0MrUjVSRzA0RGVoZC9CWExpUzlQZmtUczNCU0xwTHZSTzFvUmF5UU5xbWk3?=
 =?utf-8?B?cUtJTi9FTXdMZkdXamJabXdpcWZ3VEgyWWdmbytML0RFc1FlZmJac3ZhUmFn?=
 =?utf-8?B?NUhzRmJKb2hzbElJWlZvMW1PQjQvR1FpNFVPY1RVdGRHQm0wdE41eU1KSFRP?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd7a5275-25bc-48e2-003b-08db7f0c2a27
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2023 17:04:02.8437 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nz5wzpV4uIU+eFp/Mw14GQIskjlYhV1CBrxZ5LR7ezlR4vFI6ABZNSScy1kUQpARRLM8rPIluoctB1YqvjRcjYqTDj5rGoQlnUI2fG4F/kg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5230
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688749448; x=1720285448;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UiillOUk9znRZTiLBDgfrpQ5JqoCQYdfCoVs1H4rJ6o=;
 b=dG9+A/tXkddKbOUqpopoGC71Ay4pSZZdiIxQik1nYhGMDAn3qjw028X+
 oLOwEMLBqzgKwFiHBtceGQLJnI92BIQXL5X34wpRN157XdaA3CX1QVFE1
 xb6gsdzdMSzCZwnXe+UyijySDg2JCBzAPI5ho4lf/ndHC/A5jh3j4e0Z/
 kVRVU2/q0uvSKzUrjoiX+I6rcVM+6NEApHGVxf2CNXPxDwLtpv0OmxHT0
 OwNbfctVJGDyWnR73JAexhwjC0KRElxFlIx0/qoSvszsNKy43Hb7mui1+
 nii/qceBR1GRc/NUO3RkhYJ+8qp4VLqWtCKNuqJNKjsfO1BT5XDui/Jmo
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dG9+A/tX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Unregister netdev and
 devlink_port only once
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
Cc: pmenzel@molgen.mpg.de, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNy82LzIwMjMgMjozMCBQTSwgUGV0ciBPcm9zIHdyb3RlOgo+IFBldHIgT3JvcyBww63FoWUg
diBQbyAxOS4gMDYuIDIwMjMgdiAxMjo1OCArMDIwMDoKPj4gU2luY2UgY29tbWl0IDY2MjRlNzgw
YTU3N2ZjICgiaWNlOiBzcGxpdCBpY2VfdnNpX3NldHVwIGludG8gc21hbGxlcgo+PiBmdW5jdGlv
bnMiKSBpY2VfdnNpX3JlbGVhc2UgZG9lcyB0aGluZ3MgdHdpY2UuIFRoZXJlIGlzIHVucmVnaXN0
ZXIKPj4gbmV0ZGV2IHdoaWNoIGlzIHVucmVnaXN0ZXJlZCBpbiBpY2VfZGVpbml0X2V0aCBhbHNv
Lgo+Pgo+PiBJdCBhbHNvIHVucmVnaXN0ZXJzIHRoZSBkZXZsaW5rX3BvcnQgdHdpY2Ugd2hpY2gg
aXMgYWxzbyB1bnJlZ2lzdGVyZWQKPj4gaW4gaWNlX2RlaW5pdF9ldGgoKS4gVGhpcyBkb3VibGUg
ZGVyZWdpc3RyYXRpb24gaXMgaGlkZGVuIGJlY2F1c2UKPj4gZGV2bF9wb3J0X3VucmVnaXN0ZXIg
aWdub3JlcyB0aGUgcmV0dXJuIHZhbHVlIG9mIHhhX2VyYXNlLgo+Pgo+IEhpLAo+IAo+IElzIGl0
IHBvc3NpYmxlIHRvIHB1c2ggdGhpcyBwYXRjaCBmb3J3YXJkPyBJIHRoaW5rIHRoZSBxdWVzdGlv
bnMgaGF2ZQo+IGJlZW4gYW5zd2VyZWQuIE9yIGlzIHNvbWV0aGluZyBzdGlsbCB1bmNsZWFyPwoK
SSB3YXMgZXhwZWN0aW5nIGEgbmV3IHZlcnNpb24gYmFzZWQgb24gdGhlIHF1ZXN0aW9uL3JlcXVl
c3QgWzFdIChzbyBzZXQgCnRvIGNoYW5nZXMgcmVxdWVzdGVkKSBiZWZvcmUgdGhlIHJlc3BvbnNl
LiBXaWxsIGFwcGx5IGFuZCBoYXZlIGl0IG1vdmUgCmZvcndhcmQuCgpUaGFua3MsClRvbnkKClsx
XSAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50ZWwtd2lyZWQtbGFuL2VkYTdiODRlNTYxMjNi
Y2UxNjdhNjQxMzM1NzI0NDBlNjgwNmVmMWUuY2FtZWxAcmVkaGF0LmNvbS9ULyNtYmVmMGE3MDQy
NGQwMWJiOGZjYzFhZTFhNDg2NWM2MTdmYmI0YmVmYwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVs
LXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
