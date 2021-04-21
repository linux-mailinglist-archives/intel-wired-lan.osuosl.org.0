Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D65336734C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 21:18:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8443406AA;
	Wed, 21 Apr 2021 19:18:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8m7Ektx0JgTN; Wed, 21 Apr 2021 19:18:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F36F4040E;
	Wed, 21 Apr 2021 19:18:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06EBF1BF239
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0230C83D3C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:18:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NdyMdLeBo8jH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 19:18:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67F4783D2E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:18:15 +0000 (UTC)
IronPort-SDR: iV6X5oQzxx6InqnpylAL8k1/D/YlZov4O9vHknxfWOAHVs6T1zIgO9ZLXzlgsM5thSD/6pQmsg
 9azaWZuLCGgw==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="195787776"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="195787776"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 12:18:14 -0700
IronPort-SDR: YPpmMsP4g1fIjo3cZVY9IDKLkRdzr9mhMwHBGEpbMe7HRUoTaeUGRETIwmBEM2E0ZZ7lRhB1ru
 Sg35e83RffoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="453031877"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Apr 2021 12:18:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 12:18:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 12:18:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 21 Apr 2021 12:18:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 21 Apr 2021 12:18:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jOhw8/Lsa26czlPePQQK9BqLRD3OKVwuhmV2PsawTWjnnYXbIG6wnMRQABrTGjLxA6ZnNaUJGM8RicfnZgILip/KecF7Rqm3dVtVE0pPn03kuiDmV2S8qp3EH4M/iIi5/mSFIXjzRqD+YrLkeVoyt/omzGYc9A1QKFanZekJR+fo84wuXi4D/1HsvrIRFtKEOM9zQT/oi+IvucOIiGjPYJ+jTAYJH8CG8DefwcTeWmwYnVag1BtqwzCRiu/chtYEjxsxgeXKG6ecGqk4RKkaahHIBWpsp3mNfDp+ScWFmi4joGVhB7VF46Sbs8CBUa5XtEW2Q8ydszeAoKcaXcDKgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jraANJonOwC8v9MjeWlFkYsZzPav3Gyuee1P3DQzJ2U=;
 b=L8XTaMIwVLiWQtd/b6wVaRvROg+yMs0bFdPKEYpcCAIDAfWR6hPKyb4JVGgh287a6CqhSJPfnuIY0Akuu9Jl9LGDWptI93WVxpfVA+7ChXIHnbguaYZWlKTC6KQk57rX3STUUf2fA4kz2bTuFHZ9A2LWen/Jxm+dNFD186JUT6AjEpv1/vCbDO1w7KqyzVbVX58EjNGUbLbwIvxj44N/ejRJadtqNIhuQus78H6MP9qV/2MgzFgywpxHGduHaY5FxZftdZCGfRS8plY/xEUbqNcIQjlXQU5Y2lIh8VU5js3lVEQx6j+XWdR2bXUxBjGWDytGek2QA1gK3N89VK7pWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jraANJonOwC8v9MjeWlFkYsZzPav3Gyuee1P3DQzJ2U=;
 b=B/jCvGGC0rT+/VDW27kZduiDk9jpujNeyiz48M3meobHewJQgZZpx9ziTZI9dbcnk4mOomuswtxckSFvBgzq3qpaj5ezcqGLOoJmiybd7CBW7y53ghNzUTRugzTXmhooyynjBRnh9hXI8bYp64C6gnCBeztsDa65KD9kgGWmYE4=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1784.namprd11.prod.outlook.com (2603:10b6:903:126::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Wed, 21 Apr
 2021 19:18:12 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Wed, 21 Apr 2021
 19:18:12 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 02/13] ice: Fix VFR issues for AVF
 drivers that expect ATQLEN cleared
Thread-Index: AQHXDIcaXNSYBrntLU+eKZCcljFOzaq/rQBw
Date: Wed, 21 Apr 2021 19:18:12 +0000
Message-ID: <CY4PR11MB1576C3639340B840902B7DFCAB479@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
 <20210226211932.46683-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20210226211932.46683-2-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.97.153]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce8cc2f4-793d-451c-5056-08d904fa34b4
x-ms-traffictypediagnostic: CY4PR11MB1784:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB17842573E6A4BABD489CCA56AB479@CY4PR11MB1784.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MEgMBVG+aYmcKlbHlSaLmQC1UXj1qZ9Ch/K0hlgIJ8oodnqxYj6J5qyfhuc3W/SPgdGq/zPVo8yCuh8qc/oCyajArR9zKzlgA6oQsuYONiz7U35AQG1OMlkvr4I2vrNe3Zs2ifQkk1AEJ2j9ZN1IzAXHiNm2JOlZGJgdKJH4btPjSfqQaiQZQSA8/dS+fexZ4rIR5jB9h08RkxPhF8HmB45HQuuau7wDoBtfvGlSVKM5S8d+HkB0lNPKSHBzc3SqjxeLDFr9d/WU2yhFno7zB9Nyvw1Vybpc/C79mOnO7AfOtZxmXg73+I2vP0uMZeXR1YE+wxt3z3NfmSkwmJVA731YrsXMRy+meWfl6njzSVN6TkiKCVPHBA9SEA4/WubzDXfEKM+SfRNh1j71BsoJVWYHZWwn41b22kr/E3O/5qmKcuPf6Vvcrdor4Sf1yJXFoMCfoVjXFwActxGZ5a7oZkhV+rTFgLFQ2HwwXCyeTcr6/fq/WXPeodXaRa5ytDLk7ag/l83O6RJEbocBmDXDwo7LrQiWr7DCsJgeG8WBAQwANE1tHiu2G272clj9HT777yA5wReH50/m3oSQryMSmRay6dzng6KReJ7Nu2QuqJs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(136003)(376002)(366004)(346002)(38100700002)(316002)(478600001)(110136005)(52536014)(66446008)(33656002)(55016002)(71200400001)(64756008)(8936002)(83380400001)(66556008)(26005)(9686003)(76116006)(66476007)(5660300002)(122000001)(66946007)(186003)(6506007)(53546011)(86362001)(66574015)(2906002)(7696005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-2?Q?7ZF6v3LypxO/3/VUzHGUlfLUysg9FdxmQl7pTzeYbdNZWwbaxcia/ApiML?=
 =?iso-8859-2?Q?HFlanSXpVt48w8iIBNumj1RlnH1Q9Yu29F+kLyZoI+Ewol1PazSDF1NK9l?=
 =?iso-8859-2?Q?vvlXO08b3aPVm6VgwMUcz27DOIq6QlFJ6VQRZRgZc/BA4Lvo8pTuwdcKuj?=
 =?iso-8859-2?Q?8qmu0h6AjZoTvmfhT4/4FbbBMk3OE0CIx4xSkADWayeRCcw4J5JDC7l6Sj?=
 =?iso-8859-2?Q?qTUzUgnjt2uK2wYY7c2rtd6MJXZDbd+kv9D1KNc+R5jQXqm9nzz5gYVD5x?=
 =?iso-8859-2?Q?yn3VsfbXUSebuu9QBVwHROvLhXPZbfg79Jr2zCZNUhAp0KvHtDqQaE5OGa?=
 =?iso-8859-2?Q?2WXSYWnP8ez0IOd9n5q+Nj2JVaTNPjKMRguUcTHIhKJ5AN/MW48RhNMn7f?=
 =?iso-8859-2?Q?xBVdI8Qy0u1RaFtSCa+AMyl2IAAh22DnjwzvKyH6uwzxq1eQ8ZHjtt1tkr?=
 =?iso-8859-2?Q?tgcJiwAeuTAM2WXdV47cKkNwI4FYGC+rAQ3VmaoRuM13nOfRq1Vq3BaqSL?=
 =?iso-8859-2?Q?XzFh1JBy/Sq/VJR8Nlh9DS3iNlKQN0wB5dt1NXRxK0nfc4PLZzBNzV2uAh?=
 =?iso-8859-2?Q?EEgh/0DWrPiEPv3Gj36C2WWlwMm5SAODqjJ+DKvUQzSndIwFPm3q9nmJv/?=
 =?iso-8859-2?Q?+MczxSMJH5lxNbH/Mo5SWljfRYBlB7Lq2cgeHrnSgSiKONDZvjKDUfuBQ4?=
 =?iso-8859-2?Q?LU7HIWOwjuYTvrNsIU1jG+GPr3L9opArPiww3pYyAYMdwDKCh5yEUahEpa?=
 =?iso-8859-2?Q?RwRLITA4Lx45s9BDEOiXszkKuKVfeMdX3qtR3oNgSwRoUoOLYiv19xeePD?=
 =?iso-8859-2?Q?4hUoOaO4+FSQNL1obzeQRGGudoEDIMlNqhvRD1jnXbLxXgvoAiXi+sU6YE?=
 =?iso-8859-2?Q?89IUg9GyxfUMcI1w0pxVPLfoRNCwSJbPJJCoeeMkBDE0VsTt1Rjm4CQcKt?=
 =?iso-8859-2?Q?qr1az9wVke9dB4meHTfDPKVBemZjwIMhPgmLLvkO8n0p8wB4wzW42QiEet?=
 =?iso-8859-2?Q?7Bma00kk0vIQTKTjXC6Rd7+k23wMGWMcbAtyVsT0v/LrNnzHkDjcmf2EGJ?=
 =?iso-8859-2?Q?QWty4xCiP4K5Cba0yT5HLpALZsE/nhWeTMbJL+39oY9Sy6P7xVD+jmz8yu?=
 =?iso-8859-2?Q?0bGLf12iu3viIzom2f7ndvk+Ty2cPChPqvWAyBQD5SiZ8hfx+1Ll9W1SM1?=
 =?iso-8859-2?Q?UJFubaYXrbxVXwzKPbmw9Avte7yaElIqIapblvzEla8ORXmyDR0qwb35jv?=
 =?iso-8859-2?Q?ksr3l6F5U5a/uYnJO+6fzrmEq/DYaPA/Cjzd5El740SvRT1q3YXT84xHnh?=
 =?iso-8859-2?Q?6IxsvItmRqORcMSEjxXOLO6Bb0F9AFA4Im96z317e+9hbl9jUuHkgMhgyv?=
 =?iso-8859-2?Q?I44p2Npq4U?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce8cc2f4-793d-451c-5056-08d904fa34b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2021 19:18:12.1723 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WMn0s6VgQewyPadxBPZdOGa/8bXe7xnSmeRm0p41ZikOS7rFyYA7pC75RQqv9SWZXEyj4bgP0OBqG9vGThEswwtoaXhSek9im24JP89Jj78=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1784
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 02/13] ice: Fix VFR issues for AVF
 drivers that expect ATQLEN cleared
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: pi=B1tek, 26 lutego 2021 22:19
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 02/13] ice: Fix VFR issues for AVF
> drivers that expect ATQLEN cleared
> =

> From: Brett Creeley <brett.creeley@intel.com>
> =

> Some AVF drivers expect the VF_MBX_ATQLEN register to be cleared for any
> type of VFR/VFLR. Fix this by clearing the VF_MBX_ATQLEN register at the
> same time as VF_MBX_ARQLEN.
> =

> Fixes: 82ba01282cf8 ("ice: clear VF ARQLEN register on reset")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h  |  1 +
> drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 12 +++++++-----
>  2 files changed, 8 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> index 093a1818a392..1998821896c0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> @@ -31,6 +31,7 @@
>  #define PF_FW_ATQLEN_ATQOVFL_M			BIT(29)
>  #define PF_FW_ATQLEN_ATQCRIT_M			BIT(30)
>  #define VF_MBX_ARQLEN(_VF)			(0x0022BC00 + ((_VF)
> * 4))
> +#define VF_MBX_ATQLEN(_VF)			(0x0022A800 + ((_VF)
> * 4))
>  #define PF_FW_ATQLEN_ATQENABLE_M		BIT(31)
>  #define PF_FW_ATQT				0x00080400
>  #define PF_MBX_ARQBAH				0x0022E400
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 1f38a8d0c525..0f2a4d48574e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -435,13 +435,15 @@ static void ice_trigger_vf_reset(struct ice_vf *vf,
> bool is_vflr, bool is_pfr)
>  	 */
>  	clear_bit(ICE_VF_STATE_INIT, vf->vf_states);
> =

> -	/* VF_MBX_ARQLEN is cleared by PFR, so the driver needs to clear it
> -	 * in the case of VFR. If this is done for PFR, it can mess up VF
> -	 * resets because the VF driver may already have started cleanup
> -	 * by the time we get here.
> +	/* VF_MBX_ARQLEN and VF_MBX_ATQLEN are cleared by PFR, so
> the driver
> +	 * needs to clear them in the case of VFR/VFLR. If this is done for
> +	 * PFR, it can mess up VF resets because the VF driver may already
> +	 * have started cleanup by the time we get here.
>  	 */
> -	if (!is_pfr)
> +	if (!is_pfr) {
>  		wr32(hw, VF_MBX_ARQLEN(vf->vf_id), 0);
> +		wr32(hw, VF_MBX_ATQLEN(vf->vf_id), 0);
> +	}
> =

>  	/* In the case of a VFLR, the HW has already reset the VF and we
>  	 * just need to clean up, so don't hit the VFRTRIG register.

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
