Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC9A2246E8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Jul 2020 01:21:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6455A88377;
	Fri, 17 Jul 2020 23:21:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CvoIZP-UQcZ6; Fri, 17 Jul 2020 23:21:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E2288837F;
	Fri, 17 Jul 2020 23:21:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B6BB1BF363
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 23:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 271BF204B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 23:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FvWfy5zwn9F9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jul 2020 23:20:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id B170720370
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 23:20:58 +0000 (UTC)
IronPort-SDR: iqC4zTybUuo37XGN5bSmlh2kXIM1/9U9tA6x0tBd+lAWVGkBsh4T0bPLhJZsLtpc15m+ctKHuY
 xW8rBFMifeKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="137799520"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="137799520"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 16:20:57 -0700
IronPort-SDR: jrT6xIqgA0+n7GjpARa/ZPKwtJowFLCT3c6e8DXJV/RofGTajQCPw7Z/1lkUTh9nqpoqWwVRvJ
 NupAvJutZ6ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="269645242"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 17 Jul 2020 16:20:57 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 17 Jul 2020 16:20:56 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 17 Jul 2020 16:20:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Jul 2020 16:20:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D+F3WzV2sGgIkupGVBz/31lRwly/xlNN0Q7tdZeB/LpdZxjozSNcpcikEV30s+kykgtvDxvyM8Elp6EHSo/LWRJSlh1luXa2BU0SH1Lw43AvlPITYvJt5Ne6KIIXzL1/u0lQKEdmoYYj1pjBbJcjVB7NFJIQYBTXb85rpOrm78zHe6pqUtzQlJMaLdUjOy938Hb64JzTX4jFXebwCj49hMRuauFaLqXRHvXf0vzYLFFZXPdszhGmeJ3ntqtpgyqxQ+8X4UJWfEykEQsjn0JEG8e/Z+9X9t6oetN43V3RkgDAe9g0FtNaIcpF8OQUIDdizGzqABKozpZHisDcnmUKsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=izxl66T76Z3yaInzjV/nr2abD89gEI1fBl/T9GNy8C4=;
 b=P/QgBpc0BAcbMlubRuHLskYqmokS+Ev18RcYOSzhHxZoFfEJDwYMInu4uex7AJ886+RKlC+dimvqm/wvQ1RWv7PajqpWhkLQ6em7sP6T4WmYNXO0feflIDrxCL6232wFeSa7CxYhLpivSd0nBduILuNzqO8ArFHU+i1LFO59kOBLI1yw8gDEyMgYpGl3ZMz5I8kBGX/0/fFJjXKxL1qDPo/5V8Qhl3b1OuUJwxkxLPdIQ5j5A1YYo4J8pocItdYdgRfUGauZOan9Bp+WleZsgJrc3bjLBypzEDD7uSBX6By5yK2akbWvLp2k4jC2EgRkdo9D0vf6h01yDgsYu23NzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=izxl66T76Z3yaInzjV/nr2abD89gEI1fBl/T9GNy8C4=;
 b=WkQFVxABStE2yF10wpHCm5djb4H9r2knvNv6VBkOdvgDYQeRDvBwABpVoMwsBQbbvpc0vdhKTSM5akWEmICRGEYoPzTFqAR8YMMWB/4yfwaJVKhjckS+Ut6N+iVZGXWuxYFbtCW0g8TIJG8s1QPZh87Imrxu9aI/7ajoK4bR0n0=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3069.namprd11.prod.outlook.com (2603:10b6:805:d5::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.22; Fri, 17 Jul
 2020 23:20:55 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bda3:d65a:f390:f875]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bda3:d65a:f390:f875%7]) with mapi id 15.20.3174.025; Fri, 17 Jul 2020
 23:20:55 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: add support for PTP external
 synchronization clock
Thread-Index: AQHWW2us0pwkjCkJzECfuprR1hlt16kMav4A
Date: Fri, 17 Jul 2020 23:20:55 +0000
Message-ID: <1ad46857df3e932b2e28256a62f7ad32ae03da23.camel@intel.com>
References: <20200716122107.13703-1-piotr.kwapulinski@intel.com>
In-Reply-To: <20200716122107.13703-1-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4802c772-1549-4fbb-8dfa-08d82aa80e5e
x-ms-traffictypediagnostic: SN6PR11MB3069:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB306995DC4B384F70BD13FEA1C67C0@SN6PR11MB3069.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8Gvmq16JH6XlxUNvgpgO/OI54lZeOHmVd2nJBBmaaUycFFKvDgK/I7uyzhI3UEtoL3fnzAa+HE5sSfszjWd4mO163Hpa2ariTVeAcyNtYw+LVIw0ZBTKRz/ZPbTfOtvLebGyAzmpMf/63OY/Ca0pJpP3bPYi/uO/IhbZ3P3PDWS19BEf8GF0SXTah0VNZ9QxnxPQ3UW2jA6kLC8RIkj3w6kkgBunniArr2kIkL91VFhSTVs9gtnSDdjwsjtBZ+Px53iSxXALVNPPpDirksvsT0Zny+oD2014zzg75H88gYFWEJrCcVurl19sVjSxbgBUlTAvz8K1GiQhFMX0I8Nkr9VkJm3qBx2ohOAlYFhXgF8a+ZoZZ++89YDrqMbyCkwl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(136003)(39860400002)(366004)(376002)(36756003)(478600001)(30864003)(66476007)(2906002)(66556008)(316002)(71200400001)(64756008)(2616005)(6512007)(6506007)(110136005)(66446008)(86362001)(76116006)(26005)(6636002)(186003)(6486002)(5660300002)(66946007)(8936002)(8676002)(91956017)(83380400001)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: QeBC7pyTYMhk232VuryEueD2FdWRlNp5KYhhDC/ANv08TCvEB700wG+cty38ro1hBj901J7WJnCKu/kAaQxd6UC5cOs/4gLRspxI1FwesLouB2WF5ZBwOxK8tnGInBlyIWetjwMzD3aYeEihooTkT+zOER0CYKLojGFVepvhNtIkrPZ5oWTOngP9l7hkaLnDSYdibyXJvetqZxlLixeQcpOMfA4qDTl1csi3ouxQV5o3JE5NbMxpK0xl85MrEYAWxknyOGsBMWQc2PcTor53PNosrIsJl0w7x+DaFklGIi8rbXIf4NN0NgDWjEsVSLNB/4uGl3kC53E+mN5YjExlrWNpKpWEflxiccZ5J5Rnrs4n3VVW2Xu0yo7p0una2KrI3Xfjdot6fyxI1gmVjpwVHz35ATG9QmG/cv670bvG45QbWvBwmbHwPaCsFeA4BNLHHD/JpJp1WJEj3XAGm03ZGDCMn1RLpeEq1Oe5dnTujadnXgwXoLW7W2fl5r+QS9qq
Content-ID: <3C870E5C99149B419C36A0D73EED1809@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4802c772-1549-4fbb-8dfa-08d82aa80e5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2020 23:20:55.5326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a9lCI6NBHkAuyUrZ+vfYm+zUvSkqIHrTGopbRWRtDSUus3s2cDUM3uQHArRHsWgV3v6ATroA4TMRUJW3W5G+WToL0WWEve+jlP6g3xQ1Lbw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3069
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: add support for PTP external
 synchronization clock
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

On Thu, 2020-07-16 at 14:21 +0200, Piotr Kwapulinski wrote:
> Add support for external synchronization clock via GPIOs.
> 1PPS signals are handled via the dedicated 3 GPIOs: SDP3_2,
> SDP3_3 and GPIO_4.
> Previously it was not possible to use the external PTP
> synchronization clock.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

This doesn't apply, can you update to one that applies to dev-queue.

> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  74 ++
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  18 +-
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c    | 747
> +++++++++++++++++-
>  .../net/ethernet/intel/i40e/i40e_register.h   |   2 +
>  4 files changed, 821 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index e95b8da..639b913 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -206,6 +206,11 @@ enum i40e_fd_stat_idx {
>  #define I40E_FD_ATR_TUNNEL_STAT_IDX(pf_id) \
>  			(I40E_FD_STAT_PF_IDX(pf_id) +
> I40E_FD_STAT_ATR_TUNNEL)
>  
> +/* get PTP pins for ioctl */
> +#define SIOCGPINS	(SIOCDEVPRIVATE + 0)
> +/* set PTP pins for ioctl */
> +#define SIOCSPINS	(SIOCDEVPRIVATE + 1)
> +
>  /* The following structure contains the data parsed from the user-
> defined
>   * field of the ethtool_rx_flow_spec structure.
>   */
> @@ -437,6 +442,8 @@ struct i40e_channel {
>  	struct i40e_vsi *parent_vsi;
>  };
>  
> +struct i40e_ptp_pins_settings;
> +
>  static inline bool i40e_is_channel_macvlan(struct i40e_channel *ch)
>  {
>  	return !!ch->fwd;
> @@ -625,12 +632,72 @@ struct i40e_pf {
>  
>  	struct i40e_filter_control_settings filter_settings;
>  
> +/* GPIO defines used by PTP */
> +#define I40E_SDP3_2			18
> +#define I40E_SDP3_3			19
> +#define I40E_GPIO_4			20
> +#define I40E_LED2_0			26
> +#define I40E_LED2_1			27
> +#define I40E_LED3_0			28
> +#define I40E_LED3_1			29
> +#define I40E_GLGEN_GPIO_SET_SDP_DATA_HI \
> +	(1 << I40E_GLGEN_GPIO_SET_SDP_DATA_SHIFT)
> +#define I40E_GLGEN_GPIO_SET_DRV_SDP_DATA \
> +	(1 << I40E_GLGEN_GPIO_SET_DRIVE_SDP_SHIFT)
> +#define I40E_GLGEN_GPIO_CTL_PRT_NUM_0 \
> +	(0 << I40E_GLGEN_GPIO_CTL_PRT_NUM_SHIFT)
> +#define I40E_GLGEN_GPIO_CTL_PRT_NUM_1 \
> +	(1 << I40E_GLGEN_GPIO_CTL_PRT_NUM_SHIFT)
> +#define I40E_GLGEN_GPIO_CTL_RESERVED	BIT(2)
> +#define I40E_GLGEN_GPIO_CTL_DIR_OUT \
> +	(1 << I40E_GLGEN_GPIO_CTL_PIN_DIR_SHIFT)
> +#define I40E_GLGEN_GPIO_CTL_TRI_DRV_HI \
> +	(1 << I40E_GLGEN_GPIO_CTL_TRI_CTL_SHIFT)
> +#define I40E_GLGEN_GPIO_CTL_OUT_HI_RST \
> +	(1 << I40E_GLGEN_GPIO_CTL_OUT_CTL_SHIFT)
> +#define I40E_GLGEN_GPIO_CTL_TIMESYNC_0 \
> +	(3 << I40E_GLGEN_GPIO_CTL_PIN_FUNC_SHIFT)
> +#define I40E_GLGEN_GPIO_CTL_TIMESYNC_1 \
> +	(4 << I40E_GLGEN_GPIO_CTL_PIN_FUNC_SHIFT)
> +#define I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN \
> +	(0x3F << I40E_GLGEN_GPIO_CTL_PHY_PIN_NAME_SHIFT)
> +#define I40E_GLGEN_GPIO_CTL_PORT_0_IN_TIMESYNC_0 \
> +	(I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN | \
> +	 I40E_GLGEN_GPIO_CTL_TIMESYNC_0 | \
> +	 I40E_GLGEN_GPIO_CTL_RESERVED | I40E_GLGEN_GPIO_CTL_PRT_NUM_0)
> +#define I40E_GLGEN_GPIO_CTL_PORT_1_IN_TIMESYNC_0 \
> +	(I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN | \
> +	 I40E_GLGEN_GPIO_CTL_TIMESYNC_0 | \
> +	 I40E_GLGEN_GPIO_CTL_RESERVED | I40E_GLGEN_GPIO_CTL_PRT_NUM_1)
> +#define I40E_GLGEN_GPIO_CTL_PORT_0_OUT_TIMESYNC_1 \
> +	(I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN | \
> +	 I40E_GLGEN_GPIO_CTL_TIMESYNC_1 |
> I40E_GLGEN_GPIO_CTL_OUT_HI_RST | \
> +	 I40E_GLGEN_GPIO_CTL_TRI_DRV_HI | I40E_GLGEN_GPIO_CTL_DIR_OUT |
> \
> +	 I40E_GLGEN_GPIO_CTL_RESERVED | I40E_GLGEN_GPIO_CTL_PRT_NUM_0)
> +#define I40E_GLGEN_GPIO_CTL_PORT_1_OUT_TIMESYNC_1 \
> +	(I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN | \
> +	 I40E_GLGEN_GPIO_CTL_TIMESYNC_1 |
> I40E_GLGEN_GPIO_CTL_OUT_HI_RST | \
> +	 I40E_GLGEN_GPIO_CTL_TRI_DRV_HI | I40E_GLGEN_GPIO_CTL_DIR_OUT |
> \
> +	 I40E_GLGEN_GPIO_CTL_RESERVED | I40E_GLGEN_GPIO_CTL_PRT_NUM_1)
> +#define I40E_PRTTSYN_AUX_1_INSTNT \
> +	(1 << I40E_PRTTSYN_AUX_1_INSTNT_SHIFT)
> +#define I40E_PRTTSYN_AUX_0_OUT_ENABLE \
> +	(1 << I40E_PRTTSYN_AUX_0_OUT_ENA_SHIFT)
> +#define I40E_PRTTSYN_AUX_0_OUT_CLK_MOD	(3 <<
> I40E_PRTTSYN_AUX_0_OUTMOD_SHIFT)
> +#define I40E_PRTTSYN_AUX_0_OUT_ENABLE_CLK_MOD \
> +	(I40E_PRTTSYN_AUX_0_OUT_ENABLE |
> I40E_PRTTSYN_AUX_0_OUT_CLK_MOD)
> +#define I40E_PTP_HALF_SECOND		500000000LL /* nano seconds */
> +#define I40E_PTP_2_SEC_DELAY		2
> +
>  	struct ptp_clock *ptp_clock;
>  	struct ptp_clock_info ptp_caps;
>  	struct sk_buff *ptp_tx_skb;
>  	unsigned long ptp_tx_start;
>  	struct hwtstamp_config tstamp_config;
>  	struct timespec64 ptp_prev_hw_time;
> +	struct work_struct ptp_pps_work;
> +	struct work_struct ptp_extts0_work;
> +	struct work_struct ptp_extts1_work;
>  	ktime_t ptp_reset_start;
>  	struct mutex tmreg_lock; /* Used to protect the SYSTIME
> registers. */
>  	u32 ptp_adj_mult;
> @@ -638,10 +705,14 @@ struct i40e_pf {
>  	u32 tx_hwtstamp_skipped;
>  	u32 rx_hwtstamp_cleared;
>  	u32 latch_event_flags;
> +	u64 ptp_pps_start;
> +	u32 pps_delay;
>  	spinlock_t ptp_rx_lock; /* Used to protect Rx timestamp
> registers. */
> +	struct ptp_pin_desc ptp_pin[3];
>  	unsigned long latch_events[4];
>  	bool ptp_tx;
>  	bool ptp_rx;
> +	struct i40e_ptp_pins_settings *ptp_pins;
>  	u16 rss_table_size; /* HW RSS table size */
>  	u32 max_bw;
>  	u32 min_bw;
> @@ -1138,10 +1209,13 @@ void i40e_ptp_rx_hwtstamp(struct i40e_pf *pf,
> struct sk_buff *skb, u8 index);
>  void i40e_ptp_set_increment(struct i40e_pf *pf);
>  int i40e_ptp_set_ts_config(struct i40e_pf *pf, struct ifreq *ifr);
>  int i40e_ptp_get_ts_config(struct i40e_pf *pf, struct ifreq *ifr);
> +int i40e_ptp_set_pins_ioctl(struct i40e_pf *pf, struct ifreq *ifr);
> +int i40e_ptp_get_pins(struct i40e_pf *pf, struct ifreq *ifr);
>  void i40e_ptp_save_hw_time(struct i40e_pf *pf);
>  void i40e_ptp_restore_hw_time(struct i40e_pf *pf);
>  void i40e_ptp_init(struct i40e_pf *pf);
>  void i40e_ptp_stop(struct i40e_pf *pf);
> +int i40e_ptp_alloc_pins(struct i40e_pf *pf);
>  int i40e_is_vsi_uplink_mode_veb(struct i40e_vsi *vsi);
>  i40e_status i40e_get_partition_bw_setting(struct i40e_pf *pf);
>  i40e_status i40e_set_partition_bw_setting(struct i40e_pf *pf);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 56ecd6c..2a9251e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -2679,7 +2679,15 @@ int i40e_ioctl(struct net_device *netdev,
> struct ifreq *ifr, int cmd)
>  	case SIOCGHWTSTAMP:
>  		return i40e_ptp_get_ts_config(pf, ifr);
>  	case SIOCSHWTSTAMP:
> +		if (!capable(CAP_SYS_ADMIN))
> +			return -EACCES;
>  		return i40e_ptp_set_ts_config(pf, ifr);
> +	case SIOCSPINS:
> +		if (!capable(CAP_SYS_ADMIN))
> +			return -EACCES;
> +		return i40e_ptp_set_pins_ioctl(pf, ifr);
> +	case SIOCGPINS:
> +		return i40e_ptp_get_pins(pf, ifr);
>  	default:
>  		return -EOPNOTSUPP;
>  	}
> @@ -4028,10 +4036,13 @@ static irqreturn_t i40e_intr(int irq, void
> *data)
>  	if (icr0 & I40E_PFINT_ICR0_TIMESYNC_MASK) {
>  		u32 prttsyn_stat = rd32(hw, I40E_PRTTSYN_STAT_0);
>  
> -		if (prttsyn_stat & I40E_PRTTSYN_STAT_0_TXTIME_MASK) {
> -			icr0 &= ~I40E_PFINT_ICR0_ENA_TIMESYNC_MASK;
> +		if (prttsyn_stat & I40E_PRTTSYN_STAT_0_EVENT0_MASK)
> +			schedule_work(&pf->ptp_extts0_work);
> +
> +		if (prttsyn_stat & I40E_PRTTSYN_STAT_0_TXTIME_MASK)
>  			i40e_ptp_tx_hwtstamp(pf);
> -		}
> +
> +		icr0 &= ~I40E_PFINT_ICR0_ENA_TIMESYNC_MASK;
>  	}
>  
>  	/* If a critical error is pending we have no choice but to
> reset the
> @@ -15007,6 +15018,7 @@ static int i40e_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>  	if (is_valid_ether_addr(hw->mac.port_addr))
>  		pf->hw_features |= I40E_HW_PORT_ID_VALID;
>  
> +	i40e_ptp_alloc_pins(pf);
>  	pci_set_drvdata(pdev, pf);
>  	pci_save_state(pdev);
>  
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> index 9bf1ad4..ae14822 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> @@ -3,6 +3,7 @@
>  
>  #include "i40e.h"
>  #include <linux/ptp_classify.h>
> +#include <linux/posix-clock.h>
>  
>  /* The XL710 timesync is very much like Intel's 82599 design when it
> comes to
>   * the fundamental clock design. However, the clock operations are
> much simpler
> @@ -19,10 +20,229 @@
>  #define I40E_PTP_40GB_INCVAL		0x0199999999ULL
>  #define I40E_PTP_10GB_INCVAL_MULT	2
>  #define I40E_PTP_1GB_INCVAL_MULT	20
> +#define I40E_ISGN			0x80000000
>  
>  #define
> I40E_PRTTSYN_CTL1_TSYNTYPE_V1  BIT(I40E_PRTTSYN_CTL1_TSYNTYPE_SHIFT)
>  #define I40E_PRTTSYN_CTL1_TSYNTYPE_V2  (2 << \
>  					I40E_PRTTSYN_CTL1_TSYNTYPE_SHIF
> T)
> +#define I40E_SUBDEV_ID_25G_PTP_PIN	0xB
> +#define to_dev(obj) container_of(obj, struct device, kobj)
> +
> +enum i40e_ptp_pin {
> +	SDP3_2 = 0,
> +	SDP3_3,
> +	GPIO_4
> +};
> +
> +static struct ptp_pin_desc sdp_desc[] = {
> +	/* name     idx      func      chan */
> +	{"SDP3_2", SDP3_2, PTP_PF_NONE, 0},
> +	{"SDP3_3", SDP3_3, PTP_PF_NONE, 1},
> +	{"GPIO_4", GPIO_4, PTP_PF_NONE, 1},
> +};
> +
> +enum i40e_ptp_gpio_pin_state {
> +	end = -2,
> +	invalid,
> +	off,
> +	in_A,
> +	in_B,
> +	out_A,
> +	out_B,
> +};
> +
> +static const char * const i40e_ptp_gpio_pin_state2str[] = {
> +	"off", "in_A", "in_B", "out_A", "out_B"
> +};
> +
> +enum i40e_ptp_led_pin_state {
> +	low = 0,
> +	high,
> +};
> +
> +struct i40e_ptp_pins_settings {
> +	enum i40e_ptp_gpio_pin_state sdp3_2;
> +	enum i40e_ptp_gpio_pin_state sdp3_3;
> +	enum i40e_ptp_gpio_pin_state gpio_4;
> +	enum i40e_ptp_led_pin_state led2_0;
> +	enum i40e_ptp_led_pin_state led2_1;
> +	enum i40e_ptp_led_pin_state led3_0;
> +	enum i40e_ptp_led_pin_state led3_1;
> +};
> +
> +static const struct i40e_ptp_pins_settings
> +	i40e_ptp_pin_led_allowed_states[] = {
> +	{off,	off,	off,		high,	high,	high,	high}
> ,
> +	{off,	in_A,	off,		high,	high,	high,	low},
> +	{off,	out_A,	off,		high,	low,	high,	high}
> ,
> +	{off,	in_B,	off,		high,	high,	high,	low},
> +	{off,	out_B,	off,		high,	low,	high,	high}
> ,
> +	{in_A,	off,	off,		high,	high,	high,	low},
> +	{in_A,	in_B,	off,		high,	high,	high,	low},
> +	{in_A,	out_B,	off,		high,	low,	high,	high}
> ,
> +	{out_A,	off,	off,		high,	low,	high,	high}
> ,
> +	{out_A,	in_B,	off,		high,	low,	high,	high}
> ,
> +	{in_B,	off,	off,		high,	high,	high,	low},
> +	{in_B,	in_A,	off,		high,	high,	high,	low},
> +	{in_B,	out_A,	off,		high,	low,	high,	high}
> ,
> +	{out_B,	off,	off,		high,	low,	high,	high}
> ,
> +	{out_B,	in_A,	off,		high,	low,	high,	high}
> ,
> +	{off,	off,	in_A,		high,	high,	low,	high}
> ,
> +	{off,	out_A,	in_A,		high,	low,	low,	high}
> ,
> +	{off,	in_B,	in_A,		high,	high,	low,	low},
> +	{off,	out_B,	in_A,		high,	low,	low,	high}
> ,
> +	{out_A,	off,	in_A,		high,	low,	low,	high}
> ,
> +	{out_A,	in_B,	in_A,		high,	low,	low,	high}
> ,
> +	{in_B,	off,	in_A,		high,	high,	low,	low},
> +	{in_B,	out_A,	in_A,		high,	low,	low,	high}
> ,
> +	{out_B,	off,	in_A,		high,	low,	low,	high}
> ,
> +	{off,	off,	out_A,		low,	high,	high,	high}
> ,
> +	{off,	in_A,	out_A,		low,	high,	high,	low},
> +	{off,	in_B,	out_A,		low,	high,	high,	low},
> +	{off,	out_B,	out_A,		low,	low,	high,	high}
> ,
> +	{in_A,	off,	out_A,		low,	high,	high,	low},
> +	{in_A,	in_B,	out_A,		low,	high,	high,	low},
> +	{in_A,	out_B,	out_A,		low,	low,	high,	high}
> ,
> +	{in_B,	off,	out_A,		low,	high,	high,	low},
> +	{in_B,	in_A,	out_A,		low,	high,	high,	low},
> +	{out_B,	off,	out_A,		low,	low,	high,	high}
> ,
> +	{out_B,	in_A,	out_A,		low,	low,	high,	high}
> ,
> +	{off,	off,	in_B,		high,	high,	low,	high}
> ,
> +	{off,	in_A,	in_B,		high,	high,	low,	low},
> +	{off,	out_A,	in_B,		high,	low,	low,	high}
> ,
> +	{off,	out_B,	in_B,		high,	low,	low,	high}
> ,
> +	{in_A,	off,	in_B,		high,	high,	low,	low},
> +	{in_A,	out_B,	in_B,		high,	low,	low,	high}
> ,
> +	{out_A,	off,	in_B,		high,	low,	low,	high}
> ,
> +	{out_B,	off,	in_B,		high,	low,	low,	high}
> ,
> +	{out_B,	in_A,	in_B,		high,	low,	low,	high}
> ,
> +	{off,	off,	out_B,		low,	high,	high,	high}
> ,
> +	{off,	in_A,	out_B,		low,	high,	high,	low},
> +	{off,	out_A,	out_B,		low,	low,	high,	high}
> ,
> +	{off,	in_B,	out_B,		low,	high,	high,	low},
> +	{in_A,	off,	out_B,		low,	high,	high,	low},
> +	{in_A,	in_B,	out_B,		low,	high,	high,	low},
> +	{out_A,	off,	out_B,		low,	low,	high,	high}
> ,
> +	{out_A,	in_B,	out_B,		low,	low,	high,	high}
> ,
> +	{in_B,	off,	out_B,		low,	high,	high,	low},
> +	{in_B,	in_A,	out_B,		low,	high,	high,	low},
> +	{in_B,	out_A,	out_B,		low,	low,	high,	high}
> ,
> +	{end,	end,	end,		end,	end,	end,	end}
> +};
> +
> +static int i40e_ptp_set_pins(struct i40e_pf *pf,
> +			     struct i40e_ptp_pins_settings *pins);
> +
> +/**
> + * i40e_ptp_extts0_work - workqueue task function
> + * @work: workqueue task structure
> + *
> + * Service for PTP external clock event
> + **/
> +static void i40e_ptp_extts0_work(struct work_struct *work)
> +{
> +	struct i40e_pf *pf = container_of(work, struct i40e_pf,
> +					  ptp_extts0_work);
> +	struct i40e_hw *hw = &pf->hw;
> +	struct ptp_clock_event event;
> +	u32 hi, lo;
> +
> +	/* Event time is captured by one of the two matched registers
> +	 *      PRTTSYN_EVNT_L: 32 LSB of sampled time event
> +	 *      PRTTSYN_EVNT_H: 32 MSB of sampled time event
> +	 * Event is defined in PRTTSYN_EVNT_0 register
> +	 */
> +	lo = rd32(hw, I40E_PRTTSYN_EVNT_L(0));
> +	hi = rd32(hw, I40E_PRTTSYN_EVNT_H(0));
> +
> +	event.timestamp = (((u64)hi) << 32) | lo;
> +
> +	event.type = PTP_CLOCK_EXTTS;
> +	event.index = 0;
> +
> +	/* fire event */
> +	ptp_clock_event(pf->ptp_clock, &event);
> +}
> +
> +/**
> + * i40e_is_ptp_pin_dev - check if device supports PTP pins
> + * @hw: pointer to the hardware structure
> + *
> + * Return true if device supports PTP pins, false otherwise.
> + **/
> +static bool i40e_is_ptp_pin_dev(struct i40e_hw *hw)
> +{
> +	return hw->device_id == I40E_DEV_ID_25G_SFP28 &&
> +	       hw->subsystem_device_id == I40E_SUBDEV_ID_25G_PTP_PIN;
> +}
> +
> +/**
> + * i40e_can_do_pins - check possibility of manipulating the pins
> + * @pf: board private structure
> + *
> + * Check if all conditions are satisfied to manipulate PTP pins.
> + * Return true if pins can be manipulated or false otherwise.
> + **/
> +static bool i40e_can_do_pins(struct i40e_pf *pf)
> +{
> +	if (!i40e_is_ptp_pin_dev(&pf->hw)) {
> +		dev_warn(&pf->pdev->dev,
> +			 "PTP external clock not supported.\n");
> +		return false;
> +	}
> +
> +	if (!pf->ptp_pins || pf->hw.pf_id) {
> +		dev_warn(&pf->pdev->dev,
> +			 "PTP PIN reading allowed for PF0 only.\n");
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
> +/**
> + * i40_ptp_reset_timing_events - Reset PTP timing events
> + * @pf: Board private structure
> + *
> + * This function resets timing events for pf.
> + **/
> +static void i40_ptp_reset_timing_events(struct i40e_pf *pf)
> +{
> +	u32 i;
> +
> +	spin_lock_bh(&pf->ptp_rx_lock);
> +	for (i = 0; i <= I40E_PRTTSYN_RXTIME_L_MAX_INDEX; i++) {
> +		/* reading and automatically clearing timing events
> registers */
> +		rd32(&pf->hw, I40E_PRTTSYN_RXTIME_L(i));
> +		rd32(&pf->hw, I40E_PRTTSYN_RXTIME_H(i));
> +		pf->latch_events[i] = 0;
> +	}
> +	/* reading and automatically clearing timing events registers
> */
> +	rd32(&pf->hw, I40E_PRTTSYN_TXTIME_L);
> +	rd32(&pf->hw, I40E_PRTTSYN_TXTIME_H);
> +
> +	pf->tx_hwtstamp_timeouts = 0;
> +	pf->tx_hwtstamp_skipped = 0;
> +	pf->rx_hwtstamp_cleared = 0;
> +	pf->latch_event_flags = 0;
> +	spin_unlock_bh(&pf->ptp_rx_lock);
> +}
> +
> +/** i40e_ptp_verify - check pins
> + * @ptp: ptp clock
> + * @pin: pin index
> + * @func: assigned function
> + * @chan: channel
> + *
> + * Check pins consistency.
> + * Return 0 on success or error on failure.
> + **/
> +static int i40e_ptp_verify(struct ptp_clock_info *ptp, unsigned int
> pin,
> +			   enum ptp_pin_function func, unsigned int
> chan)
> +{
> +	/* TODO: implement pin checking */
> +	return 0;
> +}
>  
>  /**
>   * i40e_ptp_read - Read the PHC time from the device
> @@ -135,6 +355,37 @@ static int i40e_ptp_adjfreq(struct
> ptp_clock_info *ptp, s32 ppb)
>  	return 0;
>  }
>  
> +/**
> + * i40e_ptp_set_1pps_signal_hw - configure 1PPS PTP signal for pins
> + * @pf: the PF private data structure
> + *
> + * Configure 1PPS signal used for PTP pins
> + **/
> +static void i40e_ptp_set_1pps_signal_hw(struct i40e_pf *pf)
> +{
> +	struct i40e_hw *hw = &pf->hw;
> +	struct timespec64 now;
> +	u64 ns;
> +
> +	wr32(hw, I40E_PRTTSYN_AUX_0(1), 0);
> +	wr32(hw, I40E_PRTTSYN_AUX_1(1), I40E_PRTTSYN_AUX_1_INSTNT);
> +	wr32(hw, I40E_PRTTSYN_AUX_0(1), I40E_PRTTSYN_AUX_0_OUT_ENABLE);
> +
> +	i40e_ptp_read(pf, &now, NULL);
> +	now.tv_sec += I40E_PTP_2_SEC_DELAY;
> +	now.tv_nsec = 0;
> +	ns = timespec64_to_ns(&now);
> +
> +	/* I40E_PRTTSYN_TGT_L(1) */
> +	wr32(hw, I40E_PRTTSYN_TGT_L(1), ns & 0xFFFFFFFF);
> +	/* I40E_PRTTSYN_TGT_H(1) */
> +	wr32(hw, I40E_PRTTSYN_TGT_H(1), ns >> 32);
> +	wr32(hw, I40E_PRTTSYN_CLKO(1), I40E_PTP_HALF_SECOND);
> +	wr32(hw, I40E_PRTTSYN_AUX_1(1), I40E_PRTTSYN_AUX_1_INSTNT);
> +	wr32(hw, I40E_PRTTSYN_AUX_0(1),
> +	     I40E_PRTTSYN_AUX_0_OUT_ENABLE_CLK_MOD);
> +}
> +
>  /**
>   * i40e_ptp_adjtime - Adjust the PHC time
>   * @ptp: The PTP clock structure
> @@ -145,14 +396,35 @@ static int i40e_ptp_adjfreq(struct
> ptp_clock_info *ptp, s32 ppb)
>  static int i40e_ptp_adjtime(struct ptp_clock_info *ptp, s64 delta)
>  {
>  	struct i40e_pf *pf = container_of(ptp, struct i40e_pf,
> ptp_caps);
> -	struct timespec64 now, then;
> +	struct i40e_hw *hw = &pf->hw;
>  
> -	then = ns_to_timespec64(delta);
>  	mutex_lock(&pf->tmreg_lock);
>  
> -	i40e_ptp_read(pf, &now, NULL);
> -	now = timespec64_add(now, then);
> -	i40e_ptp_write(pf, (const struct timespec64 *)&now);
> +	if (delta > -999999900LL && delta < 999999900LL) {
> +		int neg_adj = 0;
> +		u32 timadj;
> +		u64 tohw;
> +
> +		if (delta < 0) {
> +			neg_adj = 1;
> +			tohw = -delta;
> +		} else {
> +			tohw = delta;
> +		}
> +
> +		timadj = tohw & 0x3FFFFFFF;
> +		if (neg_adj)
> +			timadj |= I40E_ISGN;
> +		wr32(hw, I40E_PRTTSYN_ADJ, timadj);
> +	} else {
> +		struct timespec64 then, now;
> +
> +		then = ns_to_timespec64(delta);
> +		i40e_ptp_read(pf, &now, NULL);
> +		now = timespec64_add(now, then);
> +		i40e_ptp_write(pf, (const struct timespec64 *)&now);
> +		i40e_ptp_set_1pps_signal_hw(pf);
> +	}
>  
>  	mutex_unlock(&pf->tmreg_lock);
>  
> @@ -183,7 +455,7 @@ static int i40e_ptp_gettimex(struct
> ptp_clock_info *ptp, struct timespec64 *ts,
>  /**
>   * i40e_ptp_settime - Set the time of the PHC
>   * @ptp: The PTP clock structure
> - * @ts: timespec structure that holds the new time value
> + * @ts: timespec64 structure that holds the new time value
>   *
>   * Set the device clock to the user input value. The conversion from
> timespec
>   * to ns happens in the write function.
> @@ -200,19 +472,141 @@ static int i40e_ptp_settime(struct
> ptp_clock_info *ptp,
>  	return 0;
>  }
>  
> +
> +/** i40e_pps_configure - configure PPS events

Extra newline and format is not correct.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
