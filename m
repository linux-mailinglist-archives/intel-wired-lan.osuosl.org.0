Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B07F02FC664
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 02:25:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE0D986FCC;
	Wed, 20 Jan 2021 01:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1sbc612nNq5t; Wed, 20 Jan 2021 01:25:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 552FF86FC5;
	Wed, 20 Jan 2021 01:25:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E9C01BF297
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 01:25:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 764F8204F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 01:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pafsQIW7LRjK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jan 2021 01:25:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 618D21FF11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 01:25:23 +0000 (UTC)
IronPort-SDR: 8crvoArZ8lkL2skZS1P2tn7jLP+0rckW8GTmqK729cfxZORbXa7xL+kaa6ZT+oarrEldLk9K7l
 jQUKUKBIww5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="197744562"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="197744562"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 17:25:21 -0800
IronPort-SDR: VVCW5EjxsJN7K/Qe7WG2sNekILU9qkwXTdicr3JH5i2kpBURNFupn9cUubfSjr0RCtnLgRMbT7
 E8NI5Q4IqN/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="569971592"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 19 Jan 2021 17:25:20 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 Jan 2021 17:25:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 19 Jan 2021 17:25:20 -0800
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.53) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 19 Jan 2021 17:25:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GauGWp44OMQKQyXn4XLMr8D2eMhD0O8sqp/z8zIgDAP6X3Afto3D1PCThSfkH+JSyIEC62SXTIWFmkDA52AhCf84hWy6WQem9rZlq57uNou9/cujKN+btZBqk4MGaRcQ6lSagyXMaiYIYo2UG7zKHmr8cVWelN38s0bPU9I7RI6blqidyxOh5vWYZCAbHaqEp+D3yWi2l+r5AsG90oVYE77K4Ad5+qKac/1MD5X4vQHJNdWPvYyAzXGYLpjJAp37F9i0zh9huNbt+p/lbFlOd7FQDq2s08mHI5b3Ff9RNb6rr0CUaxTjZOR3LDzcFcjHfS9jHcpDpuWX/wsqfta3Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sXeqftzwJHHvG9Bw5op4FXbf+EYVnvl1sszCq2sa060=;
 b=SchMY6yIQQfytyMZj+VKLLyWfRd1GvbepVi4qGgGY2ryW6F7wlnHbZ+hbfrwwGuiA8d/tI9IPvIMr3GM5E59Nnn69cIUEt4YiW6YBNMnLqXFNfijW37Q1V7ZGPyQ2jEJUbAf/ChQ8M4JCYDMwUXZw9oy3V5QNCoUeU2DB9HaFjaY4FUQQsh8Qcb1S2A9Hkvv+BWGU5rmMpJUgHD0bwAbLLYQBKRYKATX/r0vJp7518Kj/PLChUqA1ZAoga/yd5IMHUcE5V/4vc1X1kzItVkfJVEzxZjna3JRKNZ1BPx5idyooyT7iKr7Q5NRzLBPzg/YRciG88AqQjWF/ROjK+xCzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sXeqftzwJHHvG9Bw5op4FXbf+EYVnvl1sszCq2sa060=;
 b=Ot3EoDfg5Eqkw+IjoNlX7C/egqFLysYnlu9wmIqZ8PY/QkxoyuDPVhCJlVCZQtMyKenpFzECyqKGywJ/92WgAk12kH0GvfTSewaucU34b4H/qAvlM/4YeKxf51tF55kccvssCP1wrmdKJB56QH7eoWwKb9H6ru3ZearmOPBm/80=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4827.namprd11.prod.outlook.com (2603:10b6:806:11f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10; Wed, 20 Jan
 2021 01:25:05 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6%6]) with mapi id 15.20.3784.011; Wed, 20 Jan 2021
 01:25:04 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] i40e: Log error for
 oversized MTU on device
Thread-Index: AQHW6oDCvz3vL023T0CHZlB3uFhukqovwScA
Date: Wed, 20 Jan 2021 01:25:04 +0000
Message-ID: <2d2bb2958990986810e419119649dbf6a6606446.camel@intel.com>
References: <20210114161706.9224-1-eryk.roch.rybak@intel.com>
In-Reply-To: <20210114161706.9224-1-eryk.roch.rybak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e48292fc-9649-4226-39f2-08d8bce23756
x-ms-traffictypediagnostic: SA2PR11MB4827:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4827D603F95770CC07B56907C6A20@SA2PR11MB4827.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:295;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rnwV48J4nnqirQXKmWTSEbgSoAPBpTx92SDQTU1k6j5yTU1eOeg88oZxS+xpDpfVhJ8biTabQbILKFR/FrrEesPoP46Xvi8aAr/z/BtLYad4mSx0cgPE+Ow4kw5ixFcHSvEStqhbja1w7BRoi97m/dx0U/vB699AupdsMqvmwf19AQnZzksXrhUkLPWCILZZv0Adb4X/06ZhJs2wXgL/nSmiugNDMP7TpojvvrpjBbXcrNwvAJ3XoU2xbmTyF6Pv8Z8QDhsjsWm47+KsZHe57fmzN1YyXUYnNROkp+mVtsADDhckLkCXVFgpf/VHGnH2y8GalQ8yzMLzh1GY/JlqoemqywPU/B5p7QT/+Up0eOhgoYrebt26sFHZN74m0g3wSCbRhzhfmBTH3Izba+lHMA2KRaUZ0cgGNF9EkqDQYIWjhNDFbG/E85PB8O9Db5h5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(376002)(366004)(136003)(39860400002)(110136005)(83380400001)(6486002)(107886003)(186003)(8936002)(2616005)(316002)(26005)(66446008)(86362001)(71200400001)(76116006)(5660300002)(4326008)(66556008)(66946007)(6506007)(91956017)(478600001)(2906002)(36756003)(64756008)(66476007)(8676002)(6512007)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?Z0FGaGozV0FhelFub0RlSzdBYVI3bFZJL1BOVldxQTR3SnJ6d0lZUTlHeTFU?=
 =?utf-8?B?Rm11NVJGeDhQZlFjdkp0cVBQRlNPUDh0bHQvMW5VZ1o3Mnp1Z3ZlY2k5NjBP?=
 =?utf-8?B?Z0x6d0ZSUExZZEJ0QWkxS2EwUXBWZXp2cGRaa2MrMmVqZVg5NE5EU0J2amRC?=
 =?utf-8?B?enpDWkthb1VZZjdCUHptUksxZTdCY1hWb1BuRGNybS9OWis2SDAwVEhEYTJV?=
 =?utf-8?B?bkE0WkxjSm1qRkY0RFRhZ3dPcVBTZUp4K1pPc0E2TWF4KzUvTDVoeVVsQUFK?=
 =?utf-8?B?TDVmTCsrcVpiMmdWSjZvR1MxeUpSdW9kOE8wMm1YdXExTWorT3MzSHJ1QTJW?=
 =?utf-8?B?SWJvbVN1SnNMRnlubXhEZFBERHJzNElHdVJ4TjRaN3ltcndnNnJtcFZEOVB2?=
 =?utf-8?B?cmd6SVZNVU1JNElCM0dsK2d2bjVYUU1ucEZLN29LU0dUVE1pamc3dnhhdElp?=
 =?utf-8?B?ZWozTURoMDVPNmlmdTBzeEJIWHVyc1JKU3Izc1o0WlFtd3BpK2duVEpxWjZm?=
 =?utf-8?B?cUlZRG9NUTZBaURKRFNrTXowV1JIMzlDNjhLWjRDbE51U1lnTHdDd1U4eUda?=
 =?utf-8?B?Zmw5RktBU0hVWWJSSDJqdHJCODQvZ3o4dVB2QTVvbUtpQlV3djFTRzZoQkdL?=
 =?utf-8?B?MDZ3eEVwS0s2SnNLKzVJTDg2MDlPMDB4ZUVHd0h5dy9CaDU2WGJKdXhaODBR?=
 =?utf-8?B?SVBiOFZsRFlWWFVuUFRpSlROSnNVOENZUWZyOENlR3FZMVVZTHVSRHpwOW94?=
 =?utf-8?B?OXVEclJUTUVIdkU4NEIvODZXTDdGV3BUd0kwMDhTVUZLV1REVUh2TGdHY2sx?=
 =?utf-8?B?dkh0SmxEbWpwbGdaeS9XaVF0MU42azJuV3VGM3JSU2pHMkRMVWZ5Y1pIOC9o?=
 =?utf-8?B?K25vNG84NEhTbVN6MG1ERjB1bkI0V05NQ1dYVWN0bVUyeEtsd1I4TzkrRXEw?=
 =?utf-8?B?ZkxpYlN3ZHNxOUpGVDdKSHVGNWkxMWxWTTVkbWt1Y3pIOWlGRFM1NjQ4K1U5?=
 =?utf-8?B?NWZ2OFJQcnloSXBab1JaVlNUNFhRQ1hOOHVLYkUrS3VpdkZxQndsYlhCeXRk?=
 =?utf-8?B?Ky9kdEN4V1dZclVad2JQSmNyTU5OOGxSbHF4YjhHV3BwekxhN0JwV1NReEdG?=
 =?utf-8?B?dFVkT09ROFEwTW5Vb3R2ZXhBQ2VhaEprTjkwS0YzRm1XYkFkR2dQRzV0Mmxx?=
 =?utf-8?B?MVBweWVieFY0YVBSNStCSVNRL2ZCTjVqT21NZ0txU0owMDdpNFNsbElRZ0dQ?=
 =?utf-8?B?bW1Id2lSVTJDUytBV1JlcHVqakNJRXFRWDlKczFCNDc2Z1huVVlUSEJ1TFNE?=
 =?utf-8?B?Mnp3OE9RUkk0TVU1K2tlT04xNmppUXE3TVV1VXBSclJ0TDFUV0xyQ0N5SS91?=
 =?utf-8?B?VzIyM1FyTlQvekpLc0M1NHMxRlRsVk9yRmJTQkJ6WjF3aklyZzFxT2pqdy91?=
 =?utf-8?B?OWtlU0s5N2lVaUZwWlZMcGdHQXBSME1RUnQ2OS9RPT0=?=
Content-ID: <A8FE2DAB7AEEF24489CCB585F17D9DA4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e48292fc-9649-4226-39f2-08d8bce23756
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2021 01:25:04.8974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abIu57VXJ7EXLoF2CLHUt75u/USHh0Le0Anutqp2QJ3w6YKsqR49mB3gzpPJySjW5lg+91i7dpBIMEWgEeSNlh03cp50CESPl1J6RoFVox4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4827
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] i40e: Log error for
 oversized MTU on device
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-01-14 at 16:17 +0000, Eryk Rybak wrote:
> When attempting to link XDP prog with MTU larger than supported,
> user is not informed why XDP linking fails. Adding proper
> error message: "MTU too large to enable XDP".
> Due to the lack of support for non-static variables in netlinks
> extended ACK feature, additional information has been added to dmesg
> to better inform about invalid MTU setting.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
> ---
> v2: add dmesg trace, change commit message
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 2a7e116..0ea04cb 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -12933,9 +12933,10 @@ static netdev_features_t
> i40e_features_check(struct sk_buff *skb,
>   * i40e_xdp_setup - add/remove an XDP program
>   * @vsi: VSI to changed
>   * @prog: XDP program
> + * @extack: netlink extended ack
>   **/
> -static int i40e_xdp_setup(struct i40e_vsi *vsi,
> -			  struct bpf_prog *prog)
> +static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog
> *prog,
> +			  struct netlink_ext_ack *extack)
>  {
>  	int frame_size = vsi->netdev->mtu + ETH_HLEN + ETH_FCS_LEN +
> VLAN_HLEN;
>  	struct i40e_pf *pf = vsi->back;
> @@ -12944,8 +12945,12 @@ static int i40e_xdp_setup(struct i40e_vsi
> *vsi,
>  	int i;
>  
>  	/* Don't allow frames that span over multiple buffers */
> -	if (frame_size > vsi->rx_buf_len)
> +	if (frame_size > vsi->rx_buf_len) {
> +		NL_SET_ERR_MSG_MOD(extack, "MTU too large to enable
> XDP");
> +		dev_info(&pf->pdev->dev,
> +			 "MTU of %u bytes is too large to enable XDP
> (maximum: %u bytes)\n", vsi->netdev->mtu, vsi->rx_buf_len);

This is over 100 char, I've already fixed it up though so no need to
resend.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
