Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF56A4732EA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 18:28:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30887400D4;
	Mon, 13 Dec 2021 17:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lSWjsAReh-QY; Mon, 13 Dec 2021 17:28:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B61A8400D3;
	Mon, 13 Dec 2021 17:28:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82B891BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 17:28:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B0FB80A73
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 17:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="T7nvVIzj";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="Kf4iYX5U"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9gwA5h-NZQZQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 17:28:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0769C80A63
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 17:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639416513; x=1670952513;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5up+g4x6gOKzxzzBA5Jpteyubv9lBiG+fs37ABLg0Pc=;
 b=T7nvVIzj/7Y4hJK2BzwQsNKzhI1JqZvLoz84TJLGtc6l4Y/JunMpvxBx
 2Gn8kaifMVhVMlGKgIV83U6GDjMPtXFoOxXpmpjH23eu0HelL+UGqSgmF
 jxAgepHCjB1Vg2AmOVmqfzqVujGjDAFdh3xiNYuOVBMVb2fvfOwZgSi6/
 8PK0jb1Orf1Eb6V/xao4QGCLu7kankGLOdA4KUWABa9LoLbImKQNAdzci
 mm2f1ng82pVJVWD3oeKRCONhPeuLgzzYDZFKDsf2dByOl4n3mu1SZXSw0
 fVWg48H0gYPQnqTi2SL/7V28YEWEUk9FRRN3sDW/58F2kzv79+FM8nlb4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="238727043"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="238727043"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 09:28:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="504988096"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 13 Dec 2021 09:28:24 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 09:28:23 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 09:28:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 09:28:23 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 09:28:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gy+KTHmfubfaMjLHMfFldHt6sD9tQ+FyYcJsQbGZYSFeAfMgOsv+zNiw3JXMGYoUdqsc6musQJlOyP3/5JT58w8GhTeR/PP4tECajpZiniNVkb/Fj3lmpO06LhUdTVpx555oCzn+eOY9RFgJvxLNzYpvqPWchlsxRL7tPYyZONoeFZDM64emPlrdI+T0594K2DOqwAZRGjLRB5bdjAS25OWxptiDw4KyysTMO6VnyWAR15C3BCQTdcf3cxb8AAMfgbgusFWjU/i2XmqigP7da9J6CfU/q461ZKcou9t4FdkJli2kwMvWQ3blECPsMoZuv+Ej+suOcu89PwtzRvSX5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5up+g4x6gOKzxzzBA5Jpteyubv9lBiG+fs37ABLg0Pc=;
 b=DaNwd/9dIhUaWa7X9gPnhjaYiN+T9pMkD1BjNMTlneBv9juh6QgsBJq/j2enNlrBa9emM02XWpzKHfGCiqBMgBdbjvEJFXCRueaMe1sVtmC73OrCfdo64slGibvqXpEhUodQv3l2z5noH1KxV1c+7dYsvMlWhwRg+aCayH3j7tQ3BkCddSKgqqzHpfiYuVzE3xd4CgBIam1yH/SlnkSYSX3fPqA8OQJSC/2AmpdaFXIFyGOshUTG8A06RUoYK/PGhiNhWczkK3R11RF4WAJPlGcCiWVIklPDFrxai5xh27/GfWfB6k76S/VuziP2hWqgI93jutB2FV4QwYnlDexN6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5up+g4x6gOKzxzzBA5Jpteyubv9lBiG+fs37ABLg0Pc=;
 b=Kf4iYX5UKU3/L//eFdBJI3gOPXoOV//84DnxDzAaY+qDp6IarjuaB07RJ34qEXDVRDbO0njnLizGadbXQ3sqhNYJPC+rhREamba6ieUjGhWCu5j0NJ+EkOHvIc6FSwq5s3dT1EQiCUWmiEPV2zRxq2OreRCBlUuHweJ2NOz8ei0=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5640.namprd11.prod.outlook.com (2603:10b6:8:3f::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.17; Mon, 13 Dec 2021 17:28:22 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Mon, 13 Dec 2021
 17:28:22 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix issue when maximum
 queues is exceeded
Thread-Index: AQHX0ja69HvW7cfAq0Gh52yUGcC11qwu7LjggAH8YHA=
Date: Mon, 13 Dec 2021 17:28:22 +0000
Message-ID: <DM8PR11MB5621F0E9EAC882749315F0DFAB749@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211105111700.204333-1-jedrzej.jagielski@intel.com>
 <DM8PR11MB5621C9E713125315822A32E0AB739@DM8PR11MB5621.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB5621C9E713125315822A32E0AB739@DM8PR11MB5621.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07b746cb-4698-4358-c0ce-08d9be5df638
x-ms-traffictypediagnostic: DM8PR11MB5640:EE_
x-microsoft-antispam-prvs: <DM8PR11MB564045FBA564A5344DFB65DDAB749@DM8PR11MB5640.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ecBQkVJIJ0O5F0jGP43wSrAbms42/Az1PnHoL6VLDxfVEp42NAk9BLSiUwW9aBodiIfGC/7HPj6/DOUSndAwfRCVedPW6Uq2MRiEfFOsB9Ec0zzwfZRILwh8X/R04QHhzP/OV7hrm165IM7TUHoYE7YMKYuJ8UddUcI/rElqdaTe6pbgf4Jsqht59vL/VoVxMxY+5cR3suvdniwoudjQpyzuDA/3zXO4kbvBUDOw0xDoz7gpdScFJLOnrnO9Y/+g3kOiK73V9Y6dD6iNy1TNxngStd1093kXzOUyalR9QoAhahQbyHBXjXaK3XWB4prbniBS9dZiuvwy1jmujWhjBXYvGZz8ksOJe21ycqkpTSBQ3x1D/vmeMfRfMXd11qfncT/Ww0GyC6It/WEfZcIXRZaH2YpVmbkpwHcFLUPd2K2X++4a+wXP5EoyT4mSXMytM3Xi5KhuqQ+PRXXHboiDzlHBRdKba2j2d9tVuiq5PhKXySpYVaO+bZql8Po0KJiXNk/pZvTyAoUNy4zfRNGA2eJIfIdWjW1VhFx76r39alrnVrPfY1K6iOGUXoa4HnBnW5NFPgL5dGHt5XsqKhsYCH1fKV3uAhNwHcHsLLCVnPkSUD60zd0cNjXJ+cTXbrw9rfj5NFIMjVoL1H4BUYOwZT27fFEnG19rnW8D7xxVOTSUPDaay1i4CQQoQ+HPa4eBNrFvtw8ZUUnh5Ghsjh0tjw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66446008)(38070700005)(55016003)(8676002)(6506007)(122000001)(54906003)(8936002)(316002)(107886003)(86362001)(5660300002)(38100700002)(33656002)(52536014)(558084003)(66556008)(66946007)(110136005)(186003)(2906002)(82960400001)(66476007)(7696005)(71200400001)(4270600006)(4326008)(508600001)(26005)(76116006)(64756008)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Iit5QhixZa8DiQsuESJonES/F9UGV1OP2yESqOw6SIVLlQY8jZyZqeDAOpPo?=
 =?us-ascii?Q?1jCvmwS30OsseqamN4+KFCL3Um+BzHhE07HU0OjpTvPti/alBGQWpK+w7ZUJ?=
 =?us-ascii?Q?VGqMhI8k7y+h0v4NhLNHYPX9jzC85HIOCCbDAsiLBGyf45bKpsuQxtf8ZD4F?=
 =?us-ascii?Q?hS3UmLLVTp+qDiDGRDNNjPH292J4mpUuqUBEk+aX18bwvE+SoeBdImKqB6rJ?=
 =?us-ascii?Q?MmVIgANxFKPNIr9scyG7ObLuG5g9MapA2ELIWvkcp6fhyy97GBuKuJKE5UMB?=
 =?us-ascii?Q?08k4Ic2wgxxLnAnkRTOKe1HRiKCcnIlQe4jzkZ+JBWAH5kQsA8eYZ3Ug97/9?=
 =?us-ascii?Q?UjaUIQ+SLnbLfoahnijcOvxSVrb7kk0nN0IK/iSEuHXB39/XdPOQN8raxLYw?=
 =?us-ascii?Q?tap50kCW5/+NpNiFH7uI9l0rSoFFNMfChtptoDF+kP49NkyCX0ZUqCCzJwd7?=
 =?us-ascii?Q?qGk06Bxng4mBtk2kH3fO16gzRgcddDbnaJUZfIzaUtdkVgrmqHr2pdB0a/qM?=
 =?us-ascii?Q?302AcCeliEJ+IX5iRKb1udwkqm6Cm9uvY5XAN6dWcKFpDXNmKD/qZxpUsvSz?=
 =?us-ascii?Q?LbpbGg5swQH9umfdBgH7ZATFP383LRtMmMouWZGCcqgC7PeAcblmbC+/vSN/?=
 =?us-ascii?Q?2QB0fFycOlAQqopr5BJEOO0nBaN5J8ud48RjIWstOzwjYlGegUZfecwzdmYO?=
 =?us-ascii?Q?NDqf4wA2XBVJF7tLWkuE4P/M1P78nDFIWcNx75xQL2g1QyooVCzlJdcdI3tL?=
 =?us-ascii?Q?9POa/sG1Bbd1W3ury7pkGH76aAkVWa6bteANTaEreTX3nRhMkNBBN/Wd6F2+?=
 =?us-ascii?Q?ZgWPGd0lRfQ0dXGa4jkGFD9816wyWfEOOAoOV438tiSxCgz01IkREP4t4/4B?=
 =?us-ascii?Q?viUsa+WGvMrSaALq2Lw3ULVEQLPZM8G2PVrsixqbqw20HJM34PBsJ8yEOfMM?=
 =?us-ascii?Q?csBFydhufz7on8Rp4OD6Mp1DQin5K7PQtlQmCo9GN9/rgdkZSYfwOFgAV4cc?=
 =?us-ascii?Q?N5NNYWR4NPIcsUTbkrJAY3kFk6THJHFzORWN0SfbbOoM8THCsxUq4PUp7nxQ?=
 =?us-ascii?Q?H5/YznJ5UP2pgnYRu3/tZHzLCGtnQTi8tu/YoMGFkjepwZo+MaC6sK6r+yxT?=
 =?us-ascii?Q?eg3gL7Kuz9XOC5C9VWoS0IhrZqqFRUp8H8asE/MnlnUCDe9zmGNv1HDeRkvs?=
 =?us-ascii?Q?o5Vhudl8YPjJZt/eSw/RpTAOQz3GDFWaVh2cs7QzC9EH7ugKu16bd1aEBw/n?=
 =?us-ascii?Q?NuLJEvthJn/bEJhn2PkSplxfY4rCXKIyRVwRd5lVQOud4Ansdj01BabXIEGq?=
 =?us-ascii?Q?gk1VCE9/xJ8zqoKBvNXd6ISz/oBE8pX5BZFHs/UpN2f6JvgNu0y8BQfhnIhJ?=
 =?us-ascii?Q?tTIBcRgbvjnZjXue6da65F8BOdlydT45ZeyJJERw+x5Iuvrb77r2EeIepj4a?=
 =?us-ascii?Q?QcxndW7MffpVNg/7ocy7lVcpXw+NgX/vC7n15iUTeRlvFonyFtGdbC89ST3x?=
 =?us-ascii?Q?d47ScRRfhcKi95zRu+w+Q66Pz8bpLH5klnS4W0BvaeG32VoKyrH/jWtBNWGX?=
 =?us-ascii?Q?Ie7yWV6Y6FsOquWgPxbuogARFrjO6RLSBL9gPUi40cU1P9RMb061obsbYZUB?=
 =?us-ascii?Q?yxBobnpqCQwDYqznVcWD75jq9eaS1/ALdPYzV+HSrcoHCDv2/3sAsDKl0XS1?=
 =?us-ascii?Q?1E5jAQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07b746cb-4698-4358-c0ce-08d9be5df638
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 17:28:22.0681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v/PinDOZJO2ijK2a979XplQXU+SbfGXDfB1tFaI64Ps3w4btDcIWnPq3tj0cawtwxn2wIDHSN7D125lVGdj2BNS801x9/RAFMJ+aF4l2KnM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5640
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix issue when maximum
 queues is exceeded
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
Cc: "Gawin, JaroslawX" <jaroslawx.gawin@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Laba,
 SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


I'm sorry, this was not sent to me, it is still untested

Konrad
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
