Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E32D452FC8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Nov 2021 12:04:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2E9D607E7;
	Tue, 16 Nov 2021 11:04:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eRkM-15n3FeB; Tue, 16 Nov 2021 11:04:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF0E76073D;
	Tue, 16 Nov 2021 11:04:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B85DF1BF86B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 11:04:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B372780CC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 11:04:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BVpeRSkeUpsg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Nov 2021 11:04:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 779E080CAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 11:04:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="233911801"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="233911801"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 03:04:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="735519265"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 16 Nov 2021 03:04:49 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 16 Nov 2021 03:04:49 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 16 Nov 2021 03:04:49 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 16 Nov 2021 03:04:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aZD6hUttQ7egwUSSC7Zs685loCAeDP8zZxfjf+DHPHnJ8v/NJqXL7+Jbqq06u8ayMIqSloEh0zBpG6vPN4jmIeZuxF95CjtHm/9Y3rnE8DtipV1O4sjGdtTHkmIvsgyHBJimSetc92JBovBImW0wlTOxokZ852kkJPxDuB503L13pczDkzJFKGBFY75vk7idPt4IJcRYt5mstH0qV/r5OzGdiMBHLo7+KDP1LDOD4wSlAl1LDWz0Rq7XSZLADTkSbF4030SHyEEc/i2iF+iPnLq+yP0tdrwKPq85+WfXbWqJq8JjjFaXZtWWXXKDM9cYCbj67IcC0ygDxsjxHJHNWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t+o7IKsdpGEY7bUC0v0dGbnNfI2ZOVsalMfbp2dIIHk=;
 b=ZDiHFaDQ+5dRLQtxjXdCSmCDd8EJt8yUsotvzljNa08fACiqKXyzktHMD8yGPaFQfuMw5IU1c3dPjetGRXSzrzFeyS+J00zrI1J/9a+zn2p7VoA7RJTDXxA8viQfb8EEEYWtBD18pz5GmYon+khOTgvsMuwsbItnLk0SP5mQ7iRqDFDKCSaLKpoZPlKDRzyvuhNhCZdlImLgoDmL6fSoIT8lJDv85EKuSP9sWHBE0xagWgejXv0M16ac39bHFBd+xPst/WqT0NlcctTnBN/Nmxn18YG2wZCTEzdde4PoOw/CP8Rv1LdECnKodbY0aVQJeqfbraoHV1L/22smbx6TSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t+o7IKsdpGEY7bUC0v0dGbnNfI2ZOVsalMfbp2dIIHk=;
 b=Vumd8xriOY6rUdTCMxtewQKTFDPMCJTaHce2tlaN3ly/MBkMsauWdQaicBGD7kJzxMXvzRX+ZRWcdju9dgvLxVf+3+j3PXzTw6xAClr2hfyQtOrWHJmzHL22cw9KgjDU2lhjtA1aBv6LCfjp7jj9OZTK8QbgtX4NND7SNWITiZw=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.16; Tue, 16 Nov 2021 11:04:48 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%8]) with mapi id 15.20.4669.016; Tue, 16 Nov 2021
 11:04:47 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 4/4] ice: fix FDIR init missing
 when reset VF
Thread-Index: AQHXQfWz8vUKqb3Yl02n0sm8yaZ2TqwHL30g
Date: Tue, 16 Nov 2021 11:04:46 +0000
Message-ID: <DM8PR11MB56211CF7761C56B42FF6D2E6AB999@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210505211800.11908-1-anthony.l.nguyen@intel.com>
 <20210505211800.11908-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20210505211800.11908-4-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: b14ffb84-603a-4760-f6c3-08d9a8f0e70a
x-ms-traffictypediagnostic: DM8PR11MB5621:
x-microsoft-antispam-prvs: <DM8PR11MB5621FCA97218C861AA701BDEAB999@DM8PR11MB5621.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HM9dAd78N2Sh7rRpVObWEyyWN9+iSi1UCpnmQuLG+F4p7+Q0koStzCZcvy3xn7rZSOfZ8XU76fDdBJrjfKFl8Umw/TqGYjK2rQN3Dp/nIafQZWpneh7KwF1uaracoIcP1tD+LuYlInvgbn0Jb/muhkt8VFKw9/LGom0S3ui3Mo48YjMmAkKCPOER0bnVJS3FXdU/nsXoZQR17ftoEnAF8xWiHrOxbGiC6inZR9158ZcoS2wJFSIux+e+oIGyc3+O5RJ2EVYLxidCfcqV3228OVrGtxEAmqTlLAP9wNwJH+RT+xCEcjrvVMscLGKAgtX1gKrzXMkXTFvzJo6d0eVyk4sdt83YR2oOO6A8xkqY+0x8zngmXYj2OPQ4tnoA3D5q3D8S9/RkeO8wiYMF1IUs8d63zhJmTAQU9tIHxxC6tWRiPEBnmiQJSj/VuTcUAHZi9GpvQsa7kO+z4SvMS6kuIGri7dnECQHicMbyo2t4OExf+uCymEtuPLIwF4EsjB5xsZ0/DiUnbTPvtVS0WWZxbefyn3FlTK+gkU1MXcNUnd7sS5RW2DMGrkG2D6u34QNpXFN2dtQv62YPBe4wbpgzr1BCfMod7za37Aoq9HPVpQffzavknM/ZwdNysnSTsNx56fa7PAo9pYMfJwd+C05z1XU2IaTXvQYk83zTb0fsG3bQEdK5dwnSELwBmu4k3LvQi8j4frmqt3Xe2NT1UVSXoA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7696005)(508600001)(38100700002)(110136005)(33656002)(71200400001)(38070700005)(186003)(76116006)(6506007)(9686003)(55016002)(66476007)(66446008)(64756008)(66946007)(52536014)(86362001)(82960400001)(66556008)(122000001)(5660300002)(53546011)(83380400001)(316002)(2906002)(4744005)(26005)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?FDs8m5U3E3A/eA6GVHxbiCqIqRoK3/5JqR6Vhurjt9tBDKDJ7dqEmVSpd1?=
 =?iso-8859-2?Q?G4CKDZnzMe+ggZ+amtmwSasf3jJ+pyqqF9bizQaJ0Hv46i4QT/gadAzFkE?=
 =?iso-8859-2?Q?rnmovVR8YYeWwpVu3ScePsLFFMcWHtM4aJiiyd+P2Qvg3XkJkCM3veNqyl?=
 =?iso-8859-2?Q?+Zr/lIo2/xq7dKf9cDVw3Pso2LVtmSWj+531BfOZjPp4Z4pcgVG16yHC3Q?=
 =?iso-8859-2?Q?sNBNbSseYBmS/fMlQOsj84M6LlK6abRMzA8puqnf/0pYgmt/0t74b0Fht6?=
 =?iso-8859-2?Q?/7XSzzgUCkcZxW5TbB0GgA1VF3tvisM0+UMxiDxYwCWX2bHgXGXiqCJABm?=
 =?iso-8859-2?Q?FF3+zTpVS7LceLmh7FTv4DXWHU6/kWilVtc6o23StPq0rZmfIFQs/RPsMB?=
 =?iso-8859-2?Q?XMsrQP/sGkSqRuo5ypYw+J4HYLHzz6+PqFx7kbSSbhcDvNtf5hnKuYKW9R?=
 =?iso-8859-2?Q?uZEbtB+PI2cxN6da2l7n8X4HLspgkg/+GIYW84VdMTmyrdIGZgGhdiQUmk?=
 =?iso-8859-2?Q?iyfix9IE4GZWRrLe1qCZYl1IOFCwPmOCh2ertWbDQpznLhDljR8g/LqlyA?=
 =?iso-8859-2?Q?p+h5P2YGLsbe4rvsUZewW7SWCpSGdaXB7Dx4SUZL0aYvKnzwSirLcndavX?=
 =?iso-8859-2?Q?9lqcRqsRH2px6T+hoGWnvVUlzzVUOnq0fB9Dk9Rlt56uDa1nkgxAWeMsJM?=
 =?iso-8859-2?Q?ckheFB+WIDEllwR8G5NTfEcAlcXzOLQfyzDF4KpiQamnXY65/P0HdYH1z9?=
 =?iso-8859-2?Q?4GT+x3mWCXL1ZpxuOy5xglYdzlV2AFrCWf8becurswL27YP1PPSmX7GSVy?=
 =?iso-8859-2?Q?Hd7qns46OUA2oLq/kWpSEbkKNZ+D6TeZrdckfdyQNNLoyqQuyKwkeJOmpF?=
 =?iso-8859-2?Q?JdefEbOUTkwWPgxIeNspRMgt0XFHW9cRF68pGdXwDtKnDGajJbVNgqYFuq?=
 =?iso-8859-2?Q?Zd/7zzUDnGMjes7dzI7eeYLhUIo9E1nBnDdn6bkIpZZWA/eska+0ZnDeC6?=
 =?iso-8859-2?Q?j2ezqa8pdutrPna93VRjLhar3aKv/kaKgHbUpcJq2/i3b8hzttvOgK3/Dh?=
 =?iso-8859-2?Q?ruc3Ng4ZjMemc5lfnnffOzsbkgUehaKIg7O6iYNzSfyWiAGfBy8cv1FWlo?=
 =?iso-8859-2?Q?r93SEFbpYa5vLDTRz2tL1lRiNCkryEwkYoyCqQ6FDwREEgxavtCzcZTFOc?=
 =?iso-8859-2?Q?YBl6K+nU6uewIL1GeS3598WZehZWgNvUZ/qaalx2rev+D9e59A+4RksOu3?=
 =?iso-8859-2?Q?txfUeglLJ9Nlj3XJRgfw7UE7HwsTw7Ysdioj9RIOGdIw0TulAAEBTXw0Ut?=
 =?iso-8859-2?Q?t5aZcDB6S2u6mYhv4MJWerLGaxJYAtDFoYWHd1oaQZYdebMBh6RfW3rs2t?=
 =?iso-8859-2?Q?xsXTxfPFJZX6OQZ6aIGb/25WbJt8CNpYcgA54RlHXGDmWLACFlhVTtjga0?=
 =?iso-8859-2?Q?bO+UC8MNApMprko1ETgeSE/7yociOmrjXhfgK8FxOgikynZNMJULGUdFSw?=
 =?iso-8859-2?Q?1baupEhuc8OH3uyjawdHVt3M0CuVysUObzB8inaljKLHeBHx/WU+TBPHkm?=
 =?iso-8859-2?Q?Q5QF4qWhA3bwrjL9sUxhUzcHtRN0Lb+kxkm33DBRvcQyi1/xYXJCEoBImQ?=
 =?iso-8859-2?Q?e7irUFRWEwAHhYYN71i10MtaS0AN5hu8DnyqggG+Hh1FwfolJn5MJpJy7X?=
 =?iso-8859-2?Q?sh3mGF0BKmYsxpnxLUyiUk0jFR+Wnrw8OB2ksiseMWbLXVHfqAbAsa61nk?=
 =?iso-8859-2?Q?ljTw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b14ffb84-603a-4760-f6c3-08d9a8f0e70a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2021 11:04:47.0513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TymU8CYIRC6b30wVoVfr9KTl3gJ+g74fHtSISGt6B2aTB4QgJBcugaV7Kekw1zrTaX0dozdVFuElHNVYq5clVvreO+oBCLHx/25QqTBm878=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5621
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 4/4] ice: fix FDIR init missing
 when reset VF
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
> Sent: =B6roda, 5 maja 2021 23:18
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 4/4] ice: fix FDIR init missing when
> reset VF
> =

> From: Yahui Cao <yahui.cao@intel.com>
> =

> When VF is being reset, ice_reset_vf() will be called and FDIR resource
> should be released and initialized again.
> =

> Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 4001dc723e1f..c827977f4539 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -1565,6 +1565,7 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool
> is_vflr)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
