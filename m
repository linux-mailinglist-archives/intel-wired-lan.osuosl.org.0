Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACB6495C6F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jan 2022 09:59:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B30D760EFA;
	Fri, 21 Jan 2022 08:59:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cBt9-1dOnLan; Fri, 21 Jan 2022 08:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A648C60BD4;
	Fri, 21 Jan 2022 08:59:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D4D01BF285
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 08:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 977108254A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 08:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D2u5iCOu00m2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jan 2022 08:59:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9905A823C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 08:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642755559; x=1674291559;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eweqE3d6I0X4nlSrz5cdIftoby2zV9lfzhde4Jnsokk=;
 b=BuFnmY6LEm9bggrIZ9Plr6ot/ap4cvmhONKG3SRjG449YirOETVVlzql
 N7GbVSB65daTiaFIqp4G/fCNZXpauz1kvnJtnhDZCEb7mvqWfkSKJYQRA
 CthU71ltQQGdzEk/g38ajuzZ+Lt9+ILqEZB08cbgx61S9FqwO4kQmOq/T
 vqJAWIYTez4Sca4pBfp4qGu8sg1kK2HDsmd9VFsbspjt1TEPCnc48GtX3
 S/XDUv0A9Ta48tPkHylKSh0YR/sNJk8KpyOtevQ9rv1r9qs76A3xZbJMR
 9RVlmFM7XuaBOh4P++bFkNir7RCtRY/Y3ogyfb3XGi6v39O5/no11rtPO A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="225586131"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="225586131"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 00:59:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="672879996"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jan 2022 00:59:18 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 21 Jan 2022 00:59:17 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 21 Jan 2022 00:59:17 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 21 Jan 2022 00:59:17 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 21 Jan 2022 00:59:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PnPpSR+TFoxd7eQcuR5hU3SbNO9vwfwihZvNAuGN+zlLdI5oeBNWZ8mSR98h9D1FzsWCLVBIRGFNPa7Eiwn5ihHiHuCBY5X4C0zfbNXc864+vVsOXPee1apcsUNfG1C0xnLSXCJnrlmQJ6wiGmvyXKeHVsVu0uN/RRZQ13J8VVUot+EKV9Qpa4JSmm7zvntrXhYDVv+ivJAffjrnpsfQRZPzBzTgulee2eT+ZAGWWztcAw7HKoKYs47LZ7zna12AdrQiUPQABfrRST04j0VfzlfOOTjp010cRz42HxlJo/78Uoun4aBE0GY91h3VMqU0HRZVnGHUmY1HJ1SRkoVOCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iC8iWktdPLaZAp0aFwODgVSThrqP/ECeQ1ys96g0fJM=;
 b=RPMJy/VlW7N/DiHDXTvXO7pnK/Z0ma7A4oU36tvuzjqnW3xtOf8Hw65txO50IKulb5CJT6mgDnSUPPUgn4Qxr7IgDa5asoAySA98gi4XdaE7u9r7j3WhuBoaSyCR/OwQzRRI64J3/jL5sZgi99klMajcqj4MKMTNMA4zou22JchAQwkjDgO501wTHnjdkqnc4m8U6mlD1d7qKP/5fTFDxigX0SJACYJyGCBhMKiI4PyAviTB0mPH+GAQASguTxW/vmUcqyCiW7feRR+Bb4hg2P0IKCrPL7/xSELyZUq1Cr9VpkL77auujgppiU1/kUufERQrfWr1zm6Hc21cj+ih7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3477.namprd11.prod.outlook.com (2603:10b6:a03:7c::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.12; Fri, 21 Jan
 2022 08:59:15 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4909.010; Fri, 21 Jan 2022
 08:59:15 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix reset path while
 removing the driver
Thread-Index: AQHYB5VC9tBBepUCjUqAC7ComKEY1qxtOwRA
Date: Fri, 21 Jan 2022 08:59:15 +0000
Message-ID: <BYAPR11MB3367646A0992556E8F7161BFFC5B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220112091947.132769-1-karen.sornek@intel.com>
In-Reply-To: <20220112091947.132769-1-karen.sornek@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a4ec06e9-d080-43a1-30fc-08d9dcbc4d16
x-ms-traffictypediagnostic: BYAPR11MB3477:EE_
x-microsoft-antispam-prvs: <BYAPR11MB347750186FB85AAA30AAB951FC5B9@BYAPR11MB3477.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X3d+DSQllgGiP3gLILLntOSkhbJpNI5y/il7W2zLrj1IGJKd72Op+rxeLsxsm2eOh2Mp721yz9STrHuDHohtkk7wtCTwhHA/EhoXXFsxa/OyggxQ8UsWZ9pbK+AgE9t4VjGe4I+fxRn8vY1i4QimAjXDuHYndUgpH5rAm7T1VvdyXhR7sHBzc4cwCBCOPxVQKOluW0XQTBQiwmPIqfa+ZLu8kgmkVxBe46gW+OpqBLDgfcehtks35onAiPyoBtQgoo7D9aP83IpEHdQDDY+ls4zlj5+XmKDGyWTGR3flanf3BPl/O1sIypOzduJNGK0AxJhOeXRSqYIxRjXEsWr5eLpKa6xUz+vbafd9pztNBFyOnB+6/ueoLwaOBKEaE4MmSWVX3oCZuYVAjbgAHNAByKBJJmzdeT5CGXKN9C9XpfEy1CIHT+9Cix6GwY6n9a0fAGEXwJLVWyd/SxEQPLHFLzC/JdgEJqwuTni5Xxdxe/lX0ylmWlJtC86+0AgE8GAwv6jPn9m3W92Jq6+9qMGPm50On8G4v5jhWYb/05h43krGR65CMfBgk8kABEKYutcpSFpeT2Ml+OCWJQqC8MhnlmLaMTMy2HXY9B8ILgVC/u006xVFW0NGTWG3ThZ7VdzC6Y0ccB3oebO8vRuruqEUaqEazqf0gf19M0HMyPMTA6vTEji71V+z2lqMBkG8D7hcbyPWjiwkJCspUvHMFgS47g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(64756008)(38070700005)(186003)(66476007)(2906002)(9686003)(66556008)(86362001)(66946007)(76116006)(82960400001)(66446008)(6506007)(55016003)(83380400001)(8676002)(71200400001)(122000001)(53546011)(107886003)(38100700002)(26005)(7696005)(52536014)(5660300002)(54906003)(110136005)(8936002)(33656002)(316002)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KlGPKm4Al4sEoRtECspDXrK2Ex3g2RndXg2C8zQuPwtNNR1ccchRF80az4XG?=
 =?us-ascii?Q?q07ttA2yC41XyMqcsnhJW0wWrgUk6h63rK6QRLO3OD6pavWGHDdWcbb1XdaS?=
 =?us-ascii?Q?iZY8h/2JWA3XG9PS4MZXBDD88sx02ORW1kgK3W6SLvymeeZP6clXHYgsgf28?=
 =?us-ascii?Q?6nz5Q9FYgU1hHvb3cjmNzVDcTajHWc35r0hYpamjVIfpRyBUk8Nx90hrkLPl?=
 =?us-ascii?Q?1zetiTK295ZcOtCFHwa1T/AoIS8Fv0cP+L37rbi6uXsXT61QjUrJyh4t7vYv?=
 =?us-ascii?Q?CvYwNf6DlCAjVgAQfQllz+YYocs2thiNZVq+fIGd+MdapzgQUZ8JdvYAE1Jf?=
 =?us-ascii?Q?H/Fm56+ncQwfv9vVKkkqVy1wTYed8GU4rc21b3UGoKdyi/1kv3wBjrxepw9z?=
 =?us-ascii?Q?kiIQS+hGut2sWLdtB/OlVWjqdSaYoR17iNUvHOd+9chtAsjhzf+m2H8VhLiO?=
 =?us-ascii?Q?7QViPp0gU2aufJK0Jcxl1Xp2O8o/B/Q0G3wjebkQY29JhJ0BXy+6O4Vndtmj?=
 =?us-ascii?Q?T/ksjUXdmYR+BfRhevcNwh0gdQuHgLCfZIuzGHcaWM3Ov9Zmy3Cog6kfgv9S?=
 =?us-ascii?Q?0+yYJke6OWOI+F75R0oQt/KzZJVJwV7u9MnHS4RpUbnKQ2sY+SofgfG1+aO5?=
 =?us-ascii?Q?al4aKgzmoszdMck706QEs42mpg3iHBV1sOCpl7Jy6KNZC1AviEr1TsawQwnh?=
 =?us-ascii?Q?7dFoT8YKDD63qvEjnk7GAFenMFsHsj/cpcQFprswJetD20NB7npSCmEMpb+u?=
 =?us-ascii?Q?JAGzqciqNPRuESwU7Z41TXRRXFbT1fOxB2KNOQhXXLYFRCFiqAieWo0Cy4cU?=
 =?us-ascii?Q?iRClp0ii3EAt+3kejzQCwq/07VR7N0mVU+HBlQw3DOQ7QuVseqr6YHHnYrey?=
 =?us-ascii?Q?GAk/b4ONVfu/8JDuiYNNwZVSb161asX7Wz7Ine0Om8ByDL6Zb2lfuOhzwPBx?=
 =?us-ascii?Q?KTEo+I1MCN3ljw9OYI+D2x2NaXulAoQ+LUKWgyTDSk0Btkmn/UGDa/UNlNVE?=
 =?us-ascii?Q?ls+qbPVpEzy5N0E0KYMaotpsTdk3kOGaocEoVh4dKUfz9p2RkiltMGnOB1K3?=
 =?us-ascii?Q?cgHZJ8+3N9LXeA8zvAzEhHt9R3dd6vWjDYx+clWZLymBzA3E/zEP6c0Pas9/?=
 =?us-ascii?Q?RmoEZLrxhDsMtsr2UYgqKJZGGa6c/EkWLqi9O26WT+H3sTlgA7JpYviEjg5W?=
 =?us-ascii?Q?QTSnfLhRAXqlQ/t5bY7+8oJbIDaoe1VqNQTlWyzKQA2WbPznzWgsoEtMhPIJ?=
 =?us-ascii?Q?7+GRWfbLVlwl5mVeJIP2LWsIBGSxHRO+QCsVZ69cHMmo0HtW+fVlFd4wKGu1?=
 =?us-ascii?Q?pPH2kNi3UacNnUwmL6JZ5hroguDy1YNeJTo/DfxjqN/B8wuTp2C95Q5WQrBX?=
 =?us-ascii?Q?0sHbf3KWtowtQ1TeFgpsiwjT0gktwSNAQ1S0b33VTP0tdx3pysVyrl2/O6Qd?=
 =?us-ascii?Q?SyhuArOzFDTeYH91JdKWLPRgH/OiggfdnNHdjwtKv/wnwdFn+rDJ6RlR+bnz?=
 =?us-ascii?Q?yhU0KfUzXlsO20PsOz+xW1yZ8UZiTyCIhWp08qnCDGY6LUegKs0F5dzbqrdu?=
 =?us-ascii?Q?X30Sq+ODmXO0CemGWqoK+spkQy9CfwvzHigjoWONimBK6VFNWV0ia5LtcFXG?=
 =?us-ascii?Q?oRlPmoy75qFealTa49f4BE4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4ec06e9-d080-43a1-30fc-08d9dcbc4d16
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2022 08:59:15.4116 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wKnWaG9ONogw18AcxrYLja7ZfCMa1lbp5FSqE3ABxSE8h5mxhtpspajofr9WaADIjLC63Ce5y86rmqseCYSMgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3477
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix reset path while
 removing the driver
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>, "Sornek,
 Karen" <karen.sornek@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karen Sornek
> Sent: Wednesday, January 12, 2022 2:50 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>; Sornek, Karen
> <karen.sornek@intel.com>; Sylwester Dziedziuch
> <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix reset path while removing
> the driver
> 
> Fix the crash in kernel while dereferencing the NULL pointer, when the driver
> is unloaded and simultaneously the vsi rings are being stopped.
> 
> The hardware requires 50msec in order to finish RX queues disable. For this
> purpose the driver spins in mdelay function for the operation to be
> completed.
> 
> For example changing number of queues which requires reset would fail in
> the following call stack:
> 
> 1) i40e_prep_for_reset
> 2) i40e_pf_quiesce_all_vsi
> 3) i40e_quiesce_vsi
> 4) i40e_vsi_close
> 5) i40e_down
> 6) i40e_vsi_stop_rings
> 7) i40e_vsi_control_rx -> disable requires the delay of 50msecs
> 8) continue back in i40e_down function where
>    i40e_clean_tx_ring(vsi->tx_rings[i]) is going to crash
> 
> When the driver was spinning vsi_release called i40e_vsi_free_arrays where
> the vsi->tx_rings resources were freed and the pointer was set to NULL.
> 
> Fixes: 5b6d4a7f20b0 ("i40e: Fix crash during removing i40e driver")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h      |  1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 19 ++++++++++++++++++-
>  2 files changed, 19 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
