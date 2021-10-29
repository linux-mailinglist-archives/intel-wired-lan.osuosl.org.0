Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDCC43F911
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 10:40:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB05360B68;
	Fri, 29 Oct 2021 08:40:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ueVy9dK1aX6w; Fri, 29 Oct 2021 08:40:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF24960B62;
	Fri, 29 Oct 2021 08:40:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2EAF91BF28A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:40:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A07C60B62
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:40:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sViGbRVBMl3k for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 08:40:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7561460B61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:40:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="230573782"
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="230573782"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 01:40:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="636633314"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga001.fm.intel.com with ESMTP; 29 Oct 2021 01:40:39 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 01:40:39 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 01:40:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 01:40:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 01:40:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I3EJZ455Z8AHPUUZqlR/JpRFFx8ndNZXxhtJLOmHYP/3UMMdkgNzA+97f/c0z2Y2Khj3ajYEhCxT1q6l+YkE9I0F5mH+U8KOZ7zOHsIz8/OK6G/w3gaaFt0zzNi6GnesNInfYbsn7HBlt4WuvGWfxQnZqirrdtO992Cue4IhjeUJYKCodoOpHXCZKsZ4UGK0SHU/txoVxVDC6VTUxX+1bn9xs/ZE9ielZJkqqYHv/b0nYZQrC1Kxr94WUkb/QthsRogGMUsGqIgtKGqdNfSrv2/B7Ov8MRySBE/CDXj2y3d+Pcin1LWNJQlFXOm7rt3u8J9ffm0ckAUmDTNSb/z8lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=py4PQReQYvD5bjbCScvbc1zXJ2xSdY0Clj5gh2zsq4M=;
 b=UqnJjBvy4ad/QLaHaR/ZZuOoAeXs6Yl3G0qmkWZpTDj1oszlIwig7R9BXcwCYRnXcRmb9UJYyJg2oVSlbtUakzu111l7hpORr14zwdaTPbQToSn9iHt0wsRVI31PFizb9GdT4LZj8ACbdHezCGTJXm6Ji3apflZnKQXHqyZ32YYIhyyeGOteeeik1gnEgzG6tmmPiQaxLZFU5Xc/vnhhEzpjZEFzdAqBCwgbTqAwucJ3UevTf7DKPTxx2EMIsRndIFtMeMCL5UQgMVQ7rafDMuNBSpmXhenuoAzP7P1Uz9PhOgvUHaPQ8UlcwZudsuzCPGYq09tJbrkebRS4QDuUiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=py4PQReQYvD5bjbCScvbc1zXJ2xSdY0Clj5gh2zsq4M=;
 b=kM/ix0XZQui9qSjLvU7nqOEX90JD06mfG5BUCgG70Y9hlOO4AfWStnrbC60FMK6S2y1RjKqI4uLHmsCuo+kr9YYl1fvOayzBBHnyJ3ofTARIXeqQBRcD9C4urt9hG2xlqeTsEPPHHd4UU9bLgpHbcmeF1TApvHoDBXmqiE5zcOs=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4337.namprd11.prod.outlook.com (2603:10b6:a03:1c1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.13; Fri, 29 Oct
 2021 08:40:38 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 08:40:38 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 5/7] ice: Cleanup after
 ice_status removal
Thread-Index: AQHXu8kWkuRQz+YfA0S1/OScwgtcgKvpyVlw
Date: Fri, 29 Oct 2021 08:40:38 +0000
Message-ID: <BYAPR11MB336776F515CED44F0FEF59ACFC879@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
 <20211007220127.70514-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20211007220127.70514-6-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b393d82-9398-4bd4-5763-08d99ab7c863
x-ms-traffictypediagnostic: BY5PR11MB4337:
x-microsoft-antispam-prvs: <BY5PR11MB43377A985A2E3674ABC196EBFC879@BY5PR11MB4337.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:203;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vwi45mmqyuk+jnC9xFtHEvhqHl9SEiFlU1giceI/hxS9MgSpusmtL6gAabf0YqBb0AdastgPah0WrBS3wlkb9TBuqLX9r5Wq7Ydh4JdVLQGoHAyyEeuCrMqaIlqxRWNhxauOcjuoZrinnfGOSjtxHdwynVxxHCyNGBudQjolnKu7m1QnE2VRs94bpKZL41vOg9RDO1uXcCU5+59RCjqqmAuS79vKG7fawQxQx6SeF5aXHprlcusJTM86eCXozavkqrqpQnGrBYD74LMyPd6wJiqJtwZlOe8ExdQgMgpK6H1vfK3qgVLreriq/FfY3LLcXmlP3zSyg9dqFD8PLZgapCkRmbFLAZGbAIIVdaMOMurld2Rm3XYflFXIcUV5SryNiic9xlN+ozTJ/1PeA/CGmoyZFzg9Ly+v9JuoFeviKocoGPIIugtTbbMCLAPtDfc5cCdusWx8C5Nwp6YdbNvPAw8b69ZrIBbI4DygxjhMfZlrEtqfQGBJEt48NK9RZcFj1rYTl/1P/Gl801KaPyvXYtQWknN0c5D9efgrauQIF0vaU+QdLR5wxhDbiehTXewdFEOsC3qT/FvVPkK1kEZOVIX+xYxNPPq25/WyGzT0WL8Qw9JVR+GQmlWnHqYk8nGJYCUBc7i3SYJWQTV1nseituPLQLYBu3N/GMrnKOU9DR7UJ0zYXEDGypW+Pav81ZPMVdKRG6MmN14S6gJ4tY8PIA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38100700002)(122000001)(86362001)(316002)(71200400001)(82960400001)(110136005)(83380400001)(8676002)(5660300002)(508600001)(33656002)(38070700005)(8936002)(9686003)(76116006)(2906002)(66946007)(55016002)(53546011)(66476007)(66446008)(66556008)(64756008)(26005)(52536014)(6506007)(186003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Z1Wd/RXn4lItWGujkwWGhqwYL0H/L+I2RagFdJEfTCbtc2W2JHNNvA9Qt7FD?=
 =?us-ascii?Q?vv52/J60GyUyEJl2TmK12aj2HUpJGtt2ANCgk22JN3w0YQTxCPLDR4xMXKbG?=
 =?us-ascii?Q?qqy8S8RvaHzavHAFsEa5xUUkHGl62QGFy2cB8YOS3GYQlGdYFYD3ZzLfsZZs?=
 =?us-ascii?Q?fri303A/CfhWtR6dwEi+zbv29YnnSWdu8Gf0UH+fgDgJuAU+hBQDNw431pjG?=
 =?us-ascii?Q?pIlgm+d3qcMdy10YHjGRcgaSJa76j4gRqwOJbgoXFQk1t1BTuG6g3Og5hj0f?=
 =?us-ascii?Q?NB4BLLo0a8U8wwmEpvK6P7cDcS4EfoXhW8bssymLnjF0EeekdgEZ+do7pDqj?=
 =?us-ascii?Q?JZ5LVwKDAZf7dihq/kqptVxoH3+dXsVVKmkWu5C+/UoGtfgbcaYPwIttoHtD?=
 =?us-ascii?Q?S4uxtvR6iRGHAaclaHz3UPoGpdErIm53JONG/ybmIBcHoCCNTusDH6cE4rXA?=
 =?us-ascii?Q?bNRxi/X4scO0b7GZMYCPDgLdlc25aSTsY6oKHUIPiQKt3rPf+cGgDspKn26c?=
 =?us-ascii?Q?ITVzQ1AvmOkZAMlVe0bl8R8fy6ga67MkNyx1DdPS/nn2jAlfN7bpbx4fXfZz?=
 =?us-ascii?Q?SR/114X/GcZ4WZc8qkDOzt3pjU5OR654TzS5w9xpTy9w7oRBfvpoIAJ5ddht?=
 =?us-ascii?Q?uXg8OLImuixXdRuhd11d43p5eh2Hk1K7IYUgWSf2gvZtArvmRyVOc6DPtlDk?=
 =?us-ascii?Q?uaLGJ/aS9c81NAzzvBKgAjsA78+VApjhZaB9io1lgu6GbM2nxfyk3RiChJBk?=
 =?us-ascii?Q?ekpDzrfiyNAGMMZ2HvTEiHaZA65oxkjm063TS9MJ3V4oHDvgHYl6IKJiwu/S?=
 =?us-ascii?Q?h0EzqN/qtw1ZI6lPyPKKlE+SOCJPGeypcy2P5u6q1cziDXZFvuzVXgEAwsMo?=
 =?us-ascii?Q?29Fzr5pYlZnSPWRDjtr7o5sSuqAtHFPB3aC6RHdHpkTHxsda2FYH4jC5JFGb?=
 =?us-ascii?Q?7v3uCBfYlxink1pOKZY2wjLslBpg191ZmIUg3ZfCMb7J/TNtafm2CvlcmqWq?=
 =?us-ascii?Q?Q2jFHBnq6lzn19jD4zCTDxdniMp2aW3xUrbDK2Cn9qJKfTJLGqtGmIL3gVEX?=
 =?us-ascii?Q?hvZm6mKsnZfbS3z6N9yRILugl4eCX73DxGvYFBMJSskY3mGpS1XM1G3KJ123?=
 =?us-ascii?Q?W0AifknE8R7IOURopJu+Sge79A5vefN4TUEA8/hJHb+zq4k8rbCBRlfAPGGc?=
 =?us-ascii?Q?WtSzMGZBRkCMJfa4JVGHUVIyFqTrt4izgZyWLxRbxIQbJzpCEIuwspgEbCHB?=
 =?us-ascii?Q?vhYbzhQuPT4PBX/G3xCdIiCWqvtS51fDAUZhZKT+NZfXn6Qf36q/JFUdS+MG?=
 =?us-ascii?Q?EGNLoOChJanmNB4AS+YkXVWJ2Rkj8qU8EFj6R5aUIBgwQpvMSEQkDdIHByE/?=
 =?us-ascii?Q?j3a2ne0nvXHGCVuPPjwXGkYqvgiZmyR6t4BUVO4qVWmdZUmQdxnOj/qjWZkG?=
 =?us-ascii?Q?K1ay+qnAS9OIVVCxouVt2QsjUpLxSF9Jsb+eS8LiU4pP/iYU2A1DDaw+Sa89?=
 =?us-ascii?Q?7CiTVXbKHOpdpp0mgE+pNmWbOwWMkfWAJnoyotAJmvHkcgmOufkBLj5EZTJD?=
 =?us-ascii?Q?R5fsf72C9sUy+enAIDUJ5iw5RxgvPCohi6KfCbozEp9oZwKuwp+Md12yie5B?=
 =?us-ascii?Q?8Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b393d82-9398-4bd4-5763-08d99ab7c863
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 08:40:38.0582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oFJb0TX1cA2brE0bqVKFRBQ2W/YrsSGxWKEyVdgguw1KnMWb9oWIKPpbKWL7Z1Pb7CVTusJtfPj9oWvI3xNJhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4337
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/7] ice: Cleanup after
 ice_status removal
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Friday, October 8, 2021 3:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 5/7] ice: Cleanup after ice_status
> removal
> 
> Clean up code after changing ice_status to int. Rearrange to fix reverse
> Christmas tree and pull lines up where applicable.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   | 44 ++++++-------
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 12 ++--
>  drivers/net/ethernet/intel/ice/ice_dcb.c      | 16 ++---
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |  9 ++-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 35 +++++-----
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  4 +-
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 38 +++++------
>  drivers/net/ethernet/intel/ice/ice_flow.c     |  8 +--
>  drivers/net/ethernet/intel/ice/ice_flow.h     |  6 +-
>  drivers/net/ethernet/intel/ice/ice_fltr.c     | 10 +--
>  .../net/ethernet/intel/ice/ice_fw_update.c    | 17 ++---
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 27 ++++----
>  drivers/net/ethernet/intel/ice/ice_main.c     | 60 ++++++++---------
>  drivers/net/ethernet/intel/ice/ice_nvm.c      | 20 +++---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  3 +-
>  drivers/net/ethernet/intel/ice/ice_sched.c    | 48 +++++++-------
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 64 +++++++++----------
>  drivers/net/ethernet/intel/ice/ice_switch.h   | 18 ++----
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  2 +-
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  4 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 22 +++----
>  22 files changed, 214 insertions(+), 255 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
