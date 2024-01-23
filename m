Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E572839560
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 17:52:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1BF44048A;
	Tue, 23 Jan 2024 16:52:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1BF44048A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706028760;
	bh=9P8f/tAAp6oNn20CT/gNM2kYdbl2KGmVyIUcHr3WSOk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DuAlyx/06NXQ+4by+ZguPpCqJ4WCev/72Qqyp+YbaVUn9uIu8P57lcBEe0bslTKZT
	 FOHBWZLasGU1stmGcO4rOqCe+0IMH7hn5SNL+loBOJhXtxzNfDj7kIhBa8+BnqqPiw
	 1Iel4Ev9cNbZ9FNl6RY4DAt73vi8pYRoJu38feR+i1V1ewllRyt+8m0dN/lMqZclL0
	 nsp7P+wwskuvamvTYzzRuneWLL+5xOcKIyjdLsUKMh/EU7aw4j9Refhj1gT5jUGyTo
	 C7JIPXxYg566pWSoFdpAO9P0PP8IQsVUV4p9u4Y47s2zSl7Zb+i16fbgvLTs7q89lZ
	 QS6CPz5CWGKNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9j4zArSZfVBX; Tue, 23 Jan 2024 16:52:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE8C7402C3;
	Tue, 23 Jan 2024 16:52:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE8C7402C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 915ED1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:52:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74BB5402C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:52:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74BB5402C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2GcmkYHzipvo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 16:52:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0C1440217
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 16:52:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0C1440217
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="8695833"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; 
   d="scan'208";a="8695833"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 08:52:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="856387973"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="856387973"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2024 08:52:17 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Jan 2024 08:52:16 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Jan 2024 08:52:15 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Jan 2024 08:52:15 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Jan 2024 08:52:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSgMxeOFYHFQMyumWmu4LlnCZxKrEweSs1adbvdUqUFeExvNWdz8y3fdoB2NTtkRyE+tBcL/w9fl46V9k2xi+fVB3luF3kcojihPgwV5BYJOdtaUIeIlmEwyE4Vj9+ZnI/u70xLRQt3ACAwdL8zLk4QoaLh6JRLcHDVdNrkv/5BisKV7xHUi/1NXAICuDJLAbwrcrBUTFjXQ2QM3AwrfRODTjEY4yz7Ij/vKJ9hZ6dRX1p8UiHbPLnLNPPLE3mIbkYy/FvX/TzrsIITdErJ3ND2CsDsUVje3YPxQ4rdVoI5UOo3FCzYpZodaZ1qkXHE+mBX0qMitOOaBjkpbWjePOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9P8f/tAAp6oNn20CT/gNM2kYdbl2KGmVyIUcHr3WSOk=;
 b=Qr9+5qSyE6WEkhCIrMWqxOJA+meVCPGPJdnH9Crzb8Ah2dWDsmeXzT0B2CColrDBcAlDlzOCrli2Gqu5ToOFVTs1si6hS402JBVBdBmFfu24qyG/GAbKKlCgs360hCXmNnF6ZR7pp9q9QFu9GFsHYLCe/O6z8hM0qe7KCqb4jO4WygmwFcexAFc4La6bscPHMMfCKzrEsSJn6yvqLDLh3KDdO1cKAIgdWvC4g/MuIcA8qzlCdC7+QxYKa9+PQJNcydFeWVeSSjSiW8aEu72kO5JKN1ElK9RIqfikDg9uzbaeeh0XmyK+QELUO9p0Jl2n8oc/zoTTXcQYlN/XVhrvDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 by DS0PR11MB7768.namprd11.prod.outlook.com (2603:10b6:8:138::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.34; Tue, 23 Jan
 2024 16:52:13 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::bf2:91ee:5ddd:6f77]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::bf2:91ee:5ddd:6f77%3]) with mapi id 15.20.7202.031; Tue, 23 Jan 2024
 16:52:13 +0000
Message-ID: <961b597c-a6df-4544-b7da-bbb9f52ea657@intel.com>
Date: Tue, 23 Jan 2024 08:52:12 -0800
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240122211125.840833-1-alan.brady@intel.com>
 <20240122211125.840833-2-alan.brady@intel.com>
 <20240123162547.GA254773@kernel.org>
Content-Language: en-US
From: "Brady, Alan" <alan.brady@intel.com>
In-Reply-To: <20240123162547.GA254773@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0323.namprd04.prod.outlook.com
 (2603:10b6:303:82::28) To CO1PR11MB5186.namprd11.prod.outlook.com
 (2603:10b6:303:9b::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5186:EE_|DS0PR11MB7768:EE_
X-MS-Office365-Filtering-Correlation-Id: 646e1bbd-0a32-4c55-5cbb-08dc1c33a5f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RFTbii7freb089H/vqpbO5a9oe0k56bw9XU6LOWgEjEo8jLN1/71GdpJuLwijGdqVPzjPHvv0A82MUfRdBHzkZvcjtarFNO8wNA8MKJNQbuTN2RadgxNS3BDzmA565tIa3CfI/XS88XMib1/kzoJqahITbjWVzyyRfvZ7rfNOL7KOrg77gRNy2P/yGdbD3h6jvuSN6GN3FLSCf3i+rsXjuPg2oPUeKDdJKPBNzIDJGLOU1YUfQ/SKNt4VfDkKMxqGfItETyPAIVa4qzzx14Jn72UKi7fQ5CU2mnTVmIy8Hk8zeewR4TdiMskS5EaiqU7oYQd75B2hLX540FJBX7c14r3fSVKL3x19SjhQkh6LfAHA5oYXmC9ciemkuZlIjdHjvtvUQZdNhdeLOZawTvTcYdbqD2DRcfNj/uq1IfHRikTxzBpUS1g46LcOksKL07tVtK6VNDN8UJ7JFhFOfko5hF0x41YAQUBqGwmxQCGFwnWWqmAjgjHfH6SA8TBBqyFw/lDmd78i8E4LOu8AZnUyRsoVFkjbDbP/T6BdMwf6MGlD0Kj9EJcHMXYjAfsrgQ8i9YU8Wi457OQzLZHNMy96zxPRorOFyM2/qphplVee0jtgMa5yCZthmg0Vm82sg7TOUzd6epKt0/wFcA0C4XkJQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(366004)(396003)(346002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(41300700001)(6506007)(26005)(2616005)(107886003)(6512007)(53546011)(83380400001)(478600001)(86362001)(8936002)(8676002)(316002)(6486002)(66946007)(54906003)(6916009)(66476007)(82960400001)(31696002)(38100700002)(66556008)(4326008)(31686004)(36756003)(2906002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ME5Wa2RZVEtFNGRhM2F5RFd2a041ZkRsMEpQQmwxRkwyVWR1cTBlSkp3eXJQ?=
 =?utf-8?B?ZU9DKzdPVDRDK25lQUJpOHo0OWtTbUFYU2h1K29DdHhsblNFZnpWWTBQdzVy?=
 =?utf-8?B?TVdrRlowZ0hIL0dWRjAzdUtEWlJMRWtmeXN6bHVjeW00SzM1ZXNVYjd3SFJL?=
 =?utf-8?B?TVpJRWM2RUNkSGdpMHg4cGl2MmFqUDdRdjZSRVFuamkzbklZdHZ0RXNyOVpB?=
 =?utf-8?B?Vk5BSFduTWFqeDFDTDU1cXJVT1IzT0xBSWF1SmQ4R2tiUjU4NWVhUkxvYmdO?=
 =?utf-8?B?MHBRK3VxYVFqTm9ZK1BVR2NIUDdWRFBPT3diRkRRTzdUY3NXTnRtWjdHdU9S?=
 =?utf-8?B?bGNpN1I5UGVaYXZQcklYZlB6UlRyeDZDY1hMeS9hWkhLdUtKOGZ1NW5mQW1G?=
 =?utf-8?B?ZTVWZjA5QmNiTWdiZGlHTDRoSlFwRDBvQ3JDbnJPMk1reW50Qy9zWXRaSFgx?=
 =?utf-8?B?VGxrRWxCb09iOFY4L3VUbG9IRllvdDlNaThXa1lqeVF5d1JlOG1DOEFRelgz?=
 =?utf-8?B?TmtNSUNEMlE3emI5UUJXUGsxSlRNU2JVVlhmSkpoUlRxQ25OYzNKR0wxL29X?=
 =?utf-8?B?RnVkRFNsaXlyMmZsL29SaTZJVTFQQ2hlRDV1TUhFeWdneStjQ3pzRnkrcEg4?=
 =?utf-8?B?SGFkWjZGUGt0c081Z1drd0dTR2J2TU14UFdHY2pkSG5LSks0YzM1YkxwWldx?=
 =?utf-8?B?TGtmRDNQVUw5dUZqbklOSVpNdjY3NzNSZTgyaUU2TFluR2dmMEJjUG5WOXdB?=
 =?utf-8?B?RzBveUpaeHNJMFl1U1pWTVhLbU9wRU1aYWNGa0JrN3NuUVdvdzJVVkJ1WFdL?=
 =?utf-8?B?QWlqL0orMC96aC9zeFYvTGc3YWN0ZXpFSVZhQURZWm1hcUlJbXdwUTRYTGRp?=
 =?utf-8?B?MmpMdW1heThGc0tVTEVaWU1RcVNhSEJqQUtac2NZRGdYQmErMzEwWXRsK3RO?=
 =?utf-8?B?Mmg4Wk1iaW5YUnJOZW53dWxVTm1IZHF0S2M0cUwxNUZxOFFLMEg0S1ptdFAw?=
 =?utf-8?B?bFpkSmdRclpzWHhPMFo2VkpNZVJIRFp3Y3BJcjhMUEx4cWRhNjJhd3pvcm11?=
 =?utf-8?B?ZTF1VkpNTnhzajhMRVhpZEdVRjlmYnhDazlRcU51U09oSXJRMWc1Tk5jZVFO?=
 =?utf-8?B?WXczZXF2ZHVrT3NSYVdXSTZjV2VXOThyU3BLTVk3SVM3TzFKVE12Q1FaMVo3?=
 =?utf-8?B?bDVPR3hZUGdmaDNlbkl3RzBVT1FUaUU3dit0cnM5ZUV6eC92R3N0YTRZd3B1?=
 =?utf-8?B?SmlNN3R0TzRJaGFwMVdzUTZiSlFmaWRxVFNLNy9LMWl0T1ZkeWRVMlpZRVYz?=
 =?utf-8?B?ZS9UcUZOZHc2dzM4S3Y1NHhnaGZiSjdWbXdWTERmYXdPeUEwcjZyT09CNHNj?=
 =?utf-8?B?cGtjL0NRNmI4R1ZETmNrclQ0Y3kvQ04wVkgraks3MUZyRndjbkFxTEZEQ0tG?=
 =?utf-8?B?S0Z1Q0pVMmtHUDlJQkJwdVlQYWlHSnJjK0dxVFlrTGUrT3RoMDZmMHlxWmQw?=
 =?utf-8?B?ek5KZXZveURLL1Jxbm5hUnQvOForV0c1Yjk2aFFxK3NlZzN2a1NyT0RNL1U2?=
 =?utf-8?B?ZE95OTBjWTh1NnJ5MnFKcEVKRERUOHZxcXdsSldDVnRoQXAzWGMvNXF0RkJ5?=
 =?utf-8?B?NEFPM0ZBSHF1eW1mUEQwYlZod01DY01EWWgwV0t5aFQ3cmYzQ2FONWlCVzRZ?=
 =?utf-8?B?SjJzMCttZjJRTUU3WnBwOWZOZ25ZaS9BOHhsamY5VDFiaXlpSjVUM1A3Rkw5?=
 =?utf-8?B?bGdEYUQ4eFNXZ0pjQjBFK3hoQnNuZFRseUxmSEUyQXFjOFd6aHdvWm1EMm1B?=
 =?utf-8?B?WE5rY254VDFQcnFWQVRBYnUyNWdlZkNtaXpZazNmdFlYRW0renBhZlplbFFB?=
 =?utf-8?B?b2hFb3pjOTRscG1QQnFoem04ejU5YTBIckV2b0hkUUVQODlMSGZXZHlmTTJv?=
 =?utf-8?B?eWowWHkvck9FSUEvNnQwVXFza01mUS9ZRjROdkhtMTZXU2NUbUdpeHF3NTlo?=
 =?utf-8?B?NHdxZzBqamZwWlBGOWZ6czFRbFpLblVZSVBqYUttdGdPSVo4RmdWWnBIZTlL?=
 =?utf-8?B?eDNiek5SRnZyWjRHMHZrdmkrekpqUDBMOE4ySmpwNXFrNVYwZ0NsM1kvWWFa?=
 =?utf-8?Q?bLFagV0s4PVvApOkSX/Nt6buM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 646e1bbd-0a32-4c55-5cbb-08dc1c33a5f8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2024 16:52:13.4035 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QN6vEF+xrL+YzoJfzxhcn2qER29ecoMu45YM6I0tftNetb1GnheE1mJou2mX9vhEbrOPMD1z8rIhZFlqUvVhxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7768
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706028752; x=1737564752;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/J4ZdZIdvtPfxjeznn3CHAtxnxMl3dyVURn46Wqwllw=;
 b=L/OkfGaoPHx0SjRjKvjwnoIxOqiFQ5FdTyS6G272ztgvBtxNk/dC9FoU
 arM6bbtqJhmIuKGJcpQKwI5A/q4tHCiOpyqw1aCqhTMLSvOK6v9w9lgpD
 cc3Tnh72LCdk27Gctn/cq7W50xGsUPWrrUNpAcHsKjgRht5a6HicXgBI6
 yQve5C0lLkSzi8ytb+Y7fl4s+AHXtsLjJzpVHtdnPuL7NjhvgU891gV75
 vYrAab520UtRCWqI0gJvb2gePYu53OxngsV1nhTIXFdPVAI2Cqw2Nb6pY
 9VOMfX9MPqLW0l9WJSy6HO1P4oSitcVcjgjWRiuV2Is52s4QdB2ao8Yn1
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L/OkfGao
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/6 iwl-next] idpf: implement virtchnl
 transaction manager
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
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 intel-wired-lan@lists.osuosl.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/23/2024 8:25 AM, Simon Horman wrote:
> On Mon, Jan 22, 2024 at 01:11:20PM -0800, Alan Brady wrote:
>> This starts refactoring how virtchnl messages are handled by adding a
>> transaction manager (idpf_vc_xn_manager).
>>
>> There are two primary motivations here which are to enable handling of
>> multiple messages at once and to make it more robust in general. As it
>> is right now, the driver may only have one pending message at a time and
>> there's no guarantee that the response we receive was actually intended
>> for the message we sent prior.
>>
>> This works by utilizing a "cookie" field of the message descriptor. It
>> is arbitrary what data we put in the cookie and the response is required
>> to have the same cookie the original message was sent with. Then using a
>> "transaction" abstraction that uses the completion API to pair responses
>> to the message it belongs to.
>>
>> The cookie works such that the first half is the index to the
>> transaction in our array, and the second half is a "salt" that gets
>> incremented every message. This enables quick lookups into the array and
>> also ensuring we have the correct message. The salt is necessary because
>> after, for example, a message times out and we deem the response was
>> lost for some reason, we could theoretically reuse the same index but
>> using a different salt ensures that when we do actually get a response
>> it's not the old message that timed out previously finally coming in.
>> Since the number of transactions allocated is U8_MAX and the salt is 8
>> bits, we can never have a conflict because we can't roll over the salt
>> without using more transactions than we have available.
>>
>> This starts by only converting the VIRTCHNL2_OP_VERSION message to use
>> this new transaction API. Follow up patches will convert all virtchnl
>> messages to use the API.
>>
>> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Alan Brady <alan.brady@intel.com>
>> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
>> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ...
>
>> +/**
>> + * idpf_vc_xn_init - Initialize virtchnl transaction object
>> + * @vcxn_mngr: pointer to vc transaction manager struct
>> + */
>> +static void idpf_vc_xn_init(struct idpf_vc_xn_manager *vcxn_mngr)
>> +{
>> +	int i;
>> +
>> +	spin_lock_init(&vcxn_mngr->xn_bm_lock);
>> +
>> +	for (i = 0; i < ARRAY_SIZE(vcxn_mngr->ring); i++) {
>> +		struct idpf_vc_xn *xn = &vcxn_mngr->ring[i];
>> +
>> +		xn->state = IDPF_VC_XN_IDLE;
>> +		xn->idx = i;
>> +		idpf_vc_xn_release_bufs(xn);
>> +		init_completion(&xn->completed);
>> +	}
> Hi Alan and Joshua,
>
> I'm slightly surprised to see that
> it is safe to initialise xn_bm_lock above,
> but it needs to be taken below.


Thanks for the review. I agree it's misguided overkill, will remove in 
next revision.

-Alan


>> +
>> +	spin_lock_bh(&vcxn_mngr->xn_bm_lock);
>> +	bitmap_set(vcxn_mngr->free_xn_bm, 0, IDPF_VC_XN_RING_LEN);
>> +	spin_unlock_bh(&vcxn_mngr->xn_bm_lock);
>> +}
