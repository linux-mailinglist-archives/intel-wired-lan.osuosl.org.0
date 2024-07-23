Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B369939F93
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 13:17:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C443940425;
	Tue, 23 Jul 2024 11:17:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i4pyzuJz3c5C; Tue, 23 Jul 2024 11:17:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD6E94043A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721733431;
	bh=0ag/C8dbgr+3r1zjKFxoTGVp+8Ux4MSGp0qMxYSAKDU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j7s8xXQrwr1zmgLbJVAanXXAnQ1mw95HZzI5LSzY2HfLmO4up6RFrxvsbYEWc2RBe
	 srnfR/9ULuw2FEFuc6TJJ63HFe/x6TzcT6Pjc7WM0+ezTlr5AGo4yGY4SVLnOtMHvL
	 i32r4oXGh/6z2HaJdNQQUxP5BOxyDYpYpNHrNy1v/rd5LtFOMAantmyRNMrnMQjeqU
	 vrxG4dDsQnpFutrzeRc5CAtggYc+0B62ierXTwAi7oUsvRB6KL3VDKKcw5sSwlqe/F
	 V6rcFXk91cF2vUZTNnzW12VizYZCgC9kfRMfwJ+zDgSKchdRRjuAkPXlpX14WFDaHm
	 X8fQ0cV5F89sA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD6E94043A;
	Tue, 23 Jul 2024 11:17:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5CD91BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9FD7D4025D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:17:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZBzfkzzmOR4e for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 11:17:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5A5FE40119
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A5FE40119
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A5FE40119
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:17:08 +0000 (UTC)
X-CSE-ConnectionGUID: a1GhpVFCREqF/DQGTSWAiQ==
X-CSE-MsgGUID: +00jc4AURsCN6sUfsnksvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19052085"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19052085"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:17:07 -0700
X-CSE-ConnectionGUID: gDckneKzQ42gTTM7UHpm7Q==
X-CSE-MsgGUID: AofbDrFSTfquciYd29DVlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52437129"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 04:17:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:17:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:16:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 04:16:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 04:16:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T8+zf8K3Q6mz7+E6pQPOUou9CoPIoT76jSiaIf6/g0QxTmhMVrUF9gWaTHgZDaLE+UVfD216G+jQloZJGJR77j79BBRG1iT4jOGOeVLX66Z+3ATfSk/jrOTK3szUANqE7T/LuoGchE7CJt/QNBjYFGeohwk53ELuU/2oC4RwWTYrOr3M6gClsrCz9G0g33xh09nLXASyPN6VZIJuyHzMtuXiRZ7uyH2tU6yF3TKzvLwRpxRP8NAONNnQrfV3nO8K6O0Ew2JMt9/AgbfPVoqbT+QPsVCwKqXEq1lYawEOgpw5gn9DabtICIYrSjoJlECtkpPueiWUlDklht0stO2Xgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ag/C8dbgr+3r1zjKFxoTGVp+8Ux4MSGp0qMxYSAKDU=;
 b=gzNZnh/gbf2hnojj+Hjj4eP2QVoBIwIk9nsyHDvhp/0IjNCCUdfMthucPme0hGXxOBDDJn6axyVRGeh9qLJf6icbZtn5noAHVYPruvZUWnMVlynGrqF+RQ9CLawTK4CqDHj/cEz/RmsEcUuFeuLCMX9TwgQylzLKRQaHO2kqJNCsS/PFogFnRH6QIFCc/lXIquNP/LwegKeSmqb9Xe869jKNy7LqqMnNlCioWuIVZ0gQpVOqNEk0SG0TVLRWbHqTc1SJj2YSEzOoBdceCvsSKlq3g/jb0vlrDfDtWY3DIx3q6kLk237vNDdsB99SMe6Ms+jrx922QoiE4DfmfPHI+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DM6PR11MB4611.namprd11.prod.outlook.com (2603:10b6:5:2a5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.15; Tue, 23 Jul
 2024 11:16:10 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 11:16:09 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v5 06/15] ice: base subfunction aux
 driver
Thread-Index: AQHauAOe/c8wTdep9kOh2J+CNzLzm7IEc0xw
Date: Tue, 23 Jul 2024 11:16:09 +0000
Message-ID: <SJ0PR11MB586533A2DBB709FF0CCF24B78FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-7-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240606112503.1939759-7-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DM6PR11MB4611:EE_
x-ms-office365-filtering-correlation-id: 4a676027-3b0e-4808-c645-08dcab08dacb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?dhAG+L/1DglIe6DyLRrxXgD8oCCLSNQ7a35jvO07qrGTbK9pDxzvO9Jlw9q7?=
 =?us-ascii?Q?o6Vh7AHWDt5B8mPC7A62dDgCg+FsRWR39dhKDzeRNYUdSoME4+xAw55GcLr/?=
 =?us-ascii?Q?Hm2gp7Rb5Zo0QfI7JKdMtVcdoU1VvLpva17J82p99r1J4+EJPGEHt7HnDAZH?=
 =?us-ascii?Q?j4gqM2CfsUjFSn4lk1pUQ4iKWSxRsiR/LP5+y3SGhC4GaMJonLFXDoJiUUgP?=
 =?us-ascii?Q?VNmCL+nuGQJgVAFfMr83W2ImALJV67tpA/vnb6uwMmssY5CxHUwFnk83RM4n?=
 =?us-ascii?Q?CYUMojdCSLn4JqAnKtfXCelzYSpBEVpEhbTq/pZPX/adSyQOSHsSMMXsVoYn?=
 =?us-ascii?Q?uzVyS1vdUImh5awwZz+CcTpsqO9KBujq3wrWsmHBYZ8yY6meaeXKXFx1ndYG?=
 =?us-ascii?Q?v9EZMX8tfdmfwY3m+YBp7ylupFDxZHe/vOn0rywHCEAHVcazNtLSiucblJIz?=
 =?us-ascii?Q?t5XOl4uifOf1DMhToKJRpK8XvuhirEGZBNFu/+mgYLSHD2EFimN7H7xPfwHB?=
 =?us-ascii?Q?MDf3HKKoHVrzxkbghbhliBQhanFXo/UojCvW5lNWUGwXf75H9vvZzUX6AAsZ?=
 =?us-ascii?Q?8ak/lofEGapYK6An9Lj4PnkUX3qEOOTFZKuUkQGUTpRVdqZxrVV7QjvX710f?=
 =?us-ascii?Q?E7CxFWJJ+lBSxrtiJT6bTGxWjxTypOBBSrl5t3KLs2socKVzYeiZCCFe/crQ?=
 =?us-ascii?Q?g/Cx7+Ksocz1imv8RDdUYHQ/cBoEDBk90DQzaZQ66vJ9wxdgjw4DZ5jo2EYp?=
 =?us-ascii?Q?C1r/Yid3YANPpQN3m2/TXELD7T2wqINnLFF61f6V8DARih3vj2aQoaSJ2u5M?=
 =?us-ascii?Q?0M1imYlTAJxIxlOSyRW1HS40sTn54CXkhAT5zUVPLvZJcP7nhhH1XrVn+UEg?=
 =?us-ascii?Q?Fw9BSwO+WDuQl07XBZWPHSU08qTVSbih3Q7RTH+jffLnairf2eoDiIMTRDjy?=
 =?us-ascii?Q?0gRw1zZ92quXbCXZE58FjgvWx5A5xuE8sjc0lKBqKoEqd3aJR2anlZHqby4o?=
 =?us-ascii?Q?Nq8mENSxpC3b0xSgFYEApQy/y0YfIMJ1yEzuin3w21ReVMaKVbWCx6m5mdHu?=
 =?us-ascii?Q?o6y4nQzV4obLaPNqNqj9mknFstPf356X3alg1QdxbI5BQsSfHb4McaREKSnC?=
 =?us-ascii?Q?Zc/iH+f7hLyEp1hwC0ljZsu9g+L0aX8bsn+FKot6XWxEaZ1A2a6ywE/Ncbuy?=
 =?us-ascii?Q?XBH8dLAPijlxKlaGq2v6FIQMvDPMhlpsK6rk7CT70XwMV0zoQGjSo+r6iF5G?=
 =?us-ascii?Q?NT3JfUWJEvLXZM1Ikmbg8G+JKE11B3zgjcj2H6KQRVKbW205tSJnZjlLMP3R?=
 =?us-ascii?Q?yrV9suo8gPmm3899k20ZqimG4IOAl4pPMy7qxrh7GwEKIlr+HLOg9riYpHW3?=
 =?us-ascii?Q?TyvKk7+xYSHyNz3xanWsN58L17CbLAqBMxbQ592HiE9OzvamzQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?deNxgJvDuiteszshorzo/p/moRXG4I5fHtBpQ1r06hPG1PXovX1gHUM3oCJQ?=
 =?us-ascii?Q?cygF8eZ64YVZ9himV7JPa9Yrka9oT64NQ1a2YeWEcj4CDcUNX32zlrEumwpB?=
 =?us-ascii?Q?tIugjeC4qUwCciD13PpHjk/MEPNSf25cYOf7sO/R0TnFmSBBGuQg92vR9v7C?=
 =?us-ascii?Q?DcADiZlcCCrvi1ejiTrXAbmmkeUUL/xd+XfPC2l+IwPrCaj4FFZ4zrkxIK4W?=
 =?us-ascii?Q?UfK+SF9n8zHXyVGAIdeVatLrHD3BSJabhqbmyY4aXvnU+R1uhzJQ3vivNFz/?=
 =?us-ascii?Q?qQTPWshtk3L4hJd3nuZOmjX8cUafRTY8smKxAsM/ORnxj25+qXQymEeWkt52?=
 =?us-ascii?Q?j4SDVrcciFdzpcSPCtLsBNI+qbcqQPUZ6cf+vQdR87pg95VXmBquaVH46Oct?=
 =?us-ascii?Q?9UVGvTJkegfEOTHysWNUbIsEZcld+LyNkXyv7K/ddLfSwr/KfrR9wmPmkH1y?=
 =?us-ascii?Q?CWqMnBVow/YLRUpS+t4nTWnthGB5oFOV3/uiwahZ6yjHiC4ACfYcp+AG3/lP?=
 =?us-ascii?Q?d+fMm0f/BtT3Xk3KRaq+Bcn8l3wpkQ5+jFaHYA8rvgRltyL/eGywmk8UqDME?=
 =?us-ascii?Q?PH57nzEHZHJrD63ySKtTq2JIOdGUfohXDZluQdEBW+ixlCU6Iaq46sGmTtfB?=
 =?us-ascii?Q?lpClYSSB+ucuXXpjP7XEY8FHoVCPChiWU0mP2/5CFyG9KKqFqYEbHfN3iHKE?=
 =?us-ascii?Q?64ifPPbvYFrn2CS0VP3ovq7A6nkyL/eJcle5JMl772K/pSV/Vs1UiSX4kb+v?=
 =?us-ascii?Q?56tFeZ/7QSOLYSPUsSj5EF06U0FfBNe2NXsdPEye087veOGI7B+qY6yfEavy?=
 =?us-ascii?Q?HGCrswPZbSJWJDZnNIdPoQeio0MIPdVY+sOBfhv37fCEzc7XLuUd8tTp78mr?=
 =?us-ascii?Q?A9QhQ7aIjsGHnOV9EWG0eUICoFR2yymPAVrjJYCjdabeMoSZU8ZNXVMRoeAz?=
 =?us-ascii?Q?6oTsCV5t8RmVYZWtTWxQCH+67SfbyrZt8LiA5cy5lAefkktTJvuqNptDZ8Di?=
 =?us-ascii?Q?mKGJwj9yHSGhnGrF0NYg90tZWjQKg609fQztcC0Prk9g9/t0dDpnJC/wNasp?=
 =?us-ascii?Q?InjmdX4ELQ93xU971GwYO1VvkxWrQ1NElcJrhKri5QYRdL2UpWtO2iO2DrO9?=
 =?us-ascii?Q?XWJer89hfQafbpKaDDtDlnoCkh4xAzVsR+KnIdK/cpE+oMJBrVqnHTatVufa?=
 =?us-ascii?Q?eTc+gjrFO/Gdy3rK07hw2ImAIkPfFJrKybRL7xv8/F24+nreZYxoL/iUluih?=
 =?us-ascii?Q?Rf8M/xLe2yzPztLEEL9mU8eOwmoXdR7fH4BtYY2sUB8MbCS3BAxyt3gPzCnl?=
 =?us-ascii?Q?LVcYvpn4l6OrQJ/hOzFZNFjhvbFRZOZJaXK3sqEvCmeWj1ZwVYL6U+tnJL8G?=
 =?us-ascii?Q?TOEz8mIcqTf+Y5vY4+CMBpHuJ74jY/2dd/K26SkU+6dHvtfq5AZ20bNEgVBT?=
 =?us-ascii?Q?SsQSpNOUtAJBPObqwHtARluV9mPkgmT8IklehwZFzafNv3s9G6YIgpfCF+aG?=
 =?us-ascii?Q?mfQL616KoKJBQVO5Z1VIUqU+gKahHrIWvnu7fBC26FsIZXD7PRO8vnOKNkS3?=
 =?us-ascii?Q?h2+AJ5WH7LT/3es69G4u2PNlaR/ZoBLVOBMqIZTnM4q0PykQgcpuyh35p1QZ?=
 =?us-ascii?Q?jg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a676027-3b0e-4808-c645-08dcab08dacb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 11:16:09.8301 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5SAEHuGJ1uMJWsdu4+OzP9RkTgW5OlVzPCHvqjKUlxd23UwpGg1RmTj9Yrv6OT+mWkBR5mO4NXDaD3NzZC6815nUAMPyJPp9XZDFXLlHwOg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4611
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733428; x=1753269428;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1vtuDHHNz3UYB+tpS4+b+nPxww7Ebv9hap/JRWHlqGM=;
 b=a5wn6VS8r+g0I4grcsoSn3suEa8cfGBy2ZBn/AkXxcWLwORhtVG5ptRl
 BvJoq5mpYGYDEyu0qAEPm/yaUpzZa/7AOhdt4aqVLVJQ1JeVk6FNP2r5R
 CD106jUHu9549eraykSC8GtCezTHdqL/vUtTOKCcVwKisHSfgCGccx4Te
 ukKEndyYGBMeRoz2b4cV2MtCS8rKb3r9msoNxjpy1MgkVJwTAdr/8cOIw
 Eu9Td4fwb/fY2MFsjNFHSEf8ll76Dtys1VkZqzx0/xilYBwvpFY0Q1tCY
 zY9Mq86kTsu/2WcMthEPEbeQjDijEWPn4wXZd7XsWyG+uhkpkFY4EfWVb
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a5wn6VS8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 06/15] ice: base subfunction aux
 driver
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>,
 "kalesh-anakkur.purayil@broadcom.com" <kalesh-anakkur.purayil@broadcom.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "shayd@nvidia.com" <shayd@nvidia.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal
> Swiatkowski
> Sent: Thursday, June 6, 2024 1:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: shayd@nvidia.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> horms@kernel.org; Samudrala, Sridhar <sridhar.samudrala@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@vger.kernel.or=
g;
> jiri@nvidia.com; kalesh-anakkur.purayil@broadcom.com; Kubiak, Michal
> <michal.kubiak@intel.com>; pio.raczynski@gmail.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com=
>;
> Drewek, Wojciech <wojciech.drewek@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v5 06/15] ice: base subfunction aux =
driver
>=20
> From: Piotr Raczynski <piotr.raczynski@intel.com>
>=20
> Implement subfunction driver. It is probe when subfunction port is activa=
ted.
>=20
> VSI is already created. During the probe VSI is being configured.
> MAC unicast and broadcast filter is added to allow traffic to pass.
>=20
> Store subfunction pointer in VSI struct. The same is done for VF pointer.=
 Make
> union of subfunction and VF pointer as only one of them can be set with o=
ne VSI.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Jiri Pirko <jiri@nvidia.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile     |   1 +
>  drivers/net/ethernet/intel/ice/ice.h        |   7 +-
>  drivers/net/ethernet/intel/ice/ice_main.c   |  10 ++
>  drivers/net/ethernet/intel/ice/ice_sf_eth.c | 139 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_sf_eth.h |   9 ++
>  5 files changed, 165 insertions(+), 1 deletion(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_sf_eth.c
>=20
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index b4f6fa4ba13d..81acb590eac6 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -33,6 +33,7 @@ ice-y :=3D ice_main.o	\
>  	 ice_idc.o	\
>  	 devlink/devlink.o	\
>  	 devlink/devlink_port.o \
> +	 ice_sf_eth.o	\
>  	 ice_ddp.o	\
>  	 ice_fw_update.o \
>  	 ice_lag.o	\
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 6b39b6be9727..848d8bac5d25 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -449,7 +449,12 @@ struct ice_vsi {


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


