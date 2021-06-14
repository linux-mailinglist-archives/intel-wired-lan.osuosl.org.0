Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CC13A7116
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jun 2021 23:17:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CC4B403D7;
	Mon, 14 Jun 2021 21:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H2KvAblBD7XJ; Mon, 14 Jun 2021 21:17:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D20B0402C5;
	Mon, 14 Jun 2021 21:17:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E9DF1BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 21:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 98D3F40514
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 21:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kwh35Af9FRfF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jun 2021 21:17:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5943C40515
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 21:17:16 +0000 (UTC)
IronPort-SDR: p6IScbd9dpk41jJvx9Zd/IlZiS/HSxQM4paUjmTBaAJPP+Zxw9Zj7qLTKou8ZFCV9RTipNF5Eq
 4T38oai3hNMg==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="267029547"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="267029547"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 14:17:15 -0700
IronPort-SDR: 1uwpyHt7ICL3mvvnTcIMGHXL9BiygdG5TQDsheKIXphTEPwwtLa8ZuopvtxfWfXsdM1rO3WDSp
 ux/sMlZKLB5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="403772653"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 14 Jun 2021 14:17:15 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 14 Jun 2021 14:17:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 14 Jun 2021 14:17:14 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 14 Jun 2021 14:17:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BMsJkhIcyCMYAsoS1UcNtniEzCS4+f0RZQMnuiNe2AguOw0IVnRVUCSarAGaeJOEiJVJIOkRgAdSJe9Wds4I8p7gZDKMbKhQwbOKA4gdUXKovul/ysTAuQl1LXiPX1lOmn7z60aU2kmFcQZ6M0fuXVDrKCbNQBfZWkPgXZ3eYgF5rgHbcuTZHIHbQPoRpJDli/cSa7DdDgCejGCm/ut6+saGvNmonT7wne6iIOrQThQLyVh4OREyMX7qXEpCsOplg+a9CJjyYc7k1i/ANM0ZpCyMVzOW0pJut8F/xcJPn+PnmFquOQo9II9sNBddvvxt4c4FGQvN2IJDxACIqGlONQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TC38Kv0uG+IliT4Y6Ui42eerELW3mIa8h/VghHqU0Yk=;
 b=geRoudtVcsstmyNh2IH3ubiJOnnpul5vmfXDojK7/lrg7Tvj2mDS6t88u9DuHGvu4MjpKQLS9Yba0EJdDBfa0u3ODmAJn3lrwQzzfGaot7e//GXVczB3apheUP6gAJBoy6BEzsv3fYyYS2kq22R59QvPTWDc2oAIVli2peD3MqT+Rk0my7KqdUNa+VKyN9efP1vCJmh9ewXEbne/FQ+njUx2eAE9/Gf6aFsOCblCpgLBsAFwnTxnN307K/K+U2dPjZbzA1iJNCkGvS29fEIiZwtHIieQA3db4VNPuEBfjDy5e1g5EhBNs2IJM2fBCoT8FqcBdAp7lS2tHXbkZiydag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TC38Kv0uG+IliT4Y6Ui42eerELW3mIa8h/VghHqU0Yk=;
 b=yrf6sGzFvCvqm69ds/JMR9BW+ECRJj6cNRn7euO9qV3EJceUaLO2+9/1CqMsbXwaTWsjvLX6AhsbSOHvuYk584hcrbwHVK/0aH9S6eTr8oaXUy6jfG980UxM8VmKFAAjL8slafwJJ4Jcq7VgPRcSXosv2NHhjxQP/7PXBWprrPo=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3070.namprd11.prod.outlook.com (2603:10b6:805:d4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.24; Mon, 14 Jun
 2021 21:17:12 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4219.025; Mon, 14 Jun 2021
 21:17:12 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add check for queue
 allocation for the VF and refactor VF queue requesting
Thread-Index: AQHXYQIuDAHp2Q7aoUusb+BWRNebbasUBAaA
Date: Mon, 14 Jun 2021 21:17:11 +0000
Message-ID: <5e2f4f5666dfaa8d066bb7e7480b27ab307cb261.camel@intel.com>
References: <20210614094614.64215-1-karen.sornek@intel.com>
In-Reply-To: <20210614094614.64215-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3577aad7-2984-46e5-0556-08d92f79c6af
x-ms-traffictypediagnostic: SN6PR11MB3070:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB30702CBCA9B0226D15A317CBC6319@SN6PR11MB3070.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pyNSMLyE37rT3iI9a5JX3C2N2owbhuyejnDoHb/sbL1qw5ld0ohN6f9YblyT1G/9P/p/Mav7oTf6BNV8jVWUicEOYYnn2h+6gAn9An4jS29yY0Yxt2AYoJlHLrh9gl/H1wkp8E9YJE5Ek6i86yk5zoFe0twkc5q+2Q96sPCy6hwEXH9XMMFlxykQlSNBn520d7w5QZMLta6LXHV7QjH5QQpx96F3Ognoic0fIiVD7EI8clFstPlfZpPy+9z5t2YPnO5J02sqY5cF6TOrxivGD5ZkFfci1YEiKZptlhU53ZLrawuC/iPH23/VgmRNi/0rEr+Wzxk3L5WdeAiBECBiiS4SXHJndgUKtCHLBQ3t5rjfIOJ0vO2slNenIho8AMzmO7xwvw0t0vXL+93x5snsJqbRzmsVjYQAcE+bjAQzGJkBrgLvkXezez3+Qg375JVZ+BtMJwgSpHljiZ5QwVCF5xDlIQJY2qieg/akgmGaKfJGTDck4WKiTUKnu/FE2E7Y9TzM60yQ632eA9s3yKWIZS6wxJ0N2/FbSte8BI5TKPGmSTs9cF7YdZEJVvLIQTeNx0A4Wqe6JDoALzmwtNyxe2nmnaSI/NJIaC1HWyTsUgI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(346002)(366004)(136003)(376002)(186003)(2616005)(478600001)(8676002)(6486002)(122000001)(6512007)(26005)(38100700002)(2906002)(5660300002)(64756008)(36756003)(107886003)(76116006)(83380400001)(316002)(110136005)(86362001)(8936002)(4326008)(6506007)(71200400001)(66476007)(66446008)(91956017)(66946007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aEhHWEhUNFBXY296K1o3ajAveGFXNGViSkJBL01VLzFVeitnVUZlY0ZVTlVB?=
 =?utf-8?B?VVdEUko1TzFpSENXbFN4S2JRWmJxb3pKbEZKT0w2dm0xSGdMejRjODhBM0hJ?=
 =?utf-8?B?YkFWa0Z6cnU5VmkyT1B4RmpxVldQN2RYcTRPb3djZWZVcUpqZE9RTTZ4NU5W?=
 =?utf-8?B?NUdCaEQrK0ZtTnBIY2VydVlPa1VnVGJ2eVZ0STJlcWpyaXFScUIwZ2NsaVNu?=
 =?utf-8?B?RDlhMGZQYXlPa1FKYnRNTnVIWGQzdUNhMC9ESU51T21wM3NTNmtPRWhJQlJK?=
 =?utf-8?B?aWZmb2krYTY1MHRZSlVNU3I3WTNrdXdQWmxkaDgzSE9ac1NlUktXTVN2RDBO?=
 =?utf-8?B?MHVZZGZlQVhMYXl6NG41WVc4VFRCeUQvKzhwOWZSaEFLWnltdkFEZTdZaWY5?=
 =?utf-8?B?UGFoN0k3RnN2djdwcTV5ZHBPSmJiTXBPSVlXNCs4c2VVREdjS25FYmQ5NnlL?=
 =?utf-8?B?YklpZjlkWlBWK0lObmhaRXpsbnBldENnN003NE1LMjNzMXB6SC9WV2J6cEhz?=
 =?utf-8?B?a2FGVUNJTFZGMmdkVE9IZnVPUkN3SCtwL0NJTUFCd0RjVnBKaWUxbyt4Si94?=
 =?utf-8?B?azFWVVIrbXI3S1FmMGg4UVJXa3VDMWtsak1sNk11WWdLUDRtUWlIV1NORlVD?=
 =?utf-8?B?MkhNVHlGY0NjbEtHT2JJWHVZWHFOTDRHR3JubG05WGVidEpwQmdrZ3krR3FL?=
 =?utf-8?B?SEVTT2g0NEc1N2Zjd3c2ZFl1RVhlblNCWW03a08rQ1A3MTlaL0Vndi9EYmdz?=
 =?utf-8?B?ZU1zUkJDbkhjT3hDWkh3UmEydm9uSnkySGtuTW0vbXhFS2pXMHdDV0wrZmJR?=
 =?utf-8?B?NmpaVVpWcGFZWSs0SC9qVnBJOTBLQWdZUEl1UWhKS250T2p5Wi9ZL1F6M0FV?=
 =?utf-8?B?a25WcFRUenBZUnVxQmRzUDBOS1cveW9BSUU5aHl5RG5MVjNwaStPbkREQnRS?=
 =?utf-8?B?VnVoY1hXeGV6SjE0TmJ3U0F5dHBYTG9JVW5OZVQvR0lKREhteWsrTkw3UkJX?=
 =?utf-8?B?dDBXTUliSUc4Uk1BNzJSWENzWVpqUTlrQ0dBaTRPS1hWY0U1QzhxblI3K3NR?=
 =?utf-8?B?RzgrSUFKbkNYUnNXY1pIM2xXQjRHWGtSMG1UQnZkRnkwOExTZVhNd1B0cHFL?=
 =?utf-8?B?OFVON05QaDd2MlFEc1g1NGgrN3dVU3lIcHRkTy9PYXUxVGZwSW5MQVVKZkd6?=
 =?utf-8?B?NFRzRFdLZm91WGRxdGVFS2U1U3Z2TGU0VnMvWVNxRG5hZ2RyY2hYTS82VlVH?=
 =?utf-8?B?RHBmNXBxbHhDRTR4cHN4UEJBMHc5K21vWDBDZGw0WVdpSzJoYmh6ZjJjbkg3?=
 =?utf-8?B?NkdCeWZ4MHpmVnV5OVVDQVp5VmZ1d1FwcmRudEI4L3U0c0NJTjVFUnF1MndJ?=
 =?utf-8?B?RGFOL2lpZjRmMEh3N1RqWXdad1UzVFJuVkxuNGZjVHdZcWIweXFYVHdIQ25G?=
 =?utf-8?B?a2YyeXNRUmxxMXFKMzArTnphNE5jTVg1bm9YRnk0UVNNYnh5ZnR3b2dLcnkv?=
 =?utf-8?B?VU0vZjVoK29NbVlUbWtkZ2hSTlV3RW5idnlkMWhuQVlJaTlQak9hWm1FV3Y4?=
 =?utf-8?B?cjdWRzl1OEFZSW5tWCtyTzlkR0NzdnFISDFGMkFBSlYzSGhXMGVGR2o2TzZQ?=
 =?utf-8?B?M3dwZ056cTFuQzBUK211RFRaa1hCajBuejlIWHY2ZzZHYXpXb3ZBWkoyZG1L?=
 =?utf-8?B?bll3UWtqUVpqZHpBUGxxZS9CdUlIUWhBQ1d1TS91WkNYeXNuQTVac0g0VTEx?=
 =?utf-8?B?cWN0a1Fvemg0Tm4vQ2hUdXhadEhrTUQ5T3FMVStYTjNSekF3TlVBdG5wUUVV?=
 =?utf-8?B?QjFndDlnY1VYT1daZlhKdz09?=
Content-ID: <803F2C7B5446594BBE48F75FF11F229F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3577aad7-2984-46e5-0556-08d92f79c6af
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2021 21:17:11.9773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eFEZi+gYbc2LK20dL9WsecZwqXDiW9/OoukyE2JlpqlC21ADzGXc1XK2JKMjchNiU6fg8gSrY2qxiAs95b2SOhpJJtTF7ykhs/obZb9u3rM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3070
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add check for queue
 allocation for the VF and refactor VF queue requesting
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-06-14 at 11:46 +0200, Karen Sornek wrote:
> The change implements the search for free space in PF
> queue pair piles and refactors VF queue requesting.
> i40e_set_num_queues and i40e_request_queues_msg
> used similar logic to change number of queues for VF's.
> 
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |   1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  33 +++++
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 135 ++++++++++++++
> ----
>  3 files changed, 145 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index ea9e301c6..0f2e0e5e0 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -1154,6 +1154,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf
> *pf, int queue_count);
>  struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags, u16
> uplink_seid,
>  				u16 downlink_seid, u8 enabled_tc);
>  void i40e_veb_release(struct i40e_veb *veb);
> +int i40e_max_lump_qp(struct i40e_pf *pf);
>  
>  int i40e_veb_config_tc(struct i40e_veb *veb, u8 enabled_tc);
>  int i40e_vsi_add_pvid(struct i40e_vsi *vsi, u16 vid);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index fce05ad24..5d4d323c9 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -257,6 +257,39 @@ static int i40e_put_lump(struct
> i40e_lump_tracking *pile, u16 index, u16 id)
>  	return count;
>  }
>  
> +/**
> + * i40e_max_lump_qp - find a biggest size of lump available in
> qp_pile
> + * @pf: pointer to private device data structure
> + *
> + * Returns the max size of lump in a qp_pile, or negative for error
> + */
> +int i40e_max_lump_qp(struct i40e_pf *pf)
> +{
> +        struct i40e_lump_tracking *pile = pf->qp_pile;

Please run checkpatch and fix the reported indent issues. This patch is
full of these:

ERROR: code indent should use tabs where possible
#130: FILE: drivers/net/ethernet/intel/i40e/i40e_main.c:268:
+        struct i40e_lump_tracking *pile = pf->qp_pile;$

WARNING: please, no spaces at the start of a line
#130: FILE: drivers/net/ethernet/intel/i40e/i40e_main.c:268:
+        struct i40e_lump_tracking *pile = pf->qp_pile;$

<snip>

> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -2616,6 +2616,116 @@ error_param:
>  				       aq_ret);
>  }
>  
> +/**
> + * i40e_find_enough_vf_queues - find enough VF queues
> + * @vf: pointer to the VF info
> + * @needed: the number of items needed
> + *
> + * Returns the base item index of the queue, or negative for error
> + **/
> +static int i40e_find_enough_vf_queues(struct i40e_vf *vf, u16
> needed)
> +{
> +	struct i40e_pf *pf = vf->pf;
> +	struct i40e_vsi *vsi = pf->vsi[vf->lan_vsi_idx];
> +	struct i40e_lump_tracking *pile;
> +	u16 cur_queues, more;
> +	int i, j;
> +
> +	cur_queues = vsi->alloc_queue_pairs;
> +
> +	/* if current number of allocated queues is enough */
> +	if (cur_queues >= needed)
> +		return vsi->base_queue;
> +
> +	pile = pf->qp_pile;
> +	if (cur_queues > 0) {
> +		/*
> +		 * if number of allocated queues is non-zero, just
> check if
> +		 * there are enough queues behind the allocated queues
> +		 * for more.
> +		 */

WARNING: networking block comments don't use an empty /* line, use /*
Comment...
#190: FILE: drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:2643:
+               /*
+                * if number of allocated queues is non-zero, just
check if


> +		more = needed - cur_queues;
> +		for (i = vsi->base_queue + cur_queues;
> +			i < pile->num_entries; i++) {
> +			if (pile->list[i] & I40E_PILE_VALID_BIT)
> +				break;
> +
> +			/* there are enough queues */
> +			if (more-- == 1)
> +				return vsi->base_queue;
> +		}
> +		/* start the linear search with that queue behind */
> +		i++;
> +	} else {
> +		/* start the linear search with an imperfect hint */
> +		i = pile->search_hint;
> +	}
> +
> +	while (i < pile->num_entries) {
> +		/* skip already allocated entries */
> +		if (pile->list[i] & I40E_PILE_VALID_BIT) {
> +			i++;
> +			continue;
> +		}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
