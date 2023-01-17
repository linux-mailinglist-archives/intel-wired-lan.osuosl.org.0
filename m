Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D31D66E6D2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 20:20:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3758081A81;
	Tue, 17 Jan 2023 19:20:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3758081A81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673983258;
	bh=x2TNwPqBP1eTnUkZ35tORHW3D71/DzSwPPq+KVTTHFI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RA/Rh3DYFg1i6BAEq4xz/7NDOuVfmzTI416OqtarJXFrObGkvn/guz1t7flyEvgVS
	 QpwOwH3qplrFE70bF3HKUlKyfq5sI/0txmc20Z8giGgbwIqmSYrPrP+nI47orhJsIj
	 q80hsDgqOBd5ZxC4/lPxiTshiM/tHiwbjuAUsIjv12047WhA5ABI2BCZ12fUt5vTVE
	 DzM6w9tsd5etQxzr0HaD+a2qgkNtlBhHFUREr4XDifdXiCfMiYp0BaIffwViEWy9B5
	 V/gkLddA6NMKtC/qt7iaUHNSm95CUrxVQVH7alpvOeEu/x7Q8zX6ztU4q1lINuUhR/
	 Rv+CVIyoTUT5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id srixiDVw_ZjV; Tue, 17 Jan 2023 19:20:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3ADF818C4;
	Tue, 17 Jan 2023 19:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3ADF818C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D66DF1BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 19:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF8E160BC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 19:20:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF8E160BC9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IspydUDzBRiV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 19:20:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DADD60BC7
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DADD60BC7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 19:20:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="308358683"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="308358683"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 11:20:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="988254558"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="988254558"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 17 Jan 2023 11:20:48 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 11:20:47 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 17 Jan 2023 11:20:47 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 17 Jan 2023 11:20:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BODeLhCYWRQy8cPCuoxiAERmZigOqDYXfuQsQffYSJ+F9pJNETvpNftp6MTZAYgrB3YEGOXixq/9QzrJ6FQ1kdwXcPJt3OcLaN30dcxMwtUy5H8DFuJtyF3v6QB9xaPL8M1y25QjJFIGUkenX2KYpGAgUiflYPLMdsEJ/GAxXa0bhw+PnxT6NLEcC6XNiT2gYZXl1RkuwC0Nnt6UAYna1clfKZEuScUxNIN6DHQEFxV6x3AoIlaoTkheC3yuNvkArmTsNPyCbQcXXJPHYAIiNiKMrHluBQ7fahRX5Y1TshC5cdf0m96JdyIb3/feYnvRXm76UdfnoOzedxXLmZyubA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D1Xk1MlJvdxqvmFjKI5UIFxCSsjH7sTIg0yvfdUoVCE=;
 b=DmbBAANft2jby7GyaUDzstXlv52SIlrLKaAU9Gx7gNF69Wmks0ld8hkD0SZsde2kecW6JcOvnpoPiHlF7Uo69xYSn8vXU43HuVx1zjyw8g/pQXlVXhhvpbevCs1nnuxdkz7OKQm60g54wYRF5aVGp/hhNZJ96LJmzKYxMXaL5ZZHWCwSvhe6lcgDOW8jKOf79Cj/at9gEC0FxURuneNQAWpZHI3qFXCtUTTi2OULRFqb6QKZKpumglXl60bfuhJBp/Q8PKxyNNjU+9MKEpR4lq4cSjlQYsnAV6+hOEXs8h75WMYWWix8cnuDWbetXUbj2739lZuhhXLVGIPg1iRVnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BY1PR11MB8007.namprd11.prod.outlook.com (2603:10b6:a03:525::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.19; Tue, 17 Jan
 2023 19:20:46 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.5986.023; Tue, 17 Jan 2023
 19:20:45 +0000
Message-ID: <a16975c6-55d7-1945-063e-6e0ccf5a10af@intel.com>
Date: Tue, 17 Jan 2023 11:20:43 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
 <20230113223735.2514364-4-jacob.e.keller@intel.com>
 <Y8UrNnT/eXE59d8H@localhost.localdomain>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <Y8UrNnT/eXE59d8H@localhost.localdomain>
X-ClientProxiedBy: BY5PR04CA0019.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::29) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BY1PR11MB8007:EE_
X-MS-Office365-Filtering-Correlation-Id: 68932ab4-b4f5-45b9-e428-08daf8bfeee6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +mS7MIWlNE6zxSIDgFj3Y/0/5afCXeEumyYFa4Q6gW9zKMWANoaPcd/+g5GsdzJ0oaNTh2KIZ7XGrBtRk3AcCrnK4ijCF4POCm/T0HVKEchPWJedj8biJWzZRjw+viBcBVZPXbi7+vf+zFBDBmPmLmeJhwzDomuTK/aXdUKnFP77kK/NMIGvdU5zr0hqzsP4sgYcywQEeDAEzYPvuWFhU8n4IJgLqarYrbGoqH8W5fdHne+Vv0Y/dNyb0E0zgYMQf7lAypCgXaqcR2XZbLiaPib9+YJnyXBOiOElM6mk/XXdlsLf2RgFOhTocjpkh/+bHXVUAMxlv6pnvBAtmgLylNNYthm3TkIU/gcLMtheKB/LEaNHsyOOyR67WK830crZliBk9clGIYGxn3YYDkK6NNdQTfblk+t0K03aulWtRE4qU8HH3cUNrEZtwYuJnGKGngxnoRbsEXM5p2i6wK62U/Xpy7Y7pya5K9W7TOM9AA7NGnArGa3XcA2bASRsKGFO9RMpImW53WALIXlH9DlRDuAGxnNCzB2cHmpHjkD6iaHfKPStBRXHzqxr9wCqgaWKsBTHRANMSUAzWxX3daSDh27rBSm6GQ9bQs402rffBVIxgtMFDsZDMV4zsiaEffUkPv4+ptR2XAzdV1vtfx2NhTB1OTQP8uQ1NK46o9Z6gjEu/HbJa9INSwyhcW4Je5boK87u+WUsF1/yUE1hRLfXpP+Hgj0jSeTHjM8+ZBOsDfpQ4dhzK/5k1Ql9UGsDkxw6dwZ6NCONOQIjKe4hyereZA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(39860400002)(376002)(366004)(451199015)(2906002)(31686004)(8936002)(53546011)(186003)(26005)(36756003)(41300700001)(31696002)(5660300002)(6512007)(6916009)(4326008)(66476007)(66556008)(8676002)(86362001)(38100700002)(82960400001)(6506007)(83380400001)(2616005)(66946007)(6486002)(478600001)(966005)(316002)(54906003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEpTREwveHhEVmxaajJXVWF3emtkYVRSYnp3ZDBSdCtHZFZ5ZlB4UkdaL2lN?=
 =?utf-8?B?RmVRZ01ETGg0NzhNRWc3NnNBRWlMTVZ6WW0xTy9acWpHWWh3SjRRYWlFYW93?=
 =?utf-8?B?RDBST1NyWmRZanFhODZSMk1NMlcrb250cDYva3RKTE5MbTcrcUl2VmJnTEZR?=
 =?utf-8?B?bWt0empSL1dPRGo3YXFCeGE3b3pueXA2NVNQNGVwMS9oMDJxYnNnVzBQTXRI?=
 =?utf-8?B?bkxMSFN4bUQ0WHdTREx5Vi9IL3VWWFppYWZ5d3VYblQ3enZBak1PZG01dHlV?=
 =?utf-8?B?UUU4U2VCdjlGYjVPL1hITGRYNVVNMVVHdHYyNnRaWFJpaUJUWmhENHU3Ly8w?=
 =?utf-8?B?Lyt6Slk3eHUxVkc4UHdGdmxRSlVsdk81bkF0RjFNQm45bHhBeU9ZZnJPTHZS?=
 =?utf-8?B?UEkrYzdsdjNSM2JoN2l0RHFqYysvRmUweTgvcVRiNFBwSFpRd1VIdWdlR09j?=
 =?utf-8?B?TmFwZGRQallvclZXaTlHazBrblhQSmZFdUR1cVh5RVpxRURxN2NhSnk3MzNP?=
 =?utf-8?B?NEFuM2hRa1Y2Y2ltWmtnWVEySG5rTjNkNG1UMndENkgzMUEvbU9TS3FsY2tC?=
 =?utf-8?B?a05tZGJjc0h5Q0FrbWFhQ0FwSFQ5Lyt3NFpSZVFXWTdpdCtQOUFlS1ZSWCtx?=
 =?utf-8?B?b29PWlBlWG4veXJncEtIOHEwODYzbXN2MVhJZU9uaUJTS25VdW1EMDNGZ0tN?=
 =?utf-8?B?MzF0dDFVTnNsM3N2cG5SSXlaQnVrbTBIcFlRVXg5K1d6ajVXOGlSei9NTndl?=
 =?utf-8?B?WkNUZVNCMzlTZjJVUGZxSEZGekNRdlJWaHZrZGhFdXdNUnRqNFdNUkJrbkJm?=
 =?utf-8?B?UTBNREJEVVRJY2xoSWJsanBVNmFGK1lyTEJhOWRLcmF1VG5xbUhNWVloaklK?=
 =?utf-8?B?dEV1Vjk2SGRRVDRmTkZNZTNPSmx4RFBqOG0wbEpXa3Mwb3JlakpoQlptMi9k?=
 =?utf-8?B?NDRQdWRTQVBTS2tNSjh1U3JCSVhkWVNLOStzZVFpZ2NkenBENmV0NjE1YjBQ?=
 =?utf-8?B?RDVMSzdjeDdueXREaytMQ2pocW5UOWg1dmZmcEM2bk5TZldnRzFaMzBhdjNG?=
 =?utf-8?B?YTl6QXUvUkpvdGpXYUJVTklsazBma3FpbXNtNUo4UEJpbDZtSlVTc2xPby9S?=
 =?utf-8?B?L0xJcUx2L3pCRkdnZUhOcFZjSTJ4cFE3K1IxZGlJekJNanUzWGRNcGllWSsw?=
 =?utf-8?B?QWNQN0Y0bDloVnBKUXJFaW1Ka0VORWJUZTVsdm9QazZrUnlORE1EUVdDeG9D?=
 =?utf-8?B?dmx3ajE3QzFPR1Q5VURpeERQdEpWcE9USTd0aU9YWmpCZ3JsNGdJVEFxclNo?=
 =?utf-8?B?SzdHQVdiNWQvdG56b3hZYVZkWTNCeVVIZURSVTd0K3lvditKdjUwak1PVHVt?=
 =?utf-8?B?bjAycmFEc2FFMmhIYUR6YmFtQ3lMTm0wc2huWmF4TXk5RkZFMVhZbHc2aklT?=
 =?utf-8?B?UlJGb3J5NDBSNDJ1cm1ENVNxMWJwUGpyeElVc2JmS3FIcGZiY0JZbHhmT0xv?=
 =?utf-8?B?MHhRMjVBM2VETGhUR0Q5YjlEUGpycnZuQWZmN3RsN1QwS0ZQYnd3aTVHNjVF?=
 =?utf-8?B?MFgybU50RVZGWHFESGZrT3lpYVFhSlFUREFVa2gyMUtyUDJQaUlwckwvdjZj?=
 =?utf-8?B?Z1NBMldqY2tKVmpDcDJEMzVmS0I1Yzd6aGtZVzRvY1lpUXo0bEtENm1uVGEw?=
 =?utf-8?B?N3ZDSEl1YjFBRkdmd1JKdzJtN244Szh2UngxK2MzZFhubEtHeURtVnlHZ1Ju?=
 =?utf-8?B?andaOVJlV3RUbE5BNHptZlVDbytIMlkxdmxHeTJIV3pyRENtQVFrNHd1bStl?=
 =?utf-8?B?QmZiam54aC9ubVpoOHdXQkFBRXZiOHIvc0xGQVA2Z1krc2JHRlRUVFUyc0xD?=
 =?utf-8?B?K3huYlM4Qk9KQ3AvWUtiZVpnZnI5K2dYa2lFNXhCSitYQ2g4cXBBTHphWjIv?=
 =?utf-8?B?Z2dsNHQ1b1g5cDZGK0NKeFU1Skc1ZkRqZ0FueHRpTUpyd1ZJUjBSVWM2TjNT?=
 =?utf-8?B?UHEzUm90NTVXYkJ6bDEvNzBQcUtiL0tLUmJLTTBlTWtpelEzZDgyR3B4OE5W?=
 =?utf-8?B?WkNCbnVoS1FpdVpvQ2R4TDVQdDd0UTFxb2JpcldlUDhPeXRGOXlPTkRKV0xz?=
 =?utf-8?B?UjkyZUdMcjNDV1BLWHc2SUIvak85RnJaNTBaV3lqQlh4K0FacXM0WDh1bm9F?=
 =?utf-8?B?aGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68932ab4-b4f5-45b9-e428-08daf8bfeee6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 19:20:45.9084 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZxUH0pXgxXNeu+/8niixECZwg1lw6tGEm58+fLBZtufkyzzocn5jcpseST2QploB2qaeKHPY0iw2h3aqUFULmuikZIrfl5qO84dmGt9ZpRs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8007
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673983250; x=1705519250;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kpOR31f4xVyqrV4wChkpOPsSbDUhlGhT9WTEO7e0Z98=;
 b=VgbtvCnAOSskvyGI9kgGaDDSwUKHW1u20KLxAUMRSreKX8aiiTCJeLvR
 Bf76szgTmtoYOqJ9JTq1gCl0GOvwgExFN2la1AJeg8E1m7sUHBHpHjuJO
 7erHoU8ch1Eu2WQiyUQ5oG1J+COnXREtFqqFNzIzwO0Bg7UeSqmXdFEYL
 r1mJ6kj64LmCvefG3deOWLWXjbNiIUo9Z9VQ3QIVy7cOdP6ulGKVJm41u
 +dppVefWE8zCbxIYa8oLeOhVWkGEXY78Fh3iMq5MH31A3QhQS0OcOXkIq
 83zGVmb/Ss1Mr178MjOHH5ycQ1ZC7sN6u2/vp8IlgDC5jT7z3VNkdieXm
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VgbtvCnA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 03/13] ice: move vsi_type
 assignment from ice_vsi_alloc to ice_vsi_cfg
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/16/2023 2:47 AM, Michal Swiatkowski wrote:
> On Fri, Jan 13, 2023 at 02:37:25PM -0800, Jacob Keller wrote:
>> The ice_vsi_alloc and ice_vsi_cfg functions are used together to allocate
>> and configure a new VSI, called as part of the ice_vsi_setup function.
>>
>> In the future with the addition of the subfunction code the ice driver
>> will want to be able to allocate a VSI while delaying the configuration to
>> a later point of the port activation.
>>
>> Currently this requires that the port code know what type of VSI should
>> be allocated. This is required because ice_vsi_alloc assigns the VSI type.
>>
>> Refactor the ice_vsi_alloc and ice_vsi_cfg functions so that VSI type
>> assignment isn't done until the configuration stage. This will allow the
>> devlink port addition logic to reserve a VSI as early as possible before
>> the type of the port is known. In this way, the port add can fail in the
>> event that all hardware VSI resources are exhausted.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_lib.c  | 65 ++++++++++++-----------
>>  drivers/net/ethernet/intel/ice/ice_lib.h  |  3 +-
>>  drivers/net/ethernet/intel/ice/ice_main.c |  3 +-
>>  3 files changed, 37 insertions(+), 34 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>> index 0bf99f0e3faa..f89279ede9a1 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>> @@ -640,28 +640,18 @@ ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
>>  /**
>>   * ice_vsi_alloc - Allocates the next available struct VSI in the PF
>>   * @pf: board private structure
>> - * @pi: pointer to the port_info instance
>> - * @vsi_type: type of VSI
>> - * @ch: ptr to channel
>> - * @vf: VF for ICE_VSI_VF and ICE_VSI_CTRL
>>   *
>> - * The VF pointer is used for ICE_VSI_VF and ICE_VSI_CTRL. For ICE_VSI_CTRL,
>> - * it may be NULL in the case there is no association with a VF. For
>> - * ICE_VSI_VF the VF pointer *must not* be NULL.
>> + * Reserves a VSI index from the PF and allocates an empty VSI structure
>> + * without a type. The VSI structure must later be initialized by calling
>> + * ice_vsi_cfg().
>>   *
>>   * returns a pointer to a VSI on success, NULL on failure.
>>   */
>> -static struct ice_vsi *
>> -ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
>> -	      enum ice_vsi_type vsi_type, struct ice_channel *ch,
>> -	      struct ice_vf *vf)
>> +static struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf)
>>  {
>>  	struct device *dev = ice_pf_to_dev(pf);
>>  	struct ice_vsi *vsi = NULL;
>>  
>> -	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
>> -		return NULL;
>> -
>>  	/* Need to protect the allocation of the VSIs at the PF level */
>>  	mutex_lock(&pf->sw_mutex);
>>  
>> @@ -678,11 +668,7 @@ ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
>>  	if (!vsi)
>>  		goto unlock_pf;
>>  
>> -	vsi->type = vsi_type;
>>  	vsi->back = pf;
>> -	vsi->port_info = pi;
>> -	/* For VSIs which don't have a connected VF, this will be NULL */
>> -	vsi->vf = vf;
>>  	set_bit(ICE_VSI_DOWN, vsi->state);
>>  
>>  	/* fill slot and make note of the index */
>> @@ -693,15 +679,6 @@ ice_vsi_alloc(struct ice_pf *pf, struct ice_port_info *pi,
>>  	pf->next_vsi = ice_get_free_slot(pf->vsi, pf->num_alloc_vsi,
>>  					 pf->next_vsi);
>>  
>> -	if (vsi->type == ICE_VSI_CTRL) {
>> -		if (vf) {
>> -			vf->ctrl_vsi_idx = vsi->idx;
>> -		} else {
>> -			WARN_ON(pf->ctrl_vsi_idx != ICE_NO_VSI);
>> -			pf->ctrl_vsi_idx = vsi->idx;
>> -		}
>> -	}
>> -
>>  unlock_pf:
>>  	mutex_unlock(&pf->sw_mutex);
>>  	return vsi;
>> @@ -2859,18 +2836,33 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_channel *ch, int init_vsi)
>>  }
>>  
>>  /**
>> - * ice_vsi_cfg - configure VSI and tc on it
>> + * ice_vsi_cfg - configure a previously allocated VSI
>>   * @vsi: pointer to VSI
>> + * @vsi_type: the type of VSI to configure as
>> + * @pi: the port info for this VSI
>>   * @vf: pointer to VF to which this VSI connects. This field is used primarily
>>   *      for the ICE_VSI_VF type. Other VSI types should pass NULL.
>>   * @ch: ptr to channel
>>   * @init_vsi: is this an initialization or a reconfigure of the VSI
>> + *
>> + * Configure a VSI allocated with ice_vsi_alloc.
>>   */
>> -int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
>> -		int init_vsi)
>> +int ice_vsi_cfg(struct ice_vsi *vsi, enum ice_vsi_type vsi_type,
>> +		struct ice_port_info *pi, struct ice_vf *vf,
>> +		struct ice_channel *ch, int init_vsi)
>>  {
>> +	struct ice_pf *pf = vsi->back;
>>  	int ret;
>>  
>> +	if (WARN_ON(vsi_type == ICE_VSI_VF && !vf))
>> +		return -EINVAL;
>> +
>> +	vsi->type = vsi_type;
>> +	vsi->port_info = pi;
>> +
>> +	/* For VSIs which don't have a connected VF, this will be NULL */
>> +	vsi->vf = vf;
>> +
>>  	ret = ice_vsi_cfg_def(vsi, ch, init_vsi);
>>  	if (ret)
>>  		return ret;
>> @@ -2879,6 +2871,15 @@ int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch,
>>  	if (ret)
>>  		ice_vsi_decfg(vsi);
>>  
>> +	if (vsi->type == ICE_VSI_CTRL) {
>> +		if (vf) {
> I know that it is only copy paste, but shouldn't we also check if
> vsi_idx isn't already set like in PF case?
> 
Not sure what you mean? make sure idx is valid? but a memset of vsi will
initialize that to 0 which will be "valid"?

or do you want to like confirm that the vsi->idx points to the vsi in
the array with the right pointer?

>> +			vf->ctrl_vsi_idx = vsi->idx;
>> +		} else {
>> +			WARN_ON(pf->ctrl_vsi_idx != ICE_NO_VSI);
>> +			pf->ctrl_vsi_idx = vsi->idx;
>> +		}
>> +	}
>> +
>>  	return ret;
>>  }
>>  
>> @@ -2962,13 +2963,13 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
>>  	struct ice_vsi *vsi;
>>  	int ret;
>>  
>> -	vsi = ice_vsi_alloc(pf, pi, vsi_type, ch, vf);
>> +	vsi = ice_vsi_alloc(pf);
> Looks nicer :)
> 

:) we just moved the mess a bit.

>>  	if (!vsi) {
>>  		dev_err(dev, "could not allocate VSI\n");
>>  		return NULL;
>>  	}
>>  
>> -	ret = ice_vsi_cfg(vsi, vf, ch, ICE_VSI_FLAG_INIT);
>> +	ret = ice_vsi_cfg(vsi, vsi_type, pi, vf, ch, ICE_VSI_FLAG_INIT);
> Maybe it is good patchset to implement Your idea about having vsi init
> params structure?
> 


Probably.. I was sending what I had in our internal subfunction +
scalable tree, so I don't have that developed yet.

>>  	if (ret)
>>  		goto err_vsi_cfg;
>>  
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
>> index b76f05e1f8a3..fb785d8cde9a 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
>> @@ -73,7 +73,8 @@ ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id);
>>  #define ICE_VSI_FLAG_INIT	BIT(0)
>>  #define ICE_VSI_FLAG_NO_INIT	0
>>  int ice_vsi_rebuild(struct ice_vsi *vsi, int init_vsi);
>> -int ice_vsi_cfg(struct ice_vsi *vsi, struct ice_vf *vf,
>> +int ice_vsi_cfg(struct ice_vsi *vsi, enum ice_vsi_type vsi_type,
>> +		struct ice_port_info *pi, struct ice_vf *vf,
>>  		struct ice_channel *ch, int init_vsi);
>>  
>>  bool ice_is_reset_in_progress(unsigned long *state);
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index 8fd9c87f30e2..29cd77dd3812 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -5010,7 +5010,8 @@ int ice_load(struct ice_pf *pf)
>>  		return err;
>>  
>>  	vsi = ice_get_main_vsi(pf);
>> -	err = ice_vsi_cfg(vsi, NULL, NULL, ICE_VSI_FLAG_INIT);
>> +	err = ice_vsi_cfg(vsi, ICE_VSI_PF, pf->hw.port_info, NULL, NULL,
>> +			  ICE_VSI_FLAG_INIT);
>>  	if (err)
>>  		goto err_vsi_cfg;
>>  
>> -- 
>> 2.38.1.420.g319605f8f00e
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
