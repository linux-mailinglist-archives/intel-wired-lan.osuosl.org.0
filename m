Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF76A55F58B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 07:10:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B763416CD;
	Wed, 29 Jun 2022 05:10:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B763416CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656479454;
	bh=KBK1aDhgpVEKtU9wJiCfI9GICQSfs1CukbjQUdkE86g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RxoRmG+3ODhYIpzXElCFvJd4KQ6rANG+cBgDgb83XjGUqt76aEFyMhfmLaCLv5Wfu
	 FzePhzQPi7uQ9kJ91KHIpKC8uPx9kQquzXbnXdUt9S1xJ1uTSpWx1vcnh003B9SoVN
	 psWk35wo2VGKoXLFwOuySpwHqAewulEdYksIOUM4zYgTgdE0RZGWwqEUVAhNB/NkHR
	 A924hESAQUwuGFyFWTpMH9GcY6fm6ZkunIxompYlSMMV8zJGj8YMvDNVZMCKae+AR9
	 040678dt/IOyZeNH8Sdp0O57TWFZ6Yjl4dgpQJb6Z3pFLQX5v3b9G0v/Orx5PKOk2M
	 NFvZBvrXJxZNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fgkdqbCw3EQc; Wed, 29 Jun 2022 05:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC095410A8;
	Wed, 29 Jun 2022 05:10:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC095410A8
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11EF31BF366
 for <intel-wired-lan@osuosl.org>; Wed, 29 Jun 2022 05:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DED50829A9
 for <intel-wired-lan@osuosl.org>; Wed, 29 Jun 2022 05:10:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DED50829A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d5r1VAGan67x for <intel-wired-lan@osuosl.org>;
 Wed, 29 Jun 2022 05:10:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B9DB828DF
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B9DB828DF
 for <intel-wired-lan@osuosl.org>; Wed, 29 Jun 2022 05:10:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="345917736"
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="345917736"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 22:10:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="693416697"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2022 22:10:45 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 22:10:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 22:10:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 22:10:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xdwqu0xq0xogq9MZ5qdhJicGwpcJMCxU6LieWkcQxbo2wUcRhTTE1plRRByuA7+foV/YwcYml+q4IaaNxcS7yFG56+rD8/GqtN9D0FSOyCmOaIbagzE5VVm+wpPmKko4rOw+9b6MCSR7lmSgTDQH+KmvSM01bL+HvFgvX+9dVa8QOmpHElgP+p3zyiq03srKvn55xbIeBnfHt/PVPY9tnYx2BdKCsquEMwOcNamNCItfY95jlPvLX8BSbF90kKvyQkMVybcTsE3qTCUsxTelYEMjsoI73pm1BfAHN/ASEfX1E6Y5q4fa3h6H9uLocnbAYmQlG2qUnlr0Rua3IORMRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5n66jacBUrrMX+8qPBpAs/fUKlqLNdgwGTxoHYTcuNc=;
 b=NOY3xZoLJTLOgRnQ1450FOn8Hw9KhKuBavPr0yXkaCtkOggOc2mt40jmMQIO2LBYxdtDareLPmm0FShRiYzLhXxqHRiLSan9DN9g9sw+X627wPg78YvYlYnjq7YQ2XLyavh1ru052KPb1IMsB8NILgS3LOmOKDyi7BWXjW3pajDfZJoPuTvjyjdfMrxoas2utJ9+TGqKOlKfSawOtjjPOUWGprt7Gj+o4nEklaqO4aAABMaXwIm9qrUuT31Ytl/PR7DLY1azDotgoCUcUSStJqQzCO6rv7ZTt0NIqAxO/Q9/hm75U6PhoWlIe3HO+fgXz0zw6c+ZXh9uuo9Ou/C/9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5424.namprd11.prod.outlook.com (2603:10b6:5:39c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.16; Wed, 29 Jun
 2022 05:10:42 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d1b2:ed18:5abf:364b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d1b2:ed18:5abf:364b%6]) with mapi id 15.20.5373.018; Wed, 29 Jun 2022
 05:10:42 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: change devlink code to read
 NVM in blocks
Thread-Index: AQHYe4GlBNlHtIF/90Kw9ScXRd+ZXa1l81Tw
Date: Wed, 29 Jun 2022 05:10:42 +0000
Message-ID: <BYAPR11MB3367862982F49D1BD4A05A66FCBB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220608214832.494-1-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20220608214832.494-1-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 480cee22-0bd3-4ab3-0f6a-08da598db71a
x-ms-traffictypediagnostic: DM4PR11MB5424:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SOnHOIxCas8trujVeZxUd2LtyZJMG2q0XB01wdMxlrB1TZbc96GQa4zmQWVINRsLBV8/Mu/KCV7CxnO2LgrbquqwRux8OFQiasVK8kTHop9dxl4r+JZD23WL6ZmWrL1c1QVGXBUktoKutEG/PXIk6tD3P3oNlEiXVQo79sZHzSfKzfohiE2Z7YxlX8EkbPJmpRRj67VA77IreNb58mG5Zr66lU36tlrp8o96mZl+cpAj6dfPJUMudgwzmcnaQjCY6KOMYbvgnK8nyTRrMEgQYzeJkSZ3g87FbeCy2yyVvE4b1DcMo1iG0YhufrYwF2uA/Kg5fidO2CWmP6GSuiti9mBZ7VdqKj/fHS3WAFYlD1QeJDwTbJFn2+4/3t/BFgh5vjm1NeezztOBuhAw5mmLp+OWghkwDT57DsanFGl9+YbuG6RDdz8YSKAIxIr0/uG18U4+GqVt2Brbgap39REVY2xPJaFJBOysLBH+ERskYZ2TofVbO0MD59kQPx1FBLCoPkn6FWLK29TAKnGTpda0944iomemjE3cFkz93RjG8ukkg6c3X0DxqLPnmttHrGEBvoNgMiha298uqldN9ZwmzhW8dkUVZRWPtNQeOtx+i+A6g6sxt0sNbRy4Wcr9Fjg1k0G+/ow0Wn+Mnufrb95E4WUR0zAt29O27pR6ZmFPp9ISykqvRcVY//dRhEDuZI8UWiBUs8y1C8T/1OdeRhwy1aufi8a7cXOzvMEdJOc7MS2ByDkDxc+Ixck+C8/eMSMY4vsyCCCLekWo/xLpPb3bZVbOFoCgE7GrPy9G66AwwVU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(346002)(396003)(376002)(136003)(71200400001)(26005)(478600001)(8676002)(76116006)(55016003)(86362001)(33656002)(9686003)(41300700001)(82960400001)(64756008)(110136005)(53546011)(38100700002)(122000001)(186003)(66556008)(7696005)(6506007)(83380400001)(38070700005)(66476007)(66946007)(52536014)(66446008)(5660300002)(8936002)(2906002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R+1MMbnpcVdhkgbapn10+c0DflpmswQNFRQCdl16NxytE4Px2jRTBC3mNdn7?=
 =?us-ascii?Q?9L3/sk48elAcFtlulOe5OFLN/m/WDkzclTZsGT6daoErZ0jLtuBU9mBYOksA?=
 =?us-ascii?Q?UfsShfUcD4XGRsUcuuhYJMe6lz0YH4rLsksQHG5lkJ7SDi1JrgJVZYsy/9zn?=
 =?us-ascii?Q?WFZlhQ43ODgRYfK1syRZyAsjx5Cwz5p2p43dRpy1TqW5QA5gvBrn9uW5IE0v?=
 =?us-ascii?Q?ZwHkPp2EWCqW3l+UeVI/zAm2SyZT//pcuPkzXsp3If59yobbEOuIbUOzJhVb?=
 =?us-ascii?Q?+C8ahNe1T570nbM9G4fkhzQ79v95ScWilYc5XR4pD8xlTIFxIXiIMstFtNwd?=
 =?us-ascii?Q?pKdYvNdihFYymt7VrWpJafVZ09nZ/EhrKcpcDrpvS3Uu+lr0w5JSLHzXp+ee?=
 =?us-ascii?Q?2WYpci//QNqam44z4BkB8BM9PHB6KrqTJDanqGhS0S1JPA+2xHFb6Ytbs46u?=
 =?us-ascii?Q?eUEVttmuq9orxsM/s1SzM1DZVMFAWbYJ4+IFzV8rkdXVkoGCjfeaIB6roalU?=
 =?us-ascii?Q?dnQxADSn/dS+nbzDYHESIZ2a3g/Qk/0D0JqQyKPRb9XOeAX3z9p2CqTdXFFh?=
 =?us-ascii?Q?/cT70+++eSvZbnagQjA0qRnmNTGkntzmZNmr6tvEfcDyJ59P8YPoTWd89PO2?=
 =?us-ascii?Q?JpiZIMpQEGjGKNFufEA+RZfKph35AYwT0/lI1OO1tYKglMbN3CzRsOPvkSO9?=
 =?us-ascii?Q?91eWNeEXXD3LoYvD4aBZ13br/GU3UbY1Q4/xYmixE8l5c4oSWm8dkbaZkbUD?=
 =?us-ascii?Q?4ao1h/41vndghyEFXnYsymfR52UZ+h7mQ5HZw+gR446KrtL3OSnScMGESxjH?=
 =?us-ascii?Q?kn84n8h8Myj6JJuGOT2VDQYP7lr3TXHXc4buFwNaXKk0I4nhCMUbfX5+ZAQy?=
 =?us-ascii?Q?3dmchRyziUAxZNXBclYQXfh6EwtFzbWesirKbMsOiybed9fhkKJceIy6tEbq?=
 =?us-ascii?Q?81N+2pkH4GvOBavvPUCOlyZ3LsBg5N5YsWdFY6N/kh5iX3Y/eW4kVQr2iAQU?=
 =?us-ascii?Q?XmUjNRnFq+LOcz+ND1zCPXu7qKvGA2/jqwdabsi2cR4+vd7Dfb78wNmRW7g1?=
 =?us-ascii?Q?UQvUNac+1gcJOYTvpV9sSJUDshlTn0KKaR9IWtF8v7mPkVJoUgo5CC/89OB5?=
 =?us-ascii?Q?1n6//hp5Ur3LHJdVHXlSGBKzGZNYv6w0sbkIYeXU+YGjclvFdQ5Fz3tKXpkt?=
 =?us-ascii?Q?KMFtfjJCY0KklcrB7jrFHyE+5RhH34p++uJobrQs9Fy/TH0t1jt5k/A97Bx8?=
 =?us-ascii?Q?grx5MBGgLaKeZJMqcFSrt2h+H60NusKAbDSRC4u+p9h5EThFcZCZSogK0HWj?=
 =?us-ascii?Q?JFKdKf+O6cSeNvJ6zeZCu83XhrE9Qj8/ley1oLzpbvNLasvEYEUlPDm8HXkr?=
 =?us-ascii?Q?Ka4kG++Mo1Mi3CRWmMb7bL9IVxTqQdKf3J5Sqb8xzhfnXxY0S95eOHMw6jxM?=
 =?us-ascii?Q?IBTLYVZeNZ5eT6vEClT3TdWfLgIINjziWET85yNWsNX4LSpfsEj2L1uSRLR6?=
 =?us-ascii?Q?DCRC15eDVCUZCS/TnGlXAX/CBzUUz8G8T5Mou3ZSWfxinRVM2agOgh0wh/2X?=
 =?us-ascii?Q?wz2+M+ZDgk0M5WC8l0ZtNKaNPQv2lQuvDRzC83mE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 480cee22-0bd3-4ab3-0f6a-08da598db71a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2022 05:10:42.2920 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BbhUNQwIILsO2onR8y9hLerU/GTF1s+ILnT4voKGtqyHG6HozdNZCwNTBK0sq7rsnbc2jPfKVR9jXJSpupvEXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5424
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656479446; x=1688015446;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xcP+fzGFCek7dyeg7nWaJYZCfuhFwjnGXX8p5CZGL7g=;
 b=Y8PwBFRwm6ni60vTArpuJhhObW5Sef5a/xfCy6Vp2Ka9Z1h6wyVbA89X
 2XMso8PuJHzwgHwrqIvIddN317+nBxVMiU1YN0AvvOjA5QTpnFUoDtXJH
 hHA4uonhlKmljN/m2VO14oclaefyFiIY1ChSH3wR2i35qk+cMxBYKe4JV
 QN5AK3C6oB8hMDhvBZBxL60yNFOTpbElTXFnIv0go6NQYxyFC5kuiDZGl
 LPO5GuyDV51B/J566Dy4ERafb155ijIzVfa/iCc5yXbzsoO6ynXOCwsk7
 piGtw8IokiDw+PflIftnX3XQ5iDuqXFqxgx/QDIGbNJo+Gvh+3+WwIONz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y8PwBFRw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: change devlink code to read
 NVM in blocks
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
> Paul M Stillwell Jr
> Sent: Thursday, June 9, 2022 3:19 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: change devlink code to read NVM
> in blocks
> 
> When creating a snapshot of the NVM the driver needs to read the entire
> contents from the NVM and store it. The NVM reads are protected by a lock
> that is shared between the driver and the firmware.
> 
> If the driver takes too long to read the entire NVM (which can happen on
> some systems) then the firmware could reclaim the lock and cause
> subsequent reads from the driver to fail.
> 
> We could fix this by increasing the timeout that we pass to the firmware, but
> we could end up in the same situation again if the system is slow.
> Instead have the driver break the reading of the NVM into blocks that are
> small enough that we have confidence that the read will complete within the
> timeout time, but large enough not to cause significant AQ overhead.
> 
> Fixes: dce730f17825 ("ice: add a devlink region for dumping NVM contents")
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 59 +++++++++++++-------
>  1 file changed, 40 insertions(+), 19 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
