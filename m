Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FF14423A8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 00:02:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D37D40275;
	Mon,  1 Nov 2021 23:02:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rc-zwxpYeSlt; Mon,  1 Nov 2021 23:02:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECFBB4026B;
	Mon,  1 Nov 2021 23:02:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18B571BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:02:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 14855606A5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IM8MgTX_PDlp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Nov 2021 23:01:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 53D686063C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 23:01:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="218333747"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="218333747"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:01:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="599201854"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 01 Nov 2021 16:01:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 16:01:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 16:01:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 16:01:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W6dZzt8flQ+lOcNQVO3hEPtzJz7KiaABobhVniFSB53vhMctqg86zFkxtceb9b1Kl9n0Kn4xnQqyPf3m/UWZtttzWElg+X5vHnVTcKLiICeNURg7c5o74gluT9Q0uS/W13pbvp3z22OK+dWEV9rLZ2dXVCbm+QnVWnuKLd8UVmObBeQBng2TIxWvPzlFEKe7GSYz7xWqYHVrHn/AhFO0/W1Tt+oMOhpevYA9YvmjcFuokAfDt/xeyTuCwAJrOg2ZO/i4I1u996i/zrDLHr4Q0Zw8dPyMSzrxjLSs9+1HYjdiZBov1LXoH1shBjzwvP+smGqgQMM7I7mieaJYEqIx3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YQceSJUbVhaqKAgh/awNhtrlKkw8VF6GyuMAGpF5f7s=;
 b=nNfc07Be4KbUz7vzD82FshwrCSZMM1x1mtQJ128ShreI7OrttQvcAjpc+wjhVv3tBjPP+AIcufzg8WDe+cez3knuSmDlGT3PB4qPtZYhYSeaUEfYH1TRCY87Lj/1Dpy5Hiyfn6FGQ0X2TwnzJo9obrXktxe4GFF/NsGFxNNtbiU29bQYW+OvJBRJILTvpNqJSxA1PrQ4GYR5K2bfOrUOnz6F93PiPduaegmPI1SqWzJi9qc7qeH5ivmCWm4fnNdKeR0OG9HoKywPsxJ4/pf+Q+dWPtkVbLFW+5T8mDM6H/LSLtvesgnRq3cH6wkXSqzJ1WL6jnVYmfQF0Ug5y7aU3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YQceSJUbVhaqKAgh/awNhtrlKkw8VF6GyuMAGpF5f7s=;
 b=Wg/QYUDMoM5QI1sLxfiy+4SAo7eWI1WAVfhmYZ98jvrEKrP41Klc7+ta9T9k7DVa701TQ35TBcUQQjCoLBogNdlAhRrp6L9whtEgumv8oMn8cvImXnVas5LLZrAJ0QRf4TcdvvhaoUEc0TuC819pXk+kSa6azG+2uti8js7WFyo=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4077.namprd11.prod.outlook.com (2603:10b6:208:13f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Mon, 1 Nov
 2021 23:01:55 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Mon, 1 Nov 2021
 23:01:55 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 8/8] iavf: Fix for setting queues
 to 0
Thread-Index: AQHXWWNwHxgELqfyB0y6faKrRuOZoKvwNhHw
Date: Mon, 1 Nov 2021 23:01:54 +0000
Message-ID: <MN2PR11MB4224E858E9DECBF23423FF46828A9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
 <20210604164900.33156-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604164900.33156-8-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 07d1aef5-d9d5-46e1-7b94-08d99d8b9987
x-ms-traffictypediagnostic: MN2PR11MB4077:
x-microsoft-antispam-prvs: <MN2PR11MB407764E3C0BA8ACFBCB25DA2828A9@MN2PR11MB4077.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: buVwuYy7Jsgl8Hwg2Gb/A2b6RdJzJDwvCE/HzfN+IP7x1+Pjok9exij5jQWtsDEa0p4zBF0B+HW/Qxr5yFc5eNZpj1PHd3ahVhKzJI4VTEXVIFeg1Lgx2XPB69Gh2i5mTtNvhfw/s30n51a2OK8D2dZSRiL8tnqymNQdJxSUA4B2peKk9e27ofSVnFicm9P4l7JDFi7btTlUw5jzXf80H2tyUcJSik+uMoN9VhXNP+astkI8OJ448Cvx67lJEoIQ+NNuLm008/UGOnB6nkOC4gPtY1abQwMz+kL5GWHkiKhgvtdtNEG4xyZuYLY4QybJhQOgcbIaTs82XJIriC1z3Vfbgi1ECp08rjOWyoVsBL9TRlmiyM8hgEojdtpOlEnXld67e03OIaxe+jKytmClveCOV0A2sA6Mu4/tTkyDizaIbacnbrSQWq7STKnzH7Y95xAT6r4sbUbQ9f4vLThgC774wk4T0PpnmS2tmgNdHGOv5Ri+cprEqahz1BCsZGlBmX+m8DjH6rPwIrI7g5AZ5PN5sDX9O5Wtl/DJMgHnCejKq/WvybY84YG6n3Mi6FSmPUNC6ltxEGJ/amGvitt0GdCuzrIO4baaIa4s6TGmCtWv61VRsgsr5ex4/kxMMufHIgCm8v6LSnqry1etFSkPVKGKownX6mOcMN1FNkPsq4Kj1VgJFDExtbUjWN2NUXll69c8CNBBO5usBP2IWdqigw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(55016002)(9686003)(38100700002)(122000001)(7696005)(33656002)(8676002)(38070700005)(6506007)(26005)(4744005)(76116006)(66946007)(66446008)(71200400001)(83380400001)(52536014)(86362001)(508600001)(64756008)(66556008)(66476007)(8936002)(110136005)(53546011)(316002)(2906002)(82960400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V30ghSki/97Nq2NVTu5wtvmwUDzI4n5yTswyi24co7zZMyunkir0X3Mkw55X?=
 =?us-ascii?Q?suutiMwCJNMW/k/c6pUj1e4MFwi0C8Dto1UylrV5AS7+8R5FR5zrCxKYT3ye?=
 =?us-ascii?Q?+cSpT4MiBsonSiGHDyz1vW49RO2OkxCSD+D7naJzcdPxa9oNMYkFLeRFd1uK?=
 =?us-ascii?Q?dR5OkxS3WLiVIUxTZp0+nvSSyq9/KV/KVOecMxQfHrmJusah3UdqwTTU4d8m?=
 =?us-ascii?Q?U/LAqXN4IUEHE5YwXyNsv15qjm1CPg3cPHQbhz+WV9CT4jMCSItzBtizc1GI?=
 =?us-ascii?Q?t0F0QJDRC/Noca9te4PAKnfZpwuHhAStAkU1zEtP+C9RY+u9zSz/ev0xiVsP?=
 =?us-ascii?Q?VwFGpiRhx7I2ogpi35DUJQuOgqO25QCrnSdTj5ZgS//yBMP/8FjL5Q2YFs6w?=
 =?us-ascii?Q?rveVt1AMlOHEoAt//iTejAdRx9PMZJvmPlRze5xPV4oVDcETzTAJ6M1q7dhI?=
 =?us-ascii?Q?1DxFtImJuqFSxzh0IKFOu8SD5Uc2GDt2sRi0bXhdK27uJP5eVaFwuJPrr/th?=
 =?us-ascii?Q?e9Csy+viiAZKC/hP4EklTuJ11Y9qDZaSKzy1KS/DJhWSgVDuEvzMQ8cFfS1h?=
 =?us-ascii?Q?BMiHBphXE1dszvP+bDIP0fFyCkg3EOCN2aUWPIGe5dR3Kj358h1qT+orzBu0?=
 =?us-ascii?Q?WPeyC4/JMlVhZNjTR7YjioDUuMMmqbbYhmcs5oXw42F86/GkEfTaXj4mt7ml?=
 =?us-ascii?Q?5MBa6yV7pvjeMdV48JUo+4nEJXcuLMkG5EogmKd64Jc72R7WuXCyCBrl1KFF?=
 =?us-ascii?Q?Zxk6ILNw6D9CBYrOrTm85aed6pJOeJkvBKfI/KreQ2zVDPue+THMy0N2Zqkm?=
 =?us-ascii?Q?ZJTkmOdZPUsmD/fEIdNruTcUL99NqHj3xGqsS44BidxKz3RpwcnKt2NybJz6?=
 =?us-ascii?Q?ylTakZFYusHo2pBAisn/jtFrFN5OZuJiwEVtG4cIyx4pAo1OUGb5V7Gl/grT?=
 =?us-ascii?Q?G+iSudl+lsq++mDNA1R0SgREOpoZs0ykJjNbF3GO2CraH66XtbDeqAlW1qUI?=
 =?us-ascii?Q?vBw8MARU9t7eeGv+dH2/DR+nUwm9Kxc/Q8AE99SLILudjXYm6ruSQTq/Xp+8?=
 =?us-ascii?Q?Kdc9zcnJEwpCBYlDADLHCuWVWVBbL55vaoTPp31k1sBSxEDTXsN/rImMxvtA?=
 =?us-ascii?Q?AWvJAphANwnzs8Sy9rujcAin8rcXpTcwoCQ6LfA5Vj2zfO3bTlu8Hvu1MU+p?=
 =?us-ascii?Q?ynOujPEwGqkQIgJaj/P369MUEJBfRLZgABjoS9lYxIadZyIwI8l1N9BKTdog?=
 =?us-ascii?Q?rRFw1ONYElWwyHJ1/rUyWGEeqakZqfJnl4deCYsoOY8EUfl29PbD1iyNyaOh?=
 =?us-ascii?Q?xuIu66C18f0nfhtGw414NGWMilNe+OUgqNqt5SbnF8k0d5FA0qBISAN1Bxso?=
 =?us-ascii?Q?dqV9yPzjt3bRHXVB1GMDb6EsuE25HHvrE3pTcjyyARPSjm50I2hEDJTubQ+0?=
 =?us-ascii?Q?ytB5LWikwvBn1CLKOgfwDJ2vnklIDGPSc6LpM3O8Dq4nQj2kSoJ0/NJzxcOm?=
 =?us-ascii?Q?jciFcfBQC6eW6YIMP2UrH9VBFtvWfHMDTc097qs2gVeom+PQr93LXAJrxf/h?=
 =?us-ascii?Q?6049X+0pQLwWc1RBOjesI9FxeLHZO0kagnzpUDZvd6QDW/aQ6K4CBbV1eLyy?=
 =?us-ascii?Q?vKOrtYjwA61y0Ggqx7waN/ZUzOycp3yVeTu3yy3bqb7TB2xpJEfRjpVU3o4l?=
 =?us-ascii?Q?JYAr1g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07d1aef5-d9d5-46e1-7b94-08d99d8b9987
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 23:01:55.0294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m/Yz21xrQsaCLHOSOKZ8ATqRzUYsIIsIRAqbcuzQBqK4RBkOc6hbJRHMX2e9QTEHXVaJTNmJWK5C2u1fltclil7n68tTmNsHRDw/Hb10Jow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4077
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 8/8] iavf: Fix for setting queues
 to 0
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
> Subject: [Intel-wired-lan] [PATCH net 8/8] iavf: Fix for setting queues to 0
> 
> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> 
> Now setting combine to 0 will be rejected with the appropriate error code.
> This has been implemented by adding a condition that checks the value of
> combine equal to zero.
> Without this patch, when the user requested it, no error was returned and
> combine was set to the default value for VF.
> 
> Fixes: 5520deb15326 ("iavf: Enable support for up to 16 queues")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
