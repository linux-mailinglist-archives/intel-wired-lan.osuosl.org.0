Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B49D44A48EB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 15:04:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E279B8271A;
	Mon, 31 Jan 2022 14:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3lifp3DmoCRm; Mon, 31 Jan 2022 14:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08AFC81D73;
	Mon, 31 Jan 2022 14:04:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13A371BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 14:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0778460A73
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 14:03:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a5vWwj4VxoaG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 14:03:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2700560769
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 14:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643637837; x=1675173837;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bnYl3yuUBU2ldgpXEqYLe7ea5jFpcqS/K9oth6214b8=;
 b=EnES8LMKsnoRMnuwk1qw4OJxbcRNB52Em1ZKdCyE/1UrWSxBU4psUyjw
 kGYzhlIkjRn6jUaHL1hFOoxkEY3ErcpTf+XSwmMzDWMk84i2Kw8Gn7pCQ
 qQvp/EYN21uijQrdsOPwhYkXXYSqdlJ4KnJdyUIyulOwV8oTl575Dw0Jx
 i/tzglkVyd4/8vrO31dlHHzGr1i0CsODKIZBT83PVPrbSMeIk7wLxjZPi
 UGMf9y99dCPTXPc8hKVY1JxdJqiZCTCuqQZs3fXnJUFyVeABlRAkqi9ST
 69CT+CKt2P7AUKJv9mMe8iapXLdOAt00kEolghh995jxtKo46w/OYqGS6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10243"; a="310773733"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="310773733"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 06:01:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="770772211"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jan 2022 06:01:51 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 31 Jan 2022 06:01:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 31 Jan 2022 06:01:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 31 Jan 2022 06:01:50 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 31 Jan 2022 06:01:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gKKtJ6eCx7c3972i8QpMhP+uTQn91B3aACQLAYf1pV9CzRth6jGWw/7Z8pbpWegsteEyvHjPiCSY5Su5TCvyo0a0DHauie3aEOmgYzCt1VWd7FLWaA01N2Op2nJovDh6ZOEBT642C7AmC/HV1XrHvEkW8wuPz16imNu/QcB6ZlP6bCmPgH/A38GNppVhSBSevBvwi8/7rOodE/BV71VQ8iUdqiGuk/t106QDqxits44Sk0hlhYgFzEjCpsvevIwNI+gNKUb9u1NMxxMbK2TcERxpaidXVOwHUZFBjDgFF+T83Kln6NRG6rKJJkg3igNPeU7aKLILwEdigwvNHzhDiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LOkRd+mlyQFcyN+53qKMBlWgOyNyt1Z+DvNfWQWDce8=;
 b=KDeHs/gqvcZcdG/C9J/qvg3UdkfXm11GYD/3v77xlTBLXLTFgOBoxDoQH/sqdtVes3yuhmY1pjb8zO2McSSecUPETrQFK/dfWf3q0E9Oo3bwu1Z4Y3oYZTIU75ORtEaN/kLDzUlDsqqdSS0GeQgoD+CBKSKNGWFrWuNj1XKw9AhVYcRWiVuZrWRq+6N6apyd1tmnB6Y8UvYSOX6rcNp4M7qPMPm0vlj8wpuKGzSnoO0pyNgkKrutEkqaf8UXaiFy3UWSlZfJGO5wS35A5ttxl8gUyd/tcL1tc+sr4WcIwcVhB9aJV5Qg7DVDDx7bGO5+TylzyXmTIv7xGlS/Hr0daA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB3211.namprd11.prod.outlook.com (2603:10b6:5:58::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.20; Mon, 31 Jan
 2022 14:01:48 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4930.022; Mon, 31 Jan 2022
 14:01:47 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 1/4] i40e: Add sending
 commands in atomic context
Thread-Index: AQHYCUl5nFeAmx+sKkiATJ/G390CNax9Q3Pw
Date: Mon, 31 Jan 2022 14:01:47 +0000
Message-ID: <BYAPR11MB3367563BE14B2BCB6EA01EF5FC259@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220114131931.346687-1-jedrzej.jagielski@intel.com>
 <20220114131931.346687-2-jedrzej.jagielski@intel.com>
In-Reply-To: <20220114131931.346687-2-jedrzej.jagielski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d99a1a9-f09b-4b93-2726-08d9e4c238d6
x-ms-traffictypediagnostic: DM6PR11MB3211:EE_
x-microsoft-antispam-prvs: <DM6PR11MB3211EC814AFFAAF2B38BF59BFC259@DM6PR11MB3211.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3eJaUCDNPVCqVGx/JqNG+OhHqp5r35DrfB0v5V36k02F+k2iV+XJzL2Y1QEWBtFFvxBZKSgBG3suWlmdIo2PLjCFPNZFRJqqz5yQBDk7JvbvtCm9mHnI9Gf8ByEj+EZeNDEQ8KLZu3pgcTBNRVFzrboBwEo12Mn9z2hXnc91wk5QhkaFbgytkO0P8tPuNGIkM5bQo+Oqd8Y5cy78KyFP2H5YWa3HnG7umQbSzCHicKIHPptORht9ZQquS81G7enSPqxaKbN+N4L6bWgJzlrSKSn09hb/Rk8Xn/Sy1WgSQfPdvXRP0T77GjfiA2hPr7bFCl4/KfrTfia5l/VBu8/IjfUJuaJxFYYLgE+oo+hKDEf3eEK0o7+GFvMZg58x5lHFrJoCNqaJ19AEkEQ1JT2UpZwaQ5+UIhgVrm+3xShThD08zOTc/uy+aSSj1099c6kv8TCSWkjGvdIlYUQT/t9X3YEoV/htKmNH3QPVJDGTsqldTBbOFAeWikY+mFNSkrIY6YEqOgllRnDXuc3o9qkVdgvIH4IgwwzKktz/AVFF0Yoh6mPxngOSJLArL7p2BF5kCXFTqczvB7zu+BmTpybTTnt3Dj2GoDRubPhH1hz5GD/4PK95xWyzsUM0LvJAhni1wL9ZDb4FkQC6/qzPPreha/k7TCwD8Ia7n3b9zBYaG7GgsExY+2QFDamAsXuOUuONtpGMwN6YGwTyOAQEtZcmTQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(33656002)(107886003)(54906003)(110136005)(316002)(2906002)(26005)(186003)(38100700002)(38070700005)(82960400001)(7696005)(122000001)(52536014)(508600001)(86362001)(5660300002)(6506007)(53546011)(9686003)(8676002)(55016003)(66476007)(66946007)(66556008)(8936002)(76116006)(66446008)(4326008)(64756008)(71200400001)(83380400001)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?M1z5+aH9Hc82F9znf+X7q3CEE8VuCP1nNtLXV4ZFIRPT4fHuejzIaG0PF5bO?=
 =?us-ascii?Q?c3hdjP8nrGjah+HKHN7ycJmDogN3h/XF0LHxU38oyMn0As6mhiaJQyoqyZCY?=
 =?us-ascii?Q?Hg1uTWDS4pf1U7nH6PPXuEuX1dtwwDX1foqBybXXmgOxDdaZsTLMYHyHGQAm?=
 =?us-ascii?Q?wUlkt9PfbWa63dAAXb9i1QN/0HLpRVoY/0fpWXdMqLTunsxJfa/CxKZN0pZW?=
 =?us-ascii?Q?LnvqAhCGu2REB99n3GY0zi+ebJkDKMff+0P/sOAWe9J2cEClyUy9XM1A7bwo?=
 =?us-ascii?Q?mAm2bLgm7ZF40Lw11sW4l6TSYN1OMwu94/mV+5U9n5jAUqkPhuXmnrEWdZHE?=
 =?us-ascii?Q?G71jofoKJ8JcnuNgMhrU1AoMDGOEdFIgPhHGxdN1p0gt/7+mKzIDvDA3ikZa?=
 =?us-ascii?Q?ekOZORX3oFKQIlVI2Z0PC24M0zdSaPkhaK0UFpgD9Mm/Pq/+DiMETAHRvUV7?=
 =?us-ascii?Q?drtANOwsyVcWHrvQODYPgaFUnh9HMPBbSubhrONpQDh0Xi310nL365nWlpnW?=
 =?us-ascii?Q?D7Zz51Bu0TwaPOWL2NynScelDzzs2HEjY7eusuzkd/KDYxSh/FG8EIqKi7N4?=
 =?us-ascii?Q?2TnP8t0VKAdXB6ArSgs7Ixk3Ah7Dn/TLzwtANUV+ouwn/lRucb2IBBlc3b9g?=
 =?us-ascii?Q?wrBTA9nGcn7LG+ccd/uC/LuCBQzOkhtU8dRJ1jFQVMJ4MyxEpCxByq8JjHbi?=
 =?us-ascii?Q?nyS268osf0IaPk67wfYetMRhxR03nkn5/ZXavPlCQOazwd/10PE3LiFVRbB6?=
 =?us-ascii?Q?znuOi2gyPmXdhZPxPVc1HktlLbDkI7ePaVfPVNVpzYxRl/bSsdLjzK2zIQ05?=
 =?us-ascii?Q?YWrOTYsGFlpYBaZF5zSF/25plNfsmZ+wxJEW2Iz3WDi0lBFjPYugZ+cs2arG?=
 =?us-ascii?Q?SCXhURYD48G+8d3vYyuUwKS5h8SCzlgM6ZXUlNgYvoaImw4yB2Enxh4b754V?=
 =?us-ascii?Q?ahsdzOvOi19niL8oRk2dHnjvfo5rbBOdHa94UrW6xSmCgnXypLafxr7mxDOF?=
 =?us-ascii?Q?CquqI5M9umF661Ov9yLajuKYtGK6yZRO70EkNP835fc5MvkvKB83SCf1Ipfw?=
 =?us-ascii?Q?uCNea2oTIirfb1bnXyx514w1LddHu9e6q/2BhbMb5MY+RprZ+wUtxV1sLgdl?=
 =?us-ascii?Q?5iuV9z/4Tv2OKIqz19CMcGC4ge+xyo128BSkl1MS+88i9UO6gAZinDeu58bd?=
 =?us-ascii?Q?aAmn8SjQykKWwX2rUHjkcjx/8qR1FX/V4/8QdWPg33CRcuTbwzBc2EjLWO0Q?=
 =?us-ascii?Q?Wsgtj/Suv9J4aeIJywQJn00Bz2CS3zpN6PmlSUNX51/Jg5jBiI1cNaILfF2+?=
 =?us-ascii?Q?BSAEw0RfAiBXfYPuNWDP1V31eiMrVDnzxNJxnRbd3dQUtmmnOIVg0IXgdpvW?=
 =?us-ascii?Q?ZfJbjIStSWh4ilhR9CvIxt/gbAKusTfYBe79eb5iaIJEpwtbr4ShqUlpEs9r?=
 =?us-ascii?Q?9yOC9Yr5yrMupIaLwl6B4+WMEJ9oX21riUnkMrBhl/0vbRs+00VIws3Eafdz?=
 =?us-ascii?Q?FP27yBf9sRT2mfag2xs5k7U+0gyjxAqYiDMdSIuJHH/3MI72esB8uDREylUJ?=
 =?us-ascii?Q?8rH0isfYSOQueqGviqmbQVscrxcKjRgzmbc+JYqWtg8bWbzNAR7yJf8KOvQS?=
 =?us-ascii?Q?uA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d99a1a9-f09b-4b93-2726-08d9e4c238d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2022 14:01:47.7045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dtrmr/HLPeAHV0BVaDli0JFMA78ZBZIH2cbOK8Hjda7INskYnFsEo0LWvpM0x0uUogkYG/YztUZ6JdLHwrs+LQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3211
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/4] i40e: Add sending
 commands in atomic context
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
Cc: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 Witold Fijalkowski <witoldx.fijalkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jagielski, Jedrzej
> Sent: Friday, January 14, 2022 6:49 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Witold Fijalkowski <witoldx.fijalkowski@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 1/4] i40e: Add sending
> commands in atomic context
> 
> From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> 
> Change functions:
> - i40e_aq_add_macvlan
> - i40e_aq_remove_macvlan
> - i40e_aq_delete_element
> - i40e_aq_add_vsi
> - i40e_aq_update_vsi_params
> to explicitly use i40e_asq_send_command_atomic(..., true) instead of
> i40e_asq_send_command, as they use mutexes and do some work in an
> atomic context.
> Without this change setting vlan via netdev will fail with call trace cased by
> bug "BUG: scheduling while atomic".
> 
> Signed-off-by: Witold Fijalkowski <witoldx.fijalkowski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 21 +++++++++++--------
>  1 file changed, 12 insertions(+), 9 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
