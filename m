Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6C33380E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 23:52:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 485FA4ED00;
	Thu, 11 Mar 2021 22:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a6nL6BvdO0XC; Thu, 11 Mar 2021 22:52:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09AC34ECFE;
	Thu, 11 Mar 2021 22:52:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 972E21BF333
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 22:52:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 927774305B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 22:52:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xmoa7h96NUIp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 22:52:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D47FA414ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 22:52:22 +0000 (UTC)
IronPort-SDR: S8RdP89Nc9YRVG2vii+fdMAo03fxH/Buv3iHvR2d/F/sEeU0uKbHnuAiqtZu6+4mkQhkel7ipu
 TFpsfHB9iMHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="273792532"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="273792532"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:52:21 -0800
IronPort-SDR: 65Uhs1VTilFegL2XIMZDHTC3JSXPFzkUlQbraJuVK9YzsfKXhrMbgr67redl95opVy4U2NrzU1
 mEciQEksHOfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="409651015"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga007.jf.intel.com with ESMTP; 11 Mar 2021 14:52:20 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 14:52:20 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 11 Mar 2021 14:52:20 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.51) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 11 Mar 2021 14:52:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K7OfoapevxpsUEUZmB5fhJzTWpW4QlP4HrgNCyUy5Q53qgOAkKyr7j1TJBF0g7Zs37TEUirpvscRXxHURS3qR8EOBKE+InwIynwAycE8sze7bsdvxFfKKnZ2MClyNZAmIeKyXJZu/VxZOcIVDjSnHrprrtA4vBrwI99sdBGpyMV6R2PPOd1DLYHc45G14skJB7cIfjtk44f422HBy3cBbzD1c+R8zswEwHObpSVrkI2UqJAK9S9WRk17f/OPKnulRJKyBU7wZKNHQOcTWpv1DOwK23dNmnHl0bssp9j95yZzOcUSpRBQ6tI/9VfEyFqQUiUdncsgj7psF82lqjBQBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oOuyw4PMJ/XDsotWXN5QTqYVMWP0OVhyf72GraXNpkA=;
 b=A+ltx37euO1lD6UUnQGM4Cr0v9fJEMzgPX2/5j3dCqBXqyXeloeB4Xomfytj7XkxkGNuWwKrRUA5KCbye1Lj0BP0T0mZGLJ3B49Lkjx6Foi4uV3K6D6w1Xr9a/xShqghPq0RZBnw0xGbnmiJE3pdgSitspkEHZuH3FLCk4LsgJoLauRaCh6IwuHHDYdPdPwH6STnTOqCXm+nbHcT6/oYnFXwQ9pVeUnVA6danhW2Oc9TPCCJGt95E3sSLQW9qe6t90NHVpGFo1ohwtuuODx/xc8ik5oCQVG2WS8SdRdLHy0bDeRd4zkThkHnCsQd8GiMHq6PLwQtFp3r3mEwM391uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oOuyw4PMJ/XDsotWXN5QTqYVMWP0OVhyf72GraXNpkA=;
 b=otD2J2M74LCCIG4QrpvAUJXO9ivV6gxOsO22KWjVxqA95Grgx6PSDeFX+8hHEtZzhJPmqLSjzmkM+0JAGzI0su5xrPIAafb5y3+VCO7NceNDIMrSOM8lAS/MLIVUsgQ40d2T8TILbUvn6MUxcTusINk2Sw3ekiCPVvISN1heGhQ=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB0015.namprd11.prod.outlook.com (2603:10b6:301:66::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.22; Thu, 11 Mar
 2021 22:52:16 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Thu, 11 Mar 2021
 22:52:16 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 10/14] ice: Check for bail out
 condition early
Thread-Index: AQHXD5EeSwj+ef8CgkK+eHQf5xPH4qp/cxyQ
Date: Thu, 11 Mar 2021 22:52:16 +0000
Message-ID: <CO1PR11MB5105B4D65344F8B7163CE5F3FA909@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96cf0649-1592-4af1-3810-08d8e4e051ad
x-ms-traffictypediagnostic: MWHPR11MB0015:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB001583B0AF98FD4E19012F35FA909@MWHPR11MB0015.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:389;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YUGL18mfsqEb1a0wwNFHd9nid12dMV6rG75odDMtbQBNiNNTpJHBAY7r4fQMNvwRRzru4+XFOgf70K30rZLqvqqH4oYYmf9j/SyduuBrKSirHXoWsBkj4PACpi2EnojL81SSV2eg2d/e2ag2Qx8EZ8RE6AGOF9ZeT7xUyFhBtJEavPF91MTEj+8+mgl0fCzKS4n3sO5mFO4F8WoLX/qY49TDRIBOCmKKjuHM6m0Pnsq8lDJQQ7idTCzgDidfJ86HP+mcjvL+/V3zWJywcCwYhWKHouFIE9u484t0yRKGsQl+TNc8cfrturUg95eNEKXYQWnozYimyb6Gq7rnfB50Y4krvzlTL+HYyZIlZqxwm/YgxJDpsvWw8mCNXlquxHftjHNEIzDplNqs3LS94jV6pkm50v3wYbQhtKdymtxxxIzH/xiE7vXRVAfY8y5uoJgNUX4sruQKMvwkCcz4aUHu+QJ8j7657EYs+46zUPPGiWRpB4w562QE4In1Wuz3aG4eI1Iiojv1c89Exa80YPk+Pg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(396003)(346002)(376002)(136003)(66556008)(66476007)(66946007)(53546011)(55016002)(76116006)(4744005)(66446008)(64756008)(9686003)(26005)(33656002)(86362001)(110136005)(186003)(5660300002)(83380400001)(316002)(8936002)(71200400001)(6506007)(8676002)(52536014)(2906002)(478600001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?CQmFZuCE1fUL6dKgOn/f0XHmdNU0oSd7xp9IqLz0PEtV2/YmhbGDFAsyT1os?=
 =?us-ascii?Q?ONUnHQ/K7BZDQMc92QPBuRfG8EkhxYaQ/5bZJ3EpNIe97ylj8VfPssIFXPlt?=
 =?us-ascii?Q?asvPPM6j00D4DDJhXSFuUvJfj8loynKhwxu6lf/UcqSnQvUDgHnZYbosa1lE?=
 =?us-ascii?Q?61q0y3KWFL8gTfpBx7qD7nejUj21/5D59OLk9uYG9Gm/ZtqNoEoWUFRcRhjx?=
 =?us-ascii?Q?oQw6kvWwlIt01PS3TyuvvXctMJCIY6cEE2lGIiXfMW0bHriip0hn6otS0c0n?=
 =?us-ascii?Q?zkWLJg5+j/cTQO3x6kXIsIKk/ojUCGrW49ak2Vff/Vv+hMtWoUEgDSkAXCqt?=
 =?us-ascii?Q?d5t5/p6EdOMHpJfi+5mSqO3GvX4xW68rRnx9zuv4xWV6ASW+PO5AKF02RDnX?=
 =?us-ascii?Q?r02Humk32iPI4aS/Ynmg/JKVvyPMF7l5ifZ6X2xkvGcjvhRe2uLw9v10N1N1?=
 =?us-ascii?Q?UubjILU4hjCggGweekuTcaIFhQPZRkdVPqIssfcruOqQ6b9bGdJNBXVwu0bQ?=
 =?us-ascii?Q?4Zdqn+6JMrDPrXFcnF5PbGRZXQ0lK476e/77mmAxvKXr578rdZgemjK+FtVP?=
 =?us-ascii?Q?KNH9B+H70g9k9/6ScIl/AR3b3UwIfyVfEFQBjTVOdxemS1YWqNKDLHtwDA/v?=
 =?us-ascii?Q?7ks0HboRzSXiuT9Vw+oZaKxxa97Omi6+faIT6qKrWD4JK4HgiC9heJLaJDNc?=
 =?us-ascii?Q?UPe9gk655ypfH+5GISJ6NpWb5iEIM6kMZDUnK7ddPvg1gtbkoGNBPpzHPYZ3?=
 =?us-ascii?Q?jWAwuf9lOrQRwCDeHrumLPeeYjOIq/9ohfdI6b6DTJHhJqil3ePIsdu9TgNv?=
 =?us-ascii?Q?aSdDMvtXBiQdk3ykypIWPPNnFuIHPe+8SpPrmUhYGUo7cH8kteCaHFQ7nMhI?=
 =?us-ascii?Q?rOR7kxqQC+loLQkkks+FnsARfNGZgxjH92Kd9jFqTkQhi3VfkTLh8TgJJYu4?=
 =?us-ascii?Q?//ZWmh0WP9fOVnyyMu0r+V2SRx/zesqpBQruuzVx/AT8xcHl/qkKKFXAmaQ/?=
 =?us-ascii?Q?ZYu8u0n+GFNrR5aOFT7y8SAl19aHinM3OWBq4QqM7AFAzNb0dgaWNjJKEogp?=
 =?us-ascii?Q?D0zbiAGTG0l+OyfAUcKx7j7Lg6IwHYauuEn6FyheZQUBVIeNBDGFDWXMy1Ui?=
 =?us-ascii?Q?HFgcWxU3FW8MTCZteW6HAdqB1CIbmcfT6BqALVwtMsNtP/EPO6gMgSFHagre?=
 =?us-ascii?Q?MoJHDNkal+tuSl58cNPJ7FF3Gw/jDZoCIn+NP3rEQADiQIRCcwvfKG0MCp52?=
 =?us-ascii?Q?5/V+/iulTcF4nXndaGy+d5BonClC5hqrlJ1f6MFUD4K1go/lpp/llH22JWUe?=
 =?us-ascii?Q?rPlf9mb40t1LAzrmzX6t3RGY?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96cf0649-1592-4af1-3810-08d8e4e051ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 22:52:16.5475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F2vEWQtBL9vykZXge3AHA++fndnMX48HL7jmntgSodcQTh4lgxZ1oglCecz1xJinGB6G4LdQiy8SdVNyY5njUfMlMr4EohX+0etg3UJ77Zk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0015
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 10/14] ice: Check for bail out
 condition early
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
> Tony Nguyen
> Sent: Tuesday, March 2, 2021 10:12 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S55 10/14] ice: Check for bail out condition
> early
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Check for bail out condition before calling ice_aq_sff_eeprom
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
