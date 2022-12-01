Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 481A563E69A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 01:39:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 724114174E;
	Thu,  1 Dec 2022 00:39:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 724114174E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669855178;
	bh=Lu/TCcmuic4wShXGB8urPM7FkBfGyx0dU5Z1GpAXpiE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8/nQTEF7o2wxfrzwlW2NLe8Cn5mfCqfvrvk3osnlSr66UC7Es3Z5bTSFIDakuXdo+
	 k2AFME0F/AXWtik5VmeU0fNrr7VA5dgzCuY07MnhreZ4xXBQ7V/HdlWiogb7tw7Uir
	 fOXaN8SmFceNdKMelrPPUNgqqgTeSTh32JNf8MKgXjXyuIde6gxhDD174tsTrBxFGi
	 Ju3W1vAmdTPd/eOSwvMqjAJV7a7t/7y97ONbDn/0qH9+LlgjeGbGuzmODyNdIe3MXx
	 K+zW1jcpZey+eQwT1k9AIzWSSczGIlN2zsG+tzU7vVVxm3+M+w/9709sGINrngj1kr
	 /kMdOysQ8Qmvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DVJ6qJfEi8KT; Thu,  1 Dec 2022 00:39:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC5A5408FB;
	Thu,  1 Dec 2022 00:39:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC5A5408FB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37DEA1BF968
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1145360ACD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:39:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1145360ACD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w1N5XuKdA_U1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 00:39:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3751A6058D
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3751A6058D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 00:39:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="342475490"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="342475490"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:39:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="818836259"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="818836259"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 30 Nov 2022 16:39:29 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 16:39:28 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 16:39:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 16:39:28 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 16:39:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HxdxF8v74B3QLzsaErz+ui3Oykmklk9ql1rpwOviiVJIe46UwAbxC5WZjElU8eiATZQwGAMEAfGPePoLTxGnw/gnU4ujg5E/OVpUlGyWfAlmx85iHElxskWwCtuJg3Tgpj+JQUWrWbH0qKtk558ybsKNvBM5fw7Ouu1U5S6q/xuR6u1qzQdfIsJ7YD3WZnOfF+Qg7mTIUo1P0p5Lcev3PoiiqU6jU3RaC1hMH+iCfd9D85qehPvPlMsfCJsJCYsdpr/kWdoVWCZ+IAYHHRBWsfj5HmgafbuSQbzplz/vLKwxSkr/g5u4r18teRDUC53Ai3v/CpAoHkIX6ChL5Qjr5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7agXZKe/+awVXL8gtkuRlVRym7ZrmtT+Osry5Bb697E=;
 b=HWnvbxCvY64xR9wOTmtME5DxNLx52gM1Iq/G3jjkKy5+CF/2a111IWyGoJ0S59Fd7Tu7bWzXeMRcI5Cq80dRTW/KETb7RaU5gWbIujCam1gBVbbOjC0tGDJTJwj5+4dQzuOOkRNY6j/Q6hw24ubgoK8W5gk7BlcCGsPdgAMkR2J0F8K7aVuPCe5L/KP/NNDAeAg+8WHTfnN08VtgW8u7VQLt1eNmuCeFkOhP8E1avVtSNdIacsuZz49wSw1FQ3Um6KsfP5xcNoA7YTckS8u2bITxmUYPos86mznFjWsE9mjcurKWsJYN4OJX7yWmUFWu4SzLn5g+vnNogV3ZbnG+Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BL1PR11MB5222.namprd11.prod.outlook.com (2603:10b6:208:313::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 00:39:25 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 00:39:25 +0000
Message-ID: <6714c391-1d52-dfdd-1a89-311912494796@intel.com>
Date: Wed, 30 Nov 2022 16:39:23 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: BY5PR03CA0024.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::34) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BL1PR11MB5222:EE_
X-MS-Office365-Filtering-Correlation-Id: fb365624-8a81-4714-e7ca-08dad3347f58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rpTcxK6Ou4lIQ6FmBt5iB424urrECijEozXf032HaQz+/+73zDaAHcmLCMg4CvNMILc/Qv2Wd0fmNaBdf0HspkhUdx59k+BOr2JZ0MxMJPN9XOsUm5GNy1bBe/HVhsD6mdWux5rxAxYiV5wuYKpwpjbPDokjEnzI0FzBf95c7PugD1T0fO0s6FF5Q0NImenCSPJ/Rrfcf4kLQ2WuE1kPkIVTZUbo3tJ366SzFGGQBeeZqae3+WTg6Ja8+p1t9+NmUPjLuLvybhB4ojSUuP0nhhGdrmnrOtrg6uVg6TwtVhcT87qW3MviemmfdO/+Oo3xgZce1RM7klUCAmINomG7zExJPsG9E88/7SHpn+VNmtsSOkMaQAdoPhPrmUtWsC5BAsPX++59E6NiirUqVnq9h0x5pLUSs/pP+QgTDPEI4//v6Rljt+ILeQTnh4nvf63B1gkXy5YnMgNgbBT9jrIP9+pgVoYaD5HZSOUM2nvcUgkCs62rDDh83EUjeAnA7/v/4lyo0K1RRiM79XDTGU0g131da1/+xZReR/R6W14otA3yiuU5ighkGnyH+DgBTR5xdLewxdn5UH77mvlWUXKF6AgAMk3Fi1CoCJcBVT4HsIAhgNzm2iy+f/yFqDkdAUyNLM6r1WA2yQ5lZEMoKVSIz2cINBszRyJdg5PSvlIWCq84xwmQeyZcG9/wRx0bwNnC6nDby8EpBqxOjBAOcvhDWI+0xBn+ngeeKHC+YbvRNw0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(396003)(346002)(39860400002)(376002)(451199015)(86362001)(31696002)(36756003)(6512007)(6506007)(6486002)(478600001)(66556008)(8676002)(8936002)(53546011)(186003)(5660300002)(2906002)(66476007)(316002)(66946007)(41300700001)(26005)(82960400001)(2616005)(38100700002)(83380400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVBsVklIeXQ5NXJqT2Z1d204V2tDcnlXL01VS00rV04wRm1Yb2EvZTBtZnIr?=
 =?utf-8?B?UGhPSktQRWY2RllpUkR6T2k0Ujl2UXJrNzFOMUlCbmtzOTZ5UFN4STZnZFJZ?=
 =?utf-8?B?dGJrQ3BiaGE2dnhNbHgvYWtJVkVDL0RIcXN6bkxQeEZwR2pjL2JFcUh0QlQ1?=
 =?utf-8?B?N2tKQkRXNTluUUsrV0c5ejJrZlZlYjhQVjBLWHp3eWYwS2lxcENCOTRtNTlV?=
 =?utf-8?B?aEErQjI0dDlRbEkwdFIveS9XUEtkZnFvWVlFK200V2I3UlJ0NHBSOGNTWFJw?=
 =?utf-8?B?b3JiZ0xiTW45T0hiZDlHQnRiSE5LQXBiWnRJTGh6MUxvNnFGT1RDT3FRZmpo?=
 =?utf-8?B?M2tpWkkvdDQyMkFvQnlvUHg1RHZrdzB5RWxJbExQdlhQMXpJQTJCYkVzeWgy?=
 =?utf-8?B?R3ZHbVlhQ3VSU0V6RWZQalFXN0VDWXNFRlMwY0VPTFZZeGxhSlFlMmhyNG9T?=
 =?utf-8?B?blIvSm5ZMVlqTjAvdmhmaFc5Y08vV2FubEQyb090R1ppTmZ5Z2MwTTlyZjJa?=
 =?utf-8?B?VGcrQUFGMkhqQWdCSHo3ZmU4Y3ZRRXUyQzQ0NDMxd2U1Kzk4R0xtV0xtS1Yz?=
 =?utf-8?B?NGFEcTc0OXVwbUwzM2Y3VHZiUGFjZkZhdTBvNzc2aWZrUitHMVY2Y0RxWGR6?=
 =?utf-8?B?ZEtRRzBFNkU3V3dOdHVIMEx1NWhHMWVNWkZsUGEvMS9MOEdLNFNRODh3MjlR?=
 =?utf-8?B?L0hKaWZJNHYxNGRuaU52MmFKbUVFZmhFdDJ2MmFHelFnMHdYcjBBSFduSS9z?=
 =?utf-8?B?Vko5eFoxVC96djVKTllmc3VpdDB5bTcwbGZyUzVEUDlVSEFCZmRUR2pOYU9o?=
 =?utf-8?B?U09aQ0JVYU9SK29kRkM2TStpTkllTnYrVSs0RzMvVjExWnc4bG9JZG8vZUNP?=
 =?utf-8?B?Z3J3dGx6ZGtJY3JZM2doRzBTRUl0MU5sRjZjUHBBVGNBdFNTNmpCUGdvNHlu?=
 =?utf-8?B?TWJWcHJyRnNMMEVhLzFUYjhFdHZnNzJUSHVoSkVaTEloOXk2UG4rR1hIcy9O?=
 =?utf-8?B?Q2hWbFh3SWFWVGo1Yk9xeEdCRGVveUM4SXoyVkdVMm1SMmI3TXJoSUovdSt5?=
 =?utf-8?B?NlhKODZldXM2TFVWWFppSWJXVEtVaEgvZ28ydU80bjUxTTM4QlYwRnhNL3dL?=
 =?utf-8?B?MVdyVi92a3J6OVZQenREWnR4d1hWRVBoVDFnQTB4MzBXeFoxR3lyTy9lRDJz?=
 =?utf-8?B?Q2ZJY0p5SnJ1TGJzckZUNGdpZHVGUE5tdTl6UjdoaDlBNmZxc2xnbzd0bHNW?=
 =?utf-8?B?eDZ1OTE0Y2pOZ3o2b1l4KzJCY0Z4V3RWaUZKUEtGUEZDK29NWkhoTU41bEVR?=
 =?utf-8?B?OWptMFNZaEY5YkczS2hjaVArRmVSZUJYa05PUTg2ZDFzOHZaaDllWkdKZWcz?=
 =?utf-8?B?Szd6WlNrU2ltckJoLzBCNEVsSmFSeEdPbjc3aEdpRFZCQlBYblY5Qk1nSFFL?=
 =?utf-8?B?NjBoemRmdFNSZFRiOWh1NlNrbUhNZEdVSXovTVdGcHhKL0sweHNpazk1OWdl?=
 =?utf-8?B?a0Y5bGxHYWpYRWhmL0xSV052MmtNTHlSRUxITjA0dGhBNHNObjJrT3h1dTFL?=
 =?utf-8?B?K1cyc1ZjdU1sV3pMWlF0bHg3QURkOXpLb3BhVVRram9JeXRjaGhBRmdhMU1i?=
 =?utf-8?B?K1NyV0JzaWFQRk9mNEZieWtmNjVQV0t0TXRSZ0M4aEs4NEVBejJzRkNseVpR?=
 =?utf-8?B?c0tNV1dKcmxWaUlOcUZGUTZKVWI5VjJMbDlQRG9ZYUhCMVdPem4yNEQrN2d4?=
 =?utf-8?B?eWRaM1IyOUlwKzZZSHFOSFhnaDROLzFTNkVPeEFTS09VeXJlMWVTU0FGVDcw?=
 =?utf-8?B?MGVBZlc4M0FkeU5DZGhtOWlJNStCcU82QjhXUUxZdGhaSW02L3RvSnZpWlZh?=
 =?utf-8?B?MFFlcVhXenpqRjFZbm9Gd3NrUHlpd0FHQm5MWEdUbW1pRDRtTFJXWGFvNXow?=
 =?utf-8?B?anVBQkh4WFZIRWJhK01VSlY1R0hPVU03WVdzNi9paVozVENzZFN0bG5sdGlC?=
 =?utf-8?B?cHJVZHp6MG4rN3JpTjlEU1FEbElxMWVVM1BDYWZqVlgzVjlVR2s4TTJzYklB?=
 =?utf-8?B?TVZnM2dDUUdMM0FYdlgyL294TnJNcHl4ejE3YUo1WWUwUHoxM3N1WE1PWmda?=
 =?utf-8?B?VW9MMmdRZ243ZmZDanBsd3FHZnlsQURxdXMwWDhEVVRnSEE3c3FXeGlEemZU?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fb365624-8a81-4714-e7ca-08dad3347f58
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 00:39:25.6358 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +q3Dlh9FKTuqx5Ml56bDKp1/3/DB7wjL/S5ud8bXYswx9FTaUNoYSi+pog9AXirnsCUr0v5JW4IFZwmXK8kTcH0lc2VTKrkTIwETaHHMpOg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5222
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669855170; x=1701391170;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uUz7YJjxJ+Bys2iX8xCMZ8mHbHVT+QtW8v164GaIdU4=;
 b=K5x+aWeN4g108aCdckea1t4DZfVTAlC283Sm50k+lmkqGDo8zujVX9D0
 7yHP0eS3AiwtW8pUBLNsEmyAP8hx8SE5CGDFrkdzEQ4p0FiZqmgNAeSPk
 YbR60ZyN9mOgLEm2D3x8odI9Jt3UQdrbOOOAVw3jK4odx977+w9LhRp+M
 KiMnanR8lyEVVnDsdWc9gvXOCzG0H3ct65CKIZVq2yveww46cRBAzDnQL
 Hx8Pp/4OvzML7rzEDYnI7i0jP3+eEBDL/fQ7N4uqGJhHZYH0ldd35IiNw
 F+kPN9pF7xs8/bxizKJXvo6JAO43ZoucsFQYQqG1zhBOCDr3Xo69PBUwp
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K5x+aWeN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] add v2 FW logging for
 ice driver
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/28/2022 1:47 PM, Paul M Stillwell Jr wrote:
> FW log support was added to the ice driver, but that version is no
> longer supported. There is a newer version of FW logging (v2) that
> adds more controls knobs to get the exact data out of the FW
> for debugging.
> 
> Additionally, instead of dumping the FW log output to syslog,
> dump it to debugfs. The FW log data is really just binary
> data that the FW log team decodes to determine what happens so the
> translation from binary to some text output just slows things down
> and results in potential dropped data. The structure for the debugfs
> entry is: /sys/kernel/debug/ice/<pci device>/fwlog
> 
> Once enabled the FW log data is received as ARQ events that the driver
> processes.
> 
> The FW logging is across all the PFs on the device, so restrict the
> commands to only PF0.
> 
> The following new device parameters are added:
> - fwlog_supported (read-only): does the FW support FW logging
> - fwlog_enabled (read/write): is FW logging currently running
> - fwlog_level (read/write): the log level enabled, valid values are
>      Each level includes the messages from the previous/lower level
> 	0 - no logging
> 	1 - error logging
> 	2 - warning logging
> 	3 - normal logging
> 	4 - verbose logging
> - fwlog_resolution (read/write): the number of log messages to included
>    in a single ARQ event. The range is 1-128 (1 means push every log
>    message, 128 means push only when the max AQ command buffer is full).
>    The suggested value is 10.
> 
> This patch series adds the following set of devlink commands:
> 
> devlink dev param set <pci dev> name fwlog_enabled value <true/false> cmode runtime
> devlink dev param set <pci dev> name fwlog_level value <0-4> cmode runtime
> devlink dev param set <pci dev> name fwlog_resolution value <1-128> cmode runtime
> 
> Paul M Stillwell Jr (5):
>    ice: remove FW logging code
>    ice: enable devlink to check FW logging status
>    ice: add ability to query/set FW log level and resolution
>    ice: disable FW logging on driver unload
>    ice: use debugfs to output FW log data
> 
>   drivers/net/ethernet/intel/ice/Makefile       |   4 +-
>   drivers/net/ethernet/intel/ice/ice.h          |  24 ++
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 164 ++++----
>   drivers/net/ethernet/intel/ice/ice_common.c   | 218 +---------
>   drivers/net/ethernet/intel/ice/ice_debugfs.c  | 109 +++++
>   drivers/net/ethernet/intel/ice/ice_devlink.c  | 205 ++++++++-
>   drivers/net/ethernet/intel/ice/ice_fwlog.c    | 394 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_fwlog.h    |  56 +++
>   drivers/net/ethernet/intel/ice/ice_main.c     |  99 ++++-
>   drivers/net/ethernet/intel/ice/ice_type.h     |  23 +-

Please add Documentation for this

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
