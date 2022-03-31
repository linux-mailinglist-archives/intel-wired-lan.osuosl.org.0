Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E094EE235
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Mar 2022 21:59:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F63F405AE;
	Thu, 31 Mar 2022 19:59:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fWFN5KVIutxY; Thu, 31 Mar 2022 19:59:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 566B040496;
	Thu, 31 Mar 2022 19:59:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 016E31BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 19:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E095C424BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 19:59:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DBNij66qQk0R for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Mar 2022 19:59:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 946EA424BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 19:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648756780; x=1680292780;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NDBX/O2RS4R/P5buebxYrPcrJNIe9vnx8EqQO8frmM0=;
 b=i7X1Bs8MdfNUEdGXabjgfeaY51cWAF2brcnqt9y7VYUTy6KS4TjyUhgB
 Antl5ZbWxPgwXUVa61HheleySpPzCCYFP5ax/y9lfbi1GciciBohg+cOS
 xpLRpAqcWBuOmoQYG8zhxrlfPfUFM59ti27TZLQBj06vlEUsNdLSBCAqL
 PUxKtM9rMkdbes3yKDWOpa5y3Wvzmw1i4dKcMgNz3ojQC4RdmxxHEOsOz
 1Za0TD2vt8eezIbOqI2Ng3HLaAM43JN/y0Wn29E/8Y+kgXcuXabKbbuRm
 pcy2wA9DlFm3eOKiuef0J7ogHItS8WRqj/ys7ln5o75InnFWAauHjv/DK Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="260126992"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="260126992"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 12:59:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="655039995"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga004.jf.intel.com with ESMTP; 31 Mar 2022 12:59:16 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 12:59:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 31 Mar 2022 12:59:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 31 Mar 2022 12:59:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MbT5we0OrGqxrOnpObiv2Q8BJydx95BEMpKxT9CGChnMyZkkBaUtPt61MwAYrtAQUqX8zSNpIG6GXU+Y/lYQw87Y6pxCD+7A206kgruCbTpTVv2JsvVffpDzRJ/BUHQoSwFJYgYcVYMOK48QdmZ2MnoQKB7TrCefQkQXvFx5eYpabtwgPuxbFj5O8kFh/RdtxYB82N+6wsvdldtLQK/ewyRJRNNMMdgcwsELf65eJpSR3Zne17dgpogS5kMfd+yeZNLlCj5StPkoPXLKbAE9OBDkOm7ybY0ZKMFD2MEFfSVTtCzxYuAQmy+GbrdiYGPP3WBzSPUP9Rr7iSEG2QWYGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NDBX/O2RS4R/P5buebxYrPcrJNIe9vnx8EqQO8frmM0=;
 b=BKXpQomJ5fO0RjFI/aA94AA6aY3MrwHB+2V/wYLe9YxsV1HJjrDrYETDezWO3LwQ/odlnT0efMJdsUQ1nIzekJ/wbAxQc/nPzxQqjzGopCv0W+pNd0/Ji5eL8LZF+bnqrH2Jql3gLk6+jxdHqKQOMWJa0xCazaO1tgZvrfKbPaW+nePUSR5vTtrCbg3kcoNmvNEro/xu35vr4aT5gOqD5o2h7fvjTSih8/qPlZh4i9GFp0amkXTI7wWU8ECEFsX5wrET6S4hZ7nBCO208ed+GRGlAfUKFaWWS9Mm1q/8h79uKi9XNVm/rCctld850w4UPTIQHBcauTNOCAxBKFZSeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BYAPR11MB2549.namprd11.prod.outlook.com (2603:10b6:a02:c4::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.19; Thu, 31 Mar
 2022 19:59:12 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::8441:e1ac:f3ae:12b8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::8441:e1ac:f3ae:12b8%8]) with mapi id 15.20.5102.025; Thu, 31 Mar 2022
 19:59:12 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Brett Creeley <brett@pensando.io>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Fix incorrect locking in
 ice_vc_process_vf_msg()
Thread-Index: AQHYRO057BJtvqZxeEyUMOJlKAIrPqzZeKaAgAAA0QCAADaEgIAAOT6g
Date: Thu, 31 Mar 2022 19:59:11 +0000
Message-ID: <CO1PR11MB5089888D13802251F6830A8ED6E19@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20220331105005.2580771-1-ivecera@redhat.com>
 <YkWpNVXYEBo/u3dm@boxer> <YkWp5JJ9Sp6UCTw7@boxer>
 <CAFWUkrTzE87bduD431nu11biHi78XFitUWQfiwcU6_4UPU9FBg@mail.gmail.com>
In-Reply-To: <CAFWUkrTzE87bduD431nu11biHi78XFitUWQfiwcU6_4UPU9FBg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9010273f-aea0-487d-43c3-08da1350ecfc
x-ms-traffictypediagnostic: BYAPR11MB2549:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB254938885D748351AD3E283AD6E19@BYAPR11MB2549.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qt9WF0Sv+CDs/jZR6wd1e2ySi4w0zwsIKh2HBH7Z7nluf1J9dBqa/DiSfn0WmDiwi07aHRJH6c+a41b5t9AZscILl/170UWRZtEdnbTn325O4l3a4RgNll3KKJ6pYRYtmeNfPFUtB0vDKaiqrooeiUyMyU0wpcrAImgHwumrYjXImg21pMgRdKAaV9YxB/fok75jWHlpDCCgsTGcM7rFWSgpQLsdeKgvpiHfAtWXSgWgoGehdWgnkCwsxX0mJueQFSOLGDIkwmngtQ3i7M+AIkvLKpndtFqoS7Ylpp33ePHltn4YySdPCk8DBrgl33fn3RTrPGzGotNI0sbnncPNoID7VdJtxnr0GxIU6wLjplyhfH2I59nIEk7L4zwFv3Wv3jwk0fT51+Czw9W+TGvz2q9hGkUZ+7ma5z65CpfFgwu6DZlTndv/Ar1lcQgx0ZZclRLTU9iHRmoMw2E7itLsmIaBywDicpBRM9By1aNoFn+6pMeByCV/tS6PxfB/cEJme1orRcnQLCsv6AS98P4pUWknBgKXonjRRcUZSKlfRce2NsyPeXAF/Yw0s3ebTPOfbx8OdbL36lR9cX2oNHPAynPKDghAirBIUP8tZdZ2E91dzPbFm7lMdd0s+5+4X215kFG/JKrP1zfvJhI6QB7UDRjMPu7pvewIfi6wAZOaJL3HMt4KlfT/itLtdccA5jozFIkw7QvaizD5EiP/vEBzOA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(122000001)(83380400001)(26005)(186003)(4326008)(55016003)(33656002)(52536014)(7416002)(8936002)(5660300002)(2906002)(6636002)(66946007)(66556008)(316002)(71200400001)(82960400001)(9686003)(66476007)(7696005)(6506007)(54906003)(64756008)(66446008)(53546011)(110136005)(8676002)(76116006)(38100700002)(38070700005)(86362001)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXJVcmR6b1AvQ3hKYWF2b2NKMm8wcGk1NWk4cDY2ZjBBY0c0N2gzOXd2dFJG?=
 =?utf-8?B?dVFMdjFBbXhDWUZEcmJlays1bkpNeDYxeHVscUhzWERnQys3ZHJkWjVZdzhj?=
 =?utf-8?B?VGl2OEtUb01pR3Rsd3ZnZWQzdlZkRjRQTTh1Ni9VNEJqaDlWNWJFc0l3bTZo?=
 =?utf-8?B?MnFuQndva2NmNmVjeFJnY1RmaGhtYWxQZW5IcFN2dTNSQkNpdHRnYm5Yb1NU?=
 =?utf-8?B?RVlrSHZRWFhEK0RxWjR0M3lEMlZVbUJINXZ1aE8zUnJEV211Rjhxa1Bmay83?=
 =?utf-8?B?elhoZVVkSmNxeFQ5TGxyT0xMWUxKZ1JrWUJVMFB4Q3FIZWRHU1Z0TzdCeDlw?=
 =?utf-8?B?bVBkM0xHdCtBVElCWFBGUW5DMEhsM2dyc2RydENyd1pGbDNVSFIwUzdZRTdX?=
 =?utf-8?B?MVEraDd3S2k2K29oSVA5VSs2L0pJUWNOenl4NDhWKy9EWE1DcE5CWGdEYmRK?=
 =?utf-8?B?NjA1YlN5anlqSTFSR2laU0xlY3EwbURCRzU1dFFHdFhHTVBEcTQ0UVgyTm1B?=
 =?utf-8?B?Z29lbXROR28ybzNlS1VqbXluamNha3h4ZmdHT0FVYXdvQnR3V051cy9WS0wz?=
 =?utf-8?B?ekFDNGtydE1vSkY4M0JaTDBUWGtqWjRFUFphN3hEa1ppdEt5WlVDaytSbTFU?=
 =?utf-8?B?Rkx0cmcyU1FmSEc4aEFGTzFObEJlM2YwVnVGQkFKYVFMMlFjL1h5RnBPQWtT?=
 =?utf-8?B?NjV3UFNJcFN2VlJ3ZjR5bG15cDlxME1ySURpR3p6QkRsZGJmVEVFRWEvclJW?=
 =?utf-8?B?NmtJcVlWSXh3U0pBWnNpcGxOeXgvaWU0aFFOUFhHVlp1Tk8yYW1VWG4xaUFP?=
 =?utf-8?B?dFpBc3Jsb2JwQ25EL0RtSkVGQnJIM29VNjU2QWpodVI2NlNkclkvTU0xUzV6?=
 =?utf-8?B?RFlMNWQ2NE5NWERnRjh3VUcvOXRVRVRTUTcwU29DNW1SdTZkWnhMQ0d0a3hH?=
 =?utf-8?B?T0xGNzE1TUlJMTE4M3NZdks2MDBjQlNvV0RiNmFkQllrRi9wM214SW1JNDRo?=
 =?utf-8?B?eE1LN2ZpdW05czNBSWJDOWVVVlhrRFdHZHZrbCtxMERmWnFhbjlLcHA3QVRP?=
 =?utf-8?B?Wmp5ajFmaFhCV2wxUkdDN24rWTEzbUhvY2pucW5qVVloRnJWYTVkcjFWMGhZ?=
 =?utf-8?B?VDJMMFQ4TysrSzNOQkZrb3RwV2Y2UW1xS0kzbG9oYTN6SWVaS0FiUGswWmR5?=
 =?utf-8?B?NXI3dDgyWlZhSEhZLzhXNzBrL0lUUkdjZjhpQ1NDRk9oSFhETFN4T2FvN1Qv?=
 =?utf-8?B?ZTU0SGt3eGhDTHM0V1kwbUhuWWR3OGdiRmdDdFpJbUpJR2RidjdvTUFsZjNm?=
 =?utf-8?B?bGltRnBjOG8rRWJnNzBiWXZxbmMwYWV2Tm9Vcnh5WmNPZ1ZFTElzTERuRUVV?=
 =?utf-8?B?NDlaeUt4cjJiNDJqZVlmTi9sVTdyYzUyUGQzekJjVTNVUENxZUJaVndNd3Nn?=
 =?utf-8?B?U25tLzNTMXhOYXZNelkrazIvTXZ3ek1PV05xVnhPak1HZXJVMXdEY2c4N25n?=
 =?utf-8?B?Q001QVVGSW9SUUt1WDhKcWY4eUhKbTFpUHNLc1BDYXZoa1E0MXA3dEdFOFoy?=
 =?utf-8?B?Y01IWXB5bFp1TVprUmRXUU9qNGpXaDEydHdkYXUyRWNIY0JEeGZkWVY3dm1m?=
 =?utf-8?B?dGpRYTVuU3BhR0MvVnRVVzBKUHl6TWNINDZPcUlpRW5Qd2lrMktWaXlYL3ZE?=
 =?utf-8?B?aVhsSjBZbk1kRmhTNmd0YnZRNU56djVRNFhhOW9PeUN6UnZpVUMwTDNJaGUz?=
 =?utf-8?B?azFSTnJnN0drcnhTUlpNNHg0SHkyMWZjaUI5NnhCZ0hwdjVxbU1wbTZIRksx?=
 =?utf-8?B?alRKSTFWZVk2c1JxYS9lYkJFK2oraGhBd3E3YWNzMEpJVktaWW9CN1gvcjFk?=
 =?utf-8?B?MWxVSTIvd1dkT3haREVQNWY3NURDS2ZtRzBNMm1Kc2l4clhqWFBmVVMzazF0?=
 =?utf-8?B?MWRjQ3ZCbFh1Y1dDWk5VVEp1bGl3cWJCeTMxbFZ0ZUk5Wk1sdFFSTzlEL3A5?=
 =?utf-8?B?UVFXWkphREE5TXhkZURjTnJzM1pYZ0pyVlZxdDdSandCWExXeGdzenFvNTBE?=
 =?utf-8?B?L2NvOW1rZzZ0dENKNERIVzg2UGhvckhFaGFwNjFGNVBKTWlWbzFpeVdyNUQz?=
 =?utf-8?B?aXhOdVI2UnowdmdEbGM3OVZreUtzbFJYK0U1eGRMZUdjOE9nU1Z5dkhOTTdJ?=
 =?utf-8?B?MDVrMHFLT1BYNWhhbnhUc2pPcmphRVhRSlBPbklqZEZJekgrQ256SVZPRlV0?=
 =?utf-8?B?aGFrSGNXMlZtOXRLTHpXQldTMUdCT3pnVXBjZnkyRURJVnpFN1A5NFVsMEll?=
 =?utf-8?B?ejdyckUwTzJHRjZRb2QydEtqcGJxOVZvMURzQld4MWYwZHJRM1dLdz09?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9010273f-aea0-487d-43c3-08da1350ecfc
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2022 19:59:11.9207 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b9140jOOG+CXLyNbdVq1yEZTr6rW8c7t6X7neARabj6TfYWdH/Lnn/f29N/rXFd1DYLfIi94M7N/W9YH+KV2jpV+PtmMZxJuWP+CYsnIkcI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2549
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix incorrect locking in
 ice_vc_process_vf_msg()
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
Cc: ivecera <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 mschmidt <mschmidt@redhat.com>, open list <linux-kernel@vger.kernel.org>,
 poros <poros@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Brett Creeley <brett@pensando.io>
> Sent: Thursday, March 31, 2022 9:33 AM
> To: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Cc: ivecera <ivecera@redhat.com>; netdev@vger.kernel.org; moderated
> list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; mschmidt
> <mschmidt@redhat.com>; open list <linux-kernel@vger.kernel.org>; poros
> <poros@redhat.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; Keller, Jacob E
> <jacob.e.keller@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix incorrect locking in
> ice_vc_process_vf_msg()
> 
> On Thu, Mar 31, 2022 at 6:17 AM Maciej Fijalkowski
> <maciej.fijalkowski@intel.com> wrote:
> >
> > On Thu, Mar 31, 2022 at 03:14:32PM +0200, Maciej Fijalkowski wrote:
> > > On Thu, Mar 31, 2022 at 12:50:04PM +0200, Ivan Vecera wrote:
> > > > Usage of mutex_trylock() in ice_vc_process_vf_msg() is incorrect
> > > > because message sent from VF is ignored and never processed.
> > > >
> > > > Use mutex_lock() instead to fix the issue. It is safe because this
> > >
> > > We need to know what is *the* issue in the first place.
> > > Could you please provide more context what is being fixed to the readers
> > > that don't have an access to bugzilla?
> > >
> > > Specifically, what is the case that ignoring a particular message when
> > > mutex is already held is a broken behavior?
> >
> > Uh oh, let's
> > CC: Brett Creeley <brett@pensando.io>
>

Thanks for responding, Brett! :)
 
> My concern here is that we don't want to handle messages
> from the context of the "previous" VF configuration if that
> makes sense.
> 

Makes sense. Perhaps we need to do some sort of "clear the existing message queue" when we initiate a reset?

> It might be best to grab the cfg_lock before doing any
> message/VF validating in ice_vc_process_vf_msg() to
> make sure all of the checks are done under the cfg_lock.
> 

Yes that seems like it should be done.

> CC'ing Jake so he can provide some input as
> well.

Thanks,
Jake
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
