Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BEE76C7DE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 10:04:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E1B080C34;
	Wed,  2 Aug 2023 08:04:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E1B080C34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690963450;
	bh=+2ifUxFQ7vdPR9mnOO6Y1We8la9sjp1TSMk+G6wZi+U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NZ6AZ40mqBEDJR5va6JCIxUXO8cG6QJeZ9T7Gi6qy5sGRqdf87y5ksq9wFbq6nBCv
	 UH1kdd4GUSRIuS6vH/XxWq2uWxyQ4siwLJsOMYlJs2ABCYn8JhPNuvkai6g0gZtf+/
	 mARJl9XpVD8qLfa4wm7Rn7gOCMl7MaMj7dYSKWJwA5dvW+gJBohjYWogF0EGpxBEVH
	 oUW/ob3tl2/kIlCwp29D4ufcnwDxzYXUDRye8j/l5Q6KRZpvCV1E6oEm8vD8MA1Afm
	 +KYWKb/PXztVbke6/DFkqkH4aav7Q728WweiDPKvUBiCj4QH46aNDyIQSgoLCe8KN3
	 0acrB82kEHc2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qerqx6wcfdbx; Wed,  2 Aug 2023 08:04:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEBBA8202A;
	Wed,  2 Aug 2023 08:04:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEBBA8202A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D6481BF360
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 08:04:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A133680C17
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 08:03:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A133680C17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UG2ZDn2vUrHU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 08:03:29 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 02 Aug 2023 08:03:29 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 660E680B32
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 660E680B32
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 08:03:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="455879837"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="455879837"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 00:56:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="758652154"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="758652154"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 02 Aug 2023 00:56:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:14 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 2 Aug 2023 00:56:13 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MRjFvsHkGRymShKblEsKLbrimEpG1IwA7d0bY4sKHefzPg5yjNbu+qdC0y6uOEWoa/osLPj7w2EiyJsydh+ELOMI4e8rnnNOgfbZFT/9JhML9OtlJvhVOI9VmdNf9RvrzbxQVpTqlcKPeFmTNCXfDMfHRA09wckjaDlsSTd9yLN5OxZDkP6icvh3cRjKV3NoK6nUX3WY6anzANw+d/zYF4pLrebm6gSSmVgLU/ZgVn22ST5dRp1juKZZSr/ZtWGOjznyus2Db/WYF/15lRc3gbjq2HbYICUG7NGgV1/A0h4FCfehY1AkysZtCAmJKlmC7P0lJAS+Au0k5haCS9nmuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m8fthgkh16n8UFINIJCh/76n1FSTsHxK0n6xka3AwV4=;
 b=oRHic/+pOk4jToJZ0Te+vHSekzhbPNpvVp/edyG9geyx0+UHmUGZWisyP2sWG0KwFxvhKFH3H0A+kuo8UUzPKbIBPw11BoaFk/6UC1JoyLg4a4+DtLyGkhagMiKQYNjd755/M6c29wBPjUBmYJmpRJXkFH7jc65zwoChYZ7GD5JxJu10cw9Gk+9q5kCglrsTiEJJgD1idX0kr3x8T9ROdf6iaTCCIn2akL6U0zkVwVmq9zr5PyLRvFUUa5ZrKfHQlkhIfQFXzXCCG2KmLFB41NfCbhjoOO+rNLzSYgz24MDRlOesQe+OLswjjve6Sn0ufn12jvTTS40Uk4LintoErg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Wed, 2 Aug
 2023 07:56:05 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1%4]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 07:56:05 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 03/15] ice: init metainit
 table for parser
Thread-Index: AQHZl3FPyR95ttSOYka2I8cWpZi/X6/JBSYAgA3bXKA=
Date: Wed, 2 Aug 2023 07:56:05 +0000
Message-ID: <DM6PR11MB37232D5532198463659809BFE70BA@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230605054641.2865142-4-junfeng.guo@intel.com>
 <1a1992ef-40c8-ce3d-1fd2-fd223eb14955@redhat.com>
In-Reply-To: <1a1992ef-40c8-ce3d-1fd2-fd223eb14955@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|PH0PR11MB5657:EE_
x-ms-office365-filtering-correlation-id: 999a2125-5ddc-46be-b614-08db932dec5d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RdJllThUhpf+nNVcwcpISLHqW5XwGHW1Zsz31mZ9YM/UReiDme9MbxNPr1UQR6M1gO5b6jRGFt8DWm9MZk0JPEAwZ3npkKK6G598NVycwGOV8jB12brUT0AroDIehr6GAEHqBqLb8333AbW3uWE3MJGrX6SAtw+66II2Bidijjm7qeh/1tsXcRs7vIIDMUYuKqvOHwsWXn5pZ9t6BnXJ2JFXzskGOO4WPNqF1VnSEIMqNH03ScHm216p07mhjBpCO9wNsy1mL182Tm1BpXuoVl7kXbmokyPYhK+HjIHv8BIqWGF3PC4K9CibhUFHVSdV4sXXZXf42+mukxmR8Q2f5xcrJwuqEPxfF2iHnnXgjE1EaBNir5VkUjBc8GDa/8lpXa3rK9pQwpL8tcOijpFOLevF5K6/rL7ZcPcwhZN/h2K9c+6ydPaUvYpTbkevj6QVO1tu/atckyiY9I7kHRxxdvKSOWKvi79sO18BNInXMEgAMwwA7EwHBxpt4/O6W3YHXI3BDcDGBIW9qTwhMcJNyCP1sS/RoPmEb8LClISmpNSYaxUZVzKWZj+ZSvq43QXwVUvmU2P+IfFxeDRMksFVm3G6RhP0GAY3JSsLgqlwjIA6ZNh4/pesCQtHKL7cSOa6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(136003)(396003)(346002)(451199021)(55016003)(186003)(9686003)(316002)(86362001)(478600001)(122000001)(54906003)(110136005)(38100700002)(76116006)(71200400001)(66946007)(66556008)(66476007)(66446008)(33656002)(64756008)(7696005)(4326008)(82960400001)(6506007)(53546011)(41300700001)(26005)(52536014)(8676002)(5660300002)(8936002)(30864003)(2906002)(38070700005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wd7ov6U516VQ/Ct5WNPp6m3Bzcn9Cue9xmYx4PD7bQ+wVhtQ8A6ngJ0CZpKK?=
 =?us-ascii?Q?jS4ZAIMkZchMcHDmQQSra6qMLfAVXKj0VoVnC218XFTRSGmG81h7+KHBn0wn?=
 =?us-ascii?Q?XX2tl4dqyFLGw8v/h5w2U5vEkF74dNJDrQfePLd1tyTC2sklU8b3Dyy7jxT/?=
 =?us-ascii?Q?Lq3y0CvmcBSc+DS5o06lTiS8G1B5i864u3Y3/0WV1vJI+qFacQNuNAqA9B3O?=
 =?us-ascii?Q?J/NM2sNDT+TLeBwQXvOkPZsHPgWewdtff8P9703+JPg1NFWHDju8ToY2nWZF?=
 =?us-ascii?Q?mQpbzImNKIhp1HAFR6AnWSzltNVFaHp0+ZZPFEngpoujHKRboZAHIqlRl5v6?=
 =?us-ascii?Q?B5xHbcS7eq4gFfPYNMGoPgqiBQCwA3Fhx8p4yBk7cE/NX64UEdIrHxCvfiPJ?=
 =?us-ascii?Q?aPfqJbmKuodbQs+vxNQBceMQ3AxCzHvOgQDADLGmKZgGlo5/ZVDxiVZeliUM?=
 =?us-ascii?Q?aKIcIm58oVA+nzR+41UQa18/ryUs270bMCzALVwwWIgNPsibtOJZs4C7q4fT?=
 =?us-ascii?Q?eGcWzYwBif+A8u6DoTNZ8B2OdJo8OqnD5duJyFUb/jhUz0zxd7Z3KFDC8WF6?=
 =?us-ascii?Q?3jx3in9EPdlyvhtGSjqX3UOiJvoZlrRTe9gT41OnKBjFsNIPL3dizjjuJzlq?=
 =?us-ascii?Q?Q+miEGW1kD2zApc9lWCv8azBQGz5Lxk/PZ0ROLJ2gvdbseXWRhs0V5Mg4Em9?=
 =?us-ascii?Q?IIQmoUbSuR89whQqzo0tez5lzZbDjw7YBtxWHQmwmDsy7hK+reCqudrwIhu1?=
 =?us-ascii?Q?jbz/EFv2mzujxrXwRK0aP6KbfeN4OqHBHz3ZgIYJa4ezl0/xWPNN4glSCzKQ?=
 =?us-ascii?Q?udCwLaQZAZ4Xl8mg3bmfZ5JyvCg/Xxahkniy7Cn0ETBsjE/YFUyhQd7btPCK?=
 =?us-ascii?Q?03PSVFa2oJB8buIetBteedmB6FRC1a1zUau4qBPrnp0HF4UByS+D2BcMeK8A?=
 =?us-ascii?Q?rPMvIleDy7lM+mM6skP1hInVz7rlyttQl5AB0EFudvFkh4qdUXMivUojQoDg?=
 =?us-ascii?Q?WFkllDt8K3F0aYMj3P2/eiz0aEHfvbl77xPc60Xfu5J61ova5ZlCJ0wcWlCv?=
 =?us-ascii?Q?JGJw3zXCia/npvYVSneqmiN4jZ2gBtTAh+RYuKLsnaAd3NpoSlaa8rBt9Dyg?=
 =?us-ascii?Q?A5lL8gsJTq+Ee2ELBd28I4WWgSy06xvsFMzZXNYtPDr2MityEmSzjZzQFlw+?=
 =?us-ascii?Q?k3+rLjyJObhuyVzKNstm6ijMA7l/3vthjDY0JGLH1YlandBr8Q0iWVudrl1I?=
 =?us-ascii?Q?lIzRnr13kFpdckl98NwC1NxQTV1/BpgpzaYBEv58Y+voz1s5mTTf6DrC6+9L?=
 =?us-ascii?Q?J5TCiGqoWJaPD6SgBipTquktthv99Bh1HfVEnRfbfrXNBTFA3VPxWjwX6rqE?=
 =?us-ascii?Q?jfpPeds/5ZIPWik5UQA5ZxrI6ulvIjBvtRRu8ksHq720kfeGAcZuncOS5hBY?=
 =?us-ascii?Q?cYlUY4/3Mre3TJnt6zqTjLIRWA1BjTUUTFGypK2mIZIWDEj8dNPLkBqo7hQR?=
 =?us-ascii?Q?0qJSXdKtcV+ypGtBsWCoh9bzgvLv0TMwFE7MW2sB0qvwIv9GKXO5+7XgsgkC?=
 =?us-ascii?Q?nIJ9fpn9qjOiLSMnA8jb4Oewg4Qu0pFPHdKg9adR?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 999a2125-5ddc-46be-b614-08db932dec5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2023 07:56:05.1123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZbZ1U/8cTODbHPtdmI/5ri8cf7WyeVVbe7wGJScksWXKneBwW9AUzmN5tO9cG00Ydz/YE47cMdmAzTk1YlfUxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690963409; x=1722499409;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4KCgUGN6VhBoBQfjatKUAJZgsqwYcePR81Aw6CeiE1k=;
 b=UsbMD1GntyAuArTM/tT3E9z4iDWbrZsjSB4ZGIEza6AFhhYyiRE67RuE
 VwH3LZUsQxddkn+IshP4PebGzCuuZ3KQTkTSfQDWYZKevZULiFFl2wX2J
 zdrlWYJ+3D9T1KCRN2c7by5J2LXj0g1b9diAd747V4OWmDokPzwxC+Pbk
 i66iXrtQpWWCDXCOd449yD3Cth0fAQTgYNe71SlSmJpvvqECxTnpC04ZA
 7KbZNZ4y+N5smoEqCcFr6ohly/T45qF1wfJNEtUy6NfLqs0QeSbya4mz4
 KdknpoaqL9FpcT89yeD5MTTXLCX+LBtfObaaihcgO6DLnq2am+zLr+Gxw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UsbMD1Gn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 03/15] ice: init metainit
 table for parser
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Ivan Vecera <ivecera@redhat.com>
> Sent: Monday, July 24, 2023 18:32
> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; mschmidt
> <mschmidt@redhat.com>; poros <poros@redhat.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 03/15] ice: init metainit
> table for parser
> 
> See inline comments...
> 
> On 05. 06. 23 7:46, Junfeng Guo wrote:
> > Parse DDP section ICE_SID_RXPARSER_METADATA_INIT into an array of
> > struct ice_metainit_item.
> >
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_metainit.c | 155
> ++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_metainit.h |  45 +++++
> >   drivers/net/ethernet/intel/ice/ice_parser.c   |  11 ++
> >   drivers/net/ethernet/intel/ice/ice_parser.h   |   2 +
> >   .../net/ethernet/intel/ice/ice_parser_util.h  |   1 +
> >   5 files changed, 214 insertions(+)
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.c
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.h
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.c
> b/drivers/net/ethernet/intel/ice/ice_metainit.c
> > new file mode 100644
> > index 000000000000..911099a38087
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_metainit.c
> > @@ -0,0 +1,155 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#include "ice_common.h"
> > +#include "ice_parser_util.h"
> > +
> > +#define ICE_METAINIT_TABLE_SIZE 16
> > +
> > +/**
> > + * ice_metainit_dump - dump an metainit item info
> > + * @hw: pointer to the hardware structure
> > + * @item: metainit item to dump
> > + */
> > +void ice_metainit_dump(struct ice_hw *hw, struct ice_metainit_item
> *item)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
> > +	dev_info(ice_hw_to_dev(hw), "tsr = %d\n", item->tsr);
> > +	dev_info(ice_hw_to_dev(hw), "ho = %d\n", item->ho);
> > +	dev_info(ice_hw_to_dev(hw), "pc = %d\n", item->pc);
> > +	dev_info(ice_hw_to_dev(hw), "pg_rn = %d\n", item->pg_rn);
> > +	dev_info(ice_hw_to_dev(hw), "cd = %d\n", item->cd);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_a_ctrl = %d\n", item-
> >gpr_a_ctrl);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_a_data_mdid = %d\n",
> > +		 item->gpr_a_data_mdid);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_a_data_start = %d\n",
> > +		 item->gpr_a_data_start);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_a_data_len = %d\n",
> > +		 item->gpr_a_data_len);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_a_id = %d\n", item-
> >gpr_a_id);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_b_ctrl = %d\n", item-
> >gpr_b_ctrl);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_b_data_mdid = %d\n",
> > +		 item->gpr_b_data_mdid);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_b_data_start = %d\n",
> > +		 item->gpr_b_data_start);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_b_data_len = %d\n",
> > +		 item->gpr_b_data_len);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_b_id = %d\n", item-
> >gpr_b_id);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_c_ctrl = %d\n", item-
> >gpr_c_ctrl);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_c_data_mdid = %d\n",
> > +		 item->gpr_c_data_mdid);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_c_data_start = %d\n",
> > +		 item->gpr_c_data_start);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_c_data_len = %d\n",
> > +		 item->gpr_c_data_len);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_c_id = %d\n", item->gpr_c_id);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_d_ctrl = %d\n", item-
> >gpr_d_ctrl);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_d_data_mdid = %d\n",
> > +		 item->gpr_d_data_mdid);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_d_data_start = %d\n",
> > +		 item->gpr_d_data_start);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_d_data_len = %d\n",
> > +		 item->gpr_d_data_len);
> > +	dev_info(ice_hw_to_dev(hw), "gpr_d_id = %d\n", item-
> >gpr_d_id);
> > +	dev_info(ice_hw_to_dev(hw), "flags = 0x%llx\n",
> > +		 (unsigned long long)(item->flags));
> > +}
> > +
> > +/** The function parses a 192 bits Metadata Init entry with below
> format:
> > + *  BIT 0-7:	TCAM Search Key Register (mi->tsr)
> > + *  BIT 8-16:	Header Offset (mi->ho)
> > + *  BIT 17-24:	Program Counter (mi->pc)
> > + *  BIT 25-35:	Parse Graph Root Node (mi->pg_rn)
> > + *  BIT 36-38:	Control Domain (mi->cd)
> > + *  BIT 39:	GPR_A Data Control (mi->gpr_a_ctrl)
> > + *  BIT 40-44:	GPR_A MDID.ID (mi->gpr_a_data_mdid)
> > + *  BIT 45-48:	GPR_A MDID.START (mi->gpr_a_data_start)
> > + *  BIT 49-53:	GPR_A MDID.LEN (mi->gpr_a_data_len)
> > + *  BIT 54-55:	reserved
> > + *  BIT 56-59:	GPR_A ID (mi->gpr_a_id)
> > + *  BIT 60:	GPR_B Data Control (mi->gpr_b_ctrl)
> > + *  BIT 61-65:	GPR_B MDID.ID (mi->gpr_b_data_mdid)
> > + *  BIT 66-69:	GPR_B MDID.START (mi->gpr_b_data_start)
> > + *  BIT 70-74:	GPR_B MDID.LEN (mi->gpr_b_data_len)
> > + *  BIT 75-76:	reserved
> > + *  BIT 77-80:	GPR_B ID (mi->gpr_a_id)
> > + *  BIT 81:	GPR_C Data Control (mi->gpr_c_ctrl)
> > + *  BIT 82-86:	GPR_C MDID.ID (mi->gpr_c_data_mdid)
> > + *  BIT 87-90:	GPR_C MDID.START (mi->gpr_c_data_start)
> > + *  BIT 91-95:	GPR_C MDID.LEN (mi->gpr_c_data_len)
> > + *  BIT 96-97:	reserved
> > + *  BIT 98-101:	GPR_C ID (mi->gpr_c_id)
> > + *  BIT 102:	GPR_D Data Control (mi->gpr_d_ctrl)
> > + *  BIT 103-107:GPR_D MDID.ID (mi->gpr_d_data_mdid)
> > + *  BIT 108-111:GPR_D MDID.START (mi->gpr_d_data_start)
> > + *  BIT 112-116:GPR_D MDID.LEN (mi->gpr_d_data_len)
> > + *  BIT 117-118:reserved
> > + *  BIT 119-122:GPR_D ID (mi->gpr_d_id)
> > + *  BIT 123-186:Flags (mi->flags)
> > + *  BIT 187-191:rserved
> > + */
> > +static void _metainit_parse_item(struct ice_hw *hw, u16 idx, void
> *item,
> > +				 void *data, int size)
> > +{
> > +	struct ice_metainit_item *mi = item;
> > +	u8 *buf = data;
> > +	u64 d64;
> > +
> > +	mi->idx = idx;
> > +	d64 = *(u64 *)buf;
> > +
> > +	mi->tsr = (u8)(d64 & 0xff);
> > +	mi->ho = (u16)((d64 >> 8) & 0x1ff);
> > +	mi->pc = (u16)((d64 >> 17) & 0xff);
> > +	mi->pg_rn = (u16)((d64 >> 25) & 0x3ff);
> > +	mi->cd = (u16)((d64 >> 36) & 0x7);
> > +	mi->gpr_a_ctrl = ((d64 >> 39) & 0x1) != 0;
> > +	mi->gpr_a_data_mdid = (u8)((d64 >> 40) & 0x1f);
> > +	mi->gpr_a_data_start = (u8)((d64 >> 45) & 0xf);
> > +	mi->gpr_a_data_len = (u8)((d64 >> 49) & 0x1f);
> > +	mi->gpr_a_id = (u8)((d64 >> 56) & 0xf);
> > +
> > +	d64 = *(u64 *)&buf[7] >> 4;
> > +	mi->gpr_b_ctrl = (d64 & 0x1) != 0;
> > +	mi->gpr_b_data_mdid = (u8)((d64 >> 1) & 0x1f);
> > +	mi->gpr_b_data_start = (u8)((d64 >> 6) & 0xf);
> > +	mi->gpr_b_data_len = (u8)((d64 >> 10) & 0x1f);
> > +	mi->gpr_b_id = (u8)((d64 >> 17) & 0xf);
> > +
> > +	mi->gpr_c_ctrl = ((d64 >> 21) & 0x1) != 0;
> > +	mi->gpr_c_data_mdid = (u8)((d64 >> 22) & 0x1f);
> > +	mi->gpr_c_data_start = (u8)((d64 >> 27) & 0xf);
> > +	mi->gpr_c_data_len = (u8)((d64 >> 31) & 0x1f);
> > +	mi->gpr_c_id = (u8)((d64 >> 38) & 0xf);
> > +
> > +	mi->gpr_d_ctrl = ((d64 >> 42) & 0x1) != 0;
> > +	mi->gpr_d_data_mdid = (u8)((d64 >> 43) & 0x1f);
> > +	mi->gpr_d_data_start = (u8)((d64 >> 48) & 0xf);
> > +	mi->gpr_d_data_len = (u8)((d64 >> 52) & 0x1f);
> > +
> > +	d64 = *(u64 *)&buf[14] >> 7;
> > +	mi->gpr_d_id = (u8)(d64 & 0xf);
> > +
> > +	d64 = *(u64 *)&buf[15] >> 3;
> > +	mi->flags = d64;
> > +
> > +	d64 = ((*(u64 *)&buf[16] >> 56) & 0x7);
> > +	mi->flags |= (d64 << 61);
> > +
> > +	if (hw->debug_mask & ICE_DBG_PARSER)
> > +		ice_metainit_dump(hw, mi);
> > +}
> 
> Do not use hardcoded values for indices, masks and shifts and use macros
> or enums with symbolic names instead.

Sure, make sense! Will update in the coming version. Thanks!

> 
> > +
> > +/**
> > + * ice_metainit_table_get - create a metainit table
> > + * @hw: pointer to the hardware structure
> > + */
> > +struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw)
> > +{
> > +	return (struct ice_metainit_item *)
> > +		ice_parser_create_table(hw,
> ICE_SID_RXPARSER_METADATA_INIT,
> > +					sizeof(struct ice_metainit_item),
> > +					ICE_METAINIT_TABLE_SIZE,
> > +					ice_parser_sect_item_get,
> > +					_metainit_parse_item);
> > +}
> > diff --git a/drivers/net/ethernet/intel/ice/ice_metainit.h
> b/drivers/net/ethernet/intel/ice/ice_metainit.h
> > new file mode 100644
> > index 000000000000..aa7a9e178820
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_metainit.h
> > @@ -0,0 +1,45 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#ifndef _ICE_METAINIT_H_
> > +#define _ICE_METAINIT_H_
> > +
> > +struct ice_metainit_item {
> > +	u16 idx;
> > +
> > +	u8 tsr;
> > +	u16 ho;
> > +	u16 pc;
> > +	u16 pg_rn;
> > +	u8 cd;
> > +
> > +	bool gpr_a_ctrl;
> > +	u8 gpr_a_data_mdid;
> > +	u8 gpr_a_data_start;
> > +	u8 gpr_a_data_len;
> > +	u8 gpr_a_id;
> > +
> > +	bool gpr_b_ctrl;
> > +	u8 gpr_b_data_mdid;
> > +	u8 gpr_b_data_start;
> > +	u8 gpr_b_data_len;
> > +	u8 gpr_b_id;
> > +
> > +	bool gpr_c_ctrl;
> > +	u8 gpr_c_data_mdid;
> > +	u8 gpr_c_data_start;
> > +	u8 gpr_c_data_len;
> > +	u8 gpr_c_id;
> > +
> > +	bool gpr_d_ctrl;
> > +	u8 gpr_d_data_mdid;
> > +	u8 gpr_d_data_start;
> > +	u8 gpr_d_data_len;
> > +	u8 gpr_d_id;
> > +
> > +	u64 flags;
> > +};
> 
> The field names are not very descriptive except idx and flags. Any
> documentation in comment would be helpful.

Same here, there is no more meaningful description in the spec.
But we will try if we can add some doc here. Thanks!

> 
> > +
> > +void ice_metainit_dump(struct ice_hw *hw, struct ice_metainit_item
> *item);
> > +struct ice_metainit_item *ice_metainit_table_get(struct ice_hw *hw);
> > +#endif /*_ICE_METAINIT_H_ */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> b/drivers/net/ethernet/intel/ice/ice_parser.c
> > index a35f45964c9e..a1f28395c1a9 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> > @@ -6,6 +6,7 @@
> >
> >   #define ICE_SEC_DATA_OFFSET				4
> >   #define ICE_SID_RXPARSER_IMEM_ENTRY_SIZE		48
> > +#define ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE	24
> >
> >   /**
> >    * ice_parser_sect_item_get - parse a item from a section
> > @@ -28,6 +29,9 @@ void *ice_parser_sect_item_get(u32 sect_type,
> void *section,
> >   	case ICE_SID_RXPARSER_IMEM:
> >   		size = ICE_SID_RXPARSER_IMEM_ENTRY_SIZE;
> >   		break;
> > +	case ICE_SID_RXPARSER_METADATA_INIT:
> > +		size = ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE;
> > +		break;
> >   	default:
> >   		return NULL;
> >   	}
> > @@ -117,6 +121,12 @@ int ice_parser_create(struct ice_hw *hw,
> struct ice_parser **psr)
> >   		goto err;
> >   	}
> >
> > +	p->mi_table = ice_metainit_table_get(hw);
> > +	if (!p->mi_table) {
> > +		status = -EINVAL;
> > +		goto err;
> > +	}
> > +
> >   	*psr = p;
> >   	return 0;
> >   err:
> > @@ -131,6 +141,7 @@ int ice_parser_create(struct ice_hw *hw, struct
> ice_parser **psr)
> >   void ice_parser_destroy(struct ice_parser *psr)
> >   {
> >   	devm_kfree(ice_hw_to_dev(psr->hw), psr->imem_table);
> > +	devm_kfree(ice_hw_to_dev(psr->hw), psr->mi_table);
> >
> >   	devm_kfree(ice_hw_to_dev(psr->hw), psr);
> >   }
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h
> b/drivers/net/ethernet/intel/ice/ice_parser.h
> > index b5a3c473666a..8fcc10479260 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
> > @@ -9,6 +9,8 @@ struct ice_parser {
> >
> >   	/* load data from section ICE_SID_RX_PARSER_IMEM */
> >   	struct ice_imem_item *imem_table;
> > +	/* load data from section ICE_SID_RXPARSER_METADATA_INIT
> */
> > +	struct ice_metainit_item *mi_table;
> >   };
> >
> >   int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser_util.h
> b/drivers/net/ethernet/intel/ice/ice_parser_util.h
> > index 6259d3d97b23..59c67f1a1951 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser_util.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser_util.h
> > @@ -5,6 +5,7 @@
> >   #define _ICE_PARSER_UTIL_H_
> >
> >   #include "ice_imem.h"
> > +#include "ice_metainit.h"
> >
> >   struct ice_pkg_sect_hdr {
> >   	__le16 count;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
