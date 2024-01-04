Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DA082490B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 20:31:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA6BA61393;
	Thu,  4 Jan 2024 19:31:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA6BA61393
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704396698;
	bh=gWZT5drfo8pFetplUe1DOJw+TBgtGcO/RNTPtOoPn8E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bnRLSmARhPPhdORQJeb69GPL25TdlW38aIFWbF8e24dsTFzhVCM3ou3439sdO/0v/
	 oA9YsqQRPKiOZ37KnEQ+VrBedEh7hIT2vL++eHnkXkLn97cbckCiQP55Wv8n7FC5Zb
	 SSzu4KOKhphpcGxiBq+VlyegaZxuDBZCb3mJGpiMNSDbXmk2zVrqLyMWw1P+3ApB9I
	 Ade4Qqn2cxe3Z1qEAo0ecTXsVVvpJMDWhLJzkfLRSHbUQ8IezSmPJbnmcijr2Rfm0a
	 aV/KxOYozzacNK0Xw+UbUiqeHuyX4M3n0qqERhl45WImBEkTP0HLEdsz8Znn2E2MfD
	 tqxmVeuwbxDBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sPvsWDshUIgY; Thu,  4 Jan 2024 19:31:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE914611E2;
	Thu,  4 Jan 2024 19:31:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE914611E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 17B271BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 19:31:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E23DD611E2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 19:31:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E23DD611E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9rU57-WEu6vm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jan 2024 19:31:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 15007611C2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 19:31:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15007611C2
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4451304"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4451304"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 11:31:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="846348008"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="846348008"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 11:31:02 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 11:31:02 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 11:31:01 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 11:31:01 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 11:31:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e3HsP1a/fxclKS6JH9lHHODuFXLHeN3Iw25s8Mx8eDTkOQM91ecFAvSRYTn+HPg2ZDt4AKIL9Tozy5F05hDktZwdJiyxLUg/CSPTUAWwRJljgBbJglFJLPriPSoC+9ws4p1kIIvRNSvGDFLh3TmuuxLZZxnyBSHAGfGN7/LSudrW9RYL/WIWGURMyleZ6mH9YtThZ6Jq2LcJauZg5y4XHFBNqvIANPYjHyx8RfaoGTVPsS/m/dVbgap1RlUVL6ZWxswoxhp3+94aiKdvSoaHWQoyvNR+G9JF+PT+rg9Q2/bub9AuBd9j+sc+rt8RATwwV4z7bdmsGnHwwQmCXd8pLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gWZT5drfo8pFetplUe1DOJw+TBgtGcO/RNTPtOoPn8E=;
 b=AcR923UU7nVP+E0KdDILsHZ3UhUnG5317BOht8p5lAyUrYAnmYGizufd2SQ1UPyfeBfKtJeyJQYk+R3CAAA8fNLOCloO5yD/xEVsovS6qwepHi2vYZp+L5/wfLlzIZQbBuZcf4P+13KsRqqn4xB4Esh/C2e2IbPZzfTkmw4g+EQAtixjT+tTESEo0pl/xoi4UT+hpmKmf+8/Inx0X/x1aLFNgAnYGzmuEjCoV+aXm9PSZhYMXciYihi5Omq10aMIDplRwefRR1gysJsoxjQE5YJxEGKMhrXgp/2ZSr8e32ZDruzvzP932McjjcbJ7/YXK6n0l0B5S5LjZ7CHNZp6Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by MW4PR11MB6837.namprd11.prod.outlook.com (2603:10b6:303:221::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Thu, 4 Jan
 2024 19:30:58 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::4edd:6545:5699:32ce]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::4edd:6545:5699:32ce%7]) with mapi id 15.20.7135.022; Thu, 4 Jan 2024
 19:30:58 +0000
Message-ID: <a410ef0d-b21f-41fa-9adf-d64b00ec1389@intel.com>
Date: Thu, 4 Jan 2024 21:30:53 +0200
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240103085044.283741-1-vitaly.lifshits@intel.com>
 <ccafbfeb-f228-4070-8425-e6d2dbf7e0d8@molgen.mpg.de>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <ccafbfeb-f228-4070-8425-e6d2dbf7e0d8@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0151.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::14) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|MW4PR11MB6837:EE_
X-MS-Office365-Filtering-Correlation-Id: 76868aa3-260d-478f-50b4-08dc0d5bad17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZkwwshF8cciuwre7UW7RVLomDjh7K8ttCDDi8ahhRqjP2LyA98aOrUIsCfXoOuK06WOCjzzex457ZvZBI8nCNPKCK8nGF+RfTt4hHnXUv3c2exlD8COEK8wSOJIjeNxmXRKEXiMtnJbXU0/ek5+6geH0Wuvwxq5LSjolPYpTWeeFlZ7AN2+EQcIaZUbIG2J/gTOLjcVI0gEq9AckrABT1CwRnxAPePa97ig5KWS9nSHNhflrb/sTjpkBXERVIL+mbUVe0aElsZq7ejK0FKQ3oZD4Zq8saiZjk0f8/tmWHCEd68unOK4kVpDvL+cOynSBHUfzEiryIZ1g0XBlhKMjqnDiqL2CtLtTyYMHcd/Zm5c6F7w0Jb5Z5ztlvAitVGby1sEjcjhDWxSVZDmYnf+w6LPmqcWP9eoWAMT9ihifM+xXQz525nyqQviOfT5+ZpadoEeAZW4mmlcHbDtajLLKOTM6BWEBcMo5ZOeeJyu9Z259RVH1jYhqE3f2vrhpy+CBhW+lTo2juc6ZryZIsHp9GWDeNcA1bbOFYjb+qAWmEXftqEEAgIgj5SZo5ds4BWr+/Vrl1uay4dU5Z4oS+Ct71CJKewFpL9w1345r3iM4SKteOSdfeILXq+Rdq+1w0+6K273tsPKbtrEtrpdy8kSBsA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(396003)(136003)(376002)(366004)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(53546011)(83380400001)(2616005)(5660300002)(41300700001)(38100700002)(26005)(82960400001)(8676002)(316002)(4326008)(478600001)(2906002)(8936002)(6512007)(66946007)(6666004)(6916009)(6506007)(6486002)(66556008)(66476007)(86362001)(31696002)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THk4OWJlYTZ5MDZBVGhkWWt1dHRja3dzcWVwb3JWdTZGZVF6ck1OeFdxTllz?=
 =?utf-8?B?V2lLZis3enZycjhqa2M3cmVXanhwZ256ckFYTzdiV0lRRTZnOFVYdVFJTE4r?=
 =?utf-8?B?NHJmTFNRUlhiRGxpQlBLNmZmUlBnV0ZUc1F1WnM5NXJhcE1ZczNnbkRQaXM3?=
 =?utf-8?B?MzFyMG5oMzNRc3JyZ01vdzNMNXNnQUFCRW5SWUc4U2Z2dlJOdTNNNytsbHlO?=
 =?utf-8?B?TXNmRG9ZbFMyYll6RTJIM2Q5Vm9FWFQvQnVXUzlFNm42czNxd1BsajBjNFkr?=
 =?utf-8?B?NW1jekk5NzlvM21WMFY0bWhzc29HWkM1UFAxYk5NeGpHazZ3aWVjUzU3aVBs?=
 =?utf-8?B?NlR4a2M5Qkx3QW5IcTdyalFxMDF6djZOdVRRUUJIN08zY0g5YUg0UlYraDRo?=
 =?utf-8?B?TjhUajBWazBLNXdwUjB5M1B2YlJjRXhGMlcwNTVVY0cwTmpDZ0l6MVNHU0JM?=
 =?utf-8?B?VTdIRlNYaVpXOFlqTG9pcEpwajUvMG1tOXFCQWtUM2IxaXk5Y0xFVFZrcHho?=
 =?utf-8?B?VGN4Lzd0bHRHOHVpdjV3eXd1eVlOcGtHUzV5UUtIdnB2Uk5aUmVGZW5GTm9Y?=
 =?utf-8?B?dThPVmxwbUtJelM4UmczTVpBOHVSNnR0cUFKWGZTZ21vNytJcG16bXYrcElx?=
 =?utf-8?B?NS9QRmU5VjUrbmorQzRoVW1mUzdEY2w2OXlQaU5obXdCWVBsZy9VeElhcXJz?=
 =?utf-8?B?c1lWOEVydnFqTjlRNTlCaXVyZ3lnckxGcEFseDRUUm0vSEF3Z1diTm9XZEND?=
 =?utf-8?B?SkJRQ3JlSytyeWtzajMwcjBQWnllc0o1UXc0TEZIQzJtWExNVVVPMURESlZa?=
 =?utf-8?B?VlhYUy9zdzd6eFVkVUl5UWxDTTZ0M29kMDdjM1VaMGwwVDVBUVNGRVBFSmZR?=
 =?utf-8?B?QS8yZ1UzVlZBTDgvZThMajdxMFBxV2RqVzB1ZHEra2RWcVRxOEdMS0VMSjlr?=
 =?utf-8?B?cjJ3bFo4N3Rpa1NiTTRGWVlsNXhTa2VYZjM1RDNaWXgzQmVOR3R2R25WYVQr?=
 =?utf-8?B?OUlWNnVwbVNQd0NXOWNyWlp6ejlkMUpKNXErMytzVmRyRnU5QWZya1B6YlI5?=
 =?utf-8?B?Q2hqT0xrTE5VWnVBOW1COVRGTDAzazdJVW5ZZlFQSnBkaUVqU1hHQ2F0S1Yy?=
 =?utf-8?B?eDM3eXZNRXdxZU85L1ZOb3ArK0pnSVlGQ2tmV0ZwdjA4Q05mZmNUUWxDWGZ2?=
 =?utf-8?B?U1ZiTGZIeVFWQjZsSjk2akpnSzliNlB6dHNqajJoSGt6MzFFb1FjZjdRNzRC?=
 =?utf-8?B?ZUZsakJBQlBNdHdCRmk5Y3lxeWRnVEtrTFhQbVNJbExLaE4vZG1HZ2xtWE4z?=
 =?utf-8?B?ZW1Yb1dyYTArSW9pNGVsa3laUmt0TXJFZnVUUzdnNWhWdUVIS3FKcm1EUmJk?=
 =?utf-8?B?a1FQV09vNEdCVmdCaHcrNjlyVnU4V0JuQ1VWSUplUlovYW9NWjV5bVRPNUY5?=
 =?utf-8?B?aWFWWXRzSzArNVRHK0FodXZhaGFBQ2dRRnpsR2hHMS9OSzViYVpkcmdZTy9z?=
 =?utf-8?B?djltS1VaeUpuQXlnTHljVGVMeExsTDMwOWZPcm1zQURnV0Z1aytqZ1U1MUll?=
 =?utf-8?B?cmxtNTBKZnUvdUZsNm5aZi92dko5OEp5dDg1ejNiY2NGS0VZUUVwVHR0RTVB?=
 =?utf-8?B?NHVMZm5QV0lxaHN0VTNWNkU1TW42TGpMSTRLb3FOc0FQZ09iYnNzM1pHb2kv?=
 =?utf-8?B?RTBjK0p4NlBiSjN0SXZzL0pUWWE0Znd0WVdua1NFZE1TK1lsU2VCRWJidTR6?=
 =?utf-8?B?andHdVVNMGtCRURFb1dPSys3MXd2Z3dMRGhvN0pBdHFKanJwWXNSVnAxWVBw?=
 =?utf-8?B?NzVHWDc1dGt0OVU3SHZ1UVYrUjd1ckw2UDJBYVRkRWhFSTVkL2ZheTBEbG5U?=
 =?utf-8?B?WnhMVm5PR3BPS2dLVkhZUG1oRWFqWjZTZFV3eUhGSmx1VjdkSUhZSklsaS9W?=
 =?utf-8?B?MTdqWFQ4QVIzbXZaZzlYZTVUNytZYmlwajRIOVRtZ3ltNkIyZEtOcUZ5RGEx?=
 =?utf-8?B?TVhLd0ZYNGdKLzlxTDE1bXhRVm5WUUxyZjhaY01vTUVIdWpMZnMxUGU4aXZS?=
 =?utf-8?B?b2pibVhIcG5LUllNREVrNFlUR2lTbzFCUHNtNzhZV0Ftd0dHSThJQUR4VzVq?=
 =?utf-8?B?ZGIyU29xSy9scnFuMGExUlZOR0pjekxXSnRmYjNDcE9uZC9hSENzbVBWeXly?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76868aa3-260d-478f-50b4-08dc0d5bad17
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 19:30:58.0166 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IDwx+i8a3U3n/9Fh70LSG7Q8dDdnW5WKhnkKfNM1YESxd7eb0XanahaXnTpbXvqdx+MByeYeeQY9501BFCGCZh/9hgHBJAHH5h3ZDkGCfAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6837
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704396692; x=1735932692;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AL3zMYAKjVsr4xX32bJOXrMQMshqXICP6CURZW9J4hQ=;
 b=jHMETYf5DDjUW0j3dCjy9OKJ0TVmSm72NvMaCe7yAC08cP8vrKlqljzP
 WHVW2xbWMwBlF+yfXsyIQmkZ6AR0AkMAXBxWQ1nnxCnVtkXJWSGQ0zIDg
 fETciC7Bl9n/SZx+5rGrxvpR9OUDKOVHMv+C7K+J7Fqjm1eIA18Y1/PL+
 gzLKwPxqt+S9OzJ/syljJthmqNI9Mpik+ame98PLO3QoM2LxQl2Vy3Qan
 rT2SvgMxMIQJz6Sa8Go5rrDW6Z95v8MhgILyGd3/f6XyC8rtGn1Bligln
 QYJakoLdOZkpYUdApw0fKfh9n1PZvsLFClFlMIihoKEqSK1bX/knSqXNj
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jHMETYf5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATH iwl-next v1 1/1] e1000e: Minor flow
 correction in e1000_shutdown function
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
Cc: david.m.ertman@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Paul,

Thank you for your comments.

On 1/3/2024 5:27 PM, Paul Menzel wrote:
> Dear Vitaly,
> 
> 
> Thank you for the patch.
> 
> In the commit message summary, it’d be great if you used a statement by 
> adding a verb in imperative mood. Maybe:
> 
> Correct flow in e1000_shutdown()
> 
> Am 03.01.24 um 09:50 schrieb Vitaly Lifshits:
>> Added a missing curly braces to avoid entering to an if statement
> 
> s/Added/Add/
> s/entering to/entering/

Will take care of it in v2.
> 
> The curly braces are not missing though.
> 
>> where it is not always required in e1000_shutdown function.
>> This improves code readability and might prevent a non-deterministic
>> behaviour in the future.
> 
> Looking at the diff, it’s not clear to me, how `retval` is used/set 
> before. Could you please elaborate, what the problem is?
In e1000_shutdown function, at the beginning retval is initialized to 0. 
Before the if on line 6694
retval is being used to evaluate the output of e1000_init_phy_wakeup
on line 6676.
There if retval is not 0 the driver exits that function, otherwise, it 
still holds 0 as a value.

Before the patch what could have happened is that if the condition on 
line 6694 had not been met, the driver would have entered the next if 
statement on line 6700 even though it was meant to evaluate only the 
output of e1000_enable_ulp_lpt_lp function. Though it is not causing a 
bug since retval at that point is still 0, that evaluation is unnecessary.
Therefore it is not a bug, but, rather an improvement to the code by 
making it more obvious and removing the unnecessary evaluation.
> 
> Missing Fixes tag?

Since it is not a bug, then a Fixes tag is not required.
> 
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c 
>> b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index af5d9d97a0d6..cc8c531ec3df 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -6688,14 +6688,14 @@ static int __e1000_shutdown(struct pci_dev 
>> *pdev, bool runtime)
>>       if (adapter->hw.phy.type == e1000_phy_igp_3) {
>>           e1000e_igp3_phy_powerdown_workaround_ich8lan(&adapter->hw);
>>       } else if (hw->mac.type >= e1000_pch_lpt) {
>> -        if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | 
>> E1000_WUFC_BC)))
>> +        if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | 
>> E1000_WUFC_BC))) {
>>               /* ULP does not support wake from unicast, multicast
>>                * or broadcast.
>>                */
>>               retval = e1000_enable_ulp_lpt_lp(hw, !runtime);
>> -
>> -        if (retval)
>> -            return retval;
>> +            if (retval)
>> +                return retval;
>> +        }
>>       }
>>       /* Ensure that the appropriate bits are set in LPI_CTRL
> 
> 
> Kind regards,
> 
> Paul
