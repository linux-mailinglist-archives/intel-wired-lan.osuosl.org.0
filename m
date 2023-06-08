Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08388727604
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 06:19:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9996560FCC;
	Thu,  8 Jun 2023 04:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9996560FCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686197995;
	bh=q4g+OKfG2YlqsoPGnyJ7jcK9PdYXknKtdmkn0J8NCfc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ISvb7fQihDR7sIJP4uhj2pNWMd7yx8C7LKRYKAbY7lWQRJdDHTWAnY21ZAesySG9v
	 ZpEUub7cslkjSlVjWxhwuDB8TappaeQxpxzUEiA7ATB4m7u0pr+G5ouETkg2c+zckG
	 /OC89/8wBg1ejhzEVxP19mEOqN+8rBMccribdtJkw58fdVQEM3Q7/Vb45LxBNIkj1R
	 KnsKhxCEaPvYNyGjFqhdrMRNn+u1aaZ6mC/P15gQNCwo32CymPLQGPcwkf0vpeBW0n
	 lH6AUL3IY6Ot6/REZnYcNCU/8Mkv8ivUawcIGemWF/mZDciG8SvZgOroc8QpyKTRXB
	 I3h/zPMzEZDXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wh3vGj2qPLPl; Thu,  8 Jun 2023 04:19:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29F81606A9;
	Thu,  8 Jun 2023 04:19:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29F81606A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EFD81BF310
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 04:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D158D40AB1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 04:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D158D40AB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OKZqurt8gNbn for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 04:19:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2E95400B9
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2E95400B9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 04:19:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="443559583"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="443559583"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 21:19:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="739541376"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="739541376"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 07 Jun 2023 21:19:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 21:19:46 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 21:19:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 21:19:45 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 21:19:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=et6erKOi4gCTeNO0kIWv0GuyrfZ/16/DJF0Jl5fW2boXevZa2UrJL9VW42zr8zMZlTr0gfPISQiTtjGe686CJdJGMb0L1Y2h8LWRFBN/sqzOKMiSOT9G+o6mc1dsFQxx/IMV3BjZKf8PR2h96INTbqqbgr4cahP1qf5MGkq9sttGhsnJjCl+JTM9/tqGFV0XL1nMG8t7ydjGXaVLcgdLpx7WwmHfv3JinrNBdKIRhhvBiGd0q62I8hD0bIHM18wngt1AWC0td36GKiazDkA6+WUEtPi/7RG1iCHlb1DWrNG4T/L1GUYGhoF6AYQrjUet996xsuiuT6qtrOisLH7RCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=10/JcOZnXfy/vFRjt2/+TUQDi+fH5hEzasvOBP1bnQk=;
 b=GVcGvuzWcA12GxDpmkjgS7aCIwo/yi2VMp5qZaUGoUVqRh2eDy/blmU9HsWdqwyqe7fboflNgMlgmNMbkxXXWT9rLmcrKKOHrGqwdB5gjnPtN7kucrLI09fv6WLGtbtU5OK7908iVx77auSRaznysxgQBeobO2LEIz8nb81UFVfKlRCt8zzYD3iDMfXRMH80R/h531RbnQ5skmTYSlxT9NqIqyISH8Jgy0ff42aBWdaFr2POm2u4irYYET00DfC3xZ+jSNNdod7s4GYz6CN0zx8CkRrNYD6Ri0Dm/tGjA28nMMTkPwf1IEu+BIvYlxvln+mNOpJoeIs5Ot7gprtYJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DM4PR11MB8202.namprd11.prod.outlook.com (2603:10b6:8:18b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.36; Thu, 8 Jun
 2023 04:19:43 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::9723:863b:334a:b279]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::9723:863b:334a:b279%6]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 04:19:43 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Buchocki, JakubX" <jakubx.buchocki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix ice module unload
Thread-Index: AQHZlWWhPrxRUqV6CU+DiNczEXeVxa+AVANw
Date: Thu, 8 Jun 2023 04:19:43 +0000
Message-ID: <BL0PR11MB31223E41D68EEA73F74C009FBD50A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230602152542.2951486-1-jakubx.buchocki@intel.com>
In-Reply-To: <20230602152542.2951486-1-jakubx.buchocki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DM4PR11MB8202:EE_
x-ms-office365-filtering-correlation-id: 3ffed92c-e3b3-4bdf-0dfd-08db67d795d0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HjgPhJRhdH85TVZcxag2ZL6u9LCshuXArgn9lKkbxO0TRjCt8byt4C1nDjs0YmD9NfXCkRye7aKwlWUBpoKj6GMc7ggjNumS+0qFuE1egbxnIEGSMap59kp3BEUvp+YDjG5QcARYrI0fOEtkJMi/Zch5Z5mcgy0Ye6H7wNqbHTaZMwqYytFEaSy6ydAHsTgpKfwclwtGCp5Yufyj1lhkSr4J8U4SybtNdnd1oN310OfILgDVrxs+XxU5i9nfxc+HK/RfvE7z2E6MGgohGjaEDo+DGVE5G8mxT4Scwofbm0hp73qVKkfJFIFQXydmBRONwUbUqK+q4RoGGid5IyEIRexBfUvb1TqMjiZN8Hqu5ZSBE/GadzDzDp7yGsVHpL8RRUTQ/Pmc05VoPORsF6f2IRQMep26hcfZ4eSxsF+TbJewni7XbWtr8m5alhWUjWjG5mhyR/UELVl8yQm+SlF/LyNOf4IroXciLMTUgKRcl1dWxofe79ybeDaGrC0ylMzYiZ+kPNu9LE9/vX5YdRekYt34NxJz9H4ug/VqsNegCFAca7f+KffhtSvZz/C7VV8fasqTsaf4UvWHbl25xqifPi9p1FYXAhsLZ4uhI6n5PL1/RiqfzGIzjfziN0qxwFiN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(396003)(39860400002)(136003)(346002)(451199021)(107886003)(186003)(26005)(6506007)(9686003)(53546011)(83380400001)(7696005)(2906002)(71200400001)(8936002)(8676002)(33656002)(82960400001)(110136005)(54906003)(478600001)(55016003)(38100700002)(122000001)(41300700001)(316002)(5660300002)(4326008)(86362001)(38070700005)(66446008)(52536014)(66476007)(66556008)(64756008)(76116006)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/SyDCBQl7f4nmDvILPTZf8sKX9760igjH9aVySdThr2fQuHkGY0ji41XVT0j?=
 =?us-ascii?Q?ssBAwCtylqdANFzxkwWsLwnbnzMUBXSBmiKEyDgKbEIgffl25yiHbxcwCaVg?=
 =?us-ascii?Q?DJGMXb11E2k38+ilkVRpEoz63kWv9LB6dAY9bSoHMkq4R5QnuVWk9Zb0PjS8?=
 =?us-ascii?Q?sSfULqLG+uk3yded6PM5xiU9xBxlKyw9LLm8gbIFFZOhOnCmxg+J31OC/swu?=
 =?us-ascii?Q?OqSjfSLoEhxS+5iU6jEYkg1kE8q28qndjGap436XfZhtgSbFpqDvcQJpr4oP?=
 =?us-ascii?Q?DV4hspJoB8/FruUyhaJTS7BdckgXoCXn8vQkTlItb+LHNssJTa05nzsfOC4d?=
 =?us-ascii?Q?ZtZwOiZIVv3Yp4fIKLbv6WVnBqh85KHKxPErRvLruhAaoTebUBdAYjo/8pvx?=
 =?us-ascii?Q?y1afWU63S3OJ17ZBc7cjY82L2nKpitFZDDZTd4JA/NdD/Pko+rFxYj0zl/ZJ?=
 =?us-ascii?Q?U5Blvwd4gGr4fUD2y29GEXdvV78gtgHtVOD5KW0F3hxp7MvD1fHqNu8sAmMs?=
 =?us-ascii?Q?RUwui23VUsL24E83PMVX1byscZXlbJA6gFOfL8Ptxb6A11eaxa/3NxGyXelK?=
 =?us-ascii?Q?7tyk75Ncm4E73bZgy9jq4y29SqifLthLOz1rxwVTXEuHdzroKj0XB2I6vLNI?=
 =?us-ascii?Q?inlDmYBfUQ5lWWR6r3im0VaSCRSn1Vo0sPhwEQR5/bjvLew//70Diso3K4nS?=
 =?us-ascii?Q?TohZ+vvkQlZhnJrE3jWUBBqN6PJkbjDzgqnVq+MdLyUzgctHOp2Z9eyiQkQY?=
 =?us-ascii?Q?p3z/53p98yYKG8uWcwS8FUKp3AKuSHF8MnHIvT8MBAFkU+wel+aH6AOGUPhM?=
 =?us-ascii?Q?J7fF8Ls8jb+WPX7+i3pQhRsmiCeTIEAF9OKhIs9OxMbtT/ltPmUxxAqWfdvr?=
 =?us-ascii?Q?dsSbdAXZjuFaJWukbxz4yxvxlY/NOeHDlLgTlOZPQ6UTk5zQ+x67lZ4wSUKW?=
 =?us-ascii?Q?EPbRmCPhs6uBkWtJ/dRKwB9Q7BnPKA70FmPOpTMHxTCdWlfL96aHIni+4hOK?=
 =?us-ascii?Q?Z/qCEqsoJYnyGg5+JJQcIA+ZLHuAJRxyzskDHM+R3gYS4uwu5Luvz4a5qQkt?=
 =?us-ascii?Q?a50RLyW3PQL3QddGwPQgZ38JgGYZaZBr434bYuaS6VdwhkK4JWjy4tsyq7P2?=
 =?us-ascii?Q?ksp5ekn0palntuLmkMb7LZ/r2VFh7IKCu9h29kOCqgKHA2CH5BSe5BpRXUTo?=
 =?us-ascii?Q?ilfbVvfVO+xWiqHAsSAfPlGc0xecWHgnGBjO+etsHmXxYrFbkALkCnvyy45W?=
 =?us-ascii?Q?F5BIYMR7FCLdipPRBDAoPUF5u1nu7gZF2mWyoNTt5PVBAabRivrZPgXteOhR?=
 =?us-ascii?Q?sd9N4wVuHEnWxjD5r+qQR/aH4knfApn/RGP4c9y8jAIoFZAKJ2+roNyJ5xT9?=
 =?us-ascii?Q?YYMiIEo7pWpWZHz4dQY2CTsd7oBC0R4Ttbaa/ngTXEIQQepx+lzRn27wQWV3?=
 =?us-ascii?Q?EtaGfLsDytXZtSCy1Yu9P162dt5YJgnT1emROieko8wxZbnW6BZSykOe8kir?=
 =?us-ascii?Q?6/XSkHyKX/fjgsRa15h7WE1wa6zvRHtLSOBTvJPSLRMI9LVg6C0//3kMR0k7?=
 =?us-ascii?Q?LcJFjaBJsn3jlNtf2s7NYyZTX8GG3Q7KZUv1Yz/NiTmUv7riAEcD3NEIvB0Y?=
 =?us-ascii?Q?Fw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ffed92c-e3b3-4bdf-0dfd-08db67d795d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 04:19:43.2009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OGqEv0o5yNtB+wU2Bk4EkG9zaA81Af6qz/AO7YfmAX6eTUnl3R+zRlF4wdmCMZJVIebCUAAu1cGSKxJRIOaPlFcJUs6QsXMT+JYe3ZsMicnK2ONxc5+2BcYKyEkDKQmy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8202
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686197987; x=1717733987;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m87I8E5BblXtIAM2sJmxC7gScJUN0lqmOoWcVhmofbY=;
 b=YRmhlLsAMqvvVdtm4ezYe0wmI1omOoL3qPxTpk38cbPgrzKxKMLTIMvx
 5LQKxUGeTUZzvlNdgGuhAd0h4WdzWhZhuPYQBYwYd0RBldf5kaG/oBDNf
 +ZvAlbDhgonNwTZH9C40wwFSgj8I7cju7TISiqzwWAXpzTPLxcRVjYPXb
 U7qoCuRNCyKS/GzqAeomZk6QR9v8Odlr+ARqTteCNkWmadiNsXVl8OZgr
 uT83TfJsWNb3/AKgmk6JRV4E8NxzzCaDdaDu3ValSJ6cavw4zqgya4Ebn
 zAAzwfh3eUHvR2dluFNcErIxZK8jIHfby2HpxASChTQ5WmFSKeo/vwWE8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YRmhlLsA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix ice module unload
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "Buchocki,
 JakubX" <jakubx.buchocki@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jakub Buchocki
> Sent: Friday, June 2, 2023 8:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: jiri@resnulli.us; Buchocki, JakubX <jakubx.buchocki@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix ice module unload
>
> Clearing the interrupt scheme before PFR reset, during the removal routine, could cause the hardware errors and possibly lead to system reboot, as the PF reset can cause the interrupt to be generated.
>
> Place the call for PFR reset inside ice_deinit_dev(), wait until reset and all pending transactions are done, then call ice_clear_interrupt_scheme().
>
> This introduces a PFR reset to multiple error paths.
>
> Additionally, remove the call for the reset from
> ice_load() - it will be a part of ice_unload() now.
>
> Error example:
> [   75.229328] ice 0000:ca:00.1: Failed to read Tx Scheduler Tree - User Selection data from flash
> [   77.571315] {1}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 1
> [   77.571418] {1}[Hardware Error]: event severity: recoverable
> [   77.571459] {1}[Hardware Error]:  Error 0, type: recoverable
> [   77.571500] {1}[Hardware Error]:   section_type: PCIe error
> [   77.571540] {1}[Hardware Error]:   port_type: 4, root port
> [   77.571580] {1}[Hardware Error]:   version: 3.0
> [   77.571615] {1}[Hardware Error]:   command: 0x0547, status: 0x4010
> [   77.571661] {1}[Hardware Error]:   device_id: 0000:c9:02.0
> [   77.571703] {1}[Hardware Error]:   slot: 25
> [   77.571736] {1}[Hardware Error]:   secondary_bus: 0xca
> [   77.571773] {1}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x347a
> [   77.571821] {1}[Hardware Error]:   class_code: 060400
> [   77.571858] {1}[Hardware Error]:   bridge: secondary_status: 0x2800, control: 0x0013
> [   77.572490] pcieport 0000:c9:02.0: AER: aer_status: 0x00200000, aer_mask: 0x00100020
> [   77.572870] pcieport 0000:c9:02.0:    [21] ACSViol                (First)
> [   77.573222] pcieport 0000:c9:02.0: AER: aer_layer=Transaction Layer, aer_agent=Receiver ID
> [   77.573554] pcieport 0000:c9:02.0: AER: aer_uncor_severity: 0x00463010
> [   77.691273] {2}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 1
> [   77.691738] {2}[Hardware Error]: event severity: recoverable
> [   77.691971] {2}[Hardware Error]:  Error 0, type: recoverable
> [   77.692192] {2}[Hardware Error]:   section_type: PCIe error
> [   77.692403] {2}[Hardware Error]:   port_type: 4, root port
> [   77.692616] {2}[Hardware Error]:   version: 3.0
> [   77.692825] {2}[Hardware Error]:   command: 0x0547, status: 0x4010
> [   77.693032] {2}[Hardware Error]:   device_id: 0000:c9:02.0
> [   77.693238] {2}[Hardware Error]:   slot: 25
> [   77.693440] {2}[Hardware Error]:   secondary_bus: 0xca
> [   77.693641] {2}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x347a
> [   77.693853] {2}[Hardware Error]:   class_code: 060400
> [   77.694054] {2}[Hardware Error]:   bridge: secondary_status: 0x0800, control: 0x0013
> [   77.719115] pci 0000:ca:00.1: AER: can't recover (no error_detected callback)
> [   77.719140] pcieport 0000:c9:02.0: AER: device recovery failed
> [   77.719216] pcieport 0000:c9:02.0: AER: aer_status: 0x00200000, aer_mask: 0x00100020
> [   77.719390] pcieport 0000:c9:02.0:    [21] ACSViol                (First)
> [   77.719557] pcieport 0000:c9:02.0: AER: aer_layer=Transaction Layer, aer_agent=Receiver ID
> [   77.719723] pcieport 0000:c9:02.0: AER: aer_uncor_severity: 0x00463010
>
> Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
> Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
> ---
> v1 -> v2: The approach has been changed to address comments on netdev, to avoid multiple, individual calls to ice_clear_interrupt_scheme().
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 16 +++++-----------
>  1 file changed, 5 insertions(+), 11 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
