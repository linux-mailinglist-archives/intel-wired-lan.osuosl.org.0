Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0244E5F6A1C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Oct 2022 16:57:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C072961092;
	Thu,  6 Oct 2022 14:57:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C072961092
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665068273;
	bh=t8aFZxngqDwY0f4P1m768BT6PPN1MLwEchllZ7K2J8s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C9pEgRRjtEY10ECNbe+AxK070Z+/8Y0+R8ClJv3x0QvfhTrFqJaYzRbPOOF//kmGp
	 UqgjE20XywndsySCp7MGnSArOOOgOCc8PUoQVX8d++m/iOBrT46TQ3ERNfZEE9KxEZ
	 +XUpSFtl1d1SbgdV1BAqbSmY+3tZ1eDNKJ31qTrCpjFGWB4XrpZcpR/Y6iKJ6MJ49K
	 joocPeAy7fXEBwcM6sKuTY9f2Q9B/30qWZrq3PqOtP6RF/GgEz43BFkzt3CmQpRSD9
	 ssM/pxLzBlLVxf0NBP1qGQqj9Rm9KtvOFOwNd2x3PJpDc8XQAj0CVqSJt18AzdWT8O
	 gxTsKQzJMW74Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MxRa9nKJ0BBv; Thu,  6 Oct 2022 14:57:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BC9261077;
	Thu,  6 Oct 2022 14:57:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BC9261077
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE3ED1BF33F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 14:57:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4CE361077
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 14:57:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4CE361077
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TkA2KMl7-wbQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 14:57:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2753F6106F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2753F6106F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 14:57:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="305043931"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="305043931"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 07:57:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="729175730"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="729175730"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 06 Oct 2022 07:57:25 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 6 Oct 2022 07:57:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 6 Oct 2022 07:57:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 6 Oct 2022 07:57:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GmeLvRTBdxLl4MvTwH+a52PL4hDktFbk5wjUm+QhFpVKB+YV8G7asSpE584Oelq2Lh3w4RTSuhOsbi3OsltCGuIsJZGVo9/igJDFkzkJ4BFKgRXLE6nJiFvA9sPaIvibg1ThXgCGOzvigh1SmeX2QxFEtb5QOsZpp/nDszYIZnR/aCZhR2LK7U6hLCqM+4b9JU7gXEwjLuF+v97Qwmu9UJG/uu/QmHWk6yX1NoSjqSK2rIqSPsTrg96GZ5ZtD3Rcns88XmpM7c00LFsjXAaheSW/1hu1CaTRwlPuBZQKsKodgNkVkY8E5ulOWzVnyM9c7B115PEeaGpGlfxhpVyM7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CekYUQnO0/EYhS00dLjE3Sqg5hxEN3rVPZZVFKSbA3E=;
 b=J9puwq3zMUmZNdmxZrhD+92FYkpgjRAgA9GLnc2H0VZxFpfURgq/uLvN5vLntKfU5KNZScZCZhJ7JLxzhQomRU+7SQ7H1WTIpKlIMVvjSVbsqWIzLS4TNaj4EVHhyFMQ8TsoMkO3+MU3cF3QREUe2LrEwnVIrktijks9eGpfNqivcuJLLddANqg1FhDeYJMAtFOxHdl/l3m9Zhp1nIqkPFHqGLaLNDkxERIzd3Xodv29SLNslGIMqCwsU244ougrpR9woh+wEHw/YjN98UEcp4D0LXYibMqTpCtTKbTMMQXm2QXmMA70C4e69IwYIH6WgsqlHgzsLBVd1hF+1LGuLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by DS0PR11MB6349.namprd11.prod.outlook.com (2603:10b6:8:ce::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.36; Thu, 6 Oct
 2022 14:57:23 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::65f0:bb9b:623e:49e]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::65f0:bb9b:623e:49e%6]) with mapi id 15.20.5676.030; Thu, 6 Oct 2022
 14:57:23 +0000
Message-ID: <481f7799-0f1c-efa3-bf2c-e22961e5f376@intel.com>
Date: Thu, 6 Oct 2022 09:57:19 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Joe Damato
 <jdamato@fastly.com>
References: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
 <1665004913-25656-3-git-send-email-jdamato@fastly.com>
 <0cdcc8ee-e28d-f3cc-a65a-6c54ee7ee03e@intel.com>
 <20221006003104.GA30279@fastly.com> <20221006010024.GA31170@fastly.com>
 <Yz7SHod/GPxKWmvw@boxer>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <Yz7SHod/GPxKWmvw@boxer>
X-ClientProxiedBy: BY5PR20CA0035.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::48) To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|DS0PR11MB6349:EE_
X-MS-Office365-Filtering-Correlation-Id: f3654dc3-0f74-4744-ddf9-08daa7ab135a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S/ic4kDqyKYA1h3NrHzd4jsehBgFUQDkaB0hrr47cOkaP7QmQwuSyRgZjasBhUWWHr2cE+liG5QWNkQ0XTWpd2za+P64OSwDm+WP/F+AOU8SCTzDvLm+1rtrANsPVmpOw6XaCn+WNNuI7C3b//X+uM9lsvfeO2K/z11tQDKSL1ZAKvGihs67kXMHujtCX9QsDAQwNAUNw5hKHknSR2+Fa4Wt8pmmDR+K/0MSVgrs/ltnUhMSpubl3h3xI15L1Vzn4CTkgEYzM7oJ4sjRYpgDjOFAokFQW7o6hfFFrJ9iZkuj9N+6rPpAQBf5BaXjDSlMQPUk1FQ+2QTYTW+bLtSl4RpCAr82p8vJMfJrH0zUdI0ZLKASa4QL/f7jawAEdqIQin7IYKCBsM5FBtbaNCD7+cKPb1Y8lL9bXCLeaE8oA22NPXqmDMaN+V8wG8KJLNtDUg7pP6FYg7UhUh9Y6eRHiQMe+4wiT+ZKpbtBVHlsBD+51MZNghXsnDHthn8oiwg7OonsKnAsiPowxTfHcjxrOd8Jvra4YGs1G34iCJe0xePcNtNgePBa3Yv161eBqBE5EQNke346ivLj6D+IP6PzmjUDTMc/Z6IUBU0VJP3ewZAyGatF4C7tKT/54S+Ic6q4MQZFJe34DICa4gbcAV0fjzNNVodnLXK3NkiZcdJMrQwfTIjRGXmKAW5HrWeEvDo/gzpXxAU5OKUUfeQgWadu2DtrLbpAX1vi39+9GII4zLXqiV+joIF2pVrOERZd3pOIYn+coJFmWn0ahELUctCaYzMCJVcomO8GemNfNi8cbZU7ooRKvkIrXzySK9d81FB3I6xucGsmddLY7cENwbq1Ig==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(39860400002)(366004)(376002)(136003)(451199015)(31686004)(36756003)(83380400001)(38100700002)(82960400001)(86362001)(31696002)(186003)(8936002)(2616005)(53546011)(6506007)(6512007)(26005)(478600001)(107886003)(6486002)(2906002)(6666004)(5660300002)(316002)(41300700001)(110136005)(66946007)(4326008)(66476007)(66556008)(8676002)(45980500001)(43740500002)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGtKSjN3bkxORkl3QzdmWEZHMEFKbkRtOUtnYk5seVBMdnoraWFJcDNoSTBz?=
 =?utf-8?B?ZTRyclArU2JOMHROcVdDVEtNY09TQWEzQ2d3YUpWek92bXkxa0ljNGJERVdh?=
 =?utf-8?B?a0ZZd1h1Z1RuclJkdi9HcWtVbHZoS2pWWkcyUE1ySlFiOWFzMkdsUEVnVmdF?=
 =?utf-8?B?YXJ1KzkrTnNyR29HMTZBMWQ2RitFZVRsakRlVmlBRm1tRHEzOGdxelpoc0Vh?=
 =?utf-8?B?OXNnM08wVkQzZ2R6ZUQxRS9mRS9YTzRmSThUd0hMWTJMYktlN2xaSWg1UXZ1?=
 =?utf-8?B?R25vK2tYQStteFRVUGZIb0xhZ2NDSnFxaXBZektsVlRydmlpUUV5WC9WVXBE?=
 =?utf-8?B?NGtETzluV1V5dDBab3lFMHdHS2NyRGNWYkY3M0hUK0NoN05ZRzBReU9IaDYy?=
 =?utf-8?B?SWwvYXprUXM1R3ZwVjJmcER0QlYwTnNza3p3Ymw2SUtuWlU5bTZFNWM1VG9P?=
 =?utf-8?B?M2wyaW5FbDdhUUpaUTdyUzBsbWQ1VlRWMW9OWXNtMmVTQmRPZm02MDBDNWJ0?=
 =?utf-8?B?U055SkhBV1lsek95cnYxUEo2L3ZaUFZPZDdKamxVdk9yZ1lWck1mK1ZmN3lu?=
 =?utf-8?B?VXJrM2VDMFRuRXZzRFJzK3FIeHg0Tklpd2tnZS9US25EQnVwdXd5ckZxQ2I5?=
 =?utf-8?B?b2RaamVGblJYd1VrbHFjLzY1TzkzdkZoZUVRTUZ4NDBxMzNzZGtCNmQ2WFo3?=
 =?utf-8?B?MGRjQW5mZ2tHcWhyV1NsK3JtWXY2YmFZTVdPN2pjWEhEMXJLSkZFTWZBZHc0?=
 =?utf-8?B?bzlCd3h4cG5iTlVqbStCbVQ1bUh2cjR0aVJxZGFJTHJ6UDVEYmlqSjdmbmt3?=
 =?utf-8?B?VWp4QWdCdnNoa20yeEdoYURNRktQV29scnQrVkNxRHl0bGYwYVJQZG1tTGpV?=
 =?utf-8?B?a29DOTR4YlV4THZjTmdHTFhrdzQzM2ViQkdhMTBhaUdiN1drUitiVFNTTEdu?=
 =?utf-8?B?YzBMQ2hqNU9ycFdTK25JMm15MU9kNzZiZkJOakRWSEVaYy9UNlR1MnEzRUV3?=
 =?utf-8?B?SFRVb3p3VGdZM1oyNEFKZmQrL0lCN3hCRjg5dXhaTjZ6enVJSnArTnNmeS9o?=
 =?utf-8?B?OUNKd0I1bWNyWDdGNzhKTlRXTmEvOEVQeHI1NHRQU1Q0V0hkWWttY3M0d1U3?=
 =?utf-8?B?a3M3TnpJOEdDc21rSU9MdENZUUVuTmtCQnhEQkxISHNsM1gvbnJIbm1UbmhH?=
 =?utf-8?B?cU93N0lweGxEa2ZZMGZDMnpRWWdkWHI2Vy92aDhiaHA0SHoyWWpNUXliallH?=
 =?utf-8?B?TTRNN0tPdUtpSnA4Nml2Zmx0dmcxVStNUVhvZ1Nxd0x6eEg5RC81bldFTjN6?=
 =?utf-8?B?RFp4SmRuTlJQWG9zL1diZUJHbDlGUnA1dHpJSTMvU3NWeXBRY0hub2NoeUR3?=
 =?utf-8?B?MG9VUTZVSXlJY3ZVa2NsU1F2UDVOSS9CS2NXQnRZVW9nb3BreXBJbUlZbmZ5?=
 =?utf-8?B?Y1pLdDdoa1pCRFdPeFdDZUNGUXp3SEJBNEVHZUJ4QWliMDBXOGg3TWNUWGVz?=
 =?utf-8?B?a1lna0NRVXR3Qml1MmdncEdZc0hBTitadC91aFpaaFBMcFBHV2hhdlUyMkZI?=
 =?utf-8?B?WGIwZTlodWtQaDJpcFptZnhvRThVTjA4MEJ5c2lHbVg3R01nTUFza0xhbWta?=
 =?utf-8?B?R3BQQVF0VDc4ZmlsSDRCLzNuMFJFVWVxSXMwclFFSEtkTWxyOUhvZTh2QWNZ?=
 =?utf-8?B?SmJkaXhITWhnY09NT1V2S3RTVXhKVW9XajhpdWlQUWN3U0FQeHVUZWU0bmkr?=
 =?utf-8?B?dUpMT0NzQnNLMHVxdXVhWndzQVRYR3FSNmlzUkZudHovY2UrOXFuNmEyR2VN?=
 =?utf-8?B?dXErSXBqQVcxcTNxNHN1blBWd3FRbkFDdmd4ZDdlSWlCdk1vUmtmdllhWFBp?=
 =?utf-8?B?bmZ6a1JSV0s1UXYwcWRZZ2pseEJVMGpxRlBra1lkdGtPbkY5MlIyaWUvaEZK?=
 =?utf-8?B?R0FlOEt6d1BBYlhGSXRTYzkrcUxicjJYM0ZJbzREQzV1dXVUdjBvMnBVclRu?=
 =?utf-8?B?MGRQVlpPZTlYSTlmMVpXU0tpRjRqM2FFRGxic0hGbERIMU1IU0l2RVFsWlkr?=
 =?utf-8?B?dkVmRzdJcE5ldldLdTQxL0RyMmdCaVFpQ2F3VmhWa1M0c0pTRjE5ekx3Q1Ir?=
 =?utf-8?B?YlFOU1NXK0QyRmZMWjBqd2FCRkN6UWdnTUw0UkFoRCtYS1RLeHp3Q0JNdlpm?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3654dc3-0f74-4744-ddf9-08daa7ab135a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2022 14:57:23.3420 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w2HXXup75xB2X7uGcpKGulQ6lgRdSn2ZAbwF561+TDTeBURUbSE8D0JpMNay6fr0xlb6B/ThHLYp8f+ZKPdM1LhDT0n0vlZL2CW3luC7+CU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6349
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665068265; x=1696604265;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pvIBxQbXScr1f3rOfvLzP+TJuhqi5NAwmmMVWw4QcKU=;
 b=Lfaon4vzyUEAoWA7TLsaaVVmvfN1e+9e1LUs4w9br5NjlMgx1AXRYRor
 vaDXh1Atz2GFDa/Re0XvKqAmOTpS4UHhGFNQqIjt18vL0gDyekxm/xMDs
 xfuUPYzXCWJGzreDq3yNAEFWKeKtVGZ9e8I7XGLh2/ICkf6tu17/0S8to
 qYGL22ayEArpNypMLBG9bjA6xaFOyvSVQJpQ5xDKvUAXJ/MhiSD5IH3vs
 HVj42V7Gcwz9gC3fEhHQO/Kn6mA05Abx3hOEHLYq13cRN0I9Hc3tShPIf
 SEsdE6pNNCS0T/jDNDM2IAjqXDs1gu00Q5/TuCeHkNk5VMm8dLwpJepsR
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lfaon4vz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [next-queue v2 2/4] i40e: Record number TXes
 cleaned during NAPI
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvNi8yMDIyIDg6MDMgQU0sIE1hY2llaiBGaWphbGtvd3NraSB3cm90ZToKPiBPbiBXZWQs
IE9jdCAwNSwgMjAyMiBhdCAwNjowMDoyNFBNIC0wNzAwLCBKb2UgRGFtYXRvIHdyb3RlOgo+PiBP
biBXZWQsIE9jdCAwNSwgMjAyMiBhdCAwNTozMTowNFBNIC0wNzAwLCBKb2UgRGFtYXRvIHdyb3Rl
Ogo+Pj4gT24gV2VkLCBPY3QgMDUsIDIwMjIgYXQgMDc6MTY6NTZQTSAtMDUwMCwgU2FtdWRyYWxh
LCBTcmlkaGFyIHdyb3RlOgo+Pj4+IE9uIDEwLzUvMjAyMiA0OjIxIFBNLCBKb2UgRGFtYXRvIHdy
b3RlOgo+Pj4+PiBVcGRhdGUgaTQwZV9jbGVhbl90eF9pcnEgdG8gdGFrZSBhbiBvdXQgcGFyYW1l
dGVyICh0eF9jbGVhbmVkKSB3aGljaCBzdG9yZXMKPj4+Pj4gdGhlIG51bWJlciBUWHMgY2xlYW5l
ZC4KPj4+Pj4KPj4+Pj4gTGlrZXdpc2UsIHVwZGF0ZSBpNDBlX2NsZWFuX3hkcF90eF9pcnEgYW5k
IGk0MGVfeG1pdF96YyB0byBkbyB0aGUgc2FtZS4KPj4+Pj4KPj4+Pj4gQ2FyZSBoYXMgYmVlbiB0
YWtlbiB0byBhdm9pZCBjaGFuZ2luZyB0aGUgY29udHJvbCBmbG93IG9mIGFueSBmdW5jdGlvbnMK
Pj4+Pj4gaW52b2x2ZWQuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEpvZSBEYW1hdG8gPGpk
YW1hdG9AZmFzdGx5LmNvbT4KPj4+Pj4gLS0tCj4+Pj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3R4cnguYyB8IDE2ICsrKysrKysrKysrLS0tLS0KPj4+Pj4gICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgIHwgMTUgKysrKysrKysrKyst
LS0tCj4+Pj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5oICB8
ICAzICsrLQo+Pj4+PiAgIDMgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMTAgZGVs
ZXRpb25zKC0pCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfdHhyeC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX3R4cnguYwo+Pj4+PiBpbmRleCBiOTdjOTVmLi5hMmNjOThlIDEwMDY0NAo+Pj4+PiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jCj4+Pj4+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMKPj4+Pj4gQEAgLTky
MywxMSArOTIzLDEzIEBAIHZvaWQgaTQwZV9kZXRlY3RfcmVjb3Zlcl9odW5nKHN0cnVjdCBpNDBl
X3ZzaSAqdnNpKQo+Pj4+PiAgICAqIEB2c2k6IHRoZSBWU0kgd2UgY2FyZSBhYm91dAo+Pj4+PiAg
ICAqIEB0eF9yaW5nOiBUeCByaW5nIHRvIGNsZWFuCj4+Pj4+ICAgICogQG5hcGlfYnVkZ2V0OiBV
c2VkIHRvIGRldGVybWluZSBpZiB3ZSBhcmUgaW4gbmV0cG9sbAo+Pj4+PiArICogQHR4X2NsZWFu
ZWQ6IE91dCBwYXJhbWV0ZXIgc2V0IHRvIHRoZSBudW1iZXIgb2YgVFhlcyBjbGVhbmVkCj4+Pj4+
ICAgICoKPj4+Pj4gICAgKiBSZXR1cm5zIHRydWUgaWYgdGhlcmUncyBhbnkgYnVkZ2V0IGxlZnQg
KGUuZy4gdGhlIGNsZWFuIGlzIGZpbmlzaGVkKQo+Pj4+PiAgICAqKi8KPj4+Pj4gICBzdGF0aWMg
Ym9vbCBpNDBlX2NsZWFuX3R4X2lycShzdHJ1Y3QgaTQwZV92c2kgKnZzaSwKPj4+Pj4gLQkJCSAg
ICAgIHN0cnVjdCBpNDBlX3JpbmcgKnR4X3JpbmcsIGludCBuYXBpX2J1ZGdldCkKPj4+Pj4gKwkJ
CSAgICAgIHN0cnVjdCBpNDBlX3JpbmcgKnR4X3JpbmcsIGludCBuYXBpX2J1ZGdldCwKPj4+Pj4g
KwkJCSAgICAgIHVuc2lnbmVkIGludCAqdHhfY2xlYW5lZCkKPj4+Pj4gICB7Cj4+Pj4+ICAgCWlu
dCBpID0gdHhfcmluZy0+bmV4dF90b19jbGVhbjsKPj4+Pj4gICAJc3RydWN0IGk0MGVfdHhfYnVm
ZmVyICp0eF9idWY7Cj4+Pj4+IEBAIC0xMDI2LDcgKzEwMjgsNyBAQCBzdGF0aWMgYm9vbCBpNDBl
X2NsZWFuX3R4X2lycShzdHJ1Y3QgaTQwZV92c2kgKnZzaSwKPj4+Pj4gICAJaTQwZV9hcm1fd2Io
dHhfcmluZywgdnNpLCBidWRnZXQpOwo+Pj4+PiAgIAlpZiAocmluZ19pc194ZHAodHhfcmluZykp
Cj4+Pj4+IC0JCXJldHVybiAhIWJ1ZGdldDsKPj4+Pj4gKwkJZ290byBvdXQ7Cj4+Pj4+ICAgCS8q
IG5vdGlmeSBuZXRkZXYgb2YgY29tcGxldGVkIGJ1ZmZlcnMgKi8KPj4+Pj4gICAJbmV0ZGV2X3R4
X2NvbXBsZXRlZF9xdWV1ZSh0eHJpbmdfdHhxKHR4X3JpbmcpLAo+Pj4+PiBAQCAtMTA0OCw2ICsx
MDUwLDggQEAgc3RhdGljIGJvb2wgaTQwZV9jbGVhbl90eF9pcnEoc3RydWN0IGk0MGVfdnNpICp2
c2ksCj4+Pj4+ICAgCQl9Cj4+Pj4+ICAgCX0KPj4+Pj4gK291dDoKPj4+Pj4gKwkqdHhfY2xlYW5l
ZCA9IHRvdGFsX3BhY2tldHM7Cj4+Pj4+ICAgCXJldHVybiAhIWJ1ZGdldDsKPj4+Pj4gICB9Cj4+
Pj4+IEBAIC0yNjg5LDEwICsyNjkzLDEyIEBAIGludCBpNDBlX25hcGlfcG9sbChzdHJ1Y3QgbmFw
aV9zdHJ1Y3QgKm5hcGksIGludCBidWRnZXQpCj4+Pj4+ICAgCQkJICAgICAgIGNvbnRhaW5lcl9v
ZihuYXBpLCBzdHJ1Y3QgaTQwZV9xX3ZlY3RvciwgbmFwaSk7Cj4+Pj4+ICAgCXN0cnVjdCBpNDBl
X3ZzaSAqdnNpID0gcV92ZWN0b3ItPnZzaTsKPj4+Pj4gICAJc3RydWN0IGk0MGVfcmluZyAqcmlu
ZzsKPj4+Pj4gKwlib29sIHR4X2NsZWFuX2NvbXBsZXRlID0gdHJ1ZTsKPj4+Pj4gICAJYm9vbCBj
bGVhbl9jb21wbGV0ZSA9IHRydWU7Cj4+Pj4+ICAgCWJvb2wgYXJtX3diID0gZmFsc2U7Cj4+Pj4+
ICAgCWludCBidWRnZXRfcGVyX3Jpbmc7Cj4+Pj4+ICAgCWludCB3b3JrX2RvbmUgPSAwOwo+Pj4+
PiArCXVuc2lnbmVkIGludCB0eF9jbGVhbmVkID0gMDsKPj4+Pj4gICAJaWYgKHRlc3RfYml0KF9f
STQwRV9WU0lfRE9XTiwgdnNpLT5zdGF0ZSkpIHsKPj4+Pj4gICAJCW5hcGlfY29tcGxldGUobmFw
aSk7Cj4+Pj4+IEBAIC0yNzA0LDExICsyNzEwLDExIEBAIGludCBpNDBlX25hcGlfcG9sbChzdHJ1
Y3QgbmFwaV9zdHJ1Y3QgKm5hcGksIGludCBidWRnZXQpCj4+Pj4+ICAgCSAqLwo+Pj4+PiAgIAlp
NDBlX2Zvcl9lYWNoX3JpbmcocmluZywgcV92ZWN0b3ItPnR4KSB7Cj4+Pj4+ICAgCQlib29sIHdk
ID0gcmluZy0+eHNrX3Bvb2wgPwo+Pj4+PiAtCQkJICBpNDBlX2NsZWFuX3hkcF90eF9pcnEodnNp
LCByaW5nKSA6Cj4+Pj4+IC0JCQkgIGk0MGVfY2xlYW5fdHhfaXJxKHZzaSwgcmluZywgYnVkZ2V0
KTsKPj4+Pj4gKwkJCSAgaTQwZV9jbGVhbl94ZHBfdHhfaXJxKHZzaSwgcmluZywgJnR4X2NsZWFu
ZWQpIDoKPj4+Pj4gKwkJCSAgaTQwZV9jbGVhbl90eF9pcnEodnNpLCByaW5nLCBidWRnZXQsICZ0
eF9jbGVhbmVkKTsKPj4+Pj4gICAJCWlmICghd2QpIHsKPj4+Pj4gLQkJCWNsZWFuX2NvbXBsZXRl
ID0gZmFsc2U7Cj4+Pj4+ICsJCQljbGVhbl9jb21wbGV0ZSA9IHR4X2NsZWFuX2NvbXBsZXRlID0g
ZmFsc2U7Cj4+Pj4+ICAgCQkJY29udGludWU7Cj4+Pj4+ICAgCQl9Cj4+Pj4+ICAgCQlhcm1fd2Ig
fD0gcmluZy0+YXJtX3diOwo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX3hzay5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX3hzay5jCj4+Pj4+IGluZGV4IDc5MGFhZWZmLi5mOThjZTdlNCAxMDA2NDQKPj4+Pj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCj4+Pj4+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwo+Pj4+PiBAQCAtNTMw
LDE4ICs1MzAsMjIgQEAgc3RhdGljIHZvaWQgaTQwZV9zZXRfcnNfYml0KHN0cnVjdCBpNDBlX3Jp
bmcgKnhkcF9yaW5nKQo+Pj4+PiAgICAqIGk0MGVfeG1pdF96YyAtIFBlcmZvcm1zIHplcm8tY29w
eSBUeCBBRl9YRFAKPj4+Pj4gICAgKiBAeGRwX3Jpbmc6IFhEUCBUeCByaW5nCj4+Pj4+ICAgICog
QGJ1ZGdldDogTkFQSSBidWRnZXQKPj4+Pj4gKyAqIEB0eF9jbGVhbmVkOiBPdXQgcGFyYW1ldGVy
IG9mIHRoZSBUWCBwYWNrZXRzIHByb2Nlc3NlZAo+Pj4+PiAgICAqCj4+Pj4+ICAgICogUmV0dXJu
cyB0cnVlIGlmIHRoZSB3b3JrIGlzIGZpbmlzaGVkLgo+Pj4+PiAgICAqKi8KPj4+Pj4gLXN0YXRp
YyBib29sIGk0MGVfeG1pdF96YyhzdHJ1Y3QgaTQwZV9yaW5nICp4ZHBfcmluZywgdW5zaWduZWQg
aW50IGJ1ZGdldCkKPj4+Pj4gK3N0YXRpYyBib29sIGk0MGVfeG1pdF96YyhzdHJ1Y3QgaTQwZV9y
aW5nICp4ZHBfcmluZywgdW5zaWduZWQgaW50IGJ1ZGdldCwKPj4+Pj4gKwkJCSB1bnNpZ25lZCBp
bnQgKnR4X2NsZWFuZWQpCj4+Pj4+ICAgewo+Pj4+PiAgIAlzdHJ1Y3QgeGRwX2Rlc2MgKmRlc2Nz
ID0geGRwX3JpbmctPnhza19wb29sLT50eF9kZXNjczsKPj4+Pj4gICAJdTMyIG5iX3BrdHMsIG5i
X3Byb2Nlc3NlZCA9IDA7Cj4+Pj4+ICAgCXVuc2lnbmVkIGludCB0b3RhbF9ieXRlcyA9IDA7Cj4+
Pj4+ICAgCW5iX3BrdHMgPSB4c2tfdHhfcGVla19yZWxlYXNlX2Rlc2NfYmF0Y2goeGRwX3Jpbmct
Pnhza19wb29sLCBidWRnZXQpOwo+Pj4+PiAtCWlmICghbmJfcGt0cykKPj4+Pj4gKwlpZiAoIW5i
X3BrdHMpIHsKPj4+Pj4gKwkJKnR4X2NsZWFuZWQgPSAwOwo+Pj4+PiAgIAkJcmV0dXJuIHRydWU7
Cj4+Pj4+ICsJfQo+Pj4+PiAgIAlpZiAoeGRwX3JpbmctPm5leHRfdG9fdXNlICsgbmJfcGt0cyA+
PSB4ZHBfcmluZy0+Y291bnQpIHsKPj4+Pj4gICAJCW5iX3Byb2Nlc3NlZCA9IHhkcF9yaW5nLT5j
b3VudCAtIHhkcF9yaW5nLT5uZXh0X3RvX3VzZTsKPj4+Pj4gQEAgLTU1OCw2ICs1NjIsNyBAQCBz
dGF0aWMgYm9vbCBpNDBlX3htaXRfemMoc3RydWN0IGk0MGVfcmluZyAqeGRwX3JpbmcsIHVuc2ln
bmVkIGludCBidWRnZXQpCj4+Pj4+ICAgCWk0MGVfdXBkYXRlX3R4X3N0YXRzKHhkcF9yaW5nLCBu
Yl9wa3RzLCB0b3RhbF9ieXRlcyk7Cj4+Pj4+ICsJKnR4X2NsZWFuZWQgPSBuYl9wa3RzOwo+Pj4+
IFdpdGggWERQLMKgSSBkb24ndCB0aGluayB3ZSBzaG91bGQgY291bnQgdGhlc2UgYXMgdHhfY2xl
YW5lZCBwYWNrZXRzLiBUaGVzZSBhcmUgdHJhbnNtaXR0ZWQKPj4+PiBwYWNrZXRzLsKgVGhlIHR4
X2NsZWFuZWQgd291bGQgYmUgdGhlIHhza19mcmFtZXMgY291bnRlciBpbiBpNDBlX2NsZWFuX3hk
cF90eF9pcnEKPj4+PiBNYXkgYmUgd2UgbmVlZCAyIGNvdW50ZXJzIGZvciB4ZHAuCj4+PiBJIHRo
aW5rIHRoZXJlJ3MgdHdvIGlzc3VlcyB5b3UgYXJlIGRlc2NyaWJpbmcsIHdoaWNoIGFyZSBzZXBh
cmF0ZSBpbiBteQo+Pj4gbWluZC4KPj4+Cj4+PiAgICAxLikgVGhlIG5hbWUgInR4X2NsZWFuZWQi
LCBhbmQKPj4+ICAgIDIuKSBXaGV0aGVyIG5iX3BrdHMgaXMgdGhlIHJpZ2h0IHRoaW5nIHRvIHdy
aXRlIGFzIHRoZSBvdXQgcGFyYW0uCj4+Pgo+Pj4gRm9yICMxOiBJJ20gT0sgdG8gY2hhbmdlIHRo
ZSBuYW1lIGlmIHRoYXQncyB0aGUgYmxvY2tlciBoZXJlOyBwbGVhc2UKPj4+IHN1Z2dlc3QgYSBz
dWl0YWJsZSBhbHRlcm5hdGl2ZSB0aGF0IHlvdSdsbCBhY2NlcHQuCj4+Pgo+Pj4gRm9yICMyOiBu
Yl9wa3RzIGlzLCBJTU8sIHRoZSByaWdodCB2YWx1ZSB0byBidWJibGUgdXAgdG8gdGhlIHRyYWNl
cG9pbnQgYmVjYXVzZQo+Pj4gbmJfcGt0cyBhZmZlY3RzIGNsZWFuX2NvbXBsZXRlIGluIGk0MGVf
bmFwaV9wb2xsIHdoaWNoIGluIHR1cm4gZGV0ZXJtaW5lcwo+Pj4gd2hldGhlciBvciBub3QgcG9s
bGluZyBtb2RlIGlzIGVudGVyZWQuCj4+Pgo+Pj4gVGhlIHB1cnBvc2Ugb2YgdGhlIHRyYWNlcG9p
bnQgaXMgdG8gZGV0ZXJtaW5lIHdoZW4vd2h5L2hvdyB5b3UgYXJlIGVudGVyaW5nCj4+PiBwb2xs
aW5nIG1vZGUsIHNvIGlmIG5iX3BrdHMgcGxheXMgYSByb2xlIGluIHRoYXQgY2FsY3VsYXRpb24s
IGl0J3MgdGhlCj4+PiByaWdodCBudW1iZXIgdG8gb3V0cHV0Lgo+PiBJIHN1cHBvc2UgdGhlIGFs
dGVybmF0aXZlIGlzIHRvIG9ubHkgZmlyZSB0aGUgdHJhY2Vwb2ludCB3aGVuICpub3QqIGluIFhE
UC4KPj4gVGhlbiB0aGUgY2hhbmdlcyB0byB0aGUgWERQIHN0dWZmIGNhbiBiZSBkcm9wcGVkIGFu
ZCBhIHNlcGFyYXRlIHNldCBvZgo+PiB0cmFjZXBvaW50cyBmb3IgWERQIGNhbiBiZSBjcmVhdGVk
IGluIHRoZSBmdXR1cmUuCj4gTGV0J3MgYmUgY2xlYXIgdGhhdCBpdCdzIHRoZSBBRl9YRFAgcXVp
cmsgdGhhdCB3ZSBoYXZlIGluIGhlcmUgdGhhdCBhY3R1YWwKPiB4bWl0IGhhcHBlbnMgd2l0aGlu
IE5BUEkgcG9sbGluZyByb3V0aW5lLgo+Cj4gU3JpZGhhciBpcyByaWdodCB3aXRoIGhhdmluZyB4
c2tfZnJhbWVzIGFzIHR4X2NsZWFuZWQgYnV0IHlvdSdyZSBhbHNvCj4gcmlnaHQgdGhhdCBuYl9w
a3RzIGFmZmVjdHMgbmFwaSBwb2xsaW5nLiBCdXQgdGhlbiBpZiB5b3UgbG9vayBhdCBSeCBzaWRl
Cj4gdGhlcmUgaXMgYW4gYW5hbG9nb3VzIGNhc2Ugd2l0aCBidWZmZXIgYWxsb2NhdGlvbiBhZmZl
Y3RpbmcgbmFwaSBwb2xsaW5nLgoKVG8gYmUgY29ycmVjdCzCoCBJIHdvdWxkIHN1Z2dlc3QgMiBv
dXQgcGFyYW1ldGVycyB0byBpNDBlX2NsZWFuX3hkcF90eF9pcnEoKQp0eF9jbGVhbmVkIGFuZCB4
ZHBfdHJhbnNtaXR0ZWQuwqAgdHhfY2xlYW5lZCBzaG91bGQgYmUgZmlsbGVkIGluCndpdGggeHNr
X2ZyYW1lcy4gQWRkIHhkcF90cmFuc21pdHRlZCBhcyBhbiBvdXQgcGFyYW1ldGVyIHRvIGk0MGVf
eG1pdF96YygpCmFuZCBmaWxsIGl0IHdpdGggbmJfcGt0cy4KCkkgYW0gbm90IGNvbXBsZXRlbHkg
Y2xlYXIgb24gdGhlIHJlYXNvbmluZyBiZWhpbmQgc2V0dGluZyBjbGVhbl9jb21wbGV0ZQpiYXNl
ZCBvbiBudW1iZXIgb2YgcGFja2V0cyB0cmFuc21pdHRlZCBpbiBjYXNlIG9mIFhEUC4KCgo+Cj4+
IFRoYXQgbWlnaHQgcmVkdWNlIHRoZSBjb21wbGV4aXR5IGEgYml0LCBhbmQgd2lsbCBwcm9iYWJs
eSBzdGlsbCBiZSBwcmV0dHkKPj4gdXNlZnVsIGZvciBwZW9wbGUgdHVuaW5nIHRoZWlyIG5vbi1Y
RFAgd29ya2xvYWRzLgoKVGhpcyBvcHRpb24gaXMgZmluZSB0b28uCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
