Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6C34CAEFF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:46:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07C0560F28;
	Wed,  2 Mar 2022 19:46:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Epirix6C3AoE; Wed,  2 Mar 2022 19:46:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F127E60F1E;
	Wed,  2 Mar 2022 19:46:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 236211BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:46:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1012D408D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:46:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9eV_qX0QQlRF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:46:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4EF66408A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646250376; x=1677786376;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ujBFN5P18YGMvLdt5eIvNZ1fayN/2+VayJAERxdKDVo=;
 b=bN3wRMhtja6yVdijoAC3OcwnYc9WosAWhs+L01iQ0XsgOkxkfum9laj7
 lQ1jRRIHJn9sNJZGxno19t6FtOFeSJQ9cud6UF8IUmuvy5yqDKuU0yPVe
 rAVDy9W3vgFDyQegGaM4wvbjWZk1YYgq7if56noZkvu5dbttG5AFH6QuN
 AAfcA/JV88xG5CDSHLaLn97kp/AthpiE8QDxsowiy1Ad3MAns7a//owGN
 rygv1OJW53lMOyWKx23D6P8l3h0na06QatHuKHdiix8R7ige6HBY2hic4
 c4lArrJrtexKEyEjP25Sjvl/GixBbvFKV8+pV3MqGxQKsRbUnIKpqt93D g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="234107641"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="234107641"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:45:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="508319085"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 02 Mar 2022 11:45:23 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:45:23 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:45:22 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:45:22 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 11:45:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fSk1uqmMGKmmSysMQmsgGLlZHFWlA1wb/Ej0Yn4dw8qKzFrgi/Qbtabwkn8L6qRothfVoApeb6yfn+O+dQ84wtVAni64G8QLwH3ocYOvSJO4ZBGnX2g/3SsKLzkxmVAKV+mSRWVXvdUpM/BMHHd/vLpEjjsmmdtu+7esLepnK8pIU+1o6EKkSrCfHwyRBwRWyBlePx3lD9h1UhCUZ/P3r1yWGiT3EbPCvTisBZvQAnxf8q4emCKFxYM9t1tx1wn2dGCuU7fNtQpiHYq9iEneM/QnWUNg63QpSHGFylT9JdKA0fonnr0TwSGjnL8/pKPTV9sMPuI/3aIH+XFXySppdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LC6xGyiP1VvjWKrYHOeeyiZQ+H6vR4qNU5X1MLEHvBo=;
 b=O9Rb5ohxB9SBl5RkQEsvbE3xdILhV+wF4cThBkfUShUA5jijEvq4ijiHz3XYi4VUMls4mm0FhrqbtieSvh8J0tu1XKdxrp4Dmbl/uynTuqxGEBJ5L8daykg1Sfs0xSjb2v7L2VykLC6cUpzIsHlIQ0H8gnb+7X5v3dCe0qjejLdsWATszUnHKE4Ia9pKH2VRoLkZ0imOfD+dl7VvP+/4YSWJ0yTpyC5T5B/1tCGH4Rp6hKdNy3yw6U2ZEgk07b+FR6TrAXaoYkk2pMtHGKpnBnwc+j7ErmJgJs6ZxaszXKgsmP8wIBPimHEwWdAgFuoxzuOhQZ25+pOpqagFcmlHHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BN6PR11MB1617.namprd11.prod.outlook.com (2603:10b6:405:f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 19:45:20 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:45:20 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 22/25] ice: introduce
 ICE_VF_RESET_LOCK flag
Thread-Index: AQHYKExd8E3oVbWYe0u8wcn5572fQqysi2iw
Date: Wed, 2 Mar 2022 19:45:20 +0000
Message-ID: <SJ0PR11MB5629E29B74090D43C009CC41AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-23-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-23-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: 2720e7ee-a8ba-46ad-818a-08d9fc852f46
x-ms-traffictypediagnostic: BN6PR11MB1617:EE_
x-microsoft-antispam-prvs: <BN6PR11MB1617248626B78EBAFF9322A7AB039@BN6PR11MB1617.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hEKIydGJLA93DbsYErv3BKUldjSSiks1xjnnFNyvLeQpF0Mrkt8jwrft26lIZPKnn8ZFNMw7WGA5EkceoKo1wzQ8VnhzjiLEhkTP8sJR0uWRcc5HjVzDft64/xPZp0bTTFLKWUlqSkSDrtYQRf2r9dFAYpS0aFxCiKqhgf+3i+JzHGZdRBFbDeS17aDNnus8Hq7na4Lb2Td2jrSEKhBXvHBybH6qWJ1JWdnBkTnM2kXCbsCjO3GBaVGUNwCuxcu97s1tQ9lCDQknwVMqrLkE2ptVNKr2/gZ6fl+Khl7Ob8rtqav3r3rnrkmmsj4D/aBS8QHOB0O8WiYOwIsIG8CG7ObAyNXIBgwIqVdBQJPK/eABmenaHFUSbEnXiAnBdKX5fkNBrGLp8A5nAbnIJgE/jhRzM1UfXp5Erwi1JV5FxSg/wm7b5iZjlHnRJLmeHpFPkj6qLpM90QML4hZZrpPawMSgSWWhLT+8L+tdgSWJA/kZUhqrzgxN8GNIb2PXOd4N1vgnQuVzl2J112hFWj67jOksFeu8/Su9OIn4mgIpF+S+UpyKMf5Ex425gdtCJ/JhvL3cHN3hQJgueHfc5+KYcEJvrWOnUCDAZdpyYGk3+GfD9jp+ZdhQvYHUDtiESdqpZxD+5dLTaDcAK+gbyGUtaMU1tanfwURiJBF6H6etJR0eXOtdus4bugQxxVPwwvFkaqAwGcqTVhmilY7cD0fWiQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(86362001)(122000001)(8936002)(38070700005)(5660300002)(82960400001)(2906002)(38100700002)(26005)(186003)(110136005)(508600001)(9686003)(6506007)(7696005)(71200400001)(53546011)(55016003)(66946007)(66476007)(66556008)(76116006)(64756008)(66446008)(33656002)(8676002)(83380400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ypSJU8md/44zpy3kEYbZXfPdVbQ+f0i5bnyiILx7j1CRls0B8kodYoAYKcEH?=
 =?us-ascii?Q?d/gw5rTmkxzH2TG9VdA1ioo/QwETQhFTXnqvbBBhz9BA58Xx8SOnWULcONub?=
 =?us-ascii?Q?x5aAqkdwIbqxpC78GsDZVhCn2BPYFV46OIfm373bKEBF0iVZeLpFzVQ5/6h9?=
 =?us-ascii?Q?YB2Al4jwe9qCa6LwHAPrda40s4wPNfVaGHq2OzlYUW5NlV43F7KgxL1/WVR0?=
 =?us-ascii?Q?DDoxlW4wmOQgLORG8CZcbygAmuws6XknOfC4sDkCRogX/73Tf5RDO3DyN6uS?=
 =?us-ascii?Q?JCGc820koQ8+3AyS3ka1gHLYqw3aKVWbp+YSq6S7c8lqPHpfdt3Gde9vihXS?=
 =?us-ascii?Q?F9VN1kgzuk8yIV28wlMneoJVzY/0gPNpzf+C3OJ0yhOeFwTpdnYHoug0YKW7?=
 =?us-ascii?Q?aUgvQlHI0P4OeJrYj8eDaUWJ60FpK0RrZqQ1DGXZ4BfikzDZiLBZKFr8guR4?=
 =?us-ascii?Q?V9b3fpkjE42XJi4yhLLv/VqM66LS5Su5pu5mZTD8DzfGKfRmOu30hvyabiif?=
 =?us-ascii?Q?rtHr8TU0Effkhqbvwf+SUsmzpBAZMrGSB4bjx3MWoW14K/FF+bJckuUP+FXA?=
 =?us-ascii?Q?c3H+QvnpWTofGmNOAxsXgR/uCKZzoZ9C4E5rn1zwik8EQ+F9fkqXy2+ZQU5L?=
 =?us-ascii?Q?PRtMLPLywcWqwE5hNlRXEaDwREECsbU9js+H89lvuCJF3SWOO4kUt0vlTm7X?=
 =?us-ascii?Q?mVvj1DfbeIuqykmhZaG14RfX7GvGf4NIxRDPGMjzoxM7E7fHJUCUxBa/yHDm?=
 =?us-ascii?Q?1oqJ8SbEV8UC73PM4J5QfKU9wl+ljt/FHQ3szX96LflUn3cR/hqXUHgO/sFw?=
 =?us-ascii?Q?P763uGdGN6zhgTMWaICTU421Z+LUMzr6++DU3on1gcW9L5qXhpE82lSNs64g?=
 =?us-ascii?Q?r0Dcs0RNu/O4mrKrLtGWxUGaxDVj+1QAoeES/QcI0LsPF+BjlzHkIE10VA02?=
 =?us-ascii?Q?X0DF9tvGCzp+3BQHyRUFX3C1ldLJHClyCABTYjaymf2s/LjIqd6BDtVdKgAX?=
 =?us-ascii?Q?2hi3qoEAX2OU9dF8OYJ2jT80tTrvxxfAlCF/Rd0AFpwzN9OrA09rWs0QloDF?=
 =?us-ascii?Q?TMwGlNvDJuwOYad4NeWi7WRjsBvlkPG8LqNQbGkPDhYqX0U5WCb7q2JxPmyU?=
 =?us-ascii?Q?aBVWcTZmIxcMV2zZ0+7yIGd4Ik6YUayzZLIZqhQ1aT/GzJTSxgrukM8QP93c?=
 =?us-ascii?Q?K2XDetmE2t0w89yvYbJk0GxAueSWWzqUcqL4ci/MVlqVtWCFvvTBmlpU9dWn?=
 =?us-ascii?Q?oqZfhIRehZFSgGVubHzJ2gmGentT6/iXOn4MNoWdM6wd5Gs/y2EWGok7m+k7?=
 =?us-ascii?Q?tJ2tpUj+UAZ+GdGeJzuE/JCzEXJMGJKjvYmyIpr+CId7tITyrfl2EzTWIj6Z?=
 =?us-ascii?Q?sfwIOKSWnfA4IzyYe7pWDkVrxzPFg/BIqmmrYJxTge4rjCP+1a/3Rb5/LM+8?=
 =?us-ascii?Q?4g0BgQet9L7kgRBvwe6f6lEbz21h+1hw70a/DKoGtF7fZLs4Ujtr5IbI3NPu?=
 =?us-ascii?Q?cadzKBNNEebez/3V1pFluk64zDB8g0NAZQRFQfO2jMmkMUkLg7vmHwIc1deZ?=
 =?us-ascii?Q?15dvKf+/daicLq4GgD1MCrUoH7IHqk8UW4TvbywTgZGyoSlqv2Xnc5cPE2s4?=
 =?us-ascii?Q?ENqxZ8bZwBKxZNi/KByKtBVzbOjQMHLCMMwIHk4x0W+f0T1x2ibiZlhyCqtm?=
 =?us-ascii?Q?U4oQtg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2720e7ee-a8ba-46ad-818a-08d9fc852f46
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:45:20.2854 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bS5CDCKU6VGPV4Vg71mTH8RFR4amY0k55LL/jzJQV4DTKQFZ3idjbKGjelGpjzcaefDxp77m03OmVMyZN2nXKnyfEJrkgciQxby/bHJJvzI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1617
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 22/25] ice: introduce
 ICE_VF_RESET_LOCK flag
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 22/25] ice: introduce
> ICE_VF_RESET_LOCK flag
> 
> The ice_reset_vf function performs actions which must be taken only while
> holding the VF configuration lock. Some flows already acquired the lock,
> while other flows must acquire it just for the reset function. Add the
> ICE_VF_RESET_LOCK flag to the function so that it can handle taking and
> releasing the lock instead at the appropriate scope.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c   |  4 +---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 12 +++---------
> drivers/net/ethernet/intel/ice/ice_vf_lib.c | 18 ++++++++++++++----
> drivers/net/ethernet/intel/ice/ice_vf_lib.h |  1 +
>  4 files changed, 19 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 9d5fa9840004..4f35eb039d9f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1957,9 +1957,7 @@ static void ice_handle_mdd_event(struct ice_pf
> *pf)
>  				 * reset, so print the event prior to reset.
>  				 */
>  				ice_print_vf_rx_mdd_event(vf);
> -				mutex_lock(&vf->cfg_lock);
> -				ice_reset_vf(vf, 0);
> -				mutex_unlock(&vf->cfg_lock);
> +				ice_reset_vf(vf, ICE_VF_RESET_LOCK);
>  			}
>  		}
>  	}
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 46d656d385c4..f74474f8af99 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1366,12 +1366,9 @@ void ice_process_vflr_event(struct ice_pf *pf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
