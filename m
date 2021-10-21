Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1BD436012
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 13:17:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BB7D4085B;
	Thu, 21 Oct 2021 11:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id st0PsSUSDnT2; Thu, 21 Oct 2021 11:17:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F1AE40848;
	Thu, 21 Oct 2021 11:17:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 51E0F1BF616
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 11:17:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F60260EE8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 11:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JA6_HomGxnwa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 11:17:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8835A606C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 11:17:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="289851689"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="289851689"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 04:17:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="534273458"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2021 04:17:31 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 04:17:31 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 04:17:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 04:17:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 04:17:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T3JxXo50K/+exk6C79GHuVfJxm9W3vDHlhB2xeQZKzDPNZuaAvwicrldJtt0OxqmS6Spx0+TdkzQNTGrdNOZL3cuKsoqxHd58p8QFy7hmaw2I916Qvba64OWBsIOi57mDuhPdn8bUeGBpoj/vqv/ySDUgIflGq5jOPHzl1vk2fQ81fvNf2UVAGajQzAu4l9xwWxe1rNu3CpiSk210g0+0f5w9ShMU//7MvPKBnVhL3HDRsYS01IblOsie/rC5wHy9KN6f9geEJtRCfM/ptu3sGO7s2Oj0xdP2Lz8slFIIwCmYT65dTg1qu61V+0BgW6A+AXl4Kkzmk/Dtq+e9F1Ulg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q2xMKOTwhak1rH6AmS7IpFnS+lBDQngd0ERYziosZU4=;
 b=HIbq3FTUzkyPCvTMuzXFaFs5nMzdni17gbFKizTraeGrBOgrfB4enkeAfmeim4ozmFvIUtvGuxjXBRPbCrYNlpOkEUKUMzfSvSZGhhXpj6g2Dcy+6gybLxmTR0YMxkj0BsVcZSFdH8j+ZRBTcBs4nwtKpWSqAwPzGdL9d1Ewwkyi5a+cra3RZpTZ9SLsVhbNei51blDp3HbzXLQ1lUBYEbO6/9e26Oh9ZA210x+m7RQbeqsNfrBDUXo0vbEQGjNdGov2KT4AzFi2hcrsL2f26ofqqaVEEIdgU0E5RegyVxt/dXn20sNVlnH0//klt2viFlCda9SHHSyOyzbUKSKzjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q2xMKOTwhak1rH6AmS7IpFnS+lBDQngd0ERYziosZU4=;
 b=zemNp0Rw7coITQiaHnClCzGVQxIxA6/aTzk8ce1v1fkh80k1LLm0FFAWXbIz/Gti1uh4cHe5c7SpfYToGH2ER9hF24VWYDLOxcpnEayXaZ0oZSRdTW7HsSlXkO4mzuEDukDhCXGr01X8RglEzMhJy5DTOj9tBBdxQDQ0j58FGPA=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MW3PR11MB4539.namprd11.prod.outlook.com (2603:10b6:303:2f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Thu, 21 Oct
 2021 11:17:29 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4628.016; Thu, 21 Oct 2021
 11:17:29 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v2 2/4] ice: VXLAN and Geneve TC
 support
Thread-Index: AQHXv5e30kXP/vZqf0Ws240dd0jnOKvdWyMg
Date: Thu, 21 Oct 2021 11:17:29 +0000
Message-ID: <MW3PR11MB45544FF75427E7BC62021C339CBF9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
 <20211012183106.2315477-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20211012183106.2315477-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e57665c8-0479-449e-57d4-08d994845ee2
x-ms-traffictypediagnostic: MW3PR11MB4539:
x-microsoft-antispam-prvs: <MW3PR11MB4539208A97819DC00BB35EF59CBF9@MW3PR11MB4539.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WDB1N/0pB8Tg/EPsH93lCLsVBBkKcoS9BwCNDafrYC5A+ePUSsE5dr9EISOQ2JfP4iLjz81XDZHMm9dDtJvxKMfSDFBHbbxxpHeT0F8/C2NhDTjJi5XjzrxXZldictwpwcCyI/uhngHzksA64T64+3HHiOOe+ZdR4W3tRTmG1xLm2o0JD0qT93R+OtZyodEjM5N3CWFQqwxMKPSGbGg0vOAdtvBgNy7TmtL0o12q4HaCdD78WmA7I37WjPJY1tPztReFf/5nc8W3dowNvE/LmUiRvIIvS2Rz6NQlAc+5fefPmSvX3sJInqssxWx2vY44aEw5JaUkrXhQ+SzDUHFygr6clRADBaZ6luwuj8NUVUiFwYhjmts949cwbMfG40FR53ebDXmy0TtfQ5j3hEdAQ7PVYhZkq3+DaDshFXGmSUpvY3wyI7vLXZCjUskbh+vlCkBKDQibv+p/4ro7i372Y4kuJXYsjboHMl6P8bAs1ltwG33pO3Gtse3AaLbVpt2M3nF2EhdRXZtYefKQ7sPXjWcF+HxUoVvmpIcOXsRkmyVzka593WuO3d5agd72jOFHTQKrGjlr2txQaFfZT3e/+IYAch6hWXpX2Rr4/GoCSC5H6GOxCmoblw0/82xmkl0Stk83wbVk+xbMXyv1HTWouDKK77gWRtF2yAhNApafKoddx0e1o3U43yFErbaM2djisOfPJDwmyDaTPvRRTTPEww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(52536014)(64756008)(6506007)(26005)(66946007)(71200400001)(66476007)(66556008)(66446008)(186003)(33656002)(5660300002)(38070700005)(122000001)(9686003)(55016002)(38100700002)(110136005)(508600001)(86362001)(83380400001)(2906002)(316002)(7696005)(76116006)(8676002)(82960400001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QNhnUwiT1UT4ZV1W60oN0QBRJ4Bu9JmifXMe/AmeQHPJBI4jnyqy6cxTmcvn?=
 =?us-ascii?Q?3rMOOpehWu62tOYCp52Cl9kK0baQ0MPyeQVQtTwa2RlQQilCjrStUZZ1nIf8?=
 =?us-ascii?Q?K6I2upzGYi9N1x6DqIJWV6UcP33f6/4n76yH7/hhegAbQ69egUHBgV2D/K/9?=
 =?us-ascii?Q?HU/1bpOO+M66tbJYwlixZkyxcNUsN3L90G6KkB8XToIg7J4M+MfSrWhxQvys?=
 =?us-ascii?Q?nxqB/9JdyiztssLZNmft8pZ/k5Lybxo9qnf3DIKZWjUflGzUY1/9R8UXry9N?=
 =?us-ascii?Q?5GjagMPvuhqfD2dWO/K68iuy5/2B01PEbH5NK3i8fz0eLF2zYY7LxjrozIYm?=
 =?us-ascii?Q?jXtzH0n0/0nxhmHcRwBg7mikxrEje2iulFqF7JkLPx0SV2Qs7lwTMc3zvLIr?=
 =?us-ascii?Q?TN49Smy2O7wM8DPRlgYXGhQXZKGlLYhsZpGNetggmwZHQM/QiCb2WFVhYLJI?=
 =?us-ascii?Q?x3e9qbLBvzAMVBLcV2O61z+c8c7LHRfyUiwqCK4yLWEVKiLcRz5dpeSCiFIm?=
 =?us-ascii?Q?yZI6gOmjvaFCPwDu+UuRzLf4bgc3PWkyl29JWExYrLieCWeeTKyRx4/eTr3k?=
 =?us-ascii?Q?1Ov965dJ4f2SkUDpwgqIGormQ8QIgV+BRCuPQuYBRqVmvuNE0lYmMbjNl5af?=
 =?us-ascii?Q?6+Y9DXh67D5+Jrg3u/78IlChFgBX1WozIrT9J7pcnOgG6WexL72SZyjOijV+?=
 =?us-ascii?Q?BUq/TsVJry5TW0nB5YM48Zf+Y8tGD9EfNJxsv2r97BUOv/Xe+vb9Z/entl2y?=
 =?us-ascii?Q?OkxVgGW6y/06run2MVKcw+1UkT1ZROtris6B/tq2L9mOv6oed2+ks2oSxfwL?=
 =?us-ascii?Q?NnBEdd951CLQDAFISm/D10Y8/A/iy5oAHJP/NWpnUFo+9grCNKr1DYs+Df0f?=
 =?us-ascii?Q?gZWWpMGF/ndNXyxDsxeIMRftV2GbLIkQrRR0w6Dau8DkrSGzO/8yXcppLpem?=
 =?us-ascii?Q?d69L1u2TBCfd2+iknbNeUo0F4vuXW+QEUsKtlwRWVMWOHFE9TP0KHropHPXT?=
 =?us-ascii?Q?cZiYRIumHg8irYl0oTiVqnl5k0wmke9MTmFwKkTnGqtNX8Saavl8z1Ai5NGM?=
 =?us-ascii?Q?bUb1tLoIU9mSf9xcWt88U8VIn7yw3ggXChZTYTbrO9A3sKavYVP8Mr1oFzGj?=
 =?us-ascii?Q?/oGQEB36FX+6ACCiwg3U57eynCqzVj4sR0fBgMGAluMSvfs5n9dUupQTtc92?=
 =?us-ascii?Q?mOLn7dn2haONaQ6JvDdmOHajKi3lSQMQyRqovnSvUY/Yc4RQY8EA1EysXOVG?=
 =?us-ascii?Q?UIrriVFSjdVDnOeBtnNHy1AxQcXa+ZwcKp/Q2MoSKdjdmcFW64fNPnXTOQzy?=
 =?us-ascii?Q?blmQ4GtEpeb27qdRd1jh4PT0ERY6RlmrWVJ8dIlC4QmwnbDEnZ1v3XHIBntO?=
 =?us-ascii?Q?3ZAExmGVLa86BFvW1m2BPmsC3NnEM+Tmk0F76VHoGLRYzMT/1pLc0TwUZ0Ns?=
 =?us-ascii?Q?J6vZli5XYf9cHquVvxIvIA4S7+7Sfgl8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e57665c8-0479-449e-57d4-08d994845ee2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 11:17:29.6727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sandeep.penigalapati@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4539
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v2 2/4] ice: VXLAN and Geneve TC
 support
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Tony Nguyen
>Sent: Wednesday, October 13, 2021 12:01 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [next-queue v2 2/4] ice: VXLAN and Geneve TC
>support
>
>From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>
>Add definition for VXLAN and Geneve dummy packet. Define VXLAN and
>Geneve type of fields to match on correct UDP tunnel header.
>
>Parse tunnel specific fields from TC tool like outer MACs, outer IPs, outer
>destination port and VNI. Save values and masks in outer header struct and
>move header pointer to inner to simplify parsing inner values.
>
>There are two cases for redirect action:
>- from uplink to VF - TC filter is added on tunnel device
>- from VF to uplink - TC filter is added on PR, for this case check if
>  redirect device is tunnel device
>
>VXLAN example:
>- create tunnel device
>ip l add $VXLAN_DEV type vxlan id $VXLAN_VNI dstport $VXLAN_PORT \ dev
>$PF
>- add TC filter (in switchdev mode)
>tc filter add dev $VXLAN_DEV protocol ip parent ffff: flower \ enc_dst_ip
>$VF1_IP enc_key_id $VXLAN_VNI action mirred egress \ redirect dev $VF1_PR
>
>Geneve example:
>- create tunnel device
>ip l add $GENEVE_DEV type geneve id $GENEVE_VNI dstport $GENEVE_PORT \
>remote $GENEVE_IP
>- add TC filter (in switchdev mode)
>tc filter add dev $GENEVE_DEV protocol ip parent ffff: flower \ enc_key_id
>$GENEVE_VNI dst_ip $GENEVE1_IP action mirred egress \ redirect dev
>$VF1_PR
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
> .../ethernet/intel/ice/ice_protocol_type.h    |  16 +
> drivers/net/ethernet/intel/ice/ice_switch.h   |   1 +
> drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 384 ++++++++++++++++--
> drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   4 +
> 5 files changed, 363 insertions(+), 48 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
