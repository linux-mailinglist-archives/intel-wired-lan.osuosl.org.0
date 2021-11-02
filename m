Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 471AB44292F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 09:16:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2A2B401DB;
	Tue,  2 Nov 2021 08:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6S3fz_3VlOJ9; Tue,  2 Nov 2021 08:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D85C640204;
	Tue,  2 Nov 2021 08:16:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C90EF1BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 08:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C35DF400E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 08:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Q2KlYfOMr9U for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 08:16:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E882400C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 08:16:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="254817840"
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="254817840"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 01:16:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="728280372"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 02 Nov 2021 01:16:16 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 01:16:16 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 01:16:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 01:16:15 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 01:16:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UCYoOPLxfi9fzSfYQ0gXn30wV+eiV7u4+xGB2s2NsbooulfSdPujGsyAesvFHXP49yFCW6Ysp0DfUKvRyjIS2W5SC8wd/mFlxDW155GXxvcswbZjLYyg63HUG+1Dh0hLlZ2saG61Rqit3JFn0cxyGdzo1xbvog8mF9bnAerYRq+vBTDiYhqeSZ9VYI+02CcBCTxOK4Xg/OAl28a6bEKRaJ0peSBl9h8Jad2rA44e8rfzXHwo3y0+LieEj7cHbcfEm0SA/nJdT7zQXrHPw5/oZ53wNpKoXfoEQYX577xBePhslnrcU6QBOdXpPvaZdSo/ORdK71M8uLQVXsXCjnHXtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1wXGc7GB2lYs8i+NiWB1+IwrGRAHlNSEWreTNXiByqA=;
 b=dEY8GAixLEdo47daaV7lVDIczZ3wXThtsf/G8djQRJ5VRHMJp+T+O+FGXCL+7csAyfotcw3Z+Yrkw/ckPc4zgZv3T3QziEGg+o/mDQ+PGICuGhLEpf1JNIDfNE0fV5B+pp/Vs0P8Ck5Afza9BFNiBtXljosqp/VZNXa+0aH+So5gulhp5ipGFTzCZ03iT4ynqgJ3MkpeQhwPvz14TlZSVYGD97KRBjdUNtk/HCINKxTFZDgZdJp4nFczNOLXdLg0ZA2sL7QOBzYnQqOQg0wYmcjBjFJF5jCBm31kKWm9mhEFfR53ak1aNjuQfKpXRyv+FeTe12+EQxLwQiWtk4goCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1wXGc7GB2lYs8i+NiWB1+IwrGRAHlNSEWreTNXiByqA=;
 b=Hl0qrelnaBuc0QAJqOdMjglHrAe1Z7SWIVs+VxaFQBiteEqUk54Q4LophTXtJTJma8NrRM5Ij8uP9x89u63kPP+ATwwk+eGPqTa9eDs6yZRtS+d/DGZtZERIE8QxDvQrSmmxH1tOrS+Ik59KJz3DTEYFQvsI59PTNbrbGZHHQIE=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3093.namprd11.prod.outlook.com (2603:10b6:a03:88::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.13; Tue, 2 Nov
 2021 08:16:12 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.020; Tue, 2 Nov 2021
 08:16:12 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: ignore dropped packets during
 init
Thread-Index: AQHXx6TxKBbKbGujiUKVIb2RFJsLvqvv9F7Q
Date: Tue, 2 Nov 2021 08:16:11 +0000
Message-ID: <BYAPR11MB3367B9668616B4A1E228C1B3FC8B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211023002817.86671-1-jesse.brandeburg@intel.com>
In-Reply-To: <20211023002817.86671-1-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5704223c-9784-4593-b17e-08d99dd9082a
x-ms-traffictypediagnostic: BYAPR11MB3093:
x-microsoft-antispam-prvs: <BYAPR11MB3093B8482DF6B6F0282839A0FC8B9@BYAPR11MB3093.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:262;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dwi8y73+80lhRzCvb+6DDZqYQjDIfxzSmxSXFpW7nRB2qmk+p98G9jaki7dualdPmf+f7yz2Ii39OnbiglnI7WNjHVKH9QRuNz/PYhgsVuLRxi4q33t6kImnuqFQpjbhKhmrqRhQWXiDIi616nWi9MpAy1h3EmDa1wW1CtJEa3iKRjxekLSSfDrLpK4B2+wGNAdxAlqfNoTkgTcM05Nxld03hg6Zk8VbN5L4nXf6orMArffrohf9X/M+VCXgdE26Ji0nhifuKOlxF2jzFX6EGyGgw6h2f7y+SqtQVXZDuk1oxrI116bAjzLq6wCbassukijkH+LZyOo6bmhLirekrR+LtMUhxnTJjq2calmdTtnwGJV/2H1eDWqmK9V305J/F81ynqBWJsEIzitWdXAFwa5eLM/6BgN24Cta0ctqHGB4EFrka9tfpEi1EKpFrcF+pNQ20yH8W8QlliEQh/pebtj1m1iPpN4CgibR61E1em4z0PYETaYaLRA/nsLEe7SJmOdlNGDHioRK2eS2yod5L2BrKp5ftYksrdq3BmnVgMNfWKoc1kffAElvzkCWIUecNaEngZlJycSd4JVI4R4T2nRatXcirEnIC6gn9RKPcCQGZCxTjRvXXdK2dvjq7dTDuRHRyxuKlgWni5rD+olt3BMKk+Q41X7ge4/bUXTWoB+SppDNWpB1P+a1B9b/05lYZfeg61GET0tJ9LtyyRVurw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(55016002)(316002)(33656002)(9686003)(66556008)(26005)(186003)(8936002)(82960400001)(7696005)(508600001)(83380400001)(76116006)(6506007)(52536014)(66946007)(64756008)(66476007)(86362001)(66446008)(53546011)(110136005)(2906002)(5660300002)(71200400001)(38070700005)(122000001)(8676002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2X2XbkFA9pRAoh3826CMtiu6t8CMC54JPxUnkP7pqwbl5cyH8zzKauALKKKt?=
 =?us-ascii?Q?HM6W+wBzHeF/Zcip3GNhtemIkc145Dhw+SZ6MgmjhEq44bX838ysR2mtB2i6?=
 =?us-ascii?Q?iPi1zHWoAjRZdh88+j/LGjxCfFqcFBrndLCLG66jJIwxbWB7LtP92gq4DyQn?=
 =?us-ascii?Q?TzjVD5ywIod/2taSy7ye6d0FNmIzKrGzzoZFGb49Wy9rRiK/Vb44xQ+uh3dK?=
 =?us-ascii?Q?V2RdDsLVcXrIwenyIB94h6TauMtztOa9S5W4jsB+e8ri1hRxAC70JtZcxXJo?=
 =?us-ascii?Q?SQsVy3VW+by3l/U5CL7bsOJ/KAsq7pCEa875hORZNIzUx8OQcnQvvgJGMwS2?=
 =?us-ascii?Q?O5kBlNhISPOKgY5dps4VTTPSlWzX1wlX66GOcpXJSm9aqh/AW0cxMIZTox1J?=
 =?us-ascii?Q?Jky6of0pgcKswo5718cf9XJ+mPuLshm3v8rTj50eCH3qMXh5PVtmCI7h0b73?=
 =?us-ascii?Q?M73lGQIwswsC1VClk4pWJUdkf9l+qVS4mEgOfuTF3eA5ITDvH08MPd6kKDgg?=
 =?us-ascii?Q?fFeiNlnIVyLentCQQJ8kwPJh9/RzUjkDS9IzQ1phLFCm4x1CGQ+i9V6/MVfV?=
 =?us-ascii?Q?TX389FlQzQnv6GEBRQV7zk8kfEUNaajjmEr87iXcvZDOOWkbGmouL409HvhQ?=
 =?us-ascii?Q?AtoIyJRFfgRmfpVVDint7mTrmJMBusAmcTWT+0jTFIAIkGHkaVNaBEyCL9uq?=
 =?us-ascii?Q?huwdydAXR7G0eJtpVObAJM6cD6eIXkFxDWsR2cD68nDVIR2iLltmPvZRfOK2?=
 =?us-ascii?Q?EM+Cyk153zbQLKtn5RMy3tfdPVk1GTb+/t6bnoi63MQRZex6wiQEmVND1W/D?=
 =?us-ascii?Q?ZwW4MiIWVnQyQSSMXNbG5FEMsVvohTxG0rSc0mjrfKV0JdAttyLw6/0aceYb?=
 =?us-ascii?Q?8FALyOE5ajLdRJVRYskv3P67TDF1/WviOjAhI8SLB2jKh1s/g8jvsKBCGDUN?=
 =?us-ascii?Q?50zrlcORQfCK1UuxMTSyT2uEg1YGAWrKKcuOktJjerxW7X5JbU3Pg+M6tYf1?=
 =?us-ascii?Q?AewMTTxEvz6sxHNWLLXn40yOXsHEyDEszIVJgR4cQpMCW5e4sn18zySSM0uO?=
 =?us-ascii?Q?Gx/8j7okR4CWOyxSbELfVkbk7x5YfsrJE3ec6oqY7pGxp9Vst6otZjomi6iJ?=
 =?us-ascii?Q?zfwhqn+be0VTOnvxhUra7+iEw1Nqrfvx8XSy8rhpwjho49XFJexSPd77+ujK?=
 =?us-ascii?Q?y7CXtUaQczscqmvX2G9ADsH9hQaieWKXNN+N4nEg/GhT5p2dTxFHnyZ/aZ73?=
 =?us-ascii?Q?2LF0KPpYCPiRLJuGltpmwHya0CC/053wZItjPkfZqtRTyjTndwlSs2OVeO64?=
 =?us-ascii?Q?gEtKuYunl5M9+5xRWXQ2f2viobi4t6QX7BiBKexT+WqlhKEMqcm2RAcBVAc8?=
 =?us-ascii?Q?iVDTwvVa8MKXq6aU4tHV92vM/PfnL8iB8rJem3Tmh7/1QEDszRDMFBu6LekL?=
 =?us-ascii?Q?d17gf2YJBnfFYpeSMSbTy/W1FAnEfmO6PTnsMX3kPQ1deYoSacIiYFcsbJLc?=
 =?us-ascii?Q?22KQh0n6CQ6uge+UGWaKHQQUxsqaE/khXMs3waTsZ4W3xr59jU734d1RwYDZ?=
 =?us-ascii?Q?x4z1G4+KdP5/Qm6DhlO5GAyu5vTjUKmaqDWOcRvr+z1v3/fc/B0u0GiiiIfO?=
 =?us-ascii?Q?9g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5704223c-9784-4593-b17e-08d99dd9082a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 08:16:11.8946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yL51LcxVZDPgaOkO3++jtEHettGL7Wu7JSlYkqj488yJnWZRBIZWdHEYwzElhdDFSJnSTyKQtP+7NSSA0VzIqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3093
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: ignore dropped packets
 during init
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
> Brandeburg
> Sent: Saturday, October 23, 2021 5:58 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: ignore dropped packets during init
> 
> If the hardware is constantly receiving unicast or broadcast packets during
> driver load, the device previously counted many GLV_RDPC (VSI dropped
> packets) events during init. This causes confusing dropped packet statistics
> during driver load. The dropped packets counter incrementing does stop once
> the driver finishes loading.
> 
> Avoid this problem by baselining our statistics at the end of driver open instead
> of the end of probe.
> 
> Fixes: cdedef59deb0 ("ice: Configure VSIs for Tx/Rx")
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> Testing Hints: pktgen or ping flood the DUT, while reloading the driver and
> bringing up the interface (in a script or with networkmanager) and note
> dropped packets with ip -s -s link or ifconfig, after this patch there should be
> none.
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>  1 file changed, 3 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
