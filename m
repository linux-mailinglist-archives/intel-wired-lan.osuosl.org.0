Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C49B17AF492
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 21:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5420A61389;
	Tue, 26 Sep 2023 19:58:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5420A61389
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695758295;
	bh=4j3DmzgiERaigb0X1RdsX2FMTOY+kvHZ98LQuvJAHOY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tZgW+fKGFizqxDY5JNPqaSjq2yMaeI1AflsZExq/OQTJe2tlp8v0k5Twsq/BSjpf0
	 xmgUnne9ioh0cJ6YrfwT1IPsE5vmZAnSZlHglfsiTFgoqLHkEFrperKlMBblhC/veg
	 Gm8iGuo3z/Awz8hk/U1BoNmv5fEtpKOYHiC09YHndxbePedvlo68usPR4kqU+QBgGj
	 c53chBYJi689/sHgmkK5L1xKgsBl4/HY2802irq79JLkUk3kBcIiRyc4F64kjiLHQw
	 KXXMHrvYOLHicZrUiuWWa8VxxYHhPEkQp7RZWULIVSYXgyVlp8JHF7FiH2HBmMYPAx
	 3fpfqJ72g9SvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xW8jIL208Fgh; Tue, 26 Sep 2023 19:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DC0D612FE;
	Tue, 26 Sep 2023 19:58:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DC0D612FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C1481BF947
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 19:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 57CC341F6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 19:58:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57CC341F6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ai-3RoalK9QN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 19:58:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CBD5241F32
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 19:58:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBD5241F32
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="361036694"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="361036694"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 12:58:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="725553619"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="725553619"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 12:58:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 12:58:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 12:58:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 12:58:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GhlBDnKWcfulr5vcHK+fwFkBEb33BfEf4rqhtmbR+rwZDwxVinUGmXjBcXFLuxvOlfkuEwSMotMzEDcvYBFMcb4zAyKZHGShRrMFKMt2nY9uqprrygHKcinccf0Kh7ybtqJzKaC6bxKVB5w2VsVc4/Ztyhuc3hXtvss8O3p1vJwf8AGoBwA0wuZ5JWej/xw2M+L6oKxPUZ91umNQb8zxLgc0zEidtNWvXGNWXHC9YAm1JRMoJ/yLWqnlj9UclnVYIcqZbPr0eHClGl6zwAaJ3wDLBSFI1EVcIbiRmYFco4kR4l88tfHmpT2wt2gn/SRyE1DpyrimaXcSzhMNowSHgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4D7Y2/uq13FiLHLliX0PrYguSTjgVIJhK9zsTifMGr8=;
 b=Gx68zqGRK8vYBFZHRM6W0gTv40qqXJFnZAX/3M+osc0g2d/tJUcwt/JcYmHhn+D4fkSZ2paR1ucEWqR0HT8OYGyDvPpQuq6N8bOkiINkcNeW4L2XG0lAiSsfaL9lniVXA31nNoffff+IXG8Ud8TQEIpO5d2Hyqx+FMVKxn4++78glTMixacwPVwo1bHHqcoaUmVb7PHmBkfl/ZU0WuDxpN4FggZIJ1mEnJy+puMeAGso78q5xiD4iPh19lcGMyvrIqrFrfoTOIuUkDSlTW04W42Qt2x0TEX5qGAipjQrjp6K0buwiWv1s2NCM0S70cq3j5XSfDQ3r2N6YsOUe4VO4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by PH8PR11MB8259.namprd11.prod.outlook.com (2603:10b6:510:1c2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.38; Tue, 26 Sep
 2023 19:58:00 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6813.027; Tue, 26 Sep 2023
 19:58:00 +0000
Message-ID: <f17ed43b-7329-5566-a75e-befebd20d032@intel.com>
Date: Tue, 26 Sep 2023 21:57:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20230926182710.2517901-1-ivecera@redhat.com>
 <20230926182710.2517901-8-ivecera@redhat.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230926182710.2517901-8-ivecera@redhat.com>
X-ClientProxiedBy: FR3P281CA0108.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a3::11) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|PH8PR11MB8259:EE_
X-MS-Office365-Filtering-Correlation-Id: e0cfd19b-a24b-4f1f-5eab-08dbbecae2e0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Aq62RSjKwHBbXlJRqtUsUUE9MwCMoeOFJxz+Y+AmdcMiF+DxKJ7IE6v+s6zw6GpHRLbs9b2shjGg9nFFQGCDOS2lLqj8lJShMJGapOf8VYmedXAVAV4pj9oomn/ZW4N+jpLMYbrFDTuBcmK4plhD6SgmpK2muczSZqhWxVatBgzfLR4tsHmtVmKR8GpHTJnMG+7YHmYHZUxmhT06b9h6P3KhsLwp9O7JCFWv6Ncy3HL8pdf7DUVVpmzUNPaAcpZm7/u8d1MrLFjLeoO3TiwVwBQ8juJh2A3/YgU4OIPuMNuT1NdkGf78X/tjvEziqS0bh5GPIkZQA5hFuGgSf14pqwe/NC81GuaPWqSslA9I5tdx+FhU3wksYMh5zhcj95bz3PTz9CoQY1MG1VyICw9eO9pf3x+hFpVcBruEKfhFCXZKxtKjNEZ4Q+GHtwUd4do9MTzvFOfdoNsMOiOxe5efgvrEA1rvMb5mJ7snYY+KG6BjUWm8XbRT7ok3mRTLr5EtrUBfwqwK54cohifcAGKfREeG5TvTSwAf01AJZZrJHhYdgJjAHltZVQzpVo8SwYy5PjllUQuPkYx2lIdk1aHB/SZkq8mFP0FSbzr5FZDrEGlTJ/9tueMhKsSBFi7mcIiOj5L3oQeZ/2cCj6UC3Ch2EQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(366004)(39860400002)(346002)(376002)(230922051799003)(451199024)(186009)(1800799009)(8936002)(31686004)(38100700002)(6506007)(6486002)(53546011)(2616005)(36756003)(31696002)(82960400001)(86362001)(6666004)(2906002)(66946007)(4326008)(6512007)(83380400001)(26005)(478600001)(41300700001)(8676002)(5660300002)(7416002)(66556008)(66476007)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmE1RmpKaXJvUnFsU0tBamVyYTNjN1VQbXg2NTJlaTJDWDBlSFJ6OHJJdlZu?=
 =?utf-8?B?WUtkZG9YVDRyZ0tqaFBLOUZKQkJRbXcrZEIrektHa0p0azE0NVFjNmo3RFVF?=
 =?utf-8?B?WVhwUFAvTkRLZTJHWG40cnYwQ0FQekJaa29NcThJVEVrbkMyYno5VXZHNDQ2?=
 =?utf-8?B?cWIvM281eDd0TTNtZFA0eHhJdGN1WDhVS2RicFk5ZFNNbDg0QmYrd0VhdzQ4?=
 =?utf-8?B?NDdwTnh2bnVwaTd2eW9sdmxJUmhzc2hYczFvUG1mRVlWYlh1RU1YYVo0WTIw?=
 =?utf-8?B?c1VPeFdPRURURWJhYkprVUJhSE5uYTlFa1NCcVRGR2wrckhySzJtY0N0MTA3?=
 =?utf-8?B?V0pvTGk4akxiSm1ucmxwa2QrR21vMUZSQVVIekF0empUSEpkYTQ1OWsrbmVZ?=
 =?utf-8?B?bGlhbk1mQkVsSzQraG9qZWo2VFNSNU80bUV4bysxV2RBd0g1VTJXNXpTTitR?=
 =?utf-8?B?K0M5L2pRNUZYSWRqUG9FOThnQnBCMzFQd09Vc3F6Wlc5OWIwM0tPd3NmTFR0?=
 =?utf-8?B?TjA2ZVBxcEU0SzdDUnIvcVIrVGplWmlGTlU3TzIzY0FhNnYrN2NtOE9TL0FI?=
 =?utf-8?B?eWIxc0RrUXUwYmd5V0ttWHpTcDc3czBuYzBabmh4bGVYOFo2aDFhMU44dUFT?=
 =?utf-8?B?a2xRclNmL0xabzhYcXNwc0lPL0JDQjB5cjd4WjA4SXJJTFBXVWZTL2IwWXZ0?=
 =?utf-8?B?bWZzNXJkVzZpVjVMbnlacFZFMjhwUzd4V3cvYW1jTHpUTm02ZW1ZY1NNZDI5?=
 =?utf-8?B?MHVRUEJlVjhRcm9mb1B2THBCNXh0Q0kzbzlleVJmamMrRy96QmMzZE1GS3p0?=
 =?utf-8?B?YzlZMm5Pak1uWjRRVFM2ZmY3bU1WanRsTE5UaitiOEhScWtIS3JTWDFZWlRo?=
 =?utf-8?B?eUlXbXRuOGlwRWNxNERhcGYrNnlKTi9qaWdEcHVOWEZDdjdGQnZSdVNsRWlO?=
 =?utf-8?B?TUJEZGF3M2M5VWpJQ0VjSzBSamlUVTRlS1lId0Nwb3pQekU5dEpsb1poaGM3?=
 =?utf-8?B?S3NoUVZWUWdxeUlmU3IxcTdkQUpYeUUwb2s1bWs4SEFUcXN5SUl1YmtYUEJP?=
 =?utf-8?B?SGxxQzY5RGFOV2psa1ZaQm1Yc2JRU3FXNFV4Qyt2SG1JcEg0OVVkd3NVaHpX?=
 =?utf-8?B?Ui9HKzRxc0dsVFlMQXVINVVEenlqdllQVTJNazRhWVowc1hFcTFmek9Cb2VM?=
 =?utf-8?B?UU5VY1U0UmRSSXBuQ3NHZ1Jvd1YzNUV6bTdwRWlaRXpsQ0RSTC9ZbExSN09j?=
 =?utf-8?B?em5IVWVyanRXNi80cUllRzQxK0JpK21KcDhrRXI1TS90Yk5Rb3ozR0xCUXFx?=
 =?utf-8?B?eU1MaXlreVJJN2lUYTFRTGh3VFBjUDlnWXdzb3JpTXNJTzdId1NDZCtvVFdR?=
 =?utf-8?B?dEJFVnliUVJOTnhCTjdLdmJZSVhreTZYK2RTcEsxOUNlNGNFS3lvUEVKbDBX?=
 =?utf-8?B?RTJyY1Izb3N0RUU0L3R3em1MaGoxQlQ4RkdzMGluNTU4cXJvVmlvOStTTkRX?=
 =?utf-8?B?emhidzcwaHNnTXl0ZXdKd3Y2ZHZPUVFkdVpvbG53dFFLZ0JCN0ZlRklRRGdi?=
 =?utf-8?B?cEtycGZnVnBiY2lTUVlxR1p4UW9SeTZFNkZHYzJ2ckUxZnlUVkR4aEF6VFZy?=
 =?utf-8?B?N1I0Zi9IVXQvV05nSkhLb2MwRmtiaUFKdWVDNVpmWTcyTnd3MmRySU9xbDRs?=
 =?utf-8?B?ei9ITWFZZW9HM2x0Mi9NV2VwTEtyQmw0K3V6cFBWa1NFNnhRVGFnZ2prUnlO?=
 =?utf-8?B?aTg5ZHRxa1JDZE1tcjR5VVgwdjFPQ0xTOWFBSldtMm45b1YwNUpkUHNtR2Ev?=
 =?utf-8?B?a1ZvTUVoOWtiSTlEL1cxd0pWR0hKdmQxbFNIaXZzZ3dWSll5b3VxRFlKTFBp?=
 =?utf-8?B?dE5WWnNTK3NqWXVVZjZnaGpqQ0NuTFpOMWJVZitmbHZiQ21XMUdHbDNTV3Za?=
 =?utf-8?B?TXBPOWFVNWxxN3NrUWZXTEExb3dtcHRCNmlheE5GM1pCTlpjaFhORW15K2Fv?=
 =?utf-8?B?VWlLZ0txT1VMUmxDZnRrZERTQ1ZoaXBLN0VIeGQwMHZVRXkvRThDRG11azJC?=
 =?utf-8?B?eGUxeVRVZmdpeWlmVFF3Z2wzdnplbml3R21BTHN2c2NtNndmSUFrZlozaTRv?=
 =?utf-8?B?UFR4MzBLNVdVeVZibHNYSXNOcWNpVGVYbXY1Z0FZVXQySE9OYUJEZFBFL2dD?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0cfd19b-a24b-4f1f-5eab-08dbbecae2e0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 19:58:00.4019 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BH6NSJYPnGq6CkL3jBTLQR+OtL5EANnULqPy62QOKES/XZqcls7POVLpx+PIaIUVqrIk955XlZtgd9bR3mnhAoWTb8HQ7zJR3PG/9Csei58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8259
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695758286; x=1727294286;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qeHOPmX+eKuXOzZte/YkclpWKke2v6iyFctuQOjHwVM=;
 b=LN4ATepnQu4kOEh0LBVYFYRbp6TMzLP/Z1vUVvnkq0TN0Jw3tiykQbE8
 qTWg/ct1S/JWiAhIa5gZUmmDoNnT0TVOG6049NFRWjVu1G+uPRPK981vG
 PTqPEjL6NKcMy1QcfJWrH7uJusbM0G6aujn7M9pCa7eA01Z+dnXRT4Z9u
 FnMkZ1+Ucu2U0eXvWPn1jr15ujFN/YG6WjE7BJ7xKKd9fRsb/ux3rqunU
 RAcEiKyGAL/Sr+FEIwuTwtTGFoIHWlk35AOwoXiPWPiPQkR3cp/YP1L3E
 bvw71tEzN2gVhEWD+SUscDRhMZajBDKKD1/wp5TvJ+Q+4gEZsCl+oD5C3
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LN4ATepn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 7/9] i40e: Move memory
 allocation structures to i40e_alloc.h
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
Cc: edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/26/23 20:27, Ivan Vecera wrote:
> Structures i40e_dma_mem & i40e_virt_mem are defined i40e_osdep.h while
> memory allocation functions that use them are declared in i40e_alloc.h
> Move them to i40e_alloc.h and remove this header file dependency on
> i40e_osdep.h header.
> 
> Due to removal of this dependency we have to include i40e_osdep.h in files
> that requires it.
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_adminq.c |  1 +
>   drivers/net/ethernet/intel/i40e/i40e_adminq.h |  2 +-
>   drivers/net/ethernet/intel/i40e/i40e_alloc.h  | 21 ++++++++++++++++++-
>   drivers/net/ethernet/intel/i40e/i40e_common.c |  1 +
>   drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  1 +
>   drivers/net/ethernet/intel/i40e/i40e_diag.c   |  1 +
>   drivers/net/ethernet/intel/i40e/i40e_hmc.c    |  1 +
>   drivers/net/ethernet/intel/i40e/i40e_hmc.h    |  2 +-
>   .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  1 +
>   drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  1 +
>   drivers/net/ethernet/intel/i40e/i40e_osdep.h  | 19 -----------------
>   11 files changed, 29 insertions(+), 22 deletions(-)

I very much like this series, but extending i40e_osdep.h usage asks for 
comment ;) - please try to reorder patches to have less dependency on it 
first, and afterwards do split
(IOW first remove&reduce, then split what's left)

(disclaimer: I have not double checked if that's possible)

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
> index 088ef4696818..bf4de913435e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
> @@ -3,6 +3,7 @@
>   
>   #include <linux/delay.h>
>   #include "i40e_alloc.h"
> +#include "i40e_osdep.h"
>   #include "i40e_register.h"
>   #include "i40e_prototype.h"
>   
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> index 95c902700f63..2c0341469122 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
> @@ -6,7 +6,7 @@
>   
>   #include <linux/mutex.h>
>   #include "i40e_adminq_cmd.h"
> -#include "i40e_osdep.h"
> +#include "i40e_alloc.h"
>   
>   #define I40E_ADMINQ_DESC(R, i)   \
>   	(&(((struct i40e_aq_desc *)((R).desc_buf.va))[i]))
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_alloc.h b/drivers/net/ethernet/intel/i40e/i40e_alloc.h
> index 5d9a0b56133e..e0186495ef02 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_alloc.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_alloc.h
> @@ -4,7 +4,7 @@
>   #ifndef _I40E_ALLOC_H_
>   #define _I40E_ALLOC_H_
>   
> -#include "i40e_osdep.h"
> +#include <linux/types.h>
>   
>   struct i40e_hw;
>   
> @@ -21,6 +21,25 @@ enum i40e_memory_type {
>   	i40e_mem_reserved
>   };
>   
> +/* memory allocation tracking */
> +struct i40e_dma_mem {
> +	void *va;
> +	dma_addr_t pa;
> +	u32 size;
> +};
> +
> +struct i40e_virt_mem {
> +	void *va;
> +	u32 size;
> +};
> +
> +#define i40e_allocate_dma_mem(h, m, unused, s, a) \
> +			i40e_allocate_dma_mem_d(h, m, s, a)
> +#define i40e_free_dma_mem(h, m) i40e_free_dma_mem_d(h, m)
> +
> +#define i40e_allocate_virt_mem(h, m, s) i40e_allocate_virt_mem_d(h, m, s)
> +#define i40e_free_virt_mem(h, m) i40e_free_virt_mem_d(h, m)
> +
>   /* prototype for functions used for dynamic memory allocation */
>   int i40e_allocate_dma_mem(struct i40e_hw *hw,
>   			  struct i40e_dma_mem *mem,
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
> index 6d1042ca0317..8fb8f9e5c5d7 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
> @@ -7,6 +7,7 @@
>   #include <linux/pci.h>
>   #include "i40e_adminq_cmd.h"
>   #include "i40e_devids.h"
> +#include "i40e_osdep.h"
>   #include "i40e_prototype.h"
>   #include "i40e_register.h"
>   
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.c b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
> index 68602fc375f6..7d51e58d94bd 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_dcb.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.c
> @@ -3,6 +3,7 @@
>   
>   #include "i40e_alloc.h"
>   #include "i40e_dcb.h"
> +#include "i40e_osdep.h"
>   #include "i40e_prototype.h"
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_diag.c b/drivers/net/ethernet/intel/i40e/i40e_diag.c
> index b1ad7c4259b9..824f97931f57 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_diag.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_diag.c
> @@ -2,6 +2,7 @@
>   /* Copyright(c) 2013 - 2018 Intel Corporation. */
>   
>   #include "i40e_diag.h"
> +#include "i40e_osdep.h"
>   #include "i40e_prototype.h"
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
> index 0bc398757283..74b3a5b0bc4a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_hmc.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.c
> @@ -3,6 +3,7 @@
>   
>   #include "i40e_alloc.h"
>   #include "i40e_hmc.h"
> +#include "i40e_osdep.h"
>   #include "i40e_type.h"
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_hmc.h b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
> index 76610455cb90..78e6e9144331 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_hmc.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_hmc.h
> @@ -4,7 +4,7 @@
>   #ifndef _I40E_HMC_H_
>   #define _I40E_HMC_H_
>   
> -#include "i40e_osdep.h"
> +#include "i40e_alloc.h"
>   #include "i40e_register.h"
>   
>   #define I40E_HMC_MAX_BP_COUNT 512
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
> index 6f40c640e310..08f0c90acd9a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
> @@ -4,6 +4,7 @@
>   #include "i40e_alloc.h"
>   #include "i40e_type.h"
>   #include "i40e_lan_hmc.h"
> +#include "i40e_osdep.h"
>   
>   /* lan specific interface functions */
>   
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> index 77cdbfc19d47..2e8d2dd4b920 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
> @@ -3,6 +3,7 @@
>   
>   #include <linux/delay.h>
>   #include "i40e_alloc.h"
> +#include "i40e_osdep.h"
>   #include "i40e_prototype.h"
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_osdep.h b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
> index 23be11a45761..f4f02dd722ba 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_osdep.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_osdep.h
> @@ -28,25 +28,6 @@ do {										\
>   #define rd64(a, reg)		readq((a)->hw_addr + (reg))
>   #define i40e_flush(a)		readl((a)->hw_addr + I40E_GLGEN_STAT)
>   
> -/* memory allocation tracking */
> -struct i40e_dma_mem {
> -	void *va;
> -	dma_addr_t pa;
> -	u32 size;
> -};
> -
> -#define i40e_allocate_dma_mem(h, m, unused, s, a) \
> -			i40e_allocate_dma_mem_d(h, m, s, a)
> -#define i40e_free_dma_mem(h, m) i40e_free_dma_mem_d(h, m)
> -
> -struct i40e_virt_mem {
> -	void *va;
> -	u32 size;
> -};
> -
> -#define i40e_allocate_virt_mem(h, m, s) i40e_allocate_virt_mem_d(h, m, s)
> -#define i40e_free_virt_mem(h, m) i40e_free_virt_mem_d(h, m)
> -
>   #define i40e_debug(h, m, s, ...)				\
>   do {								\
>   	if (((m) & (h)->debug_mask))				\

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
