Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2C137EA87
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 May 2021 00:02:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DBE06081A;
	Wed, 12 May 2021 22:02:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OzF39bm59PO5; Wed, 12 May 2021 22:02:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0819C60758;
	Wed, 12 May 2021 22:02:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FDF41C1178
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:02:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F224D84319
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6_3Fm7U8VUOm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 May 2021 22:02:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2886583BF6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 May 2021 22:02:49 +0000 (UTC)
IronPort-SDR: 0n2Z8jJqm9DDLNsj8DHbgn8jMxxbaT5n8s/u6FQyGaKTAShfv8oVRwqizuro1JN0XIwCwo2WeF
 eg9Lb6JaJUTw==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="187238904"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="187238904"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 15:02:48 -0700
IronPort-SDR: 6W68GbYX7NLgdOeEbDlwpD+6jxfsiKt1umrdzeq0Bm5RwZ9Wv7MNT13WmIoPzl/a+7PtgEm6+N
 xKY/JeCfE0Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="430936627"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 12 May 2021 15:02:48 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 15:02:47 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 12 May 2021 15:02:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 12 May 2021 15:02:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VDegRlGP5eJPL3/Sq05Swlsjebs4WyQhR1+vJdNEB5d+LnSdilb4aH7T/IE4jHxIbyQpb8K1oPZq3tCuJdfolpWTLe45Tz51PvsCM3V12YZDSzqYJPNpNfaqIZofvv/FSMn/RBQglRhAaOFlTNgsMlIYf0v+zBMuhoo2/RfzyQHWKpf4uOEpydeLoxRfQgcZ+Mc205/oWvvsbOEJYGPdrj+dIVeOr/YBgCkxWnqTR2adk/oumZ/0P4Qr14NhiiortW0MhQ7GHaerN8R7enETo8xNbAjht5gF4cGPuWG5QbfhXtpmV3lyjco0tQsK6iONsEGchsB0H5geptjCrVFfyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nKen3/U8Tgx6osFjZqyjVCUDg2mPJhp5ZSKaibqcgq0=;
 b=XiaVtH6cv6MDGWZfA2e99fs3onOFJs0QtsYR6DEmfXJ4OHUiq3d2HUvx6yy1Cj3FKwXl45bwMbwLeSfZA3lwqEo0o7BjhXcrGIFVrzeEDuCHBDnGozIPUfgryTUd5Kj3D6jWSGqXoJqWWATCjr8+SJQjEfzSX4Spa7yeLEcEzH1IZBRWH3hhVe3fLzkkYkyq+wFVPBe0Hedftj3fA9e3G2N10suuQepgBSranImF9DS7RmvdAU/K14gpKsZN3E7A1Aa88i2V6c7TdI+IGgxB8Gs79Vge2Uk/5BffZEN50xYO83VdGYC3aPcKwhOb010W3svj3Y8p70BsOsEf0ctudQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nKen3/U8Tgx6osFjZqyjVCUDg2mPJhp5ZSKaibqcgq0=;
 b=Mp/d2XAclcYuoHU6UD2yMJIy4599t1FDUWalt9fla1X+9HDWHwJkTT6y4Awy8Y+YsMK7IvZNN+e04IqPVLVEOulim1GYFswNtFXT1TsLfKEeBez+Hxd7fAmuC3hwBU4ttvTLzyIVu3IqRgel9Xl//XmuC9gqI0QjzG+daCRdt1o=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1759.namprd11.prod.outlook.com (2603:10b6:300:111::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Wed, 12 May
 2021 22:02:46 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4108.031; Wed, 12 May 2021
 22:02:46 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 11/13] ice: downgrade error print
 to debug print
Thread-Index: AQHXQo+myI6ogTWaHkSDVHr0uEhwtKrgb9/g
Date: Wed, 12 May 2021 22:02:46 +0000
Message-ID: <CO1PR11MB510508735EC98FA7680E37ADFA529@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
 <20210506154008.12880-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-11-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58befe95-9f03-4404-9900-08d91591acee
x-ms-traffictypediagnostic: MWHPR11MB1759:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1759BF7CB2FA5F6159BE24BFFA529@MWHPR11MB1759.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:663;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NpPUzcd/LyYEyMMMCNZWJKmJBUMOxO7mKDgYmeQ0w67Gx2Vwd94QWQdA5sJ6nCdyxZCscuv7LmDK0m73sMLd2pJSt6yQvDk+iwZodr+aVBTGJy07K89t9RP2C8SfXWW9klMGPLbW4W5gQX5sVHhw7Ncfn7epIT4r6s4jj2yqm9oOnjkzJyoVBdbIAdw4eTdg/4efzRfbTAq2eZeNZI+W4Zn0PjsMWRI5jC0P7TKBEKk9OnwUAIrDxnAPy9RDgXT0Yo90iqjRWigK2wAy62G2gHn8oME5gDxHGaXSi/yabcqPda2u6ZIKPRERywbnAEkdptZkcLRsmeoMSqWGtx5+6ySvj1CmSNK8nLCt2m/T3RRLNueInjko3EL3NS6J7xXc5Bv4XSy9fk4B3gs1MRaBYDUa1GmWuuIItvux/zY0Q9bdN7UrKouHiSOhPnJz6bLvL7bIF3cLJKEPYH4BWVL4l84LLd2zaCspGFchlKF3hZCNjfi4H/XAOKmBMmw5zkIgCGmsb9Agtmt0JQNkhckXOTx77jz0Zp4nVXVIvvhnaG7VTlkj5l+bkHS+ie6CuSDXy5qIh7jJdbdS+6nyv+j5IAcnP60lbrAUnF11f4THW7s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(136003)(366004)(396003)(39860400002)(4744005)(8676002)(86362001)(9686003)(66556008)(64756008)(66446008)(66476007)(7696005)(33656002)(55016002)(38100700002)(122000001)(478600001)(8936002)(316002)(186003)(110136005)(71200400001)(83380400001)(76116006)(52536014)(53546011)(26005)(2906002)(6506007)(5660300002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?+l2LG3ur2v+sYWlhD062/nBsEV36U09SZS7+ya8+hJonThjqOGo+dmIKZkty?=
 =?us-ascii?Q?+XCIFGHIGwyOupDs/jo34uf/XXC+qKwqxmKlGkXjJCF2KhX5JjkzIwkWVWKX?=
 =?us-ascii?Q?ut7lswsli1z2DOQzGUWHOLAzKoHAe9Eguu7RwyeQhfzhY86KQWG1KE9Ii+Bn?=
 =?us-ascii?Q?mbQRHP97J1pXOCV87b+9B+pdtmLqL14DXVACMIIB6rqbY/2BFbE/G4nSLIzo?=
 =?us-ascii?Q?///vscNcetV8JY4B4dhhsOTCFU1GqD7TubumnrHvNPmeY84qkvUh/uIv/AAC?=
 =?us-ascii?Q?W2/v+f+dnZ5MptnjJqV7InwjG6DXj3QKS51fwAk++GVsJlcpz2kOK+wC9zmZ?=
 =?us-ascii?Q?wzqjTGbMvTMcJTpeU11lmpMN3MJC/fbUv7w7TRHoHEUZTTJ9pHbngYmXfJma?=
 =?us-ascii?Q?ZDy8b5MZp7ZjHcoB3omVM9SiFEch4vgXereqPFVay6pX5cUdZTCYCa3x7QPi?=
 =?us-ascii?Q?y1ff1hKYxbxCS6cPFHee6LYKbhKFbauzYJqmO2pWvEL9vDcsRKV0gex0XdCe?=
 =?us-ascii?Q?X3eA9iun3WlMlbCqFbmlq3PPMpgJgcjO+k00/OWxt0C/HRo6tHuWEMQkAVc1?=
 =?us-ascii?Q?6eY+4R3Wx/jbgDrdhR9cBKhWntoLrrvYPKm/4R1cxB30bOjtwqy63g7gdkRU?=
 =?us-ascii?Q?rBYcsnmKNqN4TBiMWpgCFY7JbaAuKwC9u8SE89T3OqtEidkCfKjfMjBOCnE6?=
 =?us-ascii?Q?zRvPkMMu8ATGK4HpoRIfBJDnc1illX4ubXZv9QgCqER8Um277rak8ZY4UcLT?=
 =?us-ascii?Q?ykSxWa2FOipwy43tJwHB+3bh4Wj+VeNuWDwy82cIJWbVcCnZlHDSDOUfLYtY?=
 =?us-ascii?Q?A6mTl6WRbg87PAYwdnJuqeGXwe6MqbEt9QhfBjnc8eTZzkGzJcfDe6DiK7RS?=
 =?us-ascii?Q?DNLKzsDSUTFg2XQah5CYr0S02K5p1/gzrqQuQb2np2QUVrAyDW7ijiwSIK09?=
 =?us-ascii?Q?s3eeoe5viZIdOkBVsass4zys7S9SgzxYx5/r/cPeuty6y20oshJFTwQv7XfW?=
 =?us-ascii?Q?lx8udyc5kahIVwMj0S8fzTDxV/LrOKZPaSNzaLa4J2WMUHHiqMIjVUIIApHW?=
 =?us-ascii?Q?bIBnPSkTYfnJS7vkJptWAdMmuLxxHM/glfq7FutfTVShTfC3+tfmYZRGbJbd?=
 =?us-ascii?Q?GVr31ntI24iLjyB9RThijoTNvyEdwpVKQdygz1p9bivQQhZIvOED55FaM8jF?=
 =?us-ascii?Q?xyNd/mtlcCO1EzT9PqquAUGglLPGzK9u7aNcRHxbPCWSHq5F4WgTb6rBfNMs?=
 =?us-ascii?Q?PNXpl8VM18KgzFTyL3rtp2ZcKqhZJSKqQJaCG5lgz6NX9nGtwiYc4196vpme?=
 =?us-ascii?Q?iX47qyp5nmdCIp/WQNGCRhUm?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58befe95-9f03-4404-9900-08d91591acee
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 22:02:46.4399 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OmMpe04qyOVIJeGGF0esiMl6OuhBAWIIUGARwMZ0B20vEfFmw5N4ALHM9sYYzxtPvE8zpb5+OU1DQ53z+AMT+koraREI7dUNOQfyyqPBneI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1759
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 11/13] ice: downgrade error print
 to debug print
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
> Sent: Thursday, May 6, 2021 8:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S59 11/13] ice: downgrade error print to
> debug print
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Failing to add or remove LLDP filter doesn't seem to be a fatal error, so
> downgrade the dev_err message to a dev_dbg message.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
