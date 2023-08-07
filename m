Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB59E772467
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 14:43:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DA2240B2E;
	Mon,  7 Aug 2023 12:43:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DA2240B2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691412223;
	bh=5px+rT42EUjsxke7eBAUGCaxiuj2UA5WXo3/3tKGpto=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Utlq5iOEh6FErYnJRJKnZl8WcDgBA6Q0Tizfs4DrO8I/8VBymz6I2DpXcs6sBQVzV
	 kkAM6ZymNht0CMGDvn6hxkdK1b/HD2tXNSCrEcRqrcbCKOST1/A6k1ryWZAnRV9lSy
	 I6pSPgg8dTfXuw46cvySTeuxIf0fC474J2R/EBwcVER4dxxjfYDVMG7ra/pMRXfDdW
	 WhirpjtQmnVNa2R8neFSiHrBDIhl1VAgRaXwGiA6uNznHBSjBiBzq+9SV19JOZkHkh
	 hlQDBmcjZXIz0ShKvozWTeBRxqv5ONp4CwcZlsBlq/aCsOjcnoARlQwaUyfTWX/8qI
	 WXAqLXFV2rkhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GnnATobHaFxy; Mon,  7 Aug 2023 12:43:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1C3540122;
	Mon,  7 Aug 2023 12:43:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1C3540122
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8962E1BF951
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 12:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9CE20405F8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 12:42:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CE20405F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PMu5ig7WNhYf for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 12:42:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9691A4063B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 12:42:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9691A4063B
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="367991894"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="367991894"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 05:42:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="854652525"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="854652525"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 07 Aug 2023 05:42:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 05:42:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 7 Aug 2023 05:42:42 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 7 Aug 2023 05:42:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AhL5CEOV3VX6AI0BY0UccqbSZ1CNcIywhudekmHxGk9DGOuzBEAQgh8Ubwv75F/NSJy18sxDxVpV3JAMtkEoOA+SDSdai0Xg42pGMkH+2s34YHrlVSbZkeVZLcL7sWnNrqycJKJOaY0eL4TU/DLm/TVLU/Bf4K2DUUOho9YG/mz3zHeBNzIiAq2zMRtchOTgPQQhTMlRLlP4Xy6sH1/YWOWuxsFJ5v5qVdR9UcGA0D0JFxMR+vkv/4CWHGjtwHIOvS+tW30KOhXfrIO+PfmRdTYkgPvi1ET8tiqz9Dtxn89vNQ3X4Jv2qZpmobxayq7VnDj7PaB7lkiujP07WteGWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sk5lE5nZLE/Hs4SuYiuouJ1QQXyxhPMskEBI2IRAx5g=;
 b=jCLV+w8icO0/ORnmv0kP0dOpkLM5eIyyl7HJ54E8SbyAMa20Bc6Ri0tecTI4Yr/wRQuvQS0OdrHj9hDco9+nMhCvW2p9Wi0GcK1H2wWXrGU4Z2aFIoW7MUYmk09MENxErJy8pP4lS4DII93ra2FO3pXDNhhxI1t6rt3Hzsh34M8cu3ATnvqR5Xdf8TnBa5lg/0gAQlFvZMWi9Zl1jvn3BtzNnpX/t+Dca+W7OBUGqy1D/8W5P3ukiW/4fXsVHjnIM123g/ATgMbwkBAvY1B3N0rNJwftbHXKTZc1StNz3Ve/7e3GpxFmG2FJlibdwdf8idHg67z1Fj/+5NNwKad1yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by MW3PR11MB4745.namprd11.prod.outlook.com (2603:10b6:303:5e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 12:42:40 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7ed4:d535:7f41:de71]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7ed4:d535:7f41:de71%6]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 12:42:40 +0000
Message-ID: <9f817d7a-8f85-9217-620f-dd2f62c2c050@intel.com>
Date: Mon, 7 Aug 2023 14:42:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-2-przemyslaw.kitszel@intel.com>
 <202308011403.E0A8D25CE@keescook>
 <e0cb5bf2-2278-b83f-c45c-0556927787a6@intel.com>
 <572fb95a-7806-0ed1-00e3-6a7796273946@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <572fb95a-7806-0ed1-00e3-6a7796273946@intel.com>
X-ClientProxiedBy: FR2P281CA0147.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::12) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|MW3PR11MB4745:EE_
X-MS-Office365-Filtering-Correlation-Id: 79e2aa62-8318-4535-a1bb-08db9743c94e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1sl1XG5qbWm6KBjbb7Pjj5A1WXdJwyXtojMqbyuXDsu9CFLnbadL+pj3ZNlySShValkxPg5R74d4Eo9jXRqrp/iaLL9ReMv4pmM1Jy9jIkD1ur883MZSay5XxYp1DlKV9fUaT4/fDLVa7C+oh/I+RK1yDFQ0mjnO4zH+//Kykuit5e1UJDyug5J4J+6htkm8gu7ZwzA98jPPkdllL56hLLUsf+r/sI730shKFKAay5ZvCAFOD40mOO6lcuYdPoSudC331IXWawmjaOOnryKQvEbi+HvPOAf9fgWppgH6Py3QIyq9M7QyrsXhf9iD/X04QwXbX+A25GMivZawTsY79TEMOrY7pieIOzMvAdr46xMUTSjiZ3UocE6/b0NzCsEvU6MwqmBM2mvz2YeTUnT4zM/aeTzfYPRtsl0Nw/vjGqkWjPPSFYNjUiyWKVfSVZgPEO+XuOqM/tNL/HWvDOovL+mpPb5ztJiR5jYmGmj0DuYZGag1VAFnM/K5Y2zkPS053j8nKWuuakSkacY5axrCvY7eufJbqRvrWzahOdpYeVgo8TvMTrkf/FlwVopdqRWavzNCVeoteJUR6mEXpyaxYlElnt4GR+xv9IJGbrQBGXdSJXzbF8vJzfGrNc429muG+0lCYxwJ9PDQykcUQLXqAA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(39860400002)(346002)(376002)(366004)(451199021)(1800799003)(186006)(36756003)(86362001)(31696002)(82960400001)(38100700002)(6486002)(6666004)(6512007)(966005)(6506007)(53546011)(26005)(31686004)(6862004)(316002)(41300700001)(66946007)(66476007)(66556008)(4326008)(6636002)(478600001)(54906003)(37006003)(2906002)(5660300002)(2616005)(8936002)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGpyRGxiSUdZNVZHNzN2bm9ObjdjR0Jndm11Um1JRzFxY3JUSzc3ZFRrVFNX?=
 =?utf-8?B?OVhlSDJkKzB5WnJuRkVpNjB5S3pHWlp6bW8ya3I0UnZlRDlac3lpR25TUksz?=
 =?utf-8?B?L1JaaHU4RDJzNTJXS2FLdFBtc0h0T2lXbTVaYUZkbFlzVU5sSU9QVE5URlVq?=
 =?utf-8?B?Z2p3eTRlVjlWVzZxN0hrT29yUmZGZGR1eWZqTmhVajdSZ3hQWGhNMVNPcCtG?=
 =?utf-8?B?Tzl5ZmtWRWhUVVQrdElYekd1WjhFSy9LdmNCUGZIamgyVGFjOVpUc0hvYlYv?=
 =?utf-8?B?MjFETEw0aC9ieWlwcWJ6UzVkOUdNRkpiNGtJUGliZHVaQklqdG10aFBTQVZ2?=
 =?utf-8?B?N1l3cGwvejBhTmtHSzhSalN4MGIva1N4YlYxeEt0R2lhWlZaajVoa2R5K3g2?=
 =?utf-8?B?YnZHN3Y0TllzOUxpZVJjRGxwS1lIV1g5SWtiZ0ZzeFpFRy9oREQvclo0U0sv?=
 =?utf-8?B?T0daME1RTUNhVHJNcmtia3R4NTVoVFNkNi9KRHdJbllib091ckQvRXhReUVv?=
 =?utf-8?B?S3hsUDBNcWxGaTA2MlJoRmFkcitwSDcxTk5tVlJLdFZKSTRpU0t2YW9ocmtH?=
 =?utf-8?B?QlVtd01EaGRLLzhOTnlsRk9YUTRCbnc2ZFVuRUUvSm12bVFpb1VUY2oxSEUz?=
 =?utf-8?B?c2xNS3hlazBKVEQ2Y0dYUENJKzZmMWY1Z3dTY0dNSkJMUlpyMlVKemRtQ2FO?=
 =?utf-8?B?OE52cWd3V0dXdjNTU0VLbUZBaUd0N1FDeFlsZ1NUSld6ODNnODR4b3hCU2gz?=
 =?utf-8?B?KzZVUyttaU5yWm9kcGlXYjlWaUVleGh1OXFYZmJWVTByeVBqcGkrMTRsOHh0?=
 =?utf-8?B?c1lBUmVDU2ZWNWZFalVQNGVZTVFuS2tJbHlLSll5OXFWb2p6S0NOK2dTNDlX?=
 =?utf-8?B?YWhEeVRseDRrM2VrZlF5Z05OWHB3emtjQXV5TTV2aXhXcnVKN1llR2w5WjNS?=
 =?utf-8?B?dEoxT3B4dG01NWJmYjJtb2R3K2hpeFBSSkpldGRia0dmb1hNV3E2N3Jla3Bx?=
 =?utf-8?B?YmdFUHJ0RXlRS0g3OHNGVVRQeFBBeXRPRllhMnJpdDBadGhaTXdkZFk4THFL?=
 =?utf-8?B?by9hNlNyM1l4dG4vRjVXSzUybFg3NW1sc3NHS1BUQWpGay9GUWZvQUtTaU41?=
 =?utf-8?B?NFdWaVNwZVV0T2pHbEtibllaQ1IzK05ieEFNVFBzMEdETklBTWpzL3FKaUlu?=
 =?utf-8?B?ejJXNWdjd3pOVnhCWFlYeWxmMktqdDB1TWxrNFRnR3htWXlRRUVPaHFLclpP?=
 =?utf-8?B?TnFLMWxKaW9CdEZISGxHSXY3VnlmNjFVUnl3bW9uY21SdFc3dXhHSURuTmky?=
 =?utf-8?B?Y3R3MkVybGFYVncrZTFHcGh2S0d3bDllcE92QmUzcXdqVUZnR3BQN3E3R3VT?=
 =?utf-8?B?YTk0TjhzSk1KS1R4aUlWekUzSzVpdTlvZEpBQ3Nzd3BVUnVUeVpwUXpBK1BK?=
 =?utf-8?B?bExjc0NzY2lLLzE3YU9HaU0xOU85NlhXODFsNXlUS25SZ3FmaTJma1lGMFFy?=
 =?utf-8?B?WEFkVnozWldiZXZPNFB3N3Jvb1hZYlhWUjVLTWw0eVduUFRyY3FabkFrMkw1?=
 =?utf-8?B?cUNocHc4bFB3cWNPbGluWnZtcjFMQWk2aDRtREV1RS9hSXNYazNqYUFsUE9k?=
 =?utf-8?B?ZnBLc094M1RUc0JOTllBWFIzTmhJUHMxTWZyd2dac2FmMnhsaXI1Z2VnTFpl?=
 =?utf-8?B?dk9TNDJYRTIzMnhUYTZLaHRSeUplY1ByR3NIR29kTXZONGU2VW9QNnFLWEx6?=
 =?utf-8?B?cFhuT1AzenZmSWRnRGM5aDJlRlNhemVkMGR0QnNLZGRUaGhnQWNRc2VpL3lu?=
 =?utf-8?B?Mmdjb2JGbEtZVklsRkJ3bFI5c1BlVlJ1N0E4MnYwdVFSK2JnZ0RvMzBoSnoz?=
 =?utf-8?B?eFhwcWsyS2YyMnFBRFFIZ21iRjg2TEJPVFVzTFl3K0JtQ0lVeVV6S3BxRUt1?=
 =?utf-8?B?Y2xxdFhvbElBbjlMVzFneHVueVRtU0g0RlhqazhCczZCMjEydHNZR3FnanQz?=
 =?utf-8?B?RU9OZGtaNFJLQUJaZmpwVGM1aTFsOUFWUENiTEhtNTVoM2ZnRFJBbit5Qzgr?=
 =?utf-8?B?NnNHWWtWMlJSWnJFU25IdXEwVmdFSFo2Y0pGckpBZ045Z255WEFpQ1RZb0xG?=
 =?utf-8?B?WUliVWtVMHFnLzc2TE5SV0tHVjczZ0hzZ29nVHdrRVFzbjJna0Raa3JaR3BU?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79e2aa62-8318-4535-a1bb-08db9743c94e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 12:42:40.0569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Aa65h63qoOD+qKpqXcdysT0yBR9wc0qJhrYnn5Mr+jMoe+YICnpzSGjoM1scB5xm8Mbo9Cnf039NoGpXrD0Lv9xR2fkENzdTjp3a8gTZGv0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4745
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691412163; x=1722948163;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MlZj27ZsBFwwjGYnnv5OHm24Q7Xlc6BJKPvUmQAugnM=;
 b=hV55NMYETgGXYWvOEFljn+dtUm2IwBch0o7jfOEsvlShjVk6qKZ8e5cJ
 NBWXUWAx4w4laALEV1VZeyNGqsqG+sLUII/dtA+TkSqU+BEE6I4rvAdrl
 zF9SrCFO0C3903ozGoy2wknU90mY+DoiULjVj7gjnnIbpgrN2l/MScrfY
 iAPBA6mkQOlzRqx+6oKk1FnCoCB04ZuJ98dwUcwa4zVZNx6UnkQmF61pc
 7BbzttZ4hlDJt/jdvS0yO/JMin5ujhlMZ+/YxuVbRDJQIFBf4NB8JQXBi
 yxNGx3N8UwLiQ7m6YYLMbiH60GzVij2re1PmR+ECZO5oobTQqlvmBSA3J
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hV55NMYE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 1/2] overflow: add
 DECLARE_FLEX() for on-stack allocs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Kees Cook <keescook@chromium.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOC80LzIzIDE3OjQ0LCBBbGV4YW5kZXIgTG9iYWtpbiB3cm90ZToKPiBGcm9tOiBQcnplbWVr
IEtpdHN6ZWwgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+Cj4gRGF0ZTogRnJpLCA0IEF1
ZyAyMDIzIDE1OjQ3OjQ4ICswMjAwCj4gCj4+IE9uIDgvMi8yMyAwMDozMSwgS2VlcyBDb29rIHdy
b3RlOgo+Pgo+PiBbLi4uXQo+Pgo+Pj4gSW5pdGlhbGx5IEkgd2FzIHN0cnVnZ2xpbmcgdG8gbWFr
ZSBfX2NvdW50ZWRfYnkgd29yaywgYnV0IGl0IHNlZW1zIHdlIGNhbgo+Pj4gdXNlIGFuIGluaXRp
YWxpemVyIGZvciB0aGF0IG1lbWJlciwgYXMgbG9uZyBhcyB3ZSBkb24ndCB0b3VjaCB0aGUKPj4+
IGZsZXhpYmxlCj4+PiBhcnJheSBtZW1iZXIgaW4gdGhlIGluaXRpYWxpemVyLiBTbyB3ZSBqdXN0
IG5lZWQgdG8gYWRkIHRoZSBjb3VudGVkLWJ5Cj4+PiBtZW1iZXIgdG8gdGhlIG1hY3JvLCBhbmQg
dXNlIGEgdW5pb24gdG8gZG8gdGhlIGluaXRpYWxpemF0aW9uLiBBbmQgaWYKPj4+IHdlIHRha2Ug
dGhlIGFkZHJlc3Mgb2YgdGhlIHVuaW9uIChhbmQgbm90IHRoZSBzdHJ1Y3Qgd2l0aGluIGl0KSwg
dGhlCj4+PiBjb21waWxlciB3aWxsIHNlZSB0aGUgY29ycmVjdCBvYmplY3Qgc2l6ZSB3aXRoIF9f
YnVpbHRpbl9vYmplY3Rfc2l6ZToKPj4+Cj4+PiAjZGVmaW5lIERFRklORV9GTEVYKHR5cGUsIG5h
bWUsIGZsZXgsIGNvdW50ZXIsIGNvdW50KSBcCj4+PiAgwqDCoMKgwqAgdW5pb24geyBcCj4+PiAg
wqDCoMKgwqDCoMKgwqDCoCB1OMKgwqAgYnl0ZXNbc3RydWN0X3NpemVfdCh0eXBlLCBmbGV4LCBj
b3VudCldOyBcCj4+PiAgwqDCoMKgwqDCoMKgwqDCoCB0eXBlIG9iajsgXAo+Pj4gIMKgwqDCoMKg
IH0gbmFtZSMjX3UgX19hbGlnbmVkKF9BbGlnbm9mKHR5cGUpKSA9IHsgLm9iai5jb3VudGVyID0g
Y291bnQgfTsgXAo+Pj4gIMKgwqDCoMKgIC8qIHRha2UgYWRkcmVzcyBvZiB3aG9sZSB1bmlvbiB0
byBnZXQgdGhlIGNvcnJlY3QKPj4+IF9fYnVpbHRpbl9vYmplY3Rfc2l6ZSAqLyBcCj4+PiAgwqDC
oMKgwqAgdHlwZSAqbmFtZSA9ICh0eXBlICopJm5hbWUjI191Cj4+Pgo+Pj4gaS5lLiBfX2J1aWx0
aW5fb2JqZWN0X3NpemUobmFtZSwgMSkgKGFzIHVzZWQgYnkgRk9SVElGWV9TT1VSQ0UsIGV0YykK
Pj4+IHdvcmtzIGNvcnJlY3RseSBoZXJlLCBidXQgYnJlYWtzIChzZWVzIGEgemVyby1zaXplZCBm
bGV4IGFycmF5IG1lbWJlcikKPj4+IGlmIHRoaXMgbWFjcm8gZW5kcyB3aXRoOgo+Pj4KPj4+ICDC
oMKgwqDCoCB0eXBlICpuYW1lID0gJm5hbWUjI191Lm9iago+Pgo+PiBfX2J1aWx0aW5fb2JqZWN0
X3NpemUobmFtZSwgMCkgd29ya3MgZmluZSBmb3IgYm90aCB2ZXJzaW9ucyAod2l0aCBhbmQKPj4g
d2l0aG91dCAub2JqIGF0IHRoZSBlbmQpCj4+Cj4+IGhvd2V2ZXIgaXQgZG9lcyBub3Qgd29yayBm
b3IgYnVpbGRzIHdpdGhvdXQgLU8yIHN3aXRjaCwgc28KPj4gc3RydWN0X3NpemVfdCgpIGlzIHJh
dGhlciBhIHdheSB0byBnbyA6Lwo+IAo+IFlvdSBvbmx5IG5lZWQgdG8gY2FyZSBhYm91dCAtTzIg
YW5kIC1Pcywgc2luY2Ugb25seSB0aG9zZSAyIGFyZQo+IG9mZmljaWFsbHkgc3VwcG9ydGVkIGJ5
IEtidWlsZC4gRGlkIHlvdSBtZWFuIGl0IGRvZXNuJ3Qgd29yayBvbiAtT3MgYXMgd2VsbD8KCkJv
dGggLU9zIGFuZCAtTzIgYXJlIGZpbmUgaGVyZS4KCk9uZSB0aGluZyBpcyB0aGF0IHBlcmhhcHMg
YSAidXNlciBmcmllbmRseSIgZGVmaW5lIGZvciAKIl9fYnVpbHRpbl9vYmplY3Rfc2l6ZShuYW1l
LCAxKSIgd291bGQgYXZvaWQgYW55IHBvdGVudGlhbCBmb3IgCm1pc2xlYWRpbmcgIjEiIHdpdGgg
YW55ICJjb3VudGVyIiB2YXJpYWJsZSwgd2lsbCBzZWUuCgo+IAo+Pgo+Pj4KPj4+Cj4+PiAtS2Vl
cwo+Pj4KPj4+IFsxXSBodHRwczovL2dpdC5rZXJuZWwub3JnL2xpbnVzL2RkMDZlNzJlNjhiY2I0
MDcwZWYyMTFiZTEwMGQyODk2ZTIzNmM4ZmIKPj4+Cj4+Cj4gCj4gVGhhbmtzLAo+IE9sZWsKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
