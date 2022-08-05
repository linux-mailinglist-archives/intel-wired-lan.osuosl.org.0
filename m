Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D07158ADD7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Aug 2022 18:05:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A768A83E85;
	Fri,  5 Aug 2022 16:05:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A768A83E85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659715522;
	bh=JpotFfZhbA5ZPGcRTNGqsyUJq7G9N53Nt9xLqe2Ch34=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yc79FIkbJxelm0ERkOI9jbfwuJW01rBiAGAD7HHxNeCbAnxAEIix8CcVdUv4m2cwu
	 RAO3mKvCJon6EvOW5BUgZoxlbuExNiy5HKSCFtric0pxLWDNECh4ZmzmWi+B886jtY
	 rmXIFQzfHgx7GSTfJozaU4KmpQcDnl7cgmX5PXK6CFCcY4b9xaLnllpwtCClsiHnMX
	 1ZtcF9TUjkYLNYPET7kfL4SyToc86YK/OXSDDUaUK/UCZAmvxRtMVo1n+x/6HlEM9K
	 FcfXERvLQr4IW8ZH2J05XGcMwl+nxQ8/pT2HJt4S8ffcxkFzrkLT60n7zyrwxeF2yx
	 Lb2IgQyEGk/uw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 499QmVBDIpSC; Fri,  5 Aug 2022 16:05:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 892F983E82;
	Fri,  5 Aug 2022 16:05:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 892F983E82
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 711981BF31E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A3E283E82
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:05:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A3E283E82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CrLu9K5ZfaoS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Aug 2022 16:05:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECC6C83E79
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ECC6C83E79
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Aug 2022 16:05:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="287797746"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="287797746"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 09:04:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="693042577"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Aug 2022 09:04:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 5 Aug 2022 09:04:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 5 Aug 2022 09:04:57 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 5 Aug 2022 09:04:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VinPrYBZvs+0s+ho2PZWWNs0RFEWJZepi25ll+v6VWZ1iFkrcmXxuKSZLr1Ca1bFx8fgLKX7v6MPsCRIIqtUXcCuxvxHgZVKFDFlJOgnH6SbyEo4vi6jdhE0bdeBGDWFjvO/CK+w8yH0oS/BjbgsnmKIQflTIP42TGh8bNEfqsNTpuk6l+Uw7lX9HT1LdoGP65HeHrH8J1pswe8/DBMPBHTuR2Yhy9Ju9p6e5VP1teyTiGwXkxK1LOzAMoudmSRpEM8ivXXaRP8lJldKDF13aOQiQ0gokybPcHr0bKLl/JkjZ8Ud+UdRAwlFjIQypcGR3AYqb1Ey9wWpQqRa2MV26g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+gLF8veeQeoShCgNUQa+ynkxgB4tmYBDTxKLV8dmQaA=;
 b=Be12tnMohBO9CILG7GYhVBVbE/XRDYoqxh48LmlfaPKDlEuL5a3Q39ddmRgoORGvhZbcsKrnIHIcWWmC+qUvlXiFkRBNWlJRuDfM3enNRftpxKQYM0OWB76QGrRj4m5d3DoZTUaRbpldDY4rhl5MOwn1vM19WV083mVsygktzLpEWO8S2pO4mPJePiGcLo0hvgxVtmkRx7Ut9bRYO9maDr02RH0hbwvKELlRB+9iwlk2tSIGOiEnLgqK09hFEH0cbkCdPPKPc50PMdxm3mAEypFr5+6+Ww5qSJZeBdMVpTndt47fDO+9RFfYpD0d4SpqCyiuO2OVACdUQ9Iy/Yy7vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB4508.namprd11.prod.outlook.com (2603:10b6:5:200::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Fri, 5 Aug
 2022 16:04:52 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475%7]) with mapi id 15.20.5504.016; Fri, 5 Aug 2022
 16:04:52 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Disallow ip4 and ip6
 l4_4_bytes
Thread-Index: AQHYpw7b8kziNWYwfkGDRMQiaJdDM62geyxA
Date: Fri, 5 Aug 2022 16:04:52 +0000
Message-ID: <SN6PR11MB3229FA3AA3E5E5747442CBD1C69E9@SN6PR11MB3229.namprd11.prod.outlook.com>
References: <20220803100744.889542-1-kamil.maziarz@intel.com>
In-Reply-To: <20220803100744.889542-1-kamil.maziarz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b60cb6a2-5cb1-496b-973d-08da76fc3b3d
x-ms-traffictypediagnostic: DM6PR11MB4508:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mDOpQs7akiVwD9BrD7LGwtUm4wjw2GtuDU5NT6tN7l+C86Je2mq1h1aAiveW7BytJQhO/Wlok+t5/UDbR3iRcR7uJOJ9/qEKYNSQ/WHDsP11EImWQoQjSjO6fEH3RkVT/C5b71KuA+yEUKnztVBWggCbPH9Lxq2Sse5eZNPh5ML64RUdaMLC0nCfnrnTpfinM2kY/UfKrGRLx0KB9wUlwYoT5yN/kohw7FBuMzlrOd7xlc+mxFs93NkovFmez2soXxbnmDvb+fX94xsrLuEHZNph/vFAgIBcgu/HyXQmw6SpbKpO/Cq8NPrUgGNKaz43D4NDdGZWLQKDpb4VRZ95ZiS1FqqVQuDPaKE4S2DRqCdKuUceZeqhemnG9OdqLPj8duMCaY23rDj4tMTsTGb7IxToLHA3/2GiH5XouqNt1ft/HKoubxlXc6wpWSvHuyafP5WXkf+0rmVgsQA1qgz4dOPhvO5YaxBD6wtPgrp6kRKtlusIWW9wkjHAu7y9VZ6R9nAh7e55ALHCxykw0RwoQjogsY8DRdOJlY48658UTYlgo4lfuPSiYD9qf5WEbSSMHp7yJwuc39fTI9ggieXMHQVAxgd24yClhtoscasabQbFZovrigrsokjpXJyXQZ0amrFn3uylC26dRJkd78whaiLWf9Lc6h/K+hi4TdvJOgSZm9zYCbheSD9W6SoFYEeBbq9TRV04XMI9jx+jgqoi5yE69B/lnboEL0mdI0pXhg6OHCjR6Lfu4xIMsbfqx782S7rup4H5gW/L5UNUkXpXZTQSAESlXL/44Y6YJyI2R2TPoe7cP359L4n4EALmvVaGCk2wTAYJv75ewKob0EKA5A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(366004)(396003)(376002)(346002)(86362001)(76116006)(83380400001)(71200400001)(8936002)(5660300002)(4326008)(8676002)(33656002)(55016003)(52536014)(66946007)(64756008)(66476007)(66556008)(66446008)(122000001)(38070700005)(478600001)(186003)(82960400001)(38100700002)(110136005)(316002)(54906003)(9686003)(6506007)(7696005)(41300700001)(107886003)(53546011)(26005)(2906002)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7FOvO8jhany8h9J3UtUTstAnlR498lqL+1+cj0lTTqMu1JKh+QIo15dl7Ovu?=
 =?us-ascii?Q?ddCe5VjHrHqiVss6QFJnferoIB6zZE+vgWQQFpGyoPb0n/iMfjoKzwlNb0yN?=
 =?us-ascii?Q?DI8zt4y8nUNYCP62k7mMjLzSpUqm4eCDnsHFzEPvM8/javtRBK02BIRFwDVg?=
 =?us-ascii?Q?BltyppOMsmmiwKc+Njtqj27R0YsoifI0jKAGLR07RMHZAUXDDtMWr6r5jlgt?=
 =?us-ascii?Q?nIJlIWCz1GgcsQ4rr1q5gG72/00/HgpKnoB+gkGMMk/vqOWvIZuM47fMRX09?=
 =?us-ascii?Q?1IX2d/mrtgJUM/5Mq2W84pk+lRdk8f1gpbP47wgVVUZ47g9stKMnMw7mAYP+?=
 =?us-ascii?Q?AjQi7MvsA3WXIk8GbDNQXLtPC0jon5bFJPddO3eiDFT8CQZtc+Tm+xTLWOTA?=
 =?us-ascii?Q?0UqcAAl/k6OUkiggYgWp7QckJJ5q5z1KYuG/Mi97N1pizqRgw3y5ptkOLxdC?=
 =?us-ascii?Q?QP6bTa4EeOyfN/bIoQfIFKd0rZ4WotZf0ZFp0Yue4F9RGmgABopVUyIXwk1h?=
 =?us-ascii?Q?RpfYkWHP5qrhvAxoQv3b4+1HuVQmZJGSa+6LiYxwfF3x7T6hSVeq4QyshenC?=
 =?us-ascii?Q?ESsFnzEg8ki3XZCgTyV7vr8VPf9CXZdd7r3pi2eqXWgbMHnDtn21vmlJuLA+?=
 =?us-ascii?Q?FoZzNdk4w+zMyu2D+gm0S0pvK78CCShNvqW/KurNyQrBLSUC9ZgcQCVTxoOS?=
 =?us-ascii?Q?OQ7oHCkTmCCIbpfSBcXtxapPxp4wDWs3+nHYSmIiQQKEKp5/lRhRVzA/SglD?=
 =?us-ascii?Q?q7d5OF2EnX1VEHgn9POlXu9y+/jVs54cBMg750ADy//G5PGFtTbELAsjJi+K?=
 =?us-ascii?Q?PX2vWIDVOa+8wRPEbxr9AUoKl2Gnmcnzh5jv51CZbnaQHSLS74+5CMchdBrT?=
 =?us-ascii?Q?8SLF+UJTLhjFVrFl+texkQUlmeHFaFi9NecfLGSPupV7QusKGs7qK2z7il3g?=
 =?us-ascii?Q?bsqlAsNFEgJiDMTlo6MbQu4i9Uu1MqNNxmvZcTTJIjiPbAiO3tKUHW/t6koU?=
 =?us-ascii?Q?64V7AOf5apVrEDEnoa9vEcRcXHOt75A8tWuPLMfsiOi88rcyyOEVC3hQ8yHx?=
 =?us-ascii?Q?igcWXCmX6YMnwnfz4DnhYYXffj77/WFNzgcTFSseTvukxlj+1zhgbDL4ajZo?=
 =?us-ascii?Q?4z1JIvJCplsJTSeBEcGBTO4eGFxbiSLkgSznLKIvhcfd8PY2zj0uod/M9GqB?=
 =?us-ascii?Q?arp6HCebrTrNpmRCq34DXJio1oMMzGXmI3IPwse6Ll5yDJRl4cCBUwMNXnep?=
 =?us-ascii?Q?DNx6veYSH14FyWzy2NWy5eRTpEm54Yv3djQF9woNchM0inYM768iO/nVLeSr?=
 =?us-ascii?Q?j73dJEeCCifNoFr9pw6n6epX3sIpcRQLqZsgsqwEzUAakrEtfRxn7rcIL991?=
 =?us-ascii?Q?zwLcAiINJVoQBBjO28vn1xODb9rHmQK+kHj3Yn0pQUXagRXwTWIMWcH0vzYS?=
 =?us-ascii?Q?9RmOQF1s9tuXj1BGLYcPWsbQJzIyJurSmeuRbOxB3Y4G3DLqGSv3D+PZMJVo?=
 =?us-ascii?Q?mL4Fc6I9i9a/0uPgkA1n9W6NQT0A1bmBe7VKNAgyPX6KOlHVaxhTXBgc/Etz?=
 =?us-ascii?Q?9UnhU6iusd/A4ZA0/pVGx9MrInDRWHu76h889z5FObszHWaH/0vZNFcPc60e?=
 =?us-ascii?Q?WQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b60cb6a2-5cb1-496b-973d-08da76fc3b3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2022 16:04:52.3762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HrOmJqQbEKKMJ7IbFXEmpBEKESSkrNcrhQPurWMrn0w33v7ar4uNU0szBQHfsn7coAlXOf+38hTxuTIMtP/4L7HumdQtlsYS9uTk6TIIXi8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4508
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659715516; x=1691251516;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+gLF8veeQeoShCgNUQa+ynkxgB4tmYBDTxKLV8dmQaA=;
 b=mneOLnLVxihkvXO9ZmIyt/WSyZXImOQ0EdMlKyu1bYrNZ7ePdqT9wCeK
 Gf0qR/fmobjmHFUnztETI+hKgkmKXIKB6M5+FeO+DLgi1VgjdZ1PkjHx5
 Z6/pFDjGnk27QAsGaC9hXv5doHzaHcLeRSzKLvrWyf7Btcrgys/mnBptR
 LkuW7yq+ed10vzPcSk2D1RAEClskgMDCTPNrnYX5fBWdPtn90lX+pZKcy
 3+8GaIEN//FS9YgvzK6NU1lFKbXtS+0VZDzOGqfyON2kYre4SwX0nCsDM
 UCjl1rtJFOSnk4+T+KCUbYfJ1lf2aOBByEfpcOwD358CrT2i0DeSMmYOg
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mneOLnLV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Disallow ip4 and ip6
 l4_4_bytes
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Maziarz,
 Kamil" <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Kamil
> Maziarz
> Sent: Wednesday, August 03, 2022 3:08 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>; Maziarz,
> Kamil <kamil.maziarz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Disallow ip4 and ip6 l4_4_bytes
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Return -EOPNOTSUPP, when user requests l4_4_bytes for raw IP4 or
> IP6 flow director filters. Flow director does not support filtering on l4 bytes for
> PCTYPEs used by IP4 and IP6 filters.
> Without this patch, user could create filters with l4_4_bytes fields, which did not
> do any filtering on L4, but only on L3 fields.
> 

Patches for net should have a Fixes tag [1].

> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---

<snip>

> ---------------------------------------------------------------------
> Intel Technology Poland sp. z o.o.
> ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII
> Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-
> 52-316 | Kapital zakladowy 200.000 PLN.
> Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i
> moze zawierac informacje poufne. W razie przypadkowego otrzymania tej
> wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie;
> jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
> This e-mail and any attachments may contain confidential material for the sole
> use of the intended recipient(s). If you are not the intended recipient, please
> contact the sender and delete all copies; any review or distribution by others is
> strictly prohibited.

Please remove this footer. It does not belong on Linux mailing lists.

[1] https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-changes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
