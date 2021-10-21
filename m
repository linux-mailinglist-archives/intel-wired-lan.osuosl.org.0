Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD98435D3C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 10:45:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F23383ABA;
	Thu, 21 Oct 2021 08:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QWe6tdUHKp3f; Thu, 21 Oct 2021 08:45:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6ABB483AA4;
	Thu, 21 Oct 2021 08:45:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25B271BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2107F60D61
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XNZ0TGEP-b9W for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 08:45:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FED3606BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:45:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="292443979"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="292443979"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 01:45:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="463544692"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 21 Oct 2021 01:45:24 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:45:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 01:45:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 01:45:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WamtaSiIQI6ueLMMSNSfVy6NSOHg1J+8Ra0Md+jpB4dwTo0njXqpciFEihWe53FGf46hBBAIgBKhJK7/zR0W7j2ltOE0QHFba0pFM0o7VII/a8FTxyvzQ7qxDD7b61SDMDWJeGXAddSeT+G5xXcVUBbl7tDzmSD2AHNGOJmqNfybIkuBFRwH8PG1YpKffLjp5cL7iwTZTX81RT3eHTo1MH6byLNvGfEDdFEC0VO3r7cQMmJrdhvN5ltAkXdhaGn+wVeSjNdzblCGYQD0yHX14prTMkXcIIBvs+LvCdAKASzX8lR3b5OoJgX8TCF1eIHgV8th6TMCQ07NNuqBh398uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SjmKg7TPqPO1od9xUk5R2PqF/9Pj60XkO55WXrz3YLs=;
 b=d+dng7pXv9GmwqbJ8H5ghEvRNDV1KuKijVTFvY7BfFWi9pYf6VOCiQu4jTYihaLX9pkLLXpXuq1PpP2RksUxnRkmXN4Aa5VZJfpWfPjXhOqJYT5k7+35G9XavqYTAgIEp3zQscGxLOAzbWgIY8MvGq+sSsuVCjynDYFxqddW65PrAl8ObMZH/MGF6ol7cThetNBFI9JG1NLb/P7JhHcLL63GNju6wVkOmoN6vAu193Bb/9shQLbqAlfieUVslfgoNOvzAp04YMgGXgX/iHSQndjWKO0WO9fBl5erbkGudwhdxj7DgFYUJuZl4UtpVGQehv54qyo/fwxpSdFXrAmgkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SjmKg7TPqPO1od9xUk5R2PqF/9Pj60XkO55WXrz3YLs=;
 b=IN/yFsxfBZTD50GBMSc/l7OkfY4PzdEdAb0qUdT2+nSycC9nNf7uZ2AYuOsaostLCm6TcWBOJIbiY2qa31kpFoiM+nJNNPSOsb1aCV11WbcnZuT7yrlhEhPzLwy8jfpXpTSrZ3OBH/eRr1kVLo3l0niX22CFszoD5Gm4lpeH31g=
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by BL0PR11MB2899.namprd11.prod.outlook.com (2603:10b6:208:7b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Thu, 21 Oct
 2021 08:45:22 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70%5]) with mapi id 15.20.4628.016; Thu, 21 Oct 2021
 08:45:22 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v3 7/9] ice: ensure the
 hardware Clock Generation Unit is configured
Thread-Index: AQHXv7Db6ew+30FWjUCnNvmP7KElTavdMGIw
Date: Thu, 21 Oct 2021 08:45:22 +0000
Message-ID: <BL0PR11MB33633931A75FA0D27753542CFCBF9@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20211012213230.2684338-1-jacob.e.keller@intel.com>
 <20211012213230.2684338-8-jacob.e.keller@intel.com>
In-Reply-To: <20211012213230.2684338-8-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d8814d9-a7df-40a9-f523-08d9946f1ead
x-ms-traffictypediagnostic: BL0PR11MB2899:
x-microsoft-antispam-prvs: <BL0PR11MB28998F807089EA1CEE9859B2FCBF9@BL0PR11MB2899.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fyjSn5VPESEHrTqzKoXQVfQF6Movm2rGFXBY7cc3ImpzNKOvUsszGpmQDsWAFuLK1i5gyarGkVQD18Y8wQa0olRQRaMtJ6qgBrLddPHfTwfQeO47KzccUc/wxobyE8NXZ8Ab4EIp8tpkziO44zumD2+MaqfDC/HfFXu7vOquWHtKfkdlkEu9X5ubOEmWEGZ700SAuQ66y3yU/GRVCdk/qXrq9PbCztkfA6l/rZSThPio/us9bobRclA/oKGddSVmccyuRrEh5RyhCGAOMJKD9IQ2B2FknyjCKsPhmsd6rBHU5ZAIjce6XB1xSN8nlj7UjT6PnNZk+WzOiYEpPI0crKptI9ZLPG4tbImhXZFfkNzBYLSqO7hZs0TmVIqQLbTJJPo3MKs/Egt9YJDLA9+0hQzeIvFZh9YvcuzQH4gSWAZDNSdkboBJ45u8WpKdCrjR3vv8vKTzv+FQ5M8VN7C+Qzr7uOP4KMYpu3MZouG+AlbcTGAFOtkAgWRqAf/NMPHuW8sQQ6BuI+gCxe2AIS3fZB5yGyv3iNEu51ZUiLVNb348gFYf4+jLEnzjHwDgXzkaGvqteBTGFdk+Tl1g2/76JYug0bniQAHShx8DtrdQORQmMhJppl8pdQIx02Dk2fOU+TM9jEbMKjUWoTYc5m+ri/JJkvI1ug+rloxqwpl7h3v/cEviqyXcBFFLYpJAzviLUCHvYGUWKV7xXm79pvvvVA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(38100700002)(83380400001)(122000001)(4744005)(33656002)(66446008)(86362001)(71200400001)(66946007)(66476007)(64756008)(76116006)(66556008)(55016002)(8936002)(52536014)(9686003)(82960400001)(6506007)(7696005)(186003)(53546011)(316002)(26005)(5660300002)(110136005)(38070700005)(508600001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GU3bUV2tDMB6Yunf+UHCTa4HNJPdCwiy3DmDDRsmkgbloBqiSi/1QBYvfd7E?=
 =?us-ascii?Q?Iz28nvnqJC8IdEEYxEbRMcQPGiHtMCf3mol5AJaI39vUhZ9h8UUsLraZl+h0?=
 =?us-ascii?Q?P7O2hXmlBxBV+QUge8yRL4BATaNv5n+M+eoshkobIrSYC0WlGrazz4E5Yplw?=
 =?us-ascii?Q?jshEWVCNcdC7alFg13ULqlzPZjBGjHkFgGhYup/Oh8skOBLNzK19ZJlIfVY/?=
 =?us-ascii?Q?o60Bdwk03JRtMl2cS/Mwxz5HmNu76eY9DhqWIXrpxeYux1JHRRDWgSzUyL7k?=
 =?us-ascii?Q?Kl64k61lReL2j/Oosa6UQJXJKWzgeuS7HesCHIG+VPxB+dvKLWXvqBPLqfel?=
 =?us-ascii?Q?YwykEdSR5IMF/SR7YrHlS0CrgWAG8fsBUZORD+fenz0IMb24BSvxsr550JOi?=
 =?us-ascii?Q?WCNru2oSzXgo2LwS/JsSfmI1fGL6g+bvfeJfpuJ5hyyvL3fLIvbpLIPGisqj?=
 =?us-ascii?Q?b72ejE6D5ltElMvIlBzgrrUAUAVs/207pwfrTc3rm3vG23sMYlIOF9OgCmJj?=
 =?us-ascii?Q?eIWcQnpMCQkHB31WJw+4xWFq61GNbxLwBVpjDLnOuV/JgJjXfwPZb6hJIOQH?=
 =?us-ascii?Q?XlCI7My8RCFRSl5O9W224B4eVXH4GN1w+UNJD+hYAs2IhizV8k0z9hB1LCl5?=
 =?us-ascii?Q?bG4sLiZYQn/Ysi/AxEoHz0yzjEsEhhk4oMvY5LyqLwmTR6fOECO5zKhniwp3?=
 =?us-ascii?Q?GiZ77e6KDM7dFJS9ZcRn2hMURXaQuglF3/TPLYlNOzQbXZ9j2T1CWve59Q6m?=
 =?us-ascii?Q?eCJvlW82HnGFvwm8AKINB1zCpW7D3oaxZaDEEp3yoSRuXqCv1skkymRbg8+q?=
 =?us-ascii?Q?+up+4i01nBYIm3uAqocKSq6xLu+SOSDSV3/WB2nv0GB2AlIeWCwBtf2yikVA?=
 =?us-ascii?Q?uaOcjPl+uTOmTFkFzaVu8v+myXzrpZ+uuhbXuo3OC6w5YiYpywpth+JJjnhL?=
 =?us-ascii?Q?YXgQckpLJwl2aISczK5W6+7p1aJ6hShqdPhcPUCpBqin08G4k3Izrfa2pLEO?=
 =?us-ascii?Q?ZSVoE++aOrn3ljU+QQLtqLnGHQQNPGjaaCeSyTtC5rry2889N6Blv6aVv6Sb?=
 =?us-ascii?Q?BCLbPR8Z8NsgYRxDF1zxB5YdKCRgdymugBWMvPBBkf5OwoitIz36j/6duneP?=
 =?us-ascii?Q?b3ODwklkLpkrG4Ik91qxVu44r6Sx7zxZmIMecE+5rzkqVHGW3Fk8Mj1N8Dxa?=
 =?us-ascii?Q?RosndX9p7L+7/XH6m6C3vEwcmMGw2XPDag4aKXLHcjiKpOlPqlNxuaCQ/oXH?=
 =?us-ascii?Q?1KXRHW0Qtn/tupiTldWeV6pv2FDJOeboDIfQWPIm/iZ8yRXvPUwMUsTYH7JN?=
 =?us-ascii?Q?ZdnfpYAfSxCF71/t527Why0CXX1CVG477XBi9JtuZLNc07I/QOF6KadmH5tB?=
 =?us-ascii?Q?7Ux+e/Ib5wLxHojWwsNejkppU5jQt+wmu5XzUWnd/RXrnyAA8m99eA/E1BgH?=
 =?us-ascii?Q?p2KnJihP0iY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d8814d9-a7df-40a9-f523-08d9946f1ead
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 08:45:22.5154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gurucharanx.g@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2899
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v3 7/9] ice: ensure the
 hardware Clock Generation Unit is configured
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
> Jacob Keller
> Sent: Wednesday, October 13, 2021 3:02 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v3 7/9] ice: ensure the hardware
> Clock Generation Unit is configured
> 
> The E822 device has a Clock Generation Unit (CGU) responsible for determining
> the clock frequency that drives the timers.
> 
> Ensure this function is initialized when bringing up the PTP support, so that the
> clock has a known frequency.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_cgu_regs.h | 116 +++++++
>  .../net/ethernet/intel/ice/ice_ptp_consts.h   |  74 +++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 290 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  20 ++
>  4 files changed, 500 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_cgu_regs.h
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
