Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 031DB81EF60
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Dec 2023 15:13:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57ECD405A2;
	Wed, 27 Dec 2023 14:13:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57ECD405A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703686397;
	bh=ClwIts4hVxJ0R9vLEWzQ4mv8cx1o6PXZ0GUZyqPwp/Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4wuXEtTrOSJLEJZUEndnKwhSC+Dv1mF9QU6UksoFp0okwfitdJaAhiCi3Gptrr2fe
	 IKcgmr+4K8PNQ7bZtQuqJXlTFQSlg+8cdhCLjE3K1qd6XNdf6TI8BSsLpawOKWPFML
	 NfrGHBrbr93FLmxdhTUTSm4NpM+t9BKEZNRRYxi1/xdCG3WtTdu7dF4fF8qu+gfQb/
	 GjixQZd8+xr5mX7KUrx4ZDI/c7Mf5Izhhx6z7jI0HO9iqOKC+ujbhkzbl2pogjEy/R
	 Z8gMOGMqup7fIaE617CSPLflhN5PWttyoyJvhAjkEhtNtrHEZ+eT2DYkedumw94ODC
	 atnbz2G6Xuqmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wuW81PbA9xpp; Wed, 27 Dec 2023 14:13:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4398E404FF;
	Wed, 27 Dec 2023 14:13:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4398E404FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 21F0A1BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 14:13:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E8B0682148
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 14:13:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8B0682148
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IrMgPa2iLGQ8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Dec 2023 14:13:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E643F820EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 14:13:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E643F820EC
X-IronPort-AV: E=McAfee;i="6600,9927,10936"; a="427619450"
X-IronPort-AV: E=Sophos;i="6.04,309,1695711600"; d="scan'208";a="427619450"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2023 06:13:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,309,1695711600"; d="scan'208";a="20297518"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Dec 2023 06:13:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Dec 2023 06:13:07 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Dec 2023 06:13:07 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Dec 2023 06:13:07 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Dec 2023 06:13:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I1PvxFnY+mDdLBiI57SgBCTJSBP6zAdqJ4Sj5b0SaS+cXCAs4DJm9Agnpb/A5fEANO4xYK4KVSfbFDvkGWXe9nsa6lu0KLJcwdRPAsrghX4+Xy9cYzzkgZvuXqeowq8T0NEbPGGnDydbaW8Nyssfn7Ys4tgcV3crzAGhsinTOB0U9QZbV1/8lFRw1hLUX0CC0NcDITx03cCUDWQKKSr70shwHvXvuqgkj4224yCzcR3xWh7RLxXbK934hSiMcIF7MAS5LaFJVfU0pp277R9Cri+Ftu2oarO31az9aZs628oPQuxPm6+T8G59EHvm6WRjuPNqREjqNusiNAVfueAVpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ClwIts4hVxJ0R9vLEWzQ4mv8cx1o6PXZ0GUZyqPwp/Y=;
 b=gIaChxT8DxgkF2OV42UtR+TARjH8jTEFZvY0Xh+HmYSA4tvSeksOjZRGo2WBvIv5FIq8X7Ckbl6welDuc1qkhDhxvKOWHjLcKRVbq7usXPh41kIH8dYmbz5ZUhF1lFY2AF9BUi2awA8BSXCR/g6nOp7Spc37bvfH1KE3SAILVA4YV4dz9pEBA4twIB4sS1gtPS6jcIxWUxuRndXrrPiRMfbfGN3Uncm6g+ou/OY81HE8IGJWElNnXpUcC5NqfZHyVMMLclgZKuklYhls2kclhHsPaq0bAR/aReq9rNceO9eSdg7ZBM5o1xbXFTPm3GfItPWDC0MRceZySsw3B3PwUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by IA1PR11MB6146.namprd11.prod.outlook.com (2603:10b6:208:3ee::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.27; Wed, 27 Dec
 2023 14:13:05 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7113.026; Wed, 27 Dec 2023
 14:13:05 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Simon Horman <horms@kernel.org>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] i40e: Avoid unnecessary use
 of comma operator
Thread-Index: AQHaMM3TRLmxVQW9RkuRabcKuoy747C9O6uw
Date: Wed, 27 Dec 2023 14:13:05 +0000
Message-ID: <BL0PR11MB3122584DE882D5AD0C80AAF0BD9FA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231217-i40e-comma-v1-1-85c075eff237@kernel.org>
In-Reply-To: <20231217-i40e-comma-v1-1-85c075eff237@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|IA1PR11MB6146:EE_
x-ms-office365-filtering-correlation-id: 8440b259-0507-40dd-00b3-08dc06e5f1a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x9uBUIZst08c8hV4Ey68tsngTdOhvSayahSYK7oSEur14nokR3SHLVQtevrvaWj5EwlRPATa6JCyzghoNIE7ENcS63pSD7bmg81q8HJIcqQ9N//sStsEGGK9jODruB7HR8zdAkkvfI4+h5FCQDMz4xyf8MU51PCsrumFtsjMZCwOTaowhSUo45vMr1tLlReLF9lPLa86uZkhdqRYMQfmvt0MBgfEZvIcvSYj4w9iO+Gj1394a/81IpMVWc4bBCmyPpR0WgN4rqL0Q3a7cMrSlF3+S3wEJM6VfNq9uXEvtFYjrrGQeag5DcoJLuin0rdF9JED+Omj93UnTVC/CAM4DtU4aFuI5bPg9A8Kr1gYXn/55EOLWHiAJOqCuG7ccbD7uia0QEUxjoWkDU0OIGBWH1i42dKu5+XOq1oTj6TIWj6EQbwIqoUzXj+v0bPYyZSR+3LEtV7BwqwSxMd72578wApLED1B/V0Wgzrygu0cg2VLGE/8dUyvMGyqmyf5SxMj2VHsyvo/UxtmXl+M2zqprOKe0E+krG3kwK4+fhwSxsW9qGfBhmZG8fEsQ4MumK9hvDAA7NIIKic8543NtQ5vNQRJ02V8uqIHfdeklFk4Q5afCUnkNcD2sUlht6+dP32w
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(39860400002)(346002)(366004)(396003)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(26005)(6506007)(7696005)(9686003)(478600001)(83380400001)(71200400001)(7416002)(5660300002)(52536014)(4326008)(4744005)(41300700001)(53546011)(2906002)(8676002)(8936002)(76116006)(110136005)(316002)(66946007)(6636002)(54906003)(64756008)(66446008)(66476007)(66556008)(86362001)(82960400001)(122000001)(38100700002)(33656002)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wRoy8QNhEPtvzWHqBHyVE2XU01gjWm/+6+Xnt4FvOY9bEiQ3h8ogxukX/MsE?=
 =?us-ascii?Q?v/CtD1Ta/aQ8rLokf2OtzAaYdRdZU557Wvyt9zwUmwE/i9hVSG8YD90DqrmJ?=
 =?us-ascii?Q?A5zQOjMeMCno1FuZEt80Gsjuhmu8YLXcCms46idrihx+Wp8avWyZ1CpFEEb1?=
 =?us-ascii?Q?BGHCNDYlNdOweMgt47QNxCPwGeo/6YH60MdFbYCrERDfDlQWD5UqVcKuZ4Rr?=
 =?us-ascii?Q?3gDHisWXJV1PkoJlsua0GTmfTcBDrTNqx4xd5di6dJFo63q+u7BnppVVkF2g?=
 =?us-ascii?Q?ib+mlmZ4Btfu68Fajihod/eIJ0G1p7TRGe8RuzSzr68O6Crukd6n3R+eTAiV?=
 =?us-ascii?Q?grY85Q0iJWYkinkn2wZ8Xi6CXl0JUqtVDbwVI7exHjaYVIxXOxtRw6ogHVEQ?=
 =?us-ascii?Q?+8Oc2tbTI62lcTYpb99L2z9GhseUF5/IImFUeCk4p9h3g6czGOzwfyzue2A5?=
 =?us-ascii?Q?qLzrUX/TBL0D6RwWgNNXdobefZvimmSR5Eckogw1VGcYNH0m66Yn8oxgpEUV?=
 =?us-ascii?Q?43wWAykxn2FAziPVYiwcsFlreaVcojKmpbA2nH1lXaalLAoDUcOpYN+Zmmlr?=
 =?us-ascii?Q?ZuhcVY5aSKR22/eTvgaa2a6bm4WDhkivxERw42v/Vhx8PEDtxniVWiQR9vdn?=
 =?us-ascii?Q?T6SNphpA0ac05K746fMLxVG0IfaCB2dgA8X+JsQ2BVRDQ51SeCUJDmQcacg2?=
 =?us-ascii?Q?M4pEdcUrd9mAPCXVwYJfyLT2e+BjhNA3TD/0ZDYlLHgZLqC4UkM0wBiXDEVv?=
 =?us-ascii?Q?8vXF1g3cBR3cdv84mkVLKmpMwKJgdqTG5SsQpBxWL7fWV5G5Wd4/eAoB8e09?=
 =?us-ascii?Q?aOn/Iwb/Ju2/d2wWDqgPJcMgqCZsrE1nU7tpyoGlYaF5UT3GICKEQhHAMhGH?=
 =?us-ascii?Q?vVOxv02irIHruuAMaX4mLmFckGRvczoAoQcWGu65t0awILxqSFbqE8ZJDNm8?=
 =?us-ascii?Q?o9b3s3ugyeFsFCta7Qt6OnP+bv2kzn+rA32ZVQ6KDePElVTM9UzYAsxiHDeK?=
 =?us-ascii?Q?eX3wPmxuV6wJpijc3C3A5F0C8iVpw74oOgQCiac+PiVDRp8VBowQDor05bL5?=
 =?us-ascii?Q?Eeey8pS7u666BzJh7RLLBFCDbEUufxOFp9/5g2OeVTVVUU7jzt3s1qxeqeFQ?=
 =?us-ascii?Q?17+Ix4z6abB9PIv31ElvQsJYig0fhTy23/Li+9ICZuRU8byGFD8Jtww7KLzB?=
 =?us-ascii?Q?P4LnJyMKcIcsCJVum65qU5kUkaCOLQriW0PU5w4lolEyve3KZ6rFUjz/i9Vn?=
 =?us-ascii?Q?VKPLX22wcbVVFfFfPvNiPdPSNoUeFEW1jy3WUOXVM7pthtMhwgvjpJgx6AVS?=
 =?us-ascii?Q?wRg+QcJEFy2iMRBqvCcPm/Zg+dvO6GFJWdRaLLWQaWUrEYYpoTxlL6hHkSSo?=
 =?us-ascii?Q?fq+dOqdMOL53xizA6txoCxG/nzYT5asckbMxqbfyveZ5ogroePzAPKqutzxI?=
 =?us-ascii?Q?28NuM5EnKFlYFCFHdc57XSZpw4wpaDlpP/hIVYHmW3zP6sSmqxIKuMUZqXjw?=
 =?us-ascii?Q?KSwVnkU9V/EaW8ho0TOZIx4mqTRudmPsSMq7BjbBpAecdVgnLMMp0N+BjVSv?=
 =?us-ascii?Q?EXhJFBMqv7VDRW5pLTQF3WWkRcuBp+r8f1XjhJ8cGfZ+jJPIJlP4tiiWTJHb?=
 =?us-ascii?Q?ng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8440b259-0507-40dd-00b3-08dc06e5f1a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Dec 2023 14:13:05.0986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EWzW2NIuPsHqOC9gQywmBY0ujBNpoQCzno9pz82bTLxok/i3zLYFN6PlP5j/49P/8dYHf5Zis5w+biVPo4ppPP4hDTz5Wx1IwjdPDG92yGY6UU1E3WBrUpUzCc7Cl+G6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6146
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703686389; x=1735222389;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nvBGJUcJtr71cpFCLG59Xr1Xq8kzh3+99ef9ENvhXhE=;
 b=Z757I6BCWLK+wuCqCG7q8xV/atg4TnjHzOvWIpROJHuEt9VWxfxPuw6W
 IpoNYjhF7++vPR5bxN9zwPCH0ciAz+DSbwWog8t805IkzErcaH+m+qTyS
 s/+cq9JQDLt5bdExGpZpi0548ECTIfF0pvUg1VW+42ovbzh7lUObF+0QM
 2f+2OTAF7gf9hMG/OUg2gyjo+RGhK+IRSg7olyruUwhhDYw0r/MT4vT4W
 ad8RUHSXwymbJQPB+Tr9SRZUOlDM3H3d40cN3QLyuM9rViR8XLEvArSc+
 izZ2Wsdk2F59XIkKaZCM1Pj+m3DEXRTIsCUUsB5lC6skNXwsXTBbzpsJX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z757I6BC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Avoid unnecessary use
 of comma operator
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 Nick Desaulniers <ndesaulniers@google.com>, Nathan
 Chancellor <nathan@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Bill
 Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon Horman
> Sent: Sunday, December 17, 2023 3:15 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <an=
thony.l.nguyen@intel.com>
> Cc: netdev@vger.kernel.org; llvm@lists.linux.dev; Nick Desaulniers <ndesa=
ulniers@google.com>; Nathan Chancellor <nathan@kernel.org>; Eric Dumazet <e=
dumazet@google.com>; intel-wired-lan@lists.osuosl.org; Bill Wendling <morbo=
@google.com>; Justin Stitt <justinstitt@google.com>; Jakub Kicinski <kuba@k=
ernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemlo=
ft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: Avoid unnecessary use o=
f comma operator
>
> Although it does not seem to have any untoward side-effects,
> the use of ';' to separate to assignments seems more appropriate than ','=
.
>
> Flagged by clang-17 -Wcomma
>
> No functional change intended.
> Compile tested only.
>
> Signed-off-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

