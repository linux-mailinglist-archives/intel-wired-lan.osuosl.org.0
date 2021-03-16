Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D99833CADA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 02:27:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D147C839DC;
	Tue, 16 Mar 2021 01:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KPUKD4emQcW5; Tue, 16 Mar 2021 01:27:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC15883926;
	Tue, 16 Mar 2021 01:27:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E5EA61BF325
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 01:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E16504317A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 01:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LqOW7cosmEeZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 01:27:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F288840175
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 01:27:08 +0000 (UTC)
IronPort-SDR: KhMCOTnLX5m2strBB3s25z5g26djoJc8ruzMv1omucKfarbXTj5eaESWIWnt78lYVY9mQA3N4N
 a4pJpk6PWObg==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="250546106"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="250546106"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 18:27:04 -0700
IronPort-SDR: rZM/XACXlUnE1UTupSqIohHf7OvOacIt2Zsmb0tnwLjx/T8F0UP+RzJlbtBTFw2i1gnRnaXTKX
 vCIMo2IVtQ8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="432845331"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 15 Mar 2021 18:27:04 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 18:27:04 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 18:27:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 18:27:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 18:27:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T6thRbLHPukh61dPxT4DiBJFH+Djx8NJUk3bGUzvJFpgL2msNkuefWLSseYIivVdj602aAOrR/abcuT9YMzP1mBEx3VxhW926MCK9vpC3lYY78hxqgNc4SNIVjAwboM3rwBn7gh6qKayJhs7yPFf7BpEXFGb5Zoy/70QbNV7E0bo6kFwEbsVs/o7OI19BA6ysJBDg7NrfGTo+4kglSsFTdoqgmZvA/IhI0fKZU5KuyhnmETZ/Cigw63plMf70qB6HPpVakcla4NLHz7dquGKXMX2ziQMlUZ2bvWIHb/zSXN0mjqH1+CKmJ2Ed7QEpbjz4PPOomDO7u8FI0FKFX7xPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sMD5ISaen0JFEb0jc0joyZx5RWyQX8brWgCKJbE99sc=;
 b=n40p6QrXb4vZwJfMx7TUk3TBwNgVhXvUSaeeEmuZMoctlDGKMtbQGl0Jf8tNCfJxmkqyad1S2zebwQIrCcz9iFhJK2UZLe844HRE7RuAxfm1gn0IHngtoohVTG0OuV/dmKDnPeRrwqMW5CLbTEMmuv2yjJedE9NfTFcg0g5zld/+SJ22fHRpJkpelZ6QOxxXTRkTn7xKXoVnxsi1yrCHRmgn4tZgA4cNQeXgFKMozS5Svxb9JwYF+LET8himDT8kHgglejaCnX7cVdSZE6vbvT9IrmkvyWeFDr6ulRLIEFAPoJ/9wOgBE8rL+Hsf/2xlyAKk9YQ4A3Cs3aJvRzts5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sMD5ISaen0JFEb0jc0joyZx5RWyQX8brWgCKJbE99sc=;
 b=l5WVp9byEiYwLgdhkKJ9biBSKcMe7AIQfzEGMu0IKSISg3yrq9+TpVEvTz2UGeDJLj7Rpm8ziaNrLOhshUWIlfd+dtH+uePhipzHyENVmA5p/hvBtIsspQspLnvAPjGnmPfMEy49TaKFeSNACObuEuq5/s+pNXGnxcer9qS6iIc=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4812.namprd11.prod.outlook.com (2603:10b6:806:f8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Tue, 16 Mar
 2021 01:27:02 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3933.032; Tue, 16 Mar 2021
 01:27:02 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: fix rtnl locking when
 setting up pf switch
Thread-Index: AQHXFzIQUn2kF7UHAEmVAjog77hLzqqF2Aew
Date: Tue, 16 Mar 2021 01:27:02 +0000
Message-ID: <SN6PR11MB3229E92D49C32DD80C5771B8C66B9@SN6PR11MB3229.namprd11.prod.outlook.com>
References: <20210312112115.14607-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210312112115.14607-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.157.218.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bbfcf2bd-650a-4fdf-f62d-08d8e81a9a09
x-ms-traffictypediagnostic: SA2PR11MB4812:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB481289284CB3AEDAB9F49EC1C66B9@SA2PR11MB4812.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:913;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: neTyjVX9qUUNNFRa0GNlfngLtERNS7M8d5lmPxsBfAdnKMEVsiqkMiEf9jL0AFUXwsAHXvt9hSa372Mf7yMnyjSjVacS6NMYNAq7QCx8sv5PAGbbJlY085nrG4b8E90E6gJNJpgd3KGhdPjjrt4J7DeWpqJ1Hc+fjvQ+j5L1chJVviQzpFBD00HHPfKSbm3Jf4evgHENX+lf2uNyvy0ZiyWuNYGupDiyG+hPFOCtKGp6GWu/SX4b0RTTwfJZDy68hrFIvtkdfnMg45+9hZGGh0gLcP2UqDJ34hzzDio9L5NfFe3Wn50aQp8QJvgjKlc1UjRaT8zecGmKIE/VxWvn3RQexa9aSLaaS9UppVzGU9juthrkxHvXzFLKL1eQcQpgClSj48jUdZeiKwA8SWQUznmbz/2D7Z9JQWmv38ELVkZTqQPgEYbOTEJB/BFWxVM3+D966XfNnH8HRFxnz8Qdm1IgIcw63tvwL++qb19gid4Vifaa0KCD8T+7pyOfcHGZQICKcNE1STUDlxQI0dHRMbeUTvDTtKt8hbn4bSOoheRc2a6/YO1G/DPU8K8sO9vE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(396003)(346002)(136003)(376002)(366004)(8676002)(316002)(6506007)(8936002)(66946007)(33656002)(7696005)(26005)(53546011)(71200400001)(4326008)(110136005)(5660300002)(478600001)(66446008)(107886003)(66476007)(66556008)(64756008)(52536014)(86362001)(83380400001)(9686003)(186003)(76116006)(55016002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?x05RWuNebgY4Cfuwv6ftZgjrP6XWD0qQZsN/GNJev/xEqtHch0Zyp55vHR/U?=
 =?us-ascii?Q?AH1O4Q+wKCTGTGdocPyXYbU5/ZdGr3OOqC+Hm8N+IaLN6fEeIxcO6WH/YJuw?=
 =?us-ascii?Q?2fxvX1EwHwYmm16qiuI1HUPc5eaG+99VUcBalXhXtBKyzXfSZygpuCcRsltH?=
 =?us-ascii?Q?TC4Gcv+0f/hIn6dV6GYTrzVieKJLobgEA0K3Yk6aaHNpYhhWiYJD44bXwAAc?=
 =?us-ascii?Q?sW1Tyadtyzs6pxrVbhIxWW1AbFnl4QJ9mlvZwixN66TVqVxh6Q2yNZfrbqjW?=
 =?us-ascii?Q?uC8nYEBE4V4EhXAZ4qrkkj/lW2jFcWRGcIVVXX4wDfE6TX2i0SfW7fEtiEkJ?=
 =?us-ascii?Q?woL4bQUEvMxq+13BJAMKqPlJPZzndKQ+TwQntN9Rmmuc2D/L7GNnviRkcs1m?=
 =?us-ascii?Q?tJ46iDChefjb4bOo3v5B9kASImu9QCC83XC1eKpUacU3yXgvV7oJA4s20rFl?=
 =?us-ascii?Q?2URHHKjbMDubTNscK5XH+BoAEm1XcO4GJjKyIqeGkRfdXbO2hTsJHSMsVjmd?=
 =?us-ascii?Q?JC04MvKGrLbv0ButfoIwz48PiUAvjj6fAju8AiCBf+lyYCEqERkyetHFiJzy?=
 =?us-ascii?Q?JtaLhB6nhyGJicU5aPiPzSY2faLVAHJs5X+p9RndgywRnXO3HY72sok+b8W1?=
 =?us-ascii?Q?o5Um2EeMym77rSxWFPAE03RNjam9vsiRfhyNkUX55uZQpeJdlw54ZsnNXb3f?=
 =?us-ascii?Q?Ul7bG2ZijSd90VlrZQSMFHJhNVgNoVOIMsj8hep8+mrpR771G/iKZsDTvbhY?=
 =?us-ascii?Q?5/jF6ZAbsoAfa5UgN6C4BeTTA9mrUppRONWo5eB81OOfBwNQa0e6HtCOcduj?=
 =?us-ascii?Q?sIiOQSY4DKhtSXJKBsn6sJ0EyZT68rDMqgaWdg89+Nl/PoaX6oGUgh4eTtAL?=
 =?us-ascii?Q?D4N3ZStEMTIe/Wb/Uish6yeWW8sSovuw4iJ1R8M97V+Bxr4y76DDHzAjGtEi?=
 =?us-ascii?Q?SetJYR2RKg1IHbkqYEI3Mx+yP1PtRSX+o2k/dHPlGUAzAUUjnclu6bv27JmM?=
 =?us-ascii?Q?Zdz928g5eXNTzlA1bodOQkFpyxi7RfRWwc4JhCSwmXCtLuyrZY+5bxYSxDC7?=
 =?us-ascii?Q?T6y3Q1vgt6ubjmVIONnpVqnu4+wIQVSteaKsWI1Lg1C32FYg9iOwGIIyM44j?=
 =?us-ascii?Q?Dm/Ie8ZFh8Zv4yV9bDZLD7YBFGXxTd4mHVDz/KErDg6jW1+COODb5Bw9zFIv?=
 =?us-ascii?Q?BJ5OqyZICrD7MgLZHsyoqWZIYT/Q3lRwV8rFY8J3BJk6Vxq0vmJCvkMlhsiD?=
 =?us-ascii?Q?KWiG9chn0gDDOe4Awsq8pObUMeV+xHXiQx3SQg1E+PY78Z+bPoniHkz2tlZ2?=
 =?us-ascii?Q?9Uf//+oyvtcP45mGXZJeTfPl?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbfcf2bd-650a-4fdf-f62d-08d8e81a9a09
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2021 01:27:02.3009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ENhK5N8xUm6IM0hhMHte7Y05gNm+j0Qx2jxljgfEk/xmg9JzthLuW9doueJA/ULTuymGhH4MuSAaQv9RjbdC8fIT95P/X+pqiL5d4UC47AA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4812
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix rtnl locking when
 setting up pf switch
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Friday, March 12, 2021 3:21 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix rtnl locking when setting up pf
> switch
> 
> From: Jan Sokolowski <jan.sokolowski@intel.com>
> 
> A recent change that made i40e use new udp_tunnel infrastructure uses a
> method that expects to be called under rtnl_lock.
> 
> Not all codepaths however made that lock when calling i40e_setup_pf_switch.
> 
> Fix a stacktrace by adding additional rtnl locking and unlocking.
> 
> Fixes: 40a98cb6f01f ("i40e: convert to new udp_tunnel infrastructure")
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 71f14c4..8c2072c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -31,7 +31,7 @@ static void i40e_vsi_reinit_locked(struct i40e_vsi *vsi);
> static void i40e_handle_reset_warning(struct i40e_pf *pf, bool lock_acquired);
> static int i40e_add_vsi(struct i40e_vsi *vsi);  static int i40e_add_veb(struct
> i40e_veb *veb, struct i40e_vsi *vsi); -static int i40e_setup_pf_switch(struct
> i40e_pf *pf, bool reinit);
> +static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool
> +lock_acquired);
>  static int i40e_setup_misc_vector(struct i40e_pf *pf);  static void
> i40e_determine_queue_usage(struct i40e_pf *pf);  static int
> i40e_setup_pf_filter_control(struct i40e_pf *pf); @@ -10576,7 +10576,7 @@
> static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
> 
>  	if (!lock_acquired)
>  		rtnl_lock();
> -	ret = i40e_setup_pf_switch(pf, reinit);
> +	ret = i40e_setup_pf_switch(pf, reinit, true);
>  	if (ret)
>  		goto end_unlock;
> 
> @@ -14659,7 +14659,7 @@ int i40e_fetch_switch_configuration(struct i40e_pf
> *pf, bool printconfig)
>   *
>   * Returns 0 on success, negative value on failure
>   **/
> -static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit)
> +static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool
> +lock_acquired)

The new parameter needs to be documented:

drivers/net/ethernet/intel/i40e/i40e_main.c:14680: warning: Function parameter or member 'lock_acquired' not described in 'i40e_setup_pf_switch'  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
