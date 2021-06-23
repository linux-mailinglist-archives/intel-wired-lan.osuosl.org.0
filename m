Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DED413B237C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jun 2021 00:16:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42A1F60AE2;
	Wed, 23 Jun 2021 22:16:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DYUlQjAEoLX2; Wed, 23 Jun 2021 22:16:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 315866061D;
	Wed, 23 Jun 2021 22:16:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 552391BF385
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 22:16:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4001B60AC3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 22:16:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f-W5wJ0ABCIN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 22:16:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7EDD1605BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 22:16:04 +0000 (UTC)
IronPort-SDR: a/d5escjARo+iaIVIHeuWcrl2djdsi/k1DHzSeRMptB1bpoUpAG17PHLSZeGxQVeZq0ft4/IpL
 o2zKjc0/QOQg==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="204347310"
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="204347310"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 15:16:03 -0700
IronPort-SDR: AltkL8iy5JVEg/HjJ31E/sUUsN5/oJHfqeuN44wv20KSZrJNYFDGcYIQniUR8yJh3WblQkRlZm
 E+dckK2NahQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="406829663"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 23 Jun 2021 15:16:03 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 23 Jun 2021 15:16:02 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 23 Jun 2021 15:16:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 23 Jun 2021 15:16:02 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 23 Jun 2021 15:16:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=klrWI7WvwLxvXRwbVY3ZYr16axVbpMH0UGdsRIO2r9NZnh/LqPGK4LkelOEOdqmqTpwA1wvrunxZYzFJTYuP/dpqJykE5wx10poI2CPuRxClqDvTIO5l5uE9ygO3iipvz4WL/M6Ng4oK6OrCnd9Cx4WqM8dgt9vtI62guOWbhyadnbAojZKdMW0b1QcMYxTFZ2UZvpxIWXMBO9GcdTuBeF9B/aWZOvBEOgI/61gi+fpVfI8JyDrQQvsKXZBoHuPWTnyZWO9gT2moxct26AlYqUtDUdF9ANvYdtDDs+FBDwq0/6wnnGuDMBydPOmZuc9NvWcFsZhSvfezabgSeMWYeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QvS1jxsGk8MeUvtNBstsncbGXNlvz2AOC6kz89W6pkc=;
 b=Jgl3A4skftY3lvMl3UEmx2crVGliocD2TENYdpN9Raz/ru3GegWlBcB6E25o4RUtQg9UqHEv732320YkUb1peO+R/SGU/yP4VsZrd7F8mkRue/94zPB6TH6DFfyLGEoxIwN3wg+qVbRCAnC/EZaDqZuOVupYQc0s0ASenPFBog6cZGQ6kdcC2Gu6hqPSLrIYvI/As2yl9VT0jOpFggCKhmypr20okn6t0rPbQFY+Aqo34cuT42NYoaPUzq/8IErhup80tPHXBVz8MCHg2/AuFRU3mbXvcpxxUoQETo/8t7c11yc/wYV3UOae8KqWCcA8n1cBJouv4BCYIgeqqjvXXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QvS1jxsGk8MeUvtNBstsncbGXNlvz2AOC6kz89W6pkc=;
 b=nqVE71tI1KjBC0kzFPyW1Z8PkdCwjddUFT2ZhKvOiiZtul2ICd6gnYAE2xBPC0NEfCxeULAzFlo8qI/UIsPKM0EJBqg63QCvls7H6Z3skL/7andRlGoU0RZga72r+sNGE3rK0BfO643n0205L5XRRhrf1ENjM6fgDtzFejRuYbs=
Received: from DM6PR11MB3291.namprd11.prod.outlook.com (2603:10b6:5:d::10) by
 DM5PR1101MB2186.namprd11.prod.outlook.com (2603:10b6:4:52::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4242.23; Wed, 23 Jun 2021 22:15:59 +0000
Received: from DM6PR11MB3291.namprd11.prod.outlook.com
 ([fe80::a0d2:38cd:e0b0:23f0]) by DM6PR11MB3291.namprd11.prod.outlook.com
 ([fe80::a0d2:38cd:e0b0:23f0%5]) with mapi id 15.20.4242.023; Wed, 23 Jun 2021
 22:15:59 +0000
From: "Singhai, Anjali" <anjali.singhai@intel.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, "Creeley, Brett"
 <brett.creeley@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: Enable configuration
 of number of qps per VF via devlink
Thread-Index: AQHXaEvoM9Mm0o2wM0udpxx+/WWqPasiKXMA
Date: Wed, 23 Jun 2021 22:15:59 +0000
Message-ID: <DM6PR11MB32913145E3D57435455C206893089@DM6PR11MB3291.namprd11.prod.outlook.com>
References: <20210426181940.14847-1-sridhar.samudrala@intel.com>
 <CO1PR11MB48359F4AB09484353280CBA9F52D9@CO1PR11MB4835.namprd11.prod.outlook.com>
 <c78efee5-d864-7903-98b5-207aadae19fa@intel.com>
In-Reply-To: <c78efee5-d864-7903-98b5-207aadae19fa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [65.50.138.248]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2223ada7-3182-4ec8-b97b-08d936947b19
x-ms-traffictypediagnostic: DM5PR1101MB2186:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB2186B2277C567E8962B0153393089@DM5PR1101MB2186.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JONbl+QzroSKVf2auUAAowFMNS3eJCutESqpBh4RfS8iKwdrn8o2yhhvncK+cXlh3gdAOV+Zq5DYT+Xy+vWmo2T0rNTF3jDDBfOgPfankD9edHkANYvKDIEdwshH6rQykCp2tNMM5Hndxu/xx8JX0JJm44n5H54xFdqywyLFkcKj2FDljjltDE91tF877Cbr328ry8GDxu0GUj5SF3UlzgrhG9vrwhXc9jfdaxNiugn5/9U9ObBoaT2KgPnj/Nq97p3PU8mpv88EbMvyBMq170bjeGvjnp7B5GiuNHRC9eY3YogG+1847nN4Y4W+SBncicVAq9mYSmNRlttI2cl2/BNdZMrJNDUrbinOHmGH04FOBX92+qdeLPjIr7u5yRMlxFp11r1U4Gxq9zaLfLV6alyy1Ek11iJuLvpBTeSbhByISYsrOUtGeVYSzr/YngoUlnkUbfq8ntAXB13NKuU4Y4ChWb7e5GCO3nJbeP7u1wukIpYcWTo9olsm/rn6t5n6qJKWJ+bApBtkwFWp5+DfCw6zdTZQ4CevRy44C2vHLkgKPFr6N3j671/LGZKG8kHqgNid1xDV8ZzCcx+nBGjFFnl+M3EXxlswpRtjElumqzSOrBldARTqU5m0WgcbVRgT6T9DG50/zERNwtGk2cHfE47YF2zgu3HlA0F5EBhC2kBdTDBRQiflXNxRFXpCCH61jXoLi2MzuOlaLDnZ6OzwHSwei6McjlwZMqDYXKdItWk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3291.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(39860400002)(136003)(396003)(366004)(110136005)(8676002)(6636002)(107886003)(2906002)(6506007)(8936002)(122000001)(54906003)(53546011)(4326008)(38100700002)(66476007)(478600001)(186003)(83380400001)(33656002)(966005)(86362001)(66946007)(76116006)(5660300002)(316002)(52536014)(66446008)(7696005)(55016002)(9686003)(64756008)(26005)(66556008)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lUEm6A/aIFsQc02r0cKV30/k726r0t72BO4gUGlZ+1GXAdnZWsmEptIX5axs?=
 =?us-ascii?Q?PwQKMFWnRY4K89jWne6WnvVABGrYCv8RBw8GHq0ZzaYg11TYuWuW0vlWtaPP?=
 =?us-ascii?Q?xeLJlAtoTK7mkrmQREaz9fyx431vlpo7hToavp2IL/Fey2IjID/dnupbZ4CC?=
 =?us-ascii?Q?PJ+yyL1VesUz/TWc823nrzkIZakOhlOw+q92tbQ2FZpTvOuNytQzAIANNIAX?=
 =?us-ascii?Q?nuXRc/L6qhcK82zIr/ysSVR+Z4LWmElRCK7ejuRe3vfPcAke4e/f1zjjQKja?=
 =?us-ascii?Q?SRXiXnxuyH49HR3NTIlXF/rqg8SMTJsQ6AONsPr/kCtPK2vdFEuOTcqmO8h9?=
 =?us-ascii?Q?q0WeRVfcd4OxFGKwtGeiccsw9lMrK1QFRtg/4+UegzZSN1Q88XlaEbO+mfOk?=
 =?us-ascii?Q?ZI9NzfmTmlPQ0+H7kiwKXCxwDzzLRuwv1Ycr5QNbjVzsMd7J1vtCnFfXH3vt?=
 =?us-ascii?Q?+J90d0LhepZaQYtSgKOhc5ofbm92g1gw9X1GxaOu0f0KvdeK9RRQHdQPVUqK?=
 =?us-ascii?Q?H0GHrUcNOU7nH9ajQvfAz4xOOWM2l1seQjWgeBLFGsUV7lQOy6zP+Y4WtmG3?=
 =?us-ascii?Q?UFtEenCcevkLfr5cdq7EGadZN6ni554Mu+b/2+8cHtJDpHLoD2Y659s5XYcu?=
 =?us-ascii?Q?75lMXfTrSwHtQ/YuQAYGupFe9bLdoRdTSW/cnroA/pKS7CALGajyawtH6EhE?=
 =?us-ascii?Q?n2hDb3Hd0RI0SVKBU3Q9Gea2H+cieMAveMa+069Qb13sVcIOOZTmhd9r6B90?=
 =?us-ascii?Q?lB3Q2Li/qj5aUbcTAAy5NF7c92TXfw0Z8/fIe3js6e0o3rWIFV5RC4UpeYGw?=
 =?us-ascii?Q?3p0DMjWzYFGIB5XqMXQ7c5/bOrcX0BaJNckNo+Z0BD6iQNMCWaEP514+gE/q?=
 =?us-ascii?Q?yoG5+bhRvpJ2Jmazr3frm9abskv5obHFvNAR0o/aLGnIjl9vAoeEq/sSPRds?=
 =?us-ascii?Q?5lk4YDcDVao/nBN06IEcGw7Pi/X0gjZxgL3lXz+MJBAiD//gO7o46aYlqY11?=
 =?us-ascii?Q?J5sx4JE/CPl9e2pY2cbAcX+X6cCuzFKlnOoilbud/JmtyPpIlvhhRIkvVeqv?=
 =?us-ascii?Q?dXatKGfu2jf7TPoST+y9dTskdx2Qh2QuRHeuks2kXhpuHU80CT4F21zXS9Wq?=
 =?us-ascii?Q?gIOsORR4lmi58TJl2f2yoKMn80YuIOqQA9hM+ucVuI4P2GO00UK3jt7XY/rc?=
 =?us-ascii?Q?Y1zHWa/NDSp0SAZio8qD5IEpwViAWkjN+inKYqKNMp8PgzQkbPl64N2S9v1f?=
 =?us-ascii?Q?cZnff+PnsjYe7CLDenmyrwvuwKrPZNGqRgimV2rw9qtgyaP5xkzcnLuN2+Bh?=
 =?us-ascii?Q?Kf1CZEP/VN0u5Q48asVZGwkP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3291.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2223ada7-3182-4ec8-b97b-08d936947b19
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2021 22:15:59.6789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k6T0IU3C7z2S4LHt+lV2TmdaVbXz3NSzcj3X6HQ+wmwW/Vrw/HyBvZ3oaK+TZaKxwfNteqBLsZzAB6LKCzSiYCJnTzfDpPQRFxhujCPDgng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2186
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Enable configuration
 of number of qps per VF via devlink
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sridhar, how do you do asymmetric number of queues and vectors to the VF using devlink? Or this ends up as a configuration on VF representors... I hope not.

So I am guessing you can either bulk set the number of queues for each of the VFs or you can set it per SRIOV VF ports?

Thanks
Anjali

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Samudrala, Sridhar
Sent: Wednesday, June 23, 2021 9:21 AM
To: Creeley, Brett <brett.creeley@intel.com>; intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Enable configuration of number of qps per VF via devlink

On 5/17/2021 2:49 PM, Creeley, Brett wrote:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf 
>> Of Sridhar Samudrala
>> Sent: Monday, April 26, 2021 11:20 AM
>> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L 
>> <anthony.l.nguyen@intel.com>; Samudrala, Sridhar 
>> <sridhar.samudrala@intel.com>
>> Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Enable 
>> configuration of number of qps per VF via devlink
>>
>> Introduce a devlink parameter 'num_qps_per_vf' to allow user to 
>> configure the maximum number of queue pairs given to SR-IOV VFs 
>> before they are created.
>>
>> This is currently determined by the driver based on the number of 
>> SR-IOV VFs created. In order to keep this behavior by default the 
>> parameter is initialized to 0. To change the default behavior, user 
>> can set num_qps_per_vf parameter via devlink and this will be used as 
>> the preferred value to determine the queues and vectors assigned per 
>> VF.
> What if the host administrator wants to give the VF a different number 
> of vectors than queues? For example, if the admin knows the VF 
> instance will be exercising VF RDMA and the VF needs more vectors for 
> RDMA traffic.
>
> Should we have 2 separate values, i.e. "num_qps_per_vf" and 
> "num_msix_per_vf"?

I missed responding to this comment.
Sure. We can add num_msix_pr_vf as a later patch to enable additional vectors for RDMA.

Tony,
Can this patch be included in your series when you submit to netdev?
OR do i need to rebase it based on the latest net-next?

Thanks
Sridhar
>
>> USAGE:
>> On a 2 port NIC
>>   # devlink dev param show
>>   pci/0000:42:00.0:
>>     name num_qps_per_vf type driver-specific
>>       values:
>>         cmode runtime value 0
>>   pci/0000:42:00.1:
>>     name num_qps_per_vf type driver-specific
>>       values:
>>         cmode runtime value 0
>>
>>   /* Set num_qps_per_vf to 4 */
>>   # devlink dev param set pci/0000:42:00.0 name num_qps_per_vf value 
>> 4 cmode runtime
>>
>>   # devlink dev param show pci/0000:42:00.0 name num_qps_per_vf
>>   pci/0000:42:00.0:
>>     name num_qps_per_vf type driver-specific
>>       values:
>>         cmode runtime value 4
>>
>>   # echo 8 > /sys/class/net/enp66s0f0/device/sriov_numvfs
>>
>> This will create 8 VFs with 4 queue pairs and 5 vectors per VF 
>> compared to the default behavior of 16 queue pairs and 17 vectors per 
>> VF.
>>
>> v2:
>> Fixed kdoc for ice_devlink_num_qps_per_vf_validate()
>>
>> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> ---
>>   Documentation/networking/devlink/ice.rst      |  23 ++++
>>   drivers/net/ethernet/intel/ice/ice_devlink.c  | 110 +++++++++++++++++-
>>   drivers/net/ethernet/intel/ice/ice_main.c     |   3 +
>>   .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   5 +-
>>   4 files changed, 139 insertions(+), 2 deletions(-)
>>
> <snip>
>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
