Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C245344F064
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Nov 2021 02:09:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41256403EF;
	Sat, 13 Nov 2021 01:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ekD5WZPs0GUw; Sat, 13 Nov 2021 01:09:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 238BE40273;
	Sat, 13 Nov 2021 01:09:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8605D1BF38C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Nov 2021 01:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7172840273
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Nov 2021 01:09:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x9-TYAmtjisb for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Nov 2021 01:09:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B352D4026C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Nov 2021 01:09:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10166"; a="256955243"
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="256955243"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 17:09:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,230,1631602800"; d="scan'208";a="603196407"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga004.jf.intel.com with ESMTP; 12 Nov 2021 17:09:13 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 12 Nov 2021 17:09:13 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 12 Nov 2021 17:09:13 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 12 Nov 2021 17:09:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/QxAF+L2YSEhYuBQUtFWhfuKBa18ygJCX1c7577S7lenOcD2hfjFh2b2CPUYbDPfEtTdErvseUaDS2lSAKsHa+KqAy3RR13zbc2Ssi7TB+44DLdrnDXznTGlfgL0JmHDw93JFnANZ3kqFBrzHJXKmoGBhupfXJXJI0r+iyPTFUvOi1QExTJ1ZjOlyAwBvAmGZtLpw/epXeW4KLzrxka2P1KXaJPNG71A7BgI3bB12LhpI9yL7V4Vib64HB+1OR1bnXTkPraYTBEoPn9QT2g/RKujegSEYJB9C+fFzRDF5gARGwp6VrJRMy7N1ysHw4zAeHvq7tSYzzQD3UnmVzsnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PtGe9KEcHYg95bH8JAJ84zi+hiTS3WdggteoxasEBQA=;
 b=lwNkvnqTHXrnTmV/Q/CldCMWe8FK+fXZUJSVmX9w3el9B8UmXjYVf+HBQ96m9QsC/W+RAVC4OLwk1gv+a3SOn1JNdooOkvz930AyMGBOwNDuQ8feMgiTu/18zMin0z1jQr0DevbIUL4M68f5G5AI1ypIgAWC0xUrhp0UcP/yR7Ab0rhVbWWKUwzBFd5ihUt/a0tIj1u4jlg3BOUAXXun4CKH9yYY7gAqOjQM4T4hBJa1lf35Omt02Gjt3wiv4AR6jbuoRWsqizEn7DwxlEh8XDgphC9CGDIZsMVxgULY6n5BiG4AiHn6+1O8yjg2PyhtN4vHmUKznkTo0FXmxP9tXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PtGe9KEcHYg95bH8JAJ84zi+hiTS3WdggteoxasEBQA=;
 b=fDDqVkIYdERRP8oaVAJWYd9rX/7Gn4W2Q3CTyzN7uodc3zMAqbArUTFoKcmS/TEOJfk9iIvuLvJH7SLahsibabEncUzwcH0pdfMQFDdaIWftvj6amy6wm0MsmFRq/5C5TRjpVikSJy1AcTYkpDDnaVcb/QZzWbk7yJriJePQ0zo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CO1PR11MB4786.namprd11.prod.outlook.com (2603:10b6:303:9c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.16; Sat, 13 Nov
 2021 01:09:06 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304%4]) with mapi id 15.20.4690.026; Sat, 13 Nov 2021
 01:09:06 +0000
Message-ID: <b320f02c-a973-e478-e74e-0329b5db699b@intel.com>
Date: Fri, 12 Nov 2021 17:09:05 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20211112135359.155502-1-karol.kolacinski@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20211112135359.155502-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: MWHPR1601CA0007.namprd16.prod.outlook.com
 (2603:10b6:300:da::17) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MWHPR1601CA0007.namprd16.prod.outlook.com (2603:10b6:300:da::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.17 via Frontend
 Transport; Sat, 13 Nov 2021 01:09:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 48be78c6-5fbc-4643-b0a7-08d9a64230ba
X-MS-TrafficTypeDiagnostic: CO1PR11MB4786:
X-Microsoft-Antispam-PRVS: <CO1PR11MB478696FD56687D812DAD852697969@CO1PR11MB4786.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ok15PVnf1YC+aFGro5SkBLOrk8mRO2uymjIdx49J19ObVSttlfbeTfr3m7/vyY/S/ASqGqC0ixDC76qPgyZ6+PePoOZbqL54KB7vuMPOTPSf8lSBRmRWT/2FxBUj8XECOjDILfIMKh/JSVoHng4yygRXiGvwUEwVEfC8dsZZADKY1GiS4LTqiW75z02HJv16z54x/eHMwLlao74QNsRJ71iJpedcRv9lNYhTNuDA+xUji5URxkm7K+8yy7OrWJQkyDMQX8gv2PkXj0vVMNGZ1+KiFcf+7L7NzyZ04b++fM/wA8x6f89WeACYc68tRiALZ1KfORgLCfrpP6a4dov0KvousAtS6Rc1SRmTl6QHm5JpinwsWpVLtopS4Y3YHPTkL0NTpEQu2KL5o6NoAiym343umeYQk3/fgmpsRIpjuAzhOID+TFR8bjE0KPZSnNRPum9LSBClvGkp36Fjl7DEWlVKaJlg9BYe0Z1oRjbASZZh6sn2Z8Y7FWvrs1hUn3jTVfwTLV0Vv2wYQ2JsbqhtjEYzFbRsm1l4nazFLTJnAI+jYYKFoD/imUmDNr4BNGvNNITbzq69iGr7rnmjmKgLv+BiAxyquQGHCSt0oDyesMOG6Rb+6YxT6H5KaAiQ5fS6CfuufppksW1aerk7uv3EI8TEhAS7b40lwyXZKFW1MPG0mg+GgAqycQmnQirVGbrsMdcGrR49nD+bby8Pf7Zhy1F70fDss0IVcUnZ6MElSzY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(38100700002)(16576012)(26005)(5660300002)(53546011)(36756003)(31686004)(186003)(66476007)(8676002)(66946007)(66556008)(508600001)(2906002)(956004)(2616005)(6486002)(82960400001)(44832011)(86362001)(8936002)(83380400001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkhFRC9hY1k3K0p2dGlUNkUyc0dnRi96RWRoclJoc0Jhd2oxSmdjazhtL0FX?=
 =?utf-8?B?T2dqUTNkOVM1QXVkVEwyVkx1cjFLMG16SEllK2VDUDVJT1FsSndaWWs4WGsr?=
 =?utf-8?B?bDV3UGhKWEVkRWVQR3lhMEdOMkNZRjNRdGI4d2dBY1hFNDdxWGR5VmV3UGdq?=
 =?utf-8?B?VlVNNGdlekdORjFlSXJsMnliYmQzbUg0bmI4WnNhaHBNWCtINTlLQ0xEVStj?=
 =?utf-8?B?OUpBRlR3Z3ZrcFVLTzJxQlhDTnM1bFlORlc3Z3BTVWNUeUJueVV2bnB5RWJS?=
 =?utf-8?B?ZHg1ZmRZVFBsQWozeTJ1TWphcFdzZjR3SFUwdDNSZVFDdmsvN3J6aTJnWFJ5?=
 =?utf-8?B?R3N4Z21mZWxBSzdrZ0NWZHB4YlQxd25MR1c0QkpoU1Q2cWtyeFdtQVcwcDRi?=
 =?utf-8?B?N2ZrWG1tWUlpM0pKZ01KVjZSQ0xNWVJ4cFFKRFcycE5nUDU0cy9DTXBSN1pn?=
 =?utf-8?B?NVV6d3E0d2o1S0NHOTAxbndBV3U0QXRGWFUyUEZmSUJLMlFFY2NoNmxKZndk?=
 =?utf-8?B?Wmg0OCtFc0lqaS9IU3VyOGtPN1V5aEhVMTR3cERnYnh4alJDSVVhZkxSYXl1?=
 =?utf-8?B?dnMzSTJhN3c5N0ZrcDVxb3lSVGJlMUVDeVRGYXpTdEprWVhsSDlkcCswcWlk?=
 =?utf-8?B?TkhTbEJQcEFOMW1CK1VHTTlqU0xIVGZnWHc1cmxaV2Znc0YxMDBwdFFJaS8z?=
 =?utf-8?B?cjZvVENYUDE2bGtFb0FyTGNEenFIUGJTaWlFSllSL0FyMFNrazBhejZvN2pK?=
 =?utf-8?B?dVZiRW1haTJBaStqUnY2dlJuUDJML2UxVW93d0hjR0RpWWY1bkNHSW9SRnRC?=
 =?utf-8?B?Z2FQVWRzM001VmxZWjRmNEcray80bmpLc2FYbnovSVZGUktlVTdhWGNXcE0z?=
 =?utf-8?B?bWZ2N3JFZ2Rwd0l3cXZzbTA3dW1hbjRPK3VBaFROcldKekhNa0QvWStENmF6?=
 =?utf-8?B?cXpOZGIvR0ZPZmJKckdkdUVoSnNyYjI2eU84SnlBcFdET1RlWHFwa3lKQnlP?=
 =?utf-8?B?NVVYOWtOZ2liT1RBRFRIckk4cGFQZkVXNnYvTHRPOFIvUzFaSUxWMlUvWjdU?=
 =?utf-8?B?T1JVLzIweFk3UllTOEpMQTRNQlBCUlp2cndFSW9Na1pkSkVydFgvd3NibEZ5?=
 =?utf-8?B?VkJ3ZTQ2ZFExMW1FTlQxVUx4bnB6Si9ETU5rclVmRmdXQXlKb1U3WHhodzlE?=
 =?utf-8?B?cUVYR29oMHAxQjhjRHMySXRvWXJCOGVqUENXMXFrZWlBUFNtY3dEd0JoU2dE?=
 =?utf-8?B?a0k2MU1jZVdzNUtjOHpWK1d6STZxcXpWUFdOeUR5UG9xQmZ0b2dNbmhRSU9Y?=
 =?utf-8?B?RUJKdUkzSnBuVFlRaE9FNjBFWVdGUXRRM3dyZkZyODZJM2M5VExzTnd5b2NZ?=
 =?utf-8?B?VFgzY1llTGNycVloWFF5TzNBQlJRM1U3aVpBUUM0V3Y1aDJmQWpoTHZsdkZq?=
 =?utf-8?B?WkN4UXovVTJmbDhUa1B1Z21YQytCbkZYUkxFL056R1BSNXlMeXo3eDdDNHNj?=
 =?utf-8?B?NUdWYlVJV0p3ckVwdVpYOTA0ZGxLWWFMYzhwanZLZmhkcXhHd0F1YzFYcTRo?=
 =?utf-8?B?V2d6dVB6c0lmSU1jY1VKREUzdWFkRFk0OVpoNFNYWFNHcUhQRDcvMmtLVS9F?=
 =?utf-8?B?T0d3TlIvenR5SGxCanVEWHRaNVdFbTJrNi9nQ2lYUDl2WUx1OEhJRlZBSXNr?=
 =?utf-8?B?V1ZpVnFFT2tFQkRWWDFWQWNDVVNLaUlvUFlMeXE2TnlqSUFuWWpPZDlaaDds?=
 =?utf-8?B?bUgrZW1uSmhCRHYvd3FRWTVGc3IvNmpnVzZlUGRNanNHcGlUU2JUMVVVK0Ev?=
 =?utf-8?B?ZjdqVllKTXRUUTBKVkJDUHB5NE9Rb2VtcE9ITFFZSzRkOG40K24rK3pXalpm?=
 =?utf-8?B?RFBsUlBRelQzejZWYldhZ0xuZDB1cFgrUjRkVlBILy9Fc29ZYVZOcGZsa3hm?=
 =?utf-8?B?eWs5akd3dXVUalJacTBIcUdpeGxHNmxCaGtpanBkQ3hBZHZ3c05iWW00ZmIw?=
 =?utf-8?B?bktpd0VMQ08zKzVOODZXVUpzUHJYWWlUcFVLMVFBWTM0TGR4L3hjaDNyV2pK?=
 =?utf-8?B?OXRrZU1iMFZ2Y3pNaHZMV1E0VjBock5WVnVTQkVQQ1M3WU5BTlBQalVGc2RE?=
 =?utf-8?B?TTE5elIzaHBKaFU4ckhVWXE3TGs1R2tuQ0N3WkxXeTR2UHA4djBpd3VlU0xt?=
 =?utf-8?B?U1phZmtkTmZES1dzcWRzSkVpeFgyNEw3RkVtc1hsSHdveUlLT1BORTJoeVZn?=
 =?utf-8?B?S3FPRmhkR0NHVUxmbmFWaVlUTmlBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48be78c6-5fbc-4643-b0a7-08d9a64230ba
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2021 01:09:06.6553 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: spjT7knQCw/MgQum1vIF3hyKXk4EFk2iuNffOVYctTDSvPINW/0clcuBNBwG/d0Dg7pGifbApz9j9RgPP4e77PkeNawyH7GTXaH9b/SclX4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4786
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next] ice: Don't put stale
 timestamps in the skb
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

On 11/12/2021 5:53 AM, Karol Kolacinski wrote:
> The driver has to check if it does not accidentally put the timestamp in
> the SKB before previous timestamp gets overwritten.
> Timestamp values in the PHY are read only and do not get cleared except
> at hardware reset or when a new timestamp value is captured.
> The cached_tstamp field is used to detect the case where a new timestamp
> has not yet been captured, ensuring that we avoid sending stale
> timestamp data to the stack.

Missing sign off, please run checkpatch --strict and build tests on your 
patches before sending to the list.

> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 11 ++++-------
>   drivers/net/ethernet/intel/ice/ice_ptp.h |  6 ++++++
>   2 files changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 2b3b2060b504..9a1a09661c78 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2069,19 +2069,16 @@ static void ice_ptp_tx_tstamp_work(struct kthread_work *work)
>   		if (err)
>   			continue;
>   
> -		/* Check if the timestamp is valid */
> -		if (!(raw_tstamp & ICE_PTP_TS_VALID))
> +		/* Check if the timestamp is invalid or stale */
> +		if (!(raw_tstamp & ICE_PTP_TS_VALID) ||
> +		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
>   			continue;
>   
> -		/* clear the timestamp register, so that it won't show valid
> -		 * again when re-used.
> -		 */
> -		ice_clear_phy_tstamp(hw, tx->quad, phy_idx);
> -
>   		/* The timestamp is valid, so we'll go ahead and clear this
>   		 * index and then send the timestamp up to the stack.
>   		 */
>   		spin_lock(&tx->lock);
> +		tx->tstamps[idx].cached_tstamp = raw_tstamp;
>   		clear_bit(idx, tx->in_use);
>   		skb = tx->tstamps[idx].skb;
>   		tx->tstamps[idx].skb = NULL;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 92b202ef3c15..eef8ec894871 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -55,15 +55,21 @@ struct ice_perout_channel {
>    * struct ice_tx_tstamp - Tracking for a single Tx timestamp
>    * @skb: pointer to the SKB for this timestamp request
>    * @start: jiffies when the timestamp was first requested
> + * @cached_tstamp: last read timestamp
>    *
>    * This structure tracks a single timestamp request. The SKB pointer is
>    * provided when initiating a request. The start time is used to ensure that
>    * we discard old requests that were not fulfilled within a 2 second time
>    * window.
> + * Timestamp values in the PHY are read only and do not get cleared except at
> + * hardware reset or when a new timestamp value is captured. The cached_tstamp
> + * field is used to detect the case where a new timestamp has not yet been
> + * captured, ensuring that we avoid sending stale timestamp data to the stack.
>    */
>   struct ice_tx_tstamp {
>   	struct sk_buff *skb;
>   	unsigned long start;
> +	u64 cached_tstamp;
>   };
>   
>   /**
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
