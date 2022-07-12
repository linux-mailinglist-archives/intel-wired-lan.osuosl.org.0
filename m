Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B6C571243
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jul 2022 08:32:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3502260C0B;
	Tue, 12 Jul 2022 06:32:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3502260C0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657607560;
	bh=F9o6iFDheyDeOAJmkMEkech8O+wJ+Mmpw+f/1dpb9jU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MRIeV7AJjPsFlB+7yCEU9GIHXZm77ZyT9McNS49ugcSBBxRz5myKYIS3RYn4vMgnX
	 GiNVrgKm7p/3mPftrF1sjomJVRYjEy9bbIV97qZlpRCqXE4PrNkWAOt4TMwnlm7f6d
	 MxSLuv6ch964tSHzHdQGESYLTHIFZacLWiFxsCDM/mUChId4dMZSA9BXo78XxK0tnz
	 QcBhQfgPdEGpeYI1vHXFlxjFbk66dzYt1IxAG7CQKikRWqp51N7EMYoviY+7Dw9Aox
	 1ZqhsaXXhCv3DAFLokCIfDY/si8xEfFm+q6hYY2ieQM6PLvQkGGGotUZ0EoZS2tkVd
	 vnowMC0+/9ZRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jIPIkpZMy3Dc; Tue, 12 Jul 2022 06:32:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27031605DB;
	Tue, 12 Jul 2022 06:32:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27031605DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF6601BF339
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 06:32:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BBD008131A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 06:32:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBD008131A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JO0jyoxw6qgj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 06:32:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFC8681318
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CFC8681318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 06:32:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="285594259"
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="285594259"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 23:32:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="595175023"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 11 Jul 2022 23:32:32 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 23:32:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 23:32:31 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 23:32:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jfTXx7HI2Cpb9KWbV71qeKvzqS3NggqpKI0M6BwO4IOaKc1pFXZiCALuaWmVnFsZaufz/awLY7wlAc0Cdl1ILHx3sQQnCafqJBH9xR11vPZGIbXn955TbE/fh1bP1CzFSfMRpiZiShFNXjcqbiDADt7/8CUl14FdcteAnaU7YHeFg4Vmt4xrttmCcaIp4ra3N+SDcbr9DRSXMbnGhPyStCajDoY729jSN7w9qJH6+f0t5aVQ73LSA/pm0rfUHF7cAqMTRNjXJj60HLJB+FiCk6VQ4cT4vGzaFAx8CWuUzswbs5Ww8CJ+QI0zl2IUAR7IxfqmQPpOUABQsdU+BmmVHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SQqvV4QcEGtAUrTbq6oTsPgksabE+EAavNL6IgufUlg=;
 b=lY21dcgAdZl/ZXbDq89uPY6MAEwMBtA25uZEXLxfzKA9bnXoh0i5/dcAkTDLwRXnw6DxtM0mec7VQJFcWm79ssZlgZRoBIQ8w8k47te5jM/Z+4rE7uVHu5T95rlD2rOM0y15xAtjow3Pm8mgVA9bbO4NtP7tMVjloW7Fuy7AhVFakY5nwrHm1oKan8ty7efDIcb1CBei6kqdS7iuxXUV6SBo9s8HHS0FMKN8oGdjR18w4pp7S/ll55qwwiY5ErO+piVx4H+Yw3pP7Yf1UxVcAhSUIB6pEP7Uin2EfCMdC76MV87TV4Y8r9BegZCJzszAfr9P54UIORFDOGpMs4HUAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4151.namprd11.prod.outlook.com (2603:10b6:a03:18f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.25; Tue, 12 Jul
 2022 06:32:29 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::1423:e6da:76c5:7815]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::1423:e6da:76c5:7815%2]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 06:32:29 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Add EXTTS feature to the
 feature bitmap
Thread-Index: AQHYittV1e8yevtyUkS0BrVlZKprHK16XHLg
Date: Tue, 12 Jul 2022 06:32:29 +0000
Message-ID: <BYAPR11MB3367438CF98ABC6B7092BD8DFC869@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220628103657.3668-1-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220628103657.3668-1-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 729ce557-c9b0-45dd-07d3-08da63d04b6d
x-ms-traffictypediagnostic: BY5PR11MB4151:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lMCv+lkUBx4WddtHu865EnOCWcr0EtYIArTHSnzWSc8E/Z17pqyhQDaAqug/0IaAr42iUTKa/i+FDAvdNcL+BJxhYkQSE0R9FZATA/Yjf2+Wx4w8SyMqkrntNdNa3CNvt9z/NBeRJUHI+xKRibDciCGG7P21rW5rPONKxosRWLii00cRPQsrd4kgBWZpC4w5nNLX95Il2mb+7br7n6yoOX+eocDD8XeXAWNUv3AWQFQKu6FeLxsXHMTcZrX8lGXq0HxXLuxZFKeJrmud3KMSDTFcZd9L2mdtlocIbg1g99/nw14nZKOm2hSyiL9HNwmnY68E9ZudgoLCB4HIig7telMbqQyoE1s7hU/eH27wIl3frf6FoYYDOcH2D86xGZgf7BI+UXvXlPpgkHwnOJHPVGFsVc6G/EbBsBIAFoW5zaaS74GKOrHyq5IHAWhsk4Sw1tl1m6xYnwmF/a5rU6Bhoe0SD5gDhXUr05D4EZnNEHkL1CaMpWKDqhkxLPlJcBHk8a86fJLTHihpTKBVt76jjzfluRhjnuhvblAQifCqAXP7vHJ05U7fDUiF9FeOQXDZv2BRO30OoFNXOLg9z0mVVNFAsEFAr6H1JgN3R/s3Qrb6Nf4dmG1362PbI8ikBsvg5PTi6i/Jl+ao11bja2z0wbB+j40CtPhp8odZV8z0pxmmFqfg/MDWBwhwlF/6P2BngNk/gT/FcQfov/Ec13Gccbp0kvkG27b3ILB27vA+J95sgYavfBHv0d0c4AgxUZ++K2LNCemY5lqpk85+LiaXQP4F8bwWKHKkhEkeW8j9sTvOEGHXLYeiW5/5wOnrmHwS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(366004)(346002)(396003)(376002)(478600001)(41300700001)(6506007)(7696005)(2906002)(26005)(9686003)(110136005)(53546011)(86362001)(52536014)(33656002)(38100700002)(5660300002)(107886003)(8936002)(82960400001)(38070700005)(4744005)(83380400001)(55016003)(122000001)(66556008)(4326008)(316002)(66946007)(66446008)(66476007)(64756008)(54906003)(76116006)(186003)(71200400001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/9SMAwhkp4Ob8W/Gg4BukZxmUKUAgvlAcm1KoMZ2KnVU80wBYdok9NooITG6?=
 =?us-ascii?Q?s5ekwQ3d3rMjA8KF0t/FfJ0/pZY48/+jPB5lc9bVsWlPTUEtxSSrU9FhmGFz?=
 =?us-ascii?Q?e/mZOEoOnH14K8ehXBcDlG7pfXr3UHqH4RAmZ+ZCLpaBKQmZn1nmV5dk6lGj?=
 =?us-ascii?Q?N0TrIdZjl3Y9kM/4jGvW49RO8EQCMDBFgoJ0pJq+3cJguXDrlFZl7hNwLiCT?=
 =?us-ascii?Q?EzJx9cBReoFjcVQRn7rMkCPXZKwI0hvQ3okrF5OibQeLQ6n9qDljPojQxs3g?=
 =?us-ascii?Q?duGTB1nck8Y5IuiEXhrixyotYoKXAgns7NUKpO8WPfHNY/bhd9PJdUVLLMhK?=
 =?us-ascii?Q?W0jmtIdMX3BC8Jmdr9zyiirTa7WDhyY1Ffj8+Abhu9+BG4f5V5hUMvXgUaeD?=
 =?us-ascii?Q?J5O5NNNTAmuKrWicqGeGPXMKaxXdhCQrykFhuNvMi1vhLgbn2fNwOMgJP3Uk?=
 =?us-ascii?Q?34XAusNMD5k+YwyR9RHL3QB401phiM6VYuTCVVLUDdhk/BSYnqRWMyESNe1X?=
 =?us-ascii?Q?dtsctRCAbQBHBvb8CXSE1wjwXOMZ1VQDi/7kNYHUNFDGdm1TtV5DmEn5FYhf?=
 =?us-ascii?Q?1nNTx1J3tA3q+LvYbeZT+zFf9pAw7i4oVgt5sFhnp3xE4lTXL9mxR5KKDVhO?=
 =?us-ascii?Q?HsckfycSw6Uxj5p0iv6kmw1VuDLIuevAgiF6Wgh/zz8hCuUpqdat9vRoEE8k?=
 =?us-ascii?Q?GQI6CikYQqWsXkWTos/rMnjFWcG7kpRb+G4SMu0ybEZSNfHuWH3+FaRDV2rt?=
 =?us-ascii?Q?ESBQVYkNU+pogbyivcf4ojqpiiKvV89xpqoM1bGtqwIedvVei3DxMXL8u4Ok?=
 =?us-ascii?Q?Iw9f+bye3/ncjVmvsAMSAqMfi2F1QvDyMB1kKjUMU5FIeYnw5AnawzvlmaQi?=
 =?us-ascii?Q?cBEhFORqralEsV+VtFOGT0LVGmwiBumWr1zpyQGxqyGQw/8P/Gq+Wc94aZK3?=
 =?us-ascii?Q?GyEomuqk5V8jL+xs2cdl9kbjtHb2zmhW7e510Qw+Kb1N56fMIGo8Gri6z4xu?=
 =?us-ascii?Q?PmUr9lrnfNzXyxPfoOWoD7d2feHFG1DAfm8qaQ5e9gBFJiwh+h+rUW7XFbaI?=
 =?us-ascii?Q?betPfNJi6NHSjiXJ5APDDGL6hde9CmMYfMOQt+dAOZFWIqhXqoWh3gSmSVXO?=
 =?us-ascii?Q?k4c1Od9ZRDeFo2S2yIHnwUuFMcvUDV4mD3AQ2EFdYVqK7A/bK1pags72o2WN?=
 =?us-ascii?Q?zL7pBMu7NGGSQ6wUCFnYvB4Wt4BGhS7/VINSy9WB+F3hfZc3ceGSHSllaTzh?=
 =?us-ascii?Q?i+RondIUmqK1EcLsPvPpnYOg6vHFE5B/8JhL0p55qVdWZbbl/EAowdvOpvm9?=
 =?us-ascii?Q?jqsKWYuW6Jh2oLh8+Q5I+yq9Ia+PuWTzH8XKb6fViDdCggbKKrWY+/iQ0FJF?=
 =?us-ascii?Q?y9y0wXC5pULAtrco1HkAr7CY4hb8u9LyZuqST6KjCea0FdLwtoJWsC8q/7OJ?=
 =?us-ascii?Q?0T4j+XCZX09KcodO2ZVtC1admVjRbk/kO3P6kUOPg4HJgMQDzLMa/ehd0UM2?=
 =?us-ascii?Q?CqE2pVaLEWQmT8duobLKZC3h49NQ1X3sfGD7ILV0fp/sWgMQsxsfu49Xf5Qh?=
 =?us-ascii?Q?KPplaYqNQC/iG1zgsKMlrm67mtl47RFrTQsQkOjo?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 729ce557-c9b0-45dd-07d3-08da63d04b6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2022 06:32:29.5661 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lR9fjTQEBGkRNNwUlAc0nFHPMAuTOPzKg9VpZypfk2DmoAJ60PVXFl4iibjN0sJr4KHPVPyN89VItmIPprAEdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4151
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657607552; x=1689143552;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+/NEnPSLiuUDAJG7vhyk2kZmQ3ZwcOal3IihK9nlZCc=;
 b=ZymiJNRldvTyJaCvpMtefv0oH6Yln/hmoDTfKRU2Fx4yIbDIVBbnj2Pw
 zqq/YNz/HfyE+e8qddzL7KL11My+0DTj4p+wtVF5QuqpMInBfEkD24NTK
 DPsFQQVJVe25wHWBDLPVRHF387atiY3x9MTFNEI1mUjqYXG1TtP+/ZA7N
 6GcWDljSfTSIEwMCpKlM6tK+0BojWl4glaPgTUBx/rYv2OaqWV1tPw8t3
 4ERqRQCg1kOKo5wO3sWfa4kP46oH9B34Wtiaw3Y2e5i0aBFomFXglSvZ8
 G3eGzs3Dyqflv+KEpkpNmPgqBhGXIzTySHCVS3OvxWA06id7LYGbMgDck
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZymiJNRl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add EXTTS feature to
 the feature bitmap
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
Cc: Maciej Machnikowski <maciej.machnikowski@intel.com>, "Gerasymenko,
 Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Tuesday, June 28, 2022 4:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Maciej Machnikowski <maciej.machnikowski@intel.com>; Gerasymenko,
> Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Add EXTTS feature to the
> feature bitmap
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> External time stamp sources are supported only on certain devices. Enforce
> the right support matrix by adding the ICE_F_PTP_EXTTS bit to the feature
> bitmap set.
> 
> Co-developed-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Acked-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h     |  1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c |  1 +
> drivers/net/ethernet/intel/ice/ice_ptp.c | 18 +++++++++++++-----
>  3 files changed, 15 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
