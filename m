Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D94E240BC4D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 01:40:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D13A60AFC;
	Tue, 14 Sep 2021 23:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eJcfA5g47OvM; Tue, 14 Sep 2021 23:40:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83A6F60AEA;
	Tue, 14 Sep 2021 23:40:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 627A61BF588
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 50B0760AE3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zp66RkDCL3f3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 23:40:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21F1460AC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:40:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="218978286"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="218978286"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 16:40:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="698015617"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 14 Sep 2021 16:40:31 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 16:40:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 14 Sep 2021 16:40:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 14 Sep 2021 16:40:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OagPQ91TfbM8Y8U7XmET8Y3hE0i1043spDpmEeLzIIRSXsreoiLxf76YzMPQ5U0eVeXhQnPnCqEjM0G9qEd1HptYD/faDmhZ+T8zS5ufwAPCyKfWNgyvZ0yYWp4BmOEwW7Sh49uG4bP++dCwUuIPkyg0XPVMjoGs2oLCmnkkp9OKhJWPnT7qydu8DNsgIzJyN1b0hgEBKf7UbepxKSZBUhjiXgHcG8QRocK5gopY4ef6ftWBwtocCohOmlDxa+4IEIUtHNFUgz7a0aOYIYhln46mF1HCb1fyh4SxCequi4Rv/Z7RC/GtXHmHXFQCe9qfSvScHX0hChSghlCIQFlt+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=SF82EMgoDwhm1MvL5vFllQS4JrfGTIk9TNmSdK+g5Ao=;
 b=XipKg6ycC7x0RLVbZoy9T3CS4jgD3b4ATimD/fwHuG1p4c0+G0UZcAiCgn18w412DsmS10HoJwMn0OnahWi9OYaxFMiv9X4M9fKith3xCRCANjc9nqiE7kewibtsyUyVLqSd00HgIHeQKvFvnAdLsNWGGGrOEUoSIBlu0gLUvFRaMXQrqRjutXXXlBijdIT/fsK+GntDarmkjxzFy9QTqtQ9xWWA7O+NKnUftEkxxAHWFgQ4brS1DAgG+yHRvE/fZdYCnBFOAlk+ns4zdlYGTco258LBGlPOWsrE05XrZNZES4TuIpQHEWK5O09qeMG3emNxYV2M1FGSdzlS3pylcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SF82EMgoDwhm1MvL5vFllQS4JrfGTIk9TNmSdK+g5Ao=;
 b=FaIx40vpTFyVsqBel+e3gxsbhaTkm8SbOOg7BYgTQqkTvqCe2sruejYGutv8dFMtuFYVmczotyf6pTomMuNOv39EGn6N/rWTT6Y1tpqoXI7I3i7Docw8PVAsiVBp9kl+kLfuw+kD6FyNDQXtH8RGeOkHh5ZF110xxNsn59Odvyo=
Authentication-Results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR11MB1486.namprd11.prod.outlook.com (2603:10b6:301:e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.15; Tue, 14 Sep
 2021 23:40:26 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::cd0a:aadf:cf9b:f2c3]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::cd0a:aadf:cf9b:f2c3%3]) with mapi id 15.20.4523.014; Tue, 14 Sep 2021
 23:40:26 +0000
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20210830141220.5547-1-wojciech.drewek@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <dc1070b9-a2b0-2932-0150-5cb78ba104f5@intel.com>
Date: Tue, 14 Sep 2021 16:40:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20210830141220.5547-1-wojciech.drewek@intel.com>
Content-Language: en-US
X-ClientProxiedBy: MW4PR03CA0326.namprd03.prod.outlook.com
 (2603:10b6:303:dd::31) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MW4PR03CA0326.namprd03.prod.outlook.com (2603:10b6:303:dd::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 23:40:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bafad52e-c470-438e-2d7c-08d977d90717
X-MS-TrafficTypeDiagnostic: MWHPR11MB1486:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB148625A3909D8BFD0FD7AD9D97DA9@MWHPR11MB1486.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:773;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DvFlddHpD4HGrLuYTPWqU6LUSlejL8Y3WW/wmvxXHAsZHybLGylbJakKovpG4GZ9VCp7MMFh0boJ5xCewGkL2siI5i8nEqqE8MYvv82hllXGkhlr13z8iarW4mL4zTkAQ8twU6n9BCohGK1yyFEbHIBzwu64MNnUhepPDaIxiwj0ZKa/mBPU2+c+KWd8SE/K7GTDTbW0oIZ1ytA1LJhlWBavAWAyaW+sdcQ41gRxGRNMXE004dYQlkBtxRUVTyjaMjL5sN7KccEjZkpbgPoBgR+foAGJNkjLuQhoDJoKOl/SY3AoLnzndooqBD6A8C8uhvR217Hk6I6Oq92GZy/Tf+5sNhlYzceJB+wknDRa/MG2HdhT3yMDAWyHgE1wVBuuSx5P1YCaPsd330ABm/Y68JB/7+1j9J/527VtZIFk54h+qcchMk+yIPsufqpdHD9fJ8BUphkf/TgD68GgR/nF1l7cwcIywL7yJ5Nm+HFo8c+Lwk/K45CLIzwx/CF1TR8iPo/0APj6eRM530AkMcYG5plRee86gZtllMf3fbXXq9Iboca0nYcjPbVrqm9SYcMdL1BU7D+70DsuOEeHly0rX5OcYoOP+RfbFZdm0tY8imRjahcvOKiWnC8XvcU46bQeqM/ga8t3KAymLIEAgiHJJIIpOF4kk1aVgpT4/FyvV8kYQ8eKuRrq0kdF+HXihJJgFXztE0KpWt0ypV/6WzpaekJdw5782cRGvSmV/28VHYY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(376002)(366004)(39860400002)(396003)(36756003)(186003)(44832011)(83380400001)(478600001)(956004)(66556008)(2616005)(66946007)(53546011)(2906002)(66476007)(31696002)(316002)(16576012)(31686004)(86362001)(8936002)(6486002)(8676002)(26005)(38100700002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzJmd21jckZlUEZZL09CcEJRb1hhZkFSQzh4dTdlaUhuVTIxUnN4Qmg1eTZF?=
 =?utf-8?B?N3RiT0ZxN2xPS2pSZkxVMXN3bWJMbzJaTHMvMWVzaVVGdm54czJIODBrQVp2?=
 =?utf-8?B?MENQTUJ2ay95WTJJKzRZUHRRdllDU3dnTVF4K05YOXh4eDFWcmlzd3FWUkJk?=
 =?utf-8?B?TnlNWnVQdGdPdTRoQ1ZNKzNWK1lCQnJLaWNLcDVYN0ZRUG1Vdlk1WVc5SG4y?=
 =?utf-8?B?NGIzbUIxSnVQTFBHaEN3Nm5US0NkTjI1TEVTQ2FvMDkwdUg5MDhIMmlEYkxl?=
 =?utf-8?B?MFhBQVVLclhoMjhhNThNUFZuQ284L1R3NVdKdmNIR1daTStyKzR6Nmlvakxp?=
 =?utf-8?B?cy9oR1k3ZGpDelJabDQ1Nk8yQnNpRkR0QlpaTWFSaVdZQTZmN3B6disrRTRw?=
 =?utf-8?B?ajBjc3pFSFpmSmtaNUNwbmVYWWhzZkhYdjF1dnlWZFhncmgxb0M2M2pPK2Vp?=
 =?utf-8?B?Z2J5OGRsLzRKZ2JOeUZTcjRGM0gwalJYNTdQazU5bjhLWTFFWENXQkhDUTJV?=
 =?utf-8?B?cm5sbzVZeGlodFFENmVCbmRxaDFYb2hOTU5ZR3dkcGd4OXd4VkFSL3BzR2tO?=
 =?utf-8?B?MndOMEhBZXlsV0xnZzJ5WUg2RjIwMFFCUW54OHV6Mmx3NGhWeXJHSkZRUTBn?=
 =?utf-8?B?bnRUVjJacmpKbkdJQU1MeFprKzR5V2pLMWlUaUM1SXZGb2E2SFN1bWhmYWwv?=
 =?utf-8?B?RzlMTlVhUE1aUnVvZy9LQlg1TDJIOHROVVZsMDJwZFBjNXdWeTJhWk0xdFJm?=
 =?utf-8?B?bm9nVEpzVDV1UjlGZVA1STE2Vzg5MmkreHlralJpeldaRHh6OHh0WlNJdUFS?=
 =?utf-8?B?RjAzZEhOVVBrZXFKYmNjMmtpdXg3NGw4OGtvV3JHaldpUWhHTGFnZmZnUUpp?=
 =?utf-8?B?SjBGZGRtdE44aHFFSW9KaDJzNGI1R1VTV01sRWZlUEdZb3J4NnRDUkp6ellU?=
 =?utf-8?B?eTFGV0tZN1pkR1plUGNJTWpFcnAvVit1Sm5Gc0oySmZuTEFTbzNGbVUxQkhB?=
 =?utf-8?B?RVF2WU9BcUFJTmtHamtOdlhHcUZYQUI4blRCM1UrOTVWY2s0NFp4aGh1VEVq?=
 =?utf-8?B?dkxlcmZyMlFOeUFnZlBXa3BUSHloZ3BVN1VwQ2ZlZTRGUlp3TS9LZGpSVTBR?=
 =?utf-8?B?MTBxaDZocWpPcHNaWlJFQVZna0dNYnZWOG1uWE82Qlcxc1YzQkxLNWFLVEJl?=
 =?utf-8?B?blA3RE4vUE0rd1MrS20vSk5XOVY4TnRaR29IdnBXNVBMTWlkWm5xcnRJSXZq?=
 =?utf-8?B?WEhXMFVjSEQ2UE1kVGJGYlZLcmo1K2xwbWMrL25hSiswL0xjbDB6WXlPZWx5?=
 =?utf-8?B?MnI4WXkvYUorcW13R3Z2cDMzS0wwNWtYY3NGblJQU0xMb2xoSEp2TVEvYTh2?=
 =?utf-8?B?VElPalQ3cXdieDgxekJhUGpSanpSR2RGNDdJZkJQcnFOaFRzMlRPVEY4cGNM?=
 =?utf-8?B?dkxhcFd0b1g4WTNZNjR6VEF2eFhLa1ZDUFdtSUZ2ZnErRStvTnpxNWRrdlE1?=
 =?utf-8?B?M1RMN0JKdE9KUFhRNnd2VnlRSWtFS0Yya2FXM3dRMHhqTnpjYXVPSXBDNGhG?=
 =?utf-8?B?MUxBbHRERVB6MXNrcERzN0N5R0U3QllCbmVQUnVIdnAzU044M1I0czZETDZv?=
 =?utf-8?B?ZUQzbzdFRnJkczlldzRYem9vTnVMWkVPc1o3YkRibWxmbXhlVHprckpRMTZy?=
 =?utf-8?B?SjFmb2N0M2VlT0xvdVFLcjJGMWVFZ0t6Q200MnFKUUtMbU42bm9ySGJTUkNt?=
 =?utf-8?Q?zGfTidbRRQUS+/huPMrWVURPRWA092NMOVomV/d?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bafad52e-c470-438e-2d7c-08d977d90717
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 23:40:26.2782 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gM8Iq7xHOwzhH4bDNA4VCggyzIMP95gfcG84LSI2JUZI5lPr5M5fQ5GiPyUTMNbSQ0Pu/6n1hsa3OPZrli92ZNXhFyhun2AcDQv2G905FhM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1486
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Fix newline at the
 end of NL_SET_ERR_MSG_MOD
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

On 8/30/2021 7:12 AM, Wojciech Drewek wrote:
> Newline character is not needed at the end of NL_SET_ERR_MSG_MOD.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index 34fe725b4a53..e01b16419923 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -670,7 +670,7 @@ static int ice_del_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
>  	err = ice_rem_adv_rule_by_id(&pf->hw, &rule_rem);
>  	if (err) {
>  		if (err == ICE_ERR_DOES_NOT_EXIST) {
> -			NL_SET_ERR_MSG_MOD(fltr->extack, "filter does not exist\n");
> +			NL_SET_ERR_MSG_MOD(fltr->extack, "Filter does not exist");
>  			return -ENOENT;
>  		}
>  		NL_SET_ERR_MSG_MOD(fltr->extack, "Failed to delete TC flower filter");
> 
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
