Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF034423B6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 00:05:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9FD7F4017C;
	Mon,  1 Nov 2021 23:05:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XJgPHDZzyUGv; Mon,  1 Nov 2021 23:05:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 605AA400F5;
	Mon,  1 Nov 2021 23:05:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2149C1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72CD180CA9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v8d7sqyDUFV7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Nov 2021 23:05:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 29F7B808AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:05:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211194345"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="211194345"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:05:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="558891323"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 01 Nov 2021 16:05:12 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 16:05:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 16:05:11 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 16:05:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dP+242aoqb2pVQHr931h5eVImOOCi1d5wjwz5UA/SIU1hQP+D4K6mTC9SVJAuVBFurNiRTO31kgar1rVaO3ngsak+T/BEDuk2jt0WyFD9st7T3fRerLpCTgSKEPkjNkXNx32fU0TVzGcb6uT+6q4gq1qEanX0+urEBCEEcRL68GM6cZzhkWslwbGMDKs5Kp0S2nYOc/UPCpXkGuEaq/LvqpQZA6PZzFpFHZmjIIFri5RMYt/DJIEEQpqOpKwytzFsCPw9N3sKwyw52YCJu5b2HETiYAbQ29lInaOWhNXWZYx8ilj97R5q6TD+kZ8sXsql872j2MvtvRkxfVSr2qAnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9+lTk1W3VYCbPLBlvVdld47Vyps9l0xTY9QNlBOEZe0=;
 b=lhuDMZ5Wd41vIALCEJDZX6FDN9+VlG7PAM8C9juy1s0cYtCvBcTXx15pj4c8jYL/4wpjcd0Ekh/yKNn3T2n1IzJwGC9/g9q+KuKzh/jWs7NTKY4n+rMyg+4VDxbkqUHRuO/7mM9xe+ZdhlfxLS6GUOgul0hy+NSkgw72dcx0M8aZN9L7NTMW3ebiZDX1EilV8hZiBB2RzE8qW2treuNWOkfrH5nLDURIo4vWgcrQ/hrIfrySyQUv3MkZsH/J70xtAWj1AzyKP3+efijli75If/kbzpV+2WrUGbneSCKLh9JSIHLEK34h9XRys04zluj9VoVqJ/hb44oWS3NsE6oDQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9+lTk1W3VYCbPLBlvVdld47Vyps9l0xTY9QNlBOEZe0=;
 b=hkI9UAwoynvv4XfkpF1ZEb2rEIyTEXYdxqmnnd11A42ZAUhJ9Bygea/qIuQwM9DEZTqPjlm48h4r8ny/4M007GT1KhoMbJ+aiT9zoOPiqC9VyjTK0q+DBkmpmR3nomjHa/C1bNCAVGXXUPyLz0xtwYzU5lHbd6xLudqpsB3PTR8=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL1PR11MB5317.namprd11.prod.outlook.com (2603:10b6:208:309::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Mon, 1 Nov
 2021 23:05:10 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Mon, 1 Nov 2021
 23:05:10 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 7/8] iavf: Fix for the false
 positive ASQ/ARQ errors while issuing VF reset
Thread-Index: AQHXWWN26nvtdIoxJU+B8IbtLHkYGqvwNv7g
Date: Mon, 1 Nov 2021 23:05:10 +0000
Message-ID: <MN2PR11MB42242191344DA8943E85C521828A9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
 <20210604164900.33156-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604164900.33156-7-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 09b3a9e5-26bd-4fd2-f97d-08d99d8c0def
x-ms-traffictypediagnostic: BL1PR11MB5317:
x-microsoft-antispam-prvs: <BL1PR11MB5317101594F294E9B42ED0BC828A9@BL1PR11MB5317.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TmgE1p6WR8f28p4bl72Gx947I7n8blDHNEyUFvfpwbT1MNO8zM7KnRs/Gw41CSW6MK+orXFijxqktplmmwef8bjcFCyxN7VlMM05OY3lisnIwjH5tIsA8wuhV1Z1iCOrq4jy7RVl9ukOFCR19bjS0ci5m9GTjvsPfkYR3gIis5oyU60nvjSu+o/t8Fhf4sSn6n4mVCrB2ZF3eeqCtFh3NC8W5QGX/rd5fdZ55NzEclz2SbSpWUfncWYnZce3813PZdQdAbIS0T6Y+fjhXbQ5TJrZS2U9VtewYj0cYQytGZ7UyrXlNgYIyhReWruy25BEC76hmI/i4WCL7qCov+m0jJvHatvN8ikebmZA3yETR4fzMUO4E6/rf+1MpxaTpXYcDK1NdSWh9Gbwv8hJcnOgQxX/RNF9p6I27oBwk68bpNVes87G+NWyfaS1l5EDgoN1slQBkODjNCiRXxSFhAHcnFGUtW8jhnEcdtbnTIgzI8pZCJKa6A/vWdYT6oWKz1Q6n4MlswYR/SzHnI6PNeTI57sfsNaW/4+eZlXKA0LmRUlX7iROAoSXBxVMt/+uL11Xzcpjd5iROFA3XxEOcgIELiGRPVmGaE2kuTPvEB5zRffWJ6L8hq/DkBq2MgLrc7hnC7nX5CEZFkb6r65eRUJumrkBsfLvt5at6v7tvtO+QHW3EaFkLSKJqhXcZf4z4+gMa6guS5c+OF8yugZy2+Onwg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7696005)(186003)(8936002)(5660300002)(2906002)(9686003)(86362001)(110136005)(52536014)(55016002)(26005)(8676002)(4744005)(316002)(38070700005)(66946007)(71200400001)(66446008)(508600001)(38100700002)(64756008)(66556008)(66476007)(83380400001)(76116006)(82960400001)(53546011)(6506007)(122000001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JmL9QxYFfuH+q+FXAQujfPj29AuwQ6dXmvnyPZRtwRgyLG/eiYa3tzAXa1zE?=
 =?us-ascii?Q?CE3hjpRAuc6oI5l4H9EHSShQFM383I4Cyy2oE37FhV7ZTGeohqma5hoTJcrf?=
 =?us-ascii?Q?ZGbDLEITyDAf4JP53WJyRdiWJGuSKf4jgzve5rntgh+RXDs2FpNSHHMp6PD1?=
 =?us-ascii?Q?+aLIe54CoI0kyg02kWumZdaWOiPWxv4cRwWhMZkcn/MKfgerubLa5KtxdtMM?=
 =?us-ascii?Q?YVYqm1NS0kUriq3bOnH06vl6rZoO/KU5Ip4Q+RSCTLjmj1iqCEgR3fFysgiK?=
 =?us-ascii?Q?L3P14fq1AbzpdCn3A9/O/fq29MBY6NJUdiy8FKAewHQX5VmLv+DHO8RvgLzk?=
 =?us-ascii?Q?y6OowPvlHLd2b9yAzphAsTi5lsP39uRzGa/+u0XpjnoOaaTCEz9EvM6lYxt3?=
 =?us-ascii?Q?O8DcTpjGEryafzGsZQxjge+VYhCoBvZRU1r4vwqBYpVrw4c01jWTRHXsf3c6?=
 =?us-ascii?Q?vv4LSxY/6PgvXvKBFbnmNCmjykLGK+ai9bQLXPXHvnvRwMOjhf/XlzIYIM3f?=
 =?us-ascii?Q?2fVG/WJ/rXl4B55gyNr4O1koQUSwc/4qeq7vUX7QA1O/dUmswXsN2DHPEYOu?=
 =?us-ascii?Q?RxAihVlrbtpZOelkPlq2+5GvsJRHpT7fbgfvtqvsId4IELtl7dNHg7geFJHN?=
 =?us-ascii?Q?DzFDMZ2CTqwHqB5n6asmrHBavDzwgMORWhEzDapJw+bQh8GkHGOjM95IlGkk?=
 =?us-ascii?Q?/sybyUBpYAiHq0gTe2lDduFmui8ZLFEzIfhgJi9MLZmsW7LhoTif/VxC0iLm?=
 =?us-ascii?Q?ULJtz2FNdylOpBYGMfMioHCoEAxI6bvkaT+47gczla+0WdQCCt2oDvuj+7HB?=
 =?us-ascii?Q?IAdiootU3xPRBxMdRMna9RXSOSmK65lOcGr48s3p6vGdWZyRwl6QNskU0dHB?=
 =?us-ascii?Q?mwoOFvM52/yTUlfUNroH+gEyCARDHwcR0xtX2cQlfVBK7TPrKdQhpmqwdn2X?=
 =?us-ascii?Q?i4Nu30pHloCJXlha0IeXfb9AY0dweAJ0j/N5iv11+dk6Mh2zwAOsFKFBFZq+?=
 =?us-ascii?Q?MHCPAtdhMJFb8pXIb+NH/mFJ47ANxkbEzDsScJn1c+XybPKeKPs06mVSJHvZ?=
 =?us-ascii?Q?GBTPK8VBCi4Xqvi2iXbwevnu7ZH8s1Iy+luK21vmwC7qTwAMcQ1v6EnYa5YQ?=
 =?us-ascii?Q?/S+5Q3DjxvhNn71py330uP0SJhr5Uud3r1rMeh9SN6vZ9YyHrXnOyYUqEXZ/?=
 =?us-ascii?Q?YCVHTd3w7ZEL83ojW/jmobEH+Cbes2Fi0crNmo9QeIfpmPy8Gy/ndIVI3zvp?=
 =?us-ascii?Q?tqYYZKq16BFECI15T7SmJ5oAKaFtk8HRQJhP1n8sC7t+s+Wiq4J/l1b0ee33?=
 =?us-ascii?Q?twkGX6ns0ht59MBv/ePVJDICeg94/4d1Wlv9x8jhi17QPVSf3A36LdCv/zCY?=
 =?us-ascii?Q?Gu4Op2yYgJIt+3T57S91v+WByrKZWGcP+o3yzhFfIVI1n7UoZOBChGhoMo4T?=
 =?us-ascii?Q?EegbKk7vVz01qhKplOFlPS5NcmeUxao6dMo/DfwDFcn69ZFhtYzYCIhuTLe9?=
 =?us-ascii?Q?9JaFZyB40s70/SzsHxk5weWDWATk5DxU0ct6adiCyPw1Pvm8xdaXnocHGN3Y?=
 =?us-ascii?Q?MYNqai8oitlxafVP4VAAHHgyL75F/T6dtkDWgvItFbgh7JxU1hIeREvIK0Wz?=
 =?us-ascii?Q?Q8q3Xp7VEgBx+HlIv7lJJnJ/6jpIFooPF96tU3BJQubTXu9ljX/KKu+sdcLm?=
 =?us-ascii?Q?o8hOQw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09b3a9e5-26bd-4fd2-f97d-08d99d8c0def
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 23:05:10.3309 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: obaWzQjuBg40tc8mT0NMVtQLvHxbAodu8uxvLet0I3QIOKRLIyL1FkuNBFPMeVUbaXDbU1UYy39xn0uvKphQvhp/r4ry1wpp5CGdrANKqy8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5317
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 7/8] iavf: Fix for the false
 positive ASQ/ARQ errors while issuing VF reset
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
> Subject: [Intel-wired-lan] [PATCH net 7/8] iavf: Fix for the false positive
> ASQ/ARQ errors while issuing VF reset
> 
> From: Surabhi Boob <surabhi.boob@intel.com>
> 
> While issuing VF Reset from the guest OS, the VF driver prints logs about
> critical / Overflow error detection. This is not an actual error since the
> VF_MBX_ARQLEN register is set to all FF's for a short period of time and the
> VF would catch the bits set if it was reading the register during that spike of
> time.
> This patch introduces an additional check to ignore this condition since the VF
> is in reset.
> 
> Fixes: 19b73d8efaa4 ("i40evf: Add additional check for reset")
> Signed-off-by: Surabhi Boob <surabhi.boob@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
