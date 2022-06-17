Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CC454F0EC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jun 2022 08:09:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40C7E84197;
	Fri, 17 Jun 2022 06:09:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40C7E84197
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=WyNCsfqD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id umQiKYZxR2nI; Fri, 17 Jun 2022 06:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2268A840D4;
	Fri, 17 Jun 2022 06:09:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2268A840D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E3B71BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 06:09:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7B0EF611BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 06:09:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B0EF611BD
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WyNCsfqD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Azti4VkquBEl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jun 2022 06:09:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A8C1611A2
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A8C1611A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jun 2022 06:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655446178; x=1686982178;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i7LOwx8HzvXyOK7WTbW5I+9ejKQAsK49rGnIb41yssM=;
 b=WyNCsfqDg3tKBdbZbImd6XYOqvODKSU+ziQe6/wm1owRxonMyQxipQBB
 L4QRz2eGDHSnWxso5S1oQMg0uBvp4VFtjMy0H1hkTUOHx1G7tddrGt4XK
 IRpFWddQIWY1tVW6r+v9ecJs8DoeA6oyZh4vYtirzg/I7FB85T1eZ3QL7
 VuL6KuSxVWEQf4Vwt95ZnNH5CTx3Xu9CbTKOTEOx+rKWiWPuPOOA8K/9t
 wRzSxzd4I3HI11StKCPg4gdAZLwU/GwmyEJDBipkc+8Fq4FEUiQMR5HTd
 +FzGgwfQGxsbRCmDHcexMSCo6iB1NqIi5jWM6xbFISEg/FlL4Bwct1iAN A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259889495"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259889495"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 23:09:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="831905350"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 16 Jun 2022 23:09:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 16 Jun 2022 23:09:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 16 Jun 2022 23:09:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 16 Jun 2022 23:09:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 16 Jun 2022 23:09:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hLgpVkOC0e0sU7/5JpxgMzR8+S4L2tWRlhLYfdxbVgbIn3hlL2U4p2nbAPIBbcyKjs6EgObL78zCBMJAznXkMFe6U3DHTn15pmrH8BzTgwtdr/ljA9iXY0PxNgtzryZxS4YVZs4CG+Njee4KjSsAoVnSz3uNFlxfjqk7FXsm5zJPkVB0hjTzuDD/GYM47ytxONnyIbBWW+Nx9rGVl50mbI8aoCRgFbZVs3nW3jsZvVLvf/bhHik8EeczamcjbE5eA7GrzCOk0ZtFjJZAxhKQz3vLblOjI40fHIyPyU2bGWwzSOpCHmEkFte5RGvhds+tL9EiNgWUSbcQ75rB2hSK2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ugWOOhZVR2ff/11ZWhR4RnkTROtRrL6RWBUs6tRJNy8=;
 b=jxmMP7m5L2iSmFfVFs8d/IzRDdjMxIUmIIJ2XH8oTLmB8/URZLtwdc+O+CwoHjxBgi5ZP8OV4yodoTUY3hJzptpDjtgRSAnUol03BtPECDMyfck/tUKvn2zQKY59zyIE9SrLeRFi3qgNB5twgaKhmSCFfCEY9Qop0OgPe6xwWCGTcJSgqTOZ6PFX0+M6bZAOTn2yIVuhxnAr0buE+dIGjLEcfEeL8qaZU+N3zddmwb19+DI6SBITH2jKwW2hY3Zewn0kOJDVdnkUh4+Qt+K70YkDAnquOIIufF/+YzSNJlJekSmPys8u6ZSvgg8NX7xoYAfjYQBZk+A8weJCiWZVvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BN6PR11MB1876.namprd11.prod.outlook.com (2603:10b6:404:ff::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.14; Fri, 17 Jun
 2022 06:09:34 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5332.022; Fri, 17 Jun 2022
 06:09:34 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: ethtool: advertise 1000M
 speeds properly
Thread-Index: AQHYejwcRkDIHY+oiECBvJd0tn65e61TLPgg
Date: Fri, 17 Jun 2022 06:09:34 +0000
Message-ID: <BYAPR11MB3367BD9B6D07550FE5A0F3A0FCAF9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220607065556.3192203-1-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220607065556.3192203-1-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 830027fc-cc3d-4f85-3940-08da5027f3a1
x-ms-traffictypediagnostic: BN6PR11MB1876:EE_
x-microsoft-antispam-prvs: <BN6PR11MB1876A3C7E277EFC3235CE2F7FCAF9@BN6PR11MB1876.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: miDeZ3DfrnG75CKojk9xlzhiN1vpMEfemnhgMKOT4RXld/9HDSLRrW+eLmciRnO/7zLimWgoZE/IF2MHzFJqaXAGpadMJN5iZbjqly/VhMbmAt/5rSJNDOxtrzCayaN/4JiUr56e4oAVIL0HBcBBR+Y1U4E7rxByORsRHrU3ltj8Sno7gWkaHQSaD/YJGafq0J2q7ZQPW6BxQIiQxY+r50fV0ciJ48VwX75UrCKCKlPmavPlw73u3zF6ym8Jhkj08SxZoiJ+31BRCxBwbPxyNNaLm8vYgDTFdEczXhdhaCrgUUaiDyjQVjTM48RW9NvcqAWvgsWhLFAYl0Hg/BEvuLG8Pm+YKLMDDlYSNXZdCIAxEogFCL09KGer2GAAQS6/zOOuJEGC5b97sl1hl6QuNLPpUTihOGmOODPivdZ2kzo2gsM7l4eJQg9VpEtJQB3nXIz1YmJoDd1fj6Y9eaErV5kxa3YSGg+w1zZGfvDcfEO4ciaKUkd5dVdPxAia9B0tEX5GCg/CpathN5KbBthmiAQWqB+6kV1kuFlbFYeeaMsWASav0RbO9tF+4D2p7XpBIuxsZ7nnVQ/S2kjPgbsC8GM0y3ZO/Ez/MAYwlMg6UeAc9qv98PAfvkQv2SUrkYe9Ot/KoSMuV4Y+sePAODUnArtvxKmwzYDaw6h3eI1Rb8+z4Dt46sCKQnYYmPN+AsQuWwJbsHxtK10yCUstHdrjHg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(86362001)(6506007)(186003)(107886003)(82960400001)(26005)(53546011)(66946007)(76116006)(7696005)(9686003)(83380400001)(122000001)(38100700002)(71200400001)(4744005)(5660300002)(55016003)(52536014)(33656002)(8936002)(8676002)(38070700005)(2906002)(64756008)(66446008)(110136005)(316002)(508600001)(66556008)(66476007)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9sWQdPE1i0KDRs0MQbJ8s3mETTSFWk5U/pYUm9fTp0S2W/YRJ+tC8iieBnKz?=
 =?us-ascii?Q?RnnwkX3XqAyTXvtzbXVACyKDBfJ2KRGu8oJdKKcc8JVrHDxS7nIaITzRMb98?=
 =?us-ascii?Q?GPUeHqjPF2seDLpwNKl0IVzxFOfNDFYT5qj8dAFL9XzMN9/BeXixem2l/lcZ?=
 =?us-ascii?Q?7c2KhRQEODQKTUF/0ijiaEDdStkRpzxZp2CNUzwJwFedGCc44EDPF5zcUtOe?=
 =?us-ascii?Q?4TXORLV2ea6pNt1l41G6w0dLeec3c0655u4DxZ6PuRfkekRWC38RvO1U1uC3?=
 =?us-ascii?Q?dwmVPpArjvu+/YTwZzqOf6Kprg89Rsizb1lVjzHU2pW0FrSjN7LQu2mN1AqZ?=
 =?us-ascii?Q?jXrfjtwKdMTbLx/jg/pmCAb6tFhBGSqoLzzyRB1eCIJ00p7cxZsLm3EBwhw/?=
 =?us-ascii?Q?g47hWjOx6vlDFiUk/trxFbvoYAj1UIPy1kaVpyXxBH21up5kIFdD9YsG3ECO?=
 =?us-ascii?Q?FgkiYc3sCvHs2UuJtApRHAixXjHAqYwe6LnfG3hj1lviL3qUJJuzbtHQJ8pf?=
 =?us-ascii?Q?FzItKv2Bg/PeEvbRq4VlTohmvzT654wkjrhS5YNfgHRfzZTw8g7Mg79v2IWb?=
 =?us-ascii?Q?nWdfsIm/qIjlsbzU8yUIts4UcxZKqsH/cKoSUZGsN5bRevygHne5McC4t7IZ?=
 =?us-ascii?Q?xGqBchy0q6KmmuXjkA2G4EljCE4uUnwdkmWzesn2e7N1eZ+bASkmgwP75FEh?=
 =?us-ascii?Q?X9M15uPzjjx9XEQBlyYDo9QFJFyB0V9bAe4l1NqVAOHiMdl5m6E8yhbjfT9F?=
 =?us-ascii?Q?8F/1NlpHXQT9VsXnW4j4vhhFMvvZEoxi2F0AyxH/uJrK+kZ5B0lK13Kiw27p?=
 =?us-ascii?Q?lU9ZZZK8jLKERJOqIjwBYshjyUKPARL9TjDRPuXGPOfuFSxESEmgZfJZUESS?=
 =?us-ascii?Q?DunFZOQRP1CMDoLFmS0aVLIi9++mtZg42SL3R68UVUKvGxCy/Rq7Lzb4Z4bq?=
 =?us-ascii?Q?cwChnTdVwB62Q32mAEKXffi8MTxNxxSSvDFgGPRGsmwz3Cg1UPxKODHlOFzN?=
 =?us-ascii?Q?NG+6VR0rrvWSdZCZeRAuNIgtko9JKVwKDy4r8y6zJ4DK6w3e6cjHphy4gGud?=
 =?us-ascii?Q?XZW3dQ1HwjXlExzhPapFtMYU6wJFsl3n1Tv0RJm6Id0h1tiIw+t2G8O47dXu?=
 =?us-ascii?Q?02rN4b1Lv8xFwvwyZ8MGh3o5eAiVfGhDjbTDF2WSnnS82kBYcKE/N5ln+ehO?=
 =?us-ascii?Q?u4sfAZBnKSiaknc2hUgTWsFsqEGNgEKyLdWQxEHc7nJgxUBJ7C9oD9vsFv+I?=
 =?us-ascii?Q?spohgvuzZDelXr12gbtd1ts7xaKBSjNyw1hg91mJm3rKHVkGIjX/xmepZXZH?=
 =?us-ascii?Q?5Ksg6Ump4hpArUKxBnq1z+OSq+NW1wegDrxuKi+UPZPY2MPsMarLH6+fXOZc?=
 =?us-ascii?Q?JJghqJoyuS/gzTjbUZlodvsCQGAeYrr6F+YeFh5ztwyUYEgnsZVNSL1QCCQJ?=
 =?us-ascii?Q?axjsfhC/0/VAIIFY9kh7GYPbbS+kb3tjwsnPH87AMcP6ARAg3y8TgTOyIZT4?=
 =?us-ascii?Q?VSbuofJTNoOKz+4mgSPEXcnqBB8w9RuGPwk2hO/7CGQ69x+yoUFduGmcmgqg?=
 =?us-ascii?Q?+VPIiOtN44lCRKzua2tOQGyQEHhfI4URBr48HGnVghbFk/HhWkTmpfYz0aX2?=
 =?us-ascii?Q?BYgEyQugtP2T/+Q5heYG33g1ebIpR7SkSu1WrU9sbLsTCsDW3ZqhYNSMGE+D?=
 =?us-ascii?Q?LDsuOc5XQip3l+EiC3itj1HisntJyDZg1JO/lG85KK70BnXalxUFQYF1mqEx?=
 =?us-ascii?Q?LAkpzyv5Bg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 830027fc-cc3d-4f85-3940-08da5027f3a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2022 06:09:34.7566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZxHvhojf0Z/sduyuitmuBjYsakwSfPP28C8kVzWBl/XAeM7jr19DiwlrMIPK4uNFdrSnEd7tjXnA4qHM8hN4YA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1876
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: ethtool: advertise 1000M
 speeds properly
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
Cc: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Tuesday, June 7, 2022 12:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: ethtool: advertise 1000M
> speeds properly
> 
> In current implementation ice_update_phy_type enables all link modes for
> selected speed. This approach doesn't work for 1000M speeds, because both
> copper (1000baseT) and optical (1000baseX) standards cannot be enabled at
> once.
> 
> Add a special treatment for 1000M speeds.
> 
> Fixes: 48cb27f2fd18 ("ice: Implement handlers for ethtool PHY/link
> operations")
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 39 +++++++++++++++++++-
>  1 file changed, 38 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
