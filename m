Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C0D44048E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 22:57:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B45254017B;
	Fri, 29 Oct 2021 20:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LwZKQE35cIMF; Fri, 29 Oct 2021 20:57:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DC20400DD;
	Fri, 29 Oct 2021 20:57:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B305F1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1392400D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W9E5axaX9L4B for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 20:57:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0EBF1400D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:57:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="231015162"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="231015162"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 13:57:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="466652719"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 29 Oct 2021 13:57:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 13:57:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 13:57:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 13:57:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EJfAvtJFvmFT8GTdcU73TM7G2z2x3T69lBKKvnoYj9lTnWEXGizbR+SYaGfemfe4wjsMsZCHvB062f27rl4Y20iOAvbHVusDY1q0+bQ7qLZyfX9rnHoiAU3LTf8YOg+f2yeqiHh6Phu3rq9ytDszx5h+S0lG7Z/yXls8yS8cHebL7tOgfMPrDX0n4+0MRytAhxMOM6GYe9e9t7b+34oyGZdBLeJtYP0vh1Gt0xQq2LDYIYurATqnzD5PxlZvfHl3k+VHVuhgGjBj7HdB44RkLxBqU81t+iQDc63WLcFQLkInZqpXEG5Yq5P6RvK1H0soRNa5o8guWJtyCn48YtnVXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CISz7i/C2mSq01VvCPS38QBdFi9wHDmLtwb3N1SVPhY=;
 b=GXRSzRMkL9tpDbBRTQB8xM4LDeR4+pIqiM3xFUSf/XWsSg0vEeYLY3gWhyW0LcUw+ITLG8Md3tDkR4LlPkgeKfS6S/iaIEADf5FU7vBdvJtDAwWGalR5CDO2JXrWGTeRcTs86XQS3o9e/izcL6n/pWrIkYjUvZ+UHuCU2FNJaOmOi0FQBUE4NVhFvknAqxd5GIKVww+kXjDicfK5cvye8LqPuCwkF0HIO4CC3tnhOCQcuPuiIJtjaV3ihj7WOrO/aMSyGHzcSEdWPPYx8PmKhnQ/3a82suN5JKMY5z3eHAfZkKw3DRSbo9JYTMdnnHvZQvWcaIx2pVH0PSKwF3TlXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CISz7i/C2mSq01VvCPS38QBdFi9wHDmLtwb3N1SVPhY=;
 b=veSTgnP8ETbft/eFEeyOi+d5ufv2Vvd2kiDOB7rA48xrQmZ5OEfVewVEjUfS9QAze+DMSlo1gZgHbvJu6ZrO39bm8W6JOBNWBJbhk4lmQzWYc9J7bcPTmh31Sqv8Ss/3OJ2oM7eUKsTdcNrXo6j0xuOdQyC1DuW1/41E7cl1zVs=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4350.namprd11.prod.outlook.com (2603:10b6:208:191::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Fri, 29 Oct
 2021 20:57:46 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 20:57:46 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S59 08/13] ice: Fix replacing VF
 hardware MAC to existing MAC filter
Thread-Index: AQHXQo+rZUblr04sEUO79VG1B8R9Xavrif4g
Date: Fri, 29 Oct 2021 20:57:46 +0000
Message-ID: <MN2PR11MB4224C14DC87457CAF89B2F7F82879@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
 <20210506154008.12880-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20210506154008.12880-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f97faf41-73c4-4ebe-0065-08d99b1ec255
x-ms-traffictypediagnostic: MN2PR11MB4350:
x-microsoft-antispam-prvs: <MN2PR11MB435048B8D06741822DC4B79682879@MN2PR11MB4350.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 13ejl22abzDkKv95ipcO4LTWoim8LVVmhOw9odbsAIeiuAcMba0phyiA+K/hp6k6gvuvPAxwr2M0LtsZwn5ZMjHeW7Q3KTv+ini5pv3jMpKSrflte6Be/CVK8zJkhPYPoqahvu4WaQAR+SMmpaFVBY+knc/XVeN22nbETCPx97mfq/ye7fO4pKtJcSiLjLN4++2OEaxsF3YKuWg26abAc3qfGKKYR7pNTZsSf6JicdlxR1rIGzi8e4gME7Ol4Cb1vaEdD0oI04ESo1ssRaPv9AcHlueCcGYw3mmDHMjds0MrBzfCS5pnMhTQIAcK3g+nDseAjWAz4lE/ZTnfxaKs85W50wWFBvdgfvx8OMCRaDEZtlWGHR5u8k3xVdQ6t3Ywce4vsb4HmlwcOYN8bgRVHhgUbgGpnEsts3BU62ZX2DlUoH3MGdyhISTtou+WtpKNajifgoW5QL67RYo5vxtX+viGpfjmKnt52Hy/RBgMjb8Ga/0vXmQEw0R870YmPneSDry+oEDdhLvh4wr7xkWBC3zGlcblk+1QDVlhA3u84+OSjf5M6wRMwbeR0NOcL1LsasuQRa66X80cDwYj+tPk9/UE168PQyVkVys5EiCdZNdsiTvHxvzBPkS23ZLtDPa9j7UEy7QlwpyvrHHRAl32OKOvAF3vt+tquBsbF1Z9N52Huu75mrXwBvdJgXLjKdVaBdhcmnokx4V6ss0WvxFZcg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(8676002)(186003)(82960400001)(122000001)(53546011)(76116006)(66946007)(83380400001)(9686003)(66446008)(64756008)(110136005)(66556008)(66476007)(33656002)(8936002)(316002)(26005)(55016002)(2906002)(71200400001)(38100700002)(86362001)(7696005)(38070700005)(4744005)(5660300002)(52536014)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/VV3+bU+FpcWxk0P7XzfKl6+z1XwUwoW7e+lmeBvv9oO6/7aeveiU0lwIJPj?=
 =?us-ascii?Q?bq1oHo07v5ARkbta7qGXOsraxvrDdL/ftzjlh1Edg9AXaJT8y8O5dGgOpOm1?=
 =?us-ascii?Q?Tak4zTFKHeM0zqjDqKjPbCarJbtwrdyYamhO4iI22F6UBk1KkhBWDqCqO2TD?=
 =?us-ascii?Q?W7yjoQuBfEsRalPHFO4Bphhp6JY0WS+29pumB145AaSM9BbEGMhFQZTcYBkw?=
 =?us-ascii?Q?E0nvbnSVrzxrc2XIycYd4VeYc5862zAXHrD3aLFbCafW+8gtw2ymX5D754VW?=
 =?us-ascii?Q?r1PIgXVGhwZ17VdpalRbtFU7U1TiGTqNoW1xt7Ru9qiPrMxgJXhplf1w9+3q?=
 =?us-ascii?Q?IIRV8uzljhPHJGTE2n6wzaCzTSluaca9Eol426vy/GGzW3sbmZuIUpVmNCEv?=
 =?us-ascii?Q?W4Gpp2KoXlSrRkdM3f0AfRazK3aRnxP0cAbkCMjkzlGGX0rsd/+v0ZUh3llS?=
 =?us-ascii?Q?zKPbhe3fZTWD8Ms7JOWiqxBE2jvEvN4GHioFMLpFABciqVY95EQlaL+XUz1r?=
 =?us-ascii?Q?6C/XXJM4QsDvff/+1xjqyYycuExnFh4hS5x1ZYrKJxO7oY1CVQ1xPLyGxAro?=
 =?us-ascii?Q?lhw5g4C0MC8jKB4XXDWSlN9SnTDIEiBqLp4oxEKK6UbdiDSCYHgPi6Q4oqH1?=
 =?us-ascii?Q?6bYfm5BwSY6ehsS1SyXrlc9qvuPYHLg4Om+XqO/27xarONqf6lqao96BuKSN?=
 =?us-ascii?Q?6gqHZfFDtTp149n6TU7cW+bvmd43NuwvqFxovF0UdnXX5RpcGjgyK/8oyUMW?=
 =?us-ascii?Q?6BlAr+/MIuXPblQMuoBiY/zO+ekdPhnnLXMHnWY9TmAk7BV1G5gj7EapH6Zz?=
 =?us-ascii?Q?PSoeQa7MGVNy6Q2elTHTSeiH4fhDvXk+Q53bkNE8lzmiq4oo1aZ3rT2UWcJa?=
 =?us-ascii?Q?1FQCnbbz6fZnp+wP7LIlNy/gI8EfeikykbSONpyQFSuqte4lvj2T5PFlimWo?=
 =?us-ascii?Q?FdZcaJK6DvKcYFdmvVylYtYOLLBT2wYEe0/LAilbARoAQd9cG/7tDloAJ3zY?=
 =?us-ascii?Q?ddlHX3f9lu73vJIMjTgi/77lB2JksLwJ4qU2QngpZyQ7KH6X7AnOBmW19zcn?=
 =?us-ascii?Q?QuvoBFcsC8MSkTzrODgROtGDT1wV88fOk2yi72XRkolEPtUO77TuTU8seOW/?=
 =?us-ascii?Q?2CSS6gFljCOT9DuVfnp+BZVLY7Q4wVzKs6F6+aWHz5fu4UEHnOxoAD2QrYQR?=
 =?us-ascii?Q?PXYO8iGmJGnIJZLfJ1hJoRnYb2nrghnyRkDRyFbvXHxoXjuq8AkfoxyhNSo6?=
 =?us-ascii?Q?qa4hkfTByoaiDQZ4kwpJIfUmSOH8zvbksqajbBnIJ13pLWp61p8t8QLve8e0?=
 =?us-ascii?Q?oQrBlCut/FD8cKvlHM126uKEbq1pulLtuSIDL/iXgMHL/5uWheRHSadhBiyX?=
 =?us-ascii?Q?xWppVEKWdiOBYVBBw4pMhI0DE9ARZhb0jADxh4WGgeP6vXtcYgO1YhkyTY0J?=
 =?us-ascii?Q?RRv202Ze2vpm8Qyk3XdGskjtKlY/ZA5mPTlAg4MYdYFFoIcQ7eHN8N1TUf+G?=
 =?us-ascii?Q?7oEDaXo2EV3YkbFMVZWkx8xn7Wb4UnhdvQCA+s8P7ok+oNSstowZw+Gld6+8?=
 =?us-ascii?Q?fJHsvCdereG4VvTan0O6AzBuXe/L41PQE27Po1lP9b7BYpA/JxtVgMCBXwy5?=
 =?us-ascii?Q?r8T/y7natyY+f6+nKCdJzjg78pT+c9gtagLYT2Tz4v1yfBa9Nmv7zMWJwU+S?=
 =?us-ascii?Q?pCy5gw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f97faf41-73c4-4ebe-0065-08d99b1ec255
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 20:57:46.0501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fDRTD9WXkMiTUgGsvEiLt5tXQ4TnB+RSAZ0AI0E6vud7KIaGKwlGmcveQniSufd+OrJ+JONGxM6alfUwqCtdzrUjDdMkH6cjQzbvw4AujJw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4350
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S59 08/13] ice: Fix replacing VF
 hardware MAC to existing MAC filter
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
> Nguyen, Anthony L
> Sent: Thursday, May 6, 2021 8:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S59 08/13] ice: Fix replacing VF hardware
> MAC to existing MAC filter
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> VF was not able to change its hardware MAC address in case the new
> address was already present in the MAC filter list.
> Change the handling of VF add mac request to not return if requested MAC
> address is already present on the list and check if its hardware MAC needs to
> be updated in this case.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
