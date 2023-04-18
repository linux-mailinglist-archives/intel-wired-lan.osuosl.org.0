Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F147F6E558F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 02:06:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCAC541740;
	Tue, 18 Apr 2023 00:06:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCAC541740
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681776385;
	bh=vzwngvCrY6I7ZI5hs5x9OFdbyE8Ji0w2cfr5nbItwuA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=enOHS4jw+O9kpJaGHCs0WK7x6n7XiYYGq0Nv+cAI9/oUQhAdfp7J9VnvhbOht+y1d
	 8LDtB0506ZTwd9yXLXLij6VxvH8hDESkLDmJ6r4NI1VaPxYYFId6mlwuYpTgaqAB4H
	 daPL8VLGKpV0TzVaENclwucY7IbrTqvwV8EFCmq8Qa45OenhBjpO+YtQQhWASR4Qs8
	 /C1nDoN01aPjJyUH/G3XJwdQYTtV9Vt30aqew0KG0hemisSdm/1yrGElf+RMBCvXjN
	 9oJnEI5+WkQsEW5HVrjZ97pzLvqpJkUB9H24/w8u/grBQyzS9M0HnoJ5c2dYe6jBXR
	 0s3qvsY7skYOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hF_eUeHZW601; Tue, 18 Apr 2023 00:06:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CCA04173F;
	Tue, 18 Apr 2023 00:06:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CCA04173F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 41A561C4242
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 00:06:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 120D14173F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 00:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 120D14173F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MWIimkSNwTGi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 00:06:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C31C241734
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C31C241734
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 00:06:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="347785159"
X-IronPort-AV: E=Sophos;i="5.99,205,1677571200"; d="scan'208";a="347785159"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 17:06:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="690880881"
X-IronPort-AV: E=Sophos;i="5.99,205,1677571200"; d="scan'208";a="690880881"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 17 Apr 2023 17:06:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 17:06:09 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 17:06:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 17:06:08 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 17:05:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cle1Im0oSG+tMIN1WpUOOn+AmLgRljJO4MWNn6Hys0lKBgp1WZpvkbC00YcAjMRoQ1Zf6UiD0aKAJIQNKTRDzLbAf15hjPdCZ1FGPmlpktiaRQq0IddSksy0pmlHFWi2DtMA2XivoY5LEddzTqVhMdVwl39pPK+/FelRJFe29k72ajYgtn5HkfURg239+5KWuLdzA9JQwvikPaTUd9xrxajRIbRjxThgFu5M3eTKYVGvcRi0bzxOCy1Gv6UQY5oWA3R7ToyQ2TmoZf9VLIfsxgi/lZeXEkO7wUDVUysUhjboAlcNUEdPo30D/l+VfKrnKHBUHZFr+4noSmePjSOprQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RLqHrFsgyIExAMO/ROYLO9zwS9b9SLy2TaFaFbqUm1c=;
 b=CPY3qo+nokrQA3UthbPPzNE02kfApxLK6POcRzucpv6nCT+1XtN1lcnHxN/gHVxeHvoUoInPiLbC+5QpsnC6drqAouQpAd9ShxnGpqe8XRxf5K81Eoe7ibsZm9Zutp8anCk9afsUwng7fWrv7KrqcDbphze7Absjw9xc42a7g9CYnbc0jUP6vwOElwJhPB0ORU2tw86iTTefM7hjavJC4ZBY7LBDBF4UeMhvb70sNcdxHiOX7SB+eJt476ye5qjGuCObzQZA7hknN9G/CMM4ozy6FF4w75dSuEQ/9Tlzmd+bcAumw0yPq+PLkgjm/wysKxO3oftD8QtgyQ4zNrayzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by BY1PR11MB8126.namprd11.prod.outlook.com (2603:10b6:a03:52e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 00:05:57 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::1977:c45:c8b3:b5bc]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::1977:c45:c8b3:b5bc%3]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 00:05:56 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-queue v1] igc: Fix possible system
 crash when loading module
Thread-Index: AQHZcXqsp/SxHRvAqEK3DLO0m1L9O68wMALQ
Date: Tue, 18 Apr 2023 00:05:56 +0000
Message-ID: <SJ1PR11MB618053549CB03FA01F8C54B5B89D9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230417221839.292728-1-vinicius.gomes@intel.com>
In-Reply-To: <20230417221839.292728-1-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|BY1PR11MB8126:EE_
x-ms-office365-filtering-correlation-id: a1de2e00-07e7-43a8-7d62-08db3fa0aef2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9dxEi1Nu7uJfg3/p+FNtWsU6OUorWgfKNpw6wGh3aTpVA2It3SGrWhNC8+C7NpY5Qw0waYyeJbdQc4IjyJxLEjzP30dzOEpWIlJMpJgQ8hnZFTOH2DSm1XzK6+6HHE0RFkrfl9ZcbMtu2tOneglmllcbe0859UOtenAvMVP8OscERwFzYvPDk2ZTaKu3KnfOcG0bK72ZHNqDFqt/GHdjuI/dLn5R4k4ajEBnK/BkueOufrdAHEwiOfwz1M3WpQYFOdKuC6AzVWvd1/Kee9JBnsMHjqxoCTHB/TXSq0+TPWtf2ptV6wnDOkOAplYoI8l3aGw88lVHU7VCcKA4I6+bwR2dzjCOy0Xv7k1nQyDTewmwiflWmv1o7NRMrTQuzXT2/zRD7EiQmiI+BTtSnRdD5CQGJZ4BKXwozrF7cMZrxlFr1rpQy+vpTBNbrcebJxWF/6DvR4f2GNFGMaGIbT5dJNrPA7lIpJuMXLgRQ/f54ED9C5medMYEiezwO3Ln6XZhW3bowCk9FJVv09EMXnazW/aNwyChEIrq75OV1tshyLNrZkCq50CLYLHDeOSu+3woblFZLtHJuBoTWHdoYyWwEjpNJjMyxwiRqG3pRI0aChE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199021)(52536014)(5660300002)(86362001)(107886003)(83380400001)(966005)(186003)(9686003)(53546011)(122000001)(82960400001)(26005)(6506007)(38100700002)(8676002)(38070700005)(8936002)(33656002)(478600001)(110136005)(7696005)(71200400001)(316002)(55016003)(76116006)(41300700001)(66446008)(66476007)(66556008)(4326008)(64756008)(66946007)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LWRyCMfsmlyqTQkyrTL5kK6hb9RzdGwPaAeFUXivgk/Ty+0njBrdg9giH0PB?=
 =?us-ascii?Q?PK0eQWSKZHq6jc1kSu1j8k0yQKSYmmMSTQuczutUtsLQ6EhDO35F+mFJIqHx?=
 =?us-ascii?Q?78O1MJfe4TR3XmduJfZ+g1gDlWfYH90jqXclUp48miPWT11I7oCHw9ukDYaQ?=
 =?us-ascii?Q?v5J6W8sNAteEbJk7f2sGLrQbDNQlydYe3iHvDPKM/ZLULxMQ8UxCm87kZQHz?=
 =?us-ascii?Q?INBrEnQEr70YOFAu8V0RUw+Ic72dW6KSbIQXmjoFMKgXLqdVc0c/UvnLMPNK?=
 =?us-ascii?Q?XDytetKwh+H0Y3WjJEKeU5BigwSZbsliGQ+UCqoVfwxUVSRG5LS9gSvZ6oAn?=
 =?us-ascii?Q?jXSGbqKlPsw/QllO1FIYKLrpgivuGh3X00Fv7oOwSHBNDcXkpPZNuqv2GorH?=
 =?us-ascii?Q?aE7jaOGAFyMqrjz51bKbo/+eZBFf/55GEKzAP91Eg87leoR/HP96OLAjYCBJ?=
 =?us-ascii?Q?QqWXf7pOhLsTcG2O2/XlTeuwub73tSaK3tu///6Qh89Wbxi+8FbYLamu4g3g?=
 =?us-ascii?Q?IXOsobkqxkfT/sOJA1oqVef9AZ8NX+qU34P6dR7OzhUdkzhOqa1ojAFWhs1X?=
 =?us-ascii?Q?JzbBDX66pWkK2YYFmGO1l3TDm408a/yIavKQYjGprUd8SdfUYUaT1kekQkqS?=
 =?us-ascii?Q?26RO8unZ6mjMOdGzuvFJoFt84InGRM2cMfLdQQtaG454e9qE83a/MIdV3wQ7?=
 =?us-ascii?Q?Bq3SCBL+qMLzhoEBKB+co31MQTAndfELvyZ25le/VtYM2DoY9mHApTRZJOLW?=
 =?us-ascii?Q?0mhQO8VAmE+wGDj9v5VZEQfAXKyt3Pm8Pf7bCay6tFVNxJPCnSyv0ZzZ138F?=
 =?us-ascii?Q?oD6IHDqZNQQE9p/q4D9i/G/EOuoPglO4yPLOocOfo5qXiIJy4Ozp0ijHI6bs?=
 =?us-ascii?Q?Nuv6/eqe7KIZY5ZtLn6MMzeDWwwJbusgsEVrPAnVsg9d/H7reXrdJkrb7nEC?=
 =?us-ascii?Q?oE5PS7CSRPA1XDhTJbNSssVBsnVWxWET/3IRnwD0Eynt2eZalt2r29EjLITP?=
 =?us-ascii?Q?RMQUc9viH1mlGaB24suVEfhVjN4ksa0hwRpCzQC3wGVZol0qacFwx6yc5Xte?=
 =?us-ascii?Q?OAPSfhwRxvvBncjWF6tSNIDTcb5YS424t+je8GIgIr2M2p99fexpCBflbzMN?=
 =?us-ascii?Q?nHw42zoBqac6GhdCFEKHkck19x062/eLaqMt6h0iGt76etDKmRfPYD5Go4Gi?=
 =?us-ascii?Q?Ya1DuQbzB1DkWsSqQsDLkvPQ4ujkiRyMAIzWkotomOkAHVtxZooU/nzSWtY3?=
 =?us-ascii?Q?S9F5nSmYHh7DCzzep83O22tOHB2mp1gbCGGKzBi/b1WjGHYRqtdTaPVKDXbI?=
 =?us-ascii?Q?L3UfRp9q73NUiXulNhvNmx+ua44CSFIEy3C67vr1301OtpDx3g7rtTb4UNJo?=
 =?us-ascii?Q?NPsXyNBCePvcpX9odN+JDDPrY1OwHja+xgk5yYPtLktFLyrF/WwaI84Wpnb3?=
 =?us-ascii?Q?Dn44NtY7gGVb54zSgJXKT8nYPM/nCJgSb7PkywYpCUiQPtns7JIwsmj/tp70?=
 =?us-ascii?Q?EFby0lFByNoyDCNpBZWIxPMMPeObNMp78BTQhz1Pofd6Kff9uM4eThWUhqsH?=
 =?us-ascii?Q?l7sJD1CabxIySPQkL806/sl8sCsm7HbcwGj3NLstWekyUyU3UMbBd8t+CfZ9?=
 =?us-ascii?Q?pMIBZIVzt3o67s7AInPfRWw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1de2e00-07e7-43a8-7d62-08db3fa0aef2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 00:05:56.5277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zpugsPbSf0xnWk4zT8lw8ewMH/bWhPKh6n/9rDk+mX6F9OFSlAn7pJnYVeDRau8yr8WvRbdemLTLme7d7IWrwjtLbY5h4M4WxdNCiK3Mj3GtCN++OM/5dFOPBwnp6s7v
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8126
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681776377; x=1713312377;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=12dS75SuzUBb+lF4wjFGqi2GxjNJy3b3lOTjw5akjzk=;
 b=mKYoW8ak2ei88I/cqBRBBBWE2fTocW3P9RxIS31O2+4K2IsmwGpa+NlJ
 JZTMdf7CjQACV5y3cPJQV79v98YW8mkb1FQ+qjRZEG+46M/xKroirlWXH
 1HsSaXXT2dgiu0Ir9X8sac2w2e6uBK9ou0mbbCvnr/nMeBLnfOkxNS22o
 MPbIXDBUR4gYFvFPR6zewHNt+hESZIUQ6HiUvntKX5k1TQ3Fk+W5xcwNb
 9e7xYKbwNqAuTKk+4iyYyy6de+QAm2dSe3XdgTeYVhEu4LAGC6DM87LUA
 BOgDO4znArEcSa5ov3bHHq0mTPuV+5+A6dV+/bYOHchqL/RRdqKwoIqEB
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mKYoW8ak
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-queue v1] igc: Fix possible system
 crash when loading module
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vinicius Costa Gomes
> Sent: Tuesday, 18 April, 2023 6:19 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-queue v1] igc: Fix possible system crash
> when loading module
> 
> Guarantee that when probe() is run again, PTM and PCI busmaster will be in
> the same state as it was if the driver was never loaded.
> 
> Avoid an i225/i226 hardware issue that PTM requests can be made even
> though PCI bus mastering is not enabled. These unexpected PTM requests can
> crash some systems.
> 
> So, "force" disable PTM and busmastering before removing the driver, so they
> can be renabled in the right order during probe(). This is more like a
> workaround and should be applicable for i225 and i226, in any platform.
> 
> Fixes: 1b5d73fb8624 ("igc: Enable PCIe PTM")
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 25fc6c65209b..2544bb06246c 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6712,6 +6712,9 @@ static void igc_remove(struct pci_dev *pdev)
> 
>  	igc_ptp_stop(adapter);
> 
> +	pci_disable_ptm(pdev);
> +	pci_clear_master(pdev);
> +
>  	set_bit(__IGC_DOWN, &adapter->state);
> 
>  	del_timer_sync(&adapter->watchdog_timer);
> --
> 2.39.2
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
