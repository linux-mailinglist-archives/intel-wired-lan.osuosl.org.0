Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666B741F0AB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Oct 2021 17:10:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F38E940432;
	Fri,  1 Oct 2021 15:10:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KcEb_eRz5Bpn; Fri,  1 Oct 2021 15:10:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8DC46401F3;
	Fri,  1 Oct 2021 15:10:34 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A07C81BF41E
 for <intel-wired-lan@osuosl.org>; Fri,  1 Oct 2021 15:10:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9BE204163F
 for <intel-wired-lan@osuosl.org>; Fri,  1 Oct 2021 15:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cMijCDoqzjiS for <intel-wired-lan@osuosl.org>;
 Fri,  1 Oct 2021 15:10:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0678C4050D
 for <intel-wired-lan@osuosl.org>; Fri,  1 Oct 2021 15:10:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="222260551"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="222260551"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 08:08:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="540269494"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga004.fm.intel.com with ESMTP; 01 Oct 2021 08:08:40 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Oct 2021 08:08:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 1 Oct 2021 08:08:39 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 1 Oct 2021 08:08:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gb4TYhQoU0Qz0BJB79TrzlARmU67VlsDnxfURrP403/GUM2vIaBNSpR7BCeYhUGaS9Tcy89kQznFNED7WIlaQQVCQD1A+Z0vaLcD+1dChgkrnxQRBJKI5n0/A67tHe5u8i4VSVcw6AebeSHhH8m+bmPCoYluZTqx76gcXZ/6dNxi4b+ur6kpJDhPD8Lfdkbcryp1o6MhHHm1NcDlPk82N4lSd5f39o1WNGxhjV244WNkdpHOfiDf7UqFdLtcQYcA15OSnIhmiUR18FzEy5LfgmUPS1INJM8GRzCYNSmwDnGyq45AF/4U45KQF7qRiUzDl6mTVetdtLF/vEdKw7A4OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TYlEr1TIlF+eorNuW0K0PEnAPm21Bp7NEf1cAW2B/Js=;
 b=mN3mwRIw1HcFO3oxJCA8X32CpsHE5uohIQTSZ67vRDtzbFwhB2qKkt7L3mlJa0Ubie1IleQWgQI3HP8QHX3gS4/ehaQ1D3gh2OGjznMO7zVgh3lOXKFi4prYH9WdRLODVRk5OI/3wP3NajzkHJQazlAsot+rWoWs/MQ6dt1qzGz9IWRN1skvCLV8nYmmVciLyNb5z6/6HmT1u+mJ+q1HBGzKAsitCnCt8YJL7wg8rQLgeTkAFH7kb8f9W2KtyhcK0U6bUcYlC9ngbBCbkVQ1cav2RHSDeTNaywGERXSyrXUh88K1U1erPcfSP2Qy/AIyN7MG+vN8ef9c0IfcuhAqNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TYlEr1TIlF+eorNuW0K0PEnAPm21Bp7NEf1cAW2B/Js=;
 b=AshTL4seCpu+8rHkaZTKKCbnnXzlT3RPgW37zayHyfhz6/VsW5yNjnLChCdvdxm77nK3LWHvCgU7CoJ0XsqznG8EGHj+r8keBAoD9P0oKl0HDV5Prge3fEkqjxfh20633kmy20U9hQrSbSekIDulIMtXpL6oW953dkGnvCIpIbg=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3829.namprd11.prod.outlook.com (2603:10b6:a03:fa::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Fri, 1 Oct
 2021 15:08:34 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4566.015; Fri, 1 Oct 2021
 15:08:33 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@intel..com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: fix getting UDP tunnel
 entry
Thread-Index: AQHXqjnNv4iH24mRVkeZrKgMla67YKu+VaLwgAAB76A=
Date: Fri, 1 Oct 2021 15:08:33 +0000
Message-ID: <BYAPR11MB3367E3C1301A94EE962CC629FCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210914232505.8117-1-user@wasp>
 <BYAPR11MB3367264BEB0D2D3900A07035FCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3367264BEB0D2D3900A07035FCAB9@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f58dda55-abc2-477d-0abf-08d984ed5611
x-ms-traffictypediagnostic: BYAPR11MB3829:
x-microsoft-antispam-prvs: <BYAPR11MB382946028DDDA38056100740FCAB9@BYAPR11MB3829.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QTQxmsMrSfZG+6Qmjiya2ja+3iBR5nB91XZ3/v1e96RYJsIc7KtDnlZnScX3UfLzdvZlRZwPEAMgjzvjkSdxzh+aZKuo8LHML+QPOH2bvD5/XHjlGW5TvqjtEW5NoBA0xmKsAG4gkkpL3VvhHJeGnNNw2fb6a6lmXnMyeSnyyihVxMKZeOCGZ+N4lTdQF97xJwObFAmqikoMfAeDbwp5n6OwTUxpXAWWI2vV8nNQ90n0rna1WErTqGbYiCQ/ON42n9+XU0weTTNt359TICTbOE4LTrKN6vVcIlq+bnS6nqrH8k2vZTaf+G9Q5ymZDWQYpISKTtg6SjqvY17dEq0ZabWrDDWU3oMXwyOwbG/OzzcNRbdcRGkYVKvvLA/cye6BBbwyz55hQN0QZFKuHX467WHsudnsxib49lnPx9AWBGAA4K5zfIIm9aBZ4jjZkSsp/Ybt578slCWEJGV25Fi4mO65/Kg9Kl9GLVo0i2wbdCiKOoQd7m7+AaASiRJez0NIkLhQ/5klomuYytr9sMrIgbGzSi10Ok7fsntkbb8WvXqzG6Au8etPCduBR8j0yuYk/fkF8KUs/ePDDGGlfyAYOuto4Iacn1upotMIBHm6rPbRhN2BQ6PN2vkHPee3PJ7HKFGzPhRAQd0vOP9Ch3HunClhPv9/x78oXFFzMcJtpkKTh1NtA7QXdWuHGlJc51X/AoFFc2xKqSwWFOnDl2ubAg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(38100700002)(122000001)(38070700005)(86362001)(26005)(186003)(66556008)(83380400001)(2940100002)(66476007)(53546011)(6506007)(7696005)(8936002)(4744005)(9686003)(316002)(5660300002)(55016002)(66946007)(52536014)(33656002)(71200400001)(2906002)(508600001)(8676002)(64756008)(76116006)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4UzZEd2CMsttz2+MK43HVnoBw2XuyaquTbZ13UvoJV8V007d7jH5GskPStcd?=
 =?us-ascii?Q?IKYzq41gR0x5o/I2krFvWsd+2vRpdPiwo94C66AmKIkaPhrw+PkzhCgANRqj?=
 =?us-ascii?Q?W26TuaC6AW3yMIhxNF81VQtnAeYWkDw7xHCiJ6+yRascghvFl1lPac9/tRtG?=
 =?us-ascii?Q?G8wH/XKmkBf2BlqA9u1oMggsRUbmHb2Ayk1VCBaJOsEZgguwbCuEkLZpNDPF?=
 =?us-ascii?Q?7SK6UV3gv/xl1Jb8VU5vgMQhyx+QtBmGZGHnEv8o7vq+6vDW22sLlkFQx5q1?=
 =?us-ascii?Q?q9NfKe94MgaPh/oklL5iwD0Mma88BofoUznDAbPXIYTBjo+Dw90fdObzXW74?=
 =?us-ascii?Q?xjSABbtFJtl5y+e3h3Y1VibWj1S+FSTckqoZL9l4zah7Az4Qhxo11YGXhhEk?=
 =?us-ascii?Q?yAOSPdWI1DbC+rXTCskDZVRSzeac8sBFY8mLkGD16kbH5HvoReaQv3nOLSbY?=
 =?us-ascii?Q?ZpfiSM9vgzYizVojaG9wv3f81T0IHRBOngHOlCC9Vuoh6+Qu30HQ3rg9lIWv?=
 =?us-ascii?Q?ug5iKBy5DD3hB5y3bmZIAoTyt+FaHlmg4CtPWvZqXkZlwHjkQZhrNzGf7LEw?=
 =?us-ascii?Q?fcLq8SstonDXQM4S4AuVnN1dOF/I2NyCrR8yNJINA3c51IQEOfRHLJ4ecvl/?=
 =?us-ascii?Q?soNZZYuXkbw0qYy8RjSR5cIpbzmuzXZs6bdBSwi7lCVapYpjvV+AqKFZP0T6?=
 =?us-ascii?Q?7r9IbCNjYBWqgm/9TQmX1ReOfeDfsHcGM9tqtyFXx8LlivQDvgTCkeQTqMC3?=
 =?us-ascii?Q?T983HA81PD5DPYGo4hFHsU8QlA0hH7piW+CB4iw9aF9QzE5hiKQKU45Z63YO?=
 =?us-ascii?Q?pKr55J6UA0g7gMJ/GK+cQudW5el97QFv4NoXCtYkLVl/oSojj975l+Yz37Py?=
 =?us-ascii?Q?qmgLjQtVTqRFJvIJv+iu3ta8jlcgo4QJlWO1+SdVfLGezLPHWQ5okWb5LCvb?=
 =?us-ascii?Q?JhFb85LMmkCRs7BV+kVjCIBAGefpjgqIKiHqLzlmKDEtrpdWW87kCfdeA5Ov?=
 =?us-ascii?Q?pFE4mMPwzCunioVWrrFcQc1gPdkGEBtjUzbJBM3nHMxuBrGNMqTiuuVU4ira?=
 =?us-ascii?Q?I4i1GSjIGpFV8J58y+2AXgGu7ogPdgAeGmt7FzTJgNf3hCijtWtfAYFdEBJ0?=
 =?us-ascii?Q?lf5ofQ3iVnTEfYWdGnMr1R0opisTt0g3oturGZBGIwfu81nsMe1wS8V4qaQy?=
 =?us-ascii?Q?ozVpJdcP8MYM74Jdl/HewfvxHvCNVwuE+22RtlcM573pQIgpw0+rC1twSHBu?=
 =?us-ascii?Q?Hcrj3W/Dg06ADNWYVw3tlwunB12FINRO48EkBr5hYV7ne3BC4kMxDrs7jQzs?=
 =?us-ascii?Q?hvGs9LWWeeDb2cmCei2c2VT4?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f58dda55-abc2-477d-0abf-08d984ed5611
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2021 15:08:33.4479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8eC761kUGQCorPBERo67cOwpukQOFdZTUiPIHkQWBzRXctU+iG5ROo3dl4TeOBMjZT0fesUeI1re5mh5bTaJyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3829
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
> correct entry should be skipped, for idx 2 two of them should be skipped
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
