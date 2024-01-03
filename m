Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 607B0822AA4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 10:56:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6397D40B26;
	Wed,  3 Jan 2024 09:56:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6397D40B26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704275765;
	bh=FU45B1U7u5UDm3Py9bQiIhLCh2SvKEEvpumFfBYUUaA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=edmkk6D4KjDWjG1DciPOfYOkd+L58YNvp/GyxqipIsNJnZSOMMJyYYGb91fRf1OsD
	 zx2mZwx7eVoTUZcYNxLFdu775he7e2i5OgO3ukB7WEfkEpeA2ArSIa2NUgbFRji8Vw
	 f3T80SNDB/WEIGDI9H3vi12JEGonpE4CRlqChS+rkKE8mjJsGtAamJ+sohNE3RNuol
	 DrsYBmoeqyNuI2oKUDPXuHOae0H02kWchwm9vjzQvNhSIn7LwuXD2X7N6JP6Pr/Rf1
	 h6HVOITqgNIjP0eI4paSiJWB4u+SExOGAHCpiKQ7+JY3Xd+Z6ZoHzikQzfz6Z8jpVZ
	 mIgnVvNNO/hpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LYfOIpn_FPtH; Wed,  3 Jan 2024 09:56:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE20A4012B;
	Wed,  3 Jan 2024 09:56:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE20A4012B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6ED81BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 09:55:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89C2360ADA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 09:55:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89C2360ADA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 13Mnfprx0Eww for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 09:55:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 730E860ACF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 09:55:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 730E860ACF
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="395863704"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="395863704"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 01:55:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="28322763"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 01:55:55 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 01:55:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 01:55:55 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 01:55:55 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 01:55:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FUoVHyya/RVfmAWdnhFCL1pBO2xkyr6giHKSxXydQcCgo9mBIjxbxxAxSHukYY1Kfd5ie7sVa/fv/TB7I7Hz/MxZwKRRJijKmKK2raQcMgRxEa+4dHW5CeadtNT/h/7EineNKQkjE8UDDRtmGIfy8iRpGLTJQZMouowIR4KKylBjfRis9pnxZa0cG5FV8glKfcJkIXwK05jFtxNv6k7hf6ZXyauDcBht3SUDX04qLn80KfcLpbPDxIZz/rJvxk9FFeG5oO9I03aq4BrIhhOI5bBljnQA57Dz5GpB0I8XEtI4//dNPK2Ra8IJzmUMvNDo5L9oN/BGypL5AVqemNJGtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FU45B1U7u5UDm3Py9bQiIhLCh2SvKEEvpumFfBYUUaA=;
 b=nemHDoIQssQPzUheV3ZhEz7Yte4qN7x9CRddIq4d89cejE4x+2ZFxbwvbedK7eiuTwlpgr/xFIhVbn6GMP+wuLH3QkKtEb5162BbJzJd7z1/T7WHdF6BEcxCBmPU2e3bGMT5CGTe742C+MOFPsilJ10HcyX0V2V54Am9bDOweRS46mU0fEywhcJcAKTgAQl9nHXT+c1abzqZwdyMryhh7KPjWigP6X1rOFfuFjK1cPOP2h9qOp1/wVRUBkW4TnAINOqu8EDW6njYSiojpY/EwtFPAaivEHE3MkTKDc2x6SCVQ+64zeQ3+yhJUNvOzO4F3Ooom6VhuvFWwE9HDbBu/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by IA1PR11MB7175.namprd11.prod.outlook.com (2603:10b6:208:419::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Wed, 3 Jan
 2024 09:55:52 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::5dad:2b73:4255:aab]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::5dad:2b73:4255:aab%4]) with mapi id 15.20.7135.023; Wed, 3 Jan 2024
 09:55:51 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Staikov, Andrii"
 <andrii.staikov@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v5] i40e: Restore VF MSI-X
 state during PCI reset
Thread-Index: AQHaNBGLqUZyr/IvMkii0lbD2pPM+7CzwMgAgBQtCHA=
Date: Wed, 3 Jan 2024 09:55:51 +0000
Message-ID: <SJ0PR11MB5865C6DBFB079D95A390B6378F60A@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20231221132735.1246164-1-andrii.staikov@intel.com>
 <958b65b3-202b-fa73-8a0e-1f886d55df2f@intel.com>
In-Reply-To: <958b65b3-202b-fa73-8a0e-1f886d55df2f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|IA1PR11MB7175:EE_
x-ms-office365-filtering-correlation-id: b2ebd7bd-2605-4d04-3f82-08dc0c422b70
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +O0/N+qDx3iicD1W/X4JJWeKnLGqOMYbSCIvmLObz7K4IAD5VbFM2M3eqqXcAIptASXsxtPUh5oGFI8/zwnGSoCbFR9+RiXKbkGDNevafVPnfdjjYmyXT2sI4Snqfjgf+ENwlaNiH2NkV6aFaeSB1te4jmFDhhPOYgU+LHo0bZpsxK3bgG/BCbXqEDvdrMIbH8XwtCtVMhdF2bMKsCHXOkB2XkmZp3UZfRVEi0SMRblXA4puWdfoVMJUAl2uoKxzkO7+Tx8xx8KWpssK4N71jd+lBPhsl/IhIooiKeyTiXKdIVCFE3HdwXq51UEz5/B8OLHujs5Th+1a8ZTzUV+o7IoXTXohKpaMAZmC0GDMCqgNCHnaB5OZi/N1q2cB4qe7dfdN8iLF4e0JQsZHtwQT6YsXRoVKmiv3YSkLx9YB36OjrNfcfirlq7MuasVqj5kMpDUsWCeqndXaI6QodjSzvsV4J8CPom2tIwrWUaMyQQty+WTMjHukLBEdK34piFyMttt6iFVAA67gUbgKBuLugyQX7naGeosrC1RkHMCkOQDzUCIHLzQb2pGIv6L4KLyvsw4UNbx0hOFtGAIVGS1/YNVrcv39rT+jIGnDvPVjpIE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(346002)(396003)(366004)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(33656002)(55016003)(66899024)(66556008)(478600001)(66476007)(66946007)(9686003)(6506007)(38070700009)(86362001)(76116006)(7696005)(66446008)(53546011)(64756008)(83380400001)(82960400001)(122000001)(38100700002)(26005)(107886003)(2906002)(966005)(71200400001)(4326008)(52536014)(5660300002)(41300700001)(54906003)(8676002)(8936002)(316002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AVPSjzCxfsm8/fC1vEH/abOZsNHswTo0xbMXlWM1jIqVEEdqCboco/8cIpUM?=
 =?us-ascii?Q?xooiYeNyLuF6kzO6B98BfNM9zYoULC35RvnwtPnwNB6PD+g8JKNI3Yzt3lOn?=
 =?us-ascii?Q?6BWSUwcLipZckJPxuAwO6nypJEK+A9XsF2L/Aink/Z8Zmk23wDY7x17iRdAE?=
 =?us-ascii?Q?HKVYFgSSF+aPnDSmhu3+oNUAyR4JLvmrXWFTEB5KcMm0NiNJaqEb/pcW9jJn?=
 =?us-ascii?Q?R9cA2XWZ6iIagYHonGGUWObR64fdcnDpOlu+Z0S2+aRHbMhPDKrsoeuzKPZc?=
 =?us-ascii?Q?1r/7ZeygDL8zLo4513ZjHfo8XvO3pZWQKz49loJxKc/dh9bdvxmbSBJYTxdS?=
 =?us-ascii?Q?H+47DYLDd7WpyqBWw5sAWNhRescZNbbgc4ThuD3d9zBuCiRqqWSwUjZDRkvE?=
 =?us-ascii?Q?z4JrssnXHwlwXlSSdTUR0q0vjLwxOiThjgEYrfEmDH8MOSacvI5qvG1O7pPQ?=
 =?us-ascii?Q?ULolAxCGv4ZPpIdjx0LeruGEQ2sOeouAETdLpkD7rnC6r+QvlqiqbB2gfgrQ?=
 =?us-ascii?Q?3g4qS+xdmbhokrM5S830estrGsAjOG9RUkj+oxW9EZaiyKseEFO8ZoW1ONao?=
 =?us-ascii?Q?/qMPc7hvsnKWK+ngjThvuZ3vX7wr9EWe1X18m8aNEEzCcNmWP7Be2E40TrNz?=
 =?us-ascii?Q?20mdoucqmRWTRGxJnWA4IOn9ZyxWOv32xXYgyLUvTBqu8vc0pLkxNsl8SW9D?=
 =?us-ascii?Q?Oyv6vANCBVfwU7pSf/iKaSL6HVg47EdJnPSEn/j1K+V+HN6pLaKYRlgCQVy2?=
 =?us-ascii?Q?a+R2pb3vPR7ZytoDf398w187ePM4+yt0y4TD7O/qE71/0uqsxKsshefSCD4f?=
 =?us-ascii?Q?+3bpzotAaW17YHykc1gctVrHt6Pbxv7SiIllGbit5wtHNKbxAd2IiMo3JtS0?=
 =?us-ascii?Q?fKh0uZJ7loPjVC0Bu6lz2gJR4iSWzHvuubY87EHHDZBKGSO1/Hcd54mRu7ty?=
 =?us-ascii?Q?Dd/AM7CTiudc1dS0G6KzDOCuGlzLuDTJ7n6KJqeAdvyIdNEuAehLTZaMVN1z?=
 =?us-ascii?Q?OMcS2+OsZhqSAVOzyata48077RgdUUhn9TYQls0kCughAvW0XJZy+Mn51TMQ?=
 =?us-ascii?Q?UXJaURbaMN3n5//zTRwFdZbQiatPThyp9Bw7AbGQQR0cO6hGdeMDsFqiOYIS?=
 =?us-ascii?Q?f0k1fHwcQ7Imwfma7NYcEbjERn7gwB2PRI/acaRdU1Weg6xHwvdd1U3HlO+n?=
 =?us-ascii?Q?qtxLYW1RmlHRxOq4pfg8betDhB7SW3P7uBkgFfR3w9dH/D9AmgS1z7hV/7Rb?=
 =?us-ascii?Q?ZZv61nw16ZnqS9hoSynu4BjmpW17BZb0Bkdt0L93o7s3FdrmIBlNpWp7y+w/?=
 =?us-ascii?Q?BFvpG9Nv7ol6ZvPLbSErTTQHrI4oP7+F90kegfUNYTf8jNfYKfZDH/Y+QbK6?=
 =?us-ascii?Q?HnmY5jIvOAy42YfZVL/fubYjawVB75fPOpx35cnoTYTLVxPLI8YLbPL2X2rn?=
 =?us-ascii?Q?QljXJ+gMNFbdbjSps/VNHHt+jnzwt3eLcJIqzepyxix8fPwDWEJsfp5Y/+6c?=
 =?us-ascii?Q?eI18ocCG2AaNDNt/GwTsXjOsG59iOSK2UiHLiHJWlyXJtHS6Uw44+G3cKprW?=
 =?us-ascii?Q?ev1HHvUHRFY1e7jO/DXhv280JK9Mc3Qilolhd/5T625hnhQLYFyK+1Kpd0qM?=
 =?us-ascii?Q?wg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2ebd7bd-2605-4d04-3f82-08dc0c422b70
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2024 09:55:51.5000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ufK7vyh3eA0dInummOHcJi9q7ZSR3dFAVaASC7qHHAjeUCEhme9daDr0/49T52jNJgFLaqPVKvumllj8NX5FDpSAbu+9wzIf/HkNr4f1B9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7175
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704275757; x=1735811757;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8wFteMAlJ8O/mIiEFCiSdQWexXqSVEOEpDarN96lgzQ=;
 b=LcIiGCV/DbxlwDrzOGUsdwJuB/JmRRk5YfH/sJFMJKs2G39ZdBDwl/Gi
 xwxhypcY+kH+axfBKbY0QwIoVin7yZmVPsOyBmpZHa5ODAHWa57QBu9CU
 /C1K6sv4jJ1xq02JY59RHvMfc79yhD00/SrU6q6EG8dIFxeG4kaQsCr//
 zOX4hILo6cZIEwanGi9P1YN1I695tKGyBMq7bV8wIcHMkgGv9hd/sQW5i
 9/Y+73tmwYPnyBE61TA87OwAmFApZ6/2+ayUf1A52SSh7BcZjo4Aif18Z
 mPF2COkr0AqK20Yfvw+sQKfEOJsVjWo0ghPd2rQSTFII3hg1xyKBxNo3c
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LcIiGCV/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] i40e: Restore VF MSI-X
 state during PCI reset
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
Cc: "Ostrowska, Karen" <karen.ostrowska@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>,
 Mateusz Palczewski <mateusz.palczewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Przemek Kitszel
> Sent: Thursday, December 21, 2023 2:49 PM
> To: Staikov, Andrii <andrii.staikov@intel.com>; intel-wired-lan@lists.osu=
osl.org
> Cc: Ostrowska, Karen <karen.ostrowska@intel.com>; netdev@vger.kernel.org;
> Drewek, Wojciech <wojciech.drewek@intel.com>; Mateusz Palczewski
> <mateusz.palczewski@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] i40e: Restore VF MSI-X =
state
> during PCI reset
>=20
> On 12/21/23 14:27, Andrii Staikov wrote:
> > During a PCI FLR the MSI-X Enable flag in the VF PCI MSI-X capability
> > register will be cleared. This can lead to issues when a VF is
> > assigned to a VM because in these cases the VF driver receives no
> > indication of the PF PCI error/reset and additionally it is incapable
> > of restoring the cleared flag in the hypervisor configuration space
> > without fully reinitializing the driver interrupt functionality.
> >
> > Since the VF driver is unable to easily resolve this condition on its
> > own, restore the VF MSI-X flag during the PF PCI reset handling.
> >
> > Fixes: 19b7960b2da1 ("i40e: implement split PCI error reset handler")
> > Co-developed-by: Karen Ostrowska <karen.ostrowska@intel.com>
> > Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> > Co-developed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> > Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > Reviewed-by: Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>
>=20
> should be "Przemek", but no need to send next version for that (but pls
> promise it's last time ;))
>=20
> > Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> > ---
> > v1 -> v2: Fix signed-off tags
> > https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20231204131
> > 041.3369693-1-andrii.staikov@intel.com/
> >
> > v2 -> v3: use @vf_dev in pci_get_device() instead of NULL and remove
> > unnecessary call
> > https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20231206125
> > 127.218350-1-andrii.staikov@intel.com/
> >
> > v3 -> v4: wrap the added functionality into the CONFIG_PCI_IOV define
> > as this is VF-related functionality
> > https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20231212122
> > 452.3250691-1-andrii.staikov@intel.com/
> >
> > v4 -> v5: fix RB tags
>=20
> there was a question in v4 from Jake to "perhaps do it like in ice", but =
I think
> that for a bug fix it's better to keep this patch as-is (review always we=
lcomed
> through).
>=20
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_main.c   |  3 +++
> >   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 26 ++++++++++++++++++=
+
> >   .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  3 +++
> >   3 files changed, 32 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index 7bb1f64833eb..bbe2d115fb15 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


