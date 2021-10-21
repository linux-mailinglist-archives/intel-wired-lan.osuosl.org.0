Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FD8436920
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 19:35:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B50FC40749;
	Thu, 21 Oct 2021 17:35:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gSY8xRYqQWfc; Thu, 21 Oct 2021 17:35:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CB0740278;
	Thu, 21 Oct 2021 17:35:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5FF9F1BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 17:35:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4C8A640278
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 17:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A6Pat9hfBD-Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 17:35:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E2114023B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 17:35:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="209203945"
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="209203945"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 10:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="721401195"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 21 Oct 2021 10:35:37 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 10:35:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 10:35:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 10:35:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vegi9sS2fydZi5AnKAbNWNkVYiHow0vsg57r49sc4qGfqu1/CCEOxSxnE2k3j1ebt713WZ3T4JB5IPASbPmCqxgDyWPWgpAQoNyCsfqdjjLhdAd6QftR+gVr2jjLQGQ4eWSF5aarzateI4dfJwvFc1VYzu03O6iH3COT4gnllvKIOKXv9qA8pU1/YISN0+DxB7t41O4OifZxq/1/aZYiON24SgWFgzTMyZTpNl/omKKX2mRoqWvmFAZOkyuBYXxn2GJjmYqL8GhOeQQTiGUnuxdTe+kNKrbcw0mGpvJnaR2H0Z8obeBb8bTSwkrlvdVMa4qgGPEdp6d1Aq+QfnCuLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ezCQSxuWk7xYgcsZPkHAXnSWCoJ5gRCZFlaIyMwgeo=;
 b=fPbitVSe2tnndrIRiHvuZTWfsHHIjYf9EO0we3bnkGDn+CUalFv43/bBTCnUWYpjFJ4GhVT2sOlQuf1GVbjAgpC9QbcvvcUZv3xSWfPWTdHnOT9aXXWI3VSXUu9G7FsyjT8qAn1RPrkFqfKCQ1I4Lyz/nbrNkRTTN4rzNPuDvNlPBdSraCf57v2svM0oBlrOSyL9wvXUoJds38o0JWIFeIjo8fpFI3axW9g9sUaOJemFgJkwBNkEkDtdMo7x8f7KKC8WL1KbIri5Ku7M4Nf08VW1uYSmOTLBWcj67INIkCgttCt67Kkp5vQNpD2udhB5EBNwHhOtYd8AO7/2qgOWmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5ezCQSxuWk7xYgcsZPkHAXnSWCoJ5gRCZFlaIyMwgeo=;
 b=RmC2leiKaPiCyXVtRdsLYtD4i1NdG0ckISCnFmFA7ac1ubzaShyC6WubPpPwZDnSG0SZQvDEYxibhyzMbeY/06TM6uLfYDZ1GwCJeFvXsbS1h5240TjMR1ozGE11l+DRpL0Ji1ma/rBGT1y0+M33FhEZ6b+gsRYwRs5zAGVUQ/k=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3376.namprd11.prod.outlook.com (2603:10b6:805:c7::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.17; Thu, 21 Oct
 2021 17:35:36 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4608.018; Thu, 21 Oct 2021
 17:35:36 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "keescook@chromium.org" <keescook@chromium.org>, "gustavoars@kernel.org"
 <gustavoars@kernel.org>
Thread-Topic: [PATCH][next] ice: use devm_kcalloc() instead of devm_kzalloc()
Thread-Index: AQHXutzBrmMGo3ggkUi8gE/gCGO72KvdxfSAgAAH9IA=
Date: Thu, 21 Oct 2021 17:35:36 +0000
Message-ID: <3aa8242fd219be96374045da757d267a64c8870a.camel@intel.com>
References: <20211006180908.GA913430@embeddedor>
 <202110211004.6CF2B2C5D@keescook>
In-Reply-To: <202110211004.6CF2B2C5D@keescook>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: chromium.org; dkim=none (message not signed)
 header.d=none;chromium.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67f543e2-08c8-42fa-5fde-08d994b93105
x-ms-traffictypediagnostic: SN6PR11MB3376:
x-microsoft-antispam-prvs: <SN6PR11MB3376D2CB6CC19C3D0F99F52AC6BF9@SN6PR11MB3376.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:983;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I5bQ+3vomdFwAN5DOQaHS70ld+cf23s26/OxomLwnMRp10gTfmMK+ZDtCLfNnKHpA37B3piY+JTZM5GuX2VOzEf0GartBZrHD6RhClzEkx/z4+L/3ffvTC0+Hqacw4COYvUNQZvAqR138cWaN1BL9xVu1Mqeln0lwkIOxSrWqTPlyTFroU8N83FOSttuS4XhEBql2ymJXDbC4Flkx6QLVPgHseA0npSm1fHABV8GVQ7P/7QwAA6ScdG75w+kzXzKaKXhv8aXcmSv1C2NRP5eeIutC5VOnlIfnYtkQZ6K06T+XsRGZzPXDbl33m4qUTx7KYI+j74o7rQjpQ26fFExzNDkJoNlG6YinWcWmlgliZPnBWAtwOvRzQAJMxC4JxY/uqLKPuHSUDbGS+T+GRHAo6mK5v8cf8YDAye6y7ZC4YEUZW/oaOLjlwKQGkJmC/mvVgGJCDwFVDB+4nXgw9s2NGmF9yQwHPtk6KYyKRTUf/kdHZj5NCUQaj9qyT8kcg7DbFkAh2PEw/hNWOPRW9Dp4Bzoh5jeCclLXDOA7AErRsvhEsGHErZ6ixbw/4R63LIAbr8LeRwmn1l7qPOzch6SrEhAPmQRSMm7tMv9oIHJxXBQ4Unm9usdUecR0NTnWqiGBqOFxE5xSXJ/alHM/zWRgMRw1GcEcck+MsmWN3Af7c8A1JxCCXnm9kpE6X9iTemEx+B2om6HS7mfemRd+4O1KZ1sx81Yt/NLFoGX2dLSgjtQ1NpDRhhEu+xxaOBxUN4Ub54TZZr4BwY2pv8k5VnuPk4mMrXDvEAmJgG2A47HNdpG8bEJ1J5uILu6NvzEowkiGtcYv8nFrGSYXb+r8sbR0w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(4744005)(91956017)(6512007)(66556008)(4001150100001)(38100700002)(2906002)(83380400001)(6486002)(8936002)(26005)(2616005)(66946007)(122000001)(5660300002)(76116006)(4326008)(316002)(6506007)(66476007)(64756008)(508600001)(966005)(71200400001)(186003)(86362001)(82960400001)(54906003)(38070700005)(110136005)(66446008)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WjEyMDY5eG5XSlhBY0NkS1BOQ3dmWFFYRjNTbThEczJ0bURTOTJtNi8zbkFG?=
 =?utf-8?B?NW5lTjVRUVVSNUxEc1NucktOTFFWN1E2VGFKeE1OaURWNzZuemE0RVNlTmNR?=
 =?utf-8?B?OHFyM2xJTHkvOHo2ODhIaHhuU2NyRlNMMTJKSFI1eGh0WENHQk5lVWtMeXN5?=
 =?utf-8?B?bjdkVWNFck5tQVRTL1JQZTk4bEZvem9VTkVDbW9VSkNlY1R2M0tlY3piM3Fh?=
 =?utf-8?B?SlAwMzVsN0IzeC9NUHc4ZkJBbGV5OUYzUit1R1JGYTJXZTg0aVdpVURiOVFV?=
 =?utf-8?B?SjdIVThEN2V3OWFQVEYwQmNxNExRaTYrWTBWc2tLUk1CWXRjMU5nOVpPVUha?=
 =?utf-8?B?YWQwaEJGb2RrN21KVGZoSS8vdXlmaDdJZmgwY1M0alJPeVFvY0lzdnNsSmxm?=
 =?utf-8?B?anV6S1RKMUJZdnFaN2l4V2o2cHFIK090aFJOZ2hQakxwY1IyVjZlYTRGMm1i?=
 =?utf-8?B?SHR5RjdLZDY1VEhvWjNhNnY4SzdZaXNzNU1BaUtFV2NBTnFoelkyRXpaeG9a?=
 =?utf-8?B?akVqWjUrRVZ0SVVqODgzNmpPT3FHdDhMeG9kM2lvbWsxSk1aVmZIeDlFMTAz?=
 =?utf-8?B?d0lSKzdadE5LVUVZdGVRL0UzQ0FIeEh0NTVkVVpBb1BQdVVLZXNrRG9IVTZC?=
 =?utf-8?B?cGtLblhaZVo5OXZIUmZQQlNSV0V3TG13bmJSbGdUaWhqWk1JVTg0VHd4Visy?=
 =?utf-8?B?ckgvQkd2TkVMZFpkQ3d6Qm1SQ2llUzl1aU0xbUZ1ZkU1R25JNTc0OTh3MjBL?=
 =?utf-8?B?QVNJdDlJWlpBbGRVTzdSb2pLa1k1TEx0R29CQzVUNTdvNGlpemk0bWM5YVVH?=
 =?utf-8?B?K1AvNmZYM0NGYTZTT1hQcWNiSEVpZnAzSFJGak53YmhYVnJoL2t0VE5YRDRh?=
 =?utf-8?B?c2lwUnlSNHVXSzVkT3NVNVRNNXN4NW04dzZOcy9VWFFPbXRXbWpTTEh0d3Ny?=
 =?utf-8?B?WjFjMjlyZGZMVFNybk9YdDFJUVM1dUVQWWZ4ekVrYi9Bd3Vxbm5rQWRWNEFP?=
 =?utf-8?B?Sy8xM0Y1Vkp1ZUxRVVBtZWMzK0lheUJzRzlpcFlCU2J2c3VJemM0NlNTM1NQ?=
 =?utf-8?B?UmN6VzExektZejBhMWJXQ1lsZk1IUlJOUGk1OGF0dmdNMjJCWitZZEpJNW9N?=
 =?utf-8?B?NlIvOWdVYmlyM1lyOHRxRWxpeVNZaVE0NFZ2cCtPbk8zM2hsMjNCK1FFSVhE?=
 =?utf-8?B?RXFlMEtGcVQ3WFpjQngxTU0zMEhDVXkwTzNQTXFuRFEzN0RyQXNOOW5BWDU3?=
 =?utf-8?B?K1ExZXNZY0JTTnVoRC9NMUh5TmlFUjZteVYzUXJSTEQxNVVnanhUZXUvUVZh?=
 =?utf-8?B?dkY2RGs2dTNBdy9qYmJXZWJpRXpmRG1vSjRuUCtHejJuU1Fvdk83OHU3YUVL?=
 =?utf-8?B?RXZ4THRKem5UaDQ3NyttVUlEckVaWjIwcjlLbzZ1TUpOUWhYeThZYmJ2WVRC?=
 =?utf-8?B?WG8vOUQ1YjY3N0p2Uyt2eTRlMk9TcmRVL1ZHQitreFk1SmF1VCtxdVQ0SlV1?=
 =?utf-8?B?QmtWZlNHa1VNVlp0STVabVdvSm9Fdy9TaXFaTzBFMFlsZEp5b2U4eEZ5dW00?=
 =?utf-8?B?SzM2VGk4bkdjNmJvall6b0NCMXB6MXpodnZ1UlFIMDQzclB5cWZFcUErazY5?=
 =?utf-8?B?MmxHS2ZoQXl4bTF3aWM2KzNiMVNHdUwxVW9vVmZWRXk4Mm0xQkp0RlhSQkJn?=
 =?utf-8?B?RFh6a01SQVNkek5vZGlNSDRrN0plYktaczdld1BmbGZjSHVMcGR5SVZ6MEdI?=
 =?utf-8?B?Z2FUV01QOXA1YU4yZ3VYTWpUUVJUcml5M1pMZlNrNC9rcFRQWTZZNC9SL3ZJ?=
 =?utf-8?B?SW9DY0NCVi91RHFjUzJuZz09?=
Content-ID: <9FB46006A9DA7A449F7F1B85A246271E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67f543e2-08c8-42fa-5fde-08d994b93105
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 17:35:36.1312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anthony.l.nguyen@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3376
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH][next] ice: use devm_kcalloc() instead
 of devm_kzalloc()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-10-21 at 10:05 -0700, Kees Cook wrote:
> On Wed, Oct 06, 2021 at 01:09:08PM -0500, Gustavo A. R. Silva wrote:
> > Use 2-factor multiplication argument form devm_kcalloc() instead
> > of devm_kzalloc().
> > 
> > Link: https://github.com/KSPP/linux/issues/162
> > Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> 
> Similar patch state here, it seems? Who needs to Ack this?
> https://patchwork.kernel.org/project/netdevbpf/patch/20211006180908.GA913430@embeddedor/

It was reviewed/ack'd and recently accepted here:
https://patchwork.kernel.org/project/netdevbpf/patch/20211019183027.2820413-10-anthony.l.nguyen@intel.com/

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
