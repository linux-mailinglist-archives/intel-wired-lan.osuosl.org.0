Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 365934423AE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 00:03:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B711540294;
	Mon,  1 Nov 2021 23:03:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wy1VmhvKvQs4; Mon,  1 Nov 2021 23:03:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF64D4028D;
	Mon,  1 Nov 2021 23:03:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 683F51BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:03:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 530764026C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:03:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFpMFmsWwbny for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Nov 2021 23:03:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F20D1400DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:03:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211194140"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="211194140"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:03:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="500251352"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 01 Nov 2021 16:03:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 16:03:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 16:03:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 16:03:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bBPS25qQQMDqNuJ7VPzDjtd12jZRrEx5yyBxfWSEOAuz4kiskdrKB9rdiuh3EwHqfqsdoapTnrZyIYtdEwsO0hZ2yZlC3iFiMz+YnbShpPK6pJ2MN0UUb/7Wg+sRuDfx4eaQyV0alcux9/OHCqwljjN8BWagFTmyljGN1AKlkqsIR4FYkENErSWSbq86VAipoirA15KNWNzoz8Yfv+wyAnIZq3BNDkNsDQVudRNcEvtxHAqpldI+nZTfF+K7+b8VDYz3jgJSk3n4US1YYHNHPGhCpIFRAB+ZUjJ05DfwDVf+R5p7aVSAnOMxs+NCxidtpf1HoCRKzIM7iG09rT/3og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9uEdbdmGdPeLWAlSYDJ6rUA3g8j9KtlHK7jW3txvWtA=;
 b=NEnmLRyzKvXGZKqRbnVxNHA0O3Aqq8b1MY1yywHUuYgYjOt6DOLYHEH1is+MMiKcPAlwtSuBxXh2ELEAxxT3siM2keSAR53ZO/T8vPxrJVDG0E2bwIABs3IOywPQNb3XsmofRSCeSV2cxH2tyW6sTxeVtGSehFuYaesXgqA1HB1inXAhjYPVRxUbMzTl35o+wwsElJfe07IBOGhvKVX5+b+MZosd5ydTF36D5yg8XeqE1nWD1uPyGkrlfdMhUl/6PZQpwSCmzMSXtxCy4yieNEdm1mMU267gU4EfxanZRL2jmkWPIlpzlzWkvk6WYnJ1OwVfIftQBCbC0vf8S31VQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9uEdbdmGdPeLWAlSYDJ6rUA3g8j9KtlHK7jW3txvWtA=;
 b=PnjWfB4+v2zazgFg8YTwqldxNIbeQ2b43rRYRExetv2JAOPoK3lr4vYifclBWB0DoIs/rMnSGx2Mjk/BrGqQpck5eqUBj4TxI6viTW15RAeOllsFTPgHGu8qwmRN6nFd1Y17HbfFhitqV5p/KeyA39EX9zoCkYtQIn2R9LyOxB8=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL1PR11MB5528.namprd11.prod.outlook.com (2603:10b6:208:314::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Mon, 1 Nov
 2021 23:03:33 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Mon, 1 Nov 2021
 23:03:33 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 4/8] iavf: Fix failure to exit out
 from last all-multicast mode
Thread-Index: AQHXWWNhDZUUtKaZc0KROrd6BbEK+KvwNoeA
Date: Mon, 1 Nov 2021 23:03:33 +0000
Message-ID: <MN2PR11MB4224EA6DE28E65C5B9F360F1828A9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
 <20210604164900.33156-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604164900.33156-4-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: be127758-52a7-4c42-b765-08d99d8bd425
x-ms-traffictypediagnostic: BL1PR11MB5528:
x-microsoft-antispam-prvs: <BL1PR11MB5528423EBAC9440358B14C8A828A9@BL1PR11MB5528.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mn78sxICRcHOAj3j3RZG4Zt8/mDdrFsID8ccwtwWdwxDmhTKvHknJVcMWPDW4lNvjkiLCpPvJgrVvnPZ+owhO22LkEjH089G5HopSAZ8nXIA1wT0/nunbRYgi3POZKwIFNyrGgCXgrWY9BBPgFmMQ70AU1jI76I749ePGxBRzEYMv9U8qGPlF1Kb7QBpoIb3hSyF8C1e3eXZty2CoK0dH8qmuq7ph6/QQBauU6vWxhZA9l3PRXehCiKamPKh5UR1ntta1Yi0jiyERvzMadtizhdDLhJsStCTL9pKEG/XQnqtjHoKP0bpdgP51qwPdMox+Zh57EXP/ziDMjKpoJxwC2v9TTzcQIMSNfzM2jTTa9hShdpqdBqMMsLex+QRAC6NlU0qtKFkS6uT/MYB8hv3YePxAuieaBT4MIrrV3ZVz85KHq48jmaEverpAWHFcvYFL6hVt2OG/ku/dqZhwPoPq2Eo06JiZsA/XDfONMvREVJBHjxvC0HtaA0ZrABKjRqqDeHK0vmV5lgZqOLN4z8OZ9Y8t9soHbWtzqNrH0WNfTmkcdrdHLLwj9saVq3P0UfMBJGMaL81LK1x2d5I7Iwa/YW05e5g0cfFyO6S2461dONNZAV8b9wZjjpuhaj+ScLUcZnCs77d5ZZJ8xH4hkofXzSl8//WwC0Wy4qq6xbl6hQwhAD0SzYH8wHxVc4ZQz28OvR1kRnbsE2umR8Ht5bZwA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(2906002)(38070700005)(26005)(122000001)(8936002)(508600001)(186003)(83380400001)(4744005)(71200400001)(8676002)(52536014)(7696005)(64756008)(33656002)(316002)(76116006)(82960400001)(55016002)(110136005)(66556008)(66476007)(66946007)(86362001)(6506007)(5660300002)(66446008)(53546011)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?anNb//Sf7E/pilpP36q70Zm+sYcr3WEt4lnUY3G9+2x7FlDF5/lepALillxs?=
 =?us-ascii?Q?vqwRw1LVDwvTduMFqbnuagcrbBLFnW8b2DRBrDR04Vua0IvO7PsMbcTV4ChH?=
 =?us-ascii?Q?ukL/CDrMmxbwMOW6qELy8sYhF+B5yHgX1BeOWhvLyu+rrrzCAVDuTVCHXbPg?=
 =?us-ascii?Q?xW/lro1JomoCWHQNohS3ClSSGZ9MRVDZ0CPerkDWmGoP0RP2Rx1d6R467kVj?=
 =?us-ascii?Q?ruA+WIGANURwlWrklJ/GJDo1qtG0Ca65b8vhYwCp/MJHqvj6vPGJhWvkBo6l?=
 =?us-ascii?Q?FV84Z3N6IwKjGHJWUVBC831GffF8HKaMiXMCMKyU5avuVgWiv8Gwci/UD8YK?=
 =?us-ascii?Q?0BJ4KH6aZGchTa7+ECLGQGcIWIm8NpHoXW00QuP+90obIprzPSLGbYMEAVGk?=
 =?us-ascii?Q?Vh9QWfezSXhnLPZRW23S7goz+g+WUlkhISiYYlUuUhe5I4RZd4XXLLA1RnRQ?=
 =?us-ascii?Q?sfgF+YRVT/Y00W+RJeXZg9hzUZhNHHZOqtOMsmdCV3oGDPFIyR0qkeKkOz8N?=
 =?us-ascii?Q?6dASy/3s5Qosf9XxuP2UyfbjcXXgtsp6JpYcrC0dl+FCgwsxpx3WHdE2x3hX?=
 =?us-ascii?Q?u73VPnjEGSKCf6VnxbiEre/gE5EXmy4SsPFW2f1F2w8sjp7Wox2yz6K+OU8S?=
 =?us-ascii?Q?bXp83zjGsAg0ghBJ7KYauRgxkDqbwkFBUK2t2xHUBO7+zN8gTMh3SRRsOtH/?=
 =?us-ascii?Q?pqLab3aYslKDlzyiWa5GmEMfxL1dC69dK8kviVHG1JdAza9N7alYlt03dAu8?=
 =?us-ascii?Q?FVya9w4ckNY7GLmAVZObBYnr0k6S3X9MCRow+KrpGj/vDFxVyQc7wP0c/Fw0?=
 =?us-ascii?Q?Jcy/uQjKMaol/dBPBugxi/0QcxEvjDyhxES8SpZTjU7JLzJN/2Wyo4s1IOcq?=
 =?us-ascii?Q?fjTgJ7T0DP6E1zbQCDijwyz7A2loimkZ7/dxONV3L9WxhscigPQ/6q6W7eRo?=
 =?us-ascii?Q?aeWoiXthwUASX+ppwM6RJt+mnpDWegXPRHmGmEcm00VHZE/scPCIDpUYFtay?=
 =?us-ascii?Q?SBnc+ZahgbFHNQFHVpj2EfI8bJLp7lLN1+kmErKXNER2tLD4u7e5B1kgC9rv?=
 =?us-ascii?Q?8YyVPfgTKhe3dICULpkCeQ+yUgoFtHus81vq/4QyufQH945Lg72qd8apsPlz?=
 =?us-ascii?Q?VgR7JhITwLNDNES+V1oe49XtFKV1d3xxm1KiCWXSEnrU8XsHD5YRquj67T4Z?=
 =?us-ascii?Q?IqnqQjG07ait3t8p03eo8wBdcu0MrRniGmBUSdOWRfajQvpNLGvviytWMB71?=
 =?us-ascii?Q?OK5u5lrZHK5T1Nt0z/FnEIyT+qEE+jmdMgsJWCPotHBz/httaqVh5+Gls6to?=
 =?us-ascii?Q?bX/uC7FBn+mb4FVT7QyEbeS2F4v60gRz0xDIro75zZ/Fec+YArz639fH8euP?=
 =?us-ascii?Q?IxopPL5QSxfCOtjsz6/2/W38dtkmrEmYIjGc5jGNPUqP/tmd6+ffz3iqO+yx?=
 =?us-ascii?Q?hU0DoVSgJyIbz262Ui0OiS5nikwdHLxF7i6/axtPjr7UPteaS1P7iGpxo1U4?=
 =?us-ascii?Q?ryeHIE6RksZvBUAroVOpcPw9ooGSHgMyO7CIXw+let4s97XE6w64UtrXwvHR?=
 =?us-ascii?Q?6fJGwYjrtzeUZWopCVP+8jjUHh9gjb0tmynsZcGuMuJHEcRbGqNt2AQucFeJ?=
 =?us-ascii?Q?DYfAvPKvAC6IMIIkZZzGwkWIqC7bEgOs5uC01V19cb7tcYFGRpwJHhnayEAx?=
 =?us-ascii?Q?wyN6vQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be127758-52a7-4c42-b765-08d99d8bd425
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 23:03:33.3013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +ITcPiFsHQfPnlJ2axbv0JbQciGTF/O8OifPbn5JxxOVtIUjauqtL+GBoy8qWPU7W3N2FKeTTdFB4eh2eERFQLRN1f3uI95nmr2PIOB0DoQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5528
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 4/8] iavf: Fix failure to exit out
 from last all-multicast mode
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
> Subject: [Intel-wired-lan] [PATCH net 4/8] iavf: Fix failure to exit out from last
> all-multicast mode
> 
> From: Piotr Marczak <piotr.marczak@intel.com>
> 
> The driver could only quit allmulti when allmulti and promisc modes are turn
> on at the same time. If promisc had been off there was no way to turn off
> allmulti mode.
> The patch corrects this behavior. Switching allmulti does not depends on
> promisc state mode anymore
> 
> Fixes: f42a5c74da99 ("i40e: Add allmulti support for the VF")
> Signed-off-by: Piotr Marczak <piotr.marczak@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
