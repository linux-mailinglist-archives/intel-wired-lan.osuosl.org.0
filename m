Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 260E24930F6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jan 2022 23:43:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 462E58276B;
	Tue, 18 Jan 2022 22:43:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VTXsBn9RSB-b; Tue, 18 Jan 2022 22:43:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49F46824DD;
	Tue, 18 Jan 2022 22:43:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B03131BF399
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 22:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9744E824DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 22:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nRCGDtkZsJTT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jan 2022 22:43:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BB5F824B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 22:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642545808; x=1674081808;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+9cpilxhNPPXGAbQRlF7XJK8JtqAn+gwCObUYqwxsKM=;
 b=JMwVpTiOTeR6o/abTPxP1uCR6aG6z2P1UryBAsMwXsGPc7WCQHRN0Gq9
 kcOGU76mlDicC3C1dTlPFijwRPb3bxWmIL3LugQCSagm3Ar/z6nC19j3/
 pvTp1DbMJ4RFP+2Ss8+e96hAOXvpZbTKCtP1gQ1UB8ptpEjG6EMq7YgVr
 YVprtjTX8ofBsbCENJRhbWtAW0vq0trKSp9hdRoEdYAUwvFBaBzfFymbR
 YxfLuNN5anjSx/p4ZinaBW9V2rKJgb/zcqP+uUIwH/shcwSl6H5rV03zc
 HVY/jPjN7tKtnsIZzGaFFGyySNMXdt2xn/JXtuhsqmfr5TJ9vkA6iMHgk g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="245126345"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="245126345"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 14:42:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="622301174"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2022 14:42:32 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 14:42:32 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 14:42:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 18 Jan 2022 14:42:31 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 18 Jan 2022 14:42:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZOAyVOU7J/u8rD3x+C6+KjhutzFbzT9hUGsQfVHvm4tLqmUAyH8W1USSROY1ZpwCcqg2Xjx0RORRPqS4zoMObuveeBcbOJpMZpgy4CmcoNMlNG7Ink29mQ341FS2dE7+HAqNX55YTaaCPzoPYlGqVHvaRE3dBAh43c+qb/9itfcPdU8V+5Kv2gWjnNM96CmDCTrZn/ZT6TBREKRQdgYgM9Ve8DTGemGUwsRhti+Uv7tGGObSMLG1B8I8Es4Nnu5rxKSmSvdoIupq4qqjuK3bVabsWRT41zB+ZOOKVNGR6AN/1huiBA0hzRjTnJqvwjW9o2p62ZIBk29jK3l0sR+tDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yB26JQAXnd4CeYaOR3mnMrSyJ0w1856MB80ydODAVOI=;
 b=B0Uf4moGvT+CJ3qg/SsWhwy3WalGAT6rej/gE4cdc0UBW7p7SxCOsIrlLaQnHu6uQ16vALBphf6kn4RczcWtUhQPm5WeCjCDrTK0ilEaa8qRhmhC9wfaJgDGgB130aR0B6uczfTMjEFBJ6jQGXjBj3F+jiBEBcAqbeYfC8gV2fYWohPckYjREEv5dkO7QCCz8Y3q/4QlWK0okRDAPsH//WztSZVSwkSLc4eVIpd0XOPE5dT5dvkSSgfDD7jJOpauDlziRoH8LSiCSCOFE7QB8PrNKgxbItbjs+sYAkrrell1UzoevcwvKa5u68h+k0KfbdRyKyD5atCTWVWfoPS54w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by CY4PR1101MB2344.namprd11.prod.outlook.com (2603:10b6:903:b4::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.12; Tue, 18 Jan
 2022 22:42:29 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de%5]) with mapi id 15.20.4888.014; Tue, 18 Jan 2022
 22:42:28 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v2] ixgbe: Remove non-inclusive
 language from Intel code
Thread-Index: AQHYBtZOBfLpBvlomEuX1Va33avLVaxpa0xw
Date: Tue, 18 Jan 2022 22:42:28 +0000
Message-ID: <SN6PR11MB3518687236AC4A8D6624E2CCEB589@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <20220111102723.3546-1-piotrx.skajewski@intel.com>
In-Reply-To: <20220111102723.3546-1-piotrx.skajewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a24cd999-056f-418d-084a-08d9dad3ceab
x-ms-traffictypediagnostic: CY4PR1101MB2344:EE_
x-microsoft-antispam-prvs: <CY4PR1101MB2344E7B5EE532CADA1CE3CBBEB589@CY4PR1101MB2344.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:91;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5GVjrDOjv5cAxXTfRUUPAZ1eEYUDnxf5NUtILktlKeYGJXs7jI9wyULjz1EjKS/rpQWqJbaLU6dzL5uCZfudRLel4NcmZWlgPxwaxBJQC24stXv4Dfl+mWjiEOUfl2Mr0i/srT2Xqlbcy+BoMSMG1FRWm3dRTM2gLlhL4Zfyw6PnkbYsMN3ly73hiJhYZC8ZKLNutwGhPYAKB/2hQFcc/bDBYpXHWy7P2EcIQwu6+99EfRb1BzfEWOFM4DO6cwXh182nhSBkFyszKAEXTtu4YcaOj/gNZETDOJhLHSbZ4+aj0PPGhKNEJKJYAciNPt6hD7t/8MlM/p12RpiDqitI7l0skMm8D7GUDQoTS0i4LxuR/r81nKpcz3Hs+bKJgB/tXXLNj1KFDXjqSYOoSL4Atv0fCOLwm1Tq9kSlEhWPkHkMLUMy/VQBhIAXFUIQOtAK8WEPVYZdaxGVLW+9HHfba8tAgWqZnyC/Ove0MIQ0yVs0oMOxKqqHiZmWBWVvaUhpBV596ZzevJ+A444SH22Fxa4r3t6V2O2763MvMSWU8vkRFKkcG1azYN0c77OsyV/om5aGR3/8jP6wPEqlY7GsVSvayo2yy1brXOf6mbkOiTdjDFteZziKK5olHvdysyy+ML1ddA0wJnZloNrFSre29ywzLdjaHmzUUguFdNYSOWJ30mCYUZoZXuZEc4jOpobHCb7NyoZWRD/Gv7Vux1Q7Wg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38070700005)(6506007)(8936002)(316002)(8676002)(82960400001)(71200400001)(83380400001)(4326008)(508600001)(4744005)(186003)(55016003)(66446008)(33656002)(66476007)(64756008)(66556008)(86362001)(9686003)(2906002)(52536014)(38100700002)(5660300002)(122000001)(7696005)(66946007)(26005)(76116006)(107886003)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xZYDedWKAlgeNWm8iUoMzj1cEQ4+uQEMdEbLvnEuOzz8yyaYpKa0JTO10ZFi?=
 =?us-ascii?Q?rt46eOaF61kf7tLygyMmgCVhZ79WU+URG5kPirlrjZ+yhyc64h5n/0nS8Oh0?=
 =?us-ascii?Q?iIwIgpMqwN4tkhgPEPriMy/p4QbpY1jAb1L15HG+CLRGRA2m9uwZtiySdKhB?=
 =?us-ascii?Q?ys+bjAw+q5VcvmwIw83NAnltw3DQruMWlgajNcrMlehlWSp9ehh/NgznqwIK?=
 =?us-ascii?Q?p8OWOjEJfkJC5BqdoK1hJhuiiv9rIYBx2zHA3RQ8lBA+Q8+8MZFl51IGxUUd?=
 =?us-ascii?Q?Zj6c2WQnzyjwMVQ4VpE2KNGmBg/hc+vyvAooW19aeb2gYtsJQ01c9VyR1n+A?=
 =?us-ascii?Q?KAo6Ho9gGWXWA0cy0Zlj+8O4rLdz0jdVYDoAJaXiCjPJiPF1ghqZnqrHOySH?=
 =?us-ascii?Q?1+hCCVvEft/jKtuhIfR5qMiNlNdjsPGY+d5Wio+zA+XtHgN1D04JN013zDK0?=
 =?us-ascii?Q?DKjpmvuGgzk0eVqk/BPGAABgAEP27KFIJI8Ke6zySlgYgIJMO5e2ZaqMheyD?=
 =?us-ascii?Q?wHQYt300jn19o4Em1QjldGPKmg5bYjimVipHdwabeRLIky01r4E690EbwxZx?=
 =?us-ascii?Q?drm7GR1T6fCjubTl2uqiBMTqjo9e4vAfBrlNBoVdLfeHGbFfqg3cqk7RruW2?=
 =?us-ascii?Q?l5OcgBw8uSQzVb+PnPfVMbiJdFjpNJ9YQrO17RJUUZJUlksQByBUrLXe/XaN?=
 =?us-ascii?Q?KDE34DK28fEPHSoTF5pHCUFiPzgKgkNQEjaMNCIAYaSEUOOahXime46AJDIC?=
 =?us-ascii?Q?dwmq1M0wJ6mr2SDtR0eSRO/SxNFL4N20ytW4BqSd48u+xMlxYCITvfs2vz0x?=
 =?us-ascii?Q?eBNMrsrYAdWMuAgGcQJaRdQaB1Y4eb+gBLPI75Cp7jxRWUnUV6Nram5pX5bZ?=
 =?us-ascii?Q?OgXPK/VlLdx/ufApvRfZDmi/ELx+0UPDp1eWi8kcoZL1fY34Mtus/n4brgsT?=
 =?us-ascii?Q?PuzCPj1g9iWyYDg9JZAYNs/2trvSNtfZEr1XD1ZVN/e2e+Hfm6UTcE7Tghpr?=
 =?us-ascii?Q?t68LJREKzaHzdGbvIiXxfCU3P1XOocUv7B3TuioC7zTDDpsPO9YAmU8hRq26?=
 =?us-ascii?Q?YNNcVKzAKNlAOc5a0Hv0ba3w5ojBW1aqhFtHWQ6xJ/CJ/teq8iftT+SWVy9J?=
 =?us-ascii?Q?ZQwXQp3/4zi5dhBcULXHFQ7/p7bG1JK8QC4hCvObsou2W7ncIf7qSqtePKrm?=
 =?us-ascii?Q?2h/4O4NBcSZmIrRU3L+4jQ5CJp92raLZQPw0JswmyeDZL2Zb93pE/BsTnzpM?=
 =?us-ascii?Q?JEbxfV6+qcgtULqiDAltz2pGMaUEGAfBRCjDjicWrLy4eDgVMrrep16ApWro?=
 =?us-ascii?Q?8z1YQm+AsTsJv+NjzKFyu6nXsPuJjy4YiSR0gu2xTZu3JksRNIbtW2njVb/c?=
 =?us-ascii?Q?X5WUw8YPhGwbOK0UCDykiR01DWjAaWy2oRkJSvQ5iQnJ39k98uX+PKkPsDer?=
 =?us-ascii?Q?RAFtbX23bN2X7kGfQgrHC9k4rsYG4boT7xyQtInDzo3UL6jQfnqE/SdKJyIb?=
 =?us-ascii?Q?66t4CmbF3GpCcq2tfHUgPDghILQFfZjBaX/STdP8hTvXEnHbvDSeJSUuZMdO?=
 =?us-ascii?Q?bFdsEJ+Y9aOBm6LUZh7BGjm6KGw0P/JM08k7gLPftdavWHKOh+2+GOseSDOT?=
 =?us-ascii?Q?Tg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a24cd999-056f-418d-084a-08d9dad3ceab
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2022 22:42:28.9124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TuX7BjLej3pplChG5lN9wqqrl5FosCcUDzBrf2rviWBIUSi6CMRrxz4zxgiZunXf86r9kZFM9yVZqB9Ma0DfAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2344
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: Remove non-inclusive
 language from Intel code
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
Cc: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Piotr Skajewski
>Sent: Tuesday, January 11, 2022 2:27 AM
>To: intel-wired-lan@lists.osuosl.org; pmenzel@molgen.mpg.de
>Cc: Skajewski, PiotrX <piotrx.skajewski@intel.com>
>Subject: [Intel-wired-lan] [PATCH v2] ixgbe: Remove non-inclusive language
>from Intel code
>
>Remove non-inclusive language from Intel code as our entire industry
>removes non-inclusive language from our documentation, user-interfaces and
>code.
>
>Additionally correct the duplication "from from"
>reported by checkpatch after the changes above.
>
>Signed-off-by: Piotr Skajewski <piotrx.skajewski@intel.com>
>---
>v2:
> - removed dot/period from commit message summary
> - commit message updated with word duplication
>---
> .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 36 +++++++++----------
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  4 +--
>drivers/net/ethernet/intel/ixgbe/ixgbe_type.h | 10 +++---
> 3 files changed, 25 insertions(+), 25 deletions(-)

Tested-by: Dave Switzer <david.switzer@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
