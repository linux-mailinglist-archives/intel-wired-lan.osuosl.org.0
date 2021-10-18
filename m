Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 641D543237F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 18:08:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9726A405F2;
	Mon, 18 Oct 2021 16:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ajqi_1e1Lzui; Mon, 18 Oct 2021 16:08:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74D10404E4;
	Mon, 18 Oct 2021 16:08:16 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC4AE1BF293
 for <intel-wired-lan@osuosl.org>; Mon, 18 Oct 2021 16:08:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9701182B1E
 for <intel-wired-lan@osuosl.org>; Mon, 18 Oct 2021 16:08:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pDXzXrulaApm for <intel-wired-lan@osuosl.org>;
 Mon, 18 Oct 2021 16:08:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C8E1D827D8
 for <intel-wired-lan@osuosl.org>; Mon, 18 Oct 2021 16:08:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="208384182"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="208384182"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 09:06:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="482799553"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 18 Oct 2021 09:06:54 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 09:06:54 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 09:06:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 18 Oct 2021 09:06:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 18 Oct 2021 09:06:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cFfewBnNTWjszItYGEtfPDgXdBmzqr6u+6w1K3MhUuHKejAt4dD4uwIfO7GFPIJ8AwCbxiYMU8v0RigosWWNZil8q4Gml5sjKTUxMvEk7J2f/e9E7M0OY43uQioHpkPihMIZ5XrVHIS+25BtGRndMqFpgCCTYI5fVk7YZk96MCQlCLHDPbFDn+ShyybB7Qww4K6FXsovGbaI/RGB/4eYf5CsHbp5c4S27bdrihxLWGrtwV9uYv88t83y9rBTNpcJ21R7iqGnvJA1LgozMvKhMBbFaMVmWBgZnvTcVMXB+ARj7ZV75IlG0ro9nT5HAP2rwIoNGHfAolSrUoG8+NnTjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CLc/99d60yicI8W8T42ff5A/WuLGr8xEmbHnTZ6wp1U=;
 b=JmrBW3U140sx6ygyKAdT2BGmMzM7Uu3IHr/PpmB+lZfT84Ro8k5t8P5fP45E0Res0Jr7qyJ729MeYA2tFkHfJ04lcUO4TnZM0YSnkVEGC7qBzZb5XcCEMbITsLK5KEVd+RkEK3VV5QrVFD4vfIK/wQtG+75WnuwJcdm/0FKLybSb5Uo2aiAgtUw5RYH2woewsB1BkPWZ0djgc9F4chi0rSBTkcWOp8jLG+n4/ejlKw8HpuEYvh9KEpM90GFkkmV4ZsfrqQ7o7tuJ/+qcPAJ6xCaWtryDZM7CrdtLaYou6x2Q1x2+42TxCAkzH7ULB1gkpHAxFKhM9jd9JQTAPO3g8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CLc/99d60yicI8W8T42ff5A/WuLGr8xEmbHnTZ6wp1U=;
 b=qrB6sksmXsWpNXTqHM1A3ME8K+kowkcjlNHOfbUGxdI33v1w5NCeswRxG9Lmk9vFeIKe5naeyP7eD0uqGWsQXVBbKVDgMjjHFv3uEVgkDMlM2ZC2iN7yARXZATtYAGFibHD5+N2/Kctc2ddb9eORCXvGgtpj18JwMl94GAjL+TE=
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by MN2PR11MB3919.namprd11.prod.outlook.com (2603:10b6:208:13b::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.18; Mon, 18 Oct
 2021 16:06:51 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::90db:66a7:d643:2bb9]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::90db:66a7:d643:2bb9%5]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 16:06:49 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 3/3] ice: Add tc-flower filter
 support for channel
Thread-Index: AQHXvtYQXexgVWlSlE6nvILETKk/mavY9erQ
Date: Mon, 18 Oct 2021 16:06:49 +0000
Message-ID: <MN2PR11MB3614AB15A5ADC354C6BF89FA8EBC9@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20211011192518.1867431-1-sudheer.mogilappagari@intel.com>
 <20211011192518.1867431-4-sudheer.mogilappagari@intel.com>
In-Reply-To: <20211011192518.1867431-4-sudheer.mogilappagari@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bbc10f5a-b640-4f76-a3f0-08d992514b04
x-ms-traffictypediagnostic: MN2PR11MB3919:
x-microsoft-antispam-prvs: <MN2PR11MB391970B4C679F1B59E78D8938EBC9@MN2PR11MB3919.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nQOp4eJydpdCoQBl4I8T6Z0xPRYreD2PD+nnzyAbOeJb9xqPvNP/yt9do0YfiyAUxyffI2p04kJysBA7gprQ5NJOEVh8ht7jIj4cM56oX3XtrGtpV4w2E8LdxiSmQV93VmR+jSimG3S/rt3Q0b8IjGgVFwMoxzTRK3iBpxUERMIQaddThRcoT+YjXhf7eH5APBv7BqUWGwSvoqnMcH22Qv+FVsWlIPM/fVLEgLAiF9WVvTHooEDbxKxsecSPQm2pXurLv4siOZ276z7dqIkAchKFQzw8Zkzox/+LyqRXt9OloW8cNdIoEWrzOYbtnBLTUJjbVdR2+DvaqTKFuNeBRYvdHhlyAD4UT09ydujOKL0WHr6In+Gnq02JSdaB00LU6vR9qHXxR0uiLsU7DF2kdumcrz/MlUtjtGD17OPu/EeuWxvKTJaO0OgLeIzAuvO+tECsBFdz5JiMay0MSS8cQKwZylA+uuvOpN+5QAeWXiEg15LCGqOjiaDUcc3rEck9rIOiTSbQqWZRxEjDYsyEDSsuSJXE8MZahbynakk/5g2gGz9l1jB7Mm1Tl3OBy+O4nEzfoBVgRDYjNgu+qOdF7F9dQD0DizLi0/gXI15E3Hi+z12IasvsmNyriZbebVQq62vEcGDuA9A5PM5b/nMcPVdtuW8kQEj1eF6j4fPFf5wzCzpJdRT19A8HN8VsdhNX7Dgr12xzBOX1FkIZ+B3gBQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(122000001)(38100700002)(86362001)(66946007)(71200400001)(508600001)(66446008)(6506007)(8676002)(66556008)(186003)(64756008)(5660300002)(66476007)(26005)(53546011)(52536014)(76116006)(38070700005)(316002)(83380400001)(8936002)(82960400001)(2906002)(33656002)(7696005)(9686003)(6916009)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1SDkI5Xg36CaEBOLLIEjlyv5bCYdraqVCyciSyMulX98vg1s4QCSYiNg7qKH?=
 =?us-ascii?Q?pdS5RUkHftuXbEB+O4NhN1qZ/Q/nAe4iX5xb8+xjMsCam71dbHJNycfqswxO?=
 =?us-ascii?Q?1KZC7IpImiSXhF+zol2lrK6vfPb9FAXNH1Ks+dVrPOcSY86Q5IW7gF2O9Hyx?=
 =?us-ascii?Q?xmXFnuK3T9ScECSKJhXWqUHF9wsxxG7oW89j4jw7ZOdMJd7h9i5CtRuEfgcP?=
 =?us-ascii?Q?nAr+8I7l7FZ8UM5sG40ejt576axKKFBJScCGi9Myvn7QpMyyhJLJZ88YkgMF?=
 =?us-ascii?Q?VhG//CRN8qIrOGoKgpstYwyX4UDexvRhzAklOcvSx80hIqCPK1792K95pgTp?=
 =?us-ascii?Q?ZUzVg2R+woTI6TXkEQwjL3grx7JjZlVwfrhjbjkn6k4odiiiSKhGF2/5Y3xy?=
 =?us-ascii?Q?lgpJupf/uJo427v60V3IyPpixwyQ5Im8oe0MqbpA65r0IMeQnoZotpBuCU7P?=
 =?us-ascii?Q?o2PBOkNDa5HmUpkxFrZqh+/DLRdCpTeeGI9cttDTD4ekwMjVFM9+v3vGqw1n?=
 =?us-ascii?Q?BqbNRfhBBMA5hgiZXWQJ6ZD/9GHr1Y3aZpkpSshpLMOarqczFrq4gtqAg9HM?=
 =?us-ascii?Q?4R3EKBxLs8dT+JtmtXHsjaMs3I7dsId4//T2+Y4MGxlfWtB5xlQsdcCoeOcJ?=
 =?us-ascii?Q?0/M0f9ShbAghnK2UVzGFCsnASyuCqKxRvMDQ58+SdJZqDkEi9CQO3qcbkL0A?=
 =?us-ascii?Q?lBJVKysrIPFg4jRAMDtRugeXcDB3OnoQThAYpOOz4y508hkZxXsxcJchzOpk?=
 =?us-ascii?Q?LbMXMIzCIaiKkfR1xIwJP+KO5yWQmjTF4Zk6/fbXBbchC08MB7oHhUzca6P7?=
 =?us-ascii?Q?o1v67l/keUSePWdvs4bpK2+xpkGqYjDLWE4NgE1rQW/3NoBCwJJoGNRs7M9r?=
 =?us-ascii?Q?7svYXdEbTOH4+iYkQQkdOL0nfhIuBAzGQaEMiABwGQb9UDpiqSmWGFXAjcHi?=
 =?us-ascii?Q?E3RWn1XclNvQWKzDMkLncUKs8TK/KvqY70KS8oT4UvQ4leVy9UOvZgp5A6yo?=
 =?us-ascii?Q?t0Ry8v1EnDRyhJaC+P+3jGa6Iexm96lzzWGZ2bPQZN9cV9FFEFXbuTO7+KMN?=
 =?us-ascii?Q?6thsMPMwXvc9vnC3oM9PrbMM9qagfduZ7L+p+rDU6Nf5B5QJw446i8XvT7N9?=
 =?us-ascii?Q?wILn+I/6Js3aMNbtvOxBjWwW8NkInadoYTMSL8oT7bt/07wzO8eRsTs2s2yO?=
 =?us-ascii?Q?v512RBCV9Mz+JuIyWa14TIxl+dnUO9pdTYsXFrQJ7AyAYvOegB+74/DDTS9B?=
 =?us-ascii?Q?ocUnkqU5AMG7Q+LM7NZ/tj4Js3tbRYWlwoMJSEO/IyDLXt9xtEwcgVRNjV/W?=
 =?us-ascii?Q?PuntCtf519/HVH7CDW/KodDY?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbc10f5a-b640-4f76-a3f0-08d992514b04
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2021 16:06:49.7098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roSZFHlU5ehYiCaNpOs1UP86k7IJdsbKfFgAFP+ekbrFEK8cUw9iGb4Evzx1Hwbial1cGWPxkd+EY1+M/2Dz4GUYXjtGlQb0P3Mx7QjIrZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3919
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/3] ice: Add tc-flower
 filter support for channel
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
> sudheer.mogilappagari@intel.com
> Sent: Tuesday, October 12, 2021 12:55 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 3/3] ice: Add tc-flower filter
> support for channel
> 
> From: Kiran Patil <kiran.patil@intel.com>
> 
> Add support to add/delete channel specific filter using tc-flower.
> For now, only supported action is "skip_sw hw_tc <tc_num>"
> 
> Filter criteria is specific to channel and it can be combination of L3, L3+L4,
> L2+L4.
> 
> Example:
> MATCH criteria       Action
> ---------------------------
> src and/or dest IPv4[6]/mask -> Forward to "hw_tc <tc_num>"
> dest IPv4[6]/mask + dest L4 port -> Forward to "hw_tc <tc_num>"
> dest MAC + dest L4 port -> Forward to "hw_tc <tc_num>"
> src IPv4[6]/mask + src L4 port -> Forward to "hw_tc <tc_num>"
> src MAC + src L4 port -> Forward to "hw_tc <tc_num>"
> 
> Adding tc-flower filter for channel using "hw_tc"
> -------------------------------------------------
> tc qdisc add dev <ethX> clsact
> 
> Above two steps are only needed the first time when adding tc-flower filter.
> 
> tc filter add dev <ethX> protocol ip ingress prio 1 flower \
>      dst_ip 192.168.0.1/32 ip_proto tcp dst_port 5001 \
>      skip_sw hw_tc 1
> 
> tc filter show dev <ethX> ingress
> filter protocol ip pref 1 flower chain 0 filter protocol ip pref 1 flower chain 0
> handle 0x1 hw_tc 1
>   eth_type ipv4
>   ip_proto tcp
>   dst_ip 192.168.0.1
>   dst_port 5001
>   skip_sw
>   in_hw in_hw_count 1
> 
> Delete specific filter:
> -------------------------
> tc filter del  dev <ethx> ingress pref 1 handle 0x1 flower
> 
> Delete All filters:
> ------------------
> tc filter del dev <ethX> ingress
> 
> Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h        |   9 +-
>  drivers/net/ethernet/intel/ice/ice_main.c   |  77 ++++++-
>  drivers/net/ethernet/intel/ice/ice_switch.c | 119 +++++++++++
>  drivers/net/ethernet/intel/ice/ice_switch.h |   2 +
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 217 +++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_tc_lib.h |  22 ++
>  6 files changed, 438 insertions(+), 8 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
