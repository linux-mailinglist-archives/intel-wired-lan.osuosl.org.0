Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEF16729B6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jan 2023 21:51:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B8A540BF4;
	Wed, 18 Jan 2023 20:51:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B8A540BF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674075062;
	bh=QKTN9R32Fz4KTFOchS3WO3+2NhJ7CiYDi1kJUnIpDSY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xSf3j5DghXYtBZ1vcH2WtEB4RPQV2d/nZVlTvUQhCboCh+WUw6Jpaj09XamVk3iVh
	 os2og5NIldwB8orv44tuCUrCgUSZfg45fRF1dQ7Ehqg2RagL5FN1pJU+yO0iL2ZhRI
	 5Q37d5spedNJb5P7Y3OHEcyTuDbnzuTd4fE+N1igjjF+mNYAZ6RS2zhoPivd9mvCKz
	 7pLr7HiWIUiNIKPrTkINn+ljZqFb5PiYfdnmEhEHouUPPkmdm/NGLK6q1Lyi2aBf61
	 hy+56rP2tfl2aa90yaZyZfQsRmFF5Jt1f+7U7Y6kYCHkjtjFgASSKg6gq/bVRTssII
	 +1lSLPxsSO/Uw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id itAm1jw1xNZ9; Wed, 18 Jan 2023 20:51:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1A614023D;
	Wed, 18 Jan 2023 20:51:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1A614023D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC77B1BF28B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 20:50:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 970334023D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 20:50:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 970334023D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jKJsrwAD-BH9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jan 2023 20:50:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 939CD400D2
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 939CD400D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jan 2023 20:50:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="387449276"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="387449276"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 12:50:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="723235915"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="723235915"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jan 2023 12:50:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 12:50:52 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 18 Jan 2023 12:50:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 18 Jan 2023 12:50:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xw/UKkBx4wJ9Ymk3eNAxgo4ocZSW8XDbC+HjgAorLZXNb+PklTrP9LBjQdwmo6lsokpqEZsC/sbPXP381Bg0Bq7Zuq18AzkAcjTqqCxBDIZ1uLfcAmEwR/4N8NZzAe/RyyddKgrt9JfNy/ylNsACQ6N0rNu+TsEOSsMBo9QifbgO/ql9yw1jLawgIjt7XemmSGEGgDdVYwxmzt80xrghjTimrmr1XVj6cj+uqAYrgQfeDahlYkAcFYW0VxUcUmiOmkErhu3qKKmDFcWufTY1OK13LADGnMi064uEkKi0o/rj4jeF4wwU04WkgX0CIWzCbHjoP4Ze3jYgNyeOiDHDGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cqvr1D9Dzl3Y+uj6eV5ilA0n5nFTA0VOjzU8rT8agDw=;
 b=hZcNxk5BbyWcDsTNKC5P+GQk+Gxs5AAHowvM7hRrtjc4azXQWBCO8S8jSjJDTK1aTQpRaQ6Y2A0h/84cjteuGLzPq6Xo3g7t5DEsqJ+Wp+yNDhGIU520liw3BC7H0DSLz8e+c3xADPC7q8v8gO9bYnFrylJGZhxHMizv3qLlklehZHIbFzAU8VDpXzw/6EyjopLltJTNLCfoG47TBdxNk9/SxPRdU3ClXKlNtOAe3RnvLTGlo+iLi6xidaj7Yh7W8dXllW7gOBl9OXBhrH/+IMv4DeP9YSUlcAWL/DY1JjykHtApBpilzjWnb7bm+GnHgO85hjY+t8KxyuxXnc+pmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB6061.namprd11.prod.outlook.com (2603:10b6:8:74::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.23; Wed, 18 Jan 2023 20:50:50 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.6002.024; Wed, 18 Jan 2023
 20:50:50 +0000
Message-ID: <d5bf3764-9e59-e0a1-84c7-99cc041d134f@intel.com>
Date: Wed, 18 Jan 2023 12:50:48 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
 <20230113223735.2514364-4-jacob.e.keller@intel.com>
 <Y8UrNnT/eXE59d8H@localhost.localdomain>
 <a16975c6-55d7-1945-063e-6e0ccf5a10af@intel.com>
 <Y8eFkqSXDbTOAaL4@localhost.localdomain>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <Y8eFkqSXDbTOAaL4@localhost.localdomain>
X-ClientProxiedBy: SJ0PR05CA0148.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::33) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS7PR11MB6061:EE_
X-MS-Office365-Filtering-Correlation-Id: 312567b4-f7d4-4e2b-9531-08daf995aee9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UkfdAz1PTtR1dvnDav8O+5cFpl6u1NmTi/tTyyjhbubxcS1hO2LJfHihfmXmOD1GW2b4k9LOfqujH3DOWdqnoYu7q55HI4TO/grdsxGJq88PDIPwECzoLAz6lZcVD7sw3cFCqF6hGEzzO4VTNbH0fMyqfaYO/ajxDEto5Jju2kKgkB0SaPcYBYwruBsMrrrG/1pZkEnk7NYg44E3Xw+nHYdJb+GdiefboiE0L1XkNMrfFgbZNOMM2behDSDt2Nv8t2fsQWcNEfMbLhWyFYcNwJCDKhNlH8X7tCvBzTJtXMXv0UAT57Y+21S0+dW2Foh93Uy6X3cOBPYpAclu4fRUG5izQDllj1SrWj9LepOAG6OKvCFJClpPb5si0822XU/jsDpJZp/TPSsN3nAQbSNjPN7mpqzH/Sd0/3yAi3eyfhi/x2TYtnWP7VK1dYNjMF7+0xuGPE/XSDoYSN0IonQCKc932Pv+Yhh1AcjiT0fkHV/vDpdtbR1P+ekUAMVaB2tvzFU4SAoSeGVU3lLKRWJ56FmP1w4xUsPBOLOT6RHcix140x1/CUTrE7UuGnZQwqHIX0w7zl1ytENSrK2hr3ZlXVtB1+wrGuJWM7W20D1LWkCMoZgSAkEjz0ndlj3GgPZDKQwzyYxZmCzjCfrSFT8vm79eozjC7sQyDy0+fBU7favZBOKN0DU9OgHiHLrk+QXlzmkr95DqV1nJ3xpnmDXMZ9EUn/JhU4pBOhdcr7+/y5Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(136003)(376002)(366004)(396003)(451199015)(82960400001)(83380400001)(38100700002)(4326008)(8936002)(31696002)(5660300002)(6916009)(66556008)(66476007)(2906002)(66946007)(8676002)(41300700001)(6486002)(6506007)(186003)(26005)(53546011)(6512007)(2616005)(54906003)(316002)(86362001)(478600001)(31686004)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVdrTit6VXVLNFd0M1l1NTRaS3lTVFpMOFdjUDJQTlVwWFpTelorQXJtS1NE?=
 =?utf-8?B?YlhZYXVHcnZJcThvaTYzQkN5enRCdVBWWTJQcUdvZ3BrSittWFZrQTVzTCtW?=
 =?utf-8?B?S1J4bnk5VVE4dVJpTFZUMjVwWWNNQ09EbXlDZVhJM3BHa3hlK0hPZjZONUF0?=
 =?utf-8?B?Ukc2N2UzRXhMRzg5TmgvMTNDeFJnc2FpZjRQb1RhbjBvY3dBYnQxM2JVRHND?=
 =?utf-8?B?L3dpYlhVUjNrR1ZQUCttcDNDVjNoMjJtOUNWbkRXSVU0OVhCejVDd3NyYVJC?=
 =?utf-8?B?YnFGc3BMdjNDaXF1U1VwTGN4bmhCUG5qRFVkVC9oQXNwSnI0d2lTc3VlNjVo?=
 =?utf-8?B?Unh0emlHZnJzK1d1ajlEa2tuSEVuNkN3VGJDd2V2WnViTGpWNEtHY0lhNGla?=
 =?utf-8?B?dkY2VC90RlZLSWN0NFV3T25GUzJ2NlBzcWIzMG1mK2RUWjE2S0w1M1NLUlRw?=
 =?utf-8?B?LzhGVlk5OGJQSmFIZTREd1Bqc1lCZGNTSnl4dGUrWkVIaE9WWjJsTG1TdmFi?=
 =?utf-8?B?N0NZYVFKeEo3cUg4T0ZKUFRiY1R5c3NZSXU5N2l0c1QxQmlzTEhaeW1IZEVu?=
 =?utf-8?B?WW91UFp2UHFmN1d2bDQyYmgvUnhtaTRHQzMrRllTRTIramdBdVc5TC9XRDhV?=
 =?utf-8?B?bmdxT3pEWEEvSnFkSEI0eWZnangwRUNaSmtGQ2RybUc4TkxmUWV0ZnRSak1y?=
 =?utf-8?B?YSt1K1FZMFZrak0rZG5EdGsxVmZERlpkRmZQNDhidzRUVWk5ZmxUOElvTFlM?=
 =?utf-8?B?SWJkNk1nbnV2SWI4YVVPaWV4eGFCRStWZnZqSnFhblY4cldPcmQ4ZEJMdjUr?=
 =?utf-8?B?TUI4Z3dEcUVsU2VGbmo4d29LL3BqOU9CN00rWC9JNzR5T0JHb3Z2ZUp0YTZC?=
 =?utf-8?B?Q285M09vSmFTQkVsdEpGMzRoYzQ3Y2o5ZUNvelJuUUdHVkJLNWUwRUpKcnh1?=
 =?utf-8?B?bTJ1TTdYQ3FaaEhQVU5rUVJ2NjNrNDdaQkJES3hORnpPNXRKTTNabVFZN0V1?=
 =?utf-8?B?Ym9SK2pHY3UxZHJySjRvYTRmSDIvbzJsbENtYzdWRHY0ZWxDcEFYL3ZQU0JX?=
 =?utf-8?B?dFgvQ1Z6bjhHQjl3dDI2aFFFTTRFcUtHK1FYbDJsUERhYjdlV3JyRkl0VjhR?=
 =?utf-8?B?VWdTc3NjSDdTT1RneTlRVFdub0hoTXgxZEpYeWNJSmlxVGVZSitMQXBxNmtm?=
 =?utf-8?B?VStkRGZwcjgrNUMyRFN1Q2xwV2gzOUpPWFBDNjNFVVBsT25lMFFrd0xicnVK?=
 =?utf-8?B?czBtZTBJelNOeENZZlNNVmFXbEtDcVNjSEZlSWJjWm1oTkEyT09BbWFhNG16?=
 =?utf-8?B?cWNmbVcrM2EwdVQ1TG4zNm0rVHBNUHpXcU04MFBjMFROMHdyWUVSTUg4Y3Fi?=
 =?utf-8?B?bGFQYzFPU1hTQmk2c05yUWc5RDhnVllUZzIzdTNyR3hLZG9SR0R0QkkyM2tT?=
 =?utf-8?B?UFB3NDNHMHBLN09UZGluelRZMERxblUxYWJONzh2amdFYVZOUnhwNURxN0l2?=
 =?utf-8?B?ZURJSjhVVHROZXVrU1B4dzRsWmN2ODVrd1Q1a3ZWRHJuUnBOTm1DUDdrSnRR?=
 =?utf-8?B?UHdDaHFpaE5paVJsK2FldWVZQy9OYzZRYmQ4TEM1YlNNTlNVNmhtWU9kMllX?=
 =?utf-8?B?dzEzMlA5c2FNbVMvaDgrRVZSRzNQbnpxaDhvbWt6QUhodXpTTmJKMnZPTkVt?=
 =?utf-8?B?R3VFaUFFRllXQ2xDdDFIN1A3RGx1aWM5Qk4yOG1uclZYTm5hT284MnB5Rlo3?=
 =?utf-8?B?ZnE4T3RYdmdNak85SXgyOU82RGs5QXErbk1ITWlIdmg1eUdka1RpQmlqVFQx?=
 =?utf-8?B?VVpsYUpDa0tvbCtCSU9xTm1IODVzVjkrQU9rMHh3b0NrQ1YyL2xOUnlnYkVQ?=
 =?utf-8?B?WjVHOVpheG5sZW84c2JWU0gyQU9PNzZUdWRCM3dnanZ1RGFZZjNvRmNyTVpj?=
 =?utf-8?B?S3FJSWNxcGhlUDh2NUZ3c3lsbGdNNG00R1FRNHlzZkZJbFlNTDZQeFhoRXli?=
 =?utf-8?B?OUl1WitpMXREcG9rbkZldDgzUFMzbHlSYnVGME1hK1pnd2JlVkUvRTBhaTMr?=
 =?utf-8?B?c2hqbyt6ZDBZR1B4YklxR1ZFL2hkNVlNa0p0c0ZrUEpESDBySG1aM2ZxUkFl?=
 =?utf-8?B?WTEyRlRtRmtsVlR0WjF2MnpqNEhTQ1IvVVplT1hBYzdPaS9VcE9zb0ZpdTJq?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 312567b4-f7d4-4e2b-9531-08daf995aee9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 20:50:50.7717 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W+/paeCl2fjvZCXpSb5Y5YugghbICCNfKW/uZAU99QEfHEObHZoSHjr95FFKdv3DBd8ZQ3SQDICP6Wrkg/tI+Hy5Rv2UnUUz73AhqvsvOpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6061
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674075053; x=1705611053;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w+sE/5mr4s9OTL5mNq7q1cUHLefAN2anGKafXWlwdYg=;
 b=Bj+8D22omj6XjUs8M01iOQ3NhuSto1W1FT9gIdp36/PtEYePJMlvHtJH
 rEBZqh+RTNozIoTstWeQ5AedANhNEHVmxPvuLQjrvVttXeZZHFgoUhLnq
 GkFc1h21yam8oJUq3hQVHaOIDt/VVVgqlv7B9jorKO4JMpP3Af5xUYYlG
 NGiwbU0F7Cric8LMYm7dOnBQqkFo+3gQeMtA32GsUxWB+BNTrRetaeM82
 zpiVDT25+hK4fiXJb6qJc9xR7E1BzRceUOaYrnp/igQjUni1Csr1l8mLL
 dGJWSoJfaGqjT/gXXtB/8xVBuYvo/sf6hpdCWMJWiY7hnYXaiiQiI9utQ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bj+8D22o
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



On 1/17/2023 9:37 PM, Michal Swiatkowski wrote:
> On Tue, Jan 17, 2023 at 11:20:43AM -0800, Jacob Keller wrote:
>> Not sure what you mean? make sure idx is valid? but a memset of vsi will
>> initialize that to 0 which will be "valid"?
>>
>> or do you want to like confirm that the vsi->idx points to the vsi in
>> the array with the right pointer?
>>
> 
> Maybe I am missing something. I assume that ther can be only one VF
> control VSI on VF. If we set vf->ctrl_vsi_idx to the new value we will lost
> previous one without removing the vsi index from hw. In case of PF
> control VSI we have WARN_ON for this case:
> WARN_ON(pf->ctr_idx != ICE_NO_VSI)
> 
> Shouldn't we have
> WARN_ON(vf->ctrl_idx != ICE_NO_VSI)
> to be sure that there is no more VF control VSIs on this VF?
> 
> When VF control VSI is removed the vf->ctr_vsi_idx is set to ICE_NO_VSI,
> so it should work as expected.
> 
> Probably this case never happen (calling ice_vsi_setup() for VF control
> VSI second time on the same VF), but if we have the security check for
> PF it will be nice to have the same check for VF.
>  

Yea, I misunderstood what you meant and that you were referring to the
WARN_ON in the PF case. I've fixed the series to include that now! Will
be in v2.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
