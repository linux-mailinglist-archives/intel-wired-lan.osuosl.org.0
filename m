Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CB44326DF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 20:50:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1088682C89;
	Mon, 18 Oct 2021 18:50:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QJTK4LSmLoHT; Mon, 18 Oct 2021 18:50:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87AFB82AED;
	Mon, 18 Oct 2021 18:50:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D8331BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 18:50:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 79C124021F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 18:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TTnFiG_U6MCF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 18:50:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B6C940187
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 18:50:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="209134380"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="209134380"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 11:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="566189218"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Oct 2021 11:50:47 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 11:50:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 18 Oct 2021 11:50:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 18 Oct 2021 11:50:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GpCouQTKR4Pmn4jgg6THFODYrzMCmOxoz/j2/48tpfRgdFWwbVSOuCj9KBuJWlEwG5d1p4Yx0JF5m1PvGWnL2kUE9TdjnlvqRc/ToRoSdPRnwPQcm/ivdrQaZAvXcnalZgt3YnItSQipQVj8at9FVm2ec9s3fxsGmFLYfSy8SBDo6Wrv9iWyH4PvSLvtL844sFg4B7iC286nJS/KaN57abloq/4nzPRgDoBCwO1B/BnyUIdha6NhnU7KTSRb2XO92AuT56T+bc7tLuYu2Uroj5fpOsjQhumAnDNZ/22FGqJ7FKnRZKeddxCb8aY7xZCPoUrGAWIL7iZA7ySNdODBSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1b6RMmRMP2thspwEFuOXYdL8FCn8p4iV1eo0PyhRJa4=;
 b=d6ER4V5SjKll/Lc4xFpTwfPExjyoyXW+AFNFeEI1As7jcZXpj/T7gi/jK790oDe8jkyhANEjGVYVHJYBSiXAPzF9EZTGtIhGW3UOtC91U/9smLutQItm4y4zb8q8+7TrhG51fdcXnycH6MuwbU8cPIVTiDZjqqeVI3DxsdiE9QHsduxnyEIFlbuGvkV9XCFhM8Fv2RHlGu0++fX9ulI1mLNmK0mAoVt0JHXSs7QdgDclgf2QsiP2hWkBjQ6fVSGxmm2aMYTwjtMOZte/DadbCTpBXqephbz5my/fhEIaEGg5W5AVNTdrwmMYiuePS44cDeAVsK01hSjup1aSwmekxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1b6RMmRMP2thspwEFuOXYdL8FCn8p4iV1eo0PyhRJa4=;
 b=Ufvy0BCySrctg1p0NC38dFB0M3KoJntaCi/B3/queaqHzCan5v1knUV5r8Ejz2UHBUOmOD/nd7zoahowRGn5yWT5eL3gm5kNEMSUJK1IYQBOiLGrlfm3w7gLRKhntdaB5MEVJ7WOEtqlaI05RBiPL7lxDvGmYVCfKm+g314csNE=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5640.namprd11.prod.outlook.com (2603:10b6:8:3f::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.17; Mon, 18 Oct 2021 18:50:45 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%7]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 18:50:45 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 1/3] iavf: Refactor iavf
 state machine tracking
Thread-Index: AQHXlNb4+UnVmpanFEur/+2inDZoqKvZeBsw
Date: Mon, 18 Oct 2021 18:50:45 +0000
Message-ID: <DM8PR11MB56210DDD2A6B9E76B2D60A87ABBC9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210819084740.2449-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210819084740.2449-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24f3633b-c2a5-4c6f-7bb7-08d99268315e
x-ms-traffictypediagnostic: DM8PR11MB5640:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM8PR11MB56400933DFA6CC35E5AADFCDABBC9@DM8PR11MB5640.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:166;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HQkP8JPhMtQlvkJNhg43WNNwAvc5XbokbFIU3V3b6z1OlU10mt7Y7+W+xebjCw8XQYzGSvFDOEKl7GkL00KyGTw7tp9s8yE5JtqUH8rdHN8d3jbVzuF8a4zXOkdsevbDVYAllVraeXMcbI3cMB8tjDl1cIZdGMrtnuDVUd2H3904S7aQJwJfDnRKebmHmUA0TVPQ9wrgGBLLmTCnCDK1TfAGGnR9VtHnbHu24xcaqSEOp72+bH7OB+tK9s/W6nv02p0r/ezOQmAfsctnvhNaKo0LSdgNmNa3XSoQjgqpK0+UtI3vM+C0xDu7T99CkkW554tpRsOa6961yILNdci/PKeQpEdYKmCIb9rTb7GE2RG8kGHp4vK234DV7vxyNW/fIEQEF3ZgN2hBhBHaLrmQESoLXOK5RqP+BwXkhRU1zr5aiPBpbHpwHCccIlAGEFUvvf1WqfV8UbbEnY8Gji5ZJkRqPCwBBgcpNS3GPGQNNeOOVfM+lG1aGp8EfQ95Y5PWj08XqL0OmBm8tNx70QTgefJKcorxMzH2QHoL5I2dWur5CTXWqMWCN9BQKpfRMw82FGzPo3psCIbz1coHFUIEmg03cl9n9Xwdb1gyQLGUKP6TxMVzKDQxSbouMX5N2io19q+FkzrNbi5dIDd3WMVJt6qEdy2/Rw/gSlg4lRZMskGHdosAf6B+cu3+eB17KY4gXQoJZ8AcCfgmigKKG0YEIg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6506007)(26005)(64756008)(8936002)(53546011)(66446008)(66556008)(86362001)(71200400001)(107886003)(5660300002)(38100700002)(186003)(316002)(52536014)(76116006)(122000001)(55016002)(83380400001)(38070700005)(9686003)(33656002)(110136005)(66946007)(7696005)(54906003)(2906002)(82960400001)(8676002)(66476007)(508600001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OAACs2/yoSUl51OzcQ9Pef+859aASjkWvW9DEPDgKiLpPXHJ4eL7xsKjvOx3?=
 =?us-ascii?Q?9VMem0JnGJYoQo6v0+3AigDSE0/t5dEC1I0ndfM8xQdCMo5YyT2MjMfpRGBG?=
 =?us-ascii?Q?sKNqhLasBppY0MHud8qEAXiFdyWqylzftWbvWmyjGp8Zhfmr1rcOX8I74+Ja?=
 =?us-ascii?Q?21QGnTwspel5OfxzsHtFmHCOvcqb8w51a3IubK4pCb+bwTmB56OijKsGcnXg?=
 =?us-ascii?Q?h+05dwjRS/8TclYjUgS7uOqsd9vi0ttjBuAn2rWeiirGHSeBsAKGnIDzdrUg?=
 =?us-ascii?Q?hjamh5LBpWQr7uNgoGcKOvt8o+91a/n+JAUGvVrgDfS9sVXRo6kRhi/fk/Z5?=
 =?us-ascii?Q?RJLzSyLAtdDWlTiuwDqEe1ecr+UIa8aidKyBEeh10F7hJ2YiMjsaGhFdUfaA?=
 =?us-ascii?Q?+6sejFLVjw7Q/Y8XAb/FDyAxJPVlxwmJNaKe516kCzi6VJ0f//CsGEEvpEWb?=
 =?us-ascii?Q?IroySzo4A1aGqVVus1FF15gemRkEcEFC6ZUunU0ghbhs6k5G+4z18y+JsxC9?=
 =?us-ascii?Q?eoAmw5WAfS99fUgehFN7XNOzNumcp3o2HT7lM60yJFfU8yjn+Lvburu5obL1?=
 =?us-ascii?Q?m49iblOzPsveUu8zANfSGT+J1vDP5QKy7iml6mIlz8AUWJb5aVi09ZgTyppR?=
 =?us-ascii?Q?ZnorKckI6QJtuyrAs7STdDr5Mh4GGRhhmQ0dSRDD25QDSuq3v/GILQGlZtSf?=
 =?us-ascii?Q?GwtB2N/1UF0pSil/8vX4WrtorhPNI4KqjQcnhP7S3vspDxNHWTPgfooIT73P?=
 =?us-ascii?Q?qtlOs4vOPqIDkSc++CsLF7QCM3RvzSaUEiYt8sDUxwVMvktVUq/G2B3aB6Mt?=
 =?us-ascii?Q?ASrGPThRVRYybOTSOe6gXCO7BMrq9XehzuXnvL85Thhfu02FxtWmeDfsux1f?=
 =?us-ascii?Q?dzczaXcgrNEoXth0X9B0dTlMSHwTDjQDkkWBoQOxM1z03MLmvC+rOqdy64uK?=
 =?us-ascii?Q?nAD7kyieyYeM1zPQuV+c499r6wtF0LLs8Zug/iBs9tgCZFFcEdo+uXjl0S03?=
 =?us-ascii?Q?He8AaYYMQpw6GDipJqQxGkTOY0dfdYs2kF3Vo1xM506PpR0FGnpUKZJLOZjl?=
 =?us-ascii?Q?UQoCNwpnW8W9TDNfQ4B7nhJr+EpZZHBl1r8CyLYHWJc60D72uNaWh6b6P1Iq?=
 =?us-ascii?Q?KJW0QaE3UVCq1k8uuwQvN7pix44uRSz0xeaTziOGuNEFkg6Jpz74bTntgZYM?=
 =?us-ascii?Q?4nvOfgQyomdjjcEl1rRQsWeKqW0yRkrbrPYFa8fjV3aXpOoCVaV9j3QPHyzI?=
 =?us-ascii?Q?IPVYhiwlIrsDcGw1zfUgqkYn9Y5C0MrQsdabfI9SAFqV/iqOjweg+JjFsq7w?=
 =?us-ascii?Q?V3Vffc3GkJC2p2EH4d5tRYDw?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24f3633b-c2a5-4c6f-7bb7-08d99268315e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2021 18:50:45.1369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rp41B1F+Z3Eec7gAV4DLRb7aykHutPC/6flVBnBTzHXKSxCJvF7rWz7Qbxhlv0lZX4Wr3aMcyB1wW+9nV9l3Ef+7xbd+cwsYhFp/UiMfApw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5640
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/3] iavf: Refactor iavf
 state machine tracking
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Pawlak,
 Jakub" <jakub.pawlak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: czwartek, 19 sierpnia 2021 10:48
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Pawlak, Jakub
> <jakub.pawlak@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v6 1/3] iavf: Refactor iavf state
> machine tracking
> 
> Replace state changes of iavf state machine with a method that also tracks
> the previous state the machine was on.
> 
> This change is required for further work with refactoring init and watchdog
> state machines.
> 
> Tracking of previous state would help us recover iavf after failure has
> occured.
> 
> Fixes: bac8486116b0 ("iavf: Refactor the watchdog state machine")
> Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
> v6: Fixed that patch so that it applies on next-queue tree
> v5: Fixed the patch so that it applies on net-next tree
> v4: Removed unnecessary line
> v3: Added new file to patch series
> v2: Splitted the patch into 2 to make them smaller
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        | 10 +++++
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 37 ++++++++++---------
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  2 +-
>  3 files changed, 31 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 21c9577..4f937cc 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -314,6 +314,7 @@ struct iavf_adapter {
>  	struct iavf_hw hw; /* defined in iavf_type.h */
> 
>  	enum iavf_state_t state;
> +	enum iavf_state_t last_state;
>  	unsigned long crit_section;
> 
>  	struct delayed_work watchdog_task;
> @@ -395,6 +396,15 @@ struct iavf_device {  extern char iavf_driver_name[];
> extern struct workqueue_struct *iavf_wq;
> 
> +static inline void iavf_change_state(struct iavf_adapter *adapter,
> +				     enum iavf_state_t state)
> +{
> +	if (adapter->state != state) {
> +		adapter->last_state = adapter->state;
> +		adapter->state = state;
> +	}
> +}
> +
>  int iavf_up(struct iavf_adapter *adapter);  void iavf_down(struct
> iavf_adapter *adapter);  int iavf_process_config(struct iavf_adapter
> *adapter); diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 80437ef..740e68b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -982,7 +982,7 @@ static void iavf_configure(struct iavf_adapter
> *adapter)
>   **/
>  static void iavf_up_complete(struct iavf_adapter *adapter)  {
> -	adapter->state = __IAVF_RUNNING;
> +	iavf_change_state(adapter, __IAVF_RUNNING);
>  	clear_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
> 
>  	iavf_napi_enable_all(adapter);
> @@ -1750,7 +1750,7 @@ static int iavf_startup(struct iavf_adapter *adapter)
>  		iavf_shutdown_adminq(hw);
>  		goto err;
>  	}
> -	adapter->state = __IAVF_INIT_VERSION_CHECK;
> +	iavf_change_state(adapter, __IAVF_INIT_VERSION_CHECK);
>  err:
>  	return err;
>  }
> @@ -1774,7 +1774,7 @@ static int iavf_init_version_check(struct
> iavf_adapter *adapter)
>  	if (!iavf_asq_done(hw)) {
>  		dev_err(&pdev->dev, "Admin queue command never
> completed\n");
>  		iavf_shutdown_adminq(hw);
> -		adapter->state = __IAVF_STARTUP;
> +		iavf_change_state(adapter, __IAVF_STARTUP);
>  		goto err;
>  	}
> 
> @@ -1797,8 +1797,7 @@ static int iavf_init_version_check(struct
> iavf_adapter *adapter)
>  			err);
>  		goto err;
>  	}
> -	adapter->state = __IAVF_INIT_GET_RESOURCES;
> -
> +	iavf_change_state(adapter, __IAVF_INIT_GET_RESOURCES);
>  err:
>  	return err;
>  }
> @@ -1914,7 +1913,7 @@ static int iavf_init_get_resources(struct
> iavf_adapter *adapter)
>  	if (netdev->features & NETIF_F_GRO)
>  		dev_info(&pdev->dev, "GRO is enabled\n");
> 
> -	adapter->state = __IAVF_DOWN;
> +	iavf_change_state(adapter, __IAVF_DOWN);
>  	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
>  	rtnl_unlock();
> 
> @@ -1962,7 +1961,7 @@ static void iavf_watchdog_task(struct work_struct
> *work)
>  		goto restart_watchdog;
> 
>  	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
> -		adapter->state = __IAVF_COMM_FAILED;
> +		iavf_change_state(adapter, __IAVF_COMM_FAILED);
> 
>  	switch (adapter->state) {
>  	case __IAVF_COMM_FAILED:
> @@ -1973,7 +1972,7 @@ static void iavf_watchdog_task(struct work_struct
> *work)
>  			/* A chance for redemption! */
>  			dev_err(&adapter->pdev->dev,
>  				"Hardware came out of reset. Attempting
> reinit.\n");
> -			adapter->state = __IAVF_STARTUP;
> +			iavf_change_state(adapter, __IAVF_STARTUP);
>  			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
>  			queue_delayed_work(iavf_wq, &adapter->init_task,
> 10);
>  			mutex_unlock(&adapter->crit_lock);
> @@ -2021,9 +2020,10 @@ static void iavf_watchdog_task(struct work_struct
> *work)
>  		goto restart_watchdog;
>  	}
> 
> -		/* check for hw reset */
> +	/* check for hw reset */
>  	reg_val = rd32(hw, IAVF_VF_ARQLEN1) &
> IAVF_VF_ARQLEN1_ARQENABLE_MASK;
>  	if (!reg_val) {
> +		iavf_change_state(adapter, __IAVF_RESETTING);
>  		adapter->flags |= IAVF_FLAG_RESET_PENDING;
>  		adapter->aq_required = 0;
>  		adapter->current_op = VIRTCHNL_OP_UNKNOWN; @@ -
> 2103,7 +2103,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
>  	adapter->netdev->flags &= ~IFF_UP;
>  	mutex_unlock(&adapter->crit_lock);
>  	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
> -	adapter->state = __IAVF_DOWN;
> +	iavf_change_state(adapter, __IAVF_DOWN);
>  	wake_up(&adapter->down_waitqueue);
>  	dev_info(&adapter->pdev->dev, "Reset task did not complete, VF
> disabled\n");  } @@ -2214,7 +2214,7 @@ static void iavf_reset_task(struct
> work_struct *work)
>  	}
>  	iavf_irq_disable(adapter);
> 
> -	adapter->state = __IAVF_RESETTING;
> +	iavf_change_state(adapter, __IAVF_RESETTING);
>  	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
> 
>  	/* free the Tx/Rx rings and descriptors, might be better to just @@ -
> 2314,11 +2314,14 @@ static void iavf_reset_task(struct work_struct *work)
> 
>  		iavf_configure(adapter);
> 
> +		/* iavf_up_complete() will switch device back
> +		 * to __IAVF_RUNNING
> +		 */
>  		iavf_up_complete(adapter);
> 
>  		iavf_irq_enable(adapter, true);
>  	} else {
> -		adapter->state = __IAVF_DOWN;
> +		iavf_change_state(adapter, __IAVF_DOWN);
>  		wake_up(&adapter->down_waitqueue);
>  	}
>  	mutex_unlock(&adapter->client_lock);
> @@ -3325,7 +3328,7 @@ static int iavf_close(struct net_device *netdev)
>  		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_CLOSE;
> 
>  	iavf_down(adapter);
> -	adapter->state = __IAVF_DOWN_PENDING;
> +	iavf_change_state(adapter, __IAVF_DOWN_PENDING);
>  	iavf_free_traffic_irqs(adapter);
> 
>  	mutex_unlock(&adapter->crit_lock);
> @@ -3710,7 +3713,7 @@ static void iavf_init_task(struct work_struct *work)
>  			"Failed to communicate with PF; waiting before
> retry\n");
>  		adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
>  		iavf_shutdown_adminq(hw);
> -		adapter->state = __IAVF_STARTUP;
> +		iavf_change_state(adapter, __IAVF_STARTUP);
>  		queue_delayed_work(iavf_wq, &adapter->init_task, HZ * 5);
>  		goto out;
>  	}
> @@ -3736,7 +3739,7 @@ static void iavf_shutdown(struct pci_dev *pdev)
>  	if (iavf_lock_timeout(&adapter->crit_lock, 5000))
>  		dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock
> in %s\n", __FUNCTION__);
>  	/* Prevent the watchdog from running. */
> -	adapter->state = __IAVF_REMOVE;
> +	iavf_change_state(adapter, __IAVF_REMOVE);
>  	adapter->aq_required = 0;
>  	mutex_unlock(&adapter->crit_lock);
> 
> @@ -3809,7 +3812,7 @@ static int iavf_probe(struct pci_dev *pdev, const
> struct pci_device_id *ent)
>  	hw->back = adapter;
> 
>  	adapter->msg_enable = BIT(DEFAULT_DEBUG_LEVEL_SHIFT) - 1;
> -	adapter->state = __IAVF_STARTUP;
> +	iavf_change_state(adapter, __IAVF_STARTUP);
> 
>  	/* Call save state here because it relies on the adapter struct. */
>  	pci_save_state(pdev);
> @@ -3986,7 +3989,7 @@ static void iavf_remove(struct pci_dev *pdev)
> 
>  	dev_info(&adapter->pdev->dev, "Removing device\n");
>  	/* Shut down all the garbage mashers on the detention level */
> -	adapter->state = __IAVF_REMOVE;
> +	iavf_change_state(adapter, __IAVF_REMOVE);
>  	adapter->aq_required = 0;
>  	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
>  	iavf_free_all_tx_resources(adapter);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 9c12846..e01b112 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -1743,7 +1743,7 @@ void iavf_virtchnl_completion(struct iavf_adapter
> *adapter,
>  		iavf_free_all_tx_resources(adapter);
>  		iavf_free_all_rx_resources(adapter);
>  		if (adapter->state == __IAVF_DOWN_PENDING) {
> -			adapter->state = __IAVF_DOWN;
> +			iavf_change_state(adapter, __IAVF_DOWN);
>  			wake_up(&adapter->down_waitqueue);
>  		}
>  		break;
> --
> 2.17.1
> 
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
