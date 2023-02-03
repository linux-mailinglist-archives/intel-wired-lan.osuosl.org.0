Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5A46890F4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Feb 2023 08:35:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B7278206A;
	Fri,  3 Feb 2023 07:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B7278206A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675409731;
	bh=+bUFxdz7x4hT7zMh4j9Umzppvsd0zXfCOQuR2bV26Ko=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KdBLCuwoIei/aCDmdBpEw/v84jr8mMJSyYhLczKAtJr5cFLF2dABNImtaClUubuDs
	 HPKbyVW4PMp6sgKFh/dwU+qHHbNXfy7c44CoFIAuIMPb+xrqKCiSsh9IbjHAJEr7Aw
	 bfwYz/6jT39awG0hsarZz2LDh+8V85cwfaD+xPDfC66gntpwB2mp/05Ko8yoRpRCdS
	 QaNMUcYHE5rID7OugXNW0HuQaQoGpePdyyOIXO5CHDzKCURdBcMj6D9Zby3o29zMXH
	 SdbmsJc6EC8aWa0uKPtBetqOG2FSTHGoLlYmUxKGrkLchy7oTBwQ68c7+N6YasO6M+
	 KYTPhbSi62XNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7VQnorOKB5DF; Fri,  3 Feb 2023 07:35:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F08C81F27;
	Fri,  3 Feb 2023 07:35:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F08C81F27
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0ED561BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E76D041C97
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:35:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E76D041C97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZYcVcDTKkoPN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Feb 2023 07:35:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D11B41C53
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D11B41C53
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 07:35:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="326378171"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="326378171"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 23:35:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="839513133"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="839513133"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 02 Feb 2023 23:35:21 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 23:35:21 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 23:35:21 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 23:35:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hr5gOBJE6U7wQCPrApAZVPIHLhwuSS2byquPft+oHpyAChzjY/YEhqbbXjWizYdw6bc66LfxILrycwP64p2FboFUjCAgJ+MelTsrQ38OZVZE5lahzDm5nJnJj5qrTd20RKQC9dGPi/9sQr3qY9QHlF1YhJZ83hWWw1AYU4L4T3y32cNnVNnynN6d+XMB5zB3+Cl7Q1BMjML4ZCaCK6cy7Jz9tdxqldKdytZjKd+dFiGwrVGbhg2gXWTnp9vC89RfQashq5RNrsrjuz0A99NMBIpJD3WZ4JEywIQ/T9N2+vOp4X7UlomCol1UfCFkOkVJu3FDqqCXU9HSAEwDabVRaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YzSHJBKYDdkzWo1sPxL0Nu+lVwt4Gp3N2eApdFfENjY=;
 b=WtWyaBqdFZ429bxhKET343AYk2kMBfeT7qQKeNejLYKbZ1IgvKFvmz/T1vTFpgEjtj8WAk4lbLmT2SvuL8e7mQ8H/MhBpyxo3NoapXPKJVf/MFKZm5ZKwb9q5znoO1z3cCHBouvZxMVXUOlv+GS6tthpLSe/CkLdq+skIh+p5KQrPIfVMC45v6mVmFAXFbYNvOJ5Vcdn1DH6N2BH2c82r8ICFiIov2Gbp+sc0RNrZFRLcmEXJfscyEY0fJitZxHe0s/h2v86KMmm7o503rzNR2Slp+0urTRex7vuvGi2/PgkbfcxzcwsxLSUiPCtYE2uS0M4AU3Y7sQah3Qc8D9z7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW4PR11MB6716.namprd11.prod.outlook.com (2603:10b6:303:20d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.23; Fri, 3 Feb
 2023 07:35:19 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6043.038; Fri, 3 Feb 2023
 07:35:19 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 3/5] i40e: use int for
 i40e_status
Thread-Index: AQHZJEcE77K/8FCp/k6Kc3PI9a4ub668+upw
Date: Fri, 3 Feb 2023 07:35:19 +0000
Message-ID: <BYAPR11MB3367311EAC6149AE633A770EFCD79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230109141120.3197817-1-jan.sokolowski@intel.com>
 <20230109141120.3197817-4-jan.sokolowski@intel.com>
In-Reply-To: <20230109141120.3197817-4-jan.sokolowski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW4PR11MB6716:EE_
x-ms-office365-filtering-correlation-id: 2094ed09-95cf-454b-337f-08db05b93355
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j7ip2l7qenWZTsSFvjYn5O45HPxXpNEt2zg/ZowOiIBQyWS1RB/Wyz5FMtEJ2fZ5oqgkCxrYdPnE01zS6zGjdVajISPp8/iO7BOJgF+B74qblfMR/avlCn4jLRa2+UvGS6KLCp0Is+YQMxSv5uyam1VSfNZmiJR84Cs6HHdKQzZJoeBZR8lyr0uQm6cNtDq5BaNkf14TIUgoGMzdKv/ExsZDedekPbecC4xOHak2OJd8Zw4KjMkx+FlIk47sRNQYVQGTY3g5HoEeA3nEUHGTASCZ3Ic5LFMG5V1Meh2bKd1y3vmhmZVGgpBrs4jUvTfWuEyKS2SGPBTuv2YnNn46IZ7wR8VkF05GpAXzOxbkP2UQTBWGhjUOBRUNTaNIzgKFJqdhXMWdSqojGFInKnh5cDqrYOsfoPmF/cfhJaqKDC4XsEFPFU7kif/W0kmr3ts+KJBuzzE5GstqtUwwVRvOHeE9Cv2J3VvtYKoBlzPuAJx7Oaje5jFDUohH9luwP/fyK48pPThifJIzzvoll6N/1pnqYgaFIkYwXHYLUm5UeBZwI5WnoWfuYh8dNtWpQM3RnKU3Y1xJ3oHLw+kPdHrqclD6tx/+ku+E49TxxBX85KycfX4UqCD50BOcsOvYsMISmc/TnTmiblHiI3/jWqsjfxZlVWeZ6fFiJHJO5OYpYyDYATyIeUzQONoXwU6ORBqtI2+9liDCW3rt6ie5fHWxVw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(366004)(136003)(39850400004)(346002)(451199018)(53546011)(186003)(55236004)(6506007)(8676002)(9686003)(478600001)(76116006)(66556008)(66476007)(66446008)(64756008)(66946007)(26005)(7696005)(41300700001)(122000001)(71200400001)(38100700002)(2906002)(83380400001)(8936002)(110136005)(86362001)(316002)(82960400001)(38070700005)(52536014)(55016003)(33656002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sMjV1hOkVMUCqR5BqoGq4VqkbZRSd06RQbMREtsopTGXUYqak4oaLkjhx3s2?=
 =?us-ascii?Q?d3ZhqR8hh3am5m/nuEdFUj3jL0Pd8mXUbggUmkFOVv7Pmub3zEmYVg0otm6K?=
 =?us-ascii?Q?MzdhmBTLIlSBrNSVZjLgSaJ4A7klbn+nRme0ce7pxtuYNZXFlzwg8AB+/RMT?=
 =?us-ascii?Q?hDLcT9UHGqAUrrxr7W2EjJ995A3dxcdnyGbOzci90R1p056QOwUKVR1HaKtd?=
 =?us-ascii?Q?Wjix0Nqg6Wq6pLlzJxWWBKWb/IJE+JrnmZySr+7lPxxplnmP4vO3UkStI2+A?=
 =?us-ascii?Q?aomeej3MhAqMqeSqQjtxN46qa4JCEBbRcbVLm69P2zNiI3mavjHds8CwYqt1?=
 =?us-ascii?Q?owO3Zc5k7n5D522oUxUP3L42lLSJuwSSNZoaQc7HRyKoqNZsgl/zsffLkDhH?=
 =?us-ascii?Q?jrliJicH1K/niF/F/WhTDDFBbBX3aPAc1K39IxNOzwo3HUOECTX+Cla1Ztuw?=
 =?us-ascii?Q?RnZghRDahlKu+9Fvu/918mZJGkQy5iNS4WTfQb/XNTr4uHM96Wj4eqq3GFHw?=
 =?us-ascii?Q?aQXXZff7tO/qcSG6RJ24VTPZl3Oot7cpotsI3fvu50TBH1gFUVlMiVZjWgp5?=
 =?us-ascii?Q?aO1UtivAIZE3qZ1/yjHWWxU8nwZx3XrcKjgEZYQDSuI2s9xMzvyDwdnQoJoP?=
 =?us-ascii?Q?mo8G0YG6Kt96IdCOB6UOLunzYt8VqydI8kE0M7pRVl4ZHvshxc/qRUwCOVQH?=
 =?us-ascii?Q?LWedtl8aeXCyC50g5G957pW4ILC/vWwEkDVn06bn5Kaf3Hk+2P4wF3vzeOUc?=
 =?us-ascii?Q?wORctehHw6O7Q6YJXU3FTcOBC0TyzDsRP0I6OW1O9c6KCtd49VW0pwvWAJPa?=
 =?us-ascii?Q?SVB+OW1zYR4rJkTsIlC/kD+XpZuiTam1Rb5XSnvdAtmJzAScgMyLuoZRk2so?=
 =?us-ascii?Q?7mcXPy2UoUl2E1jKDWUs0DgDaLr/y8mU9E8Mj3B6r8PattstJRmvFZ1EfMYa?=
 =?us-ascii?Q?98k/dqyHUzFGVsM3daRfF4FIjxVlItNCtyoNk/hiqBvccaaleErY2H7U4BaH?=
 =?us-ascii?Q?F+PElDTRkPz6vW6/hg4TlrZqmUkmkkSPKiKlNSan1gPnNTjRnuBMRHtE7YmH?=
 =?us-ascii?Q?9yD7ypWS5Cwn4dLKqrJC/Jok/RQr+NjmS2pSzNs8ziq1mdqHzdJuDBMgNuOX?=
 =?us-ascii?Q?V0/9K7adsXBoOrgXVWZqqlVwvq+vT/rrspBpsvwCO4fKnnu4A3pIO4OZd7t1?=
 =?us-ascii?Q?1BZG9VKAgRi1u/vTfAARMHypympdHx4B7UEn9Q4hYWPicziW3Qw13dDB1v3O?=
 =?us-ascii?Q?cvrnEJnNaOCx9y2SR3CMC747onl5L2sLIYqpKClhlH4zz/BvacZdLkuy/YJb?=
 =?us-ascii?Q?Q+RJtoU/iAxVGgVCumjuwhFI8k1zpNCyH7YDkgTlSbpk8mEckcZwR+yxLPuR?=
 =?us-ascii?Q?05Z1IiNM+tM/Bbu100DIYQDwerJZdg+/cI26Hf6qh7miMrQDrgMk7f3XxMmf?=
 =?us-ascii?Q?/sVBmN7YOA1BGXdwPKaypiG7RyNv6DdrZWKM1xuymGXTERyqzsLBEB00FZJy?=
 =?us-ascii?Q?bdNgkim0EsJq5HTWWiMrecjQe78wDLOOoK8GBVhDym9nO9QnhSAncKcCOeqW?=
 =?us-ascii?Q?r5i5Z0oimF6gH9hzs55d+AGHshA+zColMprIcLfx?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2094ed09-95cf-454b-337f-08db05b93355
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 07:35:19.0742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1LxmWgDuLLBNRHQjbDMyDwcc78WMqs0JcPSc1sEaRGI08sn/RUm8Mzp49QftDSFDdGrlDU+PdlJ+QdTP2fLgyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6716
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675409722; x=1706945722;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eIHFWQGSx5KBAp4MMWcycpCmqBGFVewxmhXpCYmJYZ8=;
 b=PerpLVIRc1FsA3QJeSmMZfmgzs3s8YkygjLRQL3LIvrHo+ImNzmO8SS8
 TNezpDPSAya2jGAbJVo+/BkHU+oRy/7+LwogUsyrYb0Z/r2WJjXoneDdb
 +TJcL3a0SZ+vRwB3s9G5udYA60OqMdcaz4mIa0Qyjbtdw6DK3LJhQ/rbI
 4WiKZMLNfg2y2DSaD/1uSkmJk/bOZlPKmTgc/cfHugHHPwIM09mXqXwYJ
 DkJrTEHnn1ZKif8WoP1eADk8QohNDznHxP4XarH8fTS2/1Z5nYwAlmXDm
 v1i22I0teuMSFwnFNlLIyTdxuvl1Gpm9vr8KARAA3J4Cqs3z0HY6AH5sy
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PerpLVIR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 3/5] i40e: use int for
 i40e_status
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
> Jan Sokolowski
> Sent: Monday, January 9, 2023 7:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v5 3/5] i40e: use int for
> i40e_status
> 
> To prepare for removal of i40e_status, change the variables
> from i40e_status to int. This eases the transition when values
> are changed to return standard int error codes over enum i40e_status.
> 
> As such changes often also change variable orders, a cleanup
> is also applied here to make variables conform to RCT and
> some lines are also reformatted where applicable.
> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |   8 +-
>  drivers/net/ethernet/intel/i40e/i40e_adminq.c |  68 +-
>  drivers/net/ethernet/intel/i40e/i40e_alloc.h  |  22 +-
>  drivers/net/ethernet/intel/i40e/i40e_client.c |   4 +-
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 890 +++++++++---------
>  drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  60 +-
>  drivers/net/ethernet/intel/i40e/i40e_dcb.h    |  28 +-
>  drivers/net/ethernet/intel/i40e/i40e_ddp.c    |  14 +-
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |   8 +-
>  drivers/net/ethernet/intel/i40e/i40e_diag.c   |  12 +-
>  drivers/net/ethernet/intel/i40e/i40e_diag.h   |   4 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  24 +-
>  drivers/net/ethernet/intel/i40e/i40e_hmc.c    |  56 +-
>  drivers/net/ethernet/intel/i40e/i40e_hmc.h    |  46 +-
>  .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  94 +-
>  .../net/ethernet/intel/i40e/i40e_lan_hmc.h    |  34 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 101 +-
>  drivers/net/ethernet/intel/i40e/i40e_nvm.c    | 248 ++---
>  drivers/net/ethernet/intel/i40e/i40e_osdep.h  |   1 -
>  .../net/ethernet/intel/i40e/i40e_prototype.h  | 642 ++++++-------
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  66 +-
>  21 files changed, 1224 insertions(+), 1206 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
