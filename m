Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1AD4D1F54
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Mar 2022 18:44:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F22CF81453;
	Tue,  8 Mar 2022 17:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 09fPDFVbGDFT; Tue,  8 Mar 2022 17:43:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E441280DB6;
	Tue,  8 Mar 2022 17:43:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E98B61BF86D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 17:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5C63400F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 17:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ZZ24H31x2zO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Mar 2022 17:43:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E72D9400D7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 17:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646761431; x=1678297431;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/49XzcXJ43XlCC/cGrMC0ggezL/cu2KSn01ty+rgE0M=;
 b=Vwm84T+nghLRP+N3yKNKBbeoZG4DgFWA+36stjFIRadmhNg/7/sxlmIs
 EL65VgBTuazX5XYzaqItwCXUsXpp0IHTPDAGwxw3VLV1u+wPqkE8JD9aL
 FtVCa3/ViLbgzQ923zXLri8GTXjXHn2JNLyDYVZYieFfXOvO/xWdIo/iK
 YZmACk2kQkjjs5g/Ya2n5Ydy8F2cSTLkT3fsD+o59l/f7I8UySArzN4So
 IbPLOTK7M5GztgJC0W2iWpU3ozvllGWYZi/hbMzSeEuzTuHmbsSmbVvWL
 OTE+NZgXPZrtJzpLkvRvWiZId1K9oXhxTLkPC3e4NHEE7ZA2wdjdB4HnB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254951493"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="254951493"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 09:34:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="495537391"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 08 Mar 2022 09:34:51 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 09:34:51 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 09:34:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 8 Mar 2022 09:34:50 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 8 Mar 2022 09:34:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kwwp1NxdDRoNHTENgKlBvoN4ijKrhXGpxQloySZ/j6F4gNVgv9re1L33DYWBJPg09G8n8PqhhUYQgI8Wg4Xzrfz+djrwm0FUv1VEZ1oWldWnpdOv/ToIAONp6kkvdDQNvhkJHoXLIIWLBSGFn52I+5uDKqxeDezylqG7GB5Ce39YrJDqvWJ8d6xCjSfC6hTTy7TgxcYFDvetfwWyov+Dz2tNwRQbPkmUYLSzHQd6xoHpqSjououQwN806zpVV0hRV9YNQjW9aDC5WeqoOREfq6DSvcD/bAKllvk9qrblW8IN5CjvmEAN256+PkxIwBAHhMHArLT/ygVXf5Ejbe65Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/49XzcXJ43XlCC/cGrMC0ggezL/cu2KSn01ty+rgE0M=;
 b=ZA73LxBN2R0bS28Vg01qmfm47vVtnwuS29IekfmpOxcC/quL0MUPWkTqBzRYKMrQ+SsL15aamiT2aWLq7q35s7p+MXEBDVx5VPSYVCXO6FQalv6CgzW7QtzEwLAsGSY1+wj6JYtdPadqudWj61Xf1C2O4kv3ofZQZYNeDhvaLbKAUJopaQ6kYnF8pnC8utvrIfFuiU1X9d4JkiPz68/F3Al17hVRoUlQw8gYFaUl3t0K4ED97839P28a87vvah0Eg7/yM5/QxxWswXciOJAx0LqNO7wwEsUw0NMhK/hylWmS9v9K+1BzD3cY3Q4WsImyC0ofJG2nxVcgWtfOf4v6YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MWHPR1101MB2304.namprd11.prod.outlook.com (2603:10b6:301:4e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.15; Tue, 8 Mar
 2022 17:34:47 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81%6]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 17:34:47 +0000
Message-ID: <0398de5e-2f3d-d82e-efa4-2f723e8f4276@intel.com>
Date: Tue, 8 Mar 2022 09:34:43 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@oracle.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Karol Kolacinski <karol.kolacinski@intel.com>
References: <20220307141746.GD18867@kili>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220307141746.GD18867@kili>
X-ClientProxiedBy: MWHPR12CA0057.namprd12.prod.outlook.com
 (2603:10b6:300:103::19) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ebfdb41f-5557-47f2-9a5e-08da0129f0e5
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2304:EE_
X-Microsoft-Antispam-PRVS: <MWHPR1101MB2304FE154CD1B8F1D2E25690C6099@MWHPR1101MB2304.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P8T0B2VSgAN44cns+CKlEody8Vmhpp3uuc6eLXD3/RSxAesy0aZtbYePqcTW4xgesgeTyuZ/yPsK4i3coMdj2kJbsWf1Hzs90r52do43/mDoPscMkwK4+tqxV2su1FYy1YaW0Em758J7oGQLZ4ToOVzaxaxLzaAk45+08jBg+VbYpfiy1aNYDaG5eMuVnBwU+m64TmrL2tSZqD89ZCjYlrfSXuEqpPg0FDUEm7EKDM481wY/1esmq7bcAQ1XUbsvvutviW48g01PHG4jOg+wAdZZXEjsnPDbu+1DEpR5AKHtOev1YIwDf7pZxSd9D97LjAvLkm8hjuF3H9/I4GqvAuoN/d/wcRqZfJlVszmZtyVl3dOTkAkzF5ZmaAS0D3VUvf3gSkBgRTOXuoq1ScsmbF4+Httl3xxR7x+CqpomJiJrW1NroGAd7iTEgtAZTcpY38/7KLgnVUmpsjv9aBaY8Kd7XUAgfFQcB3BVssPSHj9prX/Y77s38aiqIZBMYI6lR5U1sgH/gVlE+ufpj684N3QsJ7uPtH3+CEO0pvmeNjzZaGvvxGf4PymHdGzu56XyBWq1H70zJxUy1VroKaIVWDrnsESwTDnvfrQUBA1vN7JsPzyEgG/TxS81mNVqlZWcWMJMXw8cg6SlV9hBrZDNns3TPyS9MD/IauImS52cE/S8s1EHCrx6kqgUQidXW4UmyG2N3KUA96s7RCpxAIB8Fq7XV8d3leINV0nXo9lm1q/90qGvpfRJCa7TtYxDuR3I4GPDxttvzHM/KyEYYYdfe0+2Q4/DrWLdrWZiv3QVXHzcfVuYo1PcbUb2EyQNRDRY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4744005)(4326008)(8676002)(26005)(31696002)(316002)(186003)(6636002)(5660300002)(54906003)(8936002)(66946007)(110136005)(66556008)(66476007)(86362001)(6506007)(53546011)(36756003)(38100700002)(82960400001)(2616005)(6512007)(508600001)(966005)(2906002)(31686004)(6666004)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3dGWlI3Y1djUmZkT09POUg0NXVTYW9tMVBrODRhM3ZLVEplT1FiK1pUQm94?=
 =?utf-8?B?aE1sUSthYUpHTWpZZERNZG5UczVGbis5SDVSQm5UMDhNWFNlR0VRenRpcGsz?=
 =?utf-8?B?cXlLekZsd2JpemhkcTFvd1QzdldkRVRsVjQ5UHdBNjlMMHBjM2lYOEl6elAz?=
 =?utf-8?B?ZE94SS9zbEIxVXlWZkxWb000QisxajBJRFNuSUxSckNkeGpkako4K1RjN2dY?=
 =?utf-8?B?bWhTREdaSnhSUlZzU01nY3p3RExGNVBBMk1tbGZLeE93VDJuZEM4em5LcWtK?=
 =?utf-8?B?VVVtNUk4NFc2TWJOUWxwR1k3c21ZeC9zMXN2cHpJckFQemQyNG1oN1FlZTFL?=
 =?utf-8?B?NXU5bXFIQStZOGlWeHRjZndPM0lvMWkxbFVVdHRCN2h4cDBGeVhKL0QvSzky?=
 =?utf-8?B?VlpZQTNHRE40M3FsRC9uSXY0MlNWRFY5MjdPbk9pK1NYQXNuU2FQa2tUSlhH?=
 =?utf-8?B?cS80QWlKT3pjT1ZxUHJGd01YWkxIYTdxVnF3cVRPdHkxSXpwd2lZOE5qbDNR?=
 =?utf-8?B?MUE5V0J0cHoza0FGdmxpL2JaODlkTlBYNXJYODh6czRRVWc5SEpRb1VWajk4?=
 =?utf-8?B?TFpKS3dnK2xJbUY0eHhZSzNuK2UzRTJlc2h0eWNFZ012V09ibjNybnVzWjI2?=
 =?utf-8?B?VzdiWUpUWS9NUUVLWVlaejlEaklkcENPUGV4emZTZnR0cTVoWTVEdThPYTBh?=
 =?utf-8?B?UEF3Q0ExZ2x4cVdHRDZWekx2QlFrckdoS3JKWWQ5RytuZUJuK2xuemhscXVR?=
 =?utf-8?B?eWdwQU9XV3R3N293bkRSZm1ZYU9JbERidlNQOTgwZVVKNzFGUzAxUnB5RU9H?=
 =?utf-8?B?OEtjZWx0c2tqRFNkSUx0c2VKZDZ5UkdUT2wycW9ZV3V1akZiMnJKb1VJVmRn?=
 =?utf-8?B?WE9MWWo5eCtZWVpMQzF6VmRIL0YzQmFpNnlnWXhici9Md3VtYUNiUFh5SXMx?=
 =?utf-8?B?aVhzMjZDY0wyclJSOVA1QmV0QlRhU3lrQjBid1A0VTUwWVFZbFc3S294Y3Zk?=
 =?utf-8?B?Q2VoTTN3bjNXTFpYSFZlZGZIaEFWazQrQ2pXaG9WSDdpU05HYXR1TnROayt0?=
 =?utf-8?B?RXhNYlZYSm1PSGNpKzZkaVhBQWVWWVdSOWtUZjc4TnRkNjFaNFN2K0xrM1Q4?=
 =?utf-8?B?Q3pPQUhLNGc2dkViS3FmMXc0aXVac09JODJuNWFhZzdGalZyVm1lMG9XNVRU?=
 =?utf-8?B?V1RQM3ZnTWEwZTYwaXJUdEc3QTdRSUFHVjJRazQ4ZFVJYXlKai9DZFVweGFK?=
 =?utf-8?B?YVQ2bkNDVGpkTFpFK0o0WHpWckc3QTZHVk4vYUZMYUlNMzVmT2Z2aU5rZEdw?=
 =?utf-8?B?bWVZUUc0UFFLRktpbGM2c2RpUDlYN0M3MTNROXZrWXc1Nkg0SWRmcnV3dHdz?=
 =?utf-8?B?TFNkdWRGcW9WNVdWRTN2eURLYmpxTWx4VXZFVFdOd2I2ZVZUY1IxZHJYQTli?=
 =?utf-8?B?Qy8ycEhnTmlmbWJaWEExR0RTL3RDM1pOR0dOSXJobkM3ZmdTN0t1UEkyT1Np?=
 =?utf-8?B?bkNIWERMN2Q3V1pVR0lFQTBFYXZyTzhrdHBTdzZaMU1GYVlmTnEzNTFtTVEz?=
 =?utf-8?B?ZXZJazMrSHloNDl0ZVEvSklSYlN5STNLcnc5dW5rT1A1K3I1ZlB0dDdkQzRR?=
 =?utf-8?B?T3hvbm5vZnlEVS9QOHJOTGpnRGxmNy81WnpyZnpkWkUrdWdheGdSd3g2cVMy?=
 =?utf-8?B?WXh6dWk3eUd0bkgydWlqb1NjcUJkbEsxbjdEQzU5RUhqbEkrTjJUNVBLVU1y?=
 =?utf-8?B?RmZ3SUZVMDE2VWloeXdjVUkrUU4vakxmWS9NbnUvS1RNOTZucjFPdFJBMDVv?=
 =?utf-8?B?YTVyaThONmNhVVk4aDMwbzBXRWNWeU1tU1dMcHA4eFdLbFB5UTRCeDJudFdV?=
 =?utf-8?B?Qk1ZVkRhbnlhUFNHdG82M3VMbzZLOHJQVE5XMkVnQjVNSE9vZkowdndGdmhE?=
 =?utf-8?B?N3JJTmNRZGNwK3BCQXFCLzVUR3RWZS9uOXlNT2oxakdjNE9lWWwzZDlsWW82?=
 =?utf-8?B?cVJiclhQNk9WSnBzUDlrR3Nlb2RwNitzNGdiREZ4UHFnSllVRmY2R1Y0Z2dL?=
 =?utf-8?B?YVlaRXBpOUNFOWI0RzVra24zRjRLWE0vaEJNWmZNK0J5dDZ5SEZVaG9GRVph?=
 =?utf-8?B?R1piWVhzR3ozTDFWcTVpRzVSNWhhQmJNWjJMMU00bFFta2dGdVdXRzhQMFBH?=
 =?utf-8?B?bUFuditZSmNzRmIyZ2NqQUVia1cyWVhPbE1lRDNNbXgrZXprOHlDL0xWYWNP?=
 =?utf-8?B?RFNVbVlzUnpzSkRwTXpWb0RrbkxBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ebfdb41f-5557-47f2-9a5e-08da0129f0e5
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2022 17:34:47.5868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OMBNd6j8zs0ojT/EyGK6GeiapM1Iv4H9zYlD4nwrBQdWQeoEaZHdxTvELAhI2ME6MLflQBozSzTxe4iDknT39Wa6qFiBdjMnnbLfAsrIG24=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2304
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: gnss: fix a NULL vs
 IS_ERR() check
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
Cc: Jakub Kicinski <kuba@kernel.org>, kernel-janitors@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>,
 Sudhansu Sekhar Mishra <sudhansu.mishra@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Dan,

On 3/7/2022 6:17 AM, Dan Carpenter wrote:
> The tty_alloc_driver() function returns error pointers, it never returns
> NULL.

We already have a fix patch that also addresses another of the same issue.

https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220305090430.3078757-1-yangyingliang@huawei.com/

Thanks,

Tony

> Fixes: 43113ff73453 ("ice: add TTY for GNSS module for E810T device")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
