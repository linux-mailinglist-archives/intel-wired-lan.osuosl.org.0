Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F6742E0F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Oct 2021 20:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A429F83993;
	Thu, 14 Oct 2021 18:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F1iw_gwYUJBU; Thu, 14 Oct 2021 18:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 946408391F;
	Thu, 14 Oct 2021 18:16:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 044C71BF29E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 18:16:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E68EA6067A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 18:16:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7xhHj8OsCmjl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Oct 2021 18:16:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 859DD605CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 18:16:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="291244164"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="291244164"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 11:16:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="717813716"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 14 Oct 2021 11:16:10 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 14 Oct 2021 11:16:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 14 Oct 2021 11:16:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 14 Oct 2021 11:16:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DwCaYYbqB4FjlG6Nxil3V++WoN9QZUUWxc4PxJLB/JxUBhF1ePjsbhBWkGoUpetgaA9hCrqKycBeMRTCyfg/PL6uuZZEg6SnNMf3c9EN0DQdo0nkzAdab5xokGuh5QEmv9oMSIuBnCC0cmCoN2ZJbybFcRRuDeIiAY75/0JoJPVuVLA5BVthHVcbl/RQkvPEtNWn6QYGgLLbK9tDicGyFUbn4MlWWChkXWYgPF4qa4f0x4YyC3nAEyDuBNlVHJxYoSEiDze61Smr2lFMnNzOTBp0egCTW36sUiHwxhlwOwM9hEcEN7BPZD3gt/nb6Vwvub4NfL227Y1ZZlv97zUZtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wj3O721dxlBebAhHTPs7nESSBvD6iS02XHjaVv0d2oc=;
 b=CMdAzx8h4fDgxpry0q/JD+/3B/mnQ6H1PSy5jbebyfe0ZG/1vHcSxQGCu9+xTfCQhDKzOAc01SI8mOwsLscD440zeiwVDqyVZtULhGJY/DX4A18TQJ7eyvStnr1MBgA63I4MAhOHAaxSl/jMhhaJajzBywNu2caltpBl5azSHpVONkrvlnlIsg98n+UZ+gLLMekLqgMJvc53+mxG6dSSHxMbDSUa+fERJCCcn4asyvbhk3NGSZ8YFghzwA1Q5tKUsWEsVRnZg/v2APis9Mlc7ZqL3hkamNRBSIhquDCAnGyCJ3Kvbh5hUYMDgEOzEo1U82ATpJxq4WNLW94ahHnsUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wj3O721dxlBebAhHTPs7nESSBvD6iS02XHjaVv0d2oc=;
 b=vWD3hPBMsXBJ2GsqvoEMvoCRJ0EvNc/xTrf+rj+7AjoGp9wZ3PY5SJu52XQbEesTjAPLd76Sf3w9k7webwXcqY/ZRZSWr4Z7QpxunAFcUWZFAdVMC9G0GT5G4mDGQu8lsVHAGvhzPCgtIcVM7a0QJ8Wf4wmfKCTzHbdhJeBbmww=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25; Thu, 14 Oct
 2021 18:16:09 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::d0b6:9cc:d07d:e8a3]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::d0b6:9cc:d07d:e8a3%9]) with mapi id 15.20.4587.026; Thu, 14 Oct 2021
 18:16:09 +0000
Message-ID: <456e1efa-c48d-df56-5372-91db6e33e6f9@intel.com>
Date: Thu, 14 Oct 2021 11:16:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20211014160958.238689-1-wojciech.drewek@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20211014160958.238689-1-wojciech.drewek@intel.com>
X-ClientProxiedBy: MWHPR1601CA0004.namprd16.prod.outlook.com
 (2603:10b6:300:da::14) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MWHPR1601CA0004.namprd16.prod.outlook.com (2603:10b6:300:da::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Thu, 14 Oct 2021 18:16:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ec46d20b-6117-4ea9-972e-08d98f3eb243
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR11MB491429C7FC360D3B1949CE3197B89@CO1PR11MB4914.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2331;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NE+6hiuQIk22iRp65dwOHrO70WLjqSmJHy0NCs7RXzaMDZTNH2didr6r6xbq2cHTEcyvgCYYXv3bD3vEPq73ANKTITjygn7ROkPtV0bqTba2h/5+BK4ET8TCTzLevXmtmV42NPtQTImTa8OIG5StXgNwsNgUVFJbooR2UelUA8yeF+IL4PothiR6fuDpPBkMcqRUyNOo7H9aMh0aW50NAOSk5VVnfhiT5dpCLq9Iq1qesazd1NtZ+X1/x2rjK2IJJiOEctGlLncfzuwXDRRp9klKUjkgG6kBPWYLSvL2t+oPdMxixugaY/G2oWO8kPPMs1TnHUoed0PNSZDxD/n2shkYU1TTFDKiLylRhDqbm8t8wXNRfW52Cprgm7f+QpPiERjuKIC0mQvjS854giFY+D0biJMWDlTyhnxQ/unkENA9WCjnTiFXMyJfRqfo+S0xoojUcmXhsabAZI62HUDOMNfzhjIQL9OQ4xWP7X5O9ngfcz7TbX1oe2GaaJhJOxmot6jFiIHKYiBFeSYvbXM6M4l2GmHdtWzktZutCNyYPYnO/4jcbR77NNDMFTejBaDRWS7S6w9YAWfVL45GjaKXcR3zmSN2EQZ5Cx/KTODIE6LEV7Ur1qS0aMVQjkpFHi0WaWRpT2KetJrlrrfBaTeiNP3/Fvt7hgBw7hNT7FTIn3xhMaAtIcglj7ZiEuIgT3r2mcvI9G2no9OEF7DJQBe/pjrAthea3zYG8MW8/VMAT1Iursd9ZnWxntdzV2SP1Lei
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(16576012)(83380400001)(66946007)(5660300002)(31686004)(8676002)(82960400001)(508600001)(956004)(66556008)(86362001)(186003)(44832011)(316002)(36756003)(2906002)(66476007)(38100700002)(31696002)(26005)(53546011)(2616005)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUdJN3RKL01idHJpcHRrTlk2Yk9PSE9QU0dvalgxaDZVYXNyeUs5bVkyQ0My?=
 =?utf-8?B?dGtyMDJET0ZHZnRjMitqcEEwbW1BV0tsNmhiT09KVmRRLzBmcjVRNUFPa2xJ?=
 =?utf-8?B?VmczaDU1cDhKakFrdFFzSWxJZ2JuZmRkQ1FpbDlHdnBzcDhpTVBOQzNmdjNM?=
 =?utf-8?B?YTFnY0ROckF5M3cyMDkrUUd3T1ArVkcrZGZJTFNEcTR1Ym9qSVA3VllGbzJt?=
 =?utf-8?B?ekZ4WGcxSUM5Y3M0cCtDdnVqUnFYWklVOXN6WURwcFpVc3E3eEpBWENoVEI3?=
 =?utf-8?B?T3ZWUjlJZ1E2RVJtaWZvMnhmN0pnS2JtQzExRjByOUxqc2MySEwyVm5BY2pC?=
 =?utf-8?B?QzdrZlpzRmRkVzBNTUxELzdlT01xM1BhMTU0cy9sWUxBcUZJcVdwVm1lVXFO?=
 =?utf-8?B?RTNWbHVhaGRmUlRBc1RPcWtpV1BRMG9sVExtREtwNlVoSi9vYjVxYXZXUHFi?=
 =?utf-8?B?MzE3WDRlSk5jT2NhUXFCUzVNZ3RVODVVN0E3OEY4K3RsTTI0bHZYVCtudHZi?=
 =?utf-8?B?b2JBei93bGlLa043RC9VYksxdDdoR01CVnU0OEg3RkdHL3hzNDJiSXpFaGlV?=
 =?utf-8?B?VTR2clZoN1pvT0dZOHN3UURVVWhRM1A0MnpXS1JPOENIRTRWZkVCQ3VCbkc2?=
 =?utf-8?B?aU5OSmxNSEMvV3l2WHlHK09vbU1zbVpKbndnZzQxRGxhcHB0c1ZnVngzbmdl?=
 =?utf-8?B?V0k4TGk0eHJ1Mkd6THdrSnJTVERLazg5bmVJYllHTWJBTFRtUXk3bzVDK01q?=
 =?utf-8?B?NUhwVjlZbnk1QTlNYnFuWW1pd3pMQ2RSRDJGN1A5ZExTNm04cDgvRU9KRmd5?=
 =?utf-8?B?MG9qZ2dzbzJmcDM5Y3Qvc0FrTWNGTWpNKzAzYm1uZFpCd0hEL2FWaGxrOTBl?=
 =?utf-8?B?K2h3WDN0TVB5Tm1hd1NaY1BwR0pla1hzZzViMzZMNWpuOHZBcHlYb05yUDV0?=
 =?utf-8?B?YVF3VDRYZDBoMGF4OTY3N1YvaHRmWmFyL0lmZDFzK3k5ZlJ0V0tXSTdzQjZ5?=
 =?utf-8?B?dFVwcC9RYkl2WEJYVGhWTTdMQWU5b1EvTkZ0ZlV5UTJQSyt0R2NCWGhtNjFC?=
 =?utf-8?B?ekMrZForbW9lVE9nUEFRWDVxMG1zK3ExcnFYQ0wyMUtmbEVNOENEOCtZbW4v?=
 =?utf-8?B?YkNVM2xOQW95V0tOSkdscm12RGFuZTRIaExuTzZQY05CVS82VCtacEp4RUQ0?=
 =?utf-8?B?alNMbUhLbnAxSHhPdlJ0TzlYSjZvSXA3ODZKeDFISnFJU1VxdWxqb1NKbjZX?=
 =?utf-8?B?cU1RUFVldDRsd0NkT1NPL1ZoaWJPdG9GR0hsTERKRUhFdlp6LzhNcTRDNVd4?=
 =?utf-8?B?c2xVdlNiVms4NXBwbmVSeHVvMjI1ekZQK3M5YUF4T2xjSnI0NlpwdnJSL2Jk?=
 =?utf-8?B?djMrRko2VUFXVXoxTmlMQzAvaG1wUUpHUy8wSVdPOXNoKzFrSzhyVXEvclVi?=
 =?utf-8?B?RjBIb3BQbUNncE9lck03ZW1HQ1dCQi9CMEMrcFI3RjErK05ZYmw3SGw3TkRu?=
 =?utf-8?B?L3NCT29td25ML2ZoRlk5ZGl2QUFwWlhIMmVuSGtEdGdDSTRxNzRQdzdjS3Js?=
 =?utf-8?B?OXJQUXFPaExuWG5iQ0NvZDJIK1liUTV5WjZNQTRoMld3cGZkdGgyZUNSS0tJ?=
 =?utf-8?B?QkNlWWhYelU0U3lSTkFKRXAxK1JXUVdJREJuNXFoejNTVjNhZU9TZDJjeTFZ?=
 =?utf-8?B?MlJzeVVWMVR2dXQyQUhkMisxVHhzSjVuclVuRjljTDNqM0p2blBJbUFtQVNI?=
 =?utf-8?Q?f9LVjjAOnMbo33Imhi9TS5brYQ6+ZCsRqKo3VAS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec46d20b-6117-4ea9-972e-08d98f3eb243
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 18:16:09.3145 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6qQETa+FUT6cnnOGsp0F7H+LWPc2Pob9NIr5iFGU8V9inbmMjeHT/QRmCuv7axA5BbLMDrUjGEKfGPtqEtntVZkKhHDN3t3WcuCUXpTV6vI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4914
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Forbid trusted VFs in
 switchdev mode
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

On 10/14/2021 9:09 AM, Wojciech Drewek wrote:
> During auto-merge, check for switchdev mode has been inserted
> in wrong place. It should be in ice_set_vf_trust not in ice_set_vf_mac.
> 
> Trusted VFs are forbidden in switchdev mode because they should
> be configured only from the host side.
> 

should have had
Fixes: 1c54c839935b ("ice: enable/disable switchdev when managing VFs")


> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 3e7fdd7f2e1d..edbc417f8c7d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -4815,11 +4815,6 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
>   	struct ice_vf *vf;
>   	int ret;
>   
> -	if (ice_is_eswitch_mode_switchdev(pf)) {
> -		dev_info(ice_pf_to_dev(pf), "Trusted VF is forbidden in switchdev mode\n");
> -		return -EOPNOTSUPP;
> -	}
> -
>   	if (ice_validate_vf_id(pf, vf_id))
>   		return -EINVAL;
>   
> @@ -4882,6 +4877,11 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
>   	struct ice_vf *vf;
>   	int ret;
>   
> +	if (ice_is_eswitch_mode_switchdev(pf)) {
> +		dev_info(ice_pf_to_dev(pf), "Trusted VF is forbidden in switchdev mode\n");
> +		return -EOPNOTSUPP;
> +	}
> +
>   	if (ice_validate_vf_id(pf, vf_id))
>   		return -EINVAL;
>   
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
