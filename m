Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDEF3934BA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 19:27:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E1F54068C;
	Thu, 27 May 2021 17:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YFDv4A42BQQi; Thu, 27 May 2021 17:26:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B07CE40689;
	Thu, 27 May 2021 17:26:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 085071BF341
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:26:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0356683DF9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SkJS7JBlZChj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 17:26:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C94E83DF6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:26:52 +0000 (UTC)
IronPort-SDR: LWeCZvWDwzpzcD5rDk9t1WBVskMyYpt3VHdJ2/eY0wgtPPrl75JZr+S3Bi1QtCOAuujYZE+CWs
 zc5zO0Zd8ong==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="202798093"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="202798093"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:26:48 -0700
IronPort-SDR: YuEtqvEsHzR3mUa18h4XaPBTmbBlzeL723vGlB4MJ43g04HGF6dMzGUdfFfV6SgFNZVUT0iLhw
 cvIcPS5nn1xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="465463822"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2021 10:26:48 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 10:26:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 27 May 2021 10:26:47 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 27 May 2021 10:26:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m9urK1tiEbekf/qk0ICnD6qycy+c+tfXtSa5mGDJhmTB6mGrnxMQ6v3hAfjtPWUSnw6A47ieJtp4zqHw68WwZjLQc9C0zcHa0u+UpBcvigKjkAj7JPNg4y7Q9p0Ec59ihSvO5xnCF9zGqrp1QSYQ0sSfXMF6YeXlL/7sjaIF9flwlBSP/thVHzX0aoZ6vk8ERzlAxPqTd/ICKNJBGETPAJ/hlbHw9eEK36WtVbbLg3kp3z6M5XGPwWvcVu3nVMwmT2sUPLXQLAsR8dF7em91lclBTGp9eX3qeLYUwV8Mv8rB59n3WNa0TU7J5sLPdDmSjGbRGgY2BjpTsDZf7BAokg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wlUMoh2ODxvb1sxvdtOPi/UaITuWXjJXCqaW2euSgEA=;
 b=YdJ2X76JjX1BSEmvFIUItixPzuy76y5jtzqjRRLXtQX5EEJTKiS78FRV4XIwpSAx5chYiGYqb01B1QmcDvHdtz8YUOOu9OCVlaf+tYkWs1xP8TgeXXpW+s8xil0sbDjc5YL73gg+XTYpZl53iwswVrnRsoceyHIbYB0eSaftUrYFnq4j/YIk4KWfxwB3xCR58N7ce9lmQfI5e5MTyI1nteqXf1u8BpTWcOASVtJlZasjU3pCcA+Q6KxGg+k9df/8vThYh6yNTbsNzY6jgVDwxDVpYtPf4O7/7MokClFIXxWoTHT1S/E6KtVLpZ/NrzGYGq5wjS9yFvmkAQcEzSV4Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wlUMoh2ODxvb1sxvdtOPi/UaITuWXjJXCqaW2euSgEA=;
 b=lKifFGczMhIVBzIjg17SCjJ8x2idGHpU9MJaHyg0ZtUbrrL26xCQrxlFUAVIeGAKnpvp2L+0NOUh8gaMwp7fFkAt9YkGE6bO3/ehwFKqNNSu8Map60o84D4QeSunsyxvYRzCgiJqKjgwveBJTDKn5rxuc50XA7C+jUgIK+6f1hc=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1805.namprd11.prod.outlook.com (2603:10b6:300:114::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.22; Thu, 27 May
 2021 17:26:45 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4173.020; Thu, 27 May 2021
 17:26:45 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 7/8] ice: enable receive hardware
 timestamping
Thread-Index: AQHXTZguO6UE2NmvBESwA5xxlKH5Dqr3n6Kw
Date: Thu, 27 May 2021 17:26:45 +0000
Message-ID: <CO1PR11MB5105711DC509CFCB29DFEA58FA239@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210520164850.1884656-1-jacob.e.keller@intel.com>
 <20210520164850.1884656-8-jacob.e.keller@intel.com>
In-Reply-To: <20210520164850.1884656-8-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 73bf43ca-76f9-4452-3135-08d9213499ee
x-ms-traffictypediagnostic: MWHPR11MB1805:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB18052438FE1FE052B7663FA2FA239@MWHPR11MB1805.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ImHNaUJNGR4TNkF8BvBA8P5b0FgKCCqh9qTK27HknLUclibqNcv0Lp5DQcIh+scOYTvwaLTF2appNMbf31qwp6arU58JD1en9eJZgbT4tktJ8ePhpFvL/zQMckaFLZB6RZUmkI0yy3nSYVnd8Pv63TYxVPnyxqg+A9KXdMbenQyWaidrgqyrEkM0IasVxQVZB4RZ7KC3BxQxk0G5CkcFoaCw9Zk18Qvv+yNPKoTM/XZ2wtssqi0OfRMsHNMNhlqn4jATd/zbqL3T4pwCxVgJRrEJptYSlc+QzY2X2BsA7caHB5GdOuaMdtyLZ6G9lai8s75TGznMK+b7v3dcdbSsrAcEVD9UGYTgovKX3vUJD5P8cA1e0V/9sTGfg5aPO5kbETrYF9rdobVKAbNV74SBMTsuXxWu4kigmdkCR+L4quuT3x8qKzq2zySO6i4SEEwn4i3yh2KFs0nwA1bCxIEUSNvzLqeKNSikVgg3E1KBdvo+OGp89BUtD0AhgQtoIshqAPTLGNY65cisZJcslQ7StkbGce9X+FGLq4sR3KJjLAHye4Kap3NEDMcu8mm54qgZzJzHdEYIpDdtK1y0q2lgu5z1y7KOHVKv6zzoKr9R0tA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(346002)(396003)(39860400002)(136003)(5660300002)(2906002)(71200400001)(66556008)(4326008)(64756008)(107886003)(52536014)(66446008)(86362001)(9686003)(8676002)(33656002)(8936002)(186003)(122000001)(53546011)(7696005)(6506007)(83380400001)(110136005)(55016002)(26005)(66476007)(76116006)(66946007)(478600001)(38100700002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?nZtMz/DXbe7JYz6YN9wUYGemRMXMxFxFcouJKWoaCDoTJvpbEuyvbXLFiLRo?=
 =?us-ascii?Q?yhDZlN1UCo/fHfnLBEUCHk0UwQMEyVBZ6vaLz7hCsNPu+wwipEMB7RWQ85Hb?=
 =?us-ascii?Q?hX+1Rix56j66fm/Fkf8C910R44/JHuSWBxJQ9nijHvnbl/+agvU8jben7zGq?=
 =?us-ascii?Q?u/8ECntv6SwsHbDSWQfO92dnEidBP15guHJwrlboZI4A3MJU5wg0p/FBYMvI?=
 =?us-ascii?Q?1r+AOf8z+z4M4i6GdeS7lrgRIbhP8oMlQoHpTesAK6VqTXuLnUi1MPrhavrA?=
 =?us-ascii?Q?ZsryonbqJTQzWdz2SL979Y+OMQorF33RJj8rzIP3f3M5EPgSwaLsixwX7vIG?=
 =?us-ascii?Q?l8bf5LyECCnLLYmo2CXIoK6aqRwTz1LdiEzV4kt9EqJLxPJDu9nv4m22DKwz?=
 =?us-ascii?Q?artJ/c2KDd/agSoE4c4x1s87dsJMv6KU8zxbNMrgNnHMu6md6Pio9iZWb6vt?=
 =?us-ascii?Q?zDCdDnklyXBHO3oOg6XXq9JXf7vCf+0ik8o3fCBwxCwveQhbPvr4k8FktzUJ?=
 =?us-ascii?Q?AY6h/2CaMOrTAxMIhYcluiGDBCqz/Aoz4zOnE9nM3iwZipRu/dfYj6wz/KDR?=
 =?us-ascii?Q?cfJXUOVULMQdZa7eGatw7frfdf9FUeajCq2IKbYmvtu+vGPRY7ZWm2Ilri8x?=
 =?us-ascii?Q?9nffEmX8PqaEQQwJH7wVBO1AeIoJzH0xfVLHsyUn2z6jW1q3LqGEGhsFNWlo?=
 =?us-ascii?Q?upQza5B8ItEqIe2E0d/8VD76r0Fg4GEPDjXyYWKTLbMtO5YcGEf3nhe8TYkO?=
 =?us-ascii?Q?CMQfPY/oVJxJvltckZ+Lj47W1DyGHkRMhQI3/t7fjxM5mDmLH9PsAcKKNW5c?=
 =?us-ascii?Q?Td8s8gWEYSAaD+NTJdXuokVdxfVOlZaw40UMRISbZVjmMePI8WM4q1CnYVYO?=
 =?us-ascii?Q?Ztik01BK9pIJrMnu4IQqNFP82OHHu/lUmTM6RolV8M32kbbyy697teiM/r4A?=
 =?us-ascii?Q?HURFz4to2zV3p7/A52PHG2jLGdtr5/cDESRiHnoGISsNL0QDlhOHFx2LBLXt?=
 =?us-ascii?Q?OaVXX3ZN06Ne/29tsEp/g38lw5qMYJ0XgD79OsK9dCM7gixNJDDU8CA4504e?=
 =?us-ascii?Q?DWn5rtWXLBi5aoYlkh4jyMqjUnUqPuhCfitNDlZ5sZBSfehsjW+c/Jqym7/Z?=
 =?us-ascii?Q?hDgxaTx9l9deCOV1lxsN6/nB2FJKlA8+TuJPmfiKuI+MsecousxPl1Uvl5e2?=
 =?us-ascii?Q?2llc51wcdvvQB9NZyhS07EvsFArS2Y4W/mpNSNwFSe+idjbxYBLMoQ2penJa?=
 =?us-ascii?Q?6bf3mGwMqlhk+sY5KuPCs0x1DOQhQ3JgFupERpcaFLVllUV7c8BdbLQ/4tDd?=
 =?us-ascii?Q?hk7ZBJ4AqQLfy4Qzf89Q3CfY?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73bf43ca-76f9-4452-3135-08d9213499ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 17:26:45.2941 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qEoc192V2gqhGbB+AJABROl7cYCJmwJSuuZg/wNd6BjvIbeXTS5lzdbzF6A6kBDo3Fqu0v8XtaaHGDAKnqP2RFSgiBU/03Nby0Y8dtPyekw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1805
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 7/8] ice: enable receive hardware
 timestamping
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
Cc: "Lion, Sean" <sean.lion@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, May 20, 2021 9:49 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Lion, Sean <sean.lion@intel.com>
> Subject: [Intel-wired-lan] [PATCH 7/8] ice: enable receive hardware
> timestamping
> 
> Add SIOCGHWTSTAMP and SIOCSHWTSTAMP ioctl handlers to respond to
> requests to enable timestamping support. If the request is for enabling Rx
> timestamps, set a bit in the Rx descriptors to indicate that receive
> timestamps should be reported.
> 
> Hardware captures receive timestamps in the PHY which only captures part
> of the timer, and reports only 40 bits into the Rx descriptor. The upper
> 32 bits represent the contents of GLTSYN_TIME_L at the point of packet
> reception, while the lower 8 bits represent the upper 8 bits of
> GLTSYN_TIME_0.
> 
> The networking and PTP stack expect 64 bit timestamps in nanoseconds. To
> support this, implement some logic to extend the timestamps by using the
> full PHC time.
> 
> If the Rx timestamp was captured prior to the PHC time, then the real
> timestamp is
> 
>   PHC - (lower_32_bits(PHC) - timestamp)
> 
> If the Rx timestamp was captured after the PHC time, then the real
> timestamp is
> 
>   PHC + (timestamp - lower_32_bits(PHC))
> 
> These calculations are correct as long as neither the PHC timestamp nor the
> Rx timestamps are more than 2^32-1 nanseconds old. Further, we can detect
> when the Rx timestamp is before or after the PHC as long as the PHC
> timestamp is no more than 2^31-1 nanoseconds old.
> 
> In that case, we calculate the delta between the lower 32 bits of the PHC and
> the Rx timestamp. If it's larger than 2^31-1 then the Rx timestamp must have
> been captured in the past. If it's smaller, then the Rx timestamp must have
> been captured after PHC time.
> 
> Add an ice_ptp_extend_32b_ts function that relies on a cached copy of the
> PHC time and implements this algorithm to calculate the proper upper 32bits
> of the Rx timestamps.
> 
> Cache the PHC time periodically in all of the Rx rings. This enables each Rx ring
> to simply call the extension function with a recent copy of the PHC time. By
> ensuring that the PHC time is kept up to date periodically, we ensure this
> algorithm doesn't use stale data and produce incorrect results.
> 
> To cache the time, introduce a kworker and a kwork item to periodically store
> the Rx time. It might seem like we should use the .do_aux_work interface of
> the PTP clock. This doesn't work because all PFs must cache this time, but
> only one PF owns the PTP clock device.
> 
> Thus, the ice driver will manage its own kthread instead of relying on the PTP
> do_aux_work handler.
> 
> With this change, the driver can now report Rx timestamps on all incoming
> packets.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c     |   5 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   7 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   8 +-
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  22 ++
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 335 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |  28 ++
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 +
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   3 +
>  9 files changed, 407 insertions(+), 6 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
