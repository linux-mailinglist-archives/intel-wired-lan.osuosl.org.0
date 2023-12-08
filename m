Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A6980A44F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 14:17:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2BED83BB0;
	Fri,  8 Dec 2023 13:17:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2BED83BB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702041434;
	bh=9kNXxAsWH6FtCW4wWEmoVYbmknSScW7WcI6krCC6p6M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AVkbnTu7mfLN3IKUDJ1gDYwxIpagPWlnNOqkR2z3yPa4OxvYaY00Uqq0XIBOTIsJT
	 340BfUZRn1duDqezT6mfUCUg2eoTxaLzAlZZrg48rrHTGGItqmfuiCb9mKn2Ka2lRD
	 sUEmFNEilMs/aDvedWqpE3xm8Pbnwni2Uoms6IaKr8ulIRgmdklUT95+rEGOuXoCOC
	 4rpH0AmvYk4py+V4d5Nf55jaWQAkTnCyFPVBxHwHmPZW+VXvxhskvmQm25jfzjTZ0a
	 htHFAq5qOdtxD85tMlc8YEbrI7BIC9it6lTrqq1SUjA50fCRbTrZL+5qCo9trr16K8
	 4tOmnVwC4JkpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SIQt0Wzz3qH6; Fri,  8 Dec 2023 13:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76EF683A5A;
	Fri,  8 Dec 2023 13:17:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76EF683A5A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 179D61BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 13:17:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DFBB6437D3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 13:17:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFBB6437D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i4AvqW5Rqn_h for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 13:17:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 73604437D2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 13:17:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73604437D2
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="373903858"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="373903858"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 05:17:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1103558960"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="1103558960"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 05:17:00 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 05:16:59 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 05:16:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 05:16:59 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 05:16:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M7i7m/gDDf19PhC6NbrVFlk5hhq+a9x4wJLZEeXXurvnJFxefVptW5My9jPqyJz9qSaHDp/vNHrDmji1oJ3aIivCIjXrw4+1JXgFIBUYsdjLrXU+xehMhDeVY+FpL5sgY9847lsxBFmPG1L7aNPqhz7rNx6pxlFjuT6aSGaVt52wlVJq4xF5OCXHfbk3YSe5ssUnbVn/2aOnnGDmySfNG3ivJ767Ky2Z2ph0JSQr/OfomHW65eqMVK6HajIurMSbwLIGTYDzdpMOb2wBJdTX7H8FjLViP94AZAzcqLCKG794onXSfnUAH1aliF3Yozqwc9CZCNp0vkS5ih19suNrNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=loBx70bB4wNmUbQRMCgEYqpq8nrhwQYVwHSEWnd7SeU=;
 b=lAl9ElpcmtyIKPYSOIu62zAspH/SpAtIba/ZeIWHvIs0nKyjBavLKzZr8ExQ5AAcHBMuC9VeCi0MoILEgiBlrohIlIdxFhkbMRFqO2LZQqlmKSlZrETmkdRqefDYYFsC73QWkBmZlrwY0qMy/iuABQpxxTqzH/gw9mO66VSLJ/4U3eKfI1mRIzZNLeNC/h7jGn6QDDjKcvZ8WwUAeT8mZESeiKfBPtobbGZd/uyjPgfqHQmNM68RKM62nMVC4PWaeqG7mBxUMT9T7LeadBCdxbTW6kwUyuHBOdMGUQwBQf157HItutrg0kgXdvbouuF6a3MC65MlNtUDaZ3laJnNyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SJ0PR11MB5584.namprd11.prod.outlook.com (2603:10b6:a03:3ba::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 13:16:57 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7068.025; Fri, 8 Dec 2023
 13:16:57 +0000
Message-ID: <1c2f515b-cfc9-066a-d1bc-12a5339040ab@intel.com>
Date: Fri, 8 Dec 2023 14:16:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: <ovidiu.panait@windriver.com>, <intel-wired-lan@lists.osuosl.org>
References: <20231208120057.2199983-1-ovidiu.panait@windriver.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231208120057.2199983-1-ovidiu.panait@windriver.com>
X-ClientProxiedBy: FR4P281CA0273.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e6::10) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SJ0PR11MB5584:EE_
X-MS-Office365-Filtering-Correlation-Id: 7de3862d-a594-4baa-31ea-08dbf7eff437
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vhEVvEBB0wkQQzhmNX7KWjOxyo51lAiD2zyCFXLWzM25kWLlZqQ2jLJrOnxJ+ZEfwjlt3vCpp2FOry99f4nYQIoXOCypO/I4xibwODJsW3dUwjxLvZPwoZ002/Jkrvq4mjrwk/Lbxqg0Zvs9iFXOehh/3Vwcdvd0EhKJsPops0gOx6axP2ZQ+mB8zFvVHr/eATipQsdsL+isol9Lcc8Ac8c03edD7TXdO0viN8Gci05BJk4PEMKn0loCB+136+uFq+zWUVlctCsZBftrOJV1oh2CIWJUCLKcdzpmhNwafbtdsCJm+1X+ipaY4fkp3T0U0HcAZMcS7wnZWUUvErOLmNRS2qum4K4QSnNrAL5f9JBlMdC/xwRlqHOpb0fw0CJyqb4z7MmjgBhSSSUDiizx5+s7kOesPvXWVUJTFvRg1/La8jKqmOm+s7wgykBE6P3PFp0fNIiLYuidaIqOMiyApt21S4pP1mCBBU1qaXkwC6UvTh17y0RhGZvZsSkByM3uQ19IRYK0oFe/DpyR0TO+HR1dtwa3lflmv3g9Tx4CCjtbh8PbNf5AzwIXcy1Yoh0ct3W15OCWf1KkIBa3tdY9yi2NZvmuVQq7BXc4WNxa1a662b92kICZq+7R7Kqq29+K
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(366004)(39860400002)(346002)(136003)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(31696002)(31686004)(6506007)(478600001)(53546011)(6512007)(966005)(6486002)(107886003)(38100700002)(6666004)(5660300002)(26005)(86362001)(316002)(66476007)(66946007)(66556008)(2616005)(4326008)(8936002)(8676002)(2906002)(83380400001)(41300700001)(36756003)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHNrb1FZRUgyenc4Nm1JemJrNzg2YU9qcW1sbUhNSy93VEFvd20zQ1FtN00x?=
 =?utf-8?B?NDRhYjRBZUhWYXcyMWhRcUJKVS80ZktaaFc0dmVvV1BoSVpLTmc2WklCRkRh?=
 =?utf-8?B?a01DSVVHbzl6UjRhV1lLc2pwZkpzU2xhNm81cVhkTkpmREV3d0hVaVpuLzBG?=
 =?utf-8?B?cEc3a0o4S0V4dUlieE1NZVlZbFk4WERSL2E0SXlSU1Y3MW56dmp3R1BFWVN3?=
 =?utf-8?B?UnQrcUdWL0c1dExoUGZpdllLa0FxTmxLUWp1YW4rMnlSUDNiT1d0d0dEQXMz?=
 =?utf-8?B?d2k3dEJheHY1QXNYT0Y0RHlUaHpDbyt2VWN3NzNQemRtakNmYnN2ZmRYSDFC?=
 =?utf-8?B?TG9FODFaK1dxdml0M0NwYjNpQVpMZ1U1eDQ0blFpKzR0QnZtdmhGdC83M0d1?=
 =?utf-8?B?WWZLN0d0aFNrMG9yRExCUHhGUlc1ODY2bmNIOW02R1RXZXg2SDNZWjFFcU1j?=
 =?utf-8?B?dHQvVlZqS0NTbnFlRDkrRXJ6KzZVdXh4STV2R3M3R1JaZyt0STFlUVZGekdn?=
 =?utf-8?B?blNIcXdmeEhTYlIxMnIxODFrcFBxZG1rK1Y0ZVBTVmg2cDVnVHFXcFpXQTR6?=
 =?utf-8?B?bGY1aWVVSDAzbnZ5RFpTNGNyc3ZGL3h5a3FhTE5yRmZERjgxKzROU1FkNkdM?=
 =?utf-8?B?QzNZbVN6NmNIRDlFeVp1VjdJaDVJL2dxemlVMlUzNys5TmJwUnBocUJRZlds?=
 =?utf-8?B?ZlZ1ZnU2UEl1cWVHR0g0SlRnNlZEcDZhSWcxWmRnSUpLVU9ZcHJyRTFMRnNJ?=
 =?utf-8?B?aEtEbE5EdWF5czdtYUw0OHdRcHR5Wk5sQVppN2dBNWlwWmJ5UmJjMSs3WldS?=
 =?utf-8?B?VVNHVDFlUnd0dFVLbW1KaCtxM0hjZVVkRDc0Mk9BVkYwUHRFVGFRNzZYZXNC?=
 =?utf-8?B?QURKMXZDRUdvRnZRTEJ1TzB5eHdMRkF0V05IdEtiZFBOa1dqN2pjMC9lVWh0?=
 =?utf-8?B?S3dTanA4c0NpUElUTnUrWUlzbXZWbDNUci80MGVPbngzNXFIbUpFblgvd2NK?=
 =?utf-8?B?OVlKTGY1YVFwT3R1djNSYWxHbHB3Q0hTMmJBUWpSN29jQ1JNNWdBN3RxeHRL?=
 =?utf-8?B?RHRJemRmMXMrVzZvYm52anp1YXg2YzVUVWM1dDlwVTFVMVdGcWNsTGhnQ1Yv?=
 =?utf-8?B?K096dVJVNGUrVlo4QURUMmt1ZHhDOHZaOGtMOGtxYXBvZHBubnJnWDhFOC9Q?=
 =?utf-8?B?WlFSbEhWeUh2Y2pnZjhyQ1F2QldxdnJSa1pGWXFrOU5VZ2pWeW5aNTE5NG5j?=
 =?utf-8?B?dWNZMXN2by9DNlREU3Y4eDM5RUJLOXpSZlEwTDRWbVlMR2JadWhMYy96VW9S?=
 =?utf-8?B?Y0N0T3MyNGNEMkhJa1FRVDgrUktGM3VxdmZKVnFUckJzek55VVlycmRFTjBI?=
 =?utf-8?B?QWMvcU1sZ3BMZVNMWWJRL3p0UWNHQkliRzl3UmpFTDBnSmZXNTNEUmNFb3M4?=
 =?utf-8?B?a2pnOGRmUmI5TnU5VFZTNXE5SGMvckp0U2IvNXk5SGdlUnJTY2RLRWdQRW9p?=
 =?utf-8?B?YkxrdlNmaHBRTUFTNjdZdEx2bHVnWUlKVmNiakliRnVrYzBobUhTcXVHdG4w?=
 =?utf-8?B?ekQ5Y2Z1TlZYL3VrbGxZZHBCZ0p2R3hheXM0UW9SRDVsa1FyK09UeHdsdWlC?=
 =?utf-8?B?VUJRRU5aSmtnRWlkdlRYcHlwS2c2MnErbU93Y1V2VitYTTl1UDV1NE82OUd2?=
 =?utf-8?B?WWREMkxQVlpBMGJpTXk3SmpVN2NkeFlGeE9xb3N2YXN4MWJ0M0dzMWhhZkhB?=
 =?utf-8?B?OGVvL3dpN3RRK0t0dXdSSFNZV0ZISUdJWEdnUVZvb094TUhoQ3E5SUJZbm84?=
 =?utf-8?B?ZEZnTmhGVHpXKzdzU09lcnBSa0hVQXBMNEpuZ29lL2xLNUV5bEU4UjlKNkM5?=
 =?utf-8?B?cGs1eUlaQTVHQW02cElobXhnNWdEeGozMEdZOW5rbERrMmtLVTBDdXFodkNp?=
 =?utf-8?B?MnBISFFKUlY1TnVjVlVHSlhNOUVBNEhlSHF3c0JTR05VQVRqMkI5b1V5ZkJu?=
 =?utf-8?B?UG1pUE4xeTk3aE5kOEdPNlRtbVRsMm5RNklDOE5salpYbzJaeUVaRURZOWdF?=
 =?utf-8?B?T1g1aXU0SUpOL2VNUWhhREtRaUxBMlQ4ei9qeis4VWtXYzdid0E4UFpLbnN1?=
 =?utf-8?B?RkhUQndwWE9NdE5wUW83T3BPN2ZPVjQ5VjBOZGtXRVY3NzRjQXQ5Ynh0MU9h?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7de3862d-a594-4baa-31ea-08dbf7eff437
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 13:16:57.2668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 62g+H8ibE/7YrouhmZySV/wT6d1lqNOAVQCAMD6PQeQ6y6jYszbS7IvMKOdofmNAGgOVckmWNbFfv4TQcvx/CPACvOYGLLnRHYdegzGTKkA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5584
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702041426; x=1733577426;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=As2qW8eGSBgrAz5JJ864vveBsr9v687nPzV+OjGa8ZU=;
 b=noxRc78Fs3fNx860tB4TBsgEdLD5fBay8M7pu1rHC/JqgheS7IPYnhoT
 8IX9Dvqwnh4b3H/W1iKhV/kEOPnFzqjkVMiaX0rZ1+mYMsuuz7hgR9Hax
 kdCoVZBpIDJLfjYLpbpE97YaEbW4qIGH+wySzkuS96RZ69bYpa9i5+8Ze
 z0LnksP/9mgtobXuiY1BwDOLIukyuFCZIlTahEl7Pwa3Xqq+evVgEtfHC
 PetYIjNc49szRShyM7vjnwTAS07DsnyDUoAGq5i+wCITTzz7axxINRmSL
 EdurIHugrvz5auv3Mt7Ghi/Ur4JI3UjoyrqEnloyrbWzlq6MOiCA7F6O6
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=noxRc78F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: report link state
 for VF devices
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
Cc: anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[offlist]

On 12/8/23 13:00, ovidiu.panait@windriver.com wrote:
> From: Ovidiu Panait <ovidiu.panait@windriver.com>

Thank you for your contribution :)

in the future, try to keep 24h before next version of a posting,
and CC netdev ML

no need for new action on this patch though

Przemek

> 
> The link state of VF devices can be controlled via "ip link set", but the
> current state (auto/disabled) is not reported by "ip link show".
> 
> Update ixgbe_ndo_get_vf_config() to make this info available to userspace.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
> ---
> v2 changes:
> - remove Fixes: tag and add Reviewed-by: tag from Przemek
> 
> v1: https://lore.kernel.org/intel-wired-lan/a2ac9348-8bd9-c9ec-59cf-38f24b8a304d@intel.com/T/
> 
>   drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> index 9cfdfa8a4355..21b18d2f0d55 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> @@ -1849,5 +1849,6 @@ int ixgbe_ndo_get_vf_config(struct net_device *netdev,
>   	ivi->spoofchk = adapter->vfinfo[vf].spoofchk_enabled;
>   	ivi->rss_query_en = adapter->vfinfo[vf].rss_query_enabled;
>   	ivi->trusted = adapter->vfinfo[vf].trusted;
> +	ivi->linkstate = adapter->vfinfo[vf].link_state;
>   	return 0;
>   }

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
