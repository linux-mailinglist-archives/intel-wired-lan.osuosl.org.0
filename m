Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D3357983A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 13:14:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89BE8400CE;
	Tue, 19 Jul 2022 11:14:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89BE8400CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658229262;
	bh=LCcWhu4mACmeXB0Mx3C+3c1f5EHl0awRBkc6TD2vR+8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xxn2B/dp+6VwcotSHifxASswLiQrta7J18ZsnK87/bird20jArMwfWj46IhUJK0su
	 hV2qY4ftGNsctOrJAswhAjNjlecvO5Xu2554uwVUPQyprWqYtovLTWQn4P7QYMVAYz
	 5hYCNZcu4XzkUMewKkV3JmorATR67UYJfbQtvUCzp78HsctSA5pQtbJvcAruGWUwri
	 vDN5A3YmBrhq7Kzrd3gRjnNDvoIUcetvJOKqx9TeXYPkKBjJbug/G0ND0Ae4GdiEY9
	 6jnp+280H0LPjuUJgu9ywgMimrtPzRcieeF5jLCorSOEeZavVhNXfOo/8QfdAsklRA
	 AQqzX6/rYUvdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BOm6pNx-POGm; Tue, 19 Jul 2022 11:14:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7458940186;
	Tue, 19 Jul 2022 11:14:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7458940186
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44FA81BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 11:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C383606EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 11:14:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C383606EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5eMyQQXuurRu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 11:14:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 696836068F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 696836068F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 11:14:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="287614162"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="287614162"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 04:14:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="924735766"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jul 2022 04:14:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 04:14:11 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 04:14:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 19 Jul 2022 04:14:11 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 04:14:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L6FTDX/kUAZCJWFkhILGP7gjDysN7ExQ+PNT6e51UnA+6rduhKGHC/kaVZ5yZW1xICbYLlxd9qHXEZgz+QL5djZjaoiyFqjCRhFDODj6gLyIUlQJzHDwYkrdj0CG4rkzDrQ871JZr+jWXYq6/TgK9XAcN3lV+rofHv3n+wZ+jcPxO6P8lSpi8/2+hkyBABKysxXcf66KigNJyvKQ23fYQPCRXolxmBw8527LdjQPXM0nkIf/L2Er6K7Nm4jtK41gS5ngaKQumNIe86Iv4uLWPEJ6WexrLe2NC9pbQC3da3B3nMMYz508wIOpRrhQI8SGo78cAoDdbQdRLdTFOrjmNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jf5sGVEpb1sd9b/h6LQQY/so1MuErJpl81SlOHBRyzQ=;
 b=U6RlpKcWXERQmmj8dBqS7Kwesk+LFFyTZZXOEIexNwHawPlA+hWQ4Izr8O1Wyb6/W1os71gwadPCHO8Dpd5aDBVdzKjLSCaZolxbPm+bLs3hzjIrmbXj3gKayUPuA9Z4WfaNI+WNq1E8DsNWBl67QUHV8c/QtLMTmoWnUkpEE80hfxeYPO+VNIxjTFi3pqRaP6T9QXRIR+100jfV2Em0RZaa3nm2Qjbt4Qn156LqTekuvBp4MF8nta+BOQl/Gxwi21QJD2dX97f+O5omRvpIHotpY0f7K1yvlRp2MOMCnEnUkx6rffPr0wGLhUmos3TlH/gF+k5LsTe53AAzGk/hTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3609.namprd11.prod.outlook.com (2603:10b6:5:140::20)
 by PH0PR11MB5807.namprd11.prod.outlook.com (2603:10b6:510:140::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Tue, 19 Jul
 2022 11:14:09 +0000
Received: from DM6PR11MB3609.namprd11.prod.outlook.com
 ([fe80::169:2b76:cd12:9dc4]) by DM6PR11MB3609.namprd11.prod.outlook.com
 ([fe80::169:2b76:cd12:9dc4%7]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 11:14:09 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Check for duplicate
 TC flower filter before parsing
Thread-Index: AQHYhZ5eqiFNwo7YNkm6hDhgDR6s0K2Ftbdg
Date: Tue, 19 Jul 2022 11:14:09 +0000
Message-ID: <DM6PR11MB36091AA270967D29E7E2795C8E8F9@DM6PR11MB3609.namprd11.prod.outlook.com>
References: <20220621183933.2293795-1-xuejun.zhang@intel.com>
In-Reply-To: <20220621183933.2293795-1-xuejun.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58e453ca-7b08-437b-6f20-08da6977cd55
x-ms-traffictypediagnostic: PH0PR11MB5807:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +EQZomDfLGwxI/NTcNkoO9ZfIBesg9H3r/Kl1yCUSBYPtqmMoMWOAzWT96icxSL9qiyZz+ZNW5jssw/ngipIrZ7hIer0f/vt6asK0Svj58QHcyHkJCKcbPrNHFVJ8Rps60dc7lq1V3PUGWl6bTOtWBZlsWrtgYYZNz0xN5TbjZRGhTeUQD/Gt66ujNn7SBx9lVZrXWU9IgvGZxnceaamAPNuZRn7mfG9KS4+grrpXm0c66g6zf72t7HCNACl2RAW5dU+5WqwY/9XMk18srh7VFpQsmBcx2GO1HiOENTIqtDJ9yMJ5Gf2GEdrxBJwfRuwsnRcPORe6hqKSBNxRxfkg5/ed6ocUA+9xa9XdhEn8K/HY0YoqLs4gq12cjpNpwKVhYpdc0g84YVAr+ZXxoiJJJBcPebGOgj+PxV6gRHutl+gdfEGw4YA7ns5mhS9N/zolIBZfLk8GXGJA7hPXARAT7itvVHcgcd0PsHZ2DHjjNR1KpoTYwwq4aSgzzbpqiFmDZ/k4lJeMk3E6rrq9Tg6O+oLdF0EuAc3EddMFlzmGmNh3i2YpzlRRuBeWGi1g0QzWYeNjHW/qUExmr+41s06NKa3+b21DDwymglJuYE5uuYE2iIvF8tS30jUiBg72jgX9+/Z2Ll7gBx9Co2ExSzLEZ70PBQM3l9kOYn/tDC2O5eLjYuBP9KSe+JbGFktgeB7qe7Z1RJ+r0we3zvT0OMPngsJ3szZ+Q8TFWsX8xiqihge7iB9IbBUmB17fsH2UEzE0eMH6gsL4x6bPtfSJpXPwCvICU8DZHfPRTDocCmftTCmdxrQYO3SkaA8QuEeSx4D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3609.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(39860400002)(346002)(396003)(136003)(71200400001)(41300700001)(478600001)(186003)(53546011)(6506007)(82960400001)(7696005)(122000001)(9686003)(38070700005)(38100700002)(83380400001)(26005)(4744005)(2906002)(33656002)(6916009)(8936002)(5660300002)(52536014)(76116006)(86362001)(66446008)(66476007)(64756008)(316002)(55016003)(8676002)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tJC5YoHoFWEus6L+R5jSL5DIi+igw7YEEPFfeNF/bEAbbIPdai0+UWy4VJ0t?=
 =?us-ascii?Q?W4tjnXKHUsZNGluXSY5/V7C897hJN+Xrf1C67TqJiJd/z72lpO9SVGg11ynp?=
 =?us-ascii?Q?v5g2MN+g4aPSxZMuikfyyIFevpsGi1Qu/EDeabWZlBA+wh4/6TmWQ9MkTIQR?=
 =?us-ascii?Q?2PiWq0MmK04EzNJLNhhMqxemSbP6Ek4988KBy+3jAo9+kDTTA3GiZUy2GCLE?=
 =?us-ascii?Q?u4QeVFHqwHFIVJ+SbxCWwy39IO1Ll79O8tLWsN6/P+yfuAGNaUQPpoOEkG7L?=
 =?us-ascii?Q?vRc7F95lZ1861lcL/ua2X0B50dzDkN/dQmHIMn0H2U8b1HyDasmSjtErGpVo?=
 =?us-ascii?Q?na1ea6z1Vqj2KUZLF7ItxAjEHMMQ9N+w/DGIQ/q5eATD3xKobVp+HGxU6a8I?=
 =?us-ascii?Q?SI8oamG8+kn4yqr5LSYgRPBSFTze04hIW9733KgdwN/HRY7cTZ3EMKyCo9H7?=
 =?us-ascii?Q?u7NjhWW1uy9ZxH+ez5wOPc4rJcEVKKGSnAwHMj6zfFHMjlH/Pd7uQuTy0A4o?=
 =?us-ascii?Q?HRUGZYMAzuhoPsbUqrL6ZVB2QYs1DTumBddZfe98FMo7ZM/c5x4rtnmBDJoc?=
 =?us-ascii?Q?lI//dT9AtRLx+qao95jOOyX4bo/KbpRyyQpk8P52zHzFbOz6/h/u2MLYwnko?=
 =?us-ascii?Q?HcerqhzFGmhWA1d+VJB772jEhjlnOKhzKVjcaiPrhqWtMWhYQHQOE0v1Tskk?=
 =?us-ascii?Q?i4gaMxTHpLVNvJc+OEuI2UDxtqauq8cCRsfFMtPsgoRWkE4UcUcS0ikK7NO8?=
 =?us-ascii?Q?uVYGfDF/4BL0uGdBjxAS1+o3KqOBxEP5EHhPUKOt8icpI7EN0Tjhg8xCanBm?=
 =?us-ascii?Q?SFedd7PKZI//CuzcIWvkIw+zde9gvtAmh5dW3WC0xOk9XVu1cv9XibssfXkZ?=
 =?us-ascii?Q?io7F+QeJSpuFEUGgzmc8kqMHLKPgYuysgWBI5jJoeHx+7BNHidbJf1Fmik1D?=
 =?us-ascii?Q?Xe9Q5hVRQw0xjRmX2QSIpmznlZzjlawRZ4JWo/bKhet95homAiCpU/te1bJs?=
 =?us-ascii?Q?OYWPYZz+UVP5ll2EtOGf9Ryysq+ALJ1W3jiQJLD1Jtr4+wiVIASnwSuw/wOS?=
 =?us-ascii?Q?NiBAIIOK//L2zjNvyYQMoQPS83vtYS2Pxnt3X6WMOQNHpurcW96yNVaeXUbH?=
 =?us-ascii?Q?MuOyNU3TJF1RQQ8a6XFIVp8csw7MplHKbmolE9edBmvnfup6BpHLOuoX//oQ?=
 =?us-ascii?Q?cmDbHnbh1QABgGQpfI+0zGyeqk8sfPPiuFBo5jVfz6Xcr5i7tSky4CpTEmQD?=
 =?us-ascii?Q?X7VWhprOvGbZL9UM48xsr5YbyL23W8MF0quqjEhLnplL4kK1MB2ogxLk6FZU?=
 =?us-ascii?Q?jMcC24mcV4ab9cIMFXkfK/IxxKVuvf44weigPPDouKi4AnVbYa5b2GExLMNI?=
 =?us-ascii?Q?Djk0vyBK1zYnJ71JORNkTViOzEBlVfyIVZE85IIhTl+uCo/Wc+BV38v//h+c?=
 =?us-ascii?Q?kBbgLfAEELJOkaz7UeTnzouXKuyvzCq2dZSnY1xV+UEPWt9069r+xUunUrCa?=
 =?us-ascii?Q?jX4mQh32VfknIQtUCPf+RyYZ76vjzvZde8vZ/3pmi1mOoqM2YazsQ3lDaB5F?=
 =?us-ascii?Q?VVNs8EjGjr2Zs3C3g2UzoYYTHBgJ9HDcrmvNX34fPN8IkjV6Ac+gLNlAJkCo?=
 =?us-ascii?Q?HA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3609.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58e453ca-7b08-437b-6f20-08da6977cd55
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 11:14:09.3143 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sIJz3FEaGhu35cuwg4dAMcCfzzXME6W2nubjTHOuunMZ+RDB3iuDl4HdLx5F005qOrGNykNeM1zZUG2eo9z+IpWgt2MZCpxeV56+Li7qmO4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5807
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658229254; x=1689765254;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=evyb+ATLv8W1sNoxltaP0nC9Jd31frEqi0GYP5UUTcE=;
 b=nTawEYbQv3Gqk7QD56heXIzVZVbmPHS2Ff8aE2eXaTRDckZYv6jbYxZG
 EwERumBv4XnEhNn/EyEs/ksBAZ0mfFdoHPfKlchVO5rG/rcAwNyPBPa4/
 ZujXmFBNbCzjXFqAs9eLMMn6pT0tlAvnkB9dB7o+CebWjF9/2IbnrT5M/
 iemsIUgl+MMR6dXISnGWsD8X48IqUWo2SrsQeYSc41xtFTcld/PYnNCW+
 Eu7TQssliCYtaaYjwJNpKRRNvC9/qovqgzf/0z8ZeV/jOajrlc29OXksO
 fiEHsyW4jQlX7i96mOg8gQ+HG0wSQECwN51SuUyn5NDe4PI7WvNNHUvI+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nTawEYbQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Check for duplicate
 TC flower filter before parsing
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jun
> Zhang
> Sent: Wednesday, June 22, 2022 12:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Check for duplicate TC
> flower filter before parsing
> 
> From: Avinash Dayanand <avinash.dayanand@intel.com>
> 
> Record of all the TC flower filters are kept for local book keeping, so take
> advantage of that and check for duplicate filter even before sending a request
> to the PF driver.
> 
> Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> Signed-off-by: Avinash Dayanand <avinash.dayanand@intel.com>
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 54 ++++++++++++---------
>  1 file changed, 32 insertions(+), 22 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
