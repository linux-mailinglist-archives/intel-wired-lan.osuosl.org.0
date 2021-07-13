Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6673C752B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jul 2021 18:44:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A075883B01;
	Tue, 13 Jul 2021 16:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XEjwZ_bDy5kv; Tue, 13 Jul 2021 16:44:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5C2283AEF;
	Tue, 13 Jul 2021 16:44:30 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 307CF1BF342
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jul 2021 16:44:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B8E5404DB
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jul 2021 16:44:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2c0ffn3HA-lC for <intel-wired-lan@osuosl.org>;
 Tue, 13 Jul 2021 16:44:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 282BD404D5
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jul 2021 16:44:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210247107"
X-IronPort-AV: E=Sophos;i="5.84,236,1620716400"; 
 d="scan'208,217";a="210247107"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 09:44:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,236,1620716400"; 
 d="scan'208,217";a="654423528"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jul 2021 09:44:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 13 Jul 2021 09:44:19 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 13 Jul 2021 09:44:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 13 Jul 2021 09:44:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 13 Jul 2021 09:44:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ig1p90a5mU7sgH0FJ7QPZgIK/zQUNrE6S8y8wdmeMINBSSYre/Fh1nsgGIDvaNqAWcPiR6xNeH/NNAm+o87QtdjlVBKEUyqGTUSQHg872kXcsROVVqr3Alpk6HonwzT3stZ7i3i+aJcnfdkzE2qyEYQQj7GLcV8W/fXs37/1j+KxjT0NdMlaXYX9N3HW2UZdqfV1LoRwt7TzRsocoHiwIDMt+x4CQpEhG9+H7fmKIvEOhdUK1VzUw6aAxQRddmxMHx0rNhq5P0zPP+bUyEo5B6R8YCTLeb2X0GW8Wcdx7DPEbmZgbAI0MLvPQxIfIEgMCwOWm2fJsavHUtfGMyxmCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YJz5CRrm97T9X2SXq47r5dwJ7bDTX5e9d5Fu9NzmjKA=;
 b=MGvFA7peCl/2d68R7/EqySmm5doblYL0N0BIBe012BNxHWDFOjMemIxUMqfUyvSM3KkBziCOzFE9k0sKoXYgJUcsfUB0yk0He9D0HPOZHZcSS1ZSdAWxtO3YoCacV32Ne/DUA/kSMyN9c8e8W8Amri3ETS6g5tdpVnKZDqV3XWdG7C16UUbWlihzYF2db8zizmIRwNs8L2Jddhd8MDYrb7Wftx4hLaoWIVWfd4kHCaAPItORYarZdoKXdyDLkpqGtXoN0QLU7Dkdd+WFpAck7M6rxw72V6XpSaq6QW2tP63+eXRfuTZaum6La+Woh5kjSaumfjV4rO7QN4clZY4MDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YJz5CRrm97T9X2SXq47r5dwJ7bDTX5e9d5Fu9NzmjKA=;
 b=k4S48yc0+Mw1Qip8ypyW5/NsMrtZpSinyICl1p9A1sncepVslmORpiyhyR9QvCnqzGY7o3ARI4TB7piWNCFy6NXJTEFEoKKLLs3Bcxvtq7f5l0Qw4slphwMOGnCP4b9347PeCOTm4o+WahXMr4rd+13vibRkoB78HyKyJvs1a64=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by CO1PR11MB4820.namprd11.prod.outlook.com (2603:10b6:303:6f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.21; Tue, 13 Jul
 2021 16:44:17 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::b856:1bc7:d077:6e74]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::b856:1bc7:d077:6e74%4]) with mapi id 15.20.4331.021; Tue, 13 Jul 2021
 16:44:16 +0000
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>
References: <20210709234516.24753-1-muhammad.husaini.zulkifli@intel.com>
From: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <76e834f4-195d-3623-0468-3a84daf19ba7@intel.com>
Date: Tue, 13 Jul 2021 19:44:09 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
In-Reply-To: <20210709234516.24753-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
X-ClientProxiedBy: MR2P264CA0025.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500::13)
 To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.168] (84.108.64.141) by
 MR2P264CA0025.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4308.20 via Frontend Transport; Tue, 13 Jul 2021 16:44:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: baaeb9f6-7732-4b4c-1671-08d9461d742b
X-MS-TrafficTypeDiagnostic: CO1PR11MB4820:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR11MB4820E287AB989625276718E897149@CO1PR11MB4820.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2043;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AvKhMaA/fL1WAdsD8ulAG6+Y147NgGb2EXGzs9TnHT5kqHTrftFB6MHePAq3aTezTp8MWm4f0NrKxxFKe+8DE16eQKtvymEvYvgDR5M1ydpLnkh32MofD1ZvgaRIC0vW6sDFtd/7k9Olcc8FKmRb2/b1hcA0eBDeDcjxB0RmwTT2lHABB7TJkTEPB7ocs63zZWqB2WOvwKGsfn77cGQZeoaa60M3TU8UemyR1wJK6iJajsivAZepxOF4df84CwSDXsdghhhCXqbLbHgBM4zC1B15YZoW+C0kHOscyZ0vsCSlD95BNyuGIf+Jpvm3+OlGpNKlncciqk8rjEfO93NooGToPTMH5Ww6f/XKbJ1rAnl6cXW413cv3T+uIGsTfmSHQlhLSUvO8vDiKuzPdoGoCRn9lSyJUkjkLdXhO7nRiT/FdvEMHhar3hgRNK/DwmdlsSgsIIYrEfXd5FJEWq5F8cyHVhhq8MjF1jR76YBPaxiXd74NZcbKUsEsKjX5tp1Hp6rZEa/ADzRs9e4Lf7xgY1+LRzY0Qe1pTzKF8XHtNysJZ9E60/Ceb9/EcIdnFTEkum2wNLg6Q86/q133hmTAcOpk5Se5M2PcMUVnPYHnb0QAZDvgzY6R4H/ZQxpJpdXNFdbPZvP7bjNUhyj4pbZeatr2qJzabanQlTSlegaQU7y9cbIenLrSZxMVZU58lATZm19TIykOvr5dVAt/280x/209m82yyP8VAcaI7YrtiDQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(366004)(346002)(396003)(376002)(6486002)(83380400001)(36756003)(26005)(44832011)(2616005)(2906002)(956004)(31686004)(5660300002)(8936002)(6666004)(33964004)(478600001)(6636002)(31696002)(86362001)(53546011)(316002)(16576012)(186003)(66556008)(38100700002)(110136005)(66946007)(8676002)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWEvU2Vsb2Z4RE42ZmM2ZTd5RHRqc2txWUNNbTFnb0lKNnh4M1A0ellBOXM4?=
 =?utf-8?B?NlE1aVBrRFNEbmpOWk5VS0FLTTNuSDh0eFFvYlR5R2FMUG5qODJndXZScGlU?=
 =?utf-8?B?NVp1bUR6Z1I2dFZEMTBrMWhpUzdMTXA4UWNaVGFoU0RaWXNLTzNwZlAyK1dM?=
 =?utf-8?B?UmN2WEpBWExtc1IwcU11OWpvd0txcC95cllLeGJCM1RGMzR0blZQK2lKcFFZ?=
 =?utf-8?B?NkJrZ1M1UmpzdG5kQm5aSHhzaFVHRFl3S1FLT3VBdXEzakNiVW9Qd3BwK214?=
 =?utf-8?B?SS95UHNDcEY1WVJWK0NSM1l6TzB1K1E5aC8xT1NjaEgwMXVKNGc1Y0dGendD?=
 =?utf-8?B?MStiR25Nd29mZlFPYUl6VjljTTUwUzE0ck5aMVk5ZFVRalRJbDQ4VUZjdTV5?=
 =?utf-8?B?bzExTy9xUG80K0s0N09ZODl0akpFbDFpa01KSWsrSktOeklMMFZ4Nm5DcndB?=
 =?utf-8?B?djhCZVNoMU5WMFJpNmNpZmlUTUtwc2hzZllwN1BjZUhhenlsa0RFdVdpaFZv?=
 =?utf-8?B?djg1ZlErSG5mb0JQb1ZjajluSWRhNlZsZWx1QjRPTm1UZWR2dU5aVmZmTkpw?=
 =?utf-8?B?UHJ5RXpvUkZVVk5FMmR1SVlkaHdCNkFndXZnbzk0WnNFTXNCV1NkSHFSY09X?=
 =?utf-8?B?cnhmNDlIOVl2bXFjYkp5dFBDdDUwWnVia2tlMVh6QXZSOTVMaERFTHQ3VERz?=
 =?utf-8?B?STBZLzRJQ0JpakoyeVJ2c0toUktFdUxHUS9jbmVJVmI4ZnF4ZmZGWkJJM2p6?=
 =?utf-8?B?ektMWkRMWGRkYjBoNDIySUU5b0M3RUV6STVWYWtCeGlRdnFMMDhtL0FiRHhL?=
 =?utf-8?B?S296VlR3OEM4M3VIeGU2aklqY2Rsd1dTNVQrWWtYWHhlUXpkc1FiY1poZkcw?=
 =?utf-8?B?YUZ5VVo3Q0RLZS9pMzJkeGhnWTdwcFB1MVM0c1FwZnMvRHEyaEo3K0lXYlNB?=
 =?utf-8?B?ZjUyUmJBS0w2N0pYZVdUaHp4RzZWd1dERXM1cHZzL0lqNnhyZUxtZ2lINXVB?=
 =?utf-8?B?NnFnUzJ1LzNESTNpM0J4c3VTVFlHMDlMdTNLQXlXbHdCWG00d3JyQm9yaXhQ?=
 =?utf-8?B?QTZZU0ZFL1h1bVd2OGVZaVNvM3ZLK2JqY0V2ZysrcDMxQ2MzLzZrM1UvbS8x?=
 =?utf-8?B?Zm91K1ZCSTAzNkNGb0dZZkIzRnprRDlTdVowZ3BMRFZHUTc4NEwrelByT0Ew?=
 =?utf-8?B?QThseW4xS1pqWUpkTHZXNGJIeUxNbGxMOTZ2TzUxN3EwSlJyOW9yVzYydy80?=
 =?utf-8?B?ZXEwV1hVQ2xocncyeFZidWZIcEx3MllzMTBiSlBwOGg2WUJ2aUtUUVlKTWk5?=
 =?utf-8?B?dXdLbW05cXZiQ29tTG9QMFlHWFYwbFVZRjU0UjJ6VnBnK3pxTzh4dmx4ZHkz?=
 =?utf-8?B?OEgwTmVsT2VORkFpNkkvSXB5RDJ5NVR1VitOTlRjdXJGWnBNRnRiWTY5S2hx?=
 =?utf-8?B?TjV4WW9reGw5R2ZJWUNwUklPSnhZRFNUOEdMU1ZCQzBQSDVOaTRjNHdCb2tj?=
 =?utf-8?B?RmsxYkgwQzErTm5hUWFuaWtCamJhcUtFRXVRdk9qdEV3SXdOc0FtZmVScFpR?=
 =?utf-8?B?YmlrV3FxaTZOZGNyRE9hY1l2LzhTRDhzMTRmRzlrVWlvQ2lRd1VVcENNRTNE?=
 =?utf-8?B?d3RoSks0L1I3L2dNczhQVzRPV3dUVlZtbTJkWlhuRk10TlVZNGNhbm9yaW5m?=
 =?utf-8?B?WnVtVGRqTHcrWXRKTHMrbGZ0NVFRTmtWZkhiYzE4NlhQbjJlZjMvVlpzUDgx?=
 =?utf-8?Q?jn5Bc2arvRsFFRH+6LNNWeE759LCcEK18KDcTRc?=
X-MS-Exchange-CrossTenant-Network-Message-Id: baaeb9f6-7732-4b4c-1671-08d9461d742b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2021 16:44:16.9519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WblE9GMP5d2qgW3o0ORqe+yi4DM3S5ZgdDaUlIuoi1ro5jOaDPXVVt9YRGVJs7kgIryKRcHsDwcjHvXmyhYvGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4820
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Increase timeout value for
 Speed 100/1000/2500
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
Content-Type: multipart/mixed; boundary="===============5919599697038188771=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============5919599697038188771==
Content-Type: multipart/alternative;
 boundary="------------C87089B98B94BFAA102B7AED"
Content-Language: en-US

--------------C87089B98B94BFAA102B7AED
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/10/2021 02:45, Muhammad Husaini Zulkifli wrote:
> As the cycle time is set to maximum of 1s, the TX Hang timeout need to
> be increase to avoid possible TX Hangs caused by using long Qbv cycles.
>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index c8abd7fb70e5..99fb5641297d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5322,7 +5322,9 @@ static void igc_watchdog_task(struct work_struct *work)
>   				adapter->tx_timeout_factor = 14;
>   				break;
>   			case SPEED_100:
> -				/* maybe add some timeout factor ? */
> +			case SPEED_1000:
> +			case SPEED_2500:
> +				adapter->tx_timeout_factor = 7;
>   				break;
>   			}
>   

Acked-by: Sasha Neftin <sasha.neftin@intel.com>


--------------C87089B98B94BFAA102B7AED
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#ffffff" bgcolor="#000000">
    <div class="moz-cite-prefix">On 7/10/2021 02:45, Muhammad Husaini
      Zulkifli wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20210709234516.24753-1-muhammad.husaini.zulkifli@intel.com">
      <pre class="moz-quote-pre" wrap="">As the cycle time is set to maximum of 1s, the TX Hang timeout need to
be increase to avoid possible TX Hangs caused by using long Qbv cycles.

Signed-off-by: Muhammad Husaini Zulkifli <a class="moz-txt-link-rfc2396E" href="mailto:muhammad.husaini.zulkifli@intel.com">&lt;muhammad.husaini.zulkifli@intel.com&gt;</a>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c8abd7fb70e5..99fb5641297d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5322,7 +5322,9 @@ static void igc_watchdog_task(struct work_struct *work)
 				adapter-&gt;tx_timeout_factor = 14;
 				break;
 			case SPEED_100:
-				/* maybe add some timeout factor ? */
+			case SPEED_1000:
+			case SPEED_2500:
+				adapter-&gt;tx_timeout_factor = 7;
 				break;
 			}
 
</pre>
    </blockquote>
    <p>Acked-by: Sasha Neftin <a class="moz-txt-link-rfc2396E" href="mailto:sasha.neftin@intel.com">&lt;sasha.neftin@intel.com&gt;</a></p>
  </body>
</html>

--------------C87089B98B94BFAA102B7AED--

--===============5919599697038188771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5919599697038188771==--
