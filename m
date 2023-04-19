Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 781126E8535
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 00:48:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E786160FA3;
	Wed, 19 Apr 2023 22:48:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E786160FA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681944526;
	bh=NQfPFADMKj22B1rh2dkoWH0rVbJ++vAZ82JrDx1bAbQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0zUEgwpmkOsYI1YXze10Hfpinh8FcWfxpgsQWnPH3FJkivkjG3orpRlUr0quSRrax
	 X2swXmP2obRlg18ioVBD++iYCr410pTCN9kmMbbmuBX9vQ1Ui9MT94gnQxu60gbcJ0
	 w8aPF/GyQaWzNdyBdB5kMpwOD16y1tyEA/Nx0zgf0It373UFfpfLo7c8GW8aIAkbzG
	 NVf2siQymOl7IMscJqgyqFs9pti0lIoOhdZGgZwPM8I9FHqUEC7zP4cCRAsd4DTiop
	 xjx3XnN/EK0Daq9rpWbRP/1a/ggvHgY9/Ct0NtvKlpZBeKMNyBBRz3BiX5W+Q1C1/4
	 OpLupP1EQG3yg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RNnMYqI2uQzf; Wed, 19 Apr 2023 22:48:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B05C060B1C;
	Wed, 19 Apr 2023 22:48:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B05C060B1C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 377C41C43BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 22:48:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18E83409C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 22:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18E83409C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dfvW1jBRCOrj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 22:48:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A7AA4090B
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A7AA4090B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 22:48:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="329754996"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="329754996"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 15:48:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="760913064"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="760913064"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 19 Apr 2023 15:48:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 15:48:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 15:48:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 15:48:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 15:48:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i0t3zmKitV6OrUcnIBDUrvlyljOe3dd52KBZogFLXzCaVyCwO9xTZfiwYM3Qj8q6EwmpB1/5xgpRhasnayoYFSiM4X3QVG1HUXKbtT0HpQZM2rBr3jPV5hOwlbXlqv7z7PpO/y1rrEM+clvc3n3SvK5oxXrGDJZ/Cnba4LDrtECMq7ZWA9WiQblIvFjc4APgB0KX4YajF9018/Rvj8Jpny/VqmeKo3ijVRWObZuElnLAX3bQalGy2JPMxBowoIp6Bbn0WNsL+IfQRjx9wwSZI14kWDzDGBgtQVUInOB7BeF8NmPrGPm5iBrRlt2ytUUBIZFePRNODOio/0wMq11/cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wVE/cIM1kcf45EhseOb92cxeByr6Du4XrK9UIxyDFGA=;
 b=GGldqULPR1wg4pPOrVuikXFwUFzsU2GKHZ19JkId87Aq3jiHGRXGAi/adISIQgQtNZaYSBXE92tQHtWLj4+xv8UsNFMyhkk7jfNzPzPSXU66Cy2guWHQc2qQIjcPfRSYOGUXW8ATXnTiQ7REWZPWBFZI+Gg/d/+hUkrdfAPxUgly0NuK2VhqL6+Ax2XcluvMlNUrOFfP7xyKEo3sR7/1ArVS4KS2fePZy18eCTCFxbF4A4WdW6yYrZ72g7mIbWEW9wcTw560r4sbaQ2Wv8aRQ5hGeVKoxtgq20NaZm8D3WqLGsoUbP/QwTiX14faVz2JTC8jXFHE0NKlh1A2Rcoh+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Wed, 19 Apr
 2023 22:48:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47%3]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 22:48:33 +0000
Message-ID: <1ac4ca6e-480d-c648-b62e-d0b5809d61fd@intel.com>
Date: Wed, 19 Apr 2023 15:48:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Kamil Maziarz <kamil.maziarz@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230419115006.200409-1-kamil.maziarz@intel.com>
 <20230419115006.200409-3-kamil.maziarz@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230419115006.200409-3-kamil.maziarz@intel.com>
X-ClientProxiedBy: SJ0PR13CA0186.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::11) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB7605:EE_
X-MS-Office365-Filtering-Correlation-Id: f73bde63-3c29-47b9-64dc-08db41283445
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ULLWFdNauTAJT49XqGc1YxvEQGMl75tnBk1NLEisGFVZVaKDRKap0bHGHQ8Qryab2X1H2KPHARbyJc9vRXI0k51xbQZwhfAumP5aFGr7Oaxo+I+D+4Vm8wOJ9uYjmI62OEACWKxp72vVor2DP2esG4Cva3XQ3JMwLszeMeV5WZbgqGB5gYTfZWFYMDZNIIT3nYYz4uDMiiolwS9aQLzk4UG1Q3YEn/W23HmjlD1umfBmkQSCfDWMOhBtFEgRpOhqbS/WQpv/CuqOx1Wu1kDQ9HWOhUsuMSylAWWM0OlaQ5F/4mmHVosODJpURJSgpqZUg+OZgnma7cQc3+YEhe0VuRL1LeR7XQ/sSI1AClvc/nBP1IafoAbwIDqOokiDyZo4ayP4fYSTtoAYuwsplSmvhUyY//4FPS6GFvYD43NUe58FKhYgl8kY1CoTa/uaSqQrbIiNx06g4Vtonr9GpBHOEm9j9eMFk2qqf1b0NKbtSs1giC4Xg1Sh3GXcdAfhZKa8UMiF+ySbxNFaZWFIiDldv/mPrl7E9fqfCxU15EE4meUqpdgvfDHT66q03LwnPSjBCM9ERol5SgjLWg0nqlfk5wfKXAslJHsrPDsNFGWsLAKZVVKitwJvqrdPYBYrY0RM+CR/zZvMUQsx+0k3WCUw4Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199021)(26005)(186003)(53546011)(107886003)(41300700001)(6506007)(6512007)(86362001)(2616005)(316002)(4326008)(83380400001)(31696002)(66946007)(66476007)(8676002)(2906002)(8936002)(6486002)(66556008)(82960400001)(31686004)(36756003)(38100700002)(5660300002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2x4QklSWi9aeDJqUWgxbk0zNzJQclg1MzZ3RERlUnJzR3JISUI3NktEcS9V?=
 =?utf-8?B?Wk8ySDdQWDh6UTZMSG4xNWQ0b0ZKMG10WC8vMmFSRlIydzRtL2dFblZIeE16?=
 =?utf-8?B?MnAwV0k1Y1JhWXk0YnBHdjlOenMzMnhsbnNiOFJ5N1FEeVFMVmhMUENXL2Ro?=
 =?utf-8?B?dVVId1ZreGxaSzBFK0tOZkNrN0hpejhjNXRNRFJ5ajZGcWxkZk1JMDhEOTVL?=
 =?utf-8?B?V3ZUUW5RUmQxY000ZG93MHZzT3VONmgxNTRwdzRMOTF3cjlzNDZ2UjYzSklx?=
 =?utf-8?B?YWt4OE0xbUxMMCtra3dETVlVL3Bub1VXWGpKalhWbk9LT0JLbjhUMkN6eU1t?=
 =?utf-8?B?SVNLOVp4NzJYdDVnQjlMR3Vmak01b2ppVUJSdmU5amNwWnVZMXQ2ZGhsL1Nt?=
 =?utf-8?B?WHZZeXljMDNZS3pzNmR1QzVhbk9rRXJmcEpMT0pRdDI1aWhUZ2NUN0VkVDN2?=
 =?utf-8?B?MXluVVZLQkw3STVsMURWTWJJWXFCQTFoT2ozZDF1U0JFQjBjTy9UOFhWVXgw?=
 =?utf-8?B?ZmlJYVpmVXk2c1VteE9vY2hYTi9lS0YrZTNaZ0RQbHJwQkdZZWtBRWd5NHk5?=
 =?utf-8?B?SUowR3FwWU9Bd1dIRktyb1NySkdiV245STU0YU81K2xnTGhuNHhxOFpJTm45?=
 =?utf-8?B?Z09TcmY4UmVPWTBQc3dJQ2IyN2QyTEJtV2pXMkk1MDljVkNNZzEzN2k2ZExF?=
 =?utf-8?B?MkU2NmpMT2lib081c3JlWldjZGxpWW9Md0tRZlV0MHAxOXBsMUJ5U2hnM2cr?=
 =?utf-8?B?SUJPZGJoenh4UTgwRW5tc0V4MDhCWjFNeXVRNURQVlhRNUdSUzlKOTVnMHhW?=
 =?utf-8?B?cXUzbVFsRCtvQ2syYlpaRFkvdkpraVZvdlhYcGhMK3hGWlhlam9hODloaDN6?=
 =?utf-8?B?VSthZWgzMnhFYU8wd21NK3lRK2xxYmZOZ0pjUTVCU3FHaWxDWG1kU1RUY2Ra?=
 =?utf-8?B?bEJNZ2VNdlVyRFhOa001UW12dmpkdDc0MG5VeGhJQnE2YkRKdlJJc1JOZngw?=
 =?utf-8?B?UEd0UHRReC9lUW9HNTd0UER2ZnNJdFNJdERnSVVrTGora3ZXVllmSlcxV3hZ?=
 =?utf-8?B?bjh4T2YzdDRJamFYVUw1OXptQ1hxMEE2c01IZUY2TW5FbkhYUzlDQXJ2d3lv?=
 =?utf-8?B?dGFBUWxnZU9NalRiYWFUcUMvZjkwdVZIWnp4VjJmSFFOSFprOEd3S0NaK2Fk?=
 =?utf-8?B?M2tmVVlUdHY0bEhHVUJjQ1Q3TEFJVHUrOVM5bURIa1V1YjN4bGlRbHlFRnAw?=
 =?utf-8?B?Z2lEQ3dhM3cvMjVXRTZhdE50M1p5MEpHc1dsbW1ZV1RURlNnaUFXTWpVSkp1?=
 =?utf-8?B?OUN4VWJKdFpuUTdwV09FUXhyUmpaM3RDaGR5NUNYQzZHaE9GcEppUlNwSWtp?=
 =?utf-8?B?RTh3MXNXc2NRWk9jcTVyaTM3Ry8rNFU0bHBjdDhsWjllWXo3WnBlVFcySHFN?=
 =?utf-8?B?VXB5ZkVycld3aDBSK3NVelI2cHBEWkhTU0FIWDhLUlhNQzd5SWFOZDdiMnlK?=
 =?utf-8?B?a3Q4dWhlWjhZQjlQTDA4NGN2NnU5aVNWTUFKNFZLOEU1TWMxYnFmcWs1Z3ht?=
 =?utf-8?B?bDVuZjF4VDBaR0Z1YmlQRGZXZko1L1pkTXd5SW9VYkJackVUMUtzeDBndVVI?=
 =?utf-8?B?TnMwOG8yYm9OaHdRYi81SlliQkxycXU5cWF3YnNCcjlBNXNhVCtSQXZsQ00y?=
 =?utf-8?B?cGRqZTkyQnliMGlYZXpKalJJb2pYbUF3MldpOTkrQm9tZWFvYjUrUEoxY0xL?=
 =?utf-8?B?d2M1eFI2TmNSMnN6YStGZ2lJdzdXY1pQR2thQ2lmKzNUQXFMdDVaTEYzbC93?=
 =?utf-8?B?UDkydUpXYXVHQnhqbGorNGZTdDRHUWpMSG1hVGFEbGFzWURSRU1mbHNiS2po?=
 =?utf-8?B?S3VGeGEzbjNLa3JWWnBVOXJ2R2k0SWVLRVVlSDIvM2IxYm1OS1U0ZzhKS2gy?=
 =?utf-8?B?eDBUcC9XRnN3QWdCTDA1ckpLS2ZNbGNNMTlCcGNYMmQ3QVhXQzRXRHEzWlFy?=
 =?utf-8?B?eHQ3YndPdnZQelIvemk1VG51RTdQYXZzZldUU0NPcFhHUVJ1T1M0dU1ibXlV?=
 =?utf-8?B?anFpMnQybzZKaUhIbUswcDY1VWZrd1EzZm1qcDRTT3Znb01tS05sVWVrcis2?=
 =?utf-8?B?cTUvVldPb1AzcFZtYkpsZm9ndnB1bERkNG4xZVlFRmFkUXVzc0xGWGREZ2JZ?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f73bde63-3c29-47b9-64dc-08db41283445
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 22:48:33.6520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8CDIbvWW9Ly4i8/nx6wP22YT/Mzb/ZI3OTZYxfApWg0pBkUP4Tpu8+mN0FyNAqGo+sNITWE9gRpqZ5YsaFAOE+O3e0WdZ8PJ8YSR/UBseKk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7605
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681944519; x=1713480519;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j55mM/L6JGzCnHCD5kX+N9eq0gMpZSeFaFSNkmiXhvE=;
 b=mvouwpyvENcanPuJx9q0Hj1uZYt/r6UEww+U8w5HxyjzU6hDxFlcanIt
 kzbHEHWw80oE/3tMpNIs8ai8A7pGD4Jx57uXlgBv0CIf23x5AZkbZ5Q6s
 ElCteip7BPoUoA6TajU+HGEoKim5Q0gaDF2v3QisHN6TCbTASfUcVaLft
 czRMUWOR4vWBRMza9nZ+MjYGyJEF7j263FoObIKIJzgIHA4Y/aOiPkKyd
 ixyyJTC0XUC6pIRwpI4JB3dfx1IOyJo6Z2+H8gbXnWG88nKQvtrU7jcOm
 KBt3J8OlTvhTDJQnZnv3oWlWz0rAbxA1VO3XqccjpL6cAk2V1MjMQyaSS
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mvouwpyv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 2/4] iavf: Don't lock rtnl_lock
 twice in reset
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/19/2023 4:50 AM, Kamil Maziarz wrote:
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> Some ndo/ethtool callbacks are called under rtnl_lock. If such callback
> then triggers a reset, the reset task might try to take the rtnl_lock
> again, causing a deadlock.
> 
> Callbacks that are sensitive to rtnl_lock are scheduled when the drivers
> are unable to obtain the rtnl_lock in the reset flow. This ensures that
> the reset task does not attempt to double lock rtnl_lock and avoids
> the deadlock.
> 
> Before this patch, a deadlock could be caused by e.g.:
> 
> echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
> while :; do
> ip l s $VF1 up
> ethtool --set-channels $VF1 combined 8
> ip l s $VF1 down
> ip l s $VF1 up
> ethtool --set-channels $VF1 combined 16
> ip l s $VF1 down
> done
> 
> Fixes: aa626da947e9 ("iavf: Detach device during reset task")
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Co-developed-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>

Please be sure to check checkpatch before sending your patches:

ERROR: code indent should use tabs where possible
ERROR: space required before the open parenthesis '('
WARNING: please, no spaces at the start of a line
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
