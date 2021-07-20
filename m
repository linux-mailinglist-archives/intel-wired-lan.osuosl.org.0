Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3CF3CF828
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jul 2021 12:43:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D66A2401E5;
	Tue, 20 Jul 2021 10:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XywKI97dDHkz; Tue, 20 Jul 2021 10:43:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 815B54022C;
	Tue, 20 Jul 2021 10:43:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE1BE1BF281
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 10:43:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB366401D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 10:43:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oa47iRTLqTkp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jul 2021 10:43:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 67B7B40191
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 10:43:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="275036857"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="275036857"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 03:43:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="414711962"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 20 Jul 2021 03:43:37 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 20 Jul 2021 03:43:37 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 20 Jul 2021 03:43:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 20 Jul 2021 03:43:37 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 20 Jul 2021 03:43:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZZYdlMrFWSI8SW0As7/ISEqPDWEvnSkU6s9ZuEj6YmlupugSYDk15wzDCpUFILVesjMWSll3ORXvdjNOXzsEwJSCMn5G90PwFLM9ni+76+prT05Ng8TvmX0NjQkU+i63f1tScZWJe+Bk8Jp8X+rqKAdLN7Vm+JUXdqtUzhDTbNkLO932G8odHcjTcKxtjbIdZecQJd4UnJ42nv+cNrRZc5wLjtDQQbPvU4uABcKdtsxiz5Ud3j+D6RKRP+Y/AyNtKD97LDuzGNPde+4VOfUjAAUkOfk+qXk34IYbdd7ICmYLPoOmGeGIxyGYBilNZXOZSPhVva2QbdAmiZawGDQXHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=luv0dSgXrhXUza4LtH0U5l9EgAIPEhzWNNyaUUgLfNo=;
 b=Vg9608xCRr9jQGAbJX/CeHUXg9Ktnka8AR0VZgckgjz5D+yyyCrMFRjsS5yCxvwWaHTL5utQR40ODlqcPGZ5Mktcw7YtXoh+JOcEok/NqZ29lLsevzfXp5TjbmIzDOLzPGcITwJkQANBrekPZ90GieNdCPQVJXv4nk4dtVe1doITCNjKjn1N+eb0vJKqgjPVwMx8lX/RHXDTIpMhi2+lkCIK49EIbOUAxjaaZ77nwwqmPpriiIFEH8sMQ08O4WgrzZrenoX+z5A9yiPDExa7QRyId4UeMFv5eOvp7975b6XtOBX+bREY+Gq47WjfBw1qAtGOtsrOUweR7ZuQBiQftg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=luv0dSgXrhXUza4LtH0U5l9EgAIPEhzWNNyaUUgLfNo=;
 b=i8WzTVkFodz1beKDMPV/x5V4pPjhktAykAjawyuj1S4XWdflA8PXLV/OSTULO/nVtpTT1CO8AY91RC/0xG8ukmBvoTlZbLCAC16ypHdgF+mm9YjZ6uSqJbkHBZ3DREd3GDl6mAMw1dkZctfSgmz2fPC0V2dn4/Sx5+U8XyTRmGo=
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM4PR11MB5551.namprd11.prod.outlook.com (2603:10b6:5:392::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.32; Tue, 20 Jul 2021 10:43:36 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::2484:5de2:b59:7c09]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::2484:5de2:b59:7c09%8]) with mapi id 15.20.4331.034; Tue, 20 Jul 2021
 10:43:36 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Fix ATR queue selection
Thread-Index: AQHXfNiNBX+u4GcyjEeVDd8kSN98RatLZvUAgABHZ9A=
Date: Tue, 20 Jul 2021 10:43:36 +0000
Message-ID: <DM6PR11MB4657461F4C22352391F3918B9BE29@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20210719194931.11173-1-arkadiusz.kubalewski@intel.com>
 <8bc5e9a3-36a1-e90e-7e29-dba1a700bd56@molgen.mpg.de>
In-Reply-To: <8bc5e9a3-36a1-e90e-7e29-dba1a700bd56@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b91277ac-f6ac-42db-6cc1-08d94b6b3a6b
x-ms-traffictypediagnostic: DM4PR11MB5551:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM4PR11MB55519F080A02F69A9AC38F239BE29@DM4PR11MB5551.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cV3Qcd0kwMnW3fsr2F1idx3s19RBFaiAPvWxZn/EZiuPbinHs87cwn+IFg9LjMOgk+11i25Ldcfi0p79N1c0KmDCFfC1XsxUmQrtO27LiIdxSqX4Cq7yf8My5BfE4LNFLo7++5AMExvRGpxZ2l5ZVxL+hAiP0dYWaBDpBnz6EQV7x24EVc/7v1lYjHPIvh1lR3k19S5igXdA8iiW9Bmk4JcYrZ/joCJseciCmvVba6sRgCNVpUrhKWSdz3IU6sD3d5ZzwJzLYYv04zdGtAB+o0IKO7SskjY5cEwfineba4QczMSAxmALLBimapvyu05M6w0NBKWbxbCleykkttShfrv+EpS1xhUNvZcTjkGhL5bbWyn8232n+9NGgAk1keCCFdLYnmueAKQAAz28yz0snI4pn0k1SpwxC4GnFBBCbRzEiOvChdyOvhHrL+svHfZ5nsT07YjNhWsuV3iOYxdW2nEkkrnNPxE721VMfVMA5RXV+/m5rDH9nnIgV5bxN+DiwpKHCdE9qoq+I8ZuUV7T9MQQ+WWayH/+lD39TzBZZ7H3qxGFxabVe6q/4bP2BVEEpJcB5OF67Ojy8OigRlwZwgmgikqFQkDUkfOUE0YZW965dx21AM9AJOr0FxFcDZTpkW6B/sA9aikWT3EVC1Tet+KJD7ZF4Q82y1Aqy3Hhm8wh1GXAjXz/dy4bSIao9UjdaZFUkXaTpfrqmNlLTX6pFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(366004)(136003)(396003)(38100700002)(478600001)(2906002)(122000001)(9686003)(186003)(55016002)(83380400001)(33656002)(86362001)(54906003)(6916009)(71200400001)(8936002)(7696005)(52536014)(316002)(4326008)(6506007)(76116006)(8676002)(66476007)(66946007)(66556008)(66446008)(64756008)(5660300002)(26005)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUkrbm91Skp5d3RkRS96Ukw1bE9LU0VOZm5BUHB1a1pFY3Z5OXdoTitnSVhv?=
 =?utf-8?B?NXlSNVVZNmVIKzlQWnNvWWk3bkNYZjF1aFZCVDFtVDdPRzNoVXYzMUxGOXNB?=
 =?utf-8?B?OStocWdDMXVWZmJraVR1OFB4enJZQjcrVWhlR01FRHNiTk0zNHJENXlFd1ky?=
 =?utf-8?B?S21uUUZZQUluaDZ4QmtIQUllKytManpHUkVuaHlwRDZGNVVRSjNhUEI4eFlG?=
 =?utf-8?B?bENveit1ZGlpSlREWS9LOCtYcDFJYmgxSFM4RzB1V20yZGwvZTRBaGtZM280?=
 =?utf-8?B?clE2VitIWFlIS2JSK09BK2V5NkVVWjV3U1NxWGhJcERONEVRVEJjM2pFZG1s?=
 =?utf-8?B?VUs1eERCbXl5cENFbExHVWNqdmxtdXFFZC83UFB4UEF2UXBvTmVkYm1qWkIx?=
 =?utf-8?B?UTRkcDl5UnQ4QjgrdXo5bnNRRjhxVUc1T3RjRW12TW5jZE16RW5zU3h6N3Fw?=
 =?utf-8?B?TGRZc2psQzBPSWt1b1ZKcmRKY3EvUVlnQWNIRXhHN3FXWEN5aThYQkN4S1kr?=
 =?utf-8?B?MjVMZVM0OXlpRG1xOW43dTdDUFlSS1MxWTNSMlI4dnVPdHE1N2x5UTJpbHU1?=
 =?utf-8?B?Q3VDaFFiUlNPdTR2KzJTWXpQZFEyK21TSXFQaEo3WU9tdTArdmVXRmt2UlBu?=
 =?utf-8?B?YnJiMzhRN2VadElwOVRDMjBldVdpOHVSY2Y5MlBncnhDeVB3bXZvMG5BYUJY?=
 =?utf-8?B?Z1NkU3RNQ3J0UUhaUFBJeVZGTzYvYStOTk82MWxONjA2V2ZKK0xMTjg1WHFI?=
 =?utf-8?B?ZTFlYndvcEw3R2QvRHhzNEtCTnl4d3pXYU5IMmwvN0VucXJ3SUFuSHFQN0xG?=
 =?utf-8?B?dXFUTkhNRC9SaTVuYSs1NU1MRm5WS0c5TDdFRFZMQkR5NHg5Uk9MQVRqRHpL?=
 =?utf-8?B?ZFNlSm5FREtBRFNwUDN3eVJqMjl4c25LZm1wemlyak5jTTRVUGIwdzZMem1h?=
 =?utf-8?B?TUZjczU0WW9qMDBvQks0OTlRcFhhOTIzZkN2ZWhEZDljbkVxYUFEKzUrYkY4?=
 =?utf-8?B?emlOT2ZCVTk4Q1c4aUlQYndHd2lWbi9Ud0NRd3htZFZaTGt1ak9kcFJjYVZk?=
 =?utf-8?B?dDRIMjZScDJGNmVpaDE4ZGVUWm5ER0FxR1E5QWM3T25weHpSZGxReHhwQnZG?=
 =?utf-8?B?T2thbzJCUnkvTGNlOG5HNXN2L1Rrd0MydTkrMlgwZ3BMaVdhQ3VYQlZiTjVK?=
 =?utf-8?B?T3dFRUJ4M05BTTRUNlh5Vll4ZE1CdmFPS1dYWEdHZk0rbGdCeU13K3ptNDRq?=
 =?utf-8?B?aHFuNmxOQ0JQYVVsYWJpQUJFV2R3TjcxTTBuOEtLK0RENlFROXNPaFZ1L1ZZ?=
 =?utf-8?B?TlF3VFZkckRqL1lMRDVYWHJkcU02aXBOeG5vY0J6dEVOQ1FiU3BGM0RMcSt1?=
 =?utf-8?B?dE1lSXlrQnZpck1tdHZFb0k0Q1h1Q0RZOUV2RmdMZkVCZW13ZEhMT1UyWWJK?=
 =?utf-8?B?Q3NDTDVpUlNIUTFHbkk2UXphMHIxZUl6MTZQbmFnUXpaQ2dDTUsyNnNHNHh5?=
 =?utf-8?B?ajVQU2kzVHVKRUlXa29NVFJpL3lKa09hZjZPTkdrVzNGZ0NPZDQxRFR4MGhs?=
 =?utf-8?B?Q0tuOFowaEJQNndnZDhwYXhPOFZ0eUE4RHlnRFJXazNuUUhPS1FCV0R4VUxU?=
 =?utf-8?B?OUFNOHg1ZVROZ05jMXgxOERpeUNvV3M2cE55U1ZtRGQ0OW5mMUNBVGJVSTF2?=
 =?utf-8?B?THJsSkpGczhVcStUM1ZDcGoxWHd2dUl2SnhaN1Z5eHFyNGhnNXFnMnEzVlN1?=
 =?utf-8?Q?xQYfmlR9loP8wAnGT8bqFS4ir1Ou1C/3b85489m?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b91277ac-f6ac-42db-6cc1-08d94b6b3a6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2021 10:43:36.2462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q1+jg4x4J+Gew9c8xLjqUvbMLR6XJRMIlaZtTgy9PZQ1uQaGI6CuHTHaGZ2FahkVh3KvS+5cEVN7cLQ2ajp82CnPANovtNpD65K3LLoJ0BY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5551
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix ATR queue selection
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>Dear Arkadiusz,
>
>
>Am 19.07.21 um 21:49 schrieb Arkadiusz Kubalewski:
>> If traffic classes are not configured for PF, then use netdev_pick_tx 
>> function for selecting queue for packet transmission.
>> Instead of calling i40e_swdcb_skb_tx_hash, call netdev_pick_tx, which 
>> ensures that packet is transmitted/received from CPU that is running 
>> the application.
>> Without this patch, ATR does not work. Receive/transmit uses queue 
>> selection based on SW DCB hashing method.
>
>For the future, the problem statement should go first in my opinion.
>
>Do you have a recipe, how to reproduce the problem?
>
>
>Kind regards,
>
>Paul

Hi Paul,

Yes, of course I have reproduction steps.
I will fix your findings in next patch.

Thank you!
BR, 
Arkadiusz

>
>> Fixes: 821bd0c990ba ("i40e: Fix queue-to-TC mapping on Tx")
>> Signed-off-by: Przemyslaw Patynowski 
>> <przemyslawx.patynowski@intel.com>
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e_txrx.c | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c 
>> b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
>> index 3f25bd8..10a83e5 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
>> @@ -3663,8 +3663,7 @@ u16 i40e_lan_select_queue(struct net_device 
>> *netdev,
>>   
>>   	/* is DCB enabled at all? */
>>   	if (vsi->tc_config.numtc == 1)
>> -		return i40e_swdcb_skb_tx_hash(netdev, skb,
>> -					      netdev->real_num_tx_queues);
>> +		return netdev_pick_tx(netdev, skb, sb_dev);
>>   
>>   	prio = skb->priority;
>>   	hw = &vsi->back->hw;
>> 
>> base-commit: e84671cd9648eb1f2b346378c100b4ebfbd1b01c
>> 
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
