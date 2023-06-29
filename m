Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 862277420BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 09:07:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83547416AE;
	Thu, 29 Jun 2023 07:07:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83547416AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688022453;
	bh=f/CQBSw+TBhdBpDTu3zUD/Yi27/2/zoEw5GWdVUy1J8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jJ0jcxd4XjwFVTh7Egr5UASea5CrVHhyNtH07jesgOfI0pvryQxdz5bLidqKTgqyw
	 8cFWQDHs5al+Qek9A+6b7x6cfT8zdWaLUA6qsLNZ0oDeQ+/7pLZvPz7VeHrk17Z8Qs
	 exNVA40IvwsfTz/qT0lCo/fox1gDseG9PadQo+oxRbTMq6Rs7kYEcxJKO2ssO41DEz
	 WXtfgei4EYpcv4SwFlG9KQe9e+6oB9Nqe0KUKjX0k8C8xPHgLf2EVRIN9WUpEIrcfz
	 /gy3onNMcyj6sXPhwnCmhhU2bSs0CbO6+LNzq9iWyU5AK29eaLXOm1saGAg29N/Lk+
	 rYZ6m8VZdRTxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TO6cl3Z31m74; Thu, 29 Jun 2023 07:07:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3ACE6415D5;
	Thu, 29 Jun 2023 07:07:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3ACE6415D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 211781BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 07:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E9937400FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 07:07:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9937400FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vZNOflibIA9e for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 07:07:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6E9240148
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6E9240148
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 07:07:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="364587931"
X-IronPort-AV: E=Sophos;i="6.01,167,1684825200"; d="scan'208";a="364587931"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 00:07:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="891313738"
X-IronPort-AV: E=Sophos;i="6.01,167,1684825200"; d="scan'208";a="891313738"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 29 Jun 2023 00:07:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 29 Jun 2023 00:07:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 29 Jun 2023 00:07:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 29 Jun 2023 00:07:06 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 29 Jun 2023 00:07:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dKw2Jp3H8bbKsorGg3a7cGuoc809vYne8JMF6AcE62vTELm5ZnF3svXDbjhVmubiqfZ/OIfVmAgoShJDddaD7ekS3Y1awub6nFBr6+ZeY5LPcuWnCPA0Kku0N16dMnqPn1a6YuRIsJ8lDFU3GVHStBIM++eQMP3uCbXBWmgNsaSDFh91gwpc6F3VAUCfrvUyAYARuJNE4JxnhQAvewGbUKpvyxEChMKR5k30R2axwcO1QLiIP3xchSP7SxQG0fiwOCjT/hVsE7W15b78gRI8tCOvgCedSfGqxmsThYc7isC8anOU00NF/JAoDI9QLnvWgNRBEhGj3bSEjm4BsKPY8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iqL+lDe98vhFP/78mHrNKLbD/cx4FyYwa5yPxpEJaJE=;
 b=j+OFiWPZeT6s9BuvAihnAAG61t3Ct5UoVYNZYkHxAHmUYgnl/2uAZ+06jDDfzhXh+pl0ht3WHmsmnStYk9HOBqYLTilkYqerb7LSUzZtpAP9G9ZqarxUU5w92crb0my9lplP8Et2z4WjlRi2pxS32F2XW3Agc+UoCeZs2BHUbkm5YbpL0KO+qtB2J80a5gjlifGeZ5TB9wjXxRlLeyEzlmAM1PXkrnS2bCh7W7m/rmsf7yvFsc9SHQn8Vgx0O1sm9Tj6V1Z2GgnZIkI/5KJ9P2hKBnqs/ioxrjjmfcH4R2/SAoz2LUfxyeTJKa1Q9l8ocI2DtCOfQA25lKmjnhv8Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by SJ2PR11MB8568.namprd11.prod.outlook.com (2603:10b6:a03:56c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Thu, 29 Jun
 2023 07:07:04 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf%5]) with mapi id 15.20.6521.026; Thu, 29 Jun 2023
 07:07:04 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Simon Horman <simon.horman@corigine.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: clean up
 __ice_aq_get_set_rss_lut()
Thread-Index: AQHZmUHMIde+dspFM0mFbSphLs6hyq+hdJMA
Date: Thu, 29 Jun 2023 07:07:04 +0000
Message-ID: <BN9PR11MB53543CA110B96C888C4385908025A@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230607130957.115573-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20230607130957.115573-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|SJ2PR11MB8568:EE_
x-ms-office365-filtering-correlation-id: 2f59097a-d9ae-46cb-adca-08db786f7159
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9h5cWE1BKNzjCfS72jKY7NgxTwbkP6jnXV+6DUVrBlUoaxEMvEHQC2ALcDyXvcRbUsfXfttkVadsxr37Co0DrbQzM8LNz9PyA9Llh4bTiQ8p86o0Ct4TA+wDIIvUJsoQjDSk6JC8IwOBAvYWrt+P7uZyZTCIEBHiThIEQMSygqT5q3vMY7GDiYOVIOZEyUEzx0v6FZuyb+Bi3RMPN2mOhsbTXP8+CBbMmo1Txt3XrXtOKsvhS0kM16BdCoyRDe+Z1KJZzSktwVOeFZ8yWh0o/zDOqycjA3S+E4lJIBLaEMXECNUIw9sPi0RuCx8W+bQa9lDgO4Q0O0X9pjmo7YWHbyEM/+59SlgLLgX/7VEQCWUH8E3xh8koCNiJ0Kg8vKOBdp6BRTVz8NrNEI+NyAuXifxzx74P3wvI78jtl3vOw09wVCDnFVlCwnH9iVFvBA7q0uz1KfjzxwriNFQh31N2L2sWPSfbAGkmgkJUO3tSDd/Nmt3Nhhgzul32JTDoRCitjh/bv5VMtCGcEB8r6Phb3EIHlkNF4fWJXxTcJPZsEXV6Od3Lo3bi6R6A+jyqlGi9n0R2NOCVc8/59hMEr+nfKHAATF/cwpZlXcU3ismO7E4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(376002)(366004)(346002)(451199021)(5660300002)(52536014)(66946007)(76116006)(66556008)(66446008)(4326008)(33656002)(64756008)(66476007)(478600001)(316002)(8936002)(8676002)(2906002)(966005)(110136005)(54906003)(38070700005)(41300700001)(71200400001)(7696005)(55016003)(186003)(86362001)(6506007)(53546011)(26005)(9686003)(122000001)(38100700002)(82960400001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UK/yI15t06wH6HAfw4QiH4ciUvocdl7G2AfcjwGeoe8I3ko6x3QB4vK2bgsp?=
 =?us-ascii?Q?/MZQO97mes+UxJ1ZH9zjAiggz4NnhQv0LPCaW7JWdYCYQXMQyvWaIBwKfvw1?=
 =?us-ascii?Q?9FezMMq2t2KK1eRXNd/5f9629ZGawWkC361YFSDuYTnn/JAgDpRQEU6irTXi?=
 =?us-ascii?Q?mwM7ItrLQg6/euD7yKmix+4fQ4DWcF90ESaXyUCjFufq65+2g1jnc9doMjKB?=
 =?us-ascii?Q?MlTZrphfx/mF5ri0434bx0Sxj3lHu0q4MaD/LtIv2G9GDSj2Aczlo1K2qng8?=
 =?us-ascii?Q?Pi+WqEIakVV7/RXhTdhdu1EpetVbQSZcm+gJRVRHei/ZNGFQL2FVj0ObDgzh?=
 =?us-ascii?Q?WUTThOBjwSZzP3KrfV1BHjyz5ZmpIKSoZV9/JZgbWAtZhF5ULI50imuLr1Ix?=
 =?us-ascii?Q?mqK3y4tSB3bMjHAUqe5afDxw2XjAqlWZcDvpbnXqH4h+UukzEqVq13DrmXL7?=
 =?us-ascii?Q?GW2riW9WRidYlF2r2LazJn1j2qSX5w563HNaPqRjzstsFd5GG++zB5OPxnxu?=
 =?us-ascii?Q?N3FsxUB8KcxTPcH2bIgvICHMkBDLzXkANGELKP1lz8s2T5kf51kMe2J/kPjk?=
 =?us-ascii?Q?0cA5JZsMASeqtNL3KrFOjsjOEjQxwG5PJ6rPizaQp9uKYF7lYl0gSsfWYPBH?=
 =?us-ascii?Q?fgM7iBD3JAPwBCCXSui0ShkTO7arJm6LMbCjN3xhm4fYtk6rLeb1XrpWnAjn?=
 =?us-ascii?Q?1D97WTPtzbrM6QpKAftXnB8XRdL8Sf6ggV3CptKcG/7JUm77dmp9Sjlz+ce3?=
 =?us-ascii?Q?Ydf4t0XNMzK8Q9jFfnhSJG/P2Pb/A6ByfcHTI27x81hfJydid85N8czD/CNi?=
 =?us-ascii?Q?oaFd5++efQvZuVsEUgPKmTiKsUfJ+Hk9R8nw/1PHd9dp96qCvAw3ZVEswbFm?=
 =?us-ascii?Q?oNeT7pCh5tIX9xSEaZ6RFskfnm84jojcr7cZMBK5/ctsBrMZGRznDYER3aRd?=
 =?us-ascii?Q?np+Mwu6Cn+0x8hmfMfaL+VEt0uPyh/GCC9PSKh0c5NufiUsU4DSh4BbBZYc2?=
 =?us-ascii?Q?LxXtE71ljEpoWUe4L85F0aHsjhs9D3VCSsz6iheYtYw53nuX0eckpQqS8Y2W?=
 =?us-ascii?Q?ddnLGBOJ5lMAJM2c1uzpOo3qCDkFJt22/3RSRqCjaVNh743ZrjFUqXDfrQDM?=
 =?us-ascii?Q?0I9JN2oSBPat59/qZShobw9X776QBctwkrrYwDUELoO/A3kVVTTo67D1vM1r?=
 =?us-ascii?Q?omFTuKxxuynkfAtQw9CSu1gupMPFwolx2Zc+JKAL1q/Hk8WjyrMHsqKYORnX?=
 =?us-ascii?Q?E/gLw0Ntw65TkRZ18hTx4RQvcVb5JUZ8cXyGzlnVyybPH/IdIfHQ7HjrzDNN?=
 =?us-ascii?Q?60/Ut+U+6PF4+Kej2jtniSjyvdNajI4ZCcQoX0Rf8QwgrIVkNZHkNmXx/CLX?=
 =?us-ascii?Q?GeT47zDOjnJHxZHHsDK4OIhPLXdHmFgbLS836DtDcLkvVLUNRfCiL/d5XJZV?=
 =?us-ascii?Q?Ib0K+HwdnZbwf9vBOVOLQ9UAT4XMM1YNThUwBM5X2H6jbOyzPVQ4ePYzXPDf?=
 =?us-ascii?Q?6r/XM4TfEiKrN4OP+uts09atxK6CcXU8xfJ0EiD4QeFAYSdzid8yl1sDArav?=
 =?us-ascii?Q?3BCwN7zvRlqVzxtyMemk24AJM2k8+iGtIHXnv2X1?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f59097a-d9ae-46cb-adca-08db786f7159
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2023 07:07:04.1422 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tnqk1J9cXJR0RawK6jdG7ctpmwZSdcbENZOzk/C90VNKexrl0kTmT45qBZTqRwjA03Nna1GKBXNHLxwLZH1KMMCvutLGNdS1wIRtoHmr1ms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8568
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688022428; x=1719558428;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B8//+RkyhtPzvXdGa1APWQzS8pkQ0MMw2gYgNzssFwQ=;
 b=HI4f1wwyt+fZ+80I+BtWNbk+SUbg8H/99XKI/FvTYVzp9qzj7AV53J2T
 73DLBfg07He6vRfSFOdAoe8B00MzQpfFxja9GTtRD6Nmr7Iukkjy2rfy1
 g1jobCAJTU+4+GtxJhQE/KUU9/wkG6S+vP7N6BZstxeEAY633vgChFWZD
 JBNG/NdR4iqlybJLayv1wFi2GFDaHzTZrBlefkGIUjdrkNIfEiwZJAy7c
 mqWouDZj50NmMnVlnJRJ2t9b1dhkDMcdo57dZtY3Fy7/3VQdWGEOr5zH4
 NN8vL3PqYNc0rpZg07VXiq1CED+8mC4k6h+0aifxvlo3IsKCtek0n62K6
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HI4f1wwy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: clean up
 __ice_aq_get_set_rss_lut()
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Przemek Kitszel
> Sent: Wednesday, June 7, 2023 6:40 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Lobakin, Aleksander <aleksander.lobakin@intel.com>; Simon Horman <simon.horman@corigine.com>; intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: clean up __ice_aq_get_set_rss_lut()
>
> Refactor __ice_aq_get_set_rss_lut() to improve reader experience and limit misuse scenarios (undesired LUT size for given LUT type).
>
> Allow only 3 RSS LUT type+size variants:
> PF LUT sized 2048, GLOBAL LUT sized 512, and VSI LUT sized 64, which were used on default flows prior to this commit.
>
> Prior to the change, code was mixing the meaning of @params->lut_size and @params->lut_type, flag assigning logic was cryptic, while long defines made everything harder to follow.
>
> Fix that by extracting some code out to separate helpers.
> Drop some of "shift by 0" statements that originated from Intel's internal HW documentation.
>
> Drop some redundant VSI masks (since ice_is_vsi_valid() gives "valid" for up to 0x300 VSIs).
>
> After sweeping all the defines out of struct ice_aqc_get_set_rss_lut, it fits into 7 lines.
>
> Finally apply some cleanup to the callsite (use of the new enums, tmp var for lengthy bit extraction).
>
> Note that flags for 128 and 64 sized VSI LUT are the same, and 64 is used everywhere in the code (updated to new enum here), it just happened that there was 128 in flag name.
>
> __ice_aq_get_set_rss_key() uses the same VSI valid bit, make constant common for it and __ice_aq_get_set_rss_lut().
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>
> ---
> v2:
>  - cover "impossible" cases with WARN ONCE + sane return after switch.
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  53 +++----
>  drivers/net/ethernet/intel/ice/ice_common.c   | 143 +++++++-----------
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   1 -
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  20 +--
>  drivers/net/ethernet/intel/ice/ice_type.h     |   9 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |   6 +-
>  6 files changed, 99 insertions(+), 133 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
