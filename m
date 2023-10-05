Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 919E57B9DF0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 15:58:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 327FE83AAE;
	Thu,  5 Oct 2023 13:58:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 327FE83AAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696514309;
	bh=7B8EWPEmMlkrl3uaYJ9qVFzu/FH2ukqS4QJqv9tbnHI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ttdmu01Zy9ANB5+nGgU3qj1ykoodbbLIa8/eWAzoLWDUDC7XuGxX+RX/WbGChdOJa
	 ggAHm6iqUpVPKuTplRI3C3FHQVVEPdeQheFohXBTJ5r+T2nSNG+YgAuNbqJCfv45bY
	 hGzfRvY7duEQp4CfhNLD2XZwlCanhos/MAzx0S4Xxtgb8qRJDCPWn3vjhgzMJEbNCp
	 3WA1KZDn9/TFj6OJbvzLVuN707H5ohme/D7idoh9SZG0nDw1NXFs32ho3VsbgAHxQ7
	 DKlLwmDjfL7tc5YyePd0b3M3Kd39gbqsEuk4CziDWJjPIVfVbm7L6/4luH+hD7NG8G
	 7FFak1IrRcXOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DFCALgRygyh9; Thu,  5 Oct 2023 13:58:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0581983AA4;
	Thu,  5 Oct 2023 13:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0581983AA4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18BD91BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1E3460A84
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:58:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1E3460A84
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HGtdwqPQmSKz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 13:58:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9E83E60A70
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:58:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E83E60A70
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="368577819"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="368577819"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:58:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="867910201"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="867910201"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 06:58:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 06:58:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 06:58:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 06:58:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BIkiKGOtScXdzp/xL9RNKRxsnioba5FFFRtNRgJOh04nrXK9wXukO34anN3+3efc19HU6fjYjBY9+WTPfP7z7xqkEZ28jlfnUTAcec//MByA1VdKCCeeMUvWJZjO8pBBNd3v2ioWpJ/ig1n8Lmk4fj1r81H7wDZfj77Hsgl8cfCpmzNkqtH+hRUPf75+Dp2Bw8BrtgE2SsJgm6ZdXVgWrs7W3Z5Fv+rrqdfuUao9XA7CLD8nWjBpUstiSwwPrWZA2XyyBJytxh8npHqJCvZWJG3gfseyU9Pg+bG3IMBzVcXDbyF+MmxjdOVvXXZgi6uVTaB1YlQpoYNP/NbqmCFOTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hCfbGl0Td/7NnTQJ8kPTr/mU4KHB8/aeAgMNMphChZ4=;
 b=OMw+JO/rGvoNwpivcnr7XVNno/S3rsDQI80m/H+Iu0uTLpJGdVht5pNtejAgQY9LJqyyHW1d8mNhG/PX7ZWuv5LQLcflXKviPBTxr65P9LJnoD36MctBmdIyRSYHjJhOxPiMmG/1dv6RsCBeDi7S291p3wtY1qhxGlIBPCj9VFLR4LwZoGMD/k2gAmbH/un+bu4TwC9iTXPshWvccxTxuG7MR3k5GFqC9c0lgbZxOYfEt6MXePGwVcBQilMbv1v89035G9AXS9Tueaem5xdF4B1O8At6Yib8gZz28CkKSU4O7ZamPCTyHWWFnpPhlxm7s9t91lJyVjtzGAo0X6TULA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DS0PR11MB7651.namprd11.prod.outlook.com (2603:10b6:8:149::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.25; Thu, 5 Oct
 2023 13:58:17 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6838.029; Thu, 5 Oct 2023
 13:58:17 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Ido Schimmel <idosch@idosch.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max
 Power override
Thread-Index: AQHZ1qBBv7SVSOjez0eHlWI2L+3Nxa/6wcIAgAMXFgCAAydJcIAB/MqAgAL2T4CAEWnMgIAEjlqwgAlwSACAFh7YMA==
Date: Thu, 5 Oct 2023 13:58:17 +0000
Message-ID: <MW4PR11MB577610BC86B83874A398FD22FDCAA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230824085459.35998-1-wojciech.drewek@intel.com>
 <20230824083201.79f79513@kernel.org>
 <MW4PR11MB57768054635E8DEF841BB2A9FDE3A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZOsNhgd3ZxXEaEA5@shredder>
 <MW4PR11MB57766C3B9C05C94F51630251FDE7A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZO9dhzhK+psufXqS@shredder>
 <MW4PR11MB5776601FD7C2C577C78576A3FDE4A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZQB1HcpTsB2Sf6Co@shredder>
 <MW4PR11MB5776FD835D06ED08B07D3FD6FDF6A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZQwycrJW5nhXu0TF@shredder>
In-Reply-To: <ZQwycrJW5nhXu0TF@shredder>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|DS0PR11MB7651:EE_
x-ms-office365-filtering-correlation-id: b11220cb-8ece-422d-ed28-08dbc5ab2046
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V43ZiiHed0VMCxiNW9GcHexJ2CD13hYQM4cB61qAZHUQQSMV6CZSBQdYU80N0PyUSdC/JpFiKF6md6VCKZ/Z3GrWu0CrEuj6WJ+nPjYQHwWreWyAorJDZbl/tNc56F2E+sH+ODaDFrG80LdmsyG5cD0oKtZvwzepxaentzuP6/RMcJwrRsUnk73HjLLh2a8wbFhiC8Cfb4nq4oHkTUHYu3KFdyuQDyAA1WhdR1L7Zfl84XwH3u/4IM4iFslp3Nw5P59iE1s33AJ7tv9m3AA3DU2vvu9aW6ohsI/28lE4vCAB1uVH8vCOWfLbBR8EWPcocA3V0rk3cB+8mCIue+oyfWuqW61drk/eF3LaPrg5mZb8iT3cNwelLtrdXaCeUzyRl8v4qs2OciwTEGP0VeWspcDqVMcI181LPG1K4FZpVWv30eL2/hDgCCNsdGbrZOFdzZhECk5/k2D0SyUXh6M+9Dv8CSOQnX4/xSrQwBOg3z6KQm895JF8JPiGVCna/1gwh3+rpo+fnGS15GSTQjU0ZFLuN9HD0Gjbw6qtaWm4t38q6q17l0sU0dc8rwF+k8akASOARaSkXp5RXihmwBNywg2LKdyVAfmOS0l6SJqW4T4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(376002)(39860400002)(136003)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(26005)(9686003)(122000001)(82960400001)(966005)(478600001)(54906003)(316002)(76116006)(66946007)(41300700001)(66446008)(66476007)(66556008)(64756008)(7696005)(6916009)(71200400001)(38070700005)(53546011)(83380400001)(6506007)(38100700002)(5660300002)(55016003)(52536014)(8936002)(8676002)(86362001)(33656002)(4326008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8NSns82hD6VrxtPdIqqKK+x/f+f91fxHMG2CUTGZh4NdYVTVoSiVFP5iEOVc?=
 =?us-ascii?Q?7hLDVCvkEkRnacH24VkkO0wVQal0i/WZNvzumVOTt82Hf/Ufxc/J4CNdw6Bt?=
 =?us-ascii?Q?ga0+ByY125eZnvJ+vcDaNwFvBh0vMMEzrKkNhVp8HEblaVHlX0+1rcit1K9c?=
 =?us-ascii?Q?zgYrDPFKSOmotD38XQhPPjvQmFPzugcdwV5vpO8SOZKLvO3biNgVRpXWh9JK?=
 =?us-ascii?Q?FQxH4FZAklnr1TA8ak4rInGyYV8DbMSH35Igu7eKZ7lfH6JNyj2IHbbdsi8N?=
 =?us-ascii?Q?Ymu9hS4upwBwDYes84qBUaDA6cA4g+Quf7WhZfPvK2uw2XOPrMOzF1dBLxx5?=
 =?us-ascii?Q?EF2L5d8U8H3jRKLHfqn68OOE/PcJMsANlqmYT/afMPTeFJimQ/eKb6M2dyvQ?=
 =?us-ascii?Q?3CEKEo2S6nB4YgANCqHR9GRxyVva8EsiMcRvCx37wQrfdWT9fQRgWhtAtSVN?=
 =?us-ascii?Q?Jb8iyDugHIzTw4E6pyWatKTgAiuS1fkYOU8QmlDLmH8plviFtLW6ewO/SArl?=
 =?us-ascii?Q?LMoGJH1n1MBNIOqTy2A7K1h1IrDq5Zt40Lq+Fm3fD1t4NvS3mIw8Fo8XE5ww?=
 =?us-ascii?Q?Xt0W4IO4vPx6VyMZGBDVFlgNE7aHS0vfOyyccnZ96fexSZ5ZL+gTrH7flxkh?=
 =?us-ascii?Q?XHY4Y0WuBQzGfx98UXPBUZ9P5NLr84IzSg2hrOOJF2jIP+gB80UgzHO6LwnG?=
 =?us-ascii?Q?pRLFgiZvUyXEqABFYrnH7876Uovp5wCrc17RP3J9VFfoy2Dka23ujisi/5af?=
 =?us-ascii?Q?DP381kXxBpzVBDmEolau66Q0X+R5txPT++N7Z3HhPInYlpDcEaaeBrO8lAPO?=
 =?us-ascii?Q?5iGnTZtDA5UkYDbFVpKuW+pPSvjK3GccKxovurMfpYDOT2jbIkUvor9BIQa2?=
 =?us-ascii?Q?DJ+Ehkvl+sc8T5Z4BYubTiOsvJdlVbBw+3u6yCtSKbNkVHPJQo9RmDiMIolb?=
 =?us-ascii?Q?+KIOiKk64VxLUMF6VDYfqwgGIwgugPV9M+OmuY8vvMRC7j6728fa9tNNmht4?=
 =?us-ascii?Q?U/EyLzqyckLIN6c22huDmPedzyGpIjfQk/wBCQneDEhvegG6pwrs4K0jSiMC?=
 =?us-ascii?Q?rk4h+J2+l11Zg/mwI0TT3tbeTieSXt3XBRohMMwILHxnXXeeBF//NYfdCr/c?=
 =?us-ascii?Q?goLZAi2rCn2zWJJO3xJdYTNDuRGCuK9k35QS4czMtnL4yrbSN4EtKKamuUi1?=
 =?us-ascii?Q?CrbaE3Tx8UrxAcFAu9igq8ekXZkGiva4Q/MMy3Esny9B7t3n6xTloNljywFZ?=
 =?us-ascii?Q?3lAbM2W6daq0C/2hgqkdbtz1Qgk/+eDjPEKuLXqZcTw9B+hu0PWYSW0qPQRi?=
 =?us-ascii?Q?lg4dZXx4XcOKLJSj752P5JhyXjYtOV9Sl5fYT0ojGjWVd8LZsDKJfBHHP41u?=
 =?us-ascii?Q?iW/YRBXya45YZXWAgq055amvKirJsYvL2BjHDgnyQm9XASOljw7jfmDIaNA4?=
 =?us-ascii?Q?kjsAq6/Ejm9bnb7TaERIq3opbHXDZjiZjhpCGU5t8i4/pc9Zfq2t49emY8sO?=
 =?us-ascii?Q?7OMHCGjB4csQ3JchFNzN3OYGb0F75uSntJAZCI5jvao+VQOr439FR1ZYtO4l?=
 =?us-ascii?Q?e+TFBnVGNSSXgUQBsrYyWLHlKyzEwtkNBi2wToQ8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b11220cb-8ece-422d-ed28-08dbc5ab2046
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2023 13:58:17.4421 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1GZXI8Nv7dAHm/p3/JhZ1Y4y4bznari8QZTu8lBGC0ummIkYYOmJEdiwR854998A+dnPpf1GZ+WBUfSrtsvatomP0U+C4pkh5KbhrfyhCr8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7651
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696514301; x=1728050301;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SwQAbiKv8tfZMATdL0IzMcDSFGSxKf6OlZl1SM81bhI=;
 b=Mk+GgRSIQ2EqpmCmkR8cMiQGQMj53Iw0j0zfsuwbsLvm+aD9ecWcZMxr
 lCxnGvesswR/wWQckYRVMg9/okZ712d8IFIZ58H65ULToEQ3Qvo+qOlYG
 lvv5c08JL9D5o1zctO0k0RewwITilnXHGFFFC088E77W/350WjFVot+HU
 VsK6jVncWilKlsqSWCFbU0+7YXcsMQuPJLXUnPqO6mfohJUcKcqe3W8tR
 OnhMskFeOL9adOQ27qPK8apFqHptOv8rtfytbwAaSm8PhXmf9OGStW0vV
 rKeKy0TYEG5yxfKDV8nmdiZvJp0jIW/x0FF5I+icPa4p27MsJfKPM691P
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mk+GgRSI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max
 Power override
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
Cc: Jakub Kicinski <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "idosch@nvidia.com" <idosch@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ido
> Schimmel
> Sent: Thursday, September 21, 2023 2:09 PM
> To: Drewek, Wojciech <wojciech.drewek@intel.com>
> Cc: Jakub Kicinski <kuba@kernel.org>; idosch@nvidia.com; intel-wired-
> lan@lists.osuosl.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> netdev@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max Power
> override
> 
> On Fri, Sep 15, 2023 at 01:15:01PM +0000, Drewek, Wojciech wrote:
> > In ice driver port split works per device not per port. According to
> > /Documentation/networking/devlink/ice.rst, section "Port split":
> > 	The "ice" driver supports port splitting only for port 0, as the FW has
> > 	a predefined set of available port split options for the whole device.
> > And if you look at available port options (same file) you'll see that in case of
> "Split count" 1
> > only quad 1 is working. And in case of "Split count" 2 the second quad might
> be used. So, if we
> > increase max_pwr in the first quad in case of "Split count" 1 and then switch
> to "Split count" 2,
> > the second quad might end up with no link (because it will have decreased
> max_pwr).
> 
> But there's also an option where the second cage isn't actually used.
> Anyway, my suggestion is to allow user space to set / get the max power
> using ethtool and give user space visibility about link down reason via
> the ethtool extended state.

Thanks for discussion Ido, we will follow your suggestion.

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
