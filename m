Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B8367D4C1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 19:55:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 832CE60E42;
	Thu, 26 Jan 2023 18:55:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 832CE60E42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674759334;
	bh=6mn33gWq7SzNTqdrlxWOKi+fREmq1nUv/SkC2OuiWCQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qHRdNkOLtQalP1QToSi/DsBSJmFATVFuYxRwpbXIVDgtcBeMOB0IUvoC6S3mN6SRo
	 PeytMsJEPydhxVNgyFYBlT2/7w5aLjgZsNxZJJP95cYvNCDM9sADCRxn6GTdlyeVtD
	 gtyMeUYGIUnHdBVNo/BjG4Ns94JUHCQaY1pwijbqvB+Q4em0bPdP0Qv7i9+tf98W0z
	 WIJELVLjybLN3a4DAJ+LesA5WVKgylALBmeplMdk4bS+pTCqDpDmG0pK55fZoe+L9O
	 L2LQ5bK2eTmeHgi2nSmc0hcPpci3ltneU4AqjyxwgU+BX+gekt6upQi/nSGoy0GySx
	 GoE9WYhtVDLKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8S9X2SuczPa; Thu, 26 Jan 2023 18:55:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97C7260E0F;
	Thu, 26 Jan 2023 18:55:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97C7260E0F
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B42BA1BF487
 for <intel-wired-lan@osuosl.org>; Thu, 26 Jan 2023 18:55:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8956440A81
 for <intel-wired-lan@osuosl.org>; Thu, 26 Jan 2023 18:55:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8956440A81
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1HgcOzb_-m4a for <intel-wired-lan@osuosl.org>;
 Thu, 26 Jan 2023 18:55:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9B2340140
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D9B2340140
 for <intel-wired-lan@osuosl.org>; Thu, 26 Jan 2023 18:55:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="310511515"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="310511515"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 10:55:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="695228026"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="695228026"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 26 Jan 2023 10:55:27 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 10:55:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 10:55:26 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 10:55:26 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 10:55:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KJRaacNBws5gdHs1oGiMId1k5Y+haKtPJK9FwMrJRi0G+lBBh4eX776OII7BOl0CY9C8BBBkZXYgdtZYIOhoisWEl5CrXakpvlIQ+BGWHh1wKJg0PHtfdPb6kgk4tHyZGcNdENjf2jSsmPqqlXkQkPq4eij3ncdG+ccARMaJvgGGKvojSKOdmaxMxAfF+Z26h4B+Q3ftOK6w3VEFIrXtXBEbD6qA+Te8sx9ce0CnA5JeWTn+4g7fbxUEi9E70fqZq5yUTeTx/ONL6+IXfoKtt0n+Sb2Dp6lSkpU9fr7vsYYwf0687I9ozGzdhUqp1JLRooAcJSByCP6WdK8xqD1Nlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k5o9XPsTVeWsc3WhHnjXVyPpTId7mRd2+qNV9soHAzQ=;
 b=TBV3fdtlpSJa67mpQA8+y39+YFjuwan3YcenDWspCNS3QF2G1f3NS+Hoe8WMHwxfMlEbcZ8TEjQhTEGuzhhpNWVAA+V6NjsJg79+NRVHrJaf5MyRU6KNXlXQSxMw6edZBvXR8gROS0VvVwt0ObYxxuFgNDAd6pVXN4R6NObFEUtQoMyQpYfgNzF5kr2TEwdYHj8pbXwt72DoyDXZl6tEKblrV6bK7JCRyWLvTWzD4G3mKISBf9bPRoiDB+LLYWuYoaU7z0M2ZXMVJGEmqYeq6V9eYIRqWMAeUgWPeFH3sZYBnMtbRIcrHfGIOZedk5QfaA7fFks3UhoObQGKdxz0mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CO1PR11MB5058.namprd11.prod.outlook.com (2603:10b6:303:99::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Thu, 26 Jan
 2023 18:55:22 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 18:55:22 +0000
Message-ID: <fdfbeefd-eb4e-3e1f-727a-a20171d04927@intel.com>
Date: Thu, 26 Jan 2023 10:55:20 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230119211608.2105338-1-anthony.l.nguyen@intel.com>
 <Y9Kl+OFJRbDWYxoy@boxer> <310135ff-2322-9349-afb4-f85c4b683002@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <310135ff-2322-9349-afb4-f85c4b683002@intel.com>
X-ClientProxiedBy: MW4PR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:303:8f::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CO1PR11MB5058:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c8f8c29-f88d-4248-1d7d-08daffcee079
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vqvQhkZvc0KWiDm/e+vm5l8v5xqk//dtTx27MDV4ChmTPRGadZiZiK2+Gnx1CpVWo147KYxMTWu+wdInYoQS1mrVEvIwyIwM+vH+GtXxzJaKNDrNVD1MJYyy5CG3lJYrjSB0aHkab0qzBAtuJG++yH4wRWG0a6ywB2FTkkaIyz1yTxVto9AusdXAHx+HJaY0YwT5fXgXQn8FHVXcdgSoe+9aihWJJj9WUJuvHwUTHSUuMiavFM9h3VBKdfW02C3ZuwetL1FuqZMTXfMGThCvNy3sP3gB0+29/tS0oE5f9jHEao/4PkNKC1diorTYs9KziXKDqs4Dz33paFsToVv8P3ce46cQtE1gG/ppNchEGmUNKh6re+z4sfg05GeU98QcNW4XRo7z/C4Dcols3ElhauaUNseWWW4efGAtMIAQp/7CKyjbenr6fWbhEIEDHyyDTusoSLXPSbasfMXfYOpa5vISiq9d2AyWI0pclPT5S6895Aa5xMx+JUKZR43BtvNwipzyDNoDXlXyVBD0X8cK2+eG5nSpVQH3gS2msA2uWJrFCfsQJ2DF2MyvrHsn9GOjcDmlbt4tx9Qn3ol+JOf7eFXjIUdqsLdCVgch8ixpinKFPrVGivg6UAA+3LiKuBj3CKz3vl6+lkFZGp3IhRbhZ9gxpPEg70/bA1l83G6ocwOxDleOVNAUQ3ICY8E5Wbqx8/wCKIX/c/98rBQ7wZm+LlZ73iP3+amRf/E6VayK6Dc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(366004)(346002)(376002)(396003)(39860400002)(451199018)(2906002)(2616005)(31696002)(4744005)(6512007)(86362001)(186003)(41300700001)(38100700002)(8936002)(316002)(36756003)(5660300002)(31686004)(6486002)(478600001)(6506007)(26005)(66946007)(6916009)(8676002)(66476007)(66556008)(53546011)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlN1WkFiVWRkSWozQ2pjU0dHU3VJSVYxSzJZekt4YTdKcm5nK2puV0QzSFpQ?=
 =?utf-8?B?Y3R3Z1JiMGdINHNiQWI2TUZLMTdyUVV2aUFYYjVyR2R1OVZ0MVNPOTZxcmV2?=
 =?utf-8?B?bkV2ZlNtZ1dFZjBKbUVHbGpjWUY5eGJxTDFWVmREQmZkaVZuNytrMG9FdnJ6?=
 =?utf-8?B?aG5EQ25SblE0bEMrVXdEcUpZZVl4elVVdDFvc2FzeFdFL3psUkRnZitkUktQ?=
 =?utf-8?B?VVYyYnMyTzZIM21pK0d2c1grQVRnT080Q3Z0eUphN0twV2p1Q2hvWENYMGRM?=
 =?utf-8?B?MlFyd2NVNC9lMXZvYlBFY01ldU1tQTQxdXduVFU2VUdvSmxCd1Z4Sm1IZW12?=
 =?utf-8?B?YVFZdkVWbXkyOEQ0NHp2dm8zSE1ET29MVHhhbkhLaitWYVk3RWx2SGJFcWNV?=
 =?utf-8?B?YzJJaXRaT2I4UXcxTXRLYm4zMCtybjdZVGtMV0xrbzVjVHZjYzE2QUJ3TXNh?=
 =?utf-8?B?ZEt2amY1TFNUSGcxaS83NFNGNTFObC9UZmdnSkREdVZXWjF1bUthODRsZkxI?=
 =?utf-8?B?Yk5TZGl4cGR6d1IvZWxXbkNLS0dIaE1Pdm16Ti9ZZ2xrT1puNlFMTS9nYll1?=
 =?utf-8?B?aUI5alBubTFoeFN3TVRPQXBUOThVVlduYk9QZU5Ua1Vmbkg3TitEZzNqNm9D?=
 =?utf-8?B?Z21CSU9yQld0eE10WStES284N3NNenM2NUFEcExVTHVzR2o3aWF5aTZWbjds?=
 =?utf-8?B?Y3dyVDREVHNSOUJ3YXBOUTV5Q0F3eTlVdDFnbm1heEQzcG4rZzBqcWZzMERY?=
 =?utf-8?B?bkV2dWxKcm5xcWV0bXlZNEpzRldhRk9FZlcxY2NvZDIwdHpBd0kzMmRQUUJo?=
 =?utf-8?B?bHpubWppMCtUeisxTklLa3daSjEzMHg4ZTd3UzBCeWFoUmxQS0ZuTkZlMm1n?=
 =?utf-8?B?UTgzRjZSZkZUOTdEdGdKS2FPZDBzQWZjb0pBa3NOU3FMQnBpQUtxRm5xN2s4?=
 =?utf-8?B?K2VFakpFVmZPV1N1WFg5OE1hbloySEpNeFR3cFBPcDZTSjJ2dUswK2FWMlVa?=
 =?utf-8?B?SkxsR1IwV3RUMU4vR3VGOVpvYlBuK0pyeTdKZnZJTFVUOEF4YlNlZDdHU2lZ?=
 =?utf-8?B?WHE5NDVUVVppbUhGL1djK1RQOVlBQVl3SGJvdmhJVk16bW1mR3ZNbXhaQmlW?=
 =?utf-8?B?NlVFeDluNzYraTZQa0R0UUp6L25WTENvb2R6RTc5WEdSU0I1UzQ2bmpDZWp6?=
 =?utf-8?B?RGY4c2Z5anNqTTc5cU9OcjNMYjZoZ1Z5aGt1N05LQlFMclV5M0NJM3Y1Y0ZJ?=
 =?utf-8?B?b2R1NHZIeEVTVEh2bkp1T0g3L1lBN0VaOXJlVndSdytsRGpvWWcxSGpoTm85?=
 =?utf-8?B?ZzNWUUtXK1o4c2VTb0hrVWlOdkF1ZCt6TGJia0M5dDJLTTZ0Z3ZvTlZCTDdh?=
 =?utf-8?B?ZWt5OE0yUjVqZUYyYWN6b2poUUpGbGFXSWVaRnQwRDlSbllrUTFEZjRVdFdx?=
 =?utf-8?B?WE0wbXVkZXRWay9pSHdSTUZubWpwd3duc0xlOUxHR3IvN25TZTlIclhtZFdW?=
 =?utf-8?B?VW1iRVk4QlFRc2NCSVRZNEJLTFQyUVZRSGMwZEJRazZHbDJtUks5bGRSS1Bm?=
 =?utf-8?B?ck11NGtEdGY1MkhhY2xIb2VieExPUFpibkVrWCtoc3BNQlA3ZFlGUGxpSkQ1?=
 =?utf-8?B?dEVHRGtvV3ZHQmxNQW5FRDRkNHU5QU1qM1ZoMTkrZWZHR0NPWXZxNUZSVTNL?=
 =?utf-8?B?c0t4bm9SQ0FSYlg5T25HYWgreXNWRjlBV2Vwd3ZHZzFsYzZMc3NSU2JTU2Fk?=
 =?utf-8?B?Unl3bHlkOTY2MEtoQytnclBTdGViMGhhMUVRQTFkd0pjUGl5RUZZQjNnT0Qy?=
 =?utf-8?B?TWhFNE9XRFE1NmdjY2VXeGVxaWo2cXRMY0dHTi9oRGpYRlRyV1FzdWs5NXg5?=
 =?utf-8?B?SmtURmVGYVRpUTNtdnhBdVZsU1dJelZYVnhBNmJOMU5kdVZ6Qjdvd1BBd254?=
 =?utf-8?B?M1BHaWdEWGlDQ1ZscGZzanhNK3ZiTjdGQllGc1V3WENNdlI5TE1Ka05FZDZn?=
 =?utf-8?B?VzBRTStUNEN4TmFLMnlMQzltSjlzSWJUeURPbndpOUZhMkhnSXpCeGNKZEdH?=
 =?utf-8?B?K0lUQk5yblNzeEUxM0toNDMrYy83VC9kS2hoWHplSmdBM2NWeUJFUnNTVUpE?=
 =?utf-8?B?QW03SzdaNlZHOXpaaXFPNHBEZy9RZjBUSmtiZ3dZc2o2YlBGWktqSnFPTW1T?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c8f8c29-f88d-4248-1d7d-08daffcee079
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 18:55:22.2132 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uswi2MQrYTlNyR5/Nn/SEQkM3QSO9pxlWUu1B4+OeRA6AM9JTRZ5IQ6A8ysSjvgrJR6ad5EPROJVDvJa+RTkqvriRpNDNMYBDoCTujT7y/I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5058
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674759327; x=1706295327;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RwRlUqMmM+xOb67OuBqzPexYQbTxmVrNX3j+JKWkjbI=;
 b=NVgCbyeXDPQ7fr58qcvLbTzbQUJOXrnXk1HG8l0oG0EojFEmG4LUveiT
 SBHD9iuUftehwD2vliu6SHMHCmlYPdX7rdnAMwBPT/hSUWif57r/JfodZ
 Ih8anQs202LxTfJ/TwQ5yA1tYyXI2rln9y8JKBQNvWzub/DcrocI1YAaR
 vOGrm4Vp4iqvPaROPiJyrIrTD1r5hl3NaaTe65Hu/xYJG2Iu5cTLTmkR2
 OrkAptUAe7QJ/u/cMS4auvYR4Meq/mgIqKqju0xFsEPq54trWnn221ljj
 tAfhhTuppZ8/6ZeZMRUVpDqOeli+rU3A+R5dkH7qFnU4zQT5pEmaZfeAa
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NVgCbyeX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-queue v4 1/1] ice: Do not use
 WQ_MEM_RECLAIM flag for workqueue
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/26/2023 10:16 AM, Anirudh Venkataramanan wrote:
> I don't know. This was probably a mistake to begin with, but it was 
> exposed only when the RDMA driver was also in use.
> 
> Ani

I replied on the other thread, but the short answer is that
create_singlethread_workqueue used to set it, and i40e migrated from
that to alloc_workqueue, and kept the same flags. The ice driver then
copied alloc_workqueue from the i40e implementation. Interestingly, the
out-of-tree i40e driver available on sourceforge has removed
WQ_MEM_RECLAIM but the in-kernel driver hasn't yet...

I suspect create_workqueue had it set originally because it was a
catch-all API at the time.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
