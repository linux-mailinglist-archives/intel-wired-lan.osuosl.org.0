Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E857814ED8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 18:32:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 562BF424AF;
	Fri, 15 Dec 2023 17:32:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 562BF424AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702661541;
	bh=eRXvrGazrlT7EJRlWAlzylWcdDqYwdD9ze+9wm/HOh8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r+DuldkU9REeieTRTJVxfGf0WhwUIKxo7sfQODWG5uZ2N+kMllSn8SbJ9A622FCi9
	 jL7U2tW78Exh8rJywKb0u4U36n20ckqDE8DkBeJragPNUn02DrTXPd+OyBgsY+WJcx
	 KarA50eWDgosHKkS//3Q9jR0gMdNL61QnAzNsl1cOjkh9j794Wj0H1hoxDNbumFttL
	 LzVfEyz3srPNgoEsGWGDA0Vick3LO4P6u8jq7dOCMpR5AGK0L9iH+JRXUuxM9RHOAj
	 5Zc2J35KsMf6yfQ3cyP+8bam6bqQanpOMKxncrvT/tN/u1L/er7ThXMfBxbFUnpC3l
	 GEC/PA4BExLLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id quQjHzlfY95c; Fri, 15 Dec 2023 17:32:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEB3B4249D;
	Fri, 15 Dec 2023 17:32:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEB3B4249D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD70B1BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 17:32:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A088261094
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 17:32:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A088261094
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TrRVPPeXeSrU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 17:32:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5BE96108A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 17:32:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5BE96108A
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="16856853"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="16856853"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 09:32:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="778335250"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="778335250"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 09:32:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 09:32:12 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 09:32:12 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 09:32:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jNbZt46qqCER6pPc2+6bKCCgV/DTSFOmID5BE79TDl17jnPDIIUGlwY/Nrc9/llQkLzzaRxnM3pB1ccVS5mWd64BlsvbFwJZZsLD4HsgGvS2OUSkfEPVmx93kP3YMSzb4gRHQYlMGd05sLPNKu/Z7rTM/avVXAJuITkj3p/VglJdlcldUHyZXsK/1vAvP3X5k7ENMjEPuK/6GaMCcQTNfINEURlklxOxMO8lYGeAPx+pnOUvh0FAJfnF8oqAm93J9cngnBsa9nWrZeusdCXmMHfLEwnZ8IiBHjWvpjpo0LuTdxMiY+lyKfqLnh7oSgttmN06cIqXjKGYM7+5jAPuKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RphKDH4nNNoUXH+LgEpbULf403zFTXaeYvL7zq+pT2o=;
 b=MLxaR6hasO9zaE35Mp1D/PZeVv9xwiwFtO+8cc4A4ozoeRSYGaJAmbHbi/E4oM5DolgdsWZ63kMvnbI5hxV7hVCdmVY3A2+UHXl5QfcUQz62pDQeVPkAXp3g61HIJhZv3tFNTws3hd1N1C3x4UgLR5kZ/stE8AyVKxRHycSEnwt7zM3BiTA7U+5T8r8GPIumadX4SflD3l1fvj+VrIcTaJvmqt4gSdKkQnu5ndQvMw2XynrI6Rtkp+i4HKD5fYQ0pm+rePRFO/UkiytFPaqRzqsq2QejnnO4BuZJ/ywZUhZlqkStHPiQfzE53Rj9Iw5s6asXt9J0KZHi+2oem5fJ5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5782.namprd11.prod.outlook.com (2603:10b6:510:147::11)
 by PH8PR11MB7072.namprd11.prod.outlook.com (2603:10b6:510:214::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.39; Fri, 15 Dec
 2023 17:32:09 +0000
Received: from PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::dfa4:95a8:ac5:bc37]) by PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::dfa4:95a8:ac5:bc37%5]) with mapi id 15.20.7091.032; Fri, 15 Dec 2023
 17:32:09 +0000
Date: Fri, 15 Dec 2023 18:32:02 +0100
From: Michal Kubiak <michal.kubiak@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <ZXyNklin95kqbpMp@localhost.localdomain>
References: <20231212145546.396273-1-michal.kubiak@intel.com>
 <78ecdb9f-25e9-4847-87ed-6e8b44a7c71d@molgen.mpg.de>
 <ZXmwR4s25afUbwz3@localhost.localdomain>
 <f5b560ed-783d-49fe-ba51-c4f77e30c479@molgen.mpg.de>
Content-Disposition: inline
In-Reply-To: <f5b560ed-783d-49fe-ba51-c4f77e30c479@molgen.mpg.de>
X-ClientProxiedBy: DB7PR05CA0009.eurprd05.prod.outlook.com
 (2603:10a6:10:36::22) To PH0PR11MB5782.namprd11.prod.outlook.com
 (2603:10b6:510:147::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5782:EE_|PH8PR11MB7072:EE_
X-MS-Office365-Filtering-Correlation-Id: edb8674d-5c37-42d2-5040-08dbfd93c3e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cG96kGSlhMnbMwmWvhbZdCvWo6uI9azKXw7ANN+EA0zhcdpvis9F0iZLcsgM7OmOoIs43b/qHXCigGjEUIbGryeWgdDDWQSNUjIEXE5n+XIxe+HG5vB+4ASb2WYenNp+qdBHvPly7o7KA2bEExzjIBusnQ8gLL0p7wpeWnGuBwW5UHjZQpHqBuE8UDPf2T7WQwdTzOaUH+k4Btqz4LdegVyQby4QKhbZI8KX8iOZgw2RAbPAfVwQVqJAXfwh1vHd43fW/OkdjPzguIOYrho3+kAg6FIhda/q4z1Cn0Zfwga+chE1YwnWu6GVY+67p1LTZEYhbUTZJkrb2D4LGVRU9GEQDkklINOl9SmfPTqCRFv/g4GxvwqX/75joFPe4ehigZX1vfXj5ZJ/Tbj7wsPwf6Edu5WhqAeIMQ5tlmyXBAY+pfdLnZWf0SPvS5vsZ+3uLiDbYgy7TVaE+k5rbopsIzmiIFh8tT+5Ul8s7jgAtAVeHLu3DlSaDJ21z0PomrFQUnmP+LsOJDHu2xzkwuBPZY91ePMRYd4Sd78BmyrC8aHF6aPd9kNhjt9UZxsxZ2lO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5782.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(396003)(346002)(366004)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(6916009)(2906002)(316002)(26005)(66946007)(4326008)(107886003)(8676002)(8936002)(6666004)(53546011)(5660300002)(6506007)(6512007)(9686003)(82960400001)(6486002)(83380400001)(54906003)(66476007)(41300700001)(38100700002)(66556008)(44832011)(478600001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkYxVnV4bVF6eVJuVzdZN0xoekxRVDNHRlJHMjFTKzlsTU45a1FHelphak1P?=
 =?utf-8?B?YXhCd0dmS2FaTGpsUjNmUWhuYWMyRUZUbndXbXVLcDV4YzRVZW9jSUFaWERu?=
 =?utf-8?B?THZ0SW9ORkdvWVNkWU1naFpWUWJSUW14elFxZnNOME5BYUoyMnF5UTNDVklJ?=
 =?utf-8?B?Zi9EZjJLRDA1SDFGVjBhazlHWHF6VkNRQlFxZ3RCQTRvYXkzNi9NaW8zdXlI?=
 =?utf-8?B?dFQyMG4rT0xlU0tUbHhmZXlvVUdRdTRJVUs5bTl5MVRqZG9VK1NPNDZNTVJI?=
 =?utf-8?B?aDZ6akZSS2l5ZDd2UWZWVjBrVE52NGVEY3lNbjRnNStuWFdyeEFLVEZjc2RM?=
 =?utf-8?B?eEw0Z0szQkEyWXhSdmxIQkg0RXZSUVM2ekMvUTAvNlhnbkhUZkloTzk5WkRR?=
 =?utf-8?B?YVZiRDgxWGlaQzVldmcrenFkb3lKMnQxSkFkVGtvdko5S3NkdXZ0RFZCQk5l?=
 =?utf-8?B?SnQ3aVBreC9OMTVaRWlCWjI5Z0RVMVh3bjA2Y0JHbTBkZ2s4aml5WmRtM0Rj?=
 =?utf-8?B?ZWE3cUlhMW9nZzAwKzcvWk1GUzFjQm9MbGdYNlhqbS83ZitkbnVyMFMvMzZT?=
 =?utf-8?B?UHlmSkdONFJrV3ZoSDNGWkNqMU9Fd2w5VFdlcjRXM2ZJODhwRW0yQTVzY0li?=
 =?utf-8?B?WmxQbTNoQ05uTlp4TFlPc2Q3czVuM3oxS1ZrS3o5d1lmTUpuQXJWVzRzcXBY?=
 =?utf-8?B?Ritqb1ByeUJQbXB2R2orVmdMZ3hSaCtFY01SV09lTzB4NVFMZXEySTFVcDJC?=
 =?utf-8?B?NGtXeU1WbVFRU0JQN2RGZkxSNVhPZ0sxcVVBb0d5YVhjVmZMZk5iMC9oeEUv?=
 =?utf-8?B?emFUbGlzNDA2TFVkSFlSUjZaSFJDeThPUUpWaTBONXNFajJhazVFMEJXQlBI?=
 =?utf-8?B?bzBVTlZyd1pXdXFNa29mNHA1c1dtb1BRRWtYUW9aYTZsQXZyQ3lQcm1ubFVj?=
 =?utf-8?B?cE9lbWhLaUlkQ24xVWxjU3RDQSszYjBRUks4SGNETUxXK0JUdnFrRC9pNHNX?=
 =?utf-8?B?ZGhWam44T21KSSt6QXZlUmc5TEJja3YyUFk5WnR0NWZ2bDJIVkhDQ0ZORVkw?=
 =?utf-8?B?L0FPYU8rRkdSSDNBWWF3V3B1UmJiSGxQQVdrdFl6VFpWL1NJNTdOcWJOVmtz?=
 =?utf-8?B?bzJnNFFIVjF0cm83a29WT1FQdGpnai85NForWDIxc290aVdYOTRGQllTWDlG?=
 =?utf-8?B?ZG9qcmtFeHMzdmU2clBtTUhJc2ZvZVdpVWdpbC9TQzdKMEhPQk1CNjFRK2FK?=
 =?utf-8?B?NEh1VmJ5bHR1STU3U3NON2Y1NmtCYW5kK0RYRmluSDNzbHpLNlBxNzhjeWYx?=
 =?utf-8?B?Q3lmeUd3cDVZU0pKbTVjeGVhNXJGNEVRNlRJSHJPaEk2Z3doalF4WGVLaGhL?=
 =?utf-8?B?MVNpMlg3a1FQbUFtd3hDVmhNWU5yWGVDbVdqMk1uWlF0MUNRZFN5REZBVjlF?=
 =?utf-8?B?S29FNStySUk3S3lSVVA5RnpCdXZ1U0k0UTIrd2QyY3kvcjhSakJOU2VndmEw?=
 =?utf-8?B?K0ROTFJlb0k1UUQzRUs5bWliZVJYeTMrdEVLUVA1M0E5QlNuWk1kbUVPQlpl?=
 =?utf-8?B?bDJZU1NNM0NBN1JxcG1QQ2RHRThvNVZVVlFLanByVGMrL01sT3BDNzRZd08w?=
 =?utf-8?B?MG5hVmRRTVZvL1ZZaDJiYjE3dU44MDVpMEt1VTd3RGVZSWNXT2g3SzR5aG11?=
 =?utf-8?B?OWtCR3gvTkpoc0t2RmdkWGYzdmhCMWQvYVZ0NmxFai84cTFoMmFYOEEreUxW?=
 =?utf-8?B?M01lS2xlNkRwTzNMbWxOS3B6UmxKQWxYQ1ZrWExxelpBa3lDQnQ3SEMvRTIv?=
 =?utf-8?B?Q1VYNjNpTGhwdzZEZWhUWmZVaVpPaDZydEx3dE9tZFBndW1NS1hEajgvYWxY?=
 =?utf-8?B?UjJGZzhHUkJYaVdYMUM2VFdyZkV1VEE4WDdhNmFuM1dYVmFJVEVYZU4zd0J2?=
 =?utf-8?B?TTJaNjR0VGoveVFlUGo0V3lQd0tXVWNLcHFGNVBsYWVrek1BYldCaUFYMmlY?=
 =?utf-8?B?WkUvM0xNVmpXWlRqRDhabHE4OHAzcnNjTVpWODdxNE1pTEMvYjV5WkJrcTJk?=
 =?utf-8?B?anZBWGJPM2c0d1RJMjBOVFN4ZTdkcVFmMjNaR1RueVcveE40WEJPcEFKZmx1?=
 =?utf-8?B?VkFpQ1B0bW82d1VjR0duTFZuNlY2b0FRN1pnVlZPMi9mUzFaam1idmhydFA0?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: edb8674d-5c37-42d2-5040-08dbfd93c3e8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5782.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2023 17:32:09.3032 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cXDWImfEDNOau4guVv+647RAGaonU6XQsQvNa5Wx0YckgnUChsC4/GLQUtUqW73Fbz9QixYZrHFTsYChHhCVlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7072
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702661534; x=1734197534;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=qtls/8aLnfmVOnI8U+CH3aypWPYCwphwWE3kroV/QFs=;
 b=Onau576sqhsl35IMGum+KRzZ6lktE63ITXLAtFY/Crdu80uyNDFSdTCF
 QgTUmYBi7ZypxLfsVtFzo+cRPP1ro012DHFfOlWXW1azSBNUE18ui+4+j
 3fRWYc17MhQZC7vt+ItQS8bQsnsYZ9DYu70Rp0SYrPIgaUGCG+BC2wbRf
 S19Yyiw8QnHuXtzAw2wYeqndicJuxcwbmYYSRNt9Jc5XvTLsj6TnQtOi2
 3rvVkmYa24+sDkfNvzrGs720VSeeXakHxKTisk2vn+q3QXYHYycdmywS2
 ARyr7DBXMfVrlE9mlc9rxvtFEWMvvNkVSvWoiICx/cv2QA3gNoFHL7zJy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Onau576s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: enable WB_ON_ITR
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
Cc: maciej.fijalkowski@intel.com, emil.s.tantilov@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org,
 Joshua Hay <joshua.a.hay@intel.com>, aleksander.lobakin@intel.com,
 intel-wired-lan@lists.osuosl.org, alan.brady@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMDE6NTk6NTdQTSArMDEwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gTGllYmVyIE1pY2hhbCwKPiAKPiAKPiBBbSAxMy4xMi4yMyB1bSAxNDoyMyBzY2hyaWVi
IE1pY2hhbCBLdWJpYWs6Cj4gPiBPbiBUdWUsIERlYyAxMiwgMjAyMyBhdCAwNTo1MDo1NVBNICsw
MTAwLCBQYXVsIE1lbnplbCB3cm90ZToKPiAKPiA+ID4gT24gMTIvMTIvMjMgMTU6NTUsIE1pY2hh
bCBLdWJpYWsgd3JvdGU6Cj4gPiA+ID4gRnJvbTogSm9zaHVhIEhheSA8am9zaHVhLmEuaGF5QGlu
dGVsLmNvbT4KPiA+ID4gPiAKPiA+ID4gPiBUZWxsIGhhcmR3YXJlIHRvIHdyaXRlYmFjayBjb21w
bGV0ZWQgZGVzY3JpcHRvcnMgZXZlbiB3aGVuIGludGVycnVwdHMKPiA+ID4gCj4gPiA+IFNob3Vs
ZCB5b3UgcmVzZW5kLCB0aGUgdmVyYiBpcyBzcGVsbGVkIHdpdGggYSBzcGFjZTogd3JpdGUgYmFj
ay4KPiA+IAo+ID4gU3VyZSwgSSB3aWxsIGZpeCBpdC4KPiAKPiBUaGFua3MuCgpXaWxsIGJlIGZp
eGVkIGluIHYyLgoKPiAKPiA+ID4gPiBhcmUgZGlzYWJsZWQuIE90aGVyd2lzZSwgZGVzY3JpcHRv
cnMgbWlnaHQgbm90IGJlIHdyaXR0ZW4gYmFjayB1bnRpbAo+ID4gPiA+IHRoZSBoYXJkd2FyZSBj
YW4gZmx1c2ggYSBmdWxsIGNhY2hlbGluZSBvZiBkZXNjcmlwdG9ycy4gVGhpcyBjYW4gY2F1c2UK
PiA+ID4gPiB1bm5lY2Vzc2FyeSBkZWxheXMgd2hlbiB0cmFmZmljIGlzIGxpZ2h0IChvciBldmVu
IHRyaWdnZXIgVHggcXVldWUKPiA+ID4gPiB0aW1lb3V0KS4KPiA+ID4gCj4gPiA+IEhvdyBjYW4g
dGhlIHByb2JsZW0gYmUgcmVwcm9kdWNlZCBhbmQgdGhlIHBhdGNoIGJlIHZlcmlmaWVkPwo+IAo+
IFvigKZdCj4gCj4gPiBUbyBiZSBob25lc3QsIEkgaGF2ZSBub3RpY2VkIHRoZSBwcm9ibGVtIGR1
cmluZyB0aGUgaW1wbGVtZW50YXRpb24gb2YKPiA+IEFGX1hEUCBmZWF0dXJlIGZvciBJRFBGIGRy
aXZlci4gSW4gbXkgc2NlbmFyaW8sIEkgaGFkIDIgVHggcXVldWVzOgo+ID4gICAtIHJlZ3VsYXIg
TEFOIFR4IHF1ZXVlCj4gPiAgIC0gYW5kIFhEUCBUeCBxdWV1ZQo+ID4gYWRkZWQgdG8gdGhlIHNh
bWUgcV92ZWN0b3IgYXR0YWNoZWQgdG8gdGhlIHNhbWUgTkFQSSwgc28gdGhvc2UgMiBUeAo+ID4g
cXVldWVzIHdlcmUgaGFuZGxlZCBpbiB0aGUgc2FtZSBOQVBJIHBvbGwgbG9vcC4KPiA+IFRoZW4s
IHdoZW4gSSBzdGFydGVkIGEgaHVnZSBUeCB6ZXJvLWNvcHkgdHJhZmljIHVzaW5nIEFGX1hEUCAo
b24gdGhlIFhEUAo+ID4gcXVldWUpLCBhbmQsIGF0IHRoZSBzYW1lIHRpbWUsIHRyaWVkIHRvIHht
aXQgYSBmZXcgcGFja2V0cyB1c2luZyB0aGUgc2Vjb25kCj4gPiAobm9uLVhEUCkgcXVldWUgKGUu
Zy4gd2l0aCBzY2FweSksIEkgd2FzIGdldHRpbmcgdGhlIFR4IHRpbWVvdXQgb24gdGhhdCByZWd1
bGFyCj4gPiBMQU4gVHggcXVldWUuCj4gPiBUaGF0IGlzIHdoeSBJIGRlY2lkZWQgdG8gdXBzdHJl
YW0gdGhpcyBmaXguIFdpdGggZGlzYWJsZWQgd3JpdGViYWNrcywKPiA+IHRoZXJlIGlzIG5vIGNo
YW5jZSB0byBnZXQgdGhlIGNvbXBsZXRpb24gZGVzY3JpcHRvciBmb3IgdGhlIHF1ZXVlIHdoZXJl
Cj4gPiB0aGUgdHJhZmZpYyBpcyBtdWNoIGxpZ2h0ZXIuCj4gPiAKPiA+IEkgaGF2ZSBuZXZlciB0
cmllZCB0byByZXByb2R1Y2UgdGhlIHNjZW5hcmlvIGRlc2NyaWJlZCBieSBKb3NodWEKPiA+IGlu
IGhpcyBvcmlnaW5hbCBwYXRjaCAoInVubmVjZXNzYXJ5IGRlbGF5cyB3aGVuIHRyYWZmaWMgaXMg
bGlnaHQiKS4KPiAKPiBVbmRlcnN0b29kLiBNYXliZSB5b3UgY291bGQgYWRkIGEgc3VtbWFyeSBv
ZiB0aGUgYWJvdmUgdG8gdGhlIGNvbW1pdCBtZXNzYWdlCj4gb3IganVzdCBjb3B5IGFuZCBwYXN0
ZS4gSSBndWVzcywgaXTigJlzIGJldHRlciB0aGFuIG5vdGhpbmcuIEFuZCB0aGFuayB5b3UgZm9y
Cj4gdXBzdHJlYW1pbmcgdGhpcy4KPiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bAoKUmln
aHQuIEkgaGF2ZSB0byBhZGQgc29tZSBrZG9jcywgc28gSSB3aWxsIGFsc28gZXh0ZW5kIHRoYXQg
Y29tbWl0IG1lc3NhZ2UgaW4gdjIuCgpUaGFua3MsCk1pY2hhbApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
