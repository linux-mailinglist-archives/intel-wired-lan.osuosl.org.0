Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C86A3A1CA5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 20:23:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA9BC40583;
	Wed,  9 Jun 2021 18:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c4H6AHCwx620; Wed,  9 Jun 2021 18:23:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C1BD4057B;
	Wed,  9 Jun 2021 18:23:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5EE8F1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 18:23:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D04260849
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 18:23:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JLf0EEWGRToj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Jun 2021 18:23:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2AB0B607E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Jun 2021 18:23:33 +0000 (UTC)
IronPort-SDR: 1eTgdshFOO2xP7YsgeQEjTFGObS8FAJpypHjR9gzEs6BYUY7T8efSr9aIFFVeDkgSXGajj+f8I
 e4JJxyMJGzew==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="203286570"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="203286570"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 11:23:33 -0700
IronPort-SDR: G5e2WJQjJEMiycGWoZ4GyJ0ccCbDQS8ztlZrCF1y+iSSYtVdep2tgFLhlxF72Z4W4EASqXZlzG
 mR9VZXYRyGYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="402395408"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 09 Jun 2021 11:23:32 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 9 Jun 2021 11:23:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 9 Jun 2021 11:23:32 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 9 Jun 2021 11:23:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gtpc7Hcnz2tTpw0zeYUlRHT6dF5+qyld9JlxLtQccmVcgssMDZkutXf1Qez7ERDUeTYf2sEU+ng8K3Cwc9GB9uYTfoHwVnkoZc0RGxzK9+A2X4XKCBXcfyOF4S8thlBo0TXjq4lWE39xuD1Tek3Ni65qN8xYlgHLLiQKNR34Dp33xS+AiFxJotIt96u6QNFvXNzvjE3VMhK1iXYroTbkaw19/zCGiQI0kGt5knHQx4fZymvre0rZe7LxD6mvYdLfgG8IvZshIVkW3YXaxNA5GNgtiFcD4ONzJAK+jx2B09bPhbrgCIDfFJVZ+FkfoB3SJX12DqDPq75UVp5HNsWs2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7VNGsqT5kdfeEnR4xuYGHtfDGm39lFxuMEJsOQ1t1Fg=;
 b=B/be5FApNR1G9sr7XGa92+WzhhT5Z8vhO5846QO8xyTwpg3//g2o6PT+hb2VTuOF+n1Pv7gukDoltP4O+VPTM0zi3ZrR0C8hTdz8m+NkHX1z7bZWGDggVecZwLrh+0i/q8ZxOqBLpng6dWTOR6Q0dQQQk4N/vTwvq0aKO9pgMcW+9PbrYN7wy3x0G1y4nbWwfa2CX4m8t47gPVnM9BMtwSej0GDMZz3l8HPdYkUyo4ovk5PyZ3XK46zKhP70tiR1R85H/uWiAPgktgU5BtZo+uA88f2nZn+dGHOtaij9fZTAhqhp49A8ZAxH4uleV0Bd92wl9NgT0PFRJGXTs08Keg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7VNGsqT5kdfeEnR4xuYGHtfDGm39lFxuMEJsOQ1t1Fg=;
 b=Uub193DA8VevCkmBT33EgKzQ2RoUDJ6icJKvoTAQDnQZrKlG+8jZNEDuxQXEVL/8qT9WQYB0Xz2VbWixk56lV6UUWZL88o9gET9PqCD2W4+mOz/2SsirNR8ntgMl7pm3/w78XC6YqFlxeKdhatFIy8n2TcYkWvJj680obmZ9FSk=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4921.namprd11.prod.outlook.com (2603:10b6:806:115::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Wed, 9 Jun
 2021 18:23:29 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4219.022; Wed, 9 Jun 2021
 18:23:29 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix for failed to init
 adminq while VF reset and for sync VF driver reset
Thread-Index: AQHXXR1np7hPIzGNpEuGiH7QRf3BvqsL/5kA
Date: Wed, 9 Jun 2021 18:23:29 +0000
Message-ID: <9afe652dbf360187d1a6c498cbe3291aeeabe0ab.camel@intel.com>
References: <20210609105101.88005-1-karen.sornek@intel.com>
In-Reply-To: <20210609105101.88005-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92af8a3b-3aba-404b-a314-08d92b73ae44
x-ms-traffictypediagnostic: SA2PR11MB4921:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4921F98658EE992947F63DDDC6369@SA2PR11MB4921.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z+kJXNDyARrkH+jZN445ZbWznhWfYlO4OJ7QWPTeaGib3P1UxMk5fQ2uzOCp1oXT7JBZRRVlnmeVFDWtdfTBr6Q1wloR1D66GiQJXnTc4LFGXTdFtke5Tg7isCaaPJLqFkdVAp38qrtUcvmNZvXhBVohW+ryjY+FEbDAwZwUkxZwM7HhUGOxqObABuDV7fmdEl6L6Eq25smZArKFMOOYmJ8qNNzqTyIjuGdC7STytICCS+kmY9g2nO11Jlbn3j/KUzMueb0u/36h02yVcyizE+leCEyWOQX2mXLHypY0k8OcfJ+G88tFSX90FMvjJg/BqxM05kjP2vJlG+AVaUbuAcB6WbGHPu6/i3EJO3MqLh9rv2AlIdlqVtcYugPjUFa76P8w1VW0G6dUAlBx9iX5ZCxRM9Wqkl33lfKdBtJNBc69OEnLmjRwmkrxF+ril6XrzSj2sNiK2bed7MDUGVWEsyXFK6t9vsmg8I/tWAX6/W4GwqtCYnFRETsllAIlMfx1vohTn6Svpq7BYkqq+UsMHL9KpveWsZn+YA+IEIEPA3I6eUM3VHpbh+uNR7FWegUoiWPark/4jmoVdAGRjhPJLmBBdtB+fdJSBu/3f97eoHU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(136003)(376002)(39860400002)(396003)(91956017)(6506007)(316002)(110136005)(86362001)(66946007)(2616005)(478600001)(5660300002)(186003)(38100700002)(36756003)(66556008)(6512007)(76116006)(2906002)(122000001)(66476007)(26005)(8936002)(83380400001)(66446008)(64756008)(71200400001)(8676002)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?azdRdXc4ZzBYS1IzcnJUZDR6STBZVHllQkZoOXJDTnRmdGJMZkRKNDBXSnlJ?=
 =?utf-8?B?Qnc0TmZVYXMyaUUzT2pBdUZvcjdYdlZSK29tWUZBZWRPNFEyN3dMcVFkOHdM?=
 =?utf-8?B?cDNuMFZ6TDhTZGZNTExTaGIvTFFUT2cxcE9lNXpOelM5czA1RGxKQjNsZ0Zj?=
 =?utf-8?B?Nmx0Yi9IaUdXMXZmY3ZNZkp0V3FGbkswaGp4ZEtybmxnd1dlNUs3N0c1SUhL?=
 =?utf-8?B?TWdTZXk5c2ZiQndXUGpsdkJIWnllOVVYNUNJSmlpaUhrZ0w5TWhSREEycnJ1?=
 =?utf-8?B?Q0ljdlJ0UkdHN005ZWJscm1QN2xoc1YydGlYN0YrQ2svK28zWjNqWFlnSjUw?=
 =?utf-8?B?UDdhTExWQm90ZkpFdXBRQjJsK2xPZjNxeHNUSlplSVdJTzA1RklpZnd0TDlv?=
 =?utf-8?B?UDFJSUdENUJVZ3AzZmdGZnh0bG0vY1hpMmVBcklXWTROalg2aE8rR0FtejFv?=
 =?utf-8?B?dlgrUUZIT3JPV1U0WkxYWjhFajUrbWtJYlJzenRPd01DcDJnelVDUllGWkpv?=
 =?utf-8?B?QWFUM0tLZ2xGdkZmdXkyNEZ5ZmV2WG44QWpKRDRFWUQ0MXdBd0ZMdjlRQ0hR?=
 =?utf-8?B?NUROMjZKeDhObDVwaXMvVUNER2ZhRFQ2c2ZhaWM5dDRRN2hlQ2FBMEhyWGhK?=
 =?utf-8?B?cGRRcWMrZnFQVUYzdGVXT0pMS1hlcHNOMHc1dmFhNTVyVHR4SzlyUDBFTkpD?=
 =?utf-8?B?UTZqOUkrTFpkWkVYdlIwYmYwS3JSdmkwZFNRT0RaVHdCM0FCdzgwSXZ1ekdI?=
 =?utf-8?B?dW5jK3ZDNTlDYVp0VjNwWTFKNEpUOGJvTEk1bkdmTzhzMDlISlBGUlAyY0Iv?=
 =?utf-8?B?Tis3QUtoMFVjVm9SUGxtUXdqK3doS0JZaHE2RkV5eXZjNEs2eEJUUVNqcUww?=
 =?utf-8?B?RitRUXE5R2orSlg4ZzFrZjlJUEphQ2luMzhoRFZBcSt4U3NEWndXdWtSTVJD?=
 =?utf-8?B?WXY1d0UxMXBnOTB6ZGFSbE1waGJlcU5sYVlXTklTNmlJYzdaQzZna1RZaE9N?=
 =?utf-8?B?REVZSmx0WERtb3ZLVWg1Y1VRQjZKeG1MWnV1ZHZZTWU5Wi9nVnhnamJkSEFV?=
 =?utf-8?B?QVFXQ0dXY2N4dVpJcFBVNytKUE5pc3VucjlGUWxqaTNrV0FYcm5rbEJUUzM5?=
 =?utf-8?B?Z3ZXbEY1dER1UWN1Nk54a2poNzNhNVp4UURLdjBod29NQmhnRmk0b3ZTakQy?=
 =?utf-8?B?OEJmOWZZbnZGRzBCWWJKMHlLQU1sM1ZLTWpFUjRFSzRybUZSdDlWVXlHc1kx?=
 =?utf-8?B?MVdPWDJSR2ZERDE0d0hWWDl2SGlKVTIzc2lXbm1NU2R3S3drN3B5TmNQZ2wz?=
 =?utf-8?B?c2RHcWZ2bW9weG5EUnBXWG1vaDhBbzNvdlpmcHIyc2o5NkIvR1l1ZWpmRExh?=
 =?utf-8?B?YXF5czRUL25HUHJuRHkvRTVFRXp0cnZxaXErZmV3WDlLajBLL2dOeE5tTm9S?=
 =?utf-8?B?eWd6dHV5dE8wanpISys3U2VQVDY5WjNMRjhKb3Z2TkxJOFkzVEYzMUxUWU4w?=
 =?utf-8?B?d3hRU2N2L2xUdTBMNnZnNWFwVXZqYk4rd29iWlpDbGxjV3BJdVBwYUNyMklw?=
 =?utf-8?B?aHRMQzZTdEZ2bjMyQldFNDY0UDNIeGRIZ2M1ckE2b0I2THlHVmFMckw4MTNu?=
 =?utf-8?B?Ymdja2RsRzdTUVlNbjVQUTFUNldEdlg1WHo4NGlKelcvTWw1bU1tUmJCZzVx?=
 =?utf-8?B?Wm5TeGR5bkU1NTVXUEdYVHo1dkd4WVRQNkt4T3BXNGRDaVJyVU9PT2lCZElm?=
 =?utf-8?B?aUZkWkhTdW15RkJ3S3k4dmN5NHptZlRxdENodUhBMnc5Y0xNV0craS9DSXli?=
 =?utf-8?B?a2diS1dzZzJ0aFhQckJ2dz09?=
Content-ID: <B598E941E53C484CAD2565E5D8B3B3E8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92af8a3b-3aba-404b-a314-08d92b73ae44
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2021 18:23:29.3553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QlIvHkHFrec9m4hUUVI7aS9PkVs2OJVVxfT4FVzMzxEROwtGxsZaaHFCitkSz9ucO5gp9M5yoHqbjO2Na1hMAsUCUKHbw3MminEwyojEi3Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4921
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix for failed to init
 adminq while VF reset and for sync VF driver reset
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

On Wed, 2021-06-09 at 12:51 +0200, Karen Sornek wrote:
> Fix for failed to init adminq: -53 while VF is resetting via MAC
> address changing procedure.
> Added sync module to avoid reading deadbeef value in reinit adminq
> during software reset.
> Fix for sync VF driver reset before trigger next one by PF.
> Change VF in reset state detection from check VFR state
> register to examination of enable admin queue interrupt.
> ADMINQ is enabled by VF after completely reinit admin queue.
> 
> Fixes: b40c82e6ae85 ("i40e: Fix inconsistent use of PF/VF vs pf/vf")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_register.h   | 10 +++++
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 45
> ++++++++++++++++++-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  1 +
>  3 files changed, 54 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h
> b/drivers/net/ethernet/intel/i40e/i40e_register.h
> index 8d0588a27..b5c741e76 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_register.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
> @@ -371,6 +371,16 @@
>  #define I40E_PFINT_ICR0_ENA_VFLR_MASK I40E_MASK(0x1,
> I40E_PFINT_ICR0_ENA_VFLR_SHIFT)
>  #define I40E_PFINT_ICR0_ENA_ADMINQ_SHIFT 30
>  #define I40E_PFINT_ICR0_ENA_ADMINQ_MASK I40E_MASK(0x1,
> I40E_PFINT_ICR0_ENA_ADMINQ_SHIFT)
> +#define I40E_VFINT_ICR0_ADMINQ_SHIFT 30
> +#define I40E_VFINT_ICR0_ADMINQ_MASK I40E_MASK(0x1,
> I40E_VFINT_ICR0_ADMINQ_SHIFT)
> +#define I40E_VFINT_ICR0_ENA(_VF) (0x0002C000 + ((_VF) * 4)) /*
> _i=0...127 */ /* Reset: CORER */
> +#define I40E_VFINT_ICR0_ENA_MAX_INDEX 127
> +#define I40E_VFINT_ICR0_ENA_LINK_STAT_CHANGE_SHIFT 25
> +#define I40E_VFINT_ICR0_ENA_LINK_STAT_CHANGE_MASK I40E_MASK(0x1,
> I40E_VFINT_ICR0_ENA_LINK_STAT_CHANGE_SHIFT)
> +#define I40E_VFINT_ICR0_ENA_ADMINQ_SHIFT 30
> +#define I40E_VFINT_ICR0_ENA_ADMINQ_MASK I40E_MASK(0x1,
> I40E_VFINT_ICR0_ENA_ADMINQ_SHIFT)
> +#define I40E_VFINT_ICR0_ENA_RSVD_SHIFT 31
> +#define I40E_VFINT_ICR0_ENA_RSVD_MASK I40E_MASK(0x1,
> I40E_VFINT_ICR0_ENA_RSVD_SHIFT)

I don't see that all the new defines are being used. Can you remove the
unused ones?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
