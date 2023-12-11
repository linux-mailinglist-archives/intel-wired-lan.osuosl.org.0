Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C1180C085
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 05:58:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F40B821D4;
	Mon, 11 Dec 2023 04:58:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F40B821D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702270712;
	bh=Io1J6yCFkE+rijFjS+d712P7P6TetVoG1leHpVW7Lr0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z2IifRaNzTMYRTgMKbfZrp8eptVqN8R5avoUanHFIwhYd7ndTAnJzyLf8gele3vEN
	 7oXNr/B0YK+pQXEkT+vDVSmf2BlqtHaaOF6jCVEMzJx4jQVakqq8h9YuTgICgK+Tzu
	 eDXiP7Rrhl8piXta8pbpReSzQ8IV6CpPQCwXLEnNBrakGvQfL3aJ8xohNnfvgP36ku
	 cwmi6vkBhqd21LyAQc/B17sKJYEouYbxCMkjsaXZNlDADaQ7w9du1uAlAVJwsJY3SR
	 0swffF2gkBeKAO9cZnOToM0y0AXfkSZ/7tg7FofBsWbt82rrzn2N4WYraHL0W+ZsiR
	 h5mEddP1QAPLw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mCNnPMUxE77a; Mon, 11 Dec 2023 04:58:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07CE7821AB;
	Mon, 11 Dec 2023 04:58:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07CE7821AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B35A41BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 04:58:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83D13409C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 04:58:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83D13409C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XITl9lhKFCoI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 04:58:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC7264094B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 04:58:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC7264094B
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="391760920"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="391760920"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2023 20:58:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="14274946"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Dec 2023 20:58:22 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 10 Dec 2023 20:58:22 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 10 Dec 2023 20:58:22 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 10 Dec 2023 20:58:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gfxd3c2xx6gOhDByORckB+Ep4nx1ikNLBOCQ+wzE8AgXK01+JvETJdtjavcNZN3ypIYRby1jBtYPTzNLyYu0/MBDIlmzYF26ua4DJUH31zTLkN4QMLyKTcSwMrzvtudGKKAyzLaGAF1tpli48zQKscX2k5DamwByJxdXruiL8OezqUGYQjR3JrMoAvZLiht8SaAXKkSDCGPhhFpQ8rolrZD6m082L6Fh53BI7hyhKVpVR0MYXvmBJT64dMfdAEQovGCdgb5hKjJOl8Gv4OrmdRXDjxDXyKhpLBUjyue10QIaMv7N7TyViWK/um3FyLaKb/zYcNogdPYDTa9Ue0i8sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D5C8BwddJ6GhWpNTF4TILxew5OFUtbUYZ4PZztgkmco=;
 b=QppcdGgB3kZjlOmyDiH4ZjIfVzWpqNHcYYCzJ8fwJ//qCgYTAEA2dBDchPVw7DgG5j6PujTP8RVj44969LBd/cybJmTjiCs8niGeoERsiR2cB3cpeOQkfOqZmFnuDdzl04b3bigWZrnYPhDfpOnw58MEn2WRMmOLLJbYAO4oNWl/aT4Q1eXMvH078A3dHXJzB961NWSlueKPCPKboQhbFtbaKQjAkofw/wz+nnJVkRxr+HfQbth78rNCtToFoDOaK0ICJ6WSp9MKwo4907tWGGonzQ04TUha4YMEdrqH7rcTzAX1f+6VO5jxSmO5kxlml/Ao3dYJNNfP1j2QJDR2rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SN7PR11MB6653.namprd11.prod.outlook.com (2603:10b6:806:26f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 04:58:18 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 04:58:18 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove rx_len_errors
 statistic
Thread-Index: AQHaKDCVRy8lAR3P80+G9xI/0XpG7bCjjJVQ
Date: Mon, 11 Dec 2023 04:58:17 +0000
Message-ID: <BL0PR11MB3122259FB5817FF7A1AE7ACDBD8FA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231206104333.141792-1-jan.sokolowski@intel.com>
In-Reply-To: <20231206104333.141792-1-jan.sokolowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SN7PR11MB6653:EE_
x-ms-office365-filtering-correlation-id: 882c69e6-a535-4a44-475b-08dbfa05ca4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: reVkKmkfDeT0fI0fDGqS/OC9SRXm43tHsOHFRUYuQ11xWmCLcsIn0ezIvhggZ17iICRoB8wumYNpUvC9FSQhmxKXQSQYltd/FTo07uVLP6ZCp4ZtQGkiZZMjQGtfv4/WaYwhVPhY5MMQ4NuoxWnUYZZB2HvjT4WgmvC5X63yGOTkBnFe/Y0kZN6KHgnP1OPZyXxjKVNR1UA/ds32WGwEqvaR8uPfVLJK7vG+u4z9VRqdzO8z4gVJHl/9UJlriXiatgfXFRBSUsRgfpNtBm9XCdU442Vwq8CT03s1rbPlMJPwa7i4DfYZcAhB85onL5ilRS4aqkg63Hp87ChCwe00zfT51UAuWQuhfIZ9DkRyAUttlnb8xwdYkCPnSl45HYRXT5DPEoafrvmT8dN0B39PvQ9mTJdTC9T8ajBg7/+jgsMc+v/EFHWDib/Hh8S8MsPghtlzJNcP2huVJ/WbiqsZtW78xXNg+ND3L8R6nGQ6KS3OXgXJJ5qEcwTi5PsOj1l1OSuEzT8PO+2MToER50aDMhMYe/Ht0C68ChVlV9hmtjqr5yvRILNlhM5WAfC6o6SHxh/uZORrZpVuIcBE/CuI3UM3Rsh7W7cv4TFU3PEe5XvwkrqUcW/dJAZ4a9gCH1o5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(136003)(366004)(396003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(4744005)(2906002)(41300700001)(38100700002)(122000001)(33656002)(110136005)(86362001)(82960400001)(9686003)(107886003)(26005)(478600001)(71200400001)(53546011)(6506007)(7696005)(83380400001)(4326008)(52536014)(5660300002)(316002)(76116006)(66556008)(66476007)(66446008)(64756008)(54906003)(66946007)(38070700009)(8936002)(8676002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dWoGtIXJnHGVOQdmQBwtPJaKcjOq4w9gh1qRFKa6aNz0lCH/FWdsi4zDyjS0?=
 =?us-ascii?Q?bibgU0NvidyRtQ0QDOJaUqruTvz9PDRxM0DY0+AAukpozxYEfP6h+GL9/WS5?=
 =?us-ascii?Q?JZRjkOpY4E+t9gcFRvWWaTRJoSORqqEFKdL5wsKa2BwJbupXamJdkAQ6LCpA?=
 =?us-ascii?Q?mQNpQaWJcpYMZooB5WLx0ma+T1daMzvl6c7wJ6JUEyRdwI9PjHRP971qI37g?=
 =?us-ascii?Q?W2VM1t4ITys1o/T+VprC2k/gaSo7nVND6JYUDfGjs8+MF6OyTM1y6dHuqAAW?=
 =?us-ascii?Q?Gm9NNIforF/2gi2nRau7RS1XWniYzn+wfR6+FSGbfYl/kknLp1u+zxEVodFN?=
 =?us-ascii?Q?rE8kl0xojUYqUjYs80NyOB1oQLjCofGGC0ZRz0fjNPBO/p8BWJQgO8GUH3j5?=
 =?us-ascii?Q?3f48UOa2FXVI46tMjO/YfkHn/KTxXJZUGWAjD2JyV+Om2fjQ1yQg2SqfWt6k?=
 =?us-ascii?Q?84zFikJOhVDkmbgQXfpeXRU/rEzTDv1IvW6GmwZhFIFWQ+Z0IEOb1HCOQF+n?=
 =?us-ascii?Q?0o7mNzPVt6mdypLLVCUBUiAW6FKZ33OsIq1WHtuXBUx1F8XXNJn8817YZ+W8?=
 =?us-ascii?Q?UjwzGMumynA8CcwikqRUjHpd9VcmWKYRg+HnRlIxq89xPZ2eYDeKs9CTuAh8?=
 =?us-ascii?Q?67gSzPIq3l7sS18xrGF3S35fFVYwR3CN4qgZtyfeZWvEAVImh9nEnjdCaz2/?=
 =?us-ascii?Q?8rBSqgHIO8w2SEywtPRdHfW/EX6KDybZr1oH4swtpgZCL5sJU9mOBrsB8fBt?=
 =?us-ascii?Q?lptoBNeHR2AeKLj9gq1FkLQTAFQjsp2KPUzQWE83dXnmW+eqLztruZum/zmz?=
 =?us-ascii?Q?xTCXfBfLb7ADlf55+ld+8niFyXmz+QxHz979igQuuvQieSDruifh2HFt8ABv?=
 =?us-ascii?Q?VPAkGMbFWKuxqO4IzqxD6Cclm3ZcDFy8yNNxSdg/YRmIHW4/g6Xx7bkdbBMA?=
 =?us-ascii?Q?JHPS55M8r4vZ7nS5Y/DRc5jn+aSakPqcqTvIFl30WyF7wevZOASlLqosRjLY?=
 =?us-ascii?Q?E8XzxExAZo2kuzyEv/zmi3IOc5LSU+DHhHLEgb4E7XHZsIMj5Pd09OSOYD6H?=
 =?us-ascii?Q?7/jdpWSjX1vMLy25sI9VHV0TjwDuso2cWLa/sbdqMQAX0j7SkEZDMGSqfEzR?=
 =?us-ascii?Q?cn6Xgg+5Q1lmPJnDL6ZQRCBDKbtIYbnniPYFpK0Fy4GJfGMof0ko6eKUPsX0?=
 =?us-ascii?Q?Rp7DIumLKLwi6KebCoiXfgXfYPCmxgpwPQqGhvF8sC/F8rwfwrNpKukOs8TD?=
 =?us-ascii?Q?WdcPM9qIPUMZje9nWKWlXd2x64qrIB5qoDrxTWUyBQrR8DXhf8DJg2gsxkvw?=
 =?us-ascii?Q?Ojh6mMjL1saQLZO4NT3axBRCZV7DTnY6b8ZA1VLrNcGqshePnLnzKB2PoUch?=
 =?us-ascii?Q?gKs6yUIJ/cYQUMbD6xgcuxVRbOtQWomxrkSlaUkcdb1HD+E3WAFbC9anmKmL?=
 =?us-ascii?Q?h3c9P2ApqFGqzHrv28pbuHNX5aWDqOB3Ksi0MRrVyJdypbh3LvpNfQ70y5vj?=
 =?us-ascii?Q?bn/O6HF2usv68ZeeTrM7QuvlkkFaWGgTHYx8lI385qdMpnhN/0+s301jKgHq?=
 =?us-ascii?Q?OzyMvtCFyOEiFQ5Q5aAtdeWKcVZaJ3kCTyW6QQeJ2rl/MaJxibEnvK4nDx2t?=
 =?us-ascii?Q?vg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 882c69e6-a535-4a44-475b-08dbfa05ca4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2023 04:58:17.8441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mHp033J45S8cmuVfp2TvmZDYxn9IDHZ/kpFvWBhGkB+0Z7RYjQSLwol26TezxFCpRjRqBcyu/JXRLhakwEMjf4+NHcDF3yPFliodFvzCBBE9fBTNoGhATziFZevWIbGp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6653
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702270704; x=1733806704;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1NBjQ5AU4vL0wh3uAZAeOm9qb3f7HaWy+03qxev+sTQ=;
 b=eDq1k6yxmFWUbpJOnh8dQgEo7k+myS46gC7r/e5wpVoVMpYPyDXP5KXf
 +6pTLUZYTYGb56/NQI3ASe+SvKdunLKnspV3oCNMWcCpQK7ss875Wz72j
 XRDFIGQZL0XSiBJLvQHfqpucaR5whPiY7ra4baXwpQ4HgUG+6EVFJaWHT
 5B3lAZrq+jwKIQMAD+6sbC7MBup1vA3Zoq0Tmm1KJEKjuxltUPxaMkP3F
 8252ndCP39LGE9uNklqjlkI2/Bz1dUCt86cuxy73rDCazeTtF39QLireM
 pje2riFG6riJ8l88Z7eJ0pIAKHrRfAFhmV493o6S7e+6TniZIatF7MBXg
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eDq1k6yx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove rx_len_errors
 statistic
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
Cc: "Sokolowski, Jan" <jan.sokolowski@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jan Sokolowski
> Sent: Wednesday, December 6, 2023 4:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sokolowski, Jan <jan.sokolowski@intel.com>; Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove rx_len_errors statistic
>
> It was found that this statistic is incorrectly
> reported by HW and thus, useless.
>
> As RX length error statistics are shown to the
> end user when requested, the values reported
> are misleading.
>
> Thus, that value is no longer reported and
> doesn't count anymore when adding all rx errors.
>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 -
>  drivers/net/ethernet/intel/ice/ice_main.c    | 5 -----
>  drivers/net/ethernet/intel/ice/ice_type.h    | 1 -
>  3 files changed, 7 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
