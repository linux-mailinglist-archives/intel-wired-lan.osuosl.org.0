Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9815E4CA40E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 12:44:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1941E82ADD;
	Wed,  2 Mar 2022 11:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v3Q28kogF9V4; Wed,  2 Mar 2022 11:44:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 140C58289B;
	Wed,  2 Mar 2022 11:44:55 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CFA4D1BF846
 for <intel-wired-lan@osuosl.org>; Wed,  2 Mar 2022 11:44:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B9FE8828BA
 for <intel-wired-lan@osuosl.org>; Wed,  2 Mar 2022 11:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id amiNmLVB1hrf for <intel-wired-lan@osuosl.org>;
 Wed,  2 Mar 2022 11:44:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DF20F8289B
 for <intel-wired-lan@osuosl.org>; Wed,  2 Mar 2022 11:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646221488; x=1677757488;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1Mj5CEfj3apsFYspdwm2KAmDdZDQkDx/gf9CcWhPWGI=;
 b=oH6fpJK0Qf7YKDpSKOGPMp9VSsPCq1O+Q+r/S6OKgWnHd0E9+X2cAyrA
 Exh67ANkCFCyRJbcaiBFBMIA426Hy9azMKl2bkO7WhsRH3dumFjz7MZQG
 jCiyNDQUnvZnsYQ7ZpKl8KsLYQm25uqiWBpHjhVgZiWNyFPC5c4m16sT/
 wd3YGKiXkR/UCM5wKoy+JpTkzMKAaVciOS7AsEUrO/CEzLhMptViCtW0u
 fE5oIDbU/i+ZwlkxX12vgzVU3ogCbXp14dkcNp2GZ3jOIyEqsYb9lf2Km
 T2UJESQxXcd5KSfi1/nCFDuTD+ifNEjUCZImovp965tT6opJK5SwxhFA8 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="278052605"
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="278052605"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 03:44:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="545472259"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 02 Mar 2022 03:44:47 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 03:44:47 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 03:44:46 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 03:44:46 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 03:44:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QqGVovhRMoXZl3IwnaHoijwxKzwI6AFvIHBa66ZZsPpAgCv8LpXRz52fmJ8o2IZjL7IpsNxINlopxsN5WwBdQKvF2l0ZnwNzoSxbxuPb1Ebjy+2wpsVqx0fDzFTUikOSX3yHl2PDs657PrbVSAefotUkSuQ6SfeF1MKY9uWKbgPZ/emjY+gqBTMpu6Yxr3Vbtr8hzzwm1TYsclKCD8+7d6wf6h3xtLoLElJ9YqNQCKLguS9S6nTRp1vxAA0Ug+Vet8FoBgImlfUbXa/wYtUl2fC+gxjeED8nVp36vRe1FggmN/SF8T0Eym3yK4z+NmJwQfIOu2g7bCCMlmEn0xerqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Id1wj85TdSwjFvtUpaL8sdk+11dLt8F/DVc6yRfFGco=;
 b=g2KoTs/4Mpu7+NiUEMDRL4hAHB0YbbaKzGPU1WR5WBv99CawaWlzmu2EdEMV2GIB3jZ6DwUU1F/Xvlg0mP3CPdWZ78buGHW/2TJKncQ2sBE3Dzf1nXf6wPbz3kZU0nXd3npfRuT+BocZDW2wH3za/7SIU9cfL1GzHFcRp5VPs3KMm+ijZ0JBwHsZ/51BFq+kYa4jVrykkMrB9hMBIXiUzzVYYOZrWS3gEjB2arJZjxaGCTXnAOZjg/VmJDrb7d5A2svjfXxsdMGFoFsB40u9AACGiwTfD/HwxKDIzt0i1gd+leyJ8RYzapixt5fK2Gq46g9BtoU70OI+Mzo0r/K/DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by CY4PR1101MB2232.namprd11.prod.outlook.com (2603:10b6:910:21::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.26; Wed, 2 Mar
 2022 11:44:44 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::e480:b70d:eba1:6177]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::e480:b70d:eba1:6177%5]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 11:44:44 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v1] ice: Add support for outer
 dest MAC for ADQ tunnels
Thread-Index: AQHYHVAw1e58sNpf40yVn9USnRPjY6ysF7/w
Date: Wed, 2 Mar 2022 11:44:44 +0000
Message-ID: <MN2PR11MB36140AB5C673FC6D671084518E039@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <164436876576.5021.7903773697130184451.stgit@anambiarhost.jf.intel.com>
In-Reply-To: <164436876576.5021.7903773697130184451.stgit@anambiarhost.jf.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e4d1092-8104-490c-c90f-08d9fc420b99
x-ms-traffictypediagnostic: CY4PR1101MB2232:EE_
x-microsoft-antispam-prvs: <CY4PR1101MB22323753181E2C6CF87551DF8E039@CY4PR1101MB2232.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lGQIZL6U5npD5xQFc5T0lUB9AzhMS5OtWSkpNelfTNTD9CK30GNQy5ls+tOK18BPE+I/vyn5kpGidbM9tZ02PUyNXA5hh3XFZ/M6sG1fpzlQSOzhddJHu/bT8SDCMMdxcAtUWtz+4dw0VAZ9ae0O6rx4SfoUGKAPxwQ6z5HXE8P+z+veqmjXO0BPwCsTyiSbMdasTbwb+Oz2hO6CseBdw4A8vWvY2rmiKSUZYWNqL80RKNJvOCzPCI9L2VjJCmGqUVd61JydJLQXfuP0hQveWtEjUvAKPhxjywJYpPi9qXf2h/2+fWiaLGqQrfaNIwmSnzLJKjuyjkV5FdPM44m32bKpIBMXyDhTa+SsckcZeV9c2NEOOcCS5k2Kfjl7/EQqMxQLeZKp86zlFlQ+9KcE6HzdjA8vQ8sONjDjUtcUDMDjlYZLB/rT3iEdxMB0kvDsmS1BGGXyJUEuWgTZ2Q1tT3cxQYLqSNKlOKhSNsjhZcMsSclsV/rHhyU4bLaIaW1HsmlqSo41nA0Dv3Xg9eFAuQ1JsPB1Hc+bceAwPn6P6eBUSXddxOSAXtNZcfBd/0r2nuO7oKutY15g1l+0mJRjssv8ZzB3+wr5G8mdRrMu6L9FLfgD1bLuFU2m99JNxTcjHIlS4X2LU9NAqU5YmMEp6LAK9kXJWzgxPKQK4mZQ5zHzOSHucW2uDJBnvyS3+Q5UyA3X+34lIHK2KePTdMM3HQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(76116006)(8936002)(38100700002)(55016003)(8676002)(83380400001)(66946007)(66446008)(66476007)(64756008)(33656002)(66556008)(2906002)(52536014)(26005)(86362001)(9686003)(5660300002)(186003)(38070700005)(71200400001)(508600001)(316002)(82960400001)(6916009)(122000001)(55236004)(6506007)(7696005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fjJcUVP7Cf7qWj1rywSSfHKTODUJ3wZO5BuT2RLFPdW6yRGdvMXQ9PgUXZe3?=
 =?us-ascii?Q?SM4egN6TBkGKU5Isj4KOWs2URpowDgZUPPYhe4pb/Jer3RQZV18h4TDuBdcC?=
 =?us-ascii?Q?LxJv0YttzxAE86wDFTUTg8t93J1+oCw5ZobqyM0VJ64zSCJ/Ok0MyA/3M3Vt?=
 =?us-ascii?Q?tQ2j4/hotAfM2LJwZDiet9K8JLhBGPdjcpsY4FSrljmpW0/YlK1CJ/1y39kH?=
 =?us-ascii?Q?LLUa64locdAM7rGfTecmjSHT86bT21HX733dIu/9bY1Lm1fvyiGfi6+08EAK?=
 =?us-ascii?Q?CLkzJsXND5TRgYA5xiEH/3Mg4g9vCSwPZ/r73QYE+TrWQ+tdVybFw/Gm/uwn?=
 =?us-ascii?Q?lhHkufiR5saJFsyfw6qePRTN9yiX0X/cCNW+z9cG3o5/kBB6++TwP75kdWbV?=
 =?us-ascii?Q?FZ8zxu3LCr1iIvnerFQZyZbxa8w9OLHgr2tIrrfAb66O44sOuU+Txpp+IOtw?=
 =?us-ascii?Q?GfTgjF28dMS/QtKClDx45FV+XyPoUhRCkGa1yiwYcVynFuCFn431/wEnW+Gx?=
 =?us-ascii?Q?NUuvpKgw5ei2RArqvijCJgn/lMPxkqIoL8n6dDm1jpSYFf8EZQmb5g5Yt9jl?=
 =?us-ascii?Q?eG49JaJTF4eP01LasXB8KwPV3Hadb88cYBJU+iLNw7L5oT9Wnn5ZN3dlajhu?=
 =?us-ascii?Q?d+5DTS0BgJj16+wmUXk2YLKuWRJecGJKPpD9opr3s0YUCePlxn4TGQ8FE8ij?=
 =?us-ascii?Q?le0HBu4NJ0X1jRRDkZLltYTLCHveR1cYeiabF92PVW4IaPMyh1O5wGfjc+HZ?=
 =?us-ascii?Q?OFxWXzUTlYqiaIZM8IL86UqMF+U1vGwiEj+spquUKFAyeJnu6SSlAcvyET/5?=
 =?us-ascii?Q?4y5hzLpxiypIYmaJ+Q1M2H63WBpUvbGM1dzWnmPAkkjjN4LrAQWevKd1EiI3?=
 =?us-ascii?Q?1dynZFLTappbFvm4htVpueiECRSTTI7IEqyNXXBVAymWlSGvTh+e2zXWXT19?=
 =?us-ascii?Q?BxtL9E6A5iDdpDpkfDxzMwF2Vt+Egz8P+PTpd29RvvWO7oPDJbUOV6t0xz6x?=
 =?us-ascii?Q?ppxRnIPfUGe1UDxQ2ZnjvkeviW1JrbRPx5PhfFzlT25obDD+GjfZCsPVRh2o?=
 =?us-ascii?Q?CH3xQR6XYy8Gp+r1YcQ0mK0RZNHI36y/IRy+u0iX3YcNAIIhCFS/DSHMw2BK?=
 =?us-ascii?Q?cBPpiAvau1jjoO+evUJjlfKaboWB+K0wtduZmyjjCQ5UVpY43ynf/4K+7muY?=
 =?us-ascii?Q?wFx6qLNilH4Kx4Ux5OP7Ul0fUbEluzgFg9hwQpjdiIQtCKwp4hEkJQgn1orW?=
 =?us-ascii?Q?jtvFsKzQDTtQRhkmZOK4x9qPtLDz8Am2xTcHk8wehevvf4+8yNBGt8r5yCSN?=
 =?us-ascii?Q?VpZwKU/krrIcqvkQiXRSsxd9XNn2C4RHDezTYytDFJrq3SYMr1RSgIlWigGG?=
 =?us-ascii?Q?83PCOhEwRFHKPNNRz35dM/pxfa17ZDHp3L+I1PQ72f2ujVPYaliGp82UmjgJ?=
 =?us-ascii?Q?FGGDv+iqbAdk4k98EV3veYlec62CeJhDnZ0obKS8fYcBRNaV4YrAUtujJDTT?=
 =?us-ascii?Q?HVrtdEP/dZ6L15lxLWDyMnDgvRpo4/52gCa6rM+B+K7sVvmxH56gY0Ane7sD?=
 =?us-ascii?Q?QuKicQi7tjcc1ocWjl9cgXyoyAS9D91OblFwcGeeQ+tV30+lBCnSCug63a+t?=
 =?us-ascii?Q?BA0Yp6+PUlvL9FgcVWP7rnqPiGTXDANsIXD2NsOh6Fw3nHngw8t0Nm0pUYMn?=
 =?us-ascii?Q?CwpE+Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e4d1092-8104-490c-c90f-08d9fc420b99
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 11:44:44.1992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bDbg2Xq6ZUIhT+SvqdpDrjn9c/ZXzQ7K4TPvMnduOgbFsS6w3AFGaWqypNUZPQwUEHpWthx0o4ck2qg1+CsId28mrNRGX3BK+XeWwqq/cUY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2232
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v1] ice: Add support for
 outer dest MAC for ADQ tunnels
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
> Amritha Nambiar
> Sent: Wednesday, February 9, 2022 6:36 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [net-next PATCH v1] ice: Add support for outer dest
> MAC for ADQ tunnels
> 
> TC flower does not support matching on user specified outer MAC address for
> tunnels. For ADQ tunnels, the driver adds outer destination MAC address as
> lower netdev's active unicast MAC address to filter out packets with unrelated
> MAC address being delivered to ADQ VSIs.
> 
> Example:
> - create tunnel device
> ip l add $VXLAN_DEV type vxlan id $VXLAN_VNI dstport $VXLAN_PORT \ dev $PF
> - add TC filter (in ADQ mode)
> 
> $tc filter add dev $VXLAN_DEV protocol ip parent ffff: flower \  dst_ip
> $INNER_DST_IP ip_proto tcp dst_port $INNER_DST_PORT \  enc_key_id
> $VXLAN_VNI hw_tc $ADQ_TC
> 
> Note: Filters with wild-card tunnel ID (when user does not specify tunnel key) are
> also supported.
> 
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c |   30 ++++++++++++++++++++++++--
> -
>  1 file changed, 27 insertions(+), 3 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
