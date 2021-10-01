Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE58F41F0C3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Oct 2021 17:12:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B86B844A8;
	Fri,  1 Oct 2021 15:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ct71whd7U8q; Fri,  1 Oct 2021 15:12:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55AB2844A5;
	Fri,  1 Oct 2021 15:12:16 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C5401BF41E
 for <intel-wired-lan@osuosl.org>; Fri,  1 Oct 2021 15:12:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A05C4163F
 for <intel-wired-lan@osuosl.org>; Fri,  1 Oct 2021 15:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5blkYa581yDw for <intel-wired-lan@osuosl.org>;
 Fri,  1 Oct 2021 15:12:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C86994050D
 for <intel-wired-lan@osuosl.org>; Fri,  1 Oct 2021 15:12:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="222261033"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="222261033"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 08:10:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="619202805"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 01 Oct 2021 08:10:03 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Oct 2021 08:10:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 1 Oct 2021 08:10:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 1 Oct 2021 08:10:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ny+e+XvPQFve0kdaRquPa+wmQUVDNekpNRshaV0SfokHV+fIGM4f9q39Glo+4kZurgHxVZ27UIXmPNf7wg8BXXJzpt6UBD8SLNacKgaezChRDtanVCk73RSNKAXBNzzwr9LFAqCjgS1Xp42UTw7ROYpZvyJIDwtOoNv2WS6dKyp/HGzHzf2esoJN3mRCANJYqmunShaxyzcnyUNyjsDscIcbFYG/fXkKEswXhHH4IjleUH4Rflr/vwGgVDu7FssoWKM8husKpclWpRD4N3QhUy0/TTRIo8EYrNa55a8UP2VD8pFHsHCrvKEBfxf+6rwS8PQNgKqito0NaLLyD5XGxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zl6eWYHIdxfDWBepss9nl0pOZMSFDnrtMkepTieKUZg=;
 b=fVDqVuZoaNLJxVcJl0ZlF17HX6jPtvJFOj2a0PYHSUinjUROqoQ+JTujdfCPVFu3oyc7kuZv/eMHVeGpylUlq18utVtJztqgBh0Tsw7KkI/K0CB2ZYrmALx4uQ/XSuNDNdsP9rE10DYq/SMX5dM5imremHC76K39vH/qFP50fWYKN+FAidLjGjRNVBjFry9Il04ddLOvYlx9OcAfw3l+VS3kX8CNbq/4cS0wYLfYIG5AF1EHx19+IOV7kSr/0jBl2Z/Dr/H7sJieUT2AQ2Vck6itK963MfjLSOH6CN1Yj5rrfKGPOY9K0Lt/uVhY+69OfzxbXvaerwEulgPHotZo/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zl6eWYHIdxfDWBepss9nl0pOZMSFDnrtMkepTieKUZg=;
 b=ORRl43nO/+GU+Pzqo6olcDxBYmCMOw+2Ad2xltfJsit9cg8P+eSOAcaU2FjD9A+3KlAGS+U7PbwPhdqIPgK9UMhz9F584N1lUL+ky0qvrAgLTAxf8QD0qMxIqTE5AcEyndrHzrY3VKLDEMCUBvyzl7t3a5eLdE2D98Sn7yvTzpw=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3157.namprd11.prod.outlook.com (2603:10b6:a03:75::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.19; Fri, 1 Oct
 2021 15:10:02 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4566.015; Fri, 1 Oct 2021
 15:10:02 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@intel..com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: fix getting UDP tunnel
 entry
Thread-Index: AQHXqjnNv4iH24mRVkeZrKgMla67YKu+VaLwgAAB76CAAABxwA==
Date: Fri, 1 Oct 2021 15:10:02 +0000
Message-ID: <BYAPR11MB336720434076C532018850BBFCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210914232505.8117-1-user@wasp>
 <BYAPR11MB3367264BEB0D2D3900A07035FCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
 <BYAPR11MB3367E3C1301A94EE962CC629FCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3367E3C1301A94EE962CC629FCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2027dddb-6bfb-4e9f-ffed-08d984ed8b12
x-ms-traffictypediagnostic: BYAPR11MB3157:
x-microsoft-antispam-prvs: <BYAPR11MB3157C48E94E9FE05894D1576FCAB9@BYAPR11MB3157.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A4uJ+WT0rikt13SOBQD+rPTUH5+QJwzIi8HeXz1Tr2kUtglFSKFWpYuJOLguN7v2x1yW5Hvm5rA0isjauTt5440ITqHOQHXLl6GUXVVm4uj9EO06qQTivmULe3c6aX1st8Nhm4R2oLGvKDEOLBcO9xoXgvAZVWaiuRATgkKMsVHR+NCBay9oUxk8L5wiuWheo0VeTIV9B9v0enXJTyfRylOVslY0N12VkIvpUNmXM3BkuT6GYl/zWjTnPP9LZA9G6jFeV9NfdOwAm5f5m2Jnv3LjmadWEww5YR+NwZ/B05GxMyCv0IF3eDaDdTh7JHvdC9tPnktXrZvw5OFiOqTup3ZPX7FblC89jwXSpYnaIhKBjQyCttU84CQyAXgXVdY+AApB1ez6P9yeb4nZIALX+LruJnywViB+XzWL5GhqNVZMdJQBYGr16+F34+pLgSWenSOgXOvO0Tuz5IivqEZ+bIrYY0oYkuzKRE9tuUNQ1kSzbJbYhQv1Q6A2Ww5sSlZF4I4NizZyCPCDmejyRGPKc3xy34WnadtY/a6NE5QnBd1bArg2Nx3mCyxYOlQtHcbPveAQcdYYTZt6nlur2BTP2py5xRpm3LC+5Jy7xX8xzpIJk4uWn/cOMIHdKELPw4SlBBuhT/2deeCEWa9Q+agYKNDLr+WLTvd9i4MYEl66TMmILL9gGnBwQgvDuAfdVakT5FyKCiKdorgP04jAcoGYig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(55016002)(9686003)(4744005)(316002)(8936002)(8676002)(6506007)(66446008)(64756008)(508600001)(71200400001)(66556008)(66476007)(26005)(122000001)(53546011)(38100700002)(76116006)(66946007)(38070700005)(2906002)(83380400001)(86362001)(7696005)(5660300002)(33656002)(2940100002)(186003)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pyR/2I9NBS+maDp2VvMfADFvwmvKtCmPNMTZCZE5TTNNe/eMhK5vmfjghtBw?=
 =?us-ascii?Q?63X2EnnkMdjpey0Sm5bqOeuddxDfxuhcYcHd1XOvHfDQzCw2h8StIDvTbkBu?=
 =?us-ascii?Q?0/ZVWDg+fnpn1hdkBWgRkkAtBNrE/c5zx3jeRjq2nxeAMuuTV8j8x4990jzA?=
 =?us-ascii?Q?GsK4t+WJXpqWZPOnEufLb17FbAZI0NNxN+dKYJNGGffQTJZyJlV1l5EQfEH1?=
 =?us-ascii?Q?VRhfcrVSwXq7A4cy0zMUE1dyAiLwpaLpL911/B8qtBLqQ24n24w/9X/BceVJ?=
 =?us-ascii?Q?jcGPW8BY5lpz7kgo2Na3W7urvyerw1lBz0wAeXJyjdyZ4Gf1a1vIb0+sKgCo?=
 =?us-ascii?Q?BX2+iiAnaQ0EbNsMtXEu17+hxROCLiIAqQtK1QSgDgZvOeOyD3+bZegleBSY?=
 =?us-ascii?Q?J2CpCFSUbBqIiP4YtqltXFGCl41bDukwlqMpKsfCia71NOksSzdV63++tEbo?=
 =?us-ascii?Q?oXdhSh7g1yVlmyzx1Bh0c1Ph0RU4BC6L/OgDIFJpkPSahMHh3V1EgGCCamVh?=
 =?us-ascii?Q?HX/DMV93ldE5XWXYJr3cgokAFRdkmqFeefvBqHYRf+viKJYeNPeGvY3WKDrT?=
 =?us-ascii?Q?USewDHJGu3UMyWWx9M4XS68I2k4oy86raEO/yAOx6L2oTFUmqpWud8KkVjGe?=
 =?us-ascii?Q?EAkkxLSzDmCOleaP6bbKIwuUoECnQxbs/tWf6QnkimY6NO9/p4m3j/Ygc7Yn?=
 =?us-ascii?Q?/f0/lcIMBjvb6dIJtsjXHXYmpBBvUQuy68z+J1Db8w5CItQf7kF/xTIMvT/7?=
 =?us-ascii?Q?LmC4NR4qsmRCY48ePFTw1vrcCbsBSeOFt7/6a/JtBOKNY55ByJisjQpYV4yU?=
 =?us-ascii?Q?4ake27cehExbVL7GCA4xmQb8ObyB72fgPZVntkP5v3i54Af7yEab967OtLHp?=
 =?us-ascii?Q?uiX0LoxkvOhiYEgufsZ90wqQ3z47pvnk7rCZW4dpUOnbrZ+Whtf3uq5LvbZs?=
 =?us-ascii?Q?Gb7PRNvtwQgZ9kMQcakGeRLkLedl6fiCAFXkN+4Sekmsn2I4Og62p8BzJLuo?=
 =?us-ascii?Q?vrE2bnYUpecupA3VN6Pi4o9iF++nxtDhzsE78MmA1xY6YtRuuKgE02ppXZ3P?=
 =?us-ascii?Q?qoJat4I0Fc2LJhi1iGAVqo+2qUka/m5r8Nml4kZ5Oq8FOKiP0ezj95O9UOpR?=
 =?us-ascii?Q?hUckQ/bX2VCC15cYRFlkIaThnwrzznUtdlMKXBjyShnDDJedShYQyBlCB2dy?=
 =?us-ascii?Q?WhOvujaznNIUQdEFaIEW1wBsydXM6H3C+rnCbxsRzYCQy9ZAgBywo51J28V2?=
 =?us-ascii?Q?z7UkMSK5HznDATNbnNh5rOIzdm5DECcUz361szT4tkFa3kaor0BENXQo4ym2?=
 =?us-ascii?Q?TEnd89rGPTirO7epUZa+9vMS?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2027dddb-6bfb-4e9f-ffed-08d984ed8b12
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2021 15:10:02.4140 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D8aQsZJKLGr52O1OK/Y5yN/gpWgWBhPSwu95iJHhZSc50QUNTQxKDCOJlebDfQ0ZHVvqfUgxK9ECXAaNtwYTkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3157
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: fix getting UDP tunnel
 entry
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Michal Swiatkowski
> Sent: Wednesday, September 15, 2021 4:55 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: fix getting UDP
> tunnel entry
>
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>
> Correct parameters order in call to ice_tunnel_idx_to_entry function.
>
> Entry in sparse port table is correct when the idx is 0. For idx 1 one
> correct entry should be skipped, for idx 2 two of them should be
> skipped
etc.
> Change if condition to be true when idx is 0, which means that
> previous valid entry of this tunnel type were skipped.
>
> Fixes: b20e6c17c468 ("ice: convert to new udp_tunnel infrastructure")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
 
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
