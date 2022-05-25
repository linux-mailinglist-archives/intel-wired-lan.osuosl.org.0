Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 365815338E2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 May 2022 10:56:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A6D441BCE;
	Wed, 25 May 2022 08:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Hz-yZDLv2bj; Wed, 25 May 2022 08:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BD5B41BC5;
	Wed, 25 May 2022 08:56:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F9711BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 May 2022 08:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C05F40FC2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 May 2022 08:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eal1i7gyi5Yz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 May 2022 08:56:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 41F934002B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 May 2022 08:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653468974; x=1685004974;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ftQOtiitVSWGIWAJ7B12BkBJjYD2VjutG7K9op/a1gc=;
 b=l+JKO8Lwxbg76fRfA7JnJFw95ZK0zH94qbqlwzgPRv2kBV9wsHv+puNU
 85jrvSMtRKCzmP1fHDhIFZ666QONSpv6m0tWZS4DcEVTsYCn2V8lAkQFe
 Yo/O8QkvnSGJb7/RJyw5VrelaEbcZtqsp8Ce0GXCOhjcABvxP8OMNGaCx
 wqMlrvecormM9UhU1r5NvUzmjH8x/wAhFYokmh3qr9ZCP1kc7W63sJuDc
 5EpbzSecDv4I6hLfh+J47aihkg9pYs0VwGGGigqYPc0gTNvmfi1I/24QU
 7lWIxcng2XdlZ79oPepjQ9CNzM97oLHRk82LlJvdT4U7l6inhWDSihbkb w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="273870694"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="273870694"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 01:56:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="717550952"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 25 May 2022 01:56:12 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 25 May 2022 01:56:12 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 25 May 2022 01:56:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 25 May 2022 01:56:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 25 May 2022 01:56:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aZpjkDViIDzQqXQt2x5EGZ8Fv3iD76GAGV8KLbIqcoIZQSuUyx5lOJhe6HFzgXZRTv9B2ioOss6pA16LIENgnzNcAbcuknSTAi7S/MpYSidVF/JMQD2WXukrCe4qRBHCtRkbAMA3K2kKuwLFymmitdgAUPjDMmpvddAvGwaLs9KNEY0jDtKJZfrs7hqlXfipnfvzS1c9QGf0YaEPRssWwXMPymjzwxLjF9sbAUGlNUmBQ4PMYvaYVkVZP9ILQDLSTzQRw6D2ygoR5rpfx9ghy7GfmVlJpTrj2nIE5WHfMpVjFB25m1exk+f93Vfc0bSizkMfEZH9rGJ2pUvD6A9ycA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VlTJg1/4p7XWNa7tLeAfAklYFqMjqye/CvysaLHLFmM=;
 b=AltTDaGoCA7kcCXhxgrxoBv7brklGxhGgpmT/Fw3LoFST4iEABImU9bxLGoT4ikoQotsmCjRbvNGJ5ixRjolHYWvUKow+643ML74kUlcaDfkJtznAQghEuBDqdtQKFjJSaHioueDQcwSU/trWk3Tis8vtucQnGD2xaX5yDlxNaFwwl8kucM1yMVUHaOwBG64Gut1sEe5AJfmfX7F2/yZXYviqQcAf/n2BI8cQfLhxvHPfJlye7/VgZzPIk6pT4APOFOouHtC5V5Y1X9u/O0+mfE4Zxfwk6bOU8K+ASSqnV1DMbyJHCNIY0uba5gjvw5LPJ+rOlB5YmI1QtUF7AOMFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM5PR11MB1467.namprd11.prod.outlook.com (2603:10b6:4:a::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5273.20; Wed, 25 May 2022 08:55:33 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5293.013; Wed, 25 May 2022
 08:55:33 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] i40e: Fix call trace in
 setup_tx_descriptors
Thread-Index: AQHYa4lPQ+WSrG55TkmbMdCB76v2K60vUyiw
Date: Wed, 25 May 2022 08:55:33 +0000
Message-ID: <BYAPR11MB336712ED7B18D64CCCD7F10CFCD69@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220519140145.1917314-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20220519140145.1917314-1-aleksandr.loktionov@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aba7592c-94e7-4a4b-abc5-08da3e2c53c2
x-ms-traffictypediagnostic: DM5PR11MB1467:EE_
x-microsoft-antispam-prvs: <DM5PR11MB1467422DDE1F33927F5E3FD8FCD69@DM5PR11MB1467.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q/lUSHCqKT417emIxqvoVpHAkUnSU6FBrpRVxuSjw/6v28cyNRwuTIx0y38CunCxLsA4kYIcGup27HLDiVaL0nIVGDBYR8zHmUn85k1HHgALl/g8p12diJkbCeFBkEMe++6UiXOv1r2f8JewlloAr83Vr4VhlWezu03UFAKp18V4x7Ek+EKTT1K2NE9OiNwjjIbOxwNKSguyp+KluQR9bSB8Ni7aeu+UcTpJmdsqzubxmD2jwD9BgXEmmv9m5GzWmnMw2U9fG5DXioEWHvuZFplWVfPa+D04zuXCAQYKjbEkn/MnWtwTsmjei4axgTiYa6en7ENmQIM6unLJNfdcPImN2o9NLdH2A693F9R4pwIB4Vl67HcBDdS4AEQgQIZZccHsHtABTiuglA8eZvvTDcnL2IXHZr3NcbmrZCUeOKzfjlcahFFMgd4rMmSnorxJh5IBImdm0Lws+dMzCBspV6ayR/g0vxrJq+aXjiiIH5TiBih6jdOyynBpmL+BAvLryi1H0GAqJ3Ljx222whTd0ez2M2Faj3SbzM4nBVFRVt/+RZE1tCJRx+QBheWyKFN+7BjSLS14BfGgOpgJtoAI8WuwqwPNteGTq23op156UcBUCUqkng0lnQ5SuBQlknhhRac4UwydYIREkPARnzjNMbGEMb71dQuMrmOGV+JWyLwL/WE5rIZg+Y+GvpD1Db5ZXU3P+tegYljz2ljZ+heP7w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6636002)(107886003)(316002)(8936002)(122000001)(53546011)(38100700002)(5660300002)(186003)(71200400001)(52536014)(55016003)(82960400001)(2906002)(38070700005)(6506007)(76116006)(83380400001)(9686003)(508600001)(66476007)(7696005)(4326008)(66556008)(8676002)(66946007)(86362001)(54906003)(26005)(66446008)(110136005)(64756008)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a+QoTDZX6qzNkwrpO7FyPBq21/AwTVlx9Ppk4kdvVaxHzyO7Ug4VeYiVE3Z8?=
 =?us-ascii?Q?BNYvtjmCwmXuJrD3stpUZvuCsaAfJM2RVUToKqQ7IfVIwGo5p3wTCsnsXTpc?=
 =?us-ascii?Q?QYIR/ycYjzvLaEFnCyguEIR881+W0GpTsEbQH5+4XPlwFxZWYym+Mq7RAu/k?=
 =?us-ascii?Q?6YmuzWEbWsDerlYeXARVDn5O0odEqfjMXBnVMUlq9znxiBcQoKnOuzedzhW0?=
 =?us-ascii?Q?/IP9KnLFk/jRn0mPkBYvLABrYwwjGZXN4KbONDopfRmcXG9oDx5JyTu5REqG?=
 =?us-ascii?Q?PqeetPeVHmHH2H8V7FHOOvagklgzXsUS2Bvxl+qmGdUzZjbk7lMH2kXh7tx7?=
 =?us-ascii?Q?w19G6yh6KkiUIQuimOaMD6O/WO0W7JOdML2pfWEG55w7rMEf3ReUQ4mcU7xe?=
 =?us-ascii?Q?x3es7deqeLx3L22p7s7dxlEO5FXRcr6XGUebn2+jI0QDLndze/X6L+DMewob?=
 =?us-ascii?Q?Idx3swiFE5hhEDEpfLpYHsH8U0iy7xen/RQR5CDgAxHXmbc3yVfDyg+Itsxh?=
 =?us-ascii?Q?BHM36sp4TDEM4A29RuFxM0ZCuBFbvh0OoQSWafHioVG+7FCJeni2wRbD8F53?=
 =?us-ascii?Q?U8HjWKO23zd8bsvVwkXF8Hso4yt0FqtXVDdDy3MANc4GKl1/0KfZj+L6NHPN?=
 =?us-ascii?Q?ipdrY9VonSpIfrnUotZDPPWFhP05VgoLS5qcMQlcnJj8rZ6KxRrbHk7wJim+?=
 =?us-ascii?Q?SjryQpqLTU2wk+FbeA9GOtHcv6ocD6EXClGQUaBBCQsJLwe9lt5/92dTWUit?=
 =?us-ascii?Q?A/hKAuJ2Ya6MtdmfRaWAoiJ+VnwRxkpaBW233Tq4X61kKZ3D3NulRMbbt65y?=
 =?us-ascii?Q?NndDolLE3iezm+yfCuhDw1WoNsCXHkB165QClV3hKAYIQtymc59P4Kl+jvWN?=
 =?us-ascii?Q?XA+/uKgdgMsy7zaX5hj3pkjOMU2ZIcSj2Y0a/qQ9f68hIMJ9v+nMlnjzh7pH?=
 =?us-ascii?Q?135qUVwVTcsouzBXCKKrwLwB+QGZoYZ6TAfjKT/qx4c/3sWOkLPYsx1F4Cv8?=
 =?us-ascii?Q?NFxmbBo1gPXerHXXwRG4To/jtOvgUC3thJepGaKCeWa4gjikkMWaNNlBkJil?=
 =?us-ascii?Q?x3a+oCvV0x4Q7gYA1lcuUisE9hNppqLeA65MZoiSHE90lD3TEP+newGSzlgJ?=
 =?us-ascii?Q?NH3vcZBW6hkMsrlp6IgrVZI7+b7aDY/nb8cLJCG8YmMRFEduJW4rGZJ+ZEx7?=
 =?us-ascii?Q?hCrRicsPXduQm4RMxugEEQ7n+Ba9DDUL02AycmK2GfmZhYvg8KBfbGCKyTuF?=
 =?us-ascii?Q?9ftlim4KXB1eUBHJD2dC6dA0TUCI/NisxvnLnaCPdeHoDEu8pj0ifkuzvHfY?=
 =?us-ascii?Q?1hdM9NdX8XnvIVYt6soCcH8Is7bZvATqR8ZFo9xep2ZrQU337AH7F+RQVYzV?=
 =?us-ascii?Q?+4ApYHPULy72tG0uo2lEZ/JP/e65w0ZHE4+3n0c7p2eo5l42dQrfTb0WCdbw?=
 =?us-ascii?Q?ouOrJ/u4njqgPYpEdb+9YfDY1yGtET8bxOQcC/wbrsBWs33U4704gWWC28IC?=
 =?us-ascii?Q?31u2iLqcRdNoRuUT3P+fZOYKNzn/wdETs/mRzb/yB9mjkiiSAbhBywK7OJ6x?=
 =?us-ascii?Q?XZ4EE2nUzu0OOtBOHQv0UnW7ghHPYrlJjQxKO4TXB8DaYDE2GAJPFrZ8/MHx?=
 =?us-ascii?Q?XKcrcKISMqHQhZVtuwpuEIE1c0D1k+K0tecahex6C9tfLD63N4n3ir7WyO9L?=
 =?us-ascii?Q?+S3VJOuVfEz5E2S8E6B+u0LThgFBzJyosz7KmSMUKGubuFplTdX0W2CWByuL?=
 =?us-ascii?Q?hTHC+VcqWHsqvwrxdNhikkQtgk5udYQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aba7592c-94e7-4a4b-abc5-08da3e2c53c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2022 08:55:33.0784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1iZRe38/hM7zg/P2M1EIpb1a/EBvDRV6e9wmNyg0ftHMsmxGF/8X6PesQrFGfBytVSV+68sq7d8CyfFYifF0yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1467
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v4] i40e: Fix call trace in
 setup_tx_descriptors
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Jaron,
 MichalX" <michalx.jaron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Loktionov, Aleksandr
> Sent: Thursday, May 19, 2022 7:32 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Jaron, MichalX
> <michalx.jaron@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v4] i40e: Fix call trace in
> setup_tx_descriptors
> 
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> After PF reset and ethtool -t there was call trace in dmesg sometimes leading
> to panic. When there was some time, around 5 seconds, between reset and
> test there were no errors.
> 
> Problem was that pf reset calls i40e_vsi_close in prep_for_reset and ethtool
> -t calls i40e_vsi_close in diag_test. If there was not enough time between
> those commands the second i40e_vsi_close starts before previous
> i40e_vsi_close was done which leads to crash.
> 
> Add check to diag_test if pf is in reset and don't start offline tests if it is true.
> Add netif_info("testing failed") into unhappy path of i40e_diag_test()
> 
> Fixes: e17bc411aea8 ("i40e: Disable offline diagnostics if VFs are enabled")
> Fixes: 510efb2682b3 ("i40e: Fix ethtool offline diagnostic with netqueues")
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 25 +++++++++++++------
>  1 file changed, 17 insertions(+), 8 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
