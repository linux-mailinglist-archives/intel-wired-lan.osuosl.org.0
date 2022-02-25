Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D78CF4C4A61
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:18:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C8EB40A84;
	Fri, 25 Feb 2022 16:18:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O_6wvxryzIDW; Fri, 25 Feb 2022 16:18:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A939E4037C;
	Fri, 25 Feb 2022 16:18:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 11C8E1BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2AE140A8C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z07YGwSP0mPv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:18:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E98ED403F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645805892; x=1677341892;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t51hzDtoxyY8AvRUTt84CQ2TcHCB3M85Z2AEWhonc1E=;
 b=LxSey52qFbDaYk9u31q8odhbX/VUT42STCktVJuVhEHD2qOSm9SeKAOw
 0E5OyaKPdvfs0aAHXaugnXJcfeXI9OadgCWxCk1NrAIZtPaPkPTtapAih
 HCnW7/Xb8AlXbVkSZs6zvLL3AShAeRMNPnIC91I+Bg9ZmO0TuYgSUhc1V
 ta895IO5WssoX7qfL2m0hUmm1qRiKqjT4dylRQy3uo32ostDD4YlX186x
 0p18ILGQTr1ODCr81e18L6cVhhyxZSk3W54cB/TG9Lom10GS4+g7KCNTd
 s3wbZxv/e2f+xaRK7omFd+FdbS8kJtVHS/zzq8tXZj83Z43LcO6MHV6ox w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="239928630"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="239928630"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:18:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="544099476"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga007.fm.intel.com with ESMTP; 25 Feb 2022 08:18:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:18:11 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:18:11 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:18:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ny+ematg1AxUOVtCaXLsNWDEe4HL5HMUXRWs+vsRcvncB9Uw7GbMdy5gXueNQowNlXkuYOAURv+qKCT+8eaanF+WPgwc1vMBSYiEdvMWBgOIro7ptQgzufVMXkzPtHoQjFul7YG7WpfegtDBSDAwRa9sxTHozdhK1GusxzluegB2z+ld3ylc/HU2h6FbZgMUkgw66AWyesmyRz1eXmo2RmMUPEasVF4YDQ30NSrB9GMaM4kykLona6CrcXeNK02dx2L9ch4RS2x6j39nzJ9ezxrksiFvUEH6Ub6u9Tt4nt+jZbfbpgjNiy2VoksdFkt2XSoLC/9n4bLtfx7wYexL0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NmE/mSjIjXk/zCddHI1RWQ+awQDlE1dJAIxxFlJKfhE=;
 b=VYoR4iXyhltGvi0tLX9dd/y1zag44u2IAL8JOcGkUl1DCjEtTBA5s8SY9kAlcG1rlW4MpZpsVaQddXG46GAIeX+XcP/Uu5tjdtBlEwIOLGjxgZT2jtja7w1zFpe365v2YYNkRg6gSQBM1EMbv5nJ0quwnOQ8q+Ht+MdhQ4Hs9/mkfQT7QJL2J62kJOzo6hlWPvkVQLM7vCvoZP74CYQQSRy/Ky9tyid6MQThmXELi2sxF4flIyn1uSjHcm7aB3HcCifGbUiwZoI/kGqkKpjD3e/p3b024aEqaJKrZKEcKErO36vCOqFRcoZW6MbfhuMjCfkz02G7wIDPhONItYWgpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by CH0PR11MB5476.namprd11.prod.outlook.com (2603:10b6:610:d7::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Fri, 25 Feb
 2022 16:18:09 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:18:09 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 2/8] iavf: Add waiting so the
 port is initialized in remove
Thread-Index: AQHYKLJcI3QEbXxApkqrVHeG/O+igaykdRbw
Date: Fri, 25 Feb 2022 16:18:08 +0000
Message-ID: <SJ0PR11MB5629B7270EE1BC6D8A4BA6AAAB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223123656.29846-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220223123656.29846-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf139a46-336f-4b0a-9151-08d9f87a698b
x-ms-traffictypediagnostic: CH0PR11MB5476:EE_
x-microsoft-antispam-prvs: <CH0PR11MB54764DF959FB101A8691E355AB3E9@CH0PR11MB5476.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PXlerMc2r/BZ5MoNb+7T1r82DIlD31gMTiGBoyq6EuambSZJ9O8LzM9oQk0Nrh8dP+MGDZjS1wif/H0RYrwIqPGQuifprDexGn1QvJK+DpFJoY1A+tkLhjTTQN47Q/NkKv2sQveorkp4raOIULDxFtsmWB+C8vlycRY+PS36SCfHUlkwl4h6nGAD6Z38nSliAap8y8vVEumD+AqE6jMwBC2MOkr/fr79k1alNZz/qlg3GbrmpN9AzKYg8rhkbr2qQ5D0bFzFP3JfhED0GmOkwlc5+pus97R8TNEqYrDgiYKGilLfdNy006UINhKV93HPM6dDk4lrI+I9mfDXdmcbtfrbiLCfvKYmff0aThPFni1wVa9eIYlP05D3XOJYk/3Hk9U8VsHOfbmCUV1vP+5J3QEYc3Gx0N706nCqNODnWMr7q7j9KzcsZpXKm7CobJpwhGTWQ80SjIzw3fME9iaa57il744QqNGT4++5MXE+1DIQz7krGBIQpj61iPlzYX5PKJb3NZryWKDjp5P2KAnrz9VzalCxqEe2lFUAUUlSGlcTC1NbBhQBFMtQbc+ev8LrCih27Rl1ycyrzxKLHgMOMu+6j+UlEqJgxapGmvD4v02uSRSuH06wX5/4WtlR2+7FRlBoi97xxlb8qsHYutYe7uvmyvvVJcsSDpn7KSc1F33WLIqp2Ok1eQNTkfryD0JJHVklZZ3FvrrDLQICy8Nx+w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(53546011)(122000001)(55016003)(6506007)(2906002)(508600001)(7696005)(33656002)(66946007)(76116006)(66476007)(8676002)(66446008)(64756008)(66556008)(4326008)(82960400001)(71200400001)(316002)(83380400001)(5660300002)(110136005)(38070700005)(26005)(186003)(54906003)(9686003)(107886003)(52536014)(8936002)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DcA0huXZhvG9BnObkdIaZsGkc4UiuNiKIOLflQqftDvPoniwXVcBhmpRZERZ?=
 =?us-ascii?Q?E0bZHVPk+FRxMXLugVROOxmJUZGY9plYmC9NbWI6plxzxjzpQ8CsVy3Axg0Q?=
 =?us-ascii?Q?ytlCH6jnsUIEs8MHuyM3tjD7i0onP+Ao1nKkDNAT3xubfSO2U3Zgf1x7eHTX?=
 =?us-ascii?Q?u/x/laCFb9nS+IG39jW09jlQOFkVAPJhbaSiemaVj0BSPvFdmwqLj13hLgLN?=
 =?us-ascii?Q?FjW6M0T1ZyFCImtSM3k8ysLqFzIHfzaII1XUfmK6gVuIQmlucK3XxZQpJqQD?=
 =?us-ascii?Q?Ku+8K+9W30zms+HurYNDzh+2Wz7RZiWZUbL1hLmGDCq1/dp6V0Vq3EEzzR51?=
 =?us-ascii?Q?70dTmFPmWRew/OEQnqz8/d5qWjejG2XsAXtc3kbdW8XnaMISn2d3IDAc/fDO?=
 =?us-ascii?Q?dGsZdT9tukAfIB3OycbD5jMNT7+HG/XzmrWyCbWx9P62RI/fqlu6D7SRpEZi?=
 =?us-ascii?Q?Zq3gFFqezNBH6LfYI9xkdUKT7ftS3I602iYvYEWAhnaySPsiYTWIMXj2XAxd?=
 =?us-ascii?Q?/uVLd/2ZTdNH0gsDTD5Cs7Dxsd3416+y4iS3nVKpgj0OAYegOKUyfvwXtotd?=
 =?us-ascii?Q?uhKDOE1p5wIA+ZJqFtv5XPm+OcUQsIlJ0iSw73whR3/5YdbdwKqjM9Uhimwk?=
 =?us-ascii?Q?hER2yOjpNAV+8nmliIBSuf6LP50/pgZKKHsAbO+IDBP2U3bU25WqNs112xKg?=
 =?us-ascii?Q?QqrLxJvT2lkwXY3X6/HNRW9L01eP4FYWb05Cjl851x8oK/gG80zOEfhgmmWn?=
 =?us-ascii?Q?OJnMap4HHmjCSKgBuiHD4qj3JLrluRTX9n//lxFzqvB3LiwaY9Ym+fUMTv1B?=
 =?us-ascii?Q?ozDZtNNYYQWf3SGcN07Dt6cj4RbNjF2zsn6N49nZpoWGjBfkvLkaxHUUcCdo?=
 =?us-ascii?Q?IlzD2gP0uVYaTc8JokLZ+fiXUVP5vKJaI3hJVqVT2QrsPKiiwHSQBelAJiO6?=
 =?us-ascii?Q?iHzbETLZ4L6mC0AmM/eXYfHYGdxKEegmdlghG4UpzBhxfWFCPNYXM8f3hlVs?=
 =?us-ascii?Q?45vxe5l/IlIi4WfH6rBj2CA06dSklOA6yHcZcyNhGIcWWeGHpKa878fClo5G?=
 =?us-ascii?Q?sVE37GDTEKEPK4gHljMk0tw7Jftm+4NYakN4AdqCbk65z2aEkrxb8GxtIKms?=
 =?us-ascii?Q?cKeL/4+0Mo9OvTlnmXJ24qscWNFtuyRWQlG7ulZhmFOHiHFInDcDQ5XbQxst?=
 =?us-ascii?Q?sR3Yi5hFjdnRjoLCd9gyVQYeCyyJbUMpN8SxDgVku+isc6UAKNFQ+9TuXdDd?=
 =?us-ascii?Q?hjUD6GnSwXX6zC3BWDsz52h6mfkouiHXJOMs2X7YkkVwveoSlQZpik/BU6BC?=
 =?us-ascii?Q?nATQj2Aw2i9w1KKBOItIyx3/Xc28hNZlK6rv+iOpcJN8KXv3f1GveLYP7Ir5?=
 =?us-ascii?Q?0owGuAp3X+DwamDz5Kpv1J5F7nW2oS318wDrlLq3eimnU1R91uidiXSaAxcx?=
 =?us-ascii?Q?8H1cUDlGUFlgEANx5LBv0GdNQdeVLkVngn+x3fxEJuwc4hCh69OOcJteHiZR?=
 =?us-ascii?Q?dy7+bRXncZva35Qlyz09072lyWbqBVLgppxBq6YMGga/OPFZOUqH8gwHEJyv?=
 =?us-ascii?Q?6JpLHsG0JKKeZwmxqKBhlShCt23a9/t5hWyzUimqB+7BBIA+fo+M6K8mblLk?=
 =?us-ascii?Q?xO98nNW2h9RbiwQvaAGpdBBDOdbJpxZAk8WPiO9dM80hSNnbGQats7sh7OA4?=
 =?us-ascii?Q?b6qu2w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf139a46-336f-4b0a-9151-08d9f87a698b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:18:08.9307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FzF7gVusxaOd970ILJ1cFKO7bh0Tjg8aGsusw3Gmt18PDhPTy9lfdfswIdbHaSxSBppE7xb6tkYppN8ndq65NGXGla9p9nTzjP3sv1XHF6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5476
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 2/8] iavf: Add waiting so the
 port is initialized in remove
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>, "Burra,
 Phani R" <phani.r.burra@intel.com>, "Palczewski,
 Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, February 23, 2022 1:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>; Burra, Phani R
> <phani.r.burra@intel.com>; Palczewski, Mateusz
> <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 2/8] iavf: Add waiting so the port is
> initialized in remove
> 
> From: SlawomirX Laba <slawomirx.laba@intel.com>
> 
> There exist races when port is being configured and remove is triggered.
> 
> unregister_netdev is not and can't be called under crit_lock mutex since it is
> calling ndo_stop -> iavf_close which requires this lock. Depending on init
> state the netdev could be still unregistered so unregister_netdev never
> cleans up, when shortly after that the device could become registered.
> 
> Make iavf_remove wait until port finishes initialization.
> All critical state changes are atomic (under crit_lock).
> Crashes that come from iavf_reset_interrupt_capability and
> iavf_free_traffic_irqs should now be solved in a graceful manner.
> 
> Fixes: 605ca7c5c6707 ("iavf: Fix kernel BUG in free_msi_irqs")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 27 ++++++++++++---------
>  1 file changed, 16 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 84ae96e..5e71b38e 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -4558,7 +4558,6 @@ static int __maybe_unused iavf_resume(struct

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
