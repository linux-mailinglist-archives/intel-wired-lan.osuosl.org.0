Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7588F7EE2A7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 15:21:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07CDC419E9;
	Thu, 16 Nov 2023 14:21:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07CDC419E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700144514;
	bh=EyjoMFr/WsO1hRjcKmx0OfXXgG+7iTkpOcUbtZHQl/Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GjD+WVGNwdTQJafZPEd9emMnnlQQ+40MYi8wBUNHD2PItf9vtPSv6M1TCNy+ofDf5
	 AQh/usUQVu86rlxj7apwzSd9BIlpMa1rUxfMplxdT/3RX/KWLV+KOGmmlyY52exPN4
	 jgT6T46EMYDafzwniWQ+o5YHJJA6Y25jR3ifqNGWq85kapfXTBBfT2DsIyxCHc72vQ
	 2pN+9cWnMAH/rqgIfqDcREdhCeYIw1s2YVAc8M2Mcn/mN0azWU63qFuF8MAndp1qAQ
	 3H9nFLVQmBMXrmZU3wBfqA4klTKjHsWqkvydnDOytb51KHQnbMxYEta/1i+6Tuy8cU
	 kw3NacjyYJW3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5bVlvt1uk-Wp; Thu, 16 Nov 2023 14:21:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E02340C03;
	Thu, 16 Nov 2023 14:21:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E02340C03
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0FDBB1BF966
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 14:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7A7440C03
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 14:21:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7A7440C03
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e3UyNXLQUAaq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 14:21:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B44540C01
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 14:21:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B44540C01
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="4177938"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; 
   d="scan'208";a="4177938"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 06:21:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="888929352"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="888929352"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Nov 2023 06:21:43 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 06:21:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 06:21:42 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 06:21:42 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 06:21:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P3CTIHz2zDOnuZrldRCcvm9Te3AC30bIazpPM5WgloVkdnTms8gaLogzaB+V5iux8TPA3UMgO1SX82rOngO2r5xi/XUC14rwoJfpUn6ZppxHyngQtVZTQluRwmbAZ6fQdYlOSQ3v/1iBZpVTISrPhSsYRbM6LV7spXeT+K9EVrOc4UEnnsa28T75UxORCVj6QbWYBHiEdVV1DhxTJ7HgaTg13d9G16iBTNgSvHhsO56YwbAnNXoINTDiddSrbERUo/Z9zfzO11ANxEnWOz9G0lPPbwJUxAXe1cJj7H10orEegIYfUcPqxPD+bqXXNx2a9vqhppiOmrYcf9oiL3Lpsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N4EKsAkTGtTSCVZTr+MhJm4ol+llcQ/MeDN9KSXTt9I=;
 b=jFEDBwvzUqxq7HgCW4lsLiS/0PJGl1zI29640TuSi/slNXtCAFid9kBNgDvPD7i0iUZ3K6t2XJQZvN2k7rD0h8deAPcvTWaw9VTpMF2LkbaAXQ1+SIcXnwsNtHoKrDUdB8QkdhDSpt1z6H1JJQkNs8LQ1kQV2f4gEd4B2NvaIXFRmCtQDfCK8311339NGizbuAQFeDCyG1yisIH/7lU0lPt9npNkrd063Dn6tITrVoGB2GFY0Wgdh+HT2ruWKzc+ki1KrJIKKSJM3rr1evqAqGY8WHqpkxXKzSIZyujJFZPVD+J8lfJNwtQ5/3trl/J9a124eqCBOochLtcItAVnzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by PH7PR11MB6772.namprd11.prod.outlook.com (2603:10b6:510:1b6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 14:21:27 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::49fc:ba56:787e:1fb3]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::49fc:ba56:787e:1fb3%7]) with mapi id 15.20.7002.015; Thu, 16 Nov 2023
 14:21:27 +0000
Message-ID: <f307b4f1-4dff-4925-829f-20459d25bdcf@intel.com>
Date: Thu, 16 Nov 2023 15:21:24 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20231113125856.346047-1-ivecera@redhat.com>
 <20231113125856.346047-4-ivecera@redhat.com>
 <3c640be7-8f1e-4f9e-8556-3aac92644dec@intel.com>
 <36889885-71c7-46f7-8c21-e5791986ad5a@redhat.com>
 <72250942-17af-4f8d-b11f-ba902fbe2b58@intel.com>
 <483acf53-fe96-4ef3-933a-c5fd446042f6@redhat.com>
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <483acf53-fe96-4ef3-933a-c5fd446042f6@redhat.com>
X-ClientProxiedBy: WA1P291CA0008.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::19) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|PH7PR11MB6772:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cd68347-b8f6-4b77-45fd-08dbe6af522f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AUUfrOGIKbU8bzwEfqG0MUL1VZ9oZeb7vUo+FAFJRhP7BK2CNGq38Th0RtcJcoTOXHc3/bOLrmNev3JAm9hhZIdUFGqEIHEQDgS/GK7LIN/IrjNsd12DIiU0raLBs91fGAFSiD4jYmutDrR/+oespKItzOzfHSNtyiJR3IL5wQkuhorlTiZpqhq1hf884GG4ZpuNbu3vCd4rO7BcDLDCbbT1rUQ5Krw/cbw18JiA+TQ7mFiqBQckQnd9EhSpwv2re663Od+wIZA2q6k48e3nuRThgliMBP6iKuuXw0zzlhTkDuMchxKU2PqKvOxOx1IHS9mn6/iUnr8nRJmsXX8y0WDYThugsafGMejVZGA4YrQqGRmgAhvHcMvzhs2IcqnDAcdwks/Gsfg+zrrALRjHLmQE7FapsGOAVMcZrsBSqZlZlF1AxtKUKXnzJLyBz+NX3RFQr3T8FSB/4D2kXHnO3vFqpy6OdftvRSIEwR/26hZP0ioC6HXp1IYqSrSSjdQGGWGhlVM5JmN39Bb03JVwBn9GW77eXWxitLMz0Guv5XOxHJzu9kZY4roxCxchwcjQ1TrZT3hDPUmqe7ishxHr8gi9OqmhNUPi4TbTHJ2AsPun4Sgonu0SqXWrtb/QYouZt8slC6sQRJ9X2v0bfzXs1Wq0iWlj7qK6bcqLHi04Xyw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(39860400002)(366004)(136003)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(83380400001)(478600001)(6486002)(2616005)(6666004)(82960400001)(26005)(38100700002)(31696002)(44832011)(66946007)(66556008)(66476007)(54906003)(316002)(4326008)(8676002)(8936002)(36756003)(41300700001)(2906002)(5660300002)(86362001)(31686004)(53546011)(7416002)(6506007)(6512007)(37363002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STVlQzdSNUJSeXBLR3MvcTdzSVpYSGNqakN4d1NlU0lsSFJwaDdFaWpsVGNl?=
 =?utf-8?B?elRMR1R6MEY3SE56UkE5dCtDa0VDUFNCY3NDS09Wa1ErR01XSVl3anRrUjla?=
 =?utf-8?B?VnhCaFpvRFZpYkxUTm4xQlVWaHJKdEtHV2FjV1A5QW0xMmZ2UmNZbjB0akpT?=
 =?utf-8?B?TGdOVzRPQVltQTJGSGNpWDdQTTZFT0pmTk5nVDBzcjlxbGg5SDhHSS9JWUI1?=
 =?utf-8?B?MFZVQkdmbnpOc3V6Ykh0eUcveG45b0oxOGFKWlNnQmg3dHJFMUFQRVlQajAz?=
 =?utf-8?B?eDZhMmhxQUxsY1VWT25RY1VHdTJXbFRPM1ZXaTU5WVlPRVA5YU5JWEY0S1p1?=
 =?utf-8?B?R2xSSUNqUzdVdTlkNmdocCsxYWRSUTJUYjIzc1U3L0JmSFNPK0plOXRUUWVh?=
 =?utf-8?B?MmcwSWxha3locmMzT1ZxdlhDZk5XZi9rU0ZtM2FPNkVjSzNZQnAyb29KUWxJ?=
 =?utf-8?B?R3J5RG5nVDh0MCtENmJ4ZDVUbnBIMzlmWWgrM1Y2a3B0eDZRM2ltRml0VXlq?=
 =?utf-8?B?QnNHaVR1RE5abGFrbVpIek1BWFozNjRORGY2NzRaVlljeU1RdmFmVVNLYldm?=
 =?utf-8?B?N2Rpa2tRdnd2V1BZTEt3dVhQTmZpSittN0NJNXl0bmc5dXNJSGpyQnZ4T3VJ?=
 =?utf-8?B?SGJKM08wQUtQTUhjS3R6dFJWSitrVnNxNFBFZGcyQnIzeHQzdzhoTlJsRzdM?=
 =?utf-8?B?bXFwRDRZdmxpK2c3QjVOcCtHZUhvTktCdGRaODhrYVNUWEN1d094eGEwK2sv?=
 =?utf-8?B?WXBhYTBTZ3MzNTBWbDJHUStoQ1UxY29kai9JaWtWcC8xTTJYTDdtWWNMMW9N?=
 =?utf-8?B?ZTZYOFpCaFdMOXN0T1c1bVdwUUJBUS9kQ1NJOVdmeXdzd29wSFB3bk1Oazgz?=
 =?utf-8?B?Q3N1Rlk1SStzaEtiRjJaRFVLOWJqUXJvS2JZQnRoMnkrajE5Z1JFcUh0MlZV?=
 =?utf-8?B?UGhvUW0vbWhlZW5HU3ZZNW8zYmRGLzFKZXNvWUxNYlFJbVFnRFVEb01UcHZG?=
 =?utf-8?B?dVZTNnc0VVFndGpxRWd5bkp1S1I0RWN6NHBpdzBpNmd6T2cvM0k2NnhRWUZq?=
 =?utf-8?B?OUJPZ1R6aXM5bzRjeVY4MTNCOUpmNG03KzREdXRJOGFTNDZjbzNHbHJkT2pW?=
 =?utf-8?B?UGdDbW1zUUFmdWJOa1NzeXY0R3MwZEhnQmN5bXNrSjlYTUFYT3EvRUdOQ25j?=
 =?utf-8?B?STIveTFzR1dzSUFiWnk5OGJBSkc1WllLcDZtclpwZXZqL2JsTE9DS3dPTENh?=
 =?utf-8?B?Ykx0aEpJVW13QW5jcWM2ZVlPdWNvb1dhNXBRTmtiTStBaGdBakk0U1lxU2JB?=
 =?utf-8?B?NE1tRXRIOU5aaHdrckdxaEhJY0JvS0Y1dHBpV1JVMHdxejZyVTFXMzArRGIy?=
 =?utf-8?B?SmdOZGFxTzdjV0l1NjE0UjJDRUU2cXp3VTltQXgwWnlUakxjaEFpZ1JlU3JB?=
 =?utf-8?B?bzBSZmpIOVhvYjFsaE1OZ1UvZVI4MktCdE16RkxiSzBNeGIzS0dJejFIRDFM?=
 =?utf-8?B?MjJVYXZWV0cvWWQrNktBYi9rRldFMTZER1lQZDFVSk5WNDEwNFh5QzBseURv?=
 =?utf-8?B?VjIzdWZtZ1RlcUpYeG5HUzUwQjd2NFBWWWZCRHRGR01aQ25sL0ZPZXN3Y0tP?=
 =?utf-8?B?bWZpOWxBZ09RYzVUMU9rcURjUU8ybFhGYkdqU2dvb0ZvdmNKczk4Qlk0UndT?=
 =?utf-8?B?b1JoS250eWNBa2Q2QzZoL2NyQkhPbTRqVjB0Rld2YlFyNUtOMjVGUSs2OCsz?=
 =?utf-8?B?aGRIT2tmTmtwYTgxWlJjZ0RDa21zWk5OQXBVY3R3RDQ3N2NoYU92N3UxamRW?=
 =?utf-8?B?WElacFNubmRkT0dLOUh3enhvcEFjUDY0MlRGOVJMT0ZJSmVzVXk0RWxCN21a?=
 =?utf-8?B?aVNiOFJ1R3VVWWtYTXlXWVUwQXZUeHZJcDNvQ3kwOHV5MFovOFlkVmY1Snc1?=
 =?utf-8?B?TThpUVFiU1dpbGdrbHEwTEwwRWtPSThxK3Mwc1dXcjY4MHRJcEVqMWNHWnlX?=
 =?utf-8?B?QUxNM1FQN0pDa3ZpUTZUR2ZmVnhkbUVGM0ZjOTJqaHpzWlZTcmo3L0ROUkY2?=
 =?utf-8?B?blV5TUVYUjZGM0FVOEVnTGl1K1ZnanZmc2kwS3Z6V1NHOUdmdG9hVnMwVGhK?=
 =?utf-8?B?a2RrM1JVc0NDVjRmbHJsWEs4d2hwQmJlTnE0ekRhT1N0NHgyT3Z5M3puUTE3?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cd68347-b8f6-4b77-45fd-08dbe6af522f
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2023 14:21:27.6743 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8S96/42WwalFzHrEZJyxgfZk4cHxbGYS/HHCnfYp/tE/VIKlhnssdiLafIlKW9I/rT8sq3FDgjJiJPpwztH+M57FSdJpZxknmMz7VJM4lfA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6772
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700144505; x=1731680505;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sUO3Xxn1Xkrns4jPQSiMtj3EQd7PI9vIn2WIDpU5b6E=;
 b=nr5Yr/ROm80xON6SI/qj7R3HrkDdPhkZv5QCuv1R7hrSYofmWsGCfvGy
 oc9DiHNMMSVkp9483AuIAmm+QLStTTpWl0qJx4/zy5jJtPEJpZi9VVlpK
 +zuedELm1TCV6eQbkYFQMoyOs9Qwn84LKQLL2snU/Y4WQfokL+gtwiznL
 W/6cIQtcppzywM3gljtItTlaPh1zEpuLVwhVy2FwH8iVmoEWkXdOl+HNd
 ZkTrh5kvgh+Qo6HgDEl6MgjlsyjK4WS4/9296Hq0OtX9seAEXo2FbiHQA
 y88x+nvncGnccxOROdU/o/7Q92E0NzIRXOHf6LS+MnoPgFD2094AhTcA6
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nr5Yr/RO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/5] i40e: Add helpers to
 find VSI and VEB by SEID and use them
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxNi4xMS4yMDIzIDE0OjU5LCBJdmFuIFZlY2VyYSB3cm90ZToKPiAKPiBPbiAxNi4gMTEu
IDIzIDEzOjM3LCBXb2pjaWVjaCBEcmV3ZWsgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDE1LjExLjIwMjMg
MTg6MDEsIEl2YW4gVmVjZXJhIHdyb3RlOgo+Pj4KPj4+IE9uIDEzLiAxMS4gMjMgMTQ6MjcsIFdv
amNpZWNoIERyZXdlayB3cm90ZToKPj4+Pgo+Pj4+IE9uIDEzLjExLjIwMjMgMTM6NTgsIEl2YW4g
VmVjZXJhIHdyb3RlOgo+Pj4+PiBBZGQgdHdvIGhlbHBlcnMgaTQwZV8odmVifHZzaSlfZ2V0X2J5
X3NlaWQoKSB0byBmaW5kIGNvcnJlc3BvbmRpbmcKPj4+Pj4gVkVCIG9yIFZTSSBieSB0aGVpciBT
RUlEIHZhbHVlIGFuZCB1c2UgdGhlc2UgaGVscGVycyB0byByZXBsYWNlCj4+Pj4+IGV4aXN0aW5n
IG9wZW4tY29kZWQgbG9vcHMuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEl2YW4gVmVjZXJh
PGl2ZWNlcmFAcmVkaGF0LmNvbT4KPj4+Pj4gLS0tCj4+Pj4gT25seSBvbmUgbml0Cj4+Pj4gUmV2
aWV3ZWQtYnk6IFdvamNpZWNoIERyZXdlazx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPgo+Pj4+
Cj4+Pj4+IMKgwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmjCoMKgwqDC
oMKgwqDCoCB8IDM0ICsrKysrKysrKwo+Pj4+PiDCoMKgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX2RlYnVnZnMuY8KgwqDCoCB8IDM4ICsrLS0tLS0tLS0KPj4+Pj4gwqDCoCBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jwqDCoCB8IDc2ICsrKysrKy0t
LS0tLS0tLS0tLS0KPj4+Pj4gwqDCoCAzIGZpbGVzIGNoYW5nZWQsIDY0IGluc2VydGlvbnMoKyks
IDg0IGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBl
L2k0MGUuaAo+Pj4+PiBpbmRleCAxZTkyNjZkZTI3MGIuLjIyMGI1Y2UzMTUxOSAxMDA2NDQKPj4+
Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgKPj4+Pj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgKPj4+Pj4gQEAgLTEzNjAs
NCArMTM2MCwzOCBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBpNDBlX3BmICppNDBlX2h3X3RvX3Bm
KHN0cnVjdCBpNDBlX2h3ICpodykKPj4+Pj4gwqDCoCDCoCBzdHJ1Y3QgZGV2aWNlICppNDBlX2h3
X3RvX2RldihzdHJ1Y3QgaTQwZV9odyAqaHcpOwo+Pj4+PiDCoMKgICsvKioKPj4+Pj4gKyAqIGk0
MGVfdnNpX2dldF9ieV9zZWlkIC0gZmluZCBWU0kgYnkgU0VJRAo+Pj4+PiArICogQHBmOiBwb2lu
dGVyIHRvIGEgUEYKPj4+Pj4gKyAqKi8KPj4+Pj4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IGk0MGVf
dnNpICoKPj4+Pj4gK2k0MGVfdnNpX2dldF9ieV9zZWlkKHN0cnVjdCBpNDBlX3BmICpwZiwgdTE2
IHNlaWQpCj4+Pj4+ICt7Cj4+Pj4+ICvCoMKgwqAgc3RydWN0IGk0MGVfdnNpICp2c2k7Cj4+Pj4+
ICvCoMKgwqAgaW50IGk7Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoCBpNDBlX3BmX2Zvcl9lYWNoX3Zz
aShwZiwgaSwgdnNpKQo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHZzaS0+c2VpZCA9PSBzZWlk
KQo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gdnNpOwo+Pj4+PiArCj4+Pj4+
ICvCoMKgwqAgcmV0dXJuIE5VTEw7Cj4+Pj4+ICt9Cj4+Pj4+ICsKPj4+Pj4gKy8qKgo+Pj4+PiAr
ICogaTQwZV92ZWJfZ2V0X2J5X3NlaWQgLSBmaW5kIFZFQiBieSBTRUlECj4+Pj4+ICsgKiBAcGY6
IHBvaW50ZXIgdG8gYSBQRgo+Pj4+PiArICoqLwo+Pj4+PiArc3RhdGljIGlubGluZSBzdHJ1Y3Qg
aTQwZV92ZWIgKgo+Pj4+PiAraTQwZV92ZWJfZ2V0X2J5X3NlaWQoc3RydWN0IGk0MGVfcGYgKnBm
LCB1MTYgc2VpZCkKPj4+Pj4gK3sKPj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgaTQwZV92ZWIgKnZlYjsK
Pj4+Pj4gK8KgwqDCoCBpbnQgaTsKPj4+Pj4gKwo+Pj4+PiArwqDCoMKgIGk0MGVfcGZfZm9yX2Vh
Y2hfdmViKHBmLCBpLCB2ZWIpCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAodmViLT5zZWlkID09
IHNlaWQpCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiB2ZWI7Cj4+Pj4+ICsK
Pj4+Pj4gK8KgwqDCoCByZXR1cm4gTlVMTDsKPj4+Pj4gK30KPj4+PiBJIHdvdWxkIHByZWZlciBp
NDBlX2dldF97dmVifHZzaX1fYnlfc2VpZCBidXQgaXQncyBteSBvcGluaW9uLgo+Pj4KPj4+IEkn
ZCByYXRoZXIgdXNlIGk0MGVfcGZfIHByZWZpeC4uLgo+Pj4KPj4+IFdoYXQgYWJvdXQgaTQwZV9w
Zl9nZXRfdnNpX2J5X3NlaWQoKSBhbmQgaTQwZV9wZl9nZXRfdmViX2J5X3NlaWQoKSA/Cj4+Cj4+
IFNvdW5kcyBnb29kLCBteSBwb2ludCB3YXMgdGhhdCBJIHByZWZlciB0byBoYXZlICJnZXQiIGJl
Zm9yZSAie3ZlYnx2c2l9Igo+IAo+IE9LLCBnb3QgaXQuLi4gV2lsbCByZXBvc3QgdjIgd2l0aCB0
aGlzIGNoYW5nZSArICJ0b28gbWFueSBhbHNvLi4uIiBpc3N1ZSA7LSkKClRoYW5rcwoKPiAKPiBC
dHcuIHdoYXQgYWJvdXQgdGhlIGxhc3QgcGF0Y2g/CgpSZXZpZXdlZCA6KQoKPiAKPiBJdmFuCj4g
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
