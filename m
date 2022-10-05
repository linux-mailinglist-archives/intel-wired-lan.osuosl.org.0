Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FE95F59D5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 20:25:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0B3D81589;
	Wed,  5 Oct 2022 18:25:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0B3D81589
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664994346;
	bh=WDe++Y6vHGeDH3uvfu+aFsnu8OdzKTJoGt9FEi2Gal0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UEwC59r9ELJu4kPUdWpapDRs4wGRcfhA0wVo21G/d2ePhdnZdjnH81+hYvnpoA1Jc
	 JTmgp2LYvdBwq69JiZtSp2d+p7TaIJK8mnSxHK6FhBBeHUqMOJt8DpbKZ4kWlGFTcF
	 6gGbJ00W6BgQuDB1ndRnZLLg7nXlctk21Ve91bF6h+HfnKzfwL5+ENhtSqYiDcGJkV
	 d3ux8hkEUe08jlyzxh3XZzB48l/RpdGy5G6zf2Rwd3XgpwyYyykHX2UZaBlZVnSJ3P
	 X+s+1vjeheotzFlX9a+LZTvL9UT5wGn8rqazq6qhgqM35MFcUXebcnqwqPH7YQNRvO
	 UxVp7JdhUin8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pgjb7ZVo7Mri; Wed,  5 Oct 2022 18:25:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B65B6818B5;
	Wed,  5 Oct 2022 18:25:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B65B6818B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BDDF21BF23C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 18:25:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9565F40400
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 18:25:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9565F40400
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mq5DI0APLZzJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 18:25:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D8EB4035A
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D8EB4035A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 18:25:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="301953323"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="301953323"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 11:25:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="953277081"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="953277081"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 05 Oct 2022 11:25:37 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 11:25:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 11:25:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 5 Oct 2022 11:25:36 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 5 Oct 2022 11:25:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oCH+J56HclyCBPtv5lKJm8HH//upAsWZ00gHwZAU0CxiPWqilzoPp79r4553YvWwxu1RttQ/Nha/JJztdbLGvQJ4Y54V0BSydplHS7H54CCPsFKbG+QD574kyhywjJVXbUebDIkGMHj3T/6/cbLPkCT8/gRcbGZ61obu+jPW6XF9/Q/usQQjehUTOSn40PHH95XeOqTZhuY43ujz74BaxYiWD1tZN01No9TYVYvBNT7tZHGTs8mQj5bbvsQGgqulCDyepNN0lM9mPG1lCDnxSgkxwxdK7whyaKIu+oGJLSjGpZ2NrHivHoTnkCUc5N3G6bjj6M179ibQYg0movnotg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pfU4KrUV4d292pw9tBm/sQl9l4O+YB+reiv68lEVNgM=;
 b=Qt7V8qLhMf4uwmWtFWRPWtSsf0HWgRHW5EZGisLe+YrPmWnK2W/FEfw0m3j/DJW6mw+nWmC31H/6bYKwd/DklADZmziLU+5TE6PXm2ZPb/fWxM3PpbQBSM14T6G5PN1HmhQTjA1o2R2arD9966ymGGbTjWJOInn0KifdxPBx3VQ1T1f0CSRGRHUJRuegBw1ILIUwVP0kiEVK0T7scjJ8B2OCr4ceLUZrNbcniiUyJ+QQBTxogQ46G+01jOZ3bDyx0MBHA/Lzv9/7bweZWBJdOhsUE3tQB2Cs+naETBrGB2F3YgEswJdGAbzM4hgRy9kSl41jPGrMdttAVmMOkRQAeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SJ0PR11MB5814.namprd11.prod.outlook.com (2603:10b6:a03:423::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.31; Wed, 5 Oct
 2022 18:25:34 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::a3c0:b3ec:db67:58d1]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::a3c0:b3ec:db67:58d1%7]) with mapi id 15.20.5676.032; Wed, 5 Oct 2022
 18:25:34 +0000
Message-ID: <aab58471-096d-db50-36f2-493a14e0e6da@intel.com>
Date: Wed, 5 Oct 2022 11:25:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Joe Damato <jdamato@fastly.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>
References: <1664958703-4224-1-git-send-email-jdamato@fastly.com>
 <1664958703-4224-2-git-send-email-jdamato@fastly.com>
 <Yz1chBm4F8vJPkl2@boxer> <20221005170019.GA6629@fastly.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20221005170019.GA6629@fastly.com>
X-ClientProxiedBy: MW4PR04CA0065.namprd04.prod.outlook.com
 (2603:10b6:303:6b::10) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SJ0PR11MB5814:EE_
X-MS-Office365-Filtering-Correlation-Id: 66034a32-9bbd-459e-bdb8-08daa6fefe32
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NRXx0cNQHitf5MY6EvzBh+WAUQnIA8SA8jPJZqSllMjnaw+rmQ5r1fiNjgPRyopb9q+fvqvFPXkmd3UkdJR8HKlX/40q9f2DZ+RIatoFETQBxKU+r6VXWurAChfDR8yMzm4Cv+ZNpOoCSkTTmJNGpBZ2UZDSyqJMJqUItVEsjzbVXlEEc73fLC+D6V3m4ree68c7i6B7P2kkYfrLL3tSBfHJApHXcHUMJR6Mu7nskdNiSGTQby1L98WY/+0X2JAEPy/o0tKFVCFyP+YubiSWVXPSPJe94U37BJLlNitPfeyuv0cSp6++iNzdG6K4Zt7/0PGrPhtRQUWSyMlzr7dx+ndVpyCGfYU5ENidcoWiVaOTobUlDy3h2ZEhGkTne6t31PnH2Rw/ZoaJW2Zrqy76jEkHyXlhLguk4MOCUgcFX1jOqiLjMXcpdvu36xRfmnom1fess7QZbrccaHzW+TVChsIXAu6jUIR+NnycTAUxHF4z9GR9sJ+4qjVzEQkr4UGyAB6QgjmWncrEElXlC5PxDWjMWKcjCVm1Z7iwUtJ1lclVoqI+FsV44+JwkItDkRWmKmUHl/uLmodIG4smddBlLmkSmnnFX4S1acwuBpXgPRukk8ZaDZ7VuIbuq21DMnLOlAg7CroE0kGFI6SS5RT5Z9NegEJjS+rzboekfH7qnKvvQxBnQvOuUYpaIDHXZeSIQDsqI4DjY7eOm3D6PFHCpkUCmN11HkvP4S/TYg8q/TMBHSxtCf0oVvKRYW4gxqPVPJwhjq6EhhqXi0ozj+un6da5cn5j7N989WWL+pKjtG+HBCNPDlrUpyJwGJ4FU+2eQdeGmzFJ2rIRG32mPVUDsg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(136003)(366004)(346002)(39860400002)(451199015)(31686004)(8936002)(41300700001)(186003)(83380400001)(2906002)(38100700002)(478600001)(66946007)(6486002)(66476007)(66556008)(107886003)(36756003)(5660300002)(110136005)(6512007)(26005)(2616005)(8676002)(6506007)(31696002)(86362001)(6636002)(316002)(53546011)(4326008)(82960400001)(44832011)(21314003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YnlDVHV1YkkrbWl6UWMxUThxNnZOYWpkTlc2ZDBzSUx0TVF1S2xqeWlSanF6?=
 =?utf-8?B?V0E5TkNkVWNuWUVxcHdJdEJzQWwrVjdCRTJqTmJmUi85VEpUVU1mbFU3dnBx?=
 =?utf-8?B?TjNHSjZJYXlyTTFrTkVUNnR3alVrMGlqZllrNTZZNnNRVTJFY093bmc5RXpL?=
 =?utf-8?B?bWRvMFR6WnJETlIwaXFzMHp5UzJSUTBMSkNqODZrUVFMaDFsazV0ZGJYUkp2?=
 =?utf-8?B?ano5RnZGVVV5WUczRFU5eTVGRDF4QVNRczJydGFKV1llYjVOOXhVNXBrMnhE?=
 =?utf-8?B?dU9URGtjbVdHOGkrdmdnOUZZUURvUGJIVUJpbWNSbkdnazFIUFhuK3JXajhI?=
 =?utf-8?B?YTNTRWkyRWdqZ1FMeWxKVmxjdGltRmtKdE54cnpDV01zL3BITUxUUGpKQ1lD?=
 =?utf-8?B?U1pGYkQ2OUJiSmJET1dwblN6aFlmRzJjL3pPSGJTNjJ0VTdMNTBnRURrcjNx?=
 =?utf-8?B?TnlqOU9jY1VEVythRkU0VjhpN3JndXVBZU1FNi9wR1J4a2p2YWVYMWppbWVS?=
 =?utf-8?B?bHZOSHFwWC9pc2V2Slo5RXBWWWtEN1BxZ2p6Wjl4b3g1ZVkxT2hWaS9rMWgy?=
 =?utf-8?B?STlTTzJoUDh0NnhPQ0dNTmhySkhmYlJyY2VoaXl6RDkxVDQ5R25VYnUxeUxX?=
 =?utf-8?B?dzYwRU8yZzZjMW54Tng0V0xSRCtxWWhFcGhxcFpLWmVpbU9SSTc2R3BLeFdE?=
 =?utf-8?B?MWloVHVJYzR6NkM3dWt3bVM4VW9wWUF5WWhKMlJHNEhyckJ0UlUxTGl5THFJ?=
 =?utf-8?B?S3lZT2VFT081elkzaVYzYW1SVUdxRHZzancyNklPNHp0dW9lR1V1bTAwVnhR?=
 =?utf-8?B?UVNWWkxkeFdLV25JWEthOWRBVVVHOTg4cGFHTC92UFZGYUFCd2VFY1MreXFI?=
 =?utf-8?B?cjJRKzZIWndmQjJUNXhOdFZaUmZrNTh5bmMxK29TNmZjQ3o4TzhNeDdNbkts?=
 =?utf-8?B?WmZ3NXo1eHUyVlpVaFpPSEt5K1FpTjB5aDBCcXg0RWNscTkrNFVvNVpseGw0?=
 =?utf-8?B?Znh2RW5yL1cwait5Wi9Md3BMYmprdmh5aHhMYms5Q2d6cXA2TXh1MmViSUNl?=
 =?utf-8?B?Y0JtZ0tOTzJxa3oyMXdGanNOcmhrZEp3NEVqdnhqSk5pU29pc05XMjZzWDcw?=
 =?utf-8?B?dnJYeXBQOWE3V01QU0FvZGNVUzViNCswck5jamd6SHFpOUtZY0dsQkF3YTQ5?=
 =?utf-8?B?VGJXdk5xNXNBOGVTb05nVFhjZWE4K0dhNGplZ1p4QU0yRHhqV1FEUEwwaVBo?=
 =?utf-8?B?TFJiSHhPd1RWdEF5SlhjU3ZtK0daRlhGZXFDSjVrVUZGUGFmWmhJVUVyaFpP?=
 =?utf-8?B?SlNTZ3pMbXN3QncyUGs3dG5pWkFtSjk2REREUnVtMmRnYUFuSlNlWWRBb2hw?=
 =?utf-8?B?UU9ORm1GWVlLSHRLaHMybHBVVU1EYlhrS1hOV0twZGhHQ0J2UmdTU3h2bjh2?=
 =?utf-8?B?Um5INm9CWFdMQ1RMK0M0V09ZT1Y2SWprRlNHQnV0MHRtTldDdEp5aUpGeStQ?=
 =?utf-8?B?UkdNVkpMKytnM05TNzNMeWlpL2J6NDFWdDNmbENMcHhnVjJoNkUwK3hZWGpE?=
 =?utf-8?B?WDVTWWJhSUljSHhIbklJL1F5R0t2NnNDanJpVDkrV3FwTlBrcVBkb0hQUlI2?=
 =?utf-8?B?N2g0cHJwOUtJUERuelRwZGtuTFlSOUVnUENVQ09KMDJOdXN2THlqTkFuYmV4?=
 =?utf-8?B?d3l5WG4yQlBRWWluSTZHNjNSdnVLRmJ6WTVMUmFBRlJIK1ZJbmRNUjJ2NVB3?=
 =?utf-8?B?bmcxbnp5ZFEzcVNvZktIL3JVUTRqaEJYRHpSbkpXVDJPLytWLzBqYm5YSmtj?=
 =?utf-8?B?ZFZ3RXl5clp4dnhWKzdIL1FMUXpDYUN6QTBJSDEvNmtlVlFEVDhzV3h0SW8y?=
 =?utf-8?B?a3BSTitXSEJPbGcrWHVjalJKSUZ1TDBJQk1FTDZCR2pERHpjd1dqdTcwWjVz?=
 =?utf-8?B?K0pRMjN2TkkrYnRKekNFR3hnVGhhNXNqNHNDM3FuSlJ4dml2VlNHUzJqZnZ3?=
 =?utf-8?B?Z2hFYXZHL0xCWlQ3c0huaHB3eDB0WW1saWNzeURMd1IxVEFNYUJycnEwb0RX?=
 =?utf-8?B?V3hFQlIrUWRwUzBxZ0NZamMySlZHbDd1cXhGa2grdjFzSHpLcHhQbVA2MEQ5?=
 =?utf-8?B?Z0N3M0hpZWJocXBWQjN3Y09NYzFiVDJtdmdaaUNmb0Q0YXZLVFFMVW81YXNh?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66034a32-9bbd-459e-bdb8-08daa6fefe32
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2022 18:25:34.4082 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g0/3lcrL/v5mwbwZukMSCYFHs6UyPBq7OmlsrIcB9nT0wXvx+XRGH67UfCMNNV3BiLR058NiH6SmkFc/4wu/AkWiV2j0lGFhhiD5SNTm4f8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5814
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664994338; x=1696530338;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FoXD9Bd+eppDXnTNd+xxe9O1at7nVFqEJtgo9eHgXYQ=;
 b=ZWmyn5ioOG/rb9K4XzRkjSkL24N/TDsGQpSftBNyVOpAy8a9lnq+aJsG
 T+HCzEDw0NqQlLSeOg/l06MPFjsbKX7zqOXXTQBdZPmytCq7STF87y8yO
 LrfY9FyNEHGdTSfIuGhMapOZECLtFtb5FwLoZd4yXEZylRCqhoaYw7ajy
 flBunqTG13LjB3g1Xn/lUToIqymo+DD9RHqMPatgyR6OMx6N2ekhYspEW
 NoEULq4/doxT6K+1XsAOym7SfX5JXehr2LSilBAHsRbN8Sj9x4ADEz28V
 fCNJaKmKgiHQpANVC6z8sg80l15ABRlR8RbF5ZYL54j+y2yzTsaWBWOfr
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZWmyn5io
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [next-queue 1/3] i40e: Store the irq number
 in i40e_q_vector
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
 davem@davemloft.net, kuba@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/5/2022 10:00 AM, Joe Damato wrote:
> On Wed, Oct 05, 2022 at 12:29:24PM +0200, Maciej Fijalkowski wrote:
>> On Wed, Oct 05, 2022 at 01:31:41AM -0700, Joe Damato wrote:
>>> Make it easy to figure out the IRQ number for a particular i40e_q_vector by
>>> storing the assigned IRQ in the structure itself.
>>>
>>> Signed-off-by: Joe Damato <jdamato@fastly.com>
>>> ---
>>>   drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
>>>   drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
>>>   2 files changed, 2 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>>> index 9926c4e..8e1f395 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e.h
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
>>> @@ -992,6 +992,7 @@ struct i40e_q_vector {
>>>   	struct rcu_head rcu;	/* to avoid race with update stats on free */
>>>   	char name[I40E_INT_NAME_STR_LEN];
>>>   	bool arm_wb_state;
>>> +	int irq_num;		/* IRQ assigned to this q_vector */
>>
>> This struct looks like a mess in terms of members order. Can you check
>> with pahole how your patch affects the layout of it? Maybe while at it you
>> could pack it in a better way?
> 
> OK, sure. I used pahole and asked it to reorganize the struct members,
> which saves 24 bytes.

Hi Joe, thanks for your patches,

Saving 24 bytes is admirable, but these structures are generally 
optimized in access pattern order (most used at the top) and not so much 
for "packing efficiency" especially since it has that alignment 
directive at the bottom which causes each struct to start at it's own 
cacheline anyway.


> 
> I'll update this commit to include the following reorganization in the v2 of
> this set:
> 
> $ pahole -R -C i40e_q_vector i40e.ko
> 
> struct i40e_q_vector {
> 	struct i40e_vsi *          vsi;                  /*     0     8 */
> 	u16                        v_idx;                /*     8     2 */
> 	u16                        reg_idx;              /*    10     2 */
> 	u8                         num_ringpairs;        /*    12     1 */
> 	u8                         itr_countdown;        /*    13     1 */
> 	bool                       arm_wb_state;         /*    14     1 */
> 
> 	/* XXX 1 byte hole, try to pack */
> 
> 	struct napi_struct         napi;                 /*    16   400 */
> 	/* --- cacheline 6 boundary (384 bytes) was 32 bytes ago --- */
> 	struct i40e_ring_container rx;                   /*   416    32 */
> 	/* --- cacheline 7 boundary (448 bytes) --- */
> 	struct i40e_ring_container tx;                   /*   448    32 */
> 	cpumask_t                  affinity_mask;        /*   480    24 */
> 	struct irq_affinity_notify affinity_notify;      /*   504    56 */
> 	/* --- cacheline 8 boundary (512 bytes) was 48 bytes ago --- */
> 	struct callback_head       rcu;                  /*   560    16 */
> 	/* --- cacheline 9 boundary (576 bytes) --- */
> 	char                       name[32];             /*   576    32 */
> 
> 	/* XXX 4 bytes hole, try to pack */
> 
> 	int                        irq_num;              /*   612     4 */

The right spot for this debug item is at the end of the struct, so that 
part is good.

> 
> 	/* size: 616, cachelines: 10, members: 14 */
> 	/* sum members: 611, holes: 2, sum holes: 5 */
> 	/* last cacheline: 40 bytes */
> };   /* saved 24 bytes! */

I'd prefer it if you don't do two things at once in a single patch (add 
members / reorganize).

I know Maciej said this is a mess and I kind of agree with him, but I'm 
not sure it's a priority for your patch set to fix it now, especially 
since you're trying to add a debugging assist, and not performance 
tuning the code.

If you're really wanting to reorganize these structs I'd prefer a bit 
more diligent effort to prove no inadvertent side effects (like maybe by 
turning up the interrupt rate and looking at perf data while receiving 
512 byte packets. The rate should remain the same (or better) and the 
number of cache misses on these structs should remain roughly the same. 
Maybe a seperate patch series?

Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
