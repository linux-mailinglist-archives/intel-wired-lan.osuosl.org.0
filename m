Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6E64423A9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 00:02:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BD1D402A6;
	Mon,  1 Nov 2021 23:02:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0SAHJOO9M9sY; Mon,  1 Nov 2021 23:02:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9430840297;
	Mon,  1 Nov 2021 23:02:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDFCA1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:02:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA39D402A5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:02:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m3PXg8-ozkyL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Nov 2021 23:02:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E25140297
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:02:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211900371"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="211900371"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:02:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="531354315"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 01 Nov 2021 16:02:34 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 16:02:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 16:02:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 16:02:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NQOt8n2Ia+V2QjnoLryTPfIkcaTLSmqDKxvafgh7y51SootpS/9oeUy3Brq0JXCs024ayEfUvkGo8a5FGr/zo9XG/hQivph4SInO9KgdjVRJXr3Zs96RnM0+GbSD4NWWsjlKtFGCYPjUpck2GYPAPQEekbjjVtTSIEzFOPAiBEpoX4C6dIVGDbSY/G8MMGEXHAuwxLC43Tn6lSTVFyV+B4mM7AUQHHTxfoisx5PjMvAVEeF9QoDNlmqvc9fHD/JS/Mfo2yetnViHDvlKII7hPxNi7XJ7dDMnPiYpVGNIoq2vYYQU73J/P+I9l/yzRhAIHMZWJGXgy7yiEGhfzXzqOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/EK2V0oHKy2XNV69SRCpkuN7GSksZFXK8Np/+GcKUhk=;
 b=LfYYocPXWTA4aBB9hl3fxRBjzXCqwsUIRgOvqjBQ5C8KjAPlVc9p/09J0yYXOZE839rpNfKi7xfDO9g1br15lgAxJC7ZvTRrIgzG0xxrzO7UZl1CrvWtzw69eREcOGOtlOqjwSYUYNnhssO6HP9sQ7JKO/CYRZmHPlGMxR32eNZZ9SwPD8pD+qjUlo5G2KwAd8YRjxgZsOPcVbwClpFfDdJiPWo8X8PEnb/i6Hawqg313UvwYpotppZPWR1Mi7oVtuzr02DtW8xVat0EShWMNm7nTkwxasOW6vIgSKT8qA0Btq8KBySH6clbKvSaC0oeeSfQGHtwOQRAPQ3cwcMerA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/EK2V0oHKy2XNV69SRCpkuN7GSksZFXK8Np/+GcKUhk=;
 b=xxAp8AMlTMd3YeCGqAklsH6UzQRq0d90O+MsbSkA+dbMMI4pkDRhy+HgHqf7Og1vFpWiBrbmupKRbxFB1cvIlSPIhEzxqw1wiIP5lK1RUrzMRJWD+VdXScockVThV8/gZO8DX9s0psDDm/fVXOXMRqBndr6scr306BFpCdGbU6c=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4351.namprd11.prod.outlook.com (2603:10b6:208:193::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.18; Mon, 1 Nov
 2021 23:02:32 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Mon, 1 Nov 2021
 23:02:32 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 6/8] iavf: validate pointers
Thread-Index: AQHXWWNmRG0kSz1b60Wsn91FX9vgkqvwNkIw
Date: Mon, 1 Nov 2021 23:02:32 +0000
Message-ID: <MN2PR11MB42240978E3DF93971644762F828A9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
 <20210604164900.33156-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604164900.33156-6-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: ff4030c4-2665-4cf6-17ec-08d99d8bafc8
x-ms-traffictypediagnostic: MN2PR11MB4351:
x-microsoft-antispam-prvs: <MN2PR11MB4351C9AE9A73766AFE5BEA7B828A9@MN2PR11MB4351.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:256;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v7XvwMp7rKRD7MAgzRM7u8KSUshw42CcPW33LI2wqhP2CwJ0M/Euylc5ei4qKV07IujBaeT2VJGV1s0bLxv3vc9j4fM/wTrODCO0cAkmyApRiXXVaCc/X5GuSemnaDc2jkN7UeV0SQlzfG5MYkkEDIui+7D+gxPBoI2nQiOP4hKOFIGQl6aZmEjs0KXWD1E/lElLFadQQMXqha260+zVHH1hf3f4Zg/t3Py9znBbEu9QlOp3351NG3D83Nnx1/NzxmcN2qK70qnTbiVjRHau4S712GT9HGN/UjPKCeRRSJUuq2s7F+luw3U/LlMZgRgJGL4ZREURFGrVkIM2Tj/ygMHSbSHUNUg4HHHBEnPGZC2EwGFlwcVPXvlkd1hlrPaYeZBDfNREac4bycAGAOGlcyILHDcWgkEuEQ4dAiDiA7IQ7283PICJhdKtErk4PNVzkyclMuG1q4/lfPIolqDKz0gUzDav0HAROAGBWnD5ORLQa4wQ1B39PDfkhRR3gWIK8w1IHeKUKZosnzGga3E1t+kg7/DURkuUGEHLwRy9+y92yBG1X2fHIxEYvVAVVt5f1Rln+iidVPylr+fJdBSdkV7Cq1yXk8s9YO7b/QtF4PzmVAS1Tf5FOHWlFuKViNi/szE0f3oUYOsBgrGH4inPrTizgPyzZLeNp3rQPCe6etiG3gQFKWs8011hNwRSzAMmYiNpG74VDpCqxWhF35Jh6A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(5660300002)(66446008)(66556008)(82960400001)(64756008)(83380400001)(7696005)(66946007)(66476007)(9686003)(71200400001)(508600001)(52536014)(76116006)(8936002)(55016002)(6506007)(53546011)(8676002)(110136005)(38100700002)(33656002)(122000001)(186003)(15650500001)(26005)(4744005)(38070700005)(86362001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Fe0HZorWfHGKidko+xU/Abo1b329gMi3wbdiPWaKr5Z8sifSB4tToDaWartA?=
 =?us-ascii?Q?a9bItLxZYSmNv8mI9YEjyUIbY1uFRhNx9CqHhx6l0kSRsfqwLrN3+g1V0oLb?=
 =?us-ascii?Q?1bPtFJNtNgbZcAp10KMOUDZx8D6vd0kyWizhxAr6jUPATeWa8Dau1u3+SXLs?=
 =?us-ascii?Q?beybNwrA6Ij0iB95XdKD1eJV83LVC98wv2BkVYjo3tt61y7P/YZNbUyhoTed?=
 =?us-ascii?Q?Jbxb1xL1xNkpP9bKi/oDlAAfXQGQj99/snIti6IgjcCN+IBLJqXT7lUfD1Sk?=
 =?us-ascii?Q?6h43YPaERnP1o0HKclZvaMmG8DHyBUVOkiaG2929Wzwq9zNGjbyjtGvXR3Bt?=
 =?us-ascii?Q?Z0byduzpSBsGS9JukgmISn8mWtijYY2yiPK6v2rdhgqzC0s82wjp4m/aNTRX?=
 =?us-ascii?Q?ahrKscU3h5q9ZlWzEkxJH6WQ9eZLIH4+fARIiLSJ0Y7W12FID5e6CGy1kmcT?=
 =?us-ascii?Q?3AYrSMzKPR3psF3xBtnzTQwEVNegYZfu71h6TSMb5S63i2EP2ryH39Jkf0s/?=
 =?us-ascii?Q?RIIHkDAsThXd/OJXwhbrYsX63GqsRcXjge7Uc/u2pweGik8uNGP6TsbdTmtw?=
 =?us-ascii?Q?xj2DJ1hVJ+3WCo/1YKi6xAoWTWksRRrxPzE37yexVj9OQReHfBRs3FAhtKP9?=
 =?us-ascii?Q?hOOMFduy/Ovoia9qadjdTXm34UAqkw6ImdC4c/uMNPxQPXy9AaOieP3etNQd?=
 =?us-ascii?Q?WfMJxPdCTkfT7kT/UpFlTr7vP9vYrM7BWOuAIFU8+RLNDK5u5bSb1S1MGP/K?=
 =?us-ascii?Q?sYMP1c3EKXu4zzubRZU0DspDkI4DrwEvV/MuCYBnAm5v6GVdFB+jKBAvBK3z?=
 =?us-ascii?Q?3awbZQulfx45SDsDYp18dWEOfo0jaboXRnn/IbM75l4YbRxfoX1JWRf2RzKa?=
 =?us-ascii?Q?wh0flOkh4uk/fKC1Wv0z+CccnTKMODeWrfspwYfZdWCqiOVK0iF78LWHKL0X?=
 =?us-ascii?Q?AkOojreM3/p6piitNBdhlVYszPaK7ir2YxWhZ2D8m6kSNXYBCG7iPS5Nx0sQ?=
 =?us-ascii?Q?Sg52wzrpTWWrKOQX3H1Yp5RQ8OWEumWMjYA2WAkJ7VUeOjF7VFBKU72+3CIp?=
 =?us-ascii?Q?S0IB8VrJs6hWGsU9tJHUJapz2h2/CQOBXpw358hmBTO2w+tmBgdmXe/o6zjr?=
 =?us-ascii?Q?IECUr/ccAe/DND/HSPryp9IH78hJetDkVGzZ9ggiSdTe0CcI+h3cNij4/gVB?=
 =?us-ascii?Q?rDv8YzgSjCIE2r42mlYeJGEzBjO6bbaMaXs76Y9b7jGkUxYN0RzeWR03ZETN?=
 =?us-ascii?Q?8wjxXUh3EzuQBqPCAd77JbLrFSC1WLmM8v2mAute7pbc+ogU40CBgbHDtYtk?=
 =?us-ascii?Q?kM5e32YEei2h/OHzofVWuzwCsZpqnHawAgn+XUOGUequqAiwBy/Q7uuIuOHY?=
 =?us-ascii?Q?BOXHao/iKkWp//wB1f1Xm3YAAkG8WfM0DRiD0mHDkpQyrFkp+gT/H4cMx+/F?=
 =?us-ascii?Q?86mK0qrzmVUNI37xVmqqEYwCYIkwqCqBjXh2eMjcZ+r7vCbGTx1RYAZTJqVq?=
 =?us-ascii?Q?OhljTEBczcMRKCyCGhGYBjM6uH0O85PRxE7c2Pp4unRQp1j1iged2DjLBIbT?=
 =?us-ascii?Q?cNeJNGUBO6GxisGwU9kKNMEUL/UYvwWUIXz3JDgFCik+PzLD4JVowvr/LoQP?=
 =?us-ascii?Q?1pR0Zl8IduE3WXPr299eEcgFn4T5dqoCGxC4EwJP1IXiW9kaT5amLEbmvNQ9?=
 =?us-ascii?Q?aJPLaA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff4030c4-2665-4cf6-17ec-08d99d8bafc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 23:02:32.3697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5pJNlfVSm5u+CO/jorN8Q9IiU8sZ38ukVcjsrsj14TChKcUY22UMo6Wz7p4CkVvSfdza1siN2uiRUCGJgrfVzRG6W26FdXbS9LaB//x1teI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4351
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 6/8] iavf: validate pointers
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
> Sent: Friday, June 4, 2021 9:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 6/8] iavf: validate pointers
> 
> From: Mitch Williams <mitch.a.williams@intel.com>
> 
> In some cases, the ethtool get_rxfh handler may be called with a null key or
> indir parameter. So check these pointers, or you will have a very bad day.
> 
> Fixes: 43a3d9ba34c9 ("i40evf: Allow PF driver to configure RSS")
> Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
