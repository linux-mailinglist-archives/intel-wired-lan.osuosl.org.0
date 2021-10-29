Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E63440472
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 22:55:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD37B80F8D;
	Fri, 29 Oct 2021 20:55:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7uM4S9kuMHi5; Fri, 29 Oct 2021 20:55:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 037BC80F7B;
	Fri, 29 Oct 2021 20:55:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 988511BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:55:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 956BE4020C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jfJw8ecIU0xm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 20:55:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 94A5840200
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:55:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="210801932"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="210801932"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 13:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="598355129"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 29 Oct 2021 13:55:47 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 13:55:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 13:55:47 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 13:55:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LME17vxYmLo2ii70ScK+mtJzCYIe3bzi0eK9WO4s5/GsjvMrj2Fhhjvrm4vhmNF6LLDwPzpa1qsaJZauGIxfPMiFG3LaF3Ek4Vf+dNG9AWs8kRfk7hvjkP3uh3ni9xUVt1IYCXc5teXqz0nH3erY1+2bp6e0EpMR9pybRg/13QKlo+jh25RcCgCt9bNBfLARY+ezWgy89IT9jDEvX8Ou+ajfLap0yaF6JEIgcli2zBajdm0tFPneqp37rbNWIDiYC7hlACM5jteeSaB/kjyKIYAWbyeptPR4ZvhgiGnKjIVRP5IzhYdzQekzBDMKeqHATkxDS/jQRLsUvZJ3biSSnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s0I4SnLpOb2uFD9ds6WqbaF+2g6UgIVm1dWAOxsp6wo=;
 b=KnNOiJPg7O3xBngJx5KFgeeGf2h5m+CzlqZvBeclgAFOmtuz7SRw6Yi3VjogafGCYslDvMz5m4Gr8wejF1jPZt98eZwq83jKHLBr1I+CFqQG0rAasjAyxWXfITHs3hEgs0o3UWlOQOThpL/3Zk0TMbyXGS8TD9PLlgNcSZCJGw1BhN28wgtLordVMhDQPCD5HBxclon67u0VVG9+/UA0L7Z0LwdP0kXpFPntr4ERt4JkMf2Lr+Xrn8wHry3gb9z1M65pMFdrhbdL7Qu0VcIPT8RnbFUx9cJF4P2jF8BXljk1FxiVd27hSdA+Ha14Z2cv2AMJ4FXq3ku4YTakUlGS1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s0I4SnLpOb2uFD9ds6WqbaF+2g6UgIVm1dWAOxsp6wo=;
 b=nrsNsGPZb3wLXwLKbJmQECm5u/v/xEmZ7pdEmcy03C4lepbKKRt+7PINQYsZPc8MeGihCV4fLuu/A64uJ7dJhnQBNp6CuXyiwMI7cjgrGJ3JJ8wCB6PG5YvjuCBoGWlWGzLrjmNBLBrDR02yuZK8APeX3b6DZZLaLVkiuIBSPuU=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4302.namprd11.prod.outlook.com (2603:10b6:208:179::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Fri, 29 Oct
 2021 20:55:46 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 20:55:46 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 1/4] ice: Remove toggling of
 antispoof for VF trusted promiscuous mode
Thread-Index: AQHXQfWvs86Lodo2eka0URd/gpo6Dqvriq/Q
Date: Fri, 29 Oct 2021 20:55:46 +0000
Message-ID: <MN2PR11MB4224CBECF9089150B1CD5E8F82879@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210505211800.11908-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210505211800.11908-1-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: f3387897-eeb0-49fe-8e88-08d99b1e7ace
x-ms-traffictypediagnostic: MN2PR11MB4302:
x-microsoft-antispam-prvs: <MN2PR11MB430261254C09AFE3E254B48982879@MN2PR11MB4302.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uXYt6uDWaLpcNQ6njbaUvYIJAhTb5DsbKy5hSP85Y04jFbRzesXZ7EN43MaCDDIhiBXw79PVqjGTVxQkPOqvkAhi3IeEJiuTgagWtxLkDar3R4qOIFtk72pcg0GZ7YlI4FVnVWAlIDaRYJIpCY1CALWJui0Zk1dxRe6tSI7lV0G7Yml9oDn5EDkXed3yevY4p14hkA1778Ofakz7xyM3kKxgGNHyn/kg0nbqCInGxHINIHc8FmhHcOVOSsODoSCt9tbQFh7C0kVvWKbVPuidTyNQp6Wzkbn7S39ogz++PsSg+mk/tfNhGTAqEMCp906O4+xCJhM8vMxTroJL/SB/1EkX/0pDFs/Mt1nRyAfKt5eUH4S4d4S3Dw/J0XCNO/aNtIFA7+Uwr400yhF2SUGGaka+2qnm/qjCyA53yDNw0AvHLM9nAQIOEDzlvDYO1I4a8AQGg2thaxsZma8ZcklZHS83Qpedk1gNe5bGC1hvWAAnHc1pWPg7sU3ZOPo6vY4IddG8HI3a7uXRQceQjKs7f2WzfDzvsKYG4NNWTkSPHQ2jpHFvtVJAc+7sE+7pCkgxxCRIpZmt4IuhXObTu7PDvEKp3N9s1AQSI9CXflDmh8Li82cuCbn4LrIxkrf7aF1GMpCHxd6xrsjHpiLIGfVIYkZmW+oCdtNk2xkwUgoKZuRJjCWqENCHJYcmZTB20iWC/1von02y40lFQY1GAsfNeQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7696005)(55016002)(9686003)(6506007)(52536014)(71200400001)(186003)(26005)(53546011)(66946007)(8936002)(2906002)(508600001)(110136005)(76116006)(66476007)(64756008)(66446008)(66556008)(316002)(4744005)(5660300002)(8676002)(83380400001)(38100700002)(122000001)(33656002)(38070700005)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PglpkNQ80AT02NAHqJ9x6g2CBMER5qFMx8lLYgc4jTmTGmeTha/WKYu/qagO?=
 =?us-ascii?Q?2mN3LUZnOBRAPJV/Wr31c/rFsE2nvTLeBhGJd3nXGV2qQS0leFp1D9p+rh6E?=
 =?us-ascii?Q?J35TgOGAs4mWVSJVD3SGT4KSDk6D6pjgHK8nQdYYn4zldW2sB8N7P1BpKI4T?=
 =?us-ascii?Q?H0EdRKh8T5QUEvzmjFEHx6CHnqnwRQnkayGcsKtxwNWXftBGUzhKV7LkG/7n?=
 =?us-ascii?Q?O6tHj3e3AqB3n1o3cqEuK1A1d+h+vnIk2OBqlURc+n8eNgAnEN42mXAlajPh?=
 =?us-ascii?Q?PZZnmDbPyCPtAr73M8cTa6Ar/maJ/0yGB0O3PJTC8NhonkAB6KgPi9fGAqmI?=
 =?us-ascii?Q?S4vQtXHqPZ09pLq6mUdM+F2a4M0JlFQco48uaLedQ1rpxlGE5LcKiwApNDdS?=
 =?us-ascii?Q?fo+bVPI3QhtpNDwtF1iV97u0E+LDSQz1KWWJGRv1ER33DRGbapGztjbMFtzO?=
 =?us-ascii?Q?2kBQYnSISeKW5ej/hMtAHcDd+RiVgxz8Db0SYO7yhSYVs/8rvbHBWOZ3WAMh?=
 =?us-ascii?Q?63LgEyOYerwtQOQois+hO0wnaEOy4Ye0i7y+4NdwkbsabOEOqxJcWc87xSfW?=
 =?us-ascii?Q?5HemLyieOvcsPAFwxEGKBkDjm7iVa1aRCozec+mDlQjVKGlmdC6JVFaURshx?=
 =?us-ascii?Q?xcBl7VbjWAQcQ0E3hUkBucEn7YETNT6SqNgqggyLW4zDFkt8TblUUbWJe5gA?=
 =?us-ascii?Q?ZQ+mPUPHKxZp6vDD1JkC5SYQKUtGgLd8ykZsVskD5xjf6m8jLPwWKNX/v0nr?=
 =?us-ascii?Q?V/AD0cAhurnJitQUlSnK+PhhYvn435S0spCFp9E8bu/lS2U5c9kVlhkZ5maa?=
 =?us-ascii?Q?Zb/f5nDxLv67dcwoYEwXzFKxYzWJ+fDiFReZziA2LcH8UMNGUhqRnL/VzxJX?=
 =?us-ascii?Q?mYQ5jjAc2WP+GUpjJChRs4pHJLA3J08lYLSfv/fej/PD6sotg7hz8Z+Qt503?=
 =?us-ascii?Q?sEd+4vm67Bk6WSlZarh3ArT835nIuqdZHXWGeVMaAGfZ2WbpIlpGgqSGvvQj?=
 =?us-ascii?Q?rB+lC4544Jh61anUD4dxAJ23DwW3L15O3AX2iesQ3mLDl34sAXnXbeMsDy/s?=
 =?us-ascii?Q?+qrKaOYl1UFdC3BD8vCv5xTSMfilw4BCE81bhgwRVAIIOCySDsp/N15zOkAb?=
 =?us-ascii?Q?DLBtrzEZ3lpVi9wCAGz7csPR/8fByY602RI6jWTefzC1zizswnekp8p7QlzK?=
 =?us-ascii?Q?19U3ccRQZggaeWOtt2FOjd15she++dPaBrHd20yIyu61Ij0JgwEjCUVmX0Bj?=
 =?us-ascii?Q?WVWdO7zHYgH1eBjQQtGgu/PW2gx4lu+a8e55RhAriQr75iyqyES6BpekxVSv?=
 =?us-ascii?Q?PKJMjIqK3tAnxBNM1m6nciLpC99Er1WcdCh7WTKt/duisI4ZX90mu4n84Mrp?=
 =?us-ascii?Q?nTYT6JZveGksMROItkzl82l182NJSDyF0dImlpwly5fob5vY+zWJzEquBOdv?=
 =?us-ascii?Q?6E/X20Ix4vZ2kIbT9epzRwZ8e8SGJirKEmhbq0Llro31VnMajXttr/B6ef2c?=
 =?us-ascii?Q?h44jIoH6KKV01NAAeg4HU4/lMj/rnHMnVFPWR85UJg2x1fSHrHeWo9Vrshxx?=
 =?us-ascii?Q?KY14iIcK3AqwlS9E4uaEdjV/SXyuVNjjQXTaSesy5Olz7Ji8Ompd/y/bjuMO?=
 =?us-ascii?Q?qSvC4yuxwXpEVznaqwbmkrabjljlDQtki79ve/f/T8kTVtmWXaETIIXIFqNF?=
 =?us-ascii?Q?EBBuig=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3387897-eeb0-49fe-8e88-08d99b1e7ace
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 20:55:46.0507 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +iuxwQSOiCyLT49WFLuMp1PnECeq5fFvl+nXRU8PcQ2GayessoIjye5mIIBY0EEMCVmfWNeoYgMwWeE32ZbnACRSN6TtuS1JaJSjYYApAiA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4302
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 1/4] ice: Remove toggling of
 antispoof for VF trusted promiscuous mode
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
> Sent: Wednesday, May 5, 2021 2:18 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 1/4] ice: Remove toggling of antispoof
> for VF trusted promiscuous mode
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently when a trusted VF enables promiscuous mode spoofchk will be
> disabled. This is wrong and should only be modified from the
> ndo_set_vf_spoofchk callback. Fix this by removing the call to toggle
> spoofchk for trusted VFs.
> 
> Fixes: 01b5e89aab49 ("ice: Add VF promiscuous support")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c   | 18 ------------------
>  1 file changed, 18 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
