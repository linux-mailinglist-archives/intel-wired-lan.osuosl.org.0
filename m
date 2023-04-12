Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFDA6E0112
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 23:39:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9AF0441E2C;
	Wed, 12 Apr 2023 21:39:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AF0441E2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681335548;
	bh=g+JVgwNtb2nGYt7JLq75v7NBvEbpCLSDyEXU5v0hb3c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c2ZQ5Hx5gRwf6nfUHK5ccI01jE413seHQqJCeb8zn4hSsFXFuFRjTVxdxQtV2Y4+a
	 9d+VCSqRCIZxery7vsS0QcbNo1gDU0evfWGNJsJbyeiQPLYrrvbnlFC76TO9HcDhXl
	 1/Yal8TrWPcSfNDeB8LFIHEUfJD8tK3HHfpRHeye1sUUsjMwZ42rXVqYmdwYYj4ZsG
	 oJKVlyDPsR2JT4VnLdvcm05/wGXjbweCcMrAY57bqJ8OUTtBkQb7KPdhuh0fsfhfJy
	 yS/wTt/cY07A0b4uUaoD+Gi6PDZ4Lj8pAWMYTU4yEzK2sTh6SJLLl1ex8t3hoFVYcT
	 ZiD9+UfFNArzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hxn_OZo9Q6e2; Wed, 12 Apr 2023 21:39:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A82540C39;
	Wed, 12 Apr 2023 21:39:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A82540C39
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7FCB81BF410
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 21:39:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5ADCC83BF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 21:39:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5ADCC83BF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qizLYr-VI9fZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 21:39:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A7D483BCD
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A7D483BCD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 21:39:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="371878447"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="371878447"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 14:39:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="800500929"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="800500929"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 12 Apr 2023 14:39:01 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 14:39:01 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 14:39:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 14:39:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 14:39:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CWHglhU9gMZkRpT7EFK0fkp5QV+8sZsVHuiV7GqQU7R+pw1ebXLkM4R95V6mIlE08/SbcWj6l4b1gFnZeyfEEIlq5ofzQ/R2Xhl6op8/bTxDP2a5v+P9oeNZQ/TCMHt3faH8eYzjWhnjB+PywRXoLVmoryh0qKX2OyU4UmS39EHrCitfltxRE270M4bHu8kHyCawvc39VYjoZEZaOZBbWZr/CpE9h0XqUicsflptdxNjshZFlRcz66hc4D25r++QuXnDAR+TsW+cImgSLI1Ez96rMB+PkYn5TVZmIZcDTmXUO6IBdiQgXdlL6dxLncxJudcI9dsTEpR/WTG0GVpCdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TWMix7jYIb4d8UquMbcnI1OWReWv8KPpNyYbXRYmwWo=;
 b=ksSehawCx3yC0+ZfubpDmOM0aWxsHytXGHsGZAUHB7IgxfbD0Nc8aYmw+iiI0pBd18CxnFef7wsQq8/oulZHpSoaWM6NDv6i8chDonrzZB9Q5uXuOLSO6DPRlfs8UcvW9vRgoGr/ffwx796HTNsfU5vOzvEiOSfspCM9moQajvfm+/iJyNrIVBx5cimg5btzrk84URhcotU+K2m+Jor9w0uFm6kxSVH/AoJbHR4OJD6+hUduT0AaE7W9xbJ+ZSQRtuQMZZvfp1+I+HfRiietbYMT0Rl8ATISg8wbBN/tJXjp96SMPjBmKuTyTvZD/ZxPLMWOSC9DNOGrEnw/ak9iTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by PH8PR11MB6997.namprd11.prod.outlook.com (2603:10b6:510:223::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.34; Wed, 12 Apr
 2023 21:38:59 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::8733:7fd2:45d1:e0d6]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::8733:7fd2:45d1:e0d6%6]) with mapi id 15.20.6277.038; Wed, 12 Apr 2023
 21:38:59 +0000
Message-ID: <5cb4df2b-e20b-06f8-c2f6-5db52805d672@intel.com>
Date: Wed, 12 Apr 2023 14:38:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Simon Horman <simon.horman@corigine.com>, Pavan Kumar Linga
 <pavan.kumar.linga@intel.com>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-2-pavan.kumar.linga@intel.com>
 <ZDUfhqA41BZOP9PW@corigine.com>
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <ZDUfhqA41BZOP9PW@corigine.com>
X-ClientProxiedBy: BYAPR06CA0040.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::17) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|PH8PR11MB6997:EE_
X-MS-Office365-Filtering-Correlation-Id: 76a7a1fe-e930-4d70-a386-08db3b9e52ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UIjV4wYjIjK6Zyftz4m7TOzhS7XQ3LvFbL+PhiwPU9r96Kuq7ewgJMdQOgDyMphUR+IHHhZbZQbMtNhwllHQU/jjgU0elo4O+p7K+tMtnTxnWqrj8jFM3oqZoLk+pID+NIffX0lXJ239r7PTjdh8f17TAVLEgRMd4Up2AqDusHcn+sva44GObSnml2ddXXteV6fvwMpUe/QebTB8ndZm4u58jg8oxF49xvuHhyT5IdfErPn5zObC/Gx26tgzBr2cC2UM0SqDbMLXm6p07ykCw4xXV/TB7zlnknyRu9U1i5L0nPMFJaF95NGYOQAOZrWYpApPNd2wKu5KQSw0PPC2VUfvuWuyog+HyvXP1bcwbKELIWjWLT3GBUovoJB4FATY5k6hPd4q3UXII0JktSkFgVhvetovVaC1aW2Ld7pbWBrdck9OyAUwNqeHeNWwZ3w3m5Y77lwqJc4SOxHylCE9BKPyP+ZLFLEFKdzLNSPjxP/NCWLBbtPfYJGjxqij9v8dgEINP5mxPCRfdh2ruySIbxOQ5f/Vs/9qApuPa/N7gBVbgHMwe/S6DF9W/+jtpRmuJ/OkEE0uPG4+SK3TJNlOqZBlG2/e5snQ7k4jMwZ3KX28R5eMUe4X//cyKxaIweLojIVp+NYHiREZYfC0qJqeFA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(39860400002)(136003)(346002)(451199021)(5660300002)(6666004)(316002)(54906003)(110136005)(31686004)(6636002)(83380400001)(8936002)(26005)(6506007)(8676002)(6512007)(38100700002)(41300700001)(53546011)(6486002)(2906002)(66946007)(82960400001)(66476007)(4326008)(478600001)(66556008)(31696002)(86362001)(2616005)(107886003)(186003)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkkzUS9oUnFoVHhmb1NnSzJuWFk5YmFnTlZId1Bvcmtya0FCbEQ3SW9VTTRl?=
 =?utf-8?B?T0pDc0VUOHVVRkpxTmJtbGVJQmNNMDA0czdRTGdtU0dPcUZpaXR2TjFNclVB?=
 =?utf-8?B?N0ZXUnFLeEFpOVRNV2t1SG9vN1FkZEtGcTU0eFNvMnR0Q29nR2UvQWtPMitr?=
 =?utf-8?B?dHFMTTRCSmJNcTRuSzhtZnNtWFlLVkNJbCtTeU5lcjBOOUtKRUM4MnJ4YnNh?=
 =?utf-8?B?K2lXdmtIZ2Y3RUZ2N2Y3N3FsY0c2cVZQUVVodE9oK2pEWktCSVZ6Q0ovTlRI?=
 =?utf-8?B?Ym1DcFpBZTVLeHp3dy9CeXovajZkdW1DQSs3VG9VODI4QkluNUwzcDNrQVgr?=
 =?utf-8?B?TStNVGJuMEtZQ0Qwa05WbW1GVTFqQVRuREZrV3N3L1dQdmpGbjVyTUhwZlJv?=
 =?utf-8?B?SitCREZTK0dsUkxQMEFDL3VDSkM3ei9rS2ZjL2xyOHQ3ZlVQZmFmbFpFZDho?=
 =?utf-8?B?Z1pUUENBdzhBUXpQdnMvVDZjdkFpbTVMYWIyQktxUzNvU2NIT1RvN3BXMVkv?=
 =?utf-8?B?STVtaURzeC9TZ0l1bncrZ1oyK1I4Z3hDUHBXcEgrUkZBYzQwOVMrb00zQ0hK?=
 =?utf-8?B?R0pXTzcyUlppTVhpckZpN0t4NzROYkh1eGJBRjc0VzEwNksxY0pLdnRHS1ZD?=
 =?utf-8?B?cmRGb2tBMHp4bC9UN0RxZEZybFRFVnVWbDdQWFc4Z1JNOVJwTHplU1E3Zlgv?=
 =?utf-8?B?ZnRxN0s5TG93Y1VzOTh2cUFzNFpWV1Azd3FNMERhR2ZWTFF6ZFUvcm03dGVD?=
 =?utf-8?B?bkJlYzNpUk9TTXI2UlR5U3lWYU13ZDZicDd0NzJodGhsZEl4QkdzSkwxZEJR?=
 =?utf-8?B?WXp1ZWh3a3gyUEtBSG84eThuYkxKT1hTYUtUQlZVVDFQY1hqWVpTUTBMM1My?=
 =?utf-8?B?VEFxUmF5ZTFVR21NM1AyRUxLYWJXTFROY0pRUzJ0U29ZNnRoWFQra3hYK0hB?=
 =?utf-8?B?dFI0amF6cGdWK1J5RVZJSVlpd3JuSjlvMTRZSEIway9qdWFHV0ZkM3dBOFlR?=
 =?utf-8?B?aWxYUTBsdzMwelhwTFRaelhHVE9rZ3ZGU2E0V2tmK1pVWkZ0RXdVMzNjdnQ2?=
 =?utf-8?B?VjhSa0R4UzdUQzdGMVNmaGpHSy8vZUhhcElmeCttSWsyNEpEYUZ6TW1jMWlC?=
 =?utf-8?B?UmJRWmF4cG1ETHpWWFpWbDJzK1NPUjVWMjRURFpFK0Z5SDJ4dkU3WVY1U3dX?=
 =?utf-8?B?U1lrekJBeERRRlZrUC9BRGh0dU1CRFhUU1pJb2piQUJFc0JkUHB1d256aDNX?=
 =?utf-8?B?ejdNVXE2WnAydGlmOEVSQlFXcVlsM0JNcnpuMkNKSnJrbUtYZnFPQks2REo5?=
 =?utf-8?B?ckNDYmNLVEtadGh1S3diYVhoWTRzV3gvL2NPa1lTSHFFQ1BkQmtnUVJ6alQ4?=
 =?utf-8?B?MHQwWHJpeFl1NzVydWtydHk0Sjd3Mk8zTHFUbUk5WjZHOVJpMzlFN0RjK05V?=
 =?utf-8?B?MEZXbThqU2RzZXk4Ny91MVBvNkQ3Vm5USUVLVG1yanI2bUtXTHp0ZWpNckNV?=
 =?utf-8?B?UW1GeTZTM3UvK25NTHhLNTZVbWU4Q0IwTVl0Yy92bXlwMHZmSGI1YmVRdzdj?=
 =?utf-8?B?aG5HSlcvaytFSVVCNnIyaDJKOU54NEFBelFLVGVNcVNNWHNGMmllNFp3TURr?=
 =?utf-8?B?NXlmdUJwMmN2YzZlQUNTME9BUnpDWG9rV3BPU1JKOG1QMURWZlNJaUJuQUVZ?=
 =?utf-8?B?U21SV2VkSnZzMmZZbTNaRFBqa1FqNHBJOGVTZVBnckFHajZFUXZ5bHVCYmpL?=
 =?utf-8?B?b2w2R0pIelhpUXdXMWdpbWQxamc3bXVpQTBTUDlIMUhzcE5XODk1WDhJQXk5?=
 =?utf-8?B?NG0rT0RmMENnUk13bEQ3VnBlaTB4Ym02bkFiRWtBOHowNk9lVDBnKy9VbTNO?=
 =?utf-8?B?ZnJVckU5bE5KOXdENkwvb2FNeGt6YVl3MndSVTRBdmkrcjNBc2ZlRW84ajFG?=
 =?utf-8?B?cHhKa3BBelBmYlZlNDlqZzByU1FVa3VjS3VUMDZDcit3SWxrajRkT09NK1ZD?=
 =?utf-8?B?OHV4dUVpVWpWMk9neXdxWlVxNzg3WEY5L3dXQlFNTGZMc2xqL1hGdnJiSDVn?=
 =?utf-8?B?WlRuUm1oc2F3bFRnSnJaUXhvWlVoUmNpWkF6VHpSd3BBbDVmV2JmS2Z6dzVK?=
 =?utf-8?B?K0R4OVhiOEo3TUt4NjVNY09EV0FGVjV0TFBlM2xWWlBNRUJlcE9paktaUlg0?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76a7a1fe-e930-4d70-a386-08db3b9e52ff
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 21:38:58.8523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 493kclTLmylsMBOSLIjoFRclPP3Z5VU8/ydOBdTDuEWXzOOpflIFQGc6Ztd/786JutB4jis+brpIqyKqgQZGw+yyhwze1AoUfjYUpQd0xhg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6997
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681335542; x=1712871542;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BPAmPtAdKlbuAavb1dVk+uRqr6iGyqvTt5ET7SdkrWA=;
 b=gLtfWfjlOEg5pmfslK0aoZUiRuGXKPruB0lcYPzDrxIg+c2QAwU1kTYz
 Lk1euGaRSjV4dfgCFWlkc8h+yWP0+OAMt1tZe3S/Kt6IIMRGTwppX1cFX
 l3eYFvmlpIJf2YYCDCWJfMSQ2TUZh38rL2hIqfS6uPCm8HVctF2ePZLMd
 8CIdroxA6U19U9J2vEivEEjz6VMSps0MihpB1zGbuSG29yp9YjX+XYLfo
 3nSpAXVY6noiuCz8Z9xAEr+xji49Lxd02aEIm3Z/FjSsbVgJ/+2Zw306b
 9kXL6hGyQlfNg3ZVMGUodxJFeC7CK96F+GUa07fKZmVEycTjsE0VrrUzU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gLtfWfjl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 01/15] virtchnl: add
 virtchnl version 2 ops
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
Cc: willemb@google.com, pabeni@redhat.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/11/2023 1:51 AM, Simon Horman wrote:
> On Mon, Apr 10, 2023 at 06:13:40PM -0700, Pavan Kumar Linga wrote:
>> Virtchnl version 1 is an interface used by the current generation of
>> foundational NICs to negotiate the capabilities and configure the
>> HW resources such as queues, vectors, RSS LUT, etc between the PF
>> and VF drivers. It is not extensible to enable new features supported
>> in the next generation of NICs/IPUs and to negotiate descriptor types,
>> packet types and register offsets.
>>
>> To overcome the limitations of the existing interface, introduce
>> the virtchnl version 2 and add the necessary opcodes, structures,
>> definitions, and descriptor formats. The driver also learns the
>> data queue and other register offsets to use instead of hardcoding
>> them. The advantage of this approach is that it gives the flexibility
>> to modify the register offsets if needed, restrict the use of
>> certain descriptor types and negotiate the supported packet types.
>>
>> Co-developed-by: Alan Brady <alan.brady@intel.com>
>> Signed-off-by: Alan Brady <alan.brady@intel.com>
>> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
>> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
>> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
>> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
>> Co-developed-by: Phani Burra <phani.r.burra@intel.com>
>> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
>> Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Reviewed-by: Willem de Bruijn <willemb@google.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/virtchnl2.h   | 1201 +++++++++++++++++
>>   .../ethernet/intel/idpf/virtchnl2_lan_desc.h  |  666 +++++++++
>>   2 files changed, 1867 insertions(+)
>>   create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2.h
>>   create mode 100644 drivers/net/ethernet/intel/idpf/virtchnl2_lan_desc.h
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> 
> ...
> 
>> +/**
>> + * This macro is used to generate compilation errors if a structure
>> + * is not exactly the correct length.
>> + */
> 
> Hi Pavan,
> 
> ./scripts/kernel-doc -none drivers/net/ethernet/intel/idpf/virtchnl2.h
> reports that the comment above starts with '/**' but is not a kernel-doc
> comment. Which seems to be correct. It also flags many other similar issues.
> 
> Please consider running kernel-doc and resolving the issues it flags.

Will address in v3. Thanks for the tip!

Emil
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
