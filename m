Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A644CAF3D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:57:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82B4E40920;
	Wed,  2 Mar 2022 19:57:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XKxYVYb7RhDY; Wed,  2 Mar 2022 19:57:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78E20408F1;
	Wed,  2 Mar 2022 19:57:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FFFA1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:57:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BEC4400C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:57:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pMSbJSdQoI5z for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:57:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 049844048D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646251044; x=1677787044;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=L165jZaC25u4jdA1mbMJAYW9tp96ESBoonib5vAz0+0=;
 b=Xn31MLLo2eIvjvxCIphs10KFszEzlwwPMQabheY1Tq7I/9adwU9NIyEH
 mlpvpLp9Qc713AgWjZGlxx52xW1luw+/TGgNbOcbYgnp8U7OXLgr/f6El
 yB4brDBybkKy3tDoOaAHE/m5Rjl3ctUGd9v1Wn8U5qw/2FiBq6PYH6qeS
 15AeP1Ukc4nrRccLoPolUvKxdcsq5yiDqc9+q+LLfnBp4BzNW8o5MEIyC
 QmNy8XdOIYdF5gF2RfWRXVFrftlqc5p0ZBPI+DkANo7dLwyFhUCVLW2CA
 D47TqQBdbRIbE3xugi5EtLVhTnpMzCZbxBforaYl/qCzIt7CszbtDR1/S g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="253421316"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="253421316"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:57:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="535520465"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 02 Mar 2022 11:57:05 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:57:05 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:57:05 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 11:57:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ielh472AHsZWwTk59Y0WCH3AioMhx8d2YXi64XZE7xsHkaJxXwGsS6qoY6dJHshjo944BCBEdgh13OxhPhaWv4mQYLnQRgHWODeCtc6QGNSMO6jcWPkk/rX/ZYAFsByNM73Wz1+99TLo6tKU5JKBfXDlhpR73R6/VsHHtyPhfagZCoXz9cwrpMgC4utNBXb6EhMDFA20EhI7bT78DPKVZ4AzTEUNepHMM+ML5z7INazaD5S/VzieLndsb4eODToPqVIxFov8eLGUW3dr4rFVSlWN00Ne+Wq3goMGxPIPPAv/SGJEYbYCCgEIwta89RWhTkAVl4cFpb8kdwpTGO3Opw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ygIUftsIkAXKUFVIEYhR+yVh4iRLKLOvTGUpjMaLW5s=;
 b=fmVkj7qiOm/iB18rVToQ3Iz5P3scRTFl9tbZ1+HIlY9LiU6DdDmmrhFVzhoHDLhC0xrFAcsf4+mRKdMyeqLyjjXzVVtH36qeMaygnJILBGH3r6GAdUE/aHCr4uiBwfdcPLmBcuto2dDprs56ZVm3bq4bRddbtoX2duagQAHW3roqyiCB0XmPV0SCqdjhp6PETtXiXMqmRPRVvwhCUbG3L4zli9STlgYVq28+tDkmrpWYGb0SeXgHQsKpt1es15eBNiTLfShPxgjsMLHSLaPn/HZvwEIl/dOYqDC9qiqmx1c3yspZ/fZpt7OoPS3g4LPHmOx2FNQIOCA5PFHrzH0t2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by SJ0PR11MB5184.namprd11.prod.outlook.com (2603:10b6:a03:2d5::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.26; Wed, 2 Mar
 2022 19:57:02 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:57:02 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 15/25] ice: fix a long line
 warning in ice_reset_vf
Thread-Index: AQHYKExVoIT4J/iP/EebcNAZgWBTPaysjrHQ
Date: Wed, 2 Mar 2022 19:57:02 +0000
Message-ID: <SJ0PR11MB5629C189328C36A9ED1E9D4EAB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-16-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-16-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e223e7ea-6629-43d8-5138-08d9fc86d1f9
x-ms-traffictypediagnostic: SJ0PR11MB5184:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB518489114FC4F58F7F74C246AB039@SJ0PR11MB5184.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HJMjsQXYTX0VeesrBErxuefSRdH+fG/kPwVqiDPZnfFu233sqzEoiHuRYV/2vs7h7RVRZjUFgmyZ8k17JQbJ8Sua0VVYKvrBZtrJK2wY3t5OLdOB7h2Qep9QFYTw8quzM9E1I4aXC1vMewxAOBWtoGzjbVO+iiCTG9hq6KgVmbGg0INJmg0ygNHJg1ZWk3zBMgzmAvau1HIateIEFU2CqzYU7Oo/Krsv5TZOWnwLPyar9fOfdeO1se4dL6f2uKXt9suTjXAo56776Q9QI6pAQ2jF8QgURFtjPVg4E+nBtylTc90AVkyztRHs9XdkgDF4sry0qLN28/PlxqaQ58gFwNS20dhLz5C+gr8OaoD5IwiWm5d+iBwJQttfgYg1LCGvbrLCWRr5pmi2qYdPe1RHef9U1SDV2WrFnVJyG4EIw72DndvDizXl6Aq7KXcsi650wfJQK+5b82rA3wXWC/TFGkAqKq9pNYt9eZZCi2/0iMjvn6V7Cpl9gO3CvDTXtiRGxHkvOyIj3qvtU2ufGE3DL9xE4lgJi1DG/gQCD2eMd9QUf2J1CQtyfT8iH8psulE1jFQy4/32LTByJm5rid2PlFLs81Pe6eZK7labRoQsGRYeHVm5Vh01Dslv7gQODpJuNDEeX7f5uGI790mzaBrMjN7rG7ujkedWSXLvp3i4a3CQKARUiBVdSEONp2pd3IO9rcl9npDCfS9Po1L7Szf6fA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(71200400001)(83380400001)(53546011)(110136005)(26005)(186003)(38100700002)(33656002)(122000001)(2906002)(316002)(4744005)(55016003)(86362001)(5660300002)(8936002)(52536014)(508600001)(66556008)(66446008)(66476007)(76116006)(64756008)(66946007)(7696005)(6506007)(8676002)(38070700005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Fi5Gdw3Usa6INWZkUIY25sU2f3ECuZZo/rXo3wUOfOsU4q7nhsnAck5eJHvj?=
 =?us-ascii?Q?avpI/YvogWp40PLS4Lmoq7v4o+HCvKtI4kYQE4rc1enXur7cJ16gpsV674a5?=
 =?us-ascii?Q?X8uWQxZFgRaLe9vq1I5tzd5/nHqm2naJXeQ3mPw/poKqMXMTRbQYn+ToJ2le?=
 =?us-ascii?Q?L8dBa6szPvwtrqGmCRIqyQAxIaFYQ1d4+H+eDy95AECHrI7VqJ+47UWYTx0o?=
 =?us-ascii?Q?g1Q+WRN8L+CF6LWIciCAQBRdZ9FTrrn4J/vHeHp6SLV6whPI4n/9U/XubsZd?=
 =?us-ascii?Q?DVnFFrfspH60CuTu64TSA280oMCdU1etlK7r3kYzcWzm9h4RIcM4T5MplPAj?=
 =?us-ascii?Q?3hAjX4pVqksqcdnB4d/G51p/shyw19iubAnlETaqlBKHgcQco13u6mDEsaLs?=
 =?us-ascii?Q?33dbv7bmgaYyCH/jOUmoi9i7gy+Mo0eVZYOjlEOXcC14npdI8D6gXlZ7cyVv?=
 =?us-ascii?Q?itfdY8E6KWCAiQ7VstPnSng2xOaTSKK++u7Ub1cbGsfkox3LGnD05D1OfohU?=
 =?us-ascii?Q?3axcMTA8yph7KsHwdi6UeUnPZtpWkseS5CC706oyJjza2YTpsQvfzYSA1dCe?=
 =?us-ascii?Q?MfTT/48SVG6AI82Jw44SC/xdoX5khCN1uj4CSJ2+Jc9fXZKA401E+tyV13np?=
 =?us-ascii?Q?PUIRlQgOJcw5G8PTX5ifdj3qHFEKf4luQ64ba2aomi1iLJbEQYNwn1QU2ZSz?=
 =?us-ascii?Q?L4emNL/OEECQCcNOAqwP6ff/fbUSEu5wCSxJYXnHpbJNNODu7rbVucmITcPf?=
 =?us-ascii?Q?BXN0s1ebeg+DVRvS3kLeYgSOxM32COQcXncEWfiAjJ/SeOFiSACdqouyHc/d?=
 =?us-ascii?Q?fvrEfLNbaCcgHDBjGiTSMJv7JxxguZ4MH/KqSkmLrrhzVayGafxRHPT8WaAy?=
 =?us-ascii?Q?hiqg9mceI3fC2uBzHnLNrW3uyNRmi5tmhB8GwCM7JY7h6kV/auqNUDQ4yinX?=
 =?us-ascii?Q?RKJ4mg+d3cUztUSrzb1+NUcULnkLJUT38ZENf4QNAzDu2Raxx/Nxxt/wM8Vi?=
 =?us-ascii?Q?6I1H2uAL2IxQ0pZE13oxoEgn1xnx2MHM9hlhoIojYrO2bWxQvSp5lnlFoEpp?=
 =?us-ascii?Q?B9Puo//8AnJConvlpBM4ECv0JKUWez9NSXnkghgGfmjmeXmBtpZ3D/JateLz?=
 =?us-ascii?Q?f2mMH+vfOL8932mJub/TXe3Uj/C86uAyOlN0dxPlNcI2dbSG6AFowDVZFb6U?=
 =?us-ascii?Q?2lhg8rNSbbU8a6z9kKYkmN8DoiwEchAT+2Ts+VeFFrbc1f2UddHOuR1xRmfS?=
 =?us-ascii?Q?zIdxerjibwcgBjPMN+b/9XmTMmkO3zAVBH9agDdOQVDdMhFjmsH9IYWOG2cS?=
 =?us-ascii?Q?2BGvwoWJUIAxklbhKS59858CoGKkRlrUCs3oQCbqj0x6EQwBMc1jHLTpQmAc?=
 =?us-ascii?Q?H/vRoXNZknJOmxtDUGC9aVOsLce7TWX3vxV74QUOl6qhjhbLWm9p3Z7/hTpG?=
 =?us-ascii?Q?dSrTj/UmBP4YwTsHYUxWpurIrGWBdpxXbRmaf+2U5o4vsK3Cyawhg7wSrZpJ?=
 =?us-ascii?Q?KkWbwZUWMFMPLtJe0hNoX9Faw8BDLCPDRZgbF2kBwm68kwvZ4F7M+OIpIbfM?=
 =?us-ascii?Q?AeZnw+zXQB6xpZ1N8Cx6zBCDM5YySVMAN8xwfRP21fNXVgsRFRHv/ZaWNryt?=
 =?us-ascii?Q?N+fYoQDm6E1QMFjc8oPR92lUuGu2qX1ALVSTsIF0/mIOxAM6x6jaLOrAKodd?=
 =?us-ascii?Q?3mxdVg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e223e7ea-6629-43d8-5138-08d9fc86d1f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:57:02.7605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VDoJ7IGD6KQm5Cw6w/pj1VaPqcbrHqMs2lnYEyZiE7Nc2fpACng96N5hyvukYZAz9JsA6NWkFNokQSi8sozJi9706QC1YCUFM1vdHy+2ihk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5184
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 15/25] ice: fix a long line
 warning in ice_reset_vf
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
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 15/25] ice: fix a long line warning
> in ice_reset_vf
> 
> We're about to move ice_reset_vf out of ice_sriov.c and into ice_vf_lib.c
> 
> One of the dev_err statements has a checkpatch.pl violation due to putting
> the vf->vf_id on the same line as the dev_err. Fix this style issue first before
> moving the code.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index be6ec42f97c1..b2376e3b746e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1251,7 +1251,8 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
