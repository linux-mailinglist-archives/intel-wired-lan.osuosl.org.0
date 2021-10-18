Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294314326E0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 20:52:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 822214046F;
	Mon, 18 Oct 2021 18:52:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Qt1M1ERE2KP; Mon, 18 Oct 2021 18:51:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 023F94021F;
	Mon, 18 Oct 2021 18:51:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0AD581BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 18:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ECC6660635
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 18:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FJKBMfZdHnJ6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 18:51:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A61C26062D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 18:51:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="228290498"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="228290498"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 11:51:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="526382740"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 18 Oct 2021 11:51:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 11:51:50 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 11:51:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 18 Oct 2021 11:51:50 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 18 Oct 2021 11:51:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KSnqglMn/t/Ld8K344Q55Aw7Az7whW9RroZS9lpqnHR8PWj+igy1bKT7eFF4uJCuK8JQPvqOeJAiuztH0EEksZV//YhC/3PvojGGZ9v+rJkMCH1hqAKf8W18zju62K8f8NGOIPRWlPEqTrccxId7Fw8eLO+qpKOz+rcvBO4lfW7iiHch6LarqSMzvVIoV1EV/0bihA8bB6xo2cd8ab1WrXSQGdyJDChSN9MfWm/FdmQjVwn3j7efrZ37ir2J48gVQW/a2mOrKJtlC5O9E2hdFFG/OKOUVCL11AIzGiVv0qAcgeOKKLlmb5s7JNPCxquQ3JSmVY82BeNkG9blbwgdJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=miRwjhtBcgATU9c9IytbIOgXAI2By0CE8TSTiuC5vRE=;
 b=ex/XjNfcD5XB5gusbH1IDH9IXXPfhtV79FSSb1bFLotWOpPD12RZRfRzZF6C1sKP5+TUNCe7o6noUmsVdbBbf+Xnl8uukXV7lKpD0PPKCD/0rc1A9NpKQ0CVwCXQXQlWdnnANMnoM8DmPZgACy2IwZs4d4tpm80xYGx45xECnS3oa+dijVe02KT/Db6QYoig5XFEP3zjp/YFOsosn//Jfdlnt+mtTds0TdJZFTwvYg/9vgWCmVns8qNgoul2Dt6WRZ+83GbXm8tTTEQNhzrdLBcPc5Fvx4bxOEJyn3Shdu0MaJUxuDErFAGESVGGNwiAzSViZfcxGItA5tm8/moNWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=miRwjhtBcgATU9c9IytbIOgXAI2By0CE8TSTiuC5vRE=;
 b=m40m1mDq+ilrxQ5NvC/1WISm05gE/+f0P/HC8EDKrAs4ggUi4qNQOjxnPaMQxYMm6/xBr/ED/wA+ALMLJLa2ACskZyapITVaXMNkc3R8Y/AzkWkEFZi/TiZnGf5iWofQlfGSfvbUXbEg7sBQkzieReptbBRzkc//Q5ik5zGiGCA=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5591.namprd11.prod.outlook.com (2603:10b6:8:38::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.16; Mon, 18 Oct 2021 18:51:48 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%7]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 18:51:48 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 2/3] iavf: Add
 __IAVF_INIT_FAILED state
Thread-Index: AQHXlNb2kOxX852FnUagCwWosmnJ1qvZeJDA
Date: Mon, 18 Oct 2021 18:51:48 +0000
Message-ID: <DM8PR11MB56210ACAC5C2F87364A4481BABBC9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210819084749.2553-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210819084749.2553-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 32003a03-b6f7-45a5-42dd-08d992685736
x-ms-traffictypediagnostic: DM8PR11MB5591:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM8PR11MB559144BC960940603A593007ABBC9@DM8PR11MB5591.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:260;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RctgB1CkBxnFnKWZsmuV5KOCrU0oC7+FFMBtlu+HIuYqallkF/GjqsK2DOMtyqMwgPiULsY2HR9lHMCJ7YizW1XeJUy38fzuEorlC5UlSeuZMzqpBbOuHvatLWBTxvEFlbI0kDx9xTWKLfhTj2lgYZA76T5GXKvDTEwCoqZ+93o3Z+J4Yhc75wS9afXxsbXbVJIdOA1ElCiDl2Xz9j0yGQKdPsRx9ijdbiCMEkxhCr41a41A4XcyqoWAYy5RFoEmOog7Lt2PfYZqcr2T6QH3LKQQPCXdzRJSl/oX03EoSniJ8IiCCRu6PZvxtH05+bZKWl9j/f8MCR1uo0ydfVMv6H1EYhevDH9EP9ROkn75Rpa9CWSqDE53jC7eUU6/I0PpanrA4QlkGsvxpy5OwtsSXS0lxpLywVkNf7omNUF/YXIu3eNpXvYvYFFBFzsyJohdsf8Omzu0c8f8DxqFlDQ+mL/UQEH2w3Az3drlq+I8HFkCXxNVDUQsZChyr+JhkawJzzBWgCNGSQ3YC6PB6W93BlpWXnM2PPoQP+iQfHT5+OC86hv5hBYKs+DnqMHC5gd+6AwkgVgIHcGh+8oyB87CQiFMFbomp+gcka7RirKRE+HgFDTx9vibdktxBOcLCLvj/6bO05aFlotzqx6kVZAo+ULC/35OFnTeQ6wF1F4vHXCaJKFI2usma8qp/UdQ6sKkxBL/Q84iffGnhUuXAlQYtA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(33656002)(2906002)(9686003)(5660300002)(508600001)(7696005)(107886003)(64756008)(54906003)(66446008)(66946007)(4326008)(8936002)(110136005)(66556008)(38100700002)(83380400001)(26005)(66476007)(316002)(71200400001)(186003)(52536014)(122000001)(55016002)(53546011)(38070700005)(76116006)(82960400001)(8676002)(86362001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?O1vmjNJMaZMKeHuOlGGEEmkVa+YdKQfugt7a/35Y/XlZvPC8CRfAA+OqHw7+?=
 =?us-ascii?Q?fbUmrp5vTF7Yo+VheqxJLre6ed9XBNT36SiGKRUN6NfD9ZAK+R+hmncxB/TY?=
 =?us-ascii?Q?CjHQHO79ExmjM3AgQlOo3gz2jJPYi07CSIB4C7ejls6PQ9hyeoUPZBAVgAHG?=
 =?us-ascii?Q?yNm9jziKKWJ7+0XDetq1dTZmZUe7nCiRCx2LxcBlnUJbr3PnqiK1Ov2rkZmU?=
 =?us-ascii?Q?ZgDsYmj3oiUUZZSv0YuaKEjDsZqGBi6MxJqj+m+Z0pUplRurj9c6fPrDl/dH?=
 =?us-ascii?Q?MXdX6Boy4+qvJjROC+/UvduiKO6btOBeTot2sOkwlYGUBfDMhLNHzksg1r9O?=
 =?us-ascii?Q?5YAEYEpjjWL3ryN2t1rLvQLOvyqMBqg0nbPOp3vXBQ6NJ3jgT+f+A5LoQUOh?=
 =?us-ascii?Q?WTuPqO3q6ej3btsh9UM+d2hX0MNGYFBS7W/jyB+pifF6FLTdAu2MnBfGoAVp?=
 =?us-ascii?Q?4LqHCmMLzWHzJloFNdPV//wR5YTv8Icx6Xhjm7qYutEoDaRi6IYEeUS0BWa0?=
 =?us-ascii?Q?z6MgD/lMgFSKxcAKhE7k5PNbpwmoeOp5qG3XFXU0xpS3TURtZCiOKwhOGnyZ?=
 =?us-ascii?Q?N408NHaszF4IHa9sjXuHJvrsXBZ7OVHfjauN1bPQjFjfXAJsaCYUXjhJBxFs?=
 =?us-ascii?Q?DQ9ZTV3l9+1NimKIFIA5+ym0YdALcFNRHxcDuxpOUCsAm33hz6to+etaZblC?=
 =?us-ascii?Q?RXqVFfTktjIivuFkiMW5nm3CuTeMIQl4AvjuIu+CPbSOTD4uB1PIgz8qamQK?=
 =?us-ascii?Q?2gJu8IjOHm6VgAqMrrT4aVQ+Wu6kr4AkRwtmSQAJ8ODiTQWzvsvJKiyp6mVl?=
 =?us-ascii?Q?Jg+xkdL36/8bvzHMgCm1cI9hbvRbyPH0rSrpKWVn3d6oRcSSDGTSuYojENr3?=
 =?us-ascii?Q?BPpSneQa1BfwzzfCQyZpgG7pq4qq2ip64kp39pM7BrQCm5HZRkG60jpSwykN?=
 =?us-ascii?Q?hxtYGVSoV9Go/PuaqhhSHjpFVvAvgdLDz3pI1DD+QuMigg1eltV0QTrXuKhg?=
 =?us-ascii?Q?/GsHW+2P0ceOGKbjsAm7T0/HwnZQRlMZ4Kmzycdvm2eTnWxixRroKP1XCPAP?=
 =?us-ascii?Q?yzUye6yfs4848eKlvVERFVsBQUOq5kQij6WqwzENV/QDrbSJqsSbiJlVO5FF?=
 =?us-ascii?Q?gEtvSNSXvP56iLzQEjFjYUsofe1Asb4KO0blObIdelHT8uM3s9JPT+w8x+oT?=
 =?us-ascii?Q?ZVYsxeOkfzzsYglwe5/kzSVJZmnq1j2i7P78acJgPNBNH36Csw8GywXuEvtH?=
 =?us-ascii?Q?UduCPchmdOVdLpLHm/XZDOOARJ5ii9vcPJ7Rt/3TTPjzL0RG2tfe46Yf5OTv?=
 =?us-ascii?Q?sDlxkOaupm620LX4RA4vd/c2?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32003a03-b6f7-45a5-42dd-08d992685736
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2021 18:51:48.6277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tIYeD2zGuaVuoRlA9q86EFakHd+DOOYG/iG+bpBGoiLtvyz+NPVCjAqJgqo1ZhLZa2zZ6BzpgELj5gPorOr9BaeHDcCn6S8nEODaxW0IaZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5591
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/3] iavf: Add
 __IAVF_INIT_FAILED state
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Pawlak,
 Jakub" <jakub.pawlak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: czwartek, 19 sierpnia 2021 10:48
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Pawlak, Jakub
> <jakub.pawlak@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v6 2/3] iavf: Add
> __IAVF_INIT_FAILED state
> 
> This commit adds a new state, __IAVF_INIT_FAILED to the state machine.
> From now on initialization functions report errors not by returning an error
> value, but by changing the state to indicate that something went wrong.
> 
> Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
> v6: Fixed that patch so that it applies on next-queue tree
> v5: Fixed the patch so that it applies on net-next tree
> v4: Removed unnecessary line
> v3: Added new file to patch series
> v2: Splitted the patch into 2 to make them smaller
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 35 ++++++++++++---------
>  2 files changed, 21 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 4f937cc..d7f8026 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -178,6 +178,7 @@ enum iavf_state_t {
>  	__IAVF_INIT_VERSION_CHECK,	/* aq msg sent, awaiting reply
> */
>  	__IAVF_INIT_GET_RESOURCES,	/* aq msg sent, awaiting reply
> */
>  	__IAVF_INIT_SW,		/* got resources, setting up structs */
> +	__IAVF_INIT_FAILED,	/* init failed, restarting procedure */
>  	__IAVF_RESETTING,		/* in reset */
>  	__IAVF_COMM_FAILED,		/* communication with PF
> failed */
>  	/* Below here, watchdog is running */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 740e68b..ce8b002 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -14,7 +14,7 @@
>  static int iavf_setup_all_tx_resources(struct iavf_adapter *adapter);  static
> int iavf_setup_all_rx_resources(struct iavf_adapter *adapter);  static int
> iavf_close(struct net_device *netdev); -static int
> iavf_init_get_resources(struct iavf_adapter *adapter);
> +static void iavf_init_get_resources(struct iavf_adapter *adapter);
>  static int iavf_check_reset_complete(struct iavf_hw *hw);
> 
>  char iavf_driver_name[] = "iavf";
> @@ -1709,9 +1709,9 @@ static int iavf_process_aq_command(struct
> iavf_adapter *adapter)
>   *
>   * Function process __IAVF_STARTUP driver state.
>   * When success the state is changed to __IAVF_INIT_VERSION_CHECK
> - * when fails it returns -EAGAIN
> + * when fails the state is changed to __IAVF_INIT_FAILED
>   **/
> -static int iavf_startup(struct iavf_adapter *adapter)
> +static void iavf_startup(struct iavf_adapter *adapter)
>  {
>  	struct pci_dev *pdev = adapter->pdev;
>  	struct iavf_hw *hw = &adapter->hw;
> @@ -1751,8 +1751,9 @@ static int iavf_startup(struct iavf_adapter *adapter)
>  		goto err;
>  	}
>  	iavf_change_state(adapter, __IAVF_INIT_VERSION_CHECK);
> +	return;
>  err:
> -	return err;
> +	iavf_change_state(adapter, __IAVF_INIT_FAILED);
>  }
> 
>  /**
> @@ -1761,9 +1762,9 @@ static int iavf_startup(struct iavf_adapter *adapter)
>   *
>   * Function process __IAVF_INIT_VERSION_CHECK driver state.
>   * When success the state is changed to __IAVF_INIT_GET_RESOURCES
> - * when fails it returns -EAGAIN
> + * when fails the state is changed to __IAVF_INIT_FAILED
>   **/
> -static int iavf_init_version_check(struct iavf_adapter *adapter)
> +static void iavf_init_version_check(struct iavf_adapter *adapter)
>  {
>  	struct pci_dev *pdev = adapter->pdev;
>  	struct iavf_hw *hw = &adapter->hw;
> @@ -1798,8 +1799,9 @@ static int iavf_init_version_check(struct
> iavf_adapter *adapter)
>  		goto err;
>  	}
>  	iavf_change_state(adapter, __IAVF_INIT_GET_RESOURCES);
> +	return;
>  err:
> -	return err;
> +	iavf_change_state(adapter, __IAVF_INIT_FAILED);
>  }
> 
>  /**
> @@ -1809,9 +1811,9 @@ static int iavf_init_version_check(struct
> iavf_adapter *adapter)
>   * Function process __IAVF_INIT_GET_RESOURCES driver state and
>   * finishes driver initialization procedure.
>   * When success the state is changed to __IAVF_DOWN
> - * when fails it returns -EAGAIN
> + * when fails the state is changed to __IAVF_INIT_FAILED
>   **/
> -static int iavf_init_get_resources(struct iavf_adapter *adapter)
> +static void iavf_init_get_resources(struct iavf_adapter *adapter)
>  {
>  	struct net_device *netdev = adapter->netdev;
>  	struct pci_dev *pdev = adapter->pdev;
> @@ -1839,7 +1841,7 @@ static int iavf_init_get_resources(struct
> iavf_adapter *adapter)
>  		 */
>  		iavf_shutdown_adminq(hw);
>  		dev_err(&pdev->dev, "Unable to get VF config due to PF
> error condition, not retrying\n");
> -		return 0;
> +		return;
>  	}
>  	if (err) {
>  		dev_err(&pdev->dev, "Unable to get VF config (%d)\n", err);
> @@ -1931,7 +1933,7 @@ static int iavf_init_get_resources(struct
> iavf_adapter *adapter)
>  	else
>  		iavf_init_rss(adapter);
> 
> -	return err;
> +	return;
>  err_mem:
>  	iavf_free_rss(adapter);
>  err_register:
> @@ -1942,7 +1944,7 @@ static int iavf_init_get_resources(struct
> iavf_adapter *adapter)
>  	kfree(adapter->vf_res);
>  	adapter->vf_res = NULL;
>  err:
> -	return err;
> +	iavf_change_state(adapter, __IAVF_INIT_FAILED);
>  }
> 
>  /**
> @@ -3689,15 +3691,18 @@ static void iavf_init_task(struct work_struct
> *work)
>  	}
>  	switch (adapter->state) {
>  	case __IAVF_STARTUP:
> -		if (iavf_startup(adapter) < 0)
> +		iavf_startup(adapter);
> +		if (adapter->state == __IAVF_INIT_FAILED)
>  			goto init_failed;
>  		break;
>  	case __IAVF_INIT_VERSION_CHECK:
> -		if (iavf_init_version_check(adapter) < 0)
> +		iavf_init_version_check(adapter);
> +		if (adapter->state == __IAVF_INIT_FAILED)
>  			goto init_failed;
>  		break;
>  	case __IAVF_INIT_GET_RESOURCES:
> -		if (iavf_init_get_resources(adapter) < 0)
> +		iavf_init_get_resources(adapter);
> +		if (adapter->state == __IAVF_INIT_FAILED)
>  			goto init_failed;
>  		goto out;
>  	default:
> --
> 2.17.1
> 
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
