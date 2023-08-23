Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E8A7851B9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 09:37:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C63541762;
	Wed, 23 Aug 2023 07:37:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C63541762
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692776238;
	bh=BQ5bU1n6Y5M5WTNSUpHqmNiHg7z8FxaWCG1ijtygaDo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ke/Jhwm/2IKk5OZV6qU3/Yon8Hm+4bfJ5RnTD9bGsS+mcD7f7xWijHallHxw2qO35
	 DlG/HGsJ3aSD1Y/3VDXcddZ5hNqXFjIIKelYTwYcRdbHA7qoWDuXaiPtsxfub18Sx5
	 1e70wUviV7qUqe8su1gSRu1BohjE5SJYufZKxALK6xChEBd6W3AM8sKWwMekifhH13
	 5TG8c5+tEjvZJrpfA9Qd8MpqthKPnO9N2q5nrkXgWG8ffrdn5pIGQLGi2kwiMxfYCg
	 xpeMSaGRdrSQFPyUxPQWs0JyMR7Or49sfARQsiYbPCPs6kfnMOaRBmVLdEUkn0yRXp
	 LdR8qeT8IkWiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FKdWaxi-1xun; Wed, 23 Aug 2023 07:37:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22238416E2;
	Wed, 23 Aug 2023 07:37:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22238416E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E20C1BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3634F4015F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3634F4015F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ul8ZqwD0txw1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 07:37:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC6D0400CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC6D0400CF
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="359077916"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="359077916"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 00:37:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="860229222"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="860229222"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 23 Aug 2023 00:37:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 00:37:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 00:36:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XlPatQ9WYLIxprEAljCtHg5ijVwgAcI6VcocOCAAEvUsytQfNnbsfD0gxhw/cuUj0TmwJ0Tohf6EX+X9pqs0WCAtLoXwTY36shB29B0ufLVtjy1rSFKtsmITWCl238mH5XeXNv7eN0VIZb7L1aaMmglgD6MCiaRVxxcriMLmCEPSL+D9W2xHFbueVOTOZKIXJOuKLqQCT8IyBpvy4lF5IYSNLhDByOF4tqTkKWcabsJ1hVRbx4b7ft5uE17l46L7hXaHITNjoSkEmCI3q7/xuLQE9gGwlkKTaLGLoi6hBXkO5px16huAOJk73MLdZFvJbo4P+j/S7T/8cILUGgd5rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+wWsmQRm8Di0eWXxRJRupxsa4wUrsSjzfUNFEb/36a8=;
 b=hJzsB59bZuOxaNFAP2k/8XEiESK3YjJgx9dFwg4cuea/WkRcCoKE+g6Ln7h1hDCITWtScmxz+YXf5b54v4xj1PTP53Rz1kNAW4EgRITXp1XNeq8snETKvzs4DCh9zLvOd/1sCoILfEkQ+vn86AFiw81HppF6ugEjtuL+pTFeEwpoeDfMM1z17qvOY6FXIaU+PxiOzVg46NvimTFcIMczvG+m9ZSOJtUW/wpMEqyoddo0B1mv2fVkJm3VafO9Gw+GW5wkeGfAf0FN5pBLwrtER0EI5B06yHnQvZjtB4Y0pj4cgX5CETEvPO2W7WAtqxL3Xa09jcUy0V2kChnrSREW1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 07:36:57 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7a15:68a9:57ed:b62]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7a15:68a9:57ed:b62%5]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 07:36:57 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/5] ice: remove
 ICE_F_PTP_EXTTS feature flag
Thread-Index: AQHZ0J4QKnK1H5lk50e+LoWM+9QPsa/3f28g
Date: Wed, 23 Aug 2023 07:36:57 +0000
Message-ID: <CO1PR11MB50289A5A4BE179FD1021D197A01CA@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230817000058.2433236-1-jacob.e.keller@intel.com>
 <20230817000058.2433236-2-jacob.e.keller@intel.com>
In-Reply-To: <20230817000058.2433236-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|SJ0PR11MB4814:EE_
x-ms-office365-filtering-correlation-id: a366df12-0e88-4a30-800c-08dba3abbb10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mj1XhvBNzXioJg+DpyCb+/5uRMDOYACvsskppO1knzaDFJmj17CNDgyhv46e0u5LRyrrBbNF/oTNyc2F5R+eISaQ0f9Ro412HDN1I2BuJMZTiYffihFLECbTWPdQgIH0Q0h+MFRu9b+3C0Jeu8mnpZ84zLOM45CM8zOjHpjmulWgJpMVvF2FggNv2YExJXsnjz2YP9uwbJFornGPLX/br2UxhBVEIgAk5GCP1Iy0h7hsb5FcALERPjaiBmGF/hP8xr2i3gJPDur9Ex9EcF1RWLg3Gudmpt/ZrsVXrc3Z16ujkUNXavh+6YLBFWpm5NnpOWScbMDRHGW0K8dFM2LK8QDP8t7d+Vy30g+BTQTp+qNc0W3LQz5o2wuAU0lJY/xLyHnINwBMLB2pAbWPBX41jZeV/JDDj+r/GPULTKSB+T/TmXB8dHdy7CxT9DTrnBZIpfWHD5o3Nia21SnNm02IV8w+nOm/Q0Cc4QANPTzMb/EENCGVMp/bE/ypjMtGhAuNfiwnC28vopWtsXgc8aCsSm8T8IPlE60WrKVL4m9Wa8U6QxnijB4ue8tM6vgswAV4LKIcm19WK4AXlZnfIsdjUUwD2/Q2/F2kbc53EKavFAMfHhCapVngxKbQnTw3sSBM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(346002)(366004)(39860400002)(186009)(1800799009)(451199024)(66556008)(66446008)(54906003)(66946007)(76116006)(9686003)(316002)(66476007)(64756008)(110136005)(8936002)(8676002)(107886003)(82960400001)(4326008)(41300700001)(122000001)(478600001)(71200400001)(55016003)(7696005)(6506007)(53546011)(38100700002)(2906002)(83380400001)(86362001)(38070700005)(52536014)(5660300002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vZeClDFD1jyG42ZyDLV2tj5E6rcnsA3GNDTM6bxmc80n9B3WEPRhNG080Ay9?=
 =?us-ascii?Q?GtHffA2jQU166NjFrXYvPO0AfyoqP4IrihqYbjNQ28+LzwF0uzbOnKr1jC82?=
 =?us-ascii?Q?D+Tu8qwyiteNlXu60fhhw3NaaO2TJrx5r4LBVzdftQvWlmbwGjfiJN8sCA0w?=
 =?us-ascii?Q?Ni+ga/by7F/mn1ihvpJ6bCFb72D+xpeSBkhLXWZoWiaepz1+iZcfG9LzQF2e?=
 =?us-ascii?Q?tk8OIfAvyRINWbahQrGs2t21vyUHG0u4+OYP/7AcZqBpL8xMINcRPvsolnPh?=
 =?us-ascii?Q?cKTnw0wUeXoHNCVy612l3U3DT8zTvYohRwS4xTh1+amVo5IaGaoKkSuzl5c4?=
 =?us-ascii?Q?vjATvGbwuCnQAKGfR+vXBKOZuBxZ8tkKnHjZzEXSSUCWZ3owwrIUeIo6YS2v?=
 =?us-ascii?Q?aqBttBKbLbJYfW6bVGAAVtBmd4/gFJDEATrI49vFC9XyiFcEc1DX+wmUgATC?=
 =?us-ascii?Q?wTGOpPEBnPoBkhq4q4C1IBN7lg4UNRyqCz8TbF8YSLKbUQHwIffHp0lkvEq/?=
 =?us-ascii?Q?yL34gSLi6BSxDaKLhm5D1ZypBb18aQs17pvNSxlyhalaxRqYsoh6nTEtEK5V?=
 =?us-ascii?Q?u150TYiEOkETWJMORQGJzdRR/fORw29uD9NcpmNxEVhw8dY245To+JqpnA9p?=
 =?us-ascii?Q?yjXqMYDzdn2G4Flf+2s5n37/5X9Re0ByAypCudDT3sKvV+ik2esSrLhLuqqj?=
 =?us-ascii?Q?UBMD5b7zdAFR51aVBdK23CyWplrmjsrT28YbjVdlUo2Z8SFMVFUq6+hib+gg?=
 =?us-ascii?Q?L0PKIBgJUjqw0S2viPjwZ0mfr/ychmRGf376TltG0XCAuRmRdFvPOz8Uyfhl?=
 =?us-ascii?Q?etJZrnEETz57mwaL/ZQuK1zDBTWQETA0FHMDd2eHpchtAXaWogZnFJ1xhegW?=
 =?us-ascii?Q?rDOVciRsePba4g7lKfbRAgAmeYXuXWGUyVsBstpMaNr/csaFV1GqLj/AjiXe?=
 =?us-ascii?Q?uU2JzPxs9QIPqcYkC9VJt/gbs1LhK+u5I4lEns9f5fUz1chpJFR+1jfCJf7X?=
 =?us-ascii?Q?G/cLSdU5GzXHDk5ut7C185I7GYAJyhtJ7W7LfXPuFUaz/J10sTAkk2GC0jXS?=
 =?us-ascii?Q?+jdmP8qRtZKY6zHRNFiuKFCP/n+zwsDZJYgt7eFs8fkJjwLFPYBgv/lQwds/?=
 =?us-ascii?Q?51h+8qZLsBBPJGb3gRGPjJ6nZ3HIT2YBMSW9L8Wt0N+psD2vQ5mc3FucPWDV?=
 =?us-ascii?Q?FkZslQWh2qPrRqUi4DMNgmi0QxcrShdrsFzrIyD5G/EORNVhqgzcz/XShht9?=
 =?us-ascii?Q?cwvc39hXCQvkkDISixIbB+6ReFroIReF8SESf2GmooC9uXCC1iyXU/qgEmD8?=
 =?us-ascii?Q?ofpO9KuO9laEd02yba9aHx7+8eh1ibPVbg4Tqzbz0GiX7yPuSpsVBE2Dvq6R?=
 =?us-ascii?Q?VFss+yyeMv3bnbK98HJXWcrUFwfzpQG7/c5u4YZ4fUuOu6Kv+7jQ1pTQP+m8?=
 =?us-ascii?Q?WXS+KuNNTKRLZ4DvnOeJf2MAfAxPAOWqzVuEMjiD+zd5vhw6Yr1x4Gg7ho++?=
 =?us-ascii?Q?c7W+VR28LCq8J57pzUGF4G7pV0P4hj0oq6bhivH3B1VXW0IPWjU7IEmOkOG+?=
 =?us-ascii?Q?SikHDzt7i5KlM0AOiGIuwMN7tczWffhEVfLB2XzSaHLVX9/jVWOvLDLHGCEk?=
 =?us-ascii?Q?Rw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a366df12-0e88-4a30-800c-08dba3abbb10
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2023 07:36:57.6198 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eLSjG8K/GKyyf5PPxEqwQNLXFeL/7bhzBAwH5j3WTIFM8hxS4VX4mf/UlxtwmNhSz6KLhBCYB7x1frXEKUoP3VWieXxA6BIf8agZEya10iM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692776226; x=1724312226;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=74IBfkjRvZuZoMf8kaNjwO4w+6eVW+uXSCL+B88ZnRM=;
 b=XSc6QFuqur14Mhr14C8RJ1vjdk3fwHWlBC60FAaF6yxCLDbC7Pxv7dS6
 PbuXXuFfzHC+Z4sOVc+X4alWXaO8Tje54M5HHb7RjqsfwR5F2ngg9Zx3e
 bCUIlMKU9aalro1gJ1bOs9Zhu4vazoYC9ArpNO/WsiFZIMrZ2vpvJEdfy
 D3hIn4kSKAPclYg/KOXF3Og7ZJFqh1AqhWg9yW1g6skrYMqCzdEWqKjkH
 0xUJmYElFqeR2R6sWJNxQwu3+Xrp2MYfcdi0OO94pDkBMa5Z9vH/6V93U
 mDHSCvdPH9KtfnCpXtL4Vhj8/FCfwjg33ORIFQbZL6CZRJbwtwdxqx1gF
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XSc6QFuq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/5] ice: remove
 ICE_F_PTP_EXTTS feature flag
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, August 16, 2023 5:01 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/5] ice: remove ICE_F_PTP_EXTTS feature flag
>
> The ICE_F_PTP_EXTTS feature flag is ostensibly intended to support checking
 whether the device supports external timestamp pins. It is only checked in
 E810-specific code flows, and is enabled for all E810-based devices. E822
and E823 flows unconditionally enable external timestamp support.
>
> This makes the feature flag meaningless, as it is always enabled. Just
unconditionally enable support for external timestamp pins and remove this
unnecessary flag.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1.
>
> drivers/net/ethernet/intel/ice/ice.h     | 1 -
>  drivers/net/ethernet/intel/ice/ice_lib.c | 1 -
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 4 +---
>  3 files changed, 1 insertion(+), 5 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
