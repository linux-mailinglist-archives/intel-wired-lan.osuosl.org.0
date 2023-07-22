Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE17F75DA79
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Jul 2023 08:50:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62773404D0;
	Sat, 22 Jul 2023 06:50:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62773404D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690008642;
	bh=hWKsaH0FOZbM0ejvznlNfSTeFLCO3ei/mvhwiEYrCcE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yZApRn9vuLQPA+vsLv21fzzaSW1F+xp2dn98WPcS5JD6li5Lx+jAYW3cKkYNTRa7K
	 vq0MXOWt1Jgi7hlS0nXoJkieAn0ssNUGGLA680cPis8mCRRmr/W4GOrCRPaNkbshUz
	 4l4kB44ku7z4nwiQ8Hc8DIdWMAwElbHLQwDfBeuECmduqJeMaNweBmNgLPTrzfoUpL
	 qGKEgsMUIfAo7EjxVFMu7zk1q64Qt72j0FU7ywQf6G9941bI2FrJ79ZvRMEjIW9Xb4
	 fVJcmtI/ZaIFwhOB/yvHL0YmWVEA4BVxyI+62/TziYX/yvhJoegBpP4muwnOFuqrmU
	 SMVssm9w5eprA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MkAKhBkkuafH; Sat, 22 Jul 2023 06:50:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1005C4000B;
	Sat, 22 Jul 2023 06:50:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1005C4000B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04E1F1BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 06:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB9AE416D6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 06:50:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB9AE416D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b9nzfyukqQLA for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Jul 2023 06:50:30 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B337741BE0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Jul 2023 06:50:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B337741BE0
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="347457969"
X-IronPort-AV: E=Sophos;i="6.01,223,1684825200"; d="scan'208";a="347457969"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 23:50:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="815259900"
X-IronPort-AV: E=Sophos;i="6.01,223,1684825200"; d="scan'208";a="815259900"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Jul 2023 23:50:29 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 23:50:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 23:50:29 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 23:50:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MV0FxTwNLou3CE8LJpjEvFZ3AGnSzDXtDRtdCPMBiuciHS/T22nyA/O51wWuLvy/3ievUryyS3h6bUBnVAIkHoXD928q2riNh5+mHWtw79yGNGtDkfwXyJGAVgmfmjQ5JoDX7T5lnxHjSa9Mi8NkQYjkssYD/JyJu+TMPLjnHusdI/1GIkclY3O0VQJ/by7MWAYuUCfdE4msHZ6ZzawPh0azT3Uum34H5vaG98Ap/w1dzVR2TMmpYniiWD4zQjbb1xEEUi6diFzUJ/mXlkI3+GeGrzDptdQP09fzNHFZHPOJAlOdkzyC43ki4z0ckDqiD/KsnqUw4ZNaQNeE5+LXKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FxA/3wyLViHuQVCUxkrxXqFfd9brmZRfeeXSfv9UdSU=;
 b=R+Qc7JI4yVjE09ldxeObdo+UQJShSLFh7qCNu36YRgqSe5KcS9eCl1GYwIDGVCeTeRWjy1yxqnWJ00UZmWfGN25RtJOUGrRxgcnbBHhXfcPOJkiEZw2yVXHlp6hbtCR8Uh7ij20qnhnpAUH7OG8MtSbndVjQIVh6jFJsLW1NqALVsJRiBk4UXK6ucTIjZAEQKEpZ/x46bbJEhVc6/IKeHbz+TMc6HgKnWmN5jtg7a0LuPb2C3D8Y4IikgMeZ8gOJM3k15Wk3cBkArJDawhADXOWKUAbQty8GuP0eeGse35B6z8BP4AWEQP4lOrTO5dVpRdXt+FSZVMuk/mQuc98Jew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA2PR11MB4828.namprd11.prod.outlook.com (2603:10b6:806:110::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.28; Sat, 22 Jul
 2023 06:50:27 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d%4]) with mapi id 15.20.6609.026; Sat, 22 Jul 2023
 06:50:27 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 10/12] ice: implement
 bridge port vlan
Thread-Index: AQHZtLEHfwInNeXQzEeY6GLXCLx3hq/FaBfg
Date: Sat, 22 Jul 2023 06:50:27 +0000
Message-ID: <PH0PR11MB50133BFD05FF3C17514977B5963CA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230712110337.8030-1-wojciech.drewek@intel.com>
 <20230712110337.8030-11-wojciech.drewek@intel.com>
In-Reply-To: <20230712110337.8030-11-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA2PR11MB4828:EE_
x-ms-office365-filtering-correlation-id: aa9c7c30-4375-4fb1-3ab8-08db8a7feef2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T/q29EnLnGMaA4hzAjihCmD/NJsIV2Sjfqn/SJHt79L4+SDDLkRXIhocHQcVBlKZ/LDH5+cNgBkzX3cRPKppKmQ87quzDA82TNho7rI+uU5lkAgN/FYBAWlWAx5/lgihqfckc6JdZ4ikkKkRud1hcljA4muycXACjsZd1JxxYexmf9YPoZaUniph22wbLDCSZ2jqo88KyhJZiKGKV00yQJbEHoAAYa7ZH7smeeWVxvYB/eJG7cdEvPHZsttszclBLyZw7ZYJS3f97qN3Er6XqlUhCLKuAxkDV2+BWyEm8CExGIrbR5K3EMT+5w943utFJPKPHn2FKlkJtKwdF3bTgETam0qkS3iyK1Es2FCH5UzliVeI1oZisJSIN1HFblzMDIwfbciYfcibnBrjNBgHNnde7jIKinLwKoMkacgDt95jL9pUMPvUFvc833uTrTXEHflYYWlrLd+QBfz/uSQrecOdw4rG4btJ/kLCeCX+eEZ5B3J2O0aIjq+s5E+D4R8pVpWqR4gOPDqXsSiRvuJSeVuUo1BjKxVn67aVzRahCUY33rI6XbAd60rpcCoQW+dVhXlb3Div1+tr9dDmDr8c6ybKIWdChTszLuOFr+7GxuGuFfXTsSAOLxRZpol9HXTw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(396003)(376002)(39860400002)(451199021)(2906002)(83380400001)(38070700005)(86362001)(33656002)(82960400001)(122000001)(38100700002)(55016003)(4326008)(64756008)(71200400001)(66476007)(66946007)(66446008)(66556008)(186003)(76116006)(478600001)(26005)(53546011)(41300700001)(316002)(110136005)(6506007)(7696005)(54906003)(9686003)(52536014)(8936002)(8676002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CgKtyPrUmRJey3WgpvM4VzjKgf1Al8xqDIAf98yLa2hp2gc0rPIg10mBVW78?=
 =?us-ascii?Q?NRKtVIkqZVHrck5h+NmZ8BbvJdGL2V/kCX/3V8ZGHFCyd90JOMDUl8F9Oimp?=
 =?us-ascii?Q?MI/3Zc7Feb7Au10uaZrhs2iWvLyCS+VtRvIbzt9rXXE2uLrwFl9HGPTxvqdH?=
 =?us-ascii?Q?UbhqQ1VPXFfZrgpu9Ab0d3h1VtiQYKKxdVkt4cdpancpjVa5fTxcn2Pc6a/a?=
 =?us-ascii?Q?rKDq//aXHSgE8I9hlXCE85dcE70psMRF99RdCH1KEjwbafOlt0jbyxirWXp/?=
 =?us-ascii?Q?smGECUynRISe1L1ud9bIVy1VKOhM8Q6kbYUW3jvKY3uN9pEGhDkR84YKRjf5?=
 =?us-ascii?Q?Q7j4B8YJMj/IeWml0lf9l6UKPvht7CJF6uuMfdO/gl0Yv7Sxh02iAVhCmUrQ?=
 =?us-ascii?Q?DD0v+ye9811eKWOS8sOVKNB3+0Wq2+a0TJY37ou6Gy6qc/IqcUUo4yP88srh?=
 =?us-ascii?Q?zgM1VILSHadTbCP3mmAS4E3mj3usd0GBbm0ZWYYXywxQvnDzgA3Vg4S2HtJL?=
 =?us-ascii?Q?eVIlpU9tIC5PxhhSYUjh4oiw4kTafcr9OtEal7vX9c40rlnxIBbsO9peY7pz?=
 =?us-ascii?Q?g2aTl6hpJLlW3N3Tw01yCIg59dyF4kUJcvoGu2G4dWJAPTcY6KC2XwHQkEaf?=
 =?us-ascii?Q?zY7IbzHKLSOym2Nmlx2WDi78WO8NrzW/FCXrh1zo9H65PfdsmoI2rlsmbFJt?=
 =?us-ascii?Q?c1scilGqU89YeffdCWhIlKDj649fdySNI/Fmoe8UXI4UphjrYGQbBx6g4gDo?=
 =?us-ascii?Q?57TRRMQW6gDWOiKtFICAr2RCzEvaR0OROWHgzvIVJYMWpc7u3N4+OP/onda7?=
 =?us-ascii?Q?Wap2CUd2JoXGlYfzOcmV2sBoa5My9CDzK0gN8MSC9Dhyc50Q8UjoYWVg5L7o?=
 =?us-ascii?Q?3vCQJL4h3yARz06A24uKT+ew6iDaSKWBbcom0Esqa1eBGhGltL2AVQouWuO9?=
 =?us-ascii?Q?vJRSt2MV8h6KqFs/tdQrTGQBYs77dMr9I36xSoQaz2DpPS1diJ4USjsoI8If?=
 =?us-ascii?Q?/m+Dl6lesfJVefe3QqeSv1ajF7TJME14ivwmcSVb2k0xqtPR8I6zP5r5GZ3K?=
 =?us-ascii?Q?H9h0/05ZYNujJV6Gf8xJufbAfJWbl3E6ENEbxnhcmNlC/dcNMoyTnWZwirgu?=
 =?us-ascii?Q?JP81elVcVDQNPbiLf6cMkiCvabwxDZqMozjI9mqcqrKpHZHUkXspYXYJfxVw?=
 =?us-ascii?Q?BjyAMqQa9gNBHvfYoM2eUDakXA3LpYQGXWGsIgYMttQfpHgVXhMyZhWy30Ba?=
 =?us-ascii?Q?+u2XibNeUU4Ocu5Z1Ws+vs3BjfBKDEOxdCIKCH3QHY/EyYqgCi/v4/So+GnI?=
 =?us-ascii?Q?n1pUhKHUX+9KsiV7qooQz5hmSwSlbQDpl9wUTJdmiBU1VuuVRXDUbZ4FVcH5?=
 =?us-ascii?Q?wfxBQXPBRsJ5N3WIe36SsjBoQjs6Z5cPj5J7c/vwnLKBk7t5YhX3WucAI4nB?=
 =?us-ascii?Q?gmGJjxPakkMbP3iTMrgIwViIFY95DHh2wgjU8SjJKh6mGqyErg/mhOOYV5eC?=
 =?us-ascii?Q?LsYgZwlY6qEvcDI1uzWLc8M+hRxRbz3LdMQVXmPDx0Y0+ooRjSgqv/7YDHjA?=
 =?us-ascii?Q?uGyrociQWvZ58+AQfy5VxLQsTWwjsdkFMjXvimsTHSx0welPbUNdUZYDiFek?=
 =?us-ascii?Q?0g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa9c7c30-4375-4fb1-3ab8-08db8a7feef2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2023 06:50:27.7272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /VJ3vPnRa0VFTsKNRjPISWgi3ICkGp8UJ49qQD2j3T+RlyBGytDGnTVDTpOgsalSSUV1jmRfpz4NHonZYq7Isu7h/qnIs5YIM1sF6+8bjBs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4828
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690008630; x=1721544630;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ObNrTS2+cvof3Ookt2dQMgSUYeKwL/tYtXfhqHCw248=;
 b=XzHAsIy/vK7/5v2I2bmZ3sW0LoEGznPVc5i+uF6xU1ogOnlWPzqIhWtU
 EcFRa4P+Ph2MXxDzCzYDn47yrrkxfZe+3Sy8r870gPloWdS+q7VLsN49w
 D75yP3zx2n8XTUtu2hF/YA1TeklwsEgTojiWYg3BarzUJ8kljtR60oc81
 H7OZWxRgbaVMmXiPMGj2Fx7p5yKArBvtR8xGCmb90aPbutmV2AcHe2CQ2
 w+giifWda8HE2oSGvXvhVibxvGynM8GAqPISkbH1dxhxffP+yIWVL1pEp
 D9qQrvxgyv0OYINaWlxv7egCBHZZRt/gX9mMpF0k8zBfclJGFJA6iahCb
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XzHAsIy/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 10/12] ice: implement
 bridge port vlan
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "vladbu@nvidia.com" <vladbu@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Wednesday, July 12, 2023 4:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; vladbu@nvidia.com;
> kuba@kernel.org; simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 10/12] ice: implement bridge
> port vlan
> 
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Port VLAN in this case means push and pop VLAN action on specific vid.
> There are a few limitation in hardware:
> - push and pop can't be used separately
> - if port VLAN is used there can't be any trunk VLANs, because pop
>   action is done on all traffic received by VSI in port VLAN mode
> - port VLAN mode on uplink port isn't supported
> 
> Reflect these limitations in code using dev_info to inform the user about
> unsupported configuration.
> 
> In bridge mode there is a need to configure port vlan without resetting VFs.
> To do that implement ice_port_vlan_on/off() functions. They are only
> configuring correct vlan_ops to allow setting port vlan.
> 
> We also need to clear port vlan without resetting the VF which is not
> supported right now. Change it by implementing clear_port_vlan ops.
> As previous VLAN configuration isn't always the same, store current config
> while creating port vlan and restore it in clear function.
> 
> Configuration steps:
> - configure switchdev with bridge
> - #bridge vlan add dev eth0 vid 120 pvid untagged
> - #bridge vlan add dev eth1 vid 120 pvid untagged
> - ping from VF0 to VF1
> 
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: minor code style changes, optimize port vlan ops initialization
>     in ice_port_vlan_on and ice_port_vlan_off, replace WARN_ON
>     with WARN_ON_ONCE
> v3: fix traffic typo in the commit message
> v4: fix mem leak in ice_eswitch_br_vlan_create
> v5: create mocks for ice_vf_vsi_{enable|disable}_port_vlan in
>     the !PCI_IOV case
> v6: add missing call to the vlan_ops->del_vlan in
>     ice_eswitch_br_clear_pvid
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   1 +
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   |  91 ++++++++-
>  .../net/ethernet/intel/ice/ice_eswitch_br.h   |   1 +
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  | 186 ++++++++++--------
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.h  |   4 +
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |  84 +++++++-
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |   8 +
>  .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |   1 +
>  8 files changed, 286 insertions(+), 90 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
